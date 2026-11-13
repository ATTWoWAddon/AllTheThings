using System.Text.Json;

namespace PhaseExplorer.Core;

public record Relation(string Kind, string Label, SourceLocation Location, string Condition = "", string? Domain = null);
public record SourceContext(string Stage, SourceLocation Location, string Authority);

public static class Relations
{
    public static IReadOnlyList<SourceContext> Contexts(ProjectIndex index, string source)
    {
        string? directory = Path.GetDirectoryName(source);
        string namedControl = Path.GetFileNameWithoutExtension(source) + ".migration.json";
        while (directory != null)
        {
            var controls = index.Files.Select(f => f.RelativePath).Where(path =>
                Path.GetDirectoryName(path) == directory &&
                (Path.GetFileName(path) == "migration.json" || path.EndsWith(".migration.json", StringComparison.OrdinalIgnoreCase)))
                .OrderByDescending(path => Path.GetFileName(path) == namedControl).ToList();
            List<SourceContext> matches = [], defaults = [];
            foreach (string control in controls)
            {
                try
                {
                    using var document = JsonDocument.Parse(index.ReadFile(control));
                    var root = document.RootElement;
                    if (root.TryGetProperty("cohorts", out var cohorts))
                    {
                        int cohortIndex = 0;
                        foreach (var cohort in cohorts.EnumerateArray())
                        {
                            bool applies = cohort.TryGetProperty("sources", out var sources) && sources.EnumerateArray().Any(value =>
                                value.ValueKind == JsonValueKind.String && SameSource(index, directory, value.GetString()!, source));
                            if (applies)
                            {
                                string? stage = cohort.GetProperty("stage").GetString();
                                if (stage != null) matches.Add(Context(index, control, stage, $"/cohorts/{cohortIndex}/stage"));
                            }
                            cohortIndex++;
                        }
                    }
                    if ((Path.GetFileName(control) == "migration.json" || Path.GetFileName(control) == namedControl) &&
                        root.TryGetProperty("defaultStage", out var defaultStage) && defaultStage.GetString() is string fallback)
                        defaults.Add(Context(index, control, fallback, "/defaultStage"));
                }
                catch (Exception error) when (error is JsonException or InvalidOperationException or KeyNotFoundException or IOException or ArgumentException) { }
            }
            if (matches.Count > 0) return matches;
            if (defaults.Count > 0) return [defaults[0]];
            if (directory.Length == 0) break;
            directory = Path.GetDirectoryName(directory) ?? "";
        }
        using var reader = new StreamReader(index.FullPath(source));
        string? first = reader.ReadLine();
        return first != null && System.Text.RegularExpressions.Regex.IsMatch(first, @"^--\s*P1\b")
            ? [new("P1", new(source, 1, 1, 0, first.Length), "legacy (source header)")] : [];
    }

    private static bool SameSource(ProjectIndex index, string directory, string relative, string source)
    {
        var comparison = OperatingSystem.IsWindows() ? StringComparison.OrdinalIgnoreCase : StringComparison.Ordinal;
        return string.Equals(Path.GetFullPath(Path.Combine(index.Root, directory, relative)),
            Path.GetFullPath(Path.Combine(index.Root, source)), comparison);
    }

    private static SourceContext Context(ProjectIndex index, string control, string stage, string pointer)
    {
        var location = index.GetDetail(control).Nodes.First(n => n.Location.Pointer == pointer).Location;
        string authority = stage switch
        {
            "P1" or "P2.1" => "legacy",
            "P2.2" => "legacy (shadow comparison)",
            "P3" => "policy (legacy golden comparison)",
            "P4" => "policy",
            _ => "unspecified"
        };
        return new(stage, location, authority);
    }

    public static IReadOnlyList<Relation> Selections(ProjectIndex index, string source)
    {
        List<Relation> result = []; string? directory = Path.GetDirectoryName(source);
        if (directory == null) return result;
        string file = Path.Combine(directory, "selection.json");
        if (!index.Files.Any(x => x.RelativePath == file)) return result;
        try
        {
            using var doc = JsonDocument.Parse(index.ReadFile(file)); var nodes = index.GetDetail(file).Nodes;
            foreach (var context in doc.RootElement.EnumerateObject())
            {
                if (context.Value.ValueKind != JsonValueKind.Object) continue;
                foreach (var slot in context.Value.EnumerateObject())
                {
                    string pointer = "/" + context.Name.Replace("~", "~0").Replace("/", "~1") + "/" + slot.Name.Replace("~", "~0").Replace("/", "~1");
                    var location = nodes.FirstOrDefault(n => n.Location.Pointer == pointer)?.Location;
                    if (location == null) continue;
                    string? value = slot.Value.ValueKind == JsonValueKind.Null ? null : slot.Value.GetString();
                    bool matches = value != null && Path.GetFullPath(Path.Combine(index.Root, directory, value)) == Path.GetFullPath(Path.Combine(index.Root, source));
                    string state = value == null ? "absent" : matches ? "selected" : "selects " + value;
                    result.Add(new("Selection", context.Name + ": " + state, location));
                }
            }
        }
        catch (Exception ex) when (ex is JsonException or InvalidOperationException or IOException) { }
        return result;
    }

    public static IReadOnlyList<Relation> Outgoing(ProjectIndex index, SourceNode node)
    {
        List<Relation> result = [];
        if (!node.Location.File.EndsWith(".json", StringComparison.OrdinalIgnoreCase) || node.Location.Pointer == null) return result;
        try
        {
            string text = index.ReadFile(node.Location.File); using var doc = JsonDocument.Parse(text); JsonElement value = doc.RootElement;
            foreach (string segment in node.Location.Pointer.Split('/').Skip(1))
            {
                string part = segment.Replace("~1", "/").Replace("~0", "~");
                value = value.ValueKind == JsonValueKind.Array ? value[int.Parse(part)] : value.GetProperty(part);
            }
            if (value.ValueKind == JsonValueKind.String)
            {
                string literal = value.GetString() ?? ""; string directory = Path.GetDirectoryName(node.Location.File) ?? "";
                string relative = Path.GetRelativePath(index.Root, Path.GetFullPath(Path.Combine(index.Root, directory, literal)));
                if (JsonSource.IsSourcePath(node.Location.File, node.Location.Pointer) && index.Files.Any(f => f.RelativePath == relative)) result.Add(new("SelectsSource", literal, new(relative, 1, 1, 0, 0)));
                if (node.Location.Pointer.EndsWith("/sameAs", StringComparison.Ordinal))
                    foreach (var target in index.PoliciesFor(literal, node.Location.File)) result.Add(new("Alias", literal, target.Location));
            }
        }
        catch (Exception ex) when (ex is JsonException or InvalidOperationException or KeyNotFoundException or FormatException or ArgumentException or IOException) { }
        return result;
    }
}
