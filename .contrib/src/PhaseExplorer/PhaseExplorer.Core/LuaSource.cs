using System.Text;
using System.Text.RegularExpressions;

namespace PhaseExplorer.Core;

internal static class LuaSource
{
    internal record Token(string Text, int Start, int End);
    private static readonly HashSet<string> Keywords = ["and", "break", "do", "else", "elseif", "end", "false", "for", "function", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"];
    private record Guard(string Text, IReadOnlyDictionary<int, int> Branches);
    private record Key(string Value, int Offset, Guard Guard);
    private sealed class Span(int start, int end, string label, Guard guard, int tokenIndex)
    {
        public int Start { get; } = start;
        public int End { get; } = end;
        public string Label { get; set; } = label;
        public Guard Guard { get; } = guard;
        public int TokenIndex { get; } = tokenIndex;
        public List<Key> Keys { get; } = [];
    }
    private sealed record Layout(Dictionary<int, int> Pairs, Dictionary<int, int> Parents, int[] Tables, Dictionary<int, string> Metadata);

    public static Detail Parse(string file, string text, CancellationToken cancellation = default)
    {
        try
        {
            List<(int Start, int End)> comments = [];
            var tokens = Lex(text, comments, cancellation);
            var layout = Delimiters(tokens, cancellation);
            var lines = new LineMap(file, text);
            var guards = Conditions(text, comments);
            Guard At(int offset) => guards.GetValueOrDefault(lines.Line(offset)) ?? new("", new Dictionary<int, int>());
            List<Span> calls = [];
            Dictionary<int, Span> tables = [];

            Span Table(int token)
            {
                if (tables.TryGetValue(token, out var existing)) return existing;
                var span = new Span(tokens[token].Start, tokens[layout.Pairs[token]].End, "scope", At(tokens[token].Start), token);
                tables[token] = span;
                return span;
            }

            for (int i = 0; i < tokens.Count; i++)
            {
                if ((i & 4095) == 0) cancellation.ThrowIfCancellationRequested();
                if (IsIdentifier(tokens[i].Text) && i + 1 < tokens.Count && tokens[i + 1].Text == "(" &&
                    layout.Pairs.TryGetValue(i + 1, out int finish) &&
                    (i == 0 || tokens[i - 1].Text is not "." and not ":" and not "function"))
                {
                    int endArgument = FirstArgumentEnd(tokens, layout.Pairs, i + 2, finish);
                    string argument = text[tokens[i + 1].End..tokens[endArgument].Start].Trim();
                    if (argument.Length > 80) argument = argument[..80] + "…";
                    string suffix = CommentSuffix(text, comments, tokens[i].Start, lines);
                    var call = new Span(tokens[i].Start, tokens[finish].End, $"{tokens[i].Text}({argument}){suffix}", At(tokens[i].Start), i);
                    if (tokens[i].Text == "applyclassicphase" && i + 2 < finish && IsIdentifier(tokens[i + 2].Text))
                        call.Keys.Add(new("legacy:" + tokens[i + 2].Text, tokens[i + 2].Start, call.Guard));
                    calls.Add(call);
                }
                if (layout.Tables[i] < 0 && IsIdentifier(tokens[i].Text) && i + 2 < tokens.Count && tokens[i + 1].Text == "=" && tokens[i + 2].Text != "=" &&
                    (i == 0 || tokens[i - 1].Text is not "." and not ":"))
                {
                    int lineEnd = text.IndexOf('\n', tokens[i].Start);
                    if (lineEnd < 0) lineEnd = text.Length;
                    string declaration = text[tokens[i].Start..lineEnd].Trim();
                    if (declaration.Length > 120) declaration = declaration[..120] + "…";
                    calls.Add(new(tokens[i].Start, lineEnd, "definition " + declaration, At(tokens[i].Start), i));
                }
                if (!TryField(tokens, i, out string field, out int value)) continue;
                int table = layout.Tables[i];
                if (table < 0) continue;
                if (field is "progressionKey" or "phase" or "progressionScopes")
                {
                    List<int> values = [];
                    if (field == "progressionKey" && IsString(tokens[value].Text)) values.Add(value);
                    else if (field == "phase" && (IsIdentifier(tokens[value].Text) || long.TryParse(tokens[value].Text, out _))) values.Add(value);
                    else if (field == "progressionScopes" && tokens[value].Text == "{" && layout.Pairs.TryGetValue(value, out int last))
                        for (int j = value + 1; j < last; j++) if (IsString(tokens[j].Text)) values.Add(j);
                    var owner = Table(table);
                    foreach (int j in values)
                    {
                        string key = field == "phase" ? "legacy:" + tokens[j].Text : Unquote(tokens[j].Text);
                        owner.Keys.Add(new(key, tokens[j].Start, At(tokens[i].Start)));
                    }
                }
                else if (field.EndsWith("ID", StringComparison.Ordinal) && long.TryParse(tokens[value].Text, out _) &&
                    !HasMetadataAncestor(table, -1, layout))
                {
                    var owner = Table(table);
                    string label = $"record {field}={tokens[value].Text}";
                    owner.Label = owner.Label == "scope" ? label : owner.Label + ", " + label[7..];
                }
            }

            foreach (var table in tables.Values)
                if (table.Label == "scope") table.Label = "scope: " + string.Join(", ", table.Keys.Select(k => k.Value));
            var all = calls.Concat(tables.Values).OrderBy(s => s.Start).ThenByDescending(s => s.End).ToList();
            // Direct table keys belong to their constructor; the table still retains its own occurrence.
            var directKeys = tables.Values.Where(t => layout.Parents.ContainsKey(t.TokenIndex))
                .GroupBy(t => layout.Parents[t.TokenIndex]).ToDictionary(g => g.Key, g => g.SelectMany(t => t.Keys).ToList());
            // applyclassicphase returns the supplied record table. A constructor
            // receiving that wrapped table owns its keys as well as its phase.
            Dictionary<int, List<Key>> wrappedKeys = [];
            foreach (var wrapper in calls.Where(c => tokens[c.TokenIndex].Text == "applyclassicphase"))
            {
                if (!layout.Parents.TryGetValue(wrapper.TokenIndex + 1, out int parent) || parent == 0 ||
                    tokens[parent].Text != "(" || !RecordKinds.TryConstructor(tokens[parent - 1].Text, out _, out _)) continue;
                if (!wrappedKeys.TryGetValue(parent, out var keys)) wrappedKeys[parent] = keys = [];
                keys.AddRange(wrapper.Keys);
                if (directKeys.TryGetValue(wrapper.TokenIndex + 1, out var tableKeys)) keys.AddRange(tableKeys);
            }
            List<SourceNode> nodes = [];
            Stack<Span> ancestors = new();
            string Identity(Span span) => $"{file}:{span.Start}:{span.End}:{span.TokenIndex}";
            foreach (var span in all)
            {
                cancellation.ThrowIfCancellationRequested();
                while (ancestors.TryPeek(out var previous) && !(previous.Start <= span.Start && previous.End >= span.End)) ancestors.Pop();
                List<Binding> bindings = [];
                foreach (var ancestor in ancestors.Reverse())
                {
                    if (HasMetadataAncestor(layout.Tables[span.TokenIndex], ancestor.TokenIndex, layout)) continue;
                    foreach (var key in ancestor.Keys.Where(k => Compatible(k.Guard, span.Guard)))
                        bindings.Add(new(key.Value, lines.Location(key.Offset, key.Value.Length), key.Guard.Text, false));
                }
                foreach (var key in span.Keys)
                    bindings.Add(new(key.Value, lines.Location(key.Offset, key.Value.Length), key.Guard.Text, true));
                if (directKeys.TryGetValue(span.TokenIndex + 1, out var owned))
                    foreach (var key in owned)
                        bindings.Add(new(key.Value, lines.Location(key.Offset, key.Value.Length), key.Guard.Text, true));
                if (wrappedKeys.TryGetValue(span.TokenIndex + 1, out var wrapped))
                    foreach (var key in wrapped)
                        bindings.Add(new(key.Value, lines.Location(key.Offset, key.Value.Length), key.Guard.Text, true));
                string label = span.Label;
                string? metadata = MetadataAncestor(layout.Tables[span.TokenIndex], layout);
                if (metadata != null) label = $"reference in {metadata}: {label}";
                nodes.Add(new(Identity(span), label, lines.Location(span.Start, Math.Min(span.End - span.Start, 100)), span.End,
                    span.Guard.Text, bindings.OrderByDescending(b => b.Authored).DistinctBy(b => (b.Key, b.Location.Offset, b.Condition)).ToList(), ancestors.TryPeek(out var parent) ? Identity(parent) : null));
                ancestors.Push(span);
            }
            return new(nodes, []);
        }
        catch (FormatException ex) { return new([], [ex.Message]); }
    }

    private static Layout Delimiters(List<Token> tokens, CancellationToken cancellation)
    {
        Dictionary<int, int> pairs = [], parents = [];
        Dictionary<int, string> metadata = [];
        int[] tables = new int[tokens.Count];
        Stack<int> stack = new(), tableStack = new();
        for (int i = 0; i < tokens.Count; i++)
        {
            if ((i & 4095) == 0) cancellation.ThrowIfCancellationRequested();
            tables[i] = tableStack.TryPeek(out int table) ? table : -1;
            string token = tokens[i].Text;
            if (token is "(" or "{" or "[")
            {
                if (stack.TryPeek(out int parent)) parents[i] = parent;
                stack.Push(i);
                if (token == "{")
                {
                    if (tables[i] >= 0 && i >= 2 && tokens[i - 1].Text == "=")
                    {
                        string field = tokens[i - 2].Text;
                        if (field == "]" && i >= 4 && tokens[i - 4].Text == "[" && IsString(tokens[i - 3].Text)) field = Unquote(tokens[i - 3].Text);
                        if (IsIdentifier(field) && field is not "groups" and not "g") metadata[i] = field;
                    }
                    tableStack.Push(i);
                }
            }
            else if (token is ")" or "}" or "]")
            {
                if (!stack.TryPop(out int open) || (tokens[open].Text, token) is not (("(", ")") or ("{", "}") or ("[", "]")))
                    throw new FormatException($"Unbalanced delimiter at offset {tokens[i].Start}");
                pairs[open] = i;
                if (token == "}") tableStack.Pop();
            }
        }
        if (stack.Count > 0) throw new FormatException("Unclosed delimiter");
        return new(pairs, parents, tables, metadata);
    }

    private static bool TryField(List<Token> tokens, int i, out string name, out int value)
    {
        name = tokens[i].Text;
        int equals = i + 1;
        if (IsString(name) && i > 0 && tokens[i - 1].Text == "[" && i + 1 < tokens.Count && tokens[i + 1].Text == "]")
        { name = Unquote(name); equals++; }
        value = equals + 1;
        return value < tokens.Count && tokens[equals].Text == "=";
    }

    private static int FirstArgumentEnd(List<Token> tokens, Dictionary<int, int> pairs, int start, int finish)
    {
        for (int i = start; i < finish; i++)
        {
            if (tokens[i].Text is "," or "{") return i;
            if (pairs.TryGetValue(i, out int last)) i = last;
        }
        return finish;
    }

    private static string CommentSuffix(string text, List<(int Start, int End)> comments, int offset, LineMap lines)
    {
        // Binary search avoids a scan over every comment for every constructor.
        int low = 0, high = comments.Count;
        while (low < high) { int mid = (low + high) / 2; if (comments[mid].Start < offset) low = mid + 1; else high = mid; }
        return low < comments.Count && lines.Line(comments[low].Start) == lines.Line(offset)
            ? "  " + text[(comments[low].Start + 2)..comments[low].End].Trim() : "";
    }

    private static bool HasMetadataAncestor(int table, int boundary, Layout layout)
    {
        while (table >= 0 && table != boundary)
        {
            if (layout.Metadata.ContainsKey(table)) return true;
            table = layout.Tables[table];
        }
        return false;
    }
    private static string? MetadataAncestor(int table, Layout layout)
    {
        while (table >= 0)
        {
            if (layout.Metadata.TryGetValue(table, out string? name)) return name;
            table = layout.Tables[table];
        }
        return null;
    }
    private static bool Compatible(Guard scope, Guard child) => !scope.Branches.Any(b => child.Branches.TryGetValue(b.Key, out int branch) && branch != b.Value);

    public static IReadOnlyList<Relation> References(string file, string text, string symbol, CancellationToken cancellation = default)
    {
        List<Relation> result = [];
        var tokens = Lex(text, cancellation: cancellation);
        var lines = new LineMap(file, text);
        Stack<string> fields = new();
        for (int i = 0; i < tokens.Count; i++)
        {
            if ((i & 4095) == 0) cancellation.ThrowIfCancellationRequested();
            string token = tokens[i].Text;
            if (token is "{" or "(" or "[")
            {
                string field = token == "{" && i >= 2 && tokens[i - 1].Text == "=" ? tokens[i - 2].Text : "";
                if (field == "]" && i >= 4 && tokens[i - 4].Text == "[" && IsString(tokens[i - 3].Text)) field = Unquote(tokens[i - 3].Text);
                // A top-level variable assigned a table is a collection, not metadata.
                if (fields.Count == 0) field = "";
                fields.Push(field);
            }
            else if (token is "}" or ")" or "]") { if (fields.Count > 0) fields.Pop(); }
            bool literal = IsString(token) && Unquote(token) == symbol;
            if (token != symbol && !literal) continue;
            string? kind = null, domain = null;
            if (!literal && i > 0 && tokens[i - 1].Text == "function") kind = "Definition";
            else if (!literal && i + 1 < tokens.Count && tokens[i + 1].Text == "(" && symbol.Length > 1) kind = "Call";
            else if (literal && fields.Contains("progressionScopes")) kind = "Binds";
            else if (i >= 2 && tokens[i - 1].Text == "=")
            {
                string field = tokens[i - 2].Text;
                if (field == "]" && i >= 4 && IsString(tokens[i - 3].Text)) field = Unquote(tokens[i - 3].Text);
                if (literal && field == "progressionKey") kind = "Binds";
                else if (!literal && field == "phase") kind = "Legacy phase";
                else if (!literal && field.EndsWith("ID", StringComparison.Ordinal))
                {
                    domain = field;
                    string? metadata = fields.FirstOrDefault(f => f.Length > 0 && f is not "groups" and not "g");
                    kind = metadata == null ? "Record occurrence" : metadata + " reference";
                }
                else if (!literal && IsIdentifier(token)) kind = "Constant reference";
            }
            else if (!literal && i >= 2 && tokens[i - 1].Text == "(" && tokens[i - 2].Text == "applyclassicphase") kind = "Legacy phase";
            else if (!literal && i + 1 < tokens.Count && tokens[i + 1].Text == "=" && (i + 2 >= tokens.Count || tokens[i + 2].Text != "=")) kind = "Definition";
            else if (!literal && i >= 2 && tokens[i - 1].Text == "(" && RecordKinds.TryConstructor(tokens[i - 2].Text, out domain, out string constructorKind))
            {
                string? metadata = fields.FirstOrDefault(field => field.Length > 0 && field is not "groups" and not "g");
                kind = metadata == null ? constructorKind : metadata + " reference";
            }
            else if (!literal && i >= 2 && tokens[i - 1].Text == "," && IsString(tokens[i - 2].Text) && RecordKinds.TryConstructor(Unquote(tokens[i - 2].Text), out domain, out _))
            {
                string? owner = fields.FirstOrDefault(IsReferenceField);
                if (owner != null) kind = owner + " reference";
            }
            if (kind == "Record occurrence" && i >= 2 && (tokens[i - 2].Text == "itemID" || (i >= 3 && IsString(tokens[i - 3].Text) && Unquote(tokens[i - 3].Text) == "itemID"))) kind = "Item occurrence";
            if (kind != null) result.Add(new(kind, symbol, lines.Location(tokens[i].Start, tokens[i].End - tokens[i].Start), Domain: domain));
        }
        return result;
    }

    private static bool IsReferenceField(string field) => field is "provider" or "providers" or "cost" or "costs";
    private static bool IsIdentifier(string text) => text.Length > 0 && (char.IsLetter(text[0]) || text[0] == '_') && text.All(c => char.IsLetterOrDigit(c) || c == '_') && !Keywords.Contains(text);
    private static bool IsString(string token) => token.Length >= 2 && (token[0] is '\'' or '"' || LongOpen(token, 0, out _, out _));
    private static string Unquote(string token)
    {
        if (LongOpen(token, 0, out int header, out string ending)) return token[header..^ending.Length].TrimStart('\r', '\n');
        var result = new StringBuilder();
        for (int i = 1; i < token.Length - 1; i++)
        {
            if (token[i] != '\\' || i + 1 >= token.Length - 1) { result.Append(token[i]); continue; }
            char next = token[++i];
            result.Append(next switch { 'n' => '\n', 'r' => '\r', 't' => '\t', _ => next });
        }
        return result.ToString();
    }

    internal static List<Token> Lex(string text, List<(int Start, int End)>? lineComments = null, CancellationToken cancellation = default)
    {
        List<Token> result = [];
        int i = 0;
        while (i < text.Length)
        {
            if ((result.Count & 4095) == 0) cancellation.ThrowIfCancellationRequested();
            if (char.IsWhiteSpace(text[i])) { i++; continue; }
            if (i + 1 < text.Length && text[i] == '-' && text[i + 1] == '-')
            {
                int commentStart = i; i += 2;
                if (LongOpen(text, i, out int header, out string end))
                {
                    int found = text.IndexOf(end, i + header, StringComparison.Ordinal);
                    if (found < 0) throw new FormatException("Unterminated long comment");
                    i = found + end.Length;
                }
                else
                {
                    int lineEnd = text.IndexOf('\n', i); i = lineEnd < 0 ? text.Length : lineEnd;
                    lineComments?.Add((commentStart, i));
                }
                continue;
            }
            int start = i;
            if (LongOpen(text, i, out int width, out string ending))
            {
                int found = text.IndexOf(ending, i + width, StringComparison.Ordinal);
                if (found < 0) throw new FormatException("Unterminated long string");
                i = found + ending.Length;
            }
            else if (text[i] is '\'' or '"')
            {
                char quote = text[i++]; bool done = false;
                while (i < text.Length)
                {
                    if (text[i] == '\\') { i = Math.Min(text.Length, i + 2); continue; }
                    if (text[i++] == quote) { done = true; break; }
                }
                if (!done) throw new FormatException("Unterminated string");
            }
            else if (char.IsLetterOrDigit(text[i]) || text[i] == '_')
            { i++; while (i < text.Length && (char.IsLetterOrDigit(text[i]) || text[i] == '_')) i++; }
            else i++;
            result.Add(new(text[start..i], start, i));
        }
        return result;
    }

    private static bool LongOpen(string text, int at, out int width, out string ending)
    {
        width = 0; ending = "";
        if (at >= text.Length || text[at] != '[') return false;
        int i = at + 1; while (i < text.Length && text[i] == '=') i++;
        if (i >= text.Length || text[i] != '[') return false;
        width = i - at + 1; ending = "]" + new string('=', i - at - 1) + "]";
        return true;
    }

    private static Dictionary<int, Guard> Conditions(string text, List<(int Start, int End)> comments)
    {
        Dictionary<int, Guard> result = [];
        List<(int Id, int Branch, string Text)> active = [];
        var map = new LineMap("", text);
        var commentLines = comments.Select(c => map.Line(c.Start)).ToHashSet();
        int lineNumber = 0, nextId = 0;
        foreach (string line in text.Split('\n'))
        {
            lineNumber++;
            var match = Regex.Match(line, @"^\s*--\s*#(if|elseif|else|endif)\b\s*(.*)$", RegexOptions.IgnoreCase);
            if (match.Success && commentLines.Contains(lineNumber))
            {
                string kind = match.Groups[1].Value.ToLowerInvariant();
                string expression = match.Groups[2].Value.Trim();
                if (kind == "if") active.Add((++nextId, 0, "if " + expression));
                else if (kind == "endif" && active.Count > 0) active.RemoveAt(active.Count - 1);
                else if (active.Count > 0)
                {
                    var previous = active[^1];
                    active[^1] = (previous.Id, previous.Branch + 1, previous.Text + " / " + kind + (expression.Length > 0 ? " " + expression : ""));
                }
            }
            if (active.Count > 0) result[lineNumber] = new(string.Join(" / ", active.Select(a => a.Text)), active.ToDictionary(a => a.Id, a => a.Branch));
        }
        return result;
    }
}

internal sealed class LineMap
{
    private readonly string file;
    private readonly List<int> starts = [0];
    public LineMap(string file, string text)
    {
        this.file = file;
        for (int i = 0; i < text.Length; i++) if (text[i] == '\n') starts.Add(i + 1);
    }
    public int Line(int offset) { int i = starts.BinarySearch(offset); return i >= 0 ? i + 1 : ~i; }
    public SourceLocation Location(int offset, int length, string? pointer = null)
    {
        int line = Line(offset);
        return new(file, line, offset - starts[line - 1] + 1, offset, length, pointer);
    }
}
