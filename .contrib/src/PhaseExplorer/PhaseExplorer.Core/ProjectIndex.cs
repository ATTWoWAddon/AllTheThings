using System.Collections.Concurrent;
using System.Text.Json;

namespace PhaseExplorer.Core;

/// <summary>A source occurrence span with one-based line and column and an optional JSON pointer.</summary>
/// <param name="File">Project-relative source path.</param>
/// <param name="Line">One-based source line.</param>
/// <param name="Column">One-based UTF-16 character column.</param>
/// <param name="Offset">Zero-based UTF-16 character offset.</param>
/// <param name="Length">Selection length in UTF-16 characters.</param>
/// <param name="Pointer">Escaped JSON pointer, or null for a lexical Lua location.</param>
public record SourceLocation(string File, int Line, int Column, int Offset, int Length, string? Pointer = null)
{
    /// <summary>Format the file and one-based line and column for navigation.</summary>
    /// <returns>File, one-based line and column separated by colons.</returns>
    public override string ToString() => $"{File}:{Line}:{Column}";
}

/// <summary>An indexed relative path and its file size.</summary>
/// <param name="RelativePath">Project-relative indexed path.</param>
/// <param name="Size">File length in bytes at discovery time.</param>
public record FileEntry(string RelativePath, long Size);
/// <summary>Display text and location for one search result.</summary>
/// <param name="Text">Display snippet or matching relative path.</param>
/// <param name="Location">Exact result location; path-only hits have an empty span.</param>
public record SearchHit(string Text, SourceLocation Location);
/// <summary>A phase key at its source location with its guard and authored or inherited origin.</summary>
/// <param name="Key">Phase key or legacy-prefixed identifier.</param>
/// <param name="Location">Location of the key declaration, including inherited bindings.</param>
/// <param name="Condition">Text of the declaration’s conditional directive guard.</param>
/// <param name="Authored">True for a key owned by this occurrence; false for inherited keys.</param>
public record Binding(string Key, SourceLocation Location, string Condition, bool Authored);
/// <summary>One source occurrence, its span, bindings and optional parent occurrence identity.</summary>
/// <param name="Id">Occurrence identity, distinct from a game record ID.</param>
/// <param name="Label">Source label or typed record description.</param>
/// <param name="Location">Start and bounded selection span of this occurrence.</param>
/// <param name="EndOffset">Exclusive end of the complete occurrence in source characters.</param>
/// <param name="Condition">Lexical conditional branch path; it is not evaluated as gameplay eligibility.</param>
/// <param name="Bindings">Own and compatible inherited phase keys.</param>
/// <param name="ParentId">Enclosing occurrence identity, or null for a root.</param>
public record SourceNode(string Id, string Label, SourceLocation Location, int EndOffset, string Condition, IReadOnlyList<Binding> Bindings, string? ParentId);
/// <summary>A located policy value and its source format and optional alias.</summary>
/// <param name="Key">Requested policy key.</param>
/// <param name="File">Indexed file supplying this independent context.</param>
/// <param name="Location">Declaration location used for navigation.</param>
/// <param name="Value">Raw JSON value of the matching policy.</param>
/// <param name="Alias">Direct sameAs target when available, or null.</param>
/// <param name="Format">schedule, profile or compiled; selects the normalization path.</param>
public record PolicyCandidate(string Key, string File, SourceLocation Location, string Value, string? Alias, string Format = "schedule");
/// <summary>Parsed source occurrences and nonfatal diagnostics.</summary>
/// <param name="Nodes">Parsed source occurrences in source order.</param>
/// <param name="Diagnostics">Nonfatal parse diagnostics shown with the file.</param>
public record Detail(IReadOnlyList<SourceNode> Nodes, IReadOnlyList<string> Diagnostics);

/// <summary>A read-only source index. Locations and node identities refer to occurrences, not game IDs.</summary>
public sealed class ProjectIndex
{
    private static readonly HashSet<string> Excluded = new(StringComparer.OrdinalIgnoreCase)
        { ".git", ".worktrees", ".codegraph", "node_modules", "bin", "obj", "__pycache__", ".vs", ".idea" };
    private readonly ConcurrentDictionary<string, (long Length, DateTime Modified, Detail Detail)> details = new();
    private readonly ConcurrentDictionary<string, byte> operationDiagnostics = new();
    private readonly HashSet<string> indexedPaths;
    private readonly Lazy<IReadOnlyList<(string File, string Format)>> schedules;
    /// <summary>Initialize an immutable file list and defer discovery of schedule documents until needed.</summary>
    /// <param name="root">Absolute source directory owned by the index.</param>
    /// <param name="files">Discovered project-relative Lua and JSON file entries.</param>
    /// <param name="diagnostics">Directory scan failures retained alongside accessible files.</param>
    private ProjectIndex(string root, List<FileEntry> files, List<string> diagnostics)
    {
        (Root, Files, Diagnostics) = (root, files, diagnostics);
        indexedPaths = files.Select(f => f.RelativePath).ToHashSet(StringComparer.Ordinal);
        schedules = new Lazy<IReadOnlyList<(string File, string Format)>>(() =>
        {
            List<(string File, string Format)> found = [];
            foreach (var file in Files.Where(f => f.RelativePath.EndsWith(".json", StringComparison.OrdinalIgnoreCase)))
            {
                try
                {
                    using var doc = JsonDocument.Parse(File.ReadAllText(Path.Combine(Root, file.RelativePath)));
                    if (doc.RootElement.ValueKind != JsonValueKind.Object) continue;
                    if (doc.RootElement.TryGetProperty("calendars", out _) && doc.RootElement.TryGetProperty("rules", out _)) found.Add((file.RelativePath, "schedule"));
                    else if (doc.RootElement.TryGetProperty("milestones", out _) && doc.RootElement.TryGetProperty("content", out _)) found.Add((file.RelativePath, "profile"));
                }
                catch (Exception ex) when (ex is JsonException or IOException or UnauthorizedAccessException) { Report(file.RelativePath, ex); }
            }
            return found;
        });
    }
    public string Root { get; }
    public IReadOnlyList<FileEntry> Files { get; }
    public IReadOnlyList<string> Diagnostics { get; }
    public IReadOnlyList<string> OperationDiagnostics => operationDiagnostics.Keys.Order().ToList();
    /// <summary>Record a per-file operation diagnostic without duplicating it.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="error">Per-file operation failure whose message is retained once.</param>
    private void Report(string file, Exception error) => operationDiagnostics.TryAdd($"{file}: {error.Message}", 0);

    /// <summary>Enumerate Lua and JSON files without following reparse points, reporting progress and accessible-directory errors.</summary>
    /// <param name="root">Existing directory to scan recursively while skipping excluded folders and reparse points.</param>
    /// <param name="progress">Optional receiver of discovered file counts, reported every 100 files and at completion.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>A task yielding the discovered files and nonfatal directory diagnostics.</returns>
    public static Task<ProjectIndex> LoadAsync(string root, IProgress<int>? progress = null, CancellationToken cancellation = default) => Task.Run(() =>
    {
        root = Path.GetFullPath(root);
        if (!Directory.Exists(root)) throw new DirectoryNotFoundException(root);
        List<FileEntry> files = []; List<string> errors = []; Stack<string> pending = new(); pending.Push(root);
        while (pending.TryPop(out var directory))
        {
            cancellation.ThrowIfCancellationRequested();
            try
            {
                foreach (var entry in Directory.EnumerateFileSystemEntries(directory))
                {
                    cancellation.ThrowIfCancellationRequested();
                    var attributes = File.GetAttributes(entry);
                    if ((attributes & FileAttributes.ReparsePoint) != 0) continue;
                    if ((attributes & FileAttributes.Directory) != 0)
                    {
                        if (!Excluded.Contains(Path.GetFileName(entry))) pending.Push(entry);
                    }
                    else if (Path.GetExtension(entry).Equals(".lua", StringComparison.OrdinalIgnoreCase) || Path.GetExtension(entry).Equals(".json", StringComparison.OrdinalIgnoreCase))
                    {
                        files.Add(new(Path.GetRelativePath(root, entry), new FileInfo(entry).Length));
                        if (files.Count % 100 == 0) progress?.Report(files.Count);
                    }
                }
            }
            catch (Exception ex) when (ex is IOException or UnauthorizedAccessException) { errors.Add($"{Path.GetRelativePath(root, directory)}: {ex.Message}"); }
        }
        files.Sort((a, b) => StringComparer.OrdinalIgnoreCase.Compare(a.RelativePath, b.RelativePath));
        progress?.Report(files.Count);
        return new ProjectIndex(root, files, errors);
    }, cancellation);

    /// <summary>Resolve an indexed relative file path, rejecting paths outside the index.</summary>
    /// <param name="relative">Exact project-relative path already present in the selected index.</param>
    /// <returns>Absolute path of a file belonging to this index.</returns>
    public string FullPath(string relative)
    {
        // Only indexed files can be read through this index.
        if (!indexedPaths.Contains(relative)) throw new ArgumentException("File is not in the selected index.");
        return Path.Combine(Root, relative);
    }
    /// <summary>Read text from an indexed file.</summary>
    /// <param name="relative">Exact project-relative path already present in the selected index.</param>
    /// <returns>Complete text of the indexed file.</returns>
    public string ReadFile(string relative) => File.ReadAllText(FullPath(relative));

    /// <summary>Search indexed paths and file lines case-insensitively up to the result limit.</summary>
    /// <param name="query">Case-insensitive path or line substring; blank queries return no hits.</param>
    /// <param name="limit">Maximum number of search hits to collect before stopping the scan.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>A task yielding bounded path and line matches in index order.</returns>
    public Task<IReadOnlyList<SearchHit>> SearchAsync(string query, int limit = 500, CancellationToken cancellation = default) => Task.Run<IReadOnlyList<SearchHit>>(() =>
    {
        if (string.IsNullOrWhiteSpace(query)) return [];
        List<SearchHit> results = [];
        foreach (var file in Files)
        {
            cancellation.ThrowIfCancellationRequested();
            if (file.RelativePath.Contains(query, StringComparison.OrdinalIgnoreCase))
                results.Add(new(file.RelativePath, new(file.RelativePath, 1, 1, 0, 0)));
            try
            {
                using var reader = new StreamReader(Path.Combine(Root, file.RelativePath));
                string? line; int number = 0;
                while ((line = reader.ReadLine()) != null)
                {
                    cancellation.ThrowIfCancellationRequested(); number++;
                    int column = line.IndexOf(query, StringComparison.OrdinalIgnoreCase);
                    if (column >= 0) results.Add(new(Snippet(line, column, query.Length), new(file.RelativePath, number, column + 1, 0, query.Length)));
                    if (results.Count >= limit) return results;
                }
            }
            catch (Exception ex) when (ex is IOException or UnauthorizedAccessException) { Report(file.RelativePath, ex); }
            if (results.Count >= limit) break;
        }
        return results;
    }, cancellation);

    /// <summary>Bound a search result around its matching text for display.</summary>
    /// <param name="line">Source line containing the matching substring.</param>
    /// <param name="column">Zero-based matching character index in that line.</param>
    /// <param name="length">Matched substring length used to bound the displayed excerpt.</param>
    /// <returns>A trimmed excerpt with ellipses where surrounding text was omitted.</returns>
    private static string Snippet(string line, int column, int length)
    {
        int start = Math.Max(0, column - 70);
        int end = Math.Min(line.Length, column + Math.Min(length, 80) + 100);
        return (start > 0 ? "…" : "") + line[start..end].Trim() + (end < line.Length ? "…" : "");
    }

    /// <summary>Find Lua and JSON occurrences of a symbol, optionally restricted to a record domain.</summary>
    /// <param name="symbol">Exact numeric ID, phase key or identifier to find.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <param name="domain">Optional ID field namespace, such as itemID, preventing numeric ID collisions.</param>
    /// <returns>A task yielding classified references, optionally filtered to one ID namespace.</returns>
    public Task<IReadOnlyList<Relation>> FindTypedReferencesAsync(string symbol, CancellationToken cancellation = default, string? domain = null) => Task.Run<IReadOnlyList<Relation>>(() =>
    {
        List<Relation> result = [];
        foreach (var file in Files)
        {
            cancellation.ThrowIfCancellationRequested();
            try
            {
                string text = File.ReadAllText(Path.Combine(Root, file.RelativePath));
                if (!text.Contains(symbol, StringComparison.Ordinal)) continue;
                if (file.RelativePath.EndsWith(".lua", StringComparison.OrdinalIgnoreCase)) result.AddRange(LuaSource.References(file.RelativePath, text, symbol, cancellation));
                else result.AddRange(JsonSource.References(file.RelativePath, text, symbol, cancellation));
            }
            catch (Exception ex) when (ex is IOException or UnauthorizedAccessException or FormatException or JsonException) { Report(file.RelativePath, ex); }
        }
        return domain == null ? result : result.Where(r => r.Domain == domain).ToList();
    }, cancellation);

    /// <summary>Find JSON references that resolve to the selected source file.</summary>
    /// <param name="target">Indexed relative path whose JSON consumers are requested.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>A task yielding supported JSON declarations resolving to the selected file.</returns>
    public Task<IReadOnlyList<Relation>> FindSourceReferencesAsync(string target, CancellationToken cancellation = default) => Task.Run<IReadOnlyList<Relation>>(() =>
    {
        List<Relation> references = [];
        string basename = Path.GetFileName(target);
        foreach (var file in Files.Where(f => f.RelativePath.EndsWith(".json", StringComparison.OrdinalIgnoreCase)))
        {
            cancellation.ThrowIfCancellationRequested();
            try
            {
                string text = ReadFile(file.RelativePath);
                if (text.Contains(basename, StringComparison.OrdinalIgnoreCase)) references.AddRange(JsonSource.SourceReferences(file.RelativePath, text, target, Root, cancellation));
            }
            catch (Exception error) when (error is IOException or UnauthorizedAccessException or JsonException) { Report(file.RelativePath, error); }
        }
        return references;
    }, cancellation);

    /// <summary>Find Lua assignments to the symbol while excluding member assignments and equality comparisons.</summary>
    /// <param name="symbol">Exact numeric ID, phase key or identifier to find.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>A task yielding lexical assignment locations, excluding member assignments and equality.</returns>
    public Task<IReadOnlyList<SearchHit>> FindDefinitionsAsync(string symbol, CancellationToken cancellation = default) => Task.Run<IReadOnlyList<SearchHit>>(() =>
    {
        List<SearchHit> hits = [];
        foreach (var file in Files.Where(f => f.RelativePath.EndsWith(".lua", StringComparison.OrdinalIgnoreCase)))
        {
            cancellation.ThrowIfCancellationRequested();
            try
            {
                string text = File.ReadAllText(Path.Combine(Root, file.RelativePath));
                if (!text.Contains(symbol, StringComparison.Ordinal)) continue;
                var tokens = LuaSource.Lex(text, cancellation: cancellation); var lines = new LineMap(file.RelativePath, text);
                for (int i = 0; i + 1 < tokens.Count; i++)
                {
                    if (tokens[i].Text != symbol || tokens[i + 1].Text != "=" || (i + 2 < tokens.Count && tokens[i + 2].Text == "=") || (i > 0 && tokens[i - 1].Text is "." or ":")) continue;
                    int lineStart = text.LastIndexOf('\n', Math.Max(0, tokens[i].Start - 1)); lineStart = lineStart < 0 ? 0 : lineStart + 1;
                    int lineEnd = text.IndexOf('\n', tokens[i].Start); if (lineEnd < 0) lineEnd = text.Length;
                    hits.Add(new(text[lineStart..lineEnd].Trim(), lines.Location(tokens[i].Start, symbol.Length)));
                }
            }
            catch (Exception ex) when (ex is IOException or UnauthorizedAccessException or FormatException or JsonException) { Report(file.RelativePath, ex); }
        }
        return hits;
    }, cancellation);

    /// <summary>Find case-insensitive line matches within one indexed file.</summary>
    /// <param name="relative">Exact project-relative path already present in the selected index.</param>
    /// <param name="term">Case-insensitive substring to find within the specified file.</param>
    /// <returns>One hit for the first match on each matching line.</returns>
    public IReadOnlyList<SearchHit> FindInFile(string relative, string term)
    {
        List<SearchHit> hits = []; using var reader = new StreamReader(FullPath(relative)); string? line; int number = 0;
        while ((line = reader.ReadLine()) != null)
        {
            number++; int column = line.IndexOf(term, StringComparison.OrdinalIgnoreCase);
            if (column >= 0) hits.Add(new(line.Trim(), new(relative, number, column + 1, 0, term.Length)));
        }
        return hits;
    }

    /// <summary>Parse one source file on demand and reuse bounded cached details when its size and timestamp match.</summary>
    /// <param name="relative">Exact project-relative path already present in the selected index.</param>
    /// <param name="cancellation">Token checked during scanning; cancellation propagates to the caller.</param>
    /// <returns>Parsed detail, possibly reused when the cached file length and timestamp match.</returns>
    public Detail GetDetail(string relative, CancellationToken cancellation = default)
    {
        var path = FullPath(relative); var info = new FileInfo(path);
        if (details.TryGetValue(relative, out var cached) && cached.Length == info.Length && cached.Modified == info.LastWriteTimeUtc) return cached.Detail;
        if (details.Values.Sum(d => d.Detail.Nodes.Count) > 100000) details.Clear();
        var text = File.ReadAllText(path);
        var detail = relative.EndsWith(".lua", StringComparison.OrdinalIgnoreCase) ? LuaSource.Parse(relative, text, cancellation) : JsonSource.Parse(relative, text, cancellation);
        if (details.Count >= 4 || details.Values.Sum(d => d.Length) + info.Length > 64 * 1024 * 1024) details.Clear();
        if (detail.Nodes.Count <= 100000) details[relative] = (info.Length, info.LastWriteTimeUtc, detail);
        return detail;
    }

    /// <summary>Find applicable compiled, profile or schedule candidates, ranking shared source directories first.</summary>
    /// <remarks>A compiled module or profile keeps its own context. A missing profile key never borrows timing from another profile; separate schedule candidates remain independently selectable.</remarks>
    /// <param name="key">Authored phase key or qualified compiled policy key.</param>
    /// <param name="sourceFile">Indexed source whose context constrains and ranks policy candidates.</param>
    /// <returns>Separate located context candidates; these are ranked, never merged into one schedule.</returns>
    public IReadOnlyList<PolicyCandidate> PoliciesFor(string key, string sourceFile)
    {
        List<PolicyCandidate> found = [];
        if (sourceFile.EndsWith(".lua", StringComparison.OrdinalIgnoreCase) && key.Contains(':'))
        {
            try
            {
                string source = ReadFile(sourceFile); string normalized = CompiledSchedule.NormalizeLua(source);
                using var doc = JsonDocument.Parse(normalized);
                if (doc.RootElement.GetProperty("rules").GetProperty("compiled").TryGetProperty(key, out var policy))
                {
                    int offset = source.IndexOf(JsonSerializer.Serialize(key), StringComparison.Ordinal);
                    if (offset >= 0) return [new(key, sourceFile, SourceTools.Location(sourceFile, source, offset, key.Length + 2), policy.GetRawText(), null, "compiled")];
                }
            }
            catch (Exception ex) when (ex is FormatException or JsonException or IOException or InvalidOperationException) { }
            return [];
        }
        if (sourceFile.EndsWith(".json", StringComparison.OrdinalIgnoreCase))
        {
            try
            {
                string source = ReadFile(sourceFile); using var doc = JsonDocument.Parse(source);
                if (doc.RootElement.TryGetProperty("content", out var content) && doc.RootElement.TryGetProperty("milestones", out _))
                {
                    if (!content.TryGetProperty(key, out var policy)) return [];
                    string pointer = "/content/" + key.Replace("~", "~0").Replace("/", "~1");
                    var loc = GetDetail(sourceFile).Nodes.First(n => n.Location.Pointer == pointer).Location;
                    return [new(key, sourceFile, loc, policy.GetRawText(), null, "profile")];
                }
            }
            catch (Exception ex) when (ex is JsonException or IOException or InvalidOperationException) { }
        }
        bool ownSchedule = false;
        if (sourceFile.EndsWith(".json", StringComparison.OrdinalIgnoreCase))
        {
            try
            {
                using var document = JsonDocument.Parse(ReadFile(sourceFile));
                ownSchedule = document.RootElement.TryGetProperty("calendars", out _) && document.RootElement.TryGetProperty("rules", out _);
            }
            catch (JsonException error) { Report(sourceFile, error); }
        }
        foreach (var (scheduleFile, format) in schedules.Value.Where(s => !ownSchedule || s.File == sourceFile))
        {
            try
            {
                string text = ReadFile(scheduleFile);
                using var doc = JsonDocument.Parse(text);
                if (format == "profile")
                {
                    if (doc.RootElement.GetProperty("content").TryGetProperty(key, out var profileRule))
                    {
                        string pointer = "/content/" + key.Replace("~", "~0").Replace("/", "~1");
                        var location = GetDetail(scheduleFile).Nodes.First(n => n.Location.Pointer == pointer).Location;
                        found.Add(new(key, scheduleFile, location, profileRule.GetRawText(), null, "profile"));
                    }
                    continue;
                }
                foreach (var section in new[] { "rules", "fullSourceRules" })
                    if (doc.RootElement.TryGetProperty(section, out var groups) && groups.ValueKind == JsonValueKind.Object)
                        foreach (var group in groups.EnumerateObject())
                            if (group.Value.ValueKind == JsonValueKind.Object && group.Value.TryGetProperty(key, out var rule))
                            {
                                string quoted = JsonSerializer.Serialize(key); int at = text.IndexOf(quoted, StringComparison.Ordinal);
                                string pointer = $"/{section}/{group.Name.Replace("~", "~0").Replace("/", "~1")}/{key.Replace("~", "~0").Replace("/", "~1")}";
                                var location = GetDetail(scheduleFile).Nodes.FirstOrDefault(n => n.Location.Pointer == pointer)?.Location ?? SourceTools.Location(scheduleFile, text, Math.Max(0, at), quoted.Length, pointer);
                                string? alias = rule.ValueKind == JsonValueKind.Object && rule.TryGetProperty("sameAs", out var a) ? a.GetString() : null;
                                found.Add(new(key, scheduleFile, location, rule.GetRawText(), alias));
                            }
            }
            catch (Exception ex) when (ex is IOException or UnauthorizedAccessException or JsonException or InvalidOperationException) { Report(scheduleFile, ex); }
        }
        // Keep all candidates visible; rank those sharing the deepest source-set directory first.
        return found.OrderByDescending(p => CommonDirectories(sourceFile, p.File)).ToList();
    }
    /// <summary>Normalize compiled or profile policy data to the schedule shape used by the resolver.</summary>
    /// <param name="candidate">Located policy candidate whose source format determines normalization.</param>
    /// <returns>Resolver-compatible JSON read from the candidate’s own context.</returns>
    public string ScheduleText(PolicyCandidate candidate) => candidate.Format switch
    {
        "compiled" => CompiledSchedule.NormalizeLua(ReadFile(candidate.File)),
        "profile" => CompiledSchedule.NormalizeProfile(ReadFile(candidate.File)),
        _ => ReadFile(candidate.File)
    };
    /// <summary>Count shared path directory components for candidate ranking.</summary>
    /// <param name="a">First relative file path used in directory-prefix ranking.</param>
    /// <param name="b">Second relative file path used in directory-prefix ranking.</param>
    /// <returns>Number of common leading directory components, excluding filenames.</returns>
    private static int CommonDirectories(string a, string b)
    {
        var x = a.Split(Path.DirectorySeparatorChar); var y = b.Split(Path.DirectorySeparatorChar); int i = 0;
        while (i < x.Length - 1 && i < y.Length - 1 && x[i] == y[i]) i++;
        return i;
    }
}

internal static class SourceTools
{
    /// <summary>Map a character offset to a one-based line and column in source text.</summary>
    /// <param name="file">Project-relative source path stored in returned locations.</param>
    /// <param name="text">Source text whose character offsets are retained.</param>
    /// <param name="offset">Zero-based UTF-16 character offset in the source text.</param>
    /// <param name="length">Length of the source selection in UTF-16 characters.</param>
    /// <param name="pointer">Escaped JSON pointer identifying the exact value, or null for Lua.</param>
    /// <returns>A location with one-based line and column and the requested character span.</returns>
    public static SourceLocation Location(string file, string text, int offset, int length, string? pointer = null)
    {
        int line = 1, last = -1;
        for (int i = 0; i < offset; i++) if (text[i] == '\n') { line++; last = i; }
        return new(file, line, offset - last, offset, length, pointer);
    }
}
