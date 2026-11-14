using System.Text;
using System.Text.Json;

namespace PhaseExplorer.Core;

internal static class JsonSource
{
    /// <summary>Build source-located JSON nodes, returning a diagnostic for malformed JSON.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="text">Source text whose character offsets are retained.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>Located nodes, or an empty node list with a JSON parse diagnostic.</returns>
    public static Detail Parse(string file, string text, CancellationToken cancellation = default)
    {
        try
        {
            byte[] bytes = Encoding.UTF8.GetBytes(text);
            var reader = new Utf8JsonReader(bytes);
            var context = new Context(file, text, bytes, cancellation);
            if (reader.Read()) Visit(ref reader, context, "", null);
            if (reader.Read()) throw new JsonException("Trailing JSON content");
            return new(context.Nodes, []);
        }
        catch (JsonException ex) { return new([], [$"JSON: {ex.Message}"]); }
    }

    /// <summary>Find typed ID occurrences and policy aliases without indexing documentation comments.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="text">Source text whose character offsets are retained.</param>
    /// <param name="symbol">Exact alias target or integral ID text to find.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>Typed ID or alias relations with exact scalar locations.</returns>
    public static IReadOnlyList<Relation> References(string file, string text, string symbol, CancellationToken cancellation)
    {
        List<Relation> references = [];
        Scan(file, text, cancellation, (path, value, number, location) =>
        {
            string field = path.LastOrDefault() ?? "";
            if (field == "sameAs" && value == symbol) references.Add(new("Alias", symbol, location));
            if (number != symbol || !field.EndsWith("ID", StringComparison.Ordinal)) return;
            string? metadata = path.FirstOrDefault(p => p is "provider" or "providers" or "cost" or "costs");
            string kind = metadata != null ? metadata + " reference" : field == "itemID" ? "Item occurrence" : "Record occurrence";
            references.Add(new(kind, symbol, location, Domain: field));
        });
        return references;
    }

    /// <summary>Find supported source-path values that resolve to the selected indexed file.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="text">Source text whose character offsets are retained.</param>
    /// <param name="target">Indexed relative source path to match after resolving each declared path.</param>
    /// <param name="root">Absolute project directory used to resolve control-relative paths.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>Source-consumer relations whose resolved path matches target.</returns>
    public static IReadOnlyList<Relation> SourceReferences(string file, string text, string target, string root, CancellationToken cancellation)
    {
        List<Relation> references = [];
        Scan(file, text, cancellation, (path, value, _, location) =>
        {
            if (value == null || !IsSourcePath(file, location.Pointer ?? "")) return;
            string resolved;
            try { resolved = Path.GetRelativePath(root, Path.GetFullPath(Path.Combine(root, Path.GetDirectoryName(file) ?? "", value))); }
            catch (Exception error) when (error is ArgumentException or NotSupportedException) { return; }
            var comparison = OperatingSystem.IsWindows() ? StringComparison.OrdinalIgnoreCase : StringComparison.Ordinal;
            if (string.Equals(resolved, target, comparison)) references.Add(new("Source consumer", target, location, Domain: "sourceFile"));
        });
        return references;
    }

    /// <summary>Recognize source path fields and selection entries while excluding comment paths.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="pointer">Escaped JSON pointer to classify; comment subtrees are excluded.</param>
    /// <returns>True for recognized source-path declarations outside comment subtrees.</returns>
    internal static bool IsSourcePath(string file, string pointer)
    {
        if (pointer.Split('/').Any(p => p.StartsWith("$comment", StringComparison.OrdinalIgnoreCase))) return false;
        return Path.GetFileName(file).Equals("selection.json", StringComparison.OrdinalIgnoreCase) ||
            pointer.Split('/').Any(p => p is "source" or "sources" or "sourceFile" or "sourceFiles" or "input" or "inputs" or "file" or "files");
    }

    /// <summary>Stream relevant scalar declarations with escaped JSON pointers and character locations.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="text">Source text whose character offsets are retained.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <param name="scalar">Callback receiving the current path, string/integer value and exact location.</param>
    private static void Scan(string file, string text, CancellationToken cancellation, Action<IReadOnlyList<string>, string?, string?, SourceLocation> scalar)
    {
        byte[] bytes = Encoding.UTF8.GetBytes(text);
        var reader = new Utf8JsonReader(bytes);
        var lines = new LineMap(file, text);
        List<string> path = [];
        int previousByte = 0, previousCharacter = 0;
        //! @brief Convert the current UTF-8 token offset to a source location and JSON pointer.
        //! @param current Reader positioned at the scalar whose location is needed; its token position is retained.
        //! @return Location of the current scalar, with an escaped JSON pointer.
        SourceLocation Location(ref Utf8JsonReader current)
        {
            int offset = checked((int)current.TokenStartIndex);
            previousCharacter += Encoding.UTF8.GetCharCount(bytes.AsSpan(previousByte, offset - previousByte));
            previousByte = offset;
            int length = Encoding.UTF8.GetCharCount(bytes.AsSpan(offset, checked((int)current.BytesConsumed - offset)));
            string pointer = "/" + string.Join('/', path.Select(p => p.Replace("~", "~0").Replace("/", "~1")));
            return lines.Location(previousCharacter, length, pointer);
        }
        //! @brief Visit nested JSON values, skipping comment properties and unrelated scalar values.
        //! @param current Reader positioned at a value; traversal advances it through that value.
        void Visit(ref Utf8JsonReader current)
        {
            cancellation.ThrowIfCancellationRequested();
            if (current.TokenType == JsonTokenType.StartObject)
            {
                while (current.Read() && current.TokenType != JsonTokenType.EndObject)
                {
                    string name = current.GetString() ?? "";
                    if (!current.Read()) throw new JsonException("Missing value");
                    if (name.StartsWith("$comment", StringComparison.OrdinalIgnoreCase)) { current.Skip(); continue; }
                    path.Add(name); Visit(ref current); path.RemoveAt(path.Count - 1);
                }
            }
            else if (current.TokenType == JsonTokenType.StartArray)
            {
                int index = 0;
                while (current.Read() && current.TokenType != JsonTokenType.EndArray)
                { path.Add((index++).ToString(System.Globalization.CultureInfo.InvariantCulture)); Visit(ref current); path.RemoveAt(path.Count - 1); }
            }
            else
            {
                string field = path.LastOrDefault() ?? "";
                // Only supported declarations need locations; unrelated values allocate no graph nodes.
                bool relevant = field == "sameAs" || field.EndsWith("ID", StringComparison.Ordinal) ||
                    (current.TokenType == JsonTokenType.String && (Path.GetFileName(file).Equals("selection.json", StringComparison.OrdinalIgnoreCase) || path.Any(p => p is "source" or "sources" or "sourceFile" or "sourceFiles" or "input" or "inputs" or "file" or "files")));
                if (!relevant) return;
                string? value = current.TokenType == JsonTokenType.String ? current.GetString() : null;
                string? number = current.TokenType == JsonTokenType.Number && current.TryGetInt64(out long id) ? id.ToString(System.Globalization.CultureInfo.InvariantCulture) : null;
                scalar(path, value, number, Location(ref current));
            }
        }
        if (reader.Read()) Visit(ref reader);
    }

    /// <summary>Track parsed JSON nodes and convert ordered UTF-8 offsets into character positions.</summary>
    /// <param name="file">Project-relative path stored in JSON node locations.</param>
    /// <param name="text">Complete source text used for line and character mapping.</param>
    /// <param name="bytes">UTF-8 encoding of the same source text.</param>
    /// <param name="cancellation">Token checked while JSON nodes are appended.</param>
    private sealed class Context(string file, string text, byte[] bytes, CancellationToken cancellation)
    {
        public readonly List<SourceNode> Nodes = [];
        private readonly LineMap lines = new(file, text);
        private int previousByte, previousCharacter;

        /// <summary>Advance from a UTF-8 byte offset to its corresponding character offset.</summary>
        /// <param name="byteOffset">Monotonically increasing UTF-8 byte offset at a visited token boundary.</param>
        /// <returns>Corresponding UTF-16 character offset after advancing the shared mapping.</returns>
        private int CharacterOffset(long byteOffset)
        {
            int current = checked((int)byteOffset);
            // JSON traversal visits token boundaries in order. Count each UTF-8 byte once.
            previousCharacter += Encoding.UTF8.GetCharCount(bytes.AsSpan(previousByte, current - previousByte));
            previousByte = current;
            return previousCharacter;
        }
        /// <summary>Create a source node for a token and return its index for later completion.</summary>
        /// <param name="byteOffset">Monotonically increasing UTF-8 byte offset at a visited token boundary.</param>
        /// <param name="byteLength">UTF-8 token length used to calculate the initial character selection.</param>
        /// <param name="pointer">Non-null escaped JSON pointer identifying this exact JSON value.</param>
        /// <param name="label">Property name or value summary displayed in the source tree.</param>
        /// <param name="parent">Owning source occurrence identity, or null for a root occurrence.</param>
        /// <returns>Index of the newly appended node in the shared node list.</returns>
        public int Add(long byteOffset, int byteLength, string pointer, string label, string? parent)
        {
            cancellation.ThrowIfCancellationRequested();
            int offset = CharacterOffset(byteOffset);
            int end = CharacterOffset(byteOffset + byteLength);
            string id = $"{file}:{offset}:{pointer}";
            Nodes.Add(new(id, label, lines.Location(offset, end - offset, pointer), end, "", [], parent));
            return Nodes.Count - 1;
        }
        /// <summary>Set the final character offset of a previously created node.</summary>
        /// <param name="node">Index returned by Add for the node whose final span is being set.</param>
        /// <param name="byteOffset">Monotonically increasing UTF-8 byte offset at a visited token boundary.</param>
        public void Finish(int node, long byteOffset) => Nodes[node] = Nodes[node] with { EndOffset = CharacterOffset(byteOffset) };
    }

    /// <summary>Build nested nodes with JSON pointers and parent occurrence identities.</summary>
    /// <param name="reader">Reader positioned at the value being traversed or formatted.</param>
    /// <param name="context">Shared node list, cancellation token and UTF-8 location mapping.</param>
    /// <param name="pointer">Non-null escaped JSON pointer identifying this exact JSON value.</param>
    /// <param name="parent">Owning source occurrence identity, or null for a root occurrence.</param>
    private static void Visit(ref Utf8JsonReader reader, Context context, string pointer, string? parent)
    {
        if (reader.TokenType == JsonTokenType.StartObject)
        {
            while (reader.Read() && reader.TokenType != JsonTokenType.EndObject)
            {
                if (reader.TokenType != JsonTokenType.PropertyName) throw new JsonException("Expected property");
                string name = reader.GetString() ?? "";
                long at = reader.TokenStartIndex;
                int length = checked((int)(reader.BytesConsumed - at));
                string path = pointer + "/" + name.Replace("~", "~0").Replace("/", "~1");
                if (!reader.Read()) throw new JsonException("Missing value");
                string summary = reader.TokenType is JsonTokenType.StartObject or JsonTokenType.StartArray ? "" : ": " + Value(ref reader);
                int node = context.Add(at, length, path, name + summary, parent);
                Visit(ref reader, context, path, context.Nodes[node].Id);
                context.Finish(node, reader.BytesConsumed);
            }
        }
        else if (reader.TokenType == JsonTokenType.StartArray)
        {
            int i = 0;
            while (reader.Read() && reader.TokenType != JsonTokenType.EndArray)
            {
                string path = pointer + "/" + i++;
                long at = reader.TokenStartIndex;
                int length = checked((int)(reader.BytesConsumed - at));
                string label = reader.TokenType is JsonTokenType.StartObject or JsonTokenType.StartArray ? "[entry]" : Value(ref reader);
                int node = context.Add(at, length, path, label, parent);
                Visit(ref reader, context, path, context.Nodes[node].Id);
                context.Finish(node, reader.BytesConsumed);
            }
        }
    }

    /// <summary>Format a JSON scalar for display in the source tree.</summary>
    /// <param name="reader">Reader positioned at the value being traversed or formatted.</param>
    /// <returns>Display text for scalar values, or an empty string for container tokens.</returns>
    private static string Value(ref Utf8JsonReader reader) => reader.TokenType switch
    {
        JsonTokenType.String => reader.GetString() ?? "", JsonTokenType.True => "true", JsonTokenType.False => "false",
        JsonTokenType.Null => "null", JsonTokenType.Number => Encoding.UTF8.GetString(reader.ValueSpan), _ => ""
    };
}
