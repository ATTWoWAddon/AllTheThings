using System.Text.Json;

namespace PhaseExplorer.Core;

/// <summary>Read the literal policy header of a generated example without executing Lua.</summary>
internal static class CompiledSchedule
{
    /// <summary>Extract literal context, milestones and policies from generated Lua without executing it.</summary>
    /// <param name="text">Generated Lua containing literal context, milestones and policies fields.</param>
    /// <returns>Schedule-shaped JSON retaining the compiled context and policy keys.</returns>
    public static string NormalizeLua(string text)
    {
        var tokens = LuaSource.Lex(text); var values = new Dictionary<string, object?>();
        foreach (string field in new[] { "context", "milestones", "policies" })
        {
            int i = -1;
            for (int n = 1; n + 3 < tokens.Count; n++)
                if (tokens[n - 1].Text == "[" && tokens[n].Text == JsonSerializer.Serialize(field) && tokens[n + 1].Text == "]" && tokens[n + 2].Text == "=") { i = n + 3; break; }
            if (i < 0) throw new FormatException("Missing compiled field: " + field);
            values[field] = Parse(tokens, ref i);
        }
        string context = values["context"] as string ?? throw new FormatException("Invalid compiled context");
        var milestones = values["milestones"] as List<object?> ?? throw new FormatException("Invalid compiled milestones");
        var policies = values["policies"] as Dictionary<string, object?> ?? (values["policies"] is List<object?> empty && empty.Count == 0 ? new() : throw new FormatException("Invalid compiled policies"));
        return Normalize(context, milestones, policies);
    }
    /// <summary>Convert a profile JSON document to the schedule shape used by the explorer.</summary>
    /// <param name="json">Profile JSON containing milestones and content.</param>
    /// <returns>Schedule-shaped JSON using a synthetic profile calendar.</returns>
    public static string NormalizeProfile(string json)
    {
        using var doc = JsonDocument.Parse(json); var root = doc.RootElement;
        var milestones = root.GetProperty("milestones").EnumerateArray().Select(x => (object?)x.GetString()).ToList();
        Dictionary<string, object?> policies = [];
        foreach (var property in root.GetProperty("content").EnumerateObject()) policies[property.Name] = JsonSerializer.Deserialize<object>(property.Value.GetRawText());
        return Normalize("profile", milestones, policies);
    }
    /// <summary>Wrap compiled policy values in a schedule-shaped JSON document.</summary>
    /// <param name="context">Calendar name assigned to this normalized context.</param>
    /// <param name="milestones">Ordered milestone values extracted from the compiled module or profile.</param>
    /// <param name="policies">Policy values, retaining their original qualified or profile keys.</param>
    /// <returns>Schedule-shaped JSON with status policies reduced to their state strings.</returns>
    private static string Normalize(string context, List<object?> milestones, Dictionary<string, object?> policies)
    {
        Dictionary<string, object?> rules = [];
        foreach (var (key, raw) in policies)
        {
            var element = JsonSerializer.SerializeToElement(raw);
            if (element.ValueKind == JsonValueKind.Object && element.TryGetProperty("status", out var status)) rules[key] = status.GetString();
            else rules[key] = raw;
        }
        return JsonSerializer.Serialize(new { calendars = new Dictionary<string, object?> { [context] = milestones }, rules = new Dictionary<string, object?> { ["compiled"] = rules }, fullSourceRules = new { } });
    }
    /// <summary>Parse the supported Lua literal tokens and advance the shared token index.</summary>
    /// <param name="tokens">Lexed source tokens for the supported literal subset.</param>
    /// <param name="i">On entry, the first value token; on return, the token after that value.</param>
    /// <returns>A supported scalar, list or string-keyed object; Lua’s empty table becomes a list.</returns>
    private static object? Parse(List<LuaSource.Token> tokens, ref int i)
    {
        if (i >= tokens.Count) throw new FormatException("Missing literal");
        string t = tokens[i++].Text;
        if (t == "{")
        {
            List<object?> list = []; Dictionary<string, object?> map = [];
            while (i < tokens.Count && tokens[i].Text != "}")
            {
                if (tokens[i].Text == "[")
                {
                    i++; string keyToken = tokens[i++].Text;
                    if (i + 1 >= tokens.Count || tokens[i++].Text != "]" || tokens[i++].Text != "=") throw new FormatException("Unsupported table key");
                    string key = ReadString(keyToken); if (!map.TryAdd(key, Parse(tokens, ref i))) throw new FormatException("Duplicate table key");
                }
                else list.Add(Parse(tokens, ref i));
                if (i < tokens.Count && tokens[i].Text == ",") i++;
                else if (i >= tokens.Count || tokens[i].Text != "}") throw new FormatException("Expected table separator");
            }
            if (i >= tokens.Count) throw new FormatException("Unclosed literal table"); i++;
            if (map.Count > 0 && list.Count > 0) throw new FormatException("Mixed literal table");
            return map.Count > 0 ? map : list;
        }
        if (t.StartsWith('"') || t.StartsWith('\'')) return ReadString(t);
        if (t == "true") return true; if (t == "false") return false; if (t == "nil") return null;
        if (long.TryParse(t, out long number)) return number;
        throw new FormatException("Unsupported literal " + t);
    }
    /// <summary>Decode a supported quoted token or reject it as an invalid string.</summary>
    /// <remarks>Double-quoted tokens use JSON string decoding. Single-quoted tokens only lose their delimiters; this is not a general Lua string evaluator.</remarks>
    /// <param name="token">Double-quoted JSON-compatible string or single-quoted literal token.</param>
    /// <returns>JSON-decoded double-quoted content, or the interior of a single-quoted token.</returns>
    private static string ReadString(string token)
    {
        if (token.StartsWith('"')) return JsonSerializer.Deserialize<string>(token) ?? "";
        if (token.StartsWith('\'') && token.EndsWith('\'')) return token[1..^1];
        throw new FormatException("Expected literal string");
    }
}
