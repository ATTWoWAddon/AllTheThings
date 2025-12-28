using ATT.FieldTypes;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ATT
{
    /// <summary>
    /// A collection of extensions used to simplify the data access requirements of a commonly formatted string/object dictionary.
    /// </summary>
    public static class Extensions
    {
        /// <summary>
        /// Convert the version number array to a version number.
        /// </summary>
        /// <typeparam name="T">The generic type.</typeparam>
        /// <param name="arr">The array.</param>
        /// <returns>The version number.</returns>
        public static long ConvertVersion<T>(this T[] arr)
        {
            if (arr == null || arr.Length < 1) return 0;
            try
            {
                // Support for Full Patch versions as whole numbers.
                if (arr.Length == 1)
                {
                    var versionString = Convert.ToString(arr[0]);
                    var version = long.Parse(versionString);
                    if (versionString.Length == 11) return version;
                    return (version * 1000000) + 100000;  // Need to add 6 spaces for the build version ABBCC100000
                }

                return long.Parse($"{arr.AsString(0)}{arr.AsString(1).PadLeft(2, '0')}{arr.AsString(2).PadLeft(2, '0')}{arr.AsString(3).PadLeft(6, '0')}");
            }
            catch
            {
                throw new InvalidDataException("Invalid 'Version': " + MiniJSON.Json.Serialize(arr));
            }
        }

        /// <summary>
        /// Returns the string value of an object from the specified index of an Array
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="arr"></param>
        /// <param name="i"></param>
        /// <returns></returns>
        public static string AsString<T>(this T[] arr, int i)
        {
            return (arr?.Length ?? 0) > i ? Convert.ToString(arr[i]) : string.Empty;
        }

        /// <summary>
        /// Returns a decimal value of an object divided by 1 billion (10^9)
        /// </summary>
        /// <param name="i"></param>
        /// <returns></returns>
        /// <exception cref="InvalidOperationException"></exception>
        public static decimal AsSubDecimalShift(this object i)
        {
            if (!i.TryConvert(out double d))
                throw new InvalidOperationException($"Object is not a numeric type: {Framework.ToJSON(i)}");

            if (d == 0)
                return 0;

            return (decimal)(d / Math.Pow(10, 9));
        }

        /// <summary>
        /// Convert the version number into a valid game version number.
        /// </summary>
        /// <param name="version">The version number.</param>
        /// <returns>The version number as represented in WoW.</returns>
        public static long ConvertToGameVersion(this long version)
        {
            var s = version.ToString();
            var leadingZeros = new char[] { '0' };
            var len = s.Length;
            var major = s.Substring(0, len - 10).TrimStart(leadingZeros);
            if (major.Length == 0) major = "0";
            var minor = s.Substring(len - 10, 2).TrimStart(leadingZeros);
            if (minor.Length == 0) minor = "0";
            var patch = s.Substring(len - 8, 2).TrimStart(leadingZeros);
            if (patch.Length == 0) patch = "0";
            return long.Parse($"{major}{minor.PadLeft(2, '0')}{patch.PadLeft(2, '0')}");
        }

        /// <summary>
        /// Convert the version number into a valid version string.
        /// </summary>
        /// <param name="version">The version number.</param>
        /// <returns>The version string.</returns>
        public static string ConvertToVersionString(this long version)
        {
            var s = version.ToString();
            var leadingZeros = new char[] { '0' };
            var len = s.Length;
            var major = s.Substring(0, len - 10).TrimStart(leadingZeros);
            if (major.Length == 0) major = "0";
            var minor = s.Substring(len - 10, 2).TrimStart(leadingZeros);
            if (minor.Length == 0) minor = "0";
            var patch = s.Substring(len - 8, 2).TrimStart(leadingZeros);
            if (patch.Length == 0) patch = "0";
            return $"{major}.{minor}.{patch}";
        }

        /// <summary>
        /// Get a boolean from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <returns>The boolean.</returns>
        public static bool GetBoolean(this IDictionary<string, object> dict, string key)
        {
            return dict.TryGetValue(key, out object o) ? Convert.ToBoolean(o) : false;
        }

        /// <summary>
        /// Try to get a boolean from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this IDictionary<string, object> dict, string key, out bool value)
        {
            if (dict != null && dict.TryGetValue(key, out object o) && o.TryConvert(out value))
            {
                return true;
            }
            value = false;
            return false;
        }

        /// <summary>
        /// Try to get a long from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this IDictionary<string, object> dict, string key, out long value)
        {
            if (dict != null && dict.TryGetValue(key, out object o) && o.TryConvert(out value))
            {
                return true;
            }
            value = 0;
            return false;
        }

        /// <summary>
        /// Try to get a decimal from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this IDictionary<string, object> dict, string key, out decimal value)
        {
            if (dict != null && dict.TryGetValue(key, out object o) && o.TryConvert(out value))
            {
                return true;
            }
            value = 0;
            return false;
        }

        /// <summary>
        /// Get a string from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <returns>The string.</returns>
        public static string GetString(this IDictionary<string, object> dict, string key)
        {
            return dict.TryGetValue(key, out object o) ? Convert.ToString(o) : null;
        }

        /// <summary>
        /// Try to get a string from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this IDictionary<string, object> dict, string key, out string value)
        {
            if (dict != null && dict.TryGetValue(key, out object o))
            {
                value = Convert.ToString(o);
                return true;
            }
            value = null;
            return false;
        }

        public static bool TryGetValue(this IDictionary<string, object> dict, out Coords value)
        {
            if (dict != null && dict.TryGetValue(Coords.Field, out object o) && o is Coords val)
            {
                value = val;
                return true;
            }
            value = null;
            return false;
        }

        public static bool TryGetValue(this IDictionary<string, object> dict, out Cost value)
        {
            if (dict != null && dict.TryGetValue(Cost.Field, out object o) && o is Cost val)
            {
                value = val;
                return true;
            }
            value = null;
            return false;
        }

        public static bool TryGetValue(this IDictionary<string, object> dict, out Providers value)
        {
            if (dict != null && dict.TryGetValue(Providers.Field, out object o) && o is Providers val)
            {
                value = val;
                return true;
            }
            value = null;
            return false;
        }

        /// <summary>
        /// Get a list of objects from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <returns>The list.</returns>
        public static List<object> GetList(this IDictionary<string, object> dict, string key)
        {
            return dict.TryGetValue(key, out object o) ? o as List<object> : null;
        }

        /// <summary>
        /// Try to get a list of objects from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this IDictionary<string, object> dict, string key, out List<object> value)
        {
            if (dict != null && dict.TryGetValue(key, out object o) && o is List<object> value2)
            {
                value = value2;
                return true;
            }
            value = null;
            return false;
        }

        /// <summary>
        /// Try to get a strongly-typed list of objects from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue<T>(this IDictionary<string, object> dict, string key, out List<T> value)
        {
            if (dict != null && dict.TryGetValue(key, out object o) && o is List<T> value2)
            {
                value = value2;
                return true;
            }
            value = null;
            return false;
        }

        /// <summary>
        /// Get a dictionary from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <returns>The dictionary.</returns>
        public static IDictionary<string, object> GetDictionary(this IDictionary<string, object> dict, string key)
        {
            return dict.TryGetValue(key, out object o) ? o as IDictionary<string, object> : null;
        }

        /// <summary>
        /// Returns if the dictionary contains any of the provided keys
        /// </summary>
        public static bool ContainsAnyKey<TKey, TValue>(this IDictionary<TKey, TValue> dict, params TKey[] keys)
            => dict.ContainsAnyKey((IEnumerable<TKey>)keys);

        /// <summary>
        /// Returns if the dictionary contains any of the provided keys
        /// </summary>
        public static bool ContainsAnyKey<TKey, TValue>(this IDictionary<TKey, TValue> dict, IEnumerable<TKey> keys)
        {
            if (keys == null || dict == null || !keys.Any())
                return false;

            foreach (TKey key in keys)
                if (dict.ContainsKey(key))
                    return true;

            return false;
        }

        /// <summary>
        /// Returns all KVPs within the dictionary which meet the provided <paramref name="check"/>
        /// </summary>
        public static IEnumerable<KeyValuePair<TKey, TValue>> GetAllKvps<TKey, TValue>(this IEnumerable<KeyValuePair<TKey, TValue>> kvps, Func<TValue, bool> check)
        {
            if (check == null || kvps == null || !kvps.Any())
                yield break;

            foreach (KeyValuePair<TKey, TValue> kvp in kvps)
                if (check(kvp.Value))
                    yield return kvp;
        }

        /// <summary>
        /// Performs the expected .Contains logic for the provided object on a list containing objects,
        /// but attempts to verify matching objects even when there are slightly different underlying Types
        /// and passes-out the proper Typed-value if it is found in the List
        /// </summary>
        /// <param name="list"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool TrySmartContains(this List<object> list, object value, out object typedValue)
        {
            // if the types are already matching
            if (list.Contains(value))
            {
                typedValue = value;
                return true;
            }

            // otherwise attempt conversions
            // float
            try
            {
                Type listType = null;
                foreach (object item in list)
                {
                    try
                    {
                        typedValue = Convert.ChangeType(value, listType ?? (listType = item.GetType()));
                        if (Equals(item, typedValue))
                            return true;
                    }
                    // either all objects in the list convert, or none do
                    catch { break; }
                }
            }
            catch { }

            typedValue = null;
            return false;
        }

        /// <summary>
        /// Finds an object from a List of object datas which contains the specified key/value pair
        /// </summary>
        public static IDictionary<string, object> FindObject<T>(this IEnumerable<object> list, string key, T value)
        {
            if (list == null) return null;

            foreach (var obj in list)
            {
                if (obj is IDictionary<string, object> thing &&
                    thing.TryGetValue(key, out object thingVal) &&
                    thingVal.TryConvert(out T thingKeyVal) &&
                    thingKeyVal.Equals(value))
                {
                    if (!thing.TryGetValue("nomerge", out bool nomerge) || !nomerge)
                    {
                        return thing;
                    }
                }
            }

            return null;
        }

        /// <summary>
        /// Finds an object from a List of object datas which contains both specified key/value pairs
        /// </summary>
        public static IDictionary<string, object> FindObject<T1, T2>(this IEnumerable<object> list, string key1, T1 value1, string key2, T2 value2)
        {
            if (list == null) return null;

            foreach (var obj in list)
            {
                if (obj is IDictionary<string, object> thing &&
                    thing.TryGetValue(key1, out object thingVal1) &&
                    thing.TryGetValue(key2, out object thingVal2) &&
                    thingVal1.TryConvert(out T1 thingKeyVal1) &&
                    thingVal2.TryConvert(out T2 thingKeyVal2) &&
                    thingKeyVal1.Equals(value1) &&
                    thingKeyVal2.Equals(value2))
                {
                    return thing;
                }
            }

            return null;
        }

        /// <summary>
        /// Returns true if any of the <paramref name="groups"/> match the <paramref name="check"/> function
        /// </summary>
        /// <param name="groups"></param>
        /// <returns></returns>
        public static bool TryGetAnyMatchingGroup(
            this IEnumerable<IDictionary<string, object>> groups,
            Func<IDictionary<string, object>, bool> check,
            out IDictionary<string, object> matchedGroup)
        {
            matchedGroup = null;
            if (groups == null || !groups.Any())
                return false;

            foreach (IDictionary<string, object> data in groups)
            {
                if (check(data))
                {
                    matchedGroup = data;
                    return true;
                }
            }

            return false;
        }

        /// <summary>
        /// Try to get a dictionary from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this IDictionary<string, object> dict, string key, out IDictionary<string, object> value)
        {
            if (dict != null && dict.TryGetValue(key, out object o) && o is IDictionary<string, object> value2)
            {
                value = value2;
                return true;
            }
            value = null;
            return false;
        }

        /// <summary>
        /// Try to convert the object to a specific Type
        /// </summary>
        public static bool TryConvert<T>(this object obj, out T value, bool lazy = false, bool warnOnConvert = false, bool debugWarnOnConvert = false)
        {
            if (obj is T val)
            {
                value = val;
                return true;
            }

            if (!lazy)
            {
                try
                {
                    if (warnOnConvert)
                    {
                        Framework.LogWarn($"Potentially unexpected value type conversion for {obj} ({obj?.GetType().FullName}) => {typeof(T).FullName}");
                    }
                    if (debugWarnOnConvert)
                    {
                        Framework.LogDebugWarn($"Potentially unexpected value type conversion for {obj} ({obj?.GetType().FullName}) => {typeof(T).FullName}");
                    }

                    value = (T)Convert.ChangeType(obj, typeof(T));
                    return true;
                }
                catch { }
            }
            value = default;
            return false;
        }

        /// <summary>
        /// Converts a set of raw objects into a set of strongly-typed elements
        /// </summary>
        public static IEnumerable<T> AsTypedEnumerable<T>(this object listObj, bool lazy = false, bool warnOnConvert = false)
        {
            if (listObj == null || listObj is string || !(listObj is IEnumerable objs))
                yield break;

            IEnumerator e = objs.GetEnumerator();
            while (e.MoveNext())
            {
                var c = e.Current;
                if (c.TryConvert(out T t, lazy, warnOnConvert))
                {
                    yield return t;
                }
                else
                {
                    Framework.LogWarn($"Expected a '{typeof(T).Name}' type value but '{Framework.ToJSON(c)}' cannot be converted");
                }
            }

            yield break;
        }

        // https://stackoverflow.com/questions/1749966/c-sharp-how-to-determine-whether-a-type-is-a-number
        private static readonly HashSet<Type> NumericTypes = new HashSet<Type>
        {
            typeof(int),  typeof(double),  typeof(decimal),
            typeof(long), typeof(short),   typeof(sbyte),
            typeof(byte), typeof(ulong),   typeof(ushort),
            typeof(uint), typeof(float)
        };
        private static readonly HashSet<Type> DecimalTypes = new HashSet<Type>
        {
            typeof(double),  typeof(decimal), typeof(float)
        };

        public static bool IsNumeric(this Type myType)
        {
            return NumericTypes.Contains(Nullable.GetUnderlyingType(myType) ?? myType);
        }

        public static bool IsDecimal(this Type myType)
        {
            return DecimalTypes.Contains(Nullable.GetUnderlyingType(myType) ?? myType);
        }

        /// <summary>
        /// Returns whether the sequence matches the content of another sequence regardless of ordering<para/>
        /// NOTE: Not well-optimized for long sequences
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sequence"></param>
        /// <param name="sequence"></param>
        /// <returns></returns>
        public static bool Matches<T>(this ICollection<T> x, ICollection<T> y)
        {
            // check counts
            int xCount = x?.Count ?? -1;
            int yCount = y?.Count ?? -1;
            if (xCount != yCount)
            {
                return false;
            }
            // matching count is only valid if both are null
            else if (xCount == -1)
            {
                return true;
            }

            // check elements regardless of ordering
            HashSet<T> copy = new HashSet<T>(y);
            foreach (T item in x)
            {
                if (!copy.Remove(item))
                    return false;
            }
            return copy.Count == 0;
        }

        /// <summary>
        /// Returns whether the sequence matches the content of another sequence regardless of ordering<para/>
        /// NOTE: Not well-optimized for long sequences
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sequence"></param>
        /// <param name="sequence"></param>
        /// <returns></returns>
        public static bool Matches<T>(this IEnumerable<T> x, IEnumerable<T> y)
        {
            // check counts
            int xCount = x?.Count() ?? -1;
            int yCount = y?.Count() ?? -1;
            if (xCount != yCount)
            {
                return false;
            }
            // matching count is only valid if both are null
            else if (xCount == -1)
            {
                return true;
            }

            // check elements regardless of ordering
            HashSet<T> copy = new HashSet<T>(y);
            foreach (T item in x)
            {
                if (!copy.Remove(item))
                    return false;
            }
            return copy.Count == 0;
        }

        /// <summary>
        /// Returns strings from a <paramref name="set"/> except those which match the <paramref name="predicate"/>
        /// </summary>
        public static IEnumerable<string> Except(this IEnumerable<string> set, Func<string, bool> predicate)
        {
            if (set == null)
            {
                yield break;
            }

            foreach (string str in set)
                if (!predicate(str))
                    yield return str;
        }

        public static T SafeIndex<T>(this IList<T> vals, int index) => (vals != null && vals.Count > index) ? vals[index] : default;

        public static bool IsEquivalent(this object val1, object val2)
        {
            if (Equals(val1, val2))
            {
                return true;
            }

            if (val1 is ICollection<object> col1 && val2 is ICollection<object> col2)
            {
                return col1.Matches(col2);
            }

            if (val1 is IEnumerable<object> arr1 && val2 is IEnumerable<object> arr2)
            {
                return arr1.Matches(arr2);
            }

            return false;
        }
    }
}
