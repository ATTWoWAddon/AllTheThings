using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using static ATT.Framework;

namespace ATT.FieldTypes
{
    public class Coords : IExportableField, IProcessedField, IEnumerable<Coord>
    {
        public const string Field = "coords";

        private readonly IDictionary<string, object> _data;
        private HashSet<Coord> _coords = new HashSet<Coord>();
        private Coord[] _coordIndexed;
        private int _indexedCount;

        public bool HasData => _coords.Count > 0;

        public int Count => _coords.Count;

        public Coord this[int index]
        {
            get
            {
                if (_coordIndexed == null || _indexedCount != _coords.Count)
                {
                    _coordIndexed = _coords.ToArray();
                    _indexedCount = _coordIndexed.Length;
                }
                return _coordIndexed[index];
            }
        }

        private Coords(IDictionary<string, object> data) { _data = data; }

        public override string ToString()
        {
            return !HasData ? "[]" : $"[" + string.Join(",", _coords.Select(c => c.ToString())) + "]";
        }

        public static void Merge(IDictionary<string, object> data, object value)
        {
            Coords coords;
            if (!data.TryGetValue(Field, out object coordsobj))
            {
                coords = new Coords(data);
                data[Field] = coords;
            }
            else
            {
                coords = coordsobj as Coords;
            }

            coords.Merge(value);
        }

        private void Merge(object value)
        {
            // merge a list of objects, either a single coord value or a set of coords
            if (value is Coords coords)
            {
                Merge(coords);
            }
            else if (value is List<object> newList)
            {
                Merge(newList);
            }
            else
            {
                LogError($"Invalid Format for merging 'coords' data: {ToJSON(value)}", _data);
            }
        }

        private void Merge(List<object> coords)
        {
            if (coords.SafeIndex(0) is List<object>)
            {
                foreach (object coordobj in coords)
                {
                    // we're merging a list of lists
                    if (coordobj is List<object> subcoords)
                    {
                        Merge(subcoords);
                    }
                }
            }
            else
            {
                var coord = new Coord();
                var i = 0;

                foreach (object coordobj in coords)
                {
                    // we're merging data which represents coords (coord X/Y values should parse as Double but we store as Float)
                    if (coordobj.TryConvert(out double eDouble, warnOnConvert: i < 2))
                    {
                        switch (i)
                        {
                            case 0: coord.X = (float)eDouble; break;
                            case 1: coord.Y = (float)eDouble; break;
                            case 2: coord.MapID = (int)eDouble; break;
                            default: LogError("Excessive entries for a single 'coord'", _data); break;
                        }
                    }
                    else
                    {
                        LogError($"Invalid Numeric Format for Merge - {eDouble}:{coordobj}", _data);
                    }
                    i++;
                }

                if (i > 2)
                    Merge(coord);
            }
        }

        private void Merge(Coords value)
        {
            foreach (var coord in value._coords)
            {
                Merge(coord);
            }
        }

        private void Merge(Coord value)
        {
            if (!_coords.Add(value.Clone()))
            {
                // due to how merging works currently, we commonly have the same object merging into itself within the DB store
                // so this logging is not currently useful
                //    // this prints for when the same object is added multiple times in the same group with identical coords, which is common for some reason...
                //    LogDebugWarn($"Duplicate 'coord' entry: {ToJSON(value)}", _data);
            }
        }

        public object AsExportType()
        {
            var sortedList = new List<Coord>(_coords);
            sortedList.Sort();

            var coordsByMapID = new Dictionary<long, object>();
            foreach (var coord in sortedList)
            {
                if (!coordsByMapID.TryGetValue(coord.MapID, out var coordsObj))
                {
                    coordsByMapID[coord.MapID] = coordsObj = new List<object>();
                }
                if (coordsObj is List<object> coordsForMapID)
                {
                    coordsForMapID.Add(new List<object> { coord.X, coord.Y });
                }
            }
            return coordsByMapID;

            /*
            // Old Format
            var list = new List<object>();
            foreach (var coord in sortedList)
            {
                list.Add(new List<object> { coord.X, coord.Y, coord.MapID });
            }
            return list;
            */
        }

        public void Validate()
        {
            if (!HasData) return;

            if (_coords.Any(c => !c.Validate()))
            {
                LogError($"Invalid 'coords' data: {ToJSON(this)}", _data);
            }
        }

        public void Incorporate()
        {

        }

        public void Consolidate()
        {

        }

        IEnumerator<Coord> IEnumerable<Coord>.GetEnumerator()
        {
            return _coords.GetEnumerator();
        }

        public IEnumerator GetEnumerator()
        {
            return _coords.GetEnumerator();
        }
    }

    public class Coord : IEquatable<Coord>, IComparable<Coord>
    {
        public float X;
        public float Y;
        public int MapID;

        public int CompareTo(Coord other)
        {
            int mapCompare = MapID.CompareTo(other.MapID);
            if (mapCompare != 0) return mapCompare;

            int xCompare = X.CompareTo(other.X);
            if (xCompare != 0) return xCompare;

            return Y.CompareTo(other.Y);
        }

        public bool Equals(Coord other) => X == other.X && Y == other.Y && MapID == other.MapID;

        public override bool Equals(object obj) => obj is Coord other && Equals(other);

        public override int GetHashCode()
        {
            unchecked
            {
                int hash = 17;
                hash = hash * 23 + X.GetHashCode();
                hash = hash * 23 + Y.GetHashCode();
                hash = hash * 23 + MapID.GetHashCode();
                return hash;
            }
        }

        public Coord Clone() => new Coord
        {
            X = X,
            Y = Y,
            MapID = MapID
        };

        public float DistanceTo(Coord other)
        {
            float dx = other.X - X;
            float dy = other.Y - Y;
            return (float)Math.Sqrt(dx * dx + dy * dy);
        }

        public override string ToString() => $"[{X},{Y},{MapID}]";

        public bool Validate() =>
            // apparently we have a couple valid use cases of negative coords
            //X >= 0 &&
            X <= 100 &&
            //Y >= 0 &&
            Y <= 100 &&
            MapID > 0;
    }
}
