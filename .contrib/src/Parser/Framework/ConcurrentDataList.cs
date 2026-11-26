using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using static ATT.Export;
using Data = System.Collections.Generic.IDictionary<string, object>;

namespace ATT
{
	public class ConcurrentDataList : IEnumerable<Data>
	{
		private readonly List<Data> _list = new List<Data>();
		private readonly ReaderWriterLockSlim _lock = new ReaderWriterLockSlim();
		private readonly IComparer<Data> _comparer = new DataComparer();
		private bool _sorted;

		public ConcurrentDataList(IEnumerable<Data> data = null)
		{
			if (data == null)
				return;

			_lock.EnterWriteLock();
			try
			{
				foreach (var subdata in data)
				{
					_list.Add(subdata);
				}
				_sorted = false;
			}
			finally
			{
				_lock.ExitWriteLock();
			}
		}

		public void Add(Data value)
		{
			_lock.EnterWriteLock();
			try
			{
				_list.Add(value);
				_sorted = false;
			}
			finally
			{
				_lock.ExitWriteLock();
			}
		}

		public IEnumerator<Data> GetEnumerator() => GetEnumeratorAfterSort();

		IEnumerator IEnumerable.GetEnumerator() => GetEnumeratorAfterSort();

		IEnumerator<Data> IEnumerable<Data>.GetEnumerator() => GetEnumeratorAfterSort();

		public Data this[int index]
		{
			get
			{
				_lock.EnterReadLock();
				try
				{
					return _list[index];
				}
				finally
				{
					_lock.ExitReadLock();
				}
			}
		}

		public int Count
		{
			get
			{
				_lock.EnterReadLock();
				try
				{
					return _list.Count;
				}
				finally
				{
					_lock.ExitReadLock();
				}
			}
		}

		private IEnumerator<Data> GetEnumeratorAfterSort()
		{
			_lock.EnterWriteLock();
			if (!_sorted)
				Sort();
			_lock.ExitWriteLock();

			return _list.GetEnumerator();
		}

		private void Sort()
		{
			_list.Sort(_comparer);
			_sorted = true;
		}

		private class DataComparer : IComparer<Data>
		{
			public int Compare(Data x, Data y)
			{
				if (ReferenceEquals(x, y)) return 0;
				if (x is null) return -1;
				if (y is null) return 1;

				ObjectData.TryGetMostSignificantObjectType(x, out ObjectData xo, out object akey);
				ObjectData.TryGetMostSignificantObjectType(y, out ObjectData yo, out object bkey);

				// keep similar types together
				int compare = Framework.Compare(xo.ObjectType, yo.ObjectType);
				if (compare != 0)
					return compare;

				// then sort by key value within each type
				akey = ObjectData.GetAdjustedTypeKeyValue(xo, x);
				bkey = ObjectData.GetAdjustedTypeKeyValue(yo, y);

				if (akey is decimal adec && bkey is decimal bdec)
					compare = adec.CompareTo(bdec);
				else
					compare = Comparer<object>.Default.Compare(akey, bkey);
				if (compare != 0)
					return compare;

				// Same type and key (e.g. one Criteria cloned from two copies of its Achievement):
				// the order they were added depends on parallel processing and List.Sort is unstable,
				// so compare their content to get the same merge order on every parse
				return string.CompareOrdinal(GetSortString(x), GetSortString(y));
			}

			// Builds a key from the object's own scalar fields (and lists of scalars, e.g. timeline);
			// nested groups are skipped since they can be shared or cyclic
			private static string GetSortString(Data data)
			{
				StringBuilder builder = new StringBuilder();
				foreach (string key in data.Keys.OrderBy(k => k, StringComparer.Ordinal))
				{
					object value = data[key];
					if (IsScalar(value))
					{
						builder.Append(key).Append('=');
						AppendScalar(builder, value);
						builder.Append(';');
					}
					else if (value is IEnumerable list && !(value is IDictionary))
					{
						List<object> items = list.Cast<object>().ToList();
						if (items.All(IsScalar))
						{
							builder.Append(key).Append("=[");
							foreach (object item in items)
							{
								AppendScalar(builder, item);
								builder.Append(',');
							}
							builder.Append("];");
						}
					}
				}
				return builder.ToString();
			}

			private static bool IsScalar(object value) => value == null || value is string || value is IFormattable || value is bool;

			private static void AppendScalar(StringBuilder builder, object value)
			{
				if (value == null) builder.Append("nil");
				else if (value is IFormattable formattable) builder.Append(formattable.ToString(null, CultureInfo.InvariantCulture));
				else builder.Append(value);
			}
		}
	}
}
