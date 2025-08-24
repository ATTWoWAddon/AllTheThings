using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using static ATT.FieldTypes.TimelineEntry;

namespace ATT.FieldTypes
{
    public class Timeline : IProcessedField, IExportableField, IEnumerable<TimelineEntry> // required for DebugDB exports
    {
        private static readonly TimelineEntry[] _empty = Array.Empty<TimelineEntry>();
        private TimelineEntry[] _entries;
        private bool _dirty;

        public const string Field = "timeline";

        /// <summary>
        /// Represents the current state of a Thing in line with the release version that's being parsed.
        /// Can be set when processing the Timeline to denote which <see cref="TimelineEntry"/> applies to the related data for this Parser version
        /// </summary>
        public TimelineEntry CurrentEntry { get; private set; }

        public void SetCurrentEntry(TimelineEntry entry)
        {
            CurrentEntry = entry;
        }

        public int EntryCount => _entries?.Length ?? 0;

        public bool HasData => EntryCount > 0;

        public IReadOnlyList<TimelineEntry> Entries
        {
            get
            {
                if (_entries == null)
                {
                    return _empty;
                }
                if (!_dirty)
                {
                    return _entries;
                }

                _entries = _entries.Distinct().OrderBy(e => e.LongVersion).ToArray();
                _dirty = false;
                return _entries;
            }
        }

        private Timeline(object obj)
        {
            _dirty = true;
            if (obj is Timeline timeline)
            {
                _entries = timeline._entries.ToArray();
                return;
            }
            if (obj is IEnumerable<string> strs)
            {
                _entries = strs.Select(TimelineEntry.AsTimelineEntry).ToArray();
                return;
            }
            if (obj is IEnumerable<object> objs)
            {
                _entries = objs.Select(TimelineEntry.AsTimelineEntry).ToArray();
                return;
            }
            if (obj is string str)
            {
                _entries = new TimelineEntry[] { TimelineEntry.AsTimelineEntry(str) };
                return;
            }
            _entries = new TimelineEntry[] { TimelineEntry.AsTimelineEntry(obj) };
            Framework.LogWarn($"Weird 'timeline' value, please make it proper to remove this warning", obj);
        }

        /// <summary>
        /// Allows directly creating a new <see cref="Timeline"/> from an object
        /// </summary>
        public static Timeline Create(object obj) => new Timeline(obj);

        public static Timeline Merge(IDictionary<string, object> data, object value)
        {
            Timeline timeline;
            try
            {
                timeline = new Timeline(value);
            }
            catch
            {
                throw new InvalidDataException($"Failed to create Timeline object from provided data: {MiniJSON.Json.Serialize(value)}");
            }

            if (!data.TryGetValue(Field, out object rawobj))
            {
                // copy the Timeline from the incoming value, otherwise we can get Timeline objects linked between different Sources
                data[Field] = timeline;
                return timeline;
            }

            if (rawobj is Timeline oldtimeline)
            {
                oldtimeline.Merge(timeline);
                return oldtimeline;
            }

            // this shouldn't happen unless merged without conversion
            oldtimeline = new Timeline(rawobj);
            oldtimeline.Merge(timeline);
            return oldtimeline;
        }

        public object AsExportType()
        {
            return Entries.Select(e => e.ToString());
        }

        public void Consolidate() { }

        public void Incorporate() { }

        public void Validate()
        {
            foreach (TimelineEntry entry in Entries)
            {
                entry.Validate();
            }
        }

        /// <summary>
        /// Creates a timeline for a given release version, only containing relevant information to that version.
        /// </summary>
        /// <param name="releaseVersion">The release version we're testing the timeline against</param>
        /// <returns>An adapted timeline for a given release version</returns>
        public AdaptedTimeline GetAdaptedTimeline(long releaseVersion)
        {
            // Early return if there is no timeline to adapt
            if (EntryCount == 0)
                return null;

            var entries = Entries;

            // Find the latest entry before release version, if there is one
            TimelineEntry entryBeforeOrOnReleaseVersion = null;
            int indexBeforeOrOnReleaseVersion = 0;
            for (int i = 0; i < EntryCount; i++)
            {
                if (entries[i].IsBeforeOrOn(releaseVersion))
                {
                    // ignore repeated changes within the same timeline (typically due to merging of data between multiple files)
                    if (entries[i].Change != entryBeforeOrOnReleaseVersion?.Change)
                    {
                        entryBeforeOrOnReleaseVersion = entries[i];
                        indexBeforeOrOnReleaseVersion = i;
                    }
                }
                else
                {
                    break;
                }
            }

            if (entryBeforeOrOnReleaseVersion == null)
            {
                // If there is no timeline entry before or on release version, then the first entry is automatically relevant to the release version
                var firstEntry = entries[0];

                switch (firstEntry.Change)
                {
                    case ChangeType.ADDED:
                    case ChangeType.CREATED:
                        // If the first entry here is added/created, it means the Thing is not yet in the game and there are no relevant entries
                        return null;
                    case ChangeType.DELETED:
                    case ChangeType.REMOVED:
                        // If the first entry here is removed/deleted, we want to check if it is eventually readded
                        for (int i = 1; i < EntryCount; i++)
                        {
                            // If there is an added entry, we will use this as the second relevant entry
                            if (entries[i].Change == ChangeType.ADDED)
                            {
                                return new AdaptedTimeline
                                {
                                    Entries = new[] { firstEntry, entries[i] },
                                    RemovedStatus = RemovedStatus.OBTAINABLE,
                                };
                            }
                        }

                        // If there is no future added entry, we return the removed/deleted entry by itself
                        return new AdaptedTimeline
                        {
                            Entries = new[] { firstEntry },
                            RemovedStatus = RemovedStatus.OBTAINABLE,
                        };
                    default:
                        return null;
                }
            }

            switch (entryBeforeOrOnReleaseVersion.Change)
            {
                case ChangeType.ADDED:  // If the entry before or on release version is added, then the Thing is currently in the game and we'll check for the next removed/deleted entry
                    for (int i = indexBeforeOrOnReleaseVersion + 1; i < EntryCount; i++)
                    {
                        if (ChangeType.IsRemovingChange(entries[i].Change))
                        {
                            return new AdaptedTimeline
                            {
                                Entries = new[] { entryBeforeOrOnReleaseVersion, entries[i] },
                                RemovedStatus = RemovedStatus.OBTAINABLE,
                            };
                        }
                    }

                    // If there are no removed/deleted entries, we return the added entry by itself
                    return new AdaptedTimeline
                    {
                        Entries = new[] { entryBeforeOrOnReleaseVersion },
                        RemovedStatus = RemovedStatus.OBTAINABLE,
                    };
                case ChangeType.CREATED:    // If the entry before or on release version is created, then the Thing is currently in the game files but is not available to players
                    for (int i = indexBeforeOrOnReleaseVersion + 1; i < EntryCount; i++)
                    {
                        if (entries[i].Change == ChangeType.ADDED)
                        {
                            return new AdaptedTimeline
                            {
                                Entries = new[] { entryBeforeOrOnReleaseVersion, entries[i] },
                                RemovedStatus = RemovedStatus.NEVER_IMPLEMENTED,
                            };
                        }
                    }

                    // If there are no added entries, we return the created entry by itself
                    return new AdaptedTimeline
                    {
                        Entries = new[] { entryBeforeOrOnReleaseVersion },
                        RemovedStatus = RemovedStatus.NEVER_IMPLEMENTED,
                    };
                case ChangeType.DELETED:    // If the entry before or on release version is deleted, then the Thing has been removed from the game files entirely
                    return new AdaptedTimeline
                    {
                        Entries = null,
                        RemovedStatus = RemovedStatus.DELETED_FROM_GAME,
                    };
                case ChangeType.REMOVED:    // If the entry before or on release version is removed, then the Thing has been removed from the game but is still in the game
                    // Check for an added entry after current release
                    for (int i = indexBeforeOrOnReleaseVersion + 1; i < EntryCount; i++)
                    {
                        if (entries[i].Change == ChangeType.ADDED)
                        {
                            return new AdaptedTimeline
                            {
                                Entries = new[] { entryBeforeOrOnReleaseVersion, entries[i] },
                                RemovedStatus = RemovedStatus.REMOVED_FROM_GAME,
                            };
                        }
                    }

                    // Check for an added entry before current release if we didn't find one in previous loop
                    for (int i = indexBeforeOrOnReleaseVersion - 1; i >= 0; i--)
                    {
                        if (entries[i].Change == ChangeType.ADDED)
                        {
                            return new AdaptedTimeline
                            {
                                Entries = new[] { entries[i], entryBeforeOrOnReleaseVersion },
                                RemovedStatus = RemovedStatus.REMOVED_FROM_GAME,
                            };
                        }
                    }

                    return new AdaptedTimeline
                    {
                        Entries = new[] { entryBeforeOrOnReleaseVersion },
                        RemovedStatus = RemovedStatus.REMOVED_FROM_GAME,
                    };
                default:
                    // Return null by default, but this won't really ever happen
                    return null;
            }
        }

        public override string ToString()
        {
            return string.Join(", ", _entries.Select(e => e.ToString()));
        }

        private void Merge(Timeline obj)
        {
            if (obj._entries == null) return;
            _dirty = true;
            if (_entries == null)
            {
                _entries = obj._entries.ToArray();
                return;
            }
            _entries = _entries.Union(obj._entries).ToArray();
        }

        public IEnumerator<TimelineEntry> GetEnumerator()
        {
            return Entries.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return ((IEnumerable)Entries).GetEnumerator();
        }
    }

    /// <summary>
    /// A timeline adapted to the current release version
    /// </summary>
    public class AdaptedTimeline
    {
        public TimelineEntry[] Entries { get; set; }
        public RemovedStatus RemovedStatus { get; set; }

        public TimelineEntry GetCurrentEntry()
        {
            // We only return the second entry if RemovedStatus == REMOVED_FROM_GAME and the second entry is the actual removing change, not the first entry
            if (RemovedStatus == RemovedStatus.REMOVED_FROM_GAME && Entries.Length == 2 && ChangeType.IsRemovingChange(Entries[1].Change))
                return Entries[1];

            return Entries[0];
        }
    }

    public enum RemovedStatus
    {
        OBTAINABLE        = 0,
        NEVER_IMPLEMENTED = 1,
        REMOVED_FROM_GAME = 2,
        DELETED_FROM_GAME = 4,
    }
}
