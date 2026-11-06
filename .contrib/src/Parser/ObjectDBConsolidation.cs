using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace ATT
{
    internal static class ObjectDBConsolidation
    {
        internal static IDictionary<long, IDictionary<string, object>> SelectHarvested(
            IDictionary<long, IDictionary<string, object>> dirty, IDictionary<long, IDictionary<string, object>> effective) =>
            dirty.Where(pair => !effective.TryGetValue(pair.Key, out var view) ||
                !view.TryGetValue("dynamic", out var dynamic) || !(dynamic is bool flag) || !flag)
                .ToDictionary(pair => pair.Key, pair => pair.Value);

        private static bool IsNumber(object value) => value is byte || value is sbyte || value is short || value is ushort || value is int || value is uint || value is long || value is ulong || value is float || value is double || value is decimal;

        private static object CopyKey(object key)
        {
            if (key is string || key is bool) return key;
            if (IsNumber(key))
            {
                double number = Convert.ToDouble(key, CultureInfo.InvariantCulture);
                if (double.IsNaN(number) || double.IsInfinity(number)) throw new InvalidDataException("Non-finite ObjectDB key.");
                return number;
            }
            throw new InvalidDataException("ObjectDB keys must be strings, booleans or finite numbers.");
        }

        private static object CopyLua(object value)
        {
            if (value is NLua.LuaTable table)
            {
                var result = new Dictionary<object, object>();
                foreach (object key in table.Keys) result.Add(CopyKey(key), CopyLua(table[key]));
                return result;
            }
            if (value == null || value is string || value is bool || IsNumber(value)) return value;
            throw new InvalidDataException("Unsupported Lua ObjectDB value: " + value.GetType());
        }

        private static object CopyValue(object value) => CopyValue(value, new HashSet<object>());
        private static object CopyValue(object value, HashSet<object> parents)
        {
            if (value is IDictionary || value is IList)
            {
                if (!parents.Add(value)) throw new InvalidDataException("Cyclic ObjectDB data is unsupported.");
                try
                {
                    var result = new Dictionary<object, object>();
                    if (value is IDictionary map)
                    {
                        foreach (DictionaryEntry item in map)
                            if (item.Value != null) result.Add(CopyKey(item.Key), CopyValue(item.Value, parents));
                    }
                    else if (value is IList list)
                        for (int i = 0; i < list.Count; i++) if (list[i] != null) result.Add((double)i + 1, CopyValue(list[i], parents));
                    return result;
                }
                finally { parents.Remove(value); }
            }
            if (value == null || value is string || value is bool || IsNumber(value)) return value;
            throw new InvalidDataException("Unsupported ObjectDB value: " + value.GetType());
        }

        private static void Upsert(Dictionary<object, object> target, Dictionary<object, object> incoming)
        {
            foreach (var pair in incoming)
            {
                if (pair.Value is Dictionary<object, object> child && target.TryGetValue(pair.Key, out object previous) && previous is Dictionary<object, object> existing)
                    Upsert(existing, child);
                else target[pair.Key] = pair.Value;
            }
        }

        private static string Literal(object value) => Literal(value, "");
        private static string Literal(object value, string indent)
        {
            if (value == null) return "nil";
            if (value is bool boolean) return boolean ? "true" : "false";
            if (value is string text)
            {
                var output = new StringBuilder("\"");
                foreach (char c in text)
                {
                    if (c == '\\' || c == '"') output.Append('\\').Append(c);
                    else if (c < 32 || c == 127) output.Append('\\').Append(((int)c).ToString("D3", CultureInfo.InvariantCulture));
                    else output.Append(c);
                }
                return output.Append('"').ToString();
            }
            if (value is Dictionary<object, object> table)
            {
                if (table.Count == 0) return "{}";
                var entries = table.Select(pair => new { Key = FieldName(pair.Key), Value = pair.Value }).OrderBy(pair => pair.Key, StringComparer.Ordinal);
                string childIndent = indent + "\t";
                return "{\n" + string.Join("\n", entries.Select(pair => childIndent + pair.Key + " = " + Literal(pair.Value, childIndent) + ",")) + "\n" + indent + "}";
            }
            if (value is IFormattable number)
            {
                string result = value is double || value is float ? number.ToString("R", CultureInfo.InvariantCulture) : number.ToString(null, CultureInfo.InvariantCulture);
                if (result == "NaN" || result.Contains("Infinity")) throw new InvalidDataException("Non-finite ObjectDB number.");
                return result;
            }
            throw new InvalidDataException("Unsupported ObjectDB literal: " + value.GetType());
        }

        private static string FieldName(object key)
        {
            const string reserved = " and break do else elseif end false for function if in local nil not or repeat return then true until while ";
            if (key is string text && text.Length > 0 && !reserved.Contains(" " + text + " ") &&
                (char.IsLetter(text[0]) && text[0] < 128 || text[0] == '_') &&
                text.All(character => character < 128 && (char.IsLetterOrDigit(character) || character == '_'))) return text;
            return "[" + Literal(key) + "]";
        }

        private static string Fingerprint(string directory)
        {
            using (var bytes = new MemoryStream())
            using (var sha = SHA256.Create())
            {
                foreach (string file in Directory.GetFiles(directory).OrderBy(Path.GetFileName, StringComparer.Ordinal))
                {
                    byte[] name = Encoding.UTF8.GetBytes(Path.GetFileName(file) + "\0"); bytes.Write(name, 0, name.Length);
                    byte[] data = File.ReadAllBytes(file); bytes.Write(data, 0, data.Length);
                }
                bytes.Position = 0;
                return BitConverter.ToString(sha.ComputeHash(bytes)).Replace("-", "").ToLowerInvariant();
            }
        }

        internal static void WriteSnapshot(TextWriter writer, IDictionary<long, Dictionary<object, object>> records, IDictionary<long, string> rawEntries)
        {
            writer.WriteLine("local ObjectDB = ObjectDB; for objectID,objectData in pairs({");
            foreach (var pair in records.OrderBy(pair => pair.Key))
                writer.WriteLine((rawEntries.TryGetValue(pair.Key, out string raw) ? raw : "[" + pair.Key.ToString(CultureInfo.InvariantCulture) + "] = " + Literal(pair.Value)) + ",");
            writer.WriteLine("}) do ObjectDB[objectID] = objectData; end");
        }

        public static void Publish(string directory, IDictionary<long, IDictionary<string, object>> incoming)
        {
            if (incoming.Count == 0) return;
            var result = new Dictionary<long, Dictionary<object, object>>();
            var rawEntries = new Dictionary<long, string>();
            string fingerprint;
            using (var store = new ObjectDBStore(directory))
            using (var lua = new NLua.Lua())
            {
                lua.State.Encoding = new UTF8Encoding(false, true);
                lua.DoString("ObjectDB = {}");
                foreach (string file in store.Files)
                {
                    string content = File.ReadAllText(file, Encoding.UTF8);
                    foreach (var entry in ObjectDBStore.ParseEntries(content)) rawEntries.Add(entry.Key, entry.Value);
                    lua.DoString(content);
                }
                var source = lua.GetTable("ObjectDB");
                foreach (object key in source.Keys) result.Add(Convert.ToInt64(key), (Dictionary<object, object>)CopyLua(source[key]));
                fingerprint = Fingerprint(directory);
            }
            foreach (var pair in incoming)
            {
                if (pair.Value == null) continue;
                var update = (Dictionary<object, object>)CopyValue(pair.Value);
                if (update.Count == 0) continue;
                rawEntries.Remove(pair.Key);
                if (result.TryGetValue(pair.Key, out var existing)) Upsert(existing, update);
                else result.Add(pair.Key, update);
            }
            string temp = Path.Combine(Path.GetTempPath(), "att-objectdb-snapshot-" + Guid.NewGuid().ToString("N") + ".lua");
            try
            {
                using (var writer = new StreamWriter(temp, false, new UTF8Encoding(false, true)))
                {
                    WriteSnapshot(writer, result, rawEntries);
                }
                string script = Path.Combine(Path.GetDirectoryName(typeof(ObjectDBConsolidation).Assembly.Location), "Lua", "split_objectdb.js");
                var process = Process.Start(new ProcessStartInfo {
                    FileName = "node", Arguments = Quote(script) + " --update " + Quote(temp) + " " + Quote(Path.GetFullPath(directory)) + " --expect-sha256 " + fingerprint,
                    UseShellExecute = false, CreateNoWindow = true
                });
                process.WaitForExit();
                if (process.ExitCode != 0) throw new InvalidOperationException("ObjectDB consolidation publisher failed with exit code " + process.ExitCode);
            }
            finally { if (File.Exists(temp)) File.Delete(temp); }
        }

        // Quote one ProcessStartInfo.Arguments item using the Windows/CLR rules.
        internal static string Quote(string value)
        {
            var result = new StringBuilder("\"");
            int slashes = 0;
            foreach (char character in value)
            {
                if (character == '\\') { slashes++; continue; }
                if (character == '"') result.Append('\\', slashes * 2 + 1).Append(character);
                else result.Append('\\', slashes).Append(character);
                slashes = 0;
            }
            return result.Append('\\', slashes * 2).Append('"').ToString();
        }
    }
}
