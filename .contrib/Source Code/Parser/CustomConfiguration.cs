using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace ATT
{
    /// <summary>
    /// Represents a generic set of data defined from JSON which may be simply accessed by chained indexing
    /// </summary>
    internal class CustomConfiguration
    {
        private readonly CustomConfigurationNode _root;

        /// <summary>
        /// Accesses a particular key of the CustomConfiguration
        /// </summary>
        internal CustomConfigurationNode this[string key] => _root[key];

        /// <summary>
        /// Accesses a particular index of the CustomConfiguration
        /// </summary>
        internal CustomConfigurationNode this[long key] => _root[key];

        public CustomConfiguration(string filepath)
        {
            if (!File.Exists(filepath))
            {
                _root = new CustomConfigurationNode(null);
                return;
            }

            try
            {
                string configText = File.ReadAllText(filepath, Encoding.UTF8);
                object jsonObj = MiniJSON.Json.Deserialize(configText);
                if (jsonObj == null)
                {
                    Framework.LogError($"Config File is not proper JSON! {filepath}");
                }
                _root = new CustomConfigurationNode(jsonObj);
            }
            catch (Exception ex)
            {
                _root = new CustomConfigurationNode(null);
                throw new FormatException($"Failed Deserializing JSON config data from {filepath}", ex);
            }

            _root = _root ?? new CustomConfigurationNode(null);
        }

        public void ApplyFile(string filepath)
        {
            if (!File.Exists(filepath))
            {
                Framework.LogWarn($"Config file not found!", filepath);
                return;
            }

            try
            {
                string configText = File.ReadAllText(filepath, Encoding.UTF8);
                object jsonObj = MiniJSON.Json.Deserialize(configText);
                _root.ApplyData(jsonObj);
            }
            catch (Exception ex)
            {
                throw new FormatException($"Failed Deserializing JSON config data from {filepath}", ex);
            }
        }
    }

    internal class CustomConfigurationNode
    {
        private Dictionary<string, CustomConfigurationNode> _dict;
        private List<CustomConfigurationNode> _list;
        private object _val;
        private readonly string _jsonKey;

        private static readonly CustomConfigurationNode _empty = new CustomConfigurationNode(null);

        /// <summary>
        /// Represents whether this CustomConfigurationNode supports enumeration
        /// </summary>
        public bool CanEnumerate => _dict != null || _list != null;

        /// <summary>
        /// Represents the parent Key for this Node, if known
        /// </summary>
        public string Key => _jsonKey;

        public bool Defined => Key != null;

        /// <summary>
        /// Accesses a particular key of the current Configuration Node
        /// </summary>
        internal CustomConfigurationNode this[string key] => TryIndex(_dict, key, out CustomConfigurationNode node) ? node : _empty;

        /// <summary>
        /// Accesses a particular index of the current Configuration Node
        /// </summary>
        internal CustomConfigurationNode this[long index] => TryIndex(_list, (int)index, out CustomConfigurationNode node) ? node : _empty;

        public static implicit operator string(CustomConfigurationNode value) => value?._val as string ?? value?._val?.ToString();

        public static implicit operator int(CustomConfigurationNode value)
        {
            if (value?._val is int l)
            {
                return l;
            }

            try
            {
                return Convert.ToInt32(value?._val);
            }
            catch { }

            if (int.TryParse(value, out l))
            {
                return l;
            }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to int type: {(string)value}");
        }

        public static implicit operator bool(CustomConfigurationNode value)
        {
            if (value?._val is bool l)
            {
                return l;
            }

            try
            {
                return Convert.ToBoolean(value?._val);
            }
            catch { }

            if (bool.TryParse(value, out l))
            {
                return l;
            }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to bool type: {(string)value}");
        }

        public static implicit operator string[](CustomConfigurationNode value)
        {
            try
            {
                return value?._list?.Select(v => (string)v).ToArray();
            }
            catch { }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to string[] type: {(string)value}");
        }

        public static implicit operator long[](CustomConfigurationNode value)
        {
            try
            {
                return value?._list?.Select(v => (long)v).ToArray();
            }
            catch { }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to long[] type: {(string)value}");
        }

        public static implicit operator int[](CustomConfigurationNode value)
        {
            try
            {
                return value?._list?.Select(v => (int)v).ToArray();
            }
            catch { }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to int[] type: {(string)value}");
        }

        public static implicit operator object[](CustomConfigurationNode value)
        {
            try
            {
                return value?._list?.Select(v => v._val).ToArray();
            }
            catch { }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to object[] type: {(string)value}");
        }

        public static implicit operator Dictionary<string, string>(CustomConfigurationNode value)
        {
            try
            {
                return value?._dict.ToDictionary(k => k.Key, v => (string)v.Value);
            }
            catch { }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to Dictionary<string, string> type: {(string)value}");
        }

        public static implicit operator HashSet<string>(CustomConfigurationNode value)
        {
            try
            {
                return new HashSet<string>((string[])value);
            }
            catch { }

            throw new InvalidOperationException($"CustomConfigurationNode cannot convert to HashSet<string> type: {(string)value}");
        }

        /// <summary>
        /// Allows enumeration across config values contained by a CustomConfigurationNode
        /// </summary>
        public IEnumerator<CustomConfigurationNode> GetEnumerator()
        {
            if (_dict != null)
            {
                return _dict.Values.GetEnumerator();
            }
            else if (_list != null)
            {
                return _list.GetEnumerator();
            }
            throw new InvalidOperationException("Cannot enumerate a single value. Verify CanEnumerate is true for the " + nameof(CustomConfigurationNode));
        }

        /// <summary>
        /// Returns the string representation of this Node
        /// </summary>
        public override string ToString() => this;

        /// <summary>
        /// Attetmpts to parse deserialized JSON data into a CustomConfigurationNode
        /// </summary>
        internal CustomConfigurationNode(object jsonObj, string key = null)
        {
            _jsonKey = key;
            ApplyData(jsonObj);
        }

        /// <summary>
        /// Applies JSON data into the existing Configuration
        /// </summary>
        public void ApplyData(object jsonObj)
        {
            if (jsonObj is IDictionary<string, object> dict)
            {
                if (_dict == null)
                {
                    _dict = dict.ToDictionary(o => o.Key, o => new CustomConfigurationNode(o.Value, o.Key));
                }
                else
                {
                    foreach (KeyValuePair<string, object> kvpObj in dict)
                    {
                        if (_dict.TryGetValue(kvpObj.Key, out var config))
                        {
                            config.ApplyData(kvpObj.Value);
                        }
                        else
                        {
                            _dict[kvpObj.Key] = new CustomConfigurationNode(kvpObj.Value, kvpObj.Key);
                        }
                    }
                }
            }
            else if (jsonObj is ICollection<object> list)
            {
                // Simpler to just replace the keyed value entirely and let sub-configs re-define the entire list...
                // Otherwise we have no way to override a list-based value in the configs
                _list = list.Select(o => new CustomConfigurationNode(o)).ToList();
                //if (_list == null)
                //{
                //    _list = list.Select(o => new CustomConfigurationNode(o)).ToList();
                //}
                //else
                //{
                //    int i = 0;
                //    int max = _list.Count - 1;
                //    foreach (object listObj in list)
                //    {
                //        var config = i <= max ? _list[i] : null;
                //        if (config == null || config._val != null)
                //        {
                //            if (listObj is IDictionary<string, object>)
                //            {
                //                throw new InvalidDataException("Cannot merge JSON types within Config Array data");
                //            }
                //            _list.Add(new CustomConfigurationNode(listObj));
                //        }
                //        else if (listObj is IDictionary<string, object> && config._dict != null)
                //        {
                //            config.ApplyData(listObj);
                //        }
                //        else
                //        {
                //            throw new InvalidDataException("Cannot merge JSON types within Config Array data");
                //        }
                //        i++;
                //    }
                //}
            }
            else
            {
                _val = jsonObj;
            }
        }

        private static bool TryIndex<TKey, TVal>(IReadOnlyDictionary<TKey, TVal> set, TKey key, out TVal obj)
        {
            if (set == null)
            {
                obj = default;
                return false;
            }

            return set.TryGetValue(key, out obj);
        }

        private static bool TryIndex<T>(IReadOnlyList<T> set, int index, out T obj)
        {
            if (set == null || index < 0 || set.Count <= index)
            {
                obj = default;
                return false;
            }

            obj = set[index];
            return true;
        }
    }
}
