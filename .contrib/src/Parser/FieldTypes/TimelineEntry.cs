using System;
using System.Collections.Generic;
using static ATT.Framework;

namespace ATT.FieldTypes
{
	public class TimelineEntry : IComparer<TimelineEntry>, IComparable<TimelineEntry>, IEquatable<TimelineEntry>, IEqualityComparer<TimelineEntry>
	{
		private static readonly HashSet<string> _validChange = new HashSet<string>
		{
			ChangeType.CREATED,
			ChangeType.ADDED  ,
			ChangeType.DELETED,
			ChangeType.REMOVED,
		};

		private static readonly Dictionary<string, int> _changePriority = new Dictionary<string, int>
		{
			{ ChangeType.CREATED, 0 },
			{ ChangeType.ADDED  , 1 },
			{ ChangeType.REMOVED, 2 },
			{ ChangeType.DELETED, 3 },
		};

		public string Change { get; set; }

		public string RawPatch { get; set; }

		public long Version { get; set; }

		public long LongVersion { get; set; }

		private TimelineEntry(object raw)
		{
			var commandSplit = Convert.ToString(raw).Split(' ');
			if (commandSplit.Length == 2)
			{
				Change = commandSplit[0]?.ToLowerInvariant();
				RawPatch = commandSplit[1];
				LongVersion = RawPatch.Split('.').ConvertVersion();
				Version = LongVersion.ConvertToGameVersion();
			}
			else
			{
				LogWarn($"Invalid Timeline Entry: {raw}");
			}
		}

		public static TimelineEntry AsTimelineEntry(object raw) => new TimelineEntry(raw);
		public static TimelineEntry AsTimelineEntry(string raw) => new TimelineEntry(raw);

		public bool IsBeforeOrOn(long longVersion)
		{
			if (LongVersion <= longVersion)
			{
				return true;
			}

			return false;
		}

		public void Validate()
		{
			if (!_validChange.Contains(Change))
			{
				LogError($"Invalid Timeline Change: {Change}", this);
			}
		}

		public static bool operator ==(TimelineEntry x, TimelineEntry y)
		{
			bool xn = x is null;
			bool yn = y is null;
			if (xn && yn) return true;
			if (xn || yn) return false;
			if (x.Change != y.Change) return false;
			if (x.LongVersion != y.LongVersion) return false;
			return true;
		}

		public static bool operator !=(TimelineEntry x, TimelineEntry y)
		{
			return !(x == y);
		}

		public bool Equals(TimelineEntry other)
		{
			return this == other;
		}

		public int CompareTo(TimelineEntry other) => Compare(this, other);

		public int Compare(TimelineEntry x, TimelineEntry y)
		{
			if (x is null && y is null) return 0;
			if (x is null) return -1;
			if (y is null) return 1;

			var compare = x.LongVersion.CompareTo(y.LongVersion);
			if (compare != 0) return compare;
			return _changePriority[x.Change].CompareTo(_changePriority[y.Change]);
		}

		public static bool operator <(TimelineEntry x, TimelineEntry y) => x.CompareTo(y) < 0;

		public static bool operator >(TimelineEntry x, TimelineEntry y) => x.CompareTo(y) > 0;

		public static bool operator <=(TimelineEntry x, TimelineEntry y) => x.CompareTo(y) <= 0;

		public static bool operator >=(TimelineEntry x, TimelineEntry y) => x.CompareTo(y) >= 0;

		public bool Equals(TimelineEntry x, TimelineEntry y)
		{
			return x == y;
		}

		public int GetHashCode(TimelineEntry obj)
		{
			if (Change is null) return 0;
			return unchecked(Change.GetHashCode() * LongVersion.GetHashCode());
		}

		public override string ToString()
		{
			return Change + " " + RawPatch;
		}

		public override bool Equals(object obj)
		{
			return Equals(obj as TimelineEntry);
		}

		public override int GetHashCode()
		{
			return GetHashCode(this);
		}

		public static class ChangeType
		{
			public const string CREATED = "created";
			public const string ADDED = "added";
			public const string DELETED = "deleted";
			public const string REMOVED = "removed";

			public static bool IsRemovingChange(string change)
			{
				return change == DELETED || change == REMOVED;
			}
		}
	}
}
