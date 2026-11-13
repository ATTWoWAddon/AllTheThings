using System.Text.Json;

namespace PhaseExplorer.Core;

public record ScheduleResult(string Flavor, string State, string Description, IReadOnlyList<string> AliasPath, string? Diagnostic);

public static class Schedule
{
    public static ScheduleResult Resolve(string json, string key, string flavor, string? milestone = null)
    {
        try
        {
            using var doc = JsonDocument.Parse(json); var root = doc.RootElement;
            if (flavor == "retail") return new(flavor, "ordinary", "Retail does not use this schedule", [], null);
            Dictionary<string, JsonElement> rules = [];
            foreach (var section in new[] { "rules", "fullSourceRules" })
                if (root.TryGetProperty(section, out var groups) && groups.ValueKind == JsonValueKind.Object)
                    foreach (var group in groups.EnumerateObject())
                        if (group.Value.ValueKind == JsonValueKind.Object)
                            foreach (var rule in group.Value.EnumerateObject())
                                if (!rule.Name.StartsWith('$'))
                                    if (!rules.TryAdd(rule.Name, rule.Value)) return new(flavor, "error", "", [], "Duplicate rule: " + rule.Name);
            List<string> aliases = []; HashSet<string> visited = [];
            JsonElement value;
            while (true)
            {
                if (!visited.Add(key)) return new(flavor, "error", "", aliases, "Cyclic alias: " + key);
                if (!rules.TryGetValue(key, out value)) return new(flavor, "missing", "", aliases, "Missing rule: " + key);
                if (value.ValueKind == JsonValueKind.Object && !value.TryGetProperty("sameAs", out _) && !value.TryGetProperty("windows", out _))
                    if (!value.TryGetProperty(flavor, out var flavored) && !value.TryGetProperty("default", out flavored))
                        return new(flavor, "missing", "No rule for this flavor", aliases, null);
                    else value = flavored;
                if (value.ValueKind == JsonValueKind.Object && value.TryGetProperty("sameAs", out var alias))
                { key = alias.GetString() ?? ""; aliases.Add(key); continue; }
                break;
            }
            if (value.ValueKind == JsonValueKind.String)
            {
                string v = value.GetString() ?? "";
                if (v is "unknown" or "disabled") return new(flavor, v, v, aliases, null);
                value = JsonSerializer.SerializeToElement(new { windows = new[] { new { from = v } } });
            }
            if (value.ValueKind != JsonValueKind.Object || !value.TryGetProperty("windows", out var windows) || windows.ValueKind != JsonValueKind.Array)
                return new(flavor, "error", "", aliases, "Invalid rule");
            var order = Calendar(root, flavor); List<string> descriptions = []; bool active = false; int first = int.MaxValue; int previousEnd = -1;
            int viewed = -1;
            if (milestone != null && !order.TryGetValue(milestone, out viewed)) return new(flavor, "error", "", aliases, "Unknown milestone: " + milestone);
            foreach (var window in windows.EnumerateArray())
            {
                string from = window.GetProperty("from").GetString() ?? "";
                string? until = window.TryGetProperty("until", out var end) ? end.GetString() : null;
                if (!order.TryGetValue(from, out int start) || (until != null && !order.ContainsKey(until))) return new(flavor, "error", "", aliases, "Unknown window boundary");
                int finish = until == null ? int.MaxValue : order[until];
                if (start >= finish || start < previousEnd) return new(flavor, "error", "", aliases, "Invalid or overlapping windows");
                previousEnd = finish; first = Math.Min(first, start);
                descriptions.Add(until == null ? $"from {from}" : $"{from} → before {until}");
                if (milestone != null && viewed >= start && viewed < finish) active = true;
            }
            if (descriptions.Count == 0) return new(flavor, "error", "", aliases, "Empty windows");
            string state = milestone == null ? "scheduled" : active ? "active" : viewed < first ? "future" : "removed";
            return new(flavor, state, string.Join("; ", descriptions), aliases, null);
        }
        catch (Exception ex) when (ex is JsonException or InvalidOperationException or KeyNotFoundException or ArgumentException)
        { return new(flavor, "error", "", [], ex.Message); }
    }
    public static IReadOnlyList<string> Milestones(string json, string flavor)
    {
        using var doc = JsonDocument.Parse(json); return Calendar(doc.RootElement, flavor).OrderBy(x => x.Value).Select(x => x.Key).ToList();
    }
    private static Dictionary<string, int> Calendar(JsonElement root, string flavor)
    {
        var calendars = root.GetProperty("calendars"); HashSet<string> visited = [];
        JsonElement calendar;
        while (true)
        {
            if (!visited.Add(flavor)) throw new InvalidOperationException("Cyclic calendar alias");
            calendar = calendars.GetProperty(flavor);
            if (calendar.ValueKind == JsonValueKind.Object) { flavor = calendar.GetProperty("sameAs").GetString() ?? ""; continue; }
            break;
        }
        Dictionary<string, int> order = new() { ["start"] = 0 }; int i = 1;
        foreach (var item in calendar.EnumerateArray()) order.Add(item.GetString() ?? "", i++);
        return order;
    }
}
