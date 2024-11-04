using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ATT.FieldTypes
{
    public class Timeline : IProcessedField, IExportableField, IEnumerable<TimelineEntry> // required for DebugDB exports
    {
        private static readonly TimelineEntry[] _empty = Array.Empty<TimelineEntry>();
        private TimelineEntry[] _entries;
        private bool _dirty;

        public const string Field = "timeline";

        public int EntryCount => _entries?.Length ?? 0;

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
}
