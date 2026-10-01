using System;
using System.Collections.Generic;
using System.Text;

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
            return long.Parse(new StringBuilder().Append(Convert.ToString(arr[0]).Trim())
                .Append((arr.Length >= 2 ? Convert.ToString(arr[1]).Trim() : "").PadLeft(3, '0'))
                .Append((arr.Length >= 3 ? Convert.ToString(arr[2]).Trim() : "").PadLeft(3, '0'))
                .Append((arr.Length >= 4 ? Convert.ToString(arr[1]).Trim() : "").PadLeft(6, '0')).ToString());
        }

        /// <summary>
        /// Get a boolean from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <returns>The boolean.</returns>
        public static bool GetBoolean(this Dictionary<string, object> dict, string key)
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
        public static bool TryGetValue(this Dictionary<string, object> dict, string key, out bool value)
        {
            if (dict.TryGetValue(key, out object o))
            {
                value = Convert.ToBoolean(o);
                return true;
            }
            value = false;
            return false;
        }

        /// <summary>
        /// Get an integer from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <returns>The integer.</returns>
        public static int GetInt(this Dictionary<string, object> dict, string key)
        {
            return dict.TryGetValue(key, out object o) ? Convert.ToInt32(o) : 0;
        }

        /// <summary>
        /// Try to get an integer from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this Dictionary<string, object> dict, string key, out int value)
        {
            if (dict.TryGetValue(key, out object o))
            {
                try
                {
                    value = Convert.ToInt32(o);
                    return true;
                }
                catch
                {
                    value = 0;
                    return false;
                }
            }
            value = 0;
            return false;
        }

        /// <summary>
        /// Try to get a long from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this Dictionary<string, object> dict, string key, out long value)
        {
            if (dict.TryGetValue(key, out object o))
            {
                value = Convert.ToInt64(o);
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
        public static string GetString(this Dictionary<string, object> dict, string key)
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
        public static bool TryGetValue(this Dictionary<string, object> dict, string key, out string value)
        {
            if (dict.TryGetValue(key, out object o))
            {
                value = Convert.ToString(o);
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
        public static List<object> GetList(this Dictionary<string, object> dict, string key)
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
        public static bool TryGetValue(this Dictionary<string, object> dict, string key, out List<object> value)
        {
            if (dict.TryGetValue(key, out object o) && o is List<object> value2)
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
        public static Dictionary<string, object> GetDictionary(this Dictionary<string, object> dict, string key)
        {
            return dict.TryGetValue(key, out object o) ? o as Dictionary<string, object> : null;
        }

        /// <summary>
        /// Try to get a dictionary from the dictionary.
        /// </summary>
        /// <param name="dict">The dictionary.</param>
        /// <param name="key">The key.</param>
        /// <param name="value">The variable to write to.</param>
        /// <returns>Whether or not a value was found for the key.</returns>
        public static bool TryGetValue(this Dictionary<string, object> dict, string key, out Dictionary<string, object> value)
        {
            if (dict.TryGetValue(key, out object o) && o is Dictionary<string, object> value2)
            {
                value = value2;
                return true;
            }
            value = null;
            return false;
        }
    }
}