using System;
using System.Collections.Generic;
using System.Globalization;
using System.Diagnostics;
using System.Threading;
using System.IO;
using System.Linq;
using System.Text;

namespace ATT
{
    // The sibling lock is shared with the publisher and the cache collector.
    internal sealed class ObjectDBStore : IDisposable
    {
        private readonly string lockPath;
        private readonly FileStream lockFile;
        private bool disposed;
        public List<string> Files { get; } = new List<string>();

        public ObjectDBStore(string directory)
        {
            string root = Path.GetFullPath(directory);
            lockPath = Path.Combine(Path.GetDirectoryName(root), ".ObjectDB.lock");
            lockFile = AcquireReaderLock(lockPath);
            try
            {
                var manifest = MiniJSON.Json.Deserialize(File.ReadAllText(Path.Combine(root, "manifest.json"), Encoding.UTF8)) as IDictionary<string, object>;
                if (manifest == null || !manifest.TryGetValue("format", out object format) || (string)format != "ATT ObjectDB" ||
                    !manifest.TryGetValue("version", out object version) || !IntegerValue(version, 1) ||
                    !manifest.TryGetValue("partitions", out object parts) || !(parts is List<object> list))
                    throw new InvalidDataException("Unsupported ObjectDB manifest.");
                var expected = new HashSet<string>(StringComparer.Ordinal) { "manifest.json" };
                var roots = new Dictionary<long, int>();
                var ids = new HashSet<long>();
                long last = -1;
                {
                    foreach (var value in list)
                    {
                        var part = value as IDictionary<string, object>;
                        if (part == null || !part.TryGetValue("start", out object startValue) || !(startValue is string text) ||
                            !long.TryParse(text, NumberStyles.None, CultureInfo.InvariantCulture, out long start) ||
                            start < 0 || start / 10000 * 10000 > 9007199254740991L || text != start.ToString(CultureInfo.InvariantCulture) ||
                            !part.TryGetValue("width", out object widthValue)) throw new InvalidDataException("Invalid ObjectDB partition.");
                        int width = IntegerValue(widthValue, 100) ? 100 : IntegerValue(widthValue, 1000) ? 1000 : IntegerValue(widthValue, 10000) ? 10000 : 0;
                        if ((width != 100 && width != 1000 && width != 10000) || start % width != 0 || start <= last)
                            throw new InvalidDataException("Overlapping or misaligned ObjectDB partition.");
                        last = checked(start + width - 1);
                        long rootStart = start / 10000 * 10000;
                        roots[rootStart] = (roots.TryGetValue(rootStart, out int size) ? size : 0) + width;
                        string name = $"ObjectDB_{start.ToString("D5", CultureInfo.InvariantCulture)}_{last.ToString("D5", CultureInfo.InvariantCulture)}.lua";
                        expected.Add(name);
                        string file = Path.Combine(root, name);
                        string source = File.ReadAllText(file, Encoding.UTF8);
                        var entryIds = ParseIDs(source);
                        if (entryIds.Count > 700) throw new InvalidDataException("ObjectDB partition exceeds 700 entries: " + name);
                        foreach (long id in entryIds)
                            if (id < start || id > last || !ids.Add(id)) throw new InvalidDataException("Duplicate or out-of-range ObjectDB ID: " + id);
                        Files.Add(file);
                    }
                }
                if (roots.Values.Any(size => size != 10000)) throw new InvalidDataException("Incomplete ObjectDB root partition.");
                if (!expected.SetEquals(Directory.GetFileSystemEntries(root).Select(Path.GetFileName))) throw new InvalidDataException("Unknown or missing ObjectDB managed files.");
            }
            catch { Dispose(); throw; }
        }

        private static FileStream AcquireReaderLock(string path)
        {
            var elapsed = Stopwatch.StartNew();
            while (true)
            {
                if (File.Exists(path + ".journal")) throw new IOException("ObjectDB publication journal is present; wait for publishing or recover an interrupted transaction.");
                try { return new FileStream(path, FileMode.CreateNew, FileAccess.Write, FileShare.None); }
                catch (IOException error)
                {
                    if (!Directory.Exists(Path.GetDirectoryName(path))) throw;
                    if (elapsed.Elapsed.TotalSeconds >= 120) throw new IOException("ObjectDB reader lock timed out; inspect the existing lock before retrying.", error);
                    // Existing Parser workflows start several flavor readers at once.
                    // Serialize their read phases, while publishers still fail if busy.
                    Thread.Sleep(25);
                }
            }
        }

        private static bool IntegerValue(object value, long expected) =>
            value is long integer ? integer == expected : value is double number && number == expected;

        // Match the publishing tool's bounded source format without executing Lua.
        // Normal parsing still compiles/executes accepted files in the Parser Lua state.
        internal static HashSet<long> ParseIDs(string source) => new HashSet<long>(ParseEntries(source).Keys);

        // Cache collection needs only a literal top-level model field. Nested
        // tables, strings and comments must never invent a different object/model.
        internal static long? ReadModel(string entry)
        {
            var scan = new SourceScanner(entry);
            var tokens = new List<string>();
            string token;
            while ((token = scan.Next()) != "")
            {
                if (token == "function") return null;
                tokens.Add(token);
            }
            int opening = tokens.IndexOf("{");
            int depth = 1;
            bool fieldStart = true;
            long? model = null;
            for (int i = opening + 1; i < tokens.Count && depth > 0; i++)
            {
                token = tokens[i];
                if (depth == 1 && fieldStart)
                {
                    int valueIndex = -1;
                    if (token == "model" && i + 2 < tokens.Count && tokens[i + 1] == "=") valueIndex = i + 2;
                    else if (token == "[" && i + 4 < tokens.Count && (tokens[i + 1] == "\"model\"" || tokens[i + 1] == "'model'") && tokens[i + 2] == "]" && tokens[i + 3] == "=") valueIndex = i + 4;
                    if (valueIndex >= 0)
                    {
                        string number = tokens[valueIndex];
                        model = valueIndex + 1 < tokens.Count && new[] { ",", ";", "}" }.Contains(tokens[valueIndex + 1]) &&
                            number.Length > 0 && number.All(c => c >= '0' && c <= '9') && long.TryParse(number, NumberStyles.None, CultureInfo.InvariantCulture, out long parsed) ? (long?)parsed : null;
                    }
                    fieldStart = false;
                }
                if (token == "{" || token == "[" || token == "(") depth++;
                else if (token == "}" || token == "]" || token == ")") depth--;
                else if (depth == 1 && (token == "," || token == ";")) fieldStart = true;
            }
            return model;
        }

        internal static Dictionary<long, string> ParseEntries(string source)
        {
            if (source.Contains("-- #")) throw new InvalidDataException("ObjectDB preprocessor directive is unsupported.");
            var scan = new SourceScanner(source);
            foreach (string token in new[] { "local", "ObjectDB", "=", "ObjectDB", ";", "for", "objectID", ",", "objectData", "in", "pairs", "(", "{" }) scan.Expect(token);
            var ids = new HashSet<long>();
            var entries = new Dictionary<long, string>();
            string next = scan.Next();
            while (next != "}")
            {
                if (next != "[") throw new InvalidDataException("Expected a top-level ObjectDB [ID] entry.");
                int start = scan.TokenStart;
                string text = scan.Next();
                if (text.Length == 0 || text.Any(c => c < '0' || c > '9') ||
                    !long.TryParse(text, NumberStyles.None, CultureInfo.InvariantCulture, out long id) || id > 9007199254740991L || !ids.Add(id))
                    throw new InvalidDataException("Invalid or duplicate ObjectDB ID: " + text);
                scan.Expect("]"); scan.Expect("="); scan.Expect("{");
                var stack = new Stack<string>(); stack.Push("}");
                while (stack.Count != 0)
                {
                    next = scan.Next();
                    if (next == "") throw new InvalidDataException("Incomplete ObjectDB entry.");
                    if (next == "{") stack.Push("}");
                    else if (next == "[") stack.Push("]");
                    else if (next == "(") stack.Push(")");
                    else if ((next == "}" || next == "]" || next == ")") && next != stack.Pop()) throw new InvalidDataException("Unbalanced ObjectDB entry.");
                }
                entries.Add(id, source.Substring(start, scan.Position - start));
                next = scan.Next();
                if (next == ",") next = scan.Next();
                else if (next != "}") throw new InvalidDataException("Expected comma or end of ObjectDB table.");
            }
            foreach (string token in new[] { ")", "do", "ObjectDB", "[", "objectID", "]", "=", "objectData" }) scan.Expect(token);
            next = scan.Next(); if (next == ";") next = scan.Next();
            if (next != "end" || scan.Next() != "") throw new InvalidDataException("Unexpected ObjectDB wrapper content.");
            return entries;
        }

        private sealed class SourceScanner
        {
            private readonly string source;
            private int position;
            internal int TokenStart { get; private set; }
            internal int Position => position;
            internal SourceScanner(string text) { source = text; position = text.Length > 0 && text[0] == '\ufeff' ? 1 : 0; }
            private int LongEnd(int start)
            {
                if (source[start] != '[') return -1;
                int cursor = start + 1;
                while (cursor < source.Length && source[cursor] == '=') cursor++;
                if (cursor >= source.Length || source[cursor] != '[') return -1;
                string close = "]" + new string('=', cursor - start - 1) + "]";
                int end = source.IndexOf(close, cursor + 1, StringComparison.Ordinal);
                if (end < 0) throw new InvalidDataException("Unterminated ObjectDB long string or comment.");
                return end + close.Length;
            }
            internal string Next()
            {
                while (position < source.Length)
                {
                    if (char.IsWhiteSpace(source[position])) { position++; continue; }
                    if (position + 1 < source.Length && source[position] == '-' && source[position + 1] == '-')
                    {
                        position += 2;
                        int commentStart = position;
                        int end = position < source.Length ? LongEnd(position) : -1;
                        if (end >= 0) position = end;
                        else while (position < source.Length && source[position] != '\n' && source[position] != '\r') position++;
                        int marker = commentStart;
                        while (marker < position && char.IsWhiteSpace(source[marker])) marker++;
                        if (marker < position && source[marker] == '#') throw new InvalidDataException("ObjectDB preprocessor directive is unsupported.");
                        continue;
                    }
                    break;
                }
                int start = position; TokenStart = start;
                if (position == source.Length) return "";
                char first = source[position++];
                if (first == '\'' || first == '"')
                {
                    bool closed = false;
                    while (position < source.Length)
                    {
                        char current = source[position++];
                        if (current == first) { closed = true; break; }
                        if (current == '\\')
                        {
                            if (position == source.Length) break;
                            if (source[position++] == '\r' && position < source.Length && source[position] == '\n') position++;
                        }
                        else if (current == '\n' || current == '\r') throw new InvalidDataException("Unterminated ObjectDB quoted string.");
                    }
                    if (!closed) throw new InvalidDataException("Unterminated ObjectDB quoted string.");
                }
                else if (first == '[')
                {
                    int end = LongEnd(start); if (end >= 0) position = end;
                }
                else if ((first >= 'A' && first <= 'Z') || (first >= 'a' && first <= 'z') || first == '_')
                {
                    while (position < source.Length && ((source[position] >= 'A' && source[position] <= 'Z') || (source[position] >= 'a' && source[position] <= 'z') || source[position] == '_' || (source[position] >= '0' && source[position] <= '9'))) position++;
                }
                else if (first >= '0' && first <= '9') while (position < source.Length && source[position] >= '0' && source[position] <= '9') position++;
                return source.Substring(start, position - start);
            }
            internal void Expect(string token)
            {
                if (Next() != token) throw new InvalidDataException("Expected ObjectDB source token: " + token);
            }
        }

        public void Dispose()
        {
            if (disposed) return;
            disposed = true;
            lockFile?.Dispose();
            if (lockFile != null) File.Delete(lockPath);
        }
    }
}
