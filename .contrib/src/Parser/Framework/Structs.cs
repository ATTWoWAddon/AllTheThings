using ATT.FieldTypes;
using System.Collections.Generic;
using System.IO;

namespace ATT
{
    public struct CoordShift
    {
        public float X { get; set; }

        public float Y { get; set; }

        public TimelineEntry TimelineEntry { get; set; }

        public static CoordShift Create(object obj)
        {
            if (obj is List<object> objs)
            {
                return new CoordShift
                {
                    X = objs.SafeIndex(0).TryConvert(out float x) ? x : throw BadDataException(obj),
                    Y = objs.SafeIndex(1).TryConvert(out float y) ? y : throw BadDataException(obj),
                    TimelineEntry = TimelineEntry.AsTimelineEntry(objs.SafeIndex(2)),
                };
            }
            else
            {
                throw BadDataException(obj);
            }
        }

        private static InvalidDataException BadDataException(object obj) => new InvalidDataException($"MAPID_COORD_SHIFTS expect keyed-arrays with 3 items in each array: {{ x_shift, y_shift, timeline_entry }} -- [{Framework.ToJSON(obj)}]");
    }
}
