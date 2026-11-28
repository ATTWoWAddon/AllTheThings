#if NET
#nullable disable
#endif

using System;
using System.Collections;
using System.Collections.Generic;

namespace ATT
{
	public sealed class MiniJsonBackend : IJsonBackend
	{
		public object Deserialize(string json) => MiniJSON.Json.Deserialize(json);

		public IEnumerable<string> ReadObjectKeys(string json)
		{
			if (Deserialize(json) is Dictionary<string, object> dictionary)
				return dictionary.Keys;
			return Array.Empty<string>();
		}

		public string Serialize(object value, JsonWriteOptions options)
		{
			if (options.IncludeEnumerables || options.DictionaryValueReplacement != null)
				value = AsSerializableValue(value, options);
			return MiniJSON.Json.Serialize(value);
		}

		private static object AsSerializableValue(object value, JsonWriteOptions options)
		{
			if (!options.IncludeEnumerables && value is IList list)
				return new SequenceView(list, options);
			if (value is IDictionary dictionary)
				return new DictionaryView(dictionary, options);
			if (options.IncludeEnumerables && !(value is string) && value is IEnumerable sequence)
				return new SequenceView(sequence, options);
			return value;
		}

		// MiniJSON reads dictionary Keys in order and fetches each value through the indexer.
		private sealed class DictionaryView : IDictionary
		{
			private readonly IDictionary source;
			private readonly JsonWriteOptions options;

			public DictionaryView(IDictionary source, JsonWriteOptions options)
			{
				this.source = source;
				this.options = options;
			}

			ICollection IDictionary.Keys => source.Keys;

			object IDictionary.this[object key]
			{
				get
				{
					var replacement = options.DictionaryValueReplacement?.Invoke(key);
					return replacement ?? AsSerializableValue(source[key], options);
				}
				set => throw new NotSupportedException();
			}

			bool IDictionary.IsReadOnly => true;
			bool IDictionary.IsFixedSize => true;
			ICollection IDictionary.Values => throw new NotSupportedException();
			int ICollection.Count => source.Count;
			bool ICollection.IsSynchronized => false;
			object ICollection.SyncRoot => this;
			void IDictionary.Add(object key, object value) => throw new NotSupportedException();
			void IDictionary.Clear() => throw new NotSupportedException();
			bool IDictionary.Contains(object key) => source.Contains(key);
			IDictionaryEnumerator IDictionary.GetEnumerator() => throw new NotSupportedException();
			IEnumerator IEnumerable.GetEnumerator() => throw new NotSupportedException();
			void IDictionary.Remove(object key) => throw new NotSupportedException();
			void ICollection.CopyTo(Array array, int index) => throw new NotSupportedException();
		}

		// MiniJSON requires IList for arrays and reads it through IEnumerable.GetEnumerator.
		private sealed class SequenceView : IList
		{
			private readonly IEnumerable source;
			private readonly JsonWriteOptions options;

			public SequenceView(IEnumerable source, JsonWriteOptions options)
			{
				this.source = source;
				this.options = options;
			}

			IEnumerator IEnumerable.GetEnumerator()
			{
				foreach (var element in source)
					yield return AsSerializableValue(element, options);
			}

			object IList.this[int index]
			{
				get => throw new NotSupportedException();
				set => throw new NotSupportedException();
			}

			bool IList.IsReadOnly => true;
			bool IList.IsFixedSize => true;
			int ICollection.Count => throw new NotSupportedException();
			bool ICollection.IsSynchronized => false;
			object ICollection.SyncRoot => this;
			int IList.Add(object value) => throw new NotSupportedException();
			void IList.Clear() => throw new NotSupportedException();
			bool IList.Contains(object value) => throw new NotSupportedException();
			int IList.IndexOf(object value) => throw new NotSupportedException();
			void IList.Insert(int index, object value) => throw new NotSupportedException();
			void IList.Remove(object value) => throw new NotSupportedException();
			void IList.RemoveAt(int index) => throw new NotSupportedException();
			void ICollection.CopyTo(Array array, int index) => throw new NotSupportedException();
		}
	}
}
