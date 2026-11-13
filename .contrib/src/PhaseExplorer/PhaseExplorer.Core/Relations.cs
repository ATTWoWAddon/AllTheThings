using System.Text.Json;

namespace PhaseExplorer.Core;

public record Relation(string Kind, string Label, SourceLocation Location, string Condition = "", string? Domain = null);
public record SourceContext(string Stage, SourceLocation Location, string Authority);

public static class Relations
{
    public static IReadOnlyList<SourceContext> Contexts(ProjectIndex index, string source)
    {
        List<SourceContext> result = []; string? directory = Path.GetDirectoryName(source);
        while (directory != null)
        {
            string control = Path.Combine(directory, "migration.json");
            if (index.Files.Any(x => x.RelativePath == control))
            {
                try
                {
                    string text = index.ReadFile(control); using var doc = JsonDocument.Parse(text); string? selected = null;
                    foreach (var cohort in doc.RootElement.GetProperty("cohorts").EnumerateArray())
                    {
                        if (!cohort.TryGetProperty("sources", out var sources)) continue;
                        bool match = sources.EnumerateArray().Any(s =>
                        {
                            string? value = s.GetString();
                            if (value == null) return false;
                            return Path.GetFullPath(Path.Combine(index.Root, directory, value)) == Path.GetFullPath(Path.Combine(index.Root, source));
                        });
                        if (match) { selected = cohort.GetProperty("stage").GetString(); break; }
                    }
                    selected ??= doc.RootElement.TryGetProperty("defaultStage", out var defaultStage) ? defaultStage.GetString() : null;
                    if (selected != null)
                    {
                        int at = Math.Max(0, text.IndexOf(JsonSerializer.Serialize(selected), StringComparison.Ordinal));
                        string authority = selected switch { "P1" or "P2.1" => "legacy", "P2.2" => "legacy (shadow comparison)", "P3" => "policy (legacy golden comparison)", "P4" => "policy", _ => "unspecified" };
                        result.Add(new(selected, SourceTools.Location(control, text, at, selected.Length + 2), authority));
                    }
                    return result;
                }
                catch (Exception ex) when (ex is JsonException or InvalidOperationException or KeyNotFoundException or IOException or ArgumentException) { return result; }
            }
            if (directory.Length == 0) break;
            directory = Path.GetDirectoryName(directory) ?? "";
        }
        using var reader = new StreamReader(index.FullPath(source)); string? first = reader.ReadLine();
        if (first != null && System.Text.RegularExpressions.Regex.IsMatch(first, @"^--\s*P1\b"))
            result.Add(new("P1", new(source, 1, 1, 0, first.Length), "legacy (source header)"));
        return result;
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
