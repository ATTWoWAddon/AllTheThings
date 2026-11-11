// Comparison tooling (P4 example / Retail default): compile one proposed Lua/JSON interface into a Lua database for inspection.
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace ATT
{
    // Opt-in compiler for trusted, declarative examples. Normal Parser builds do
    // not enter this path. The literal reader never executes acquisition Lua.
    internal static partial class PhaseExample
    {
        private static readonly Regex KeyPattern = new Regex("^[a-z0-9][a-z0-9._-]*$", RegexOptions.CultureInvariant);
        private static readonly Dictionary<string, string> Constructors = new Dictionary<string, string> {
            {"inst", "instanceID"}, {"e", "encounterID"}, {"d", "difficultyID"},
            {"n", "npcID"}, {"i", "itemID"}, {"q", "questID"}, {"o", "objectID"}
        };

        private sealed class Slot
        {
            public readonly string Name;
            public Slot(string name) { Name = name; }
        }

        private static Exception Error(string message) => new InvalidDataException(message);

        private static Dictionary<string, object> Obj(object value, string where)
        {
            return value as Dictionary<string, object> ?? throw Error(where + " must be an object");
        }

        // Lua's {} is ambiguous. Only the Lua reader may interpret an empty
        // literal as a constructor's empty object; JSON [] always stays an array.
        private static Dictionary<string, object> LuaObject(object value, string where)
        {
            if (value is List<object> empty && empty.Count == 0)
                return new Dictionary<string, object>();
            return Obj(value, where);
        }

        private static List<object> Arr(object value, string where)
        {
            return value as List<object> ?? throw Error(where + " must be an array");
        }

        private static string Str(object value, string where)
        {
            return value as string ?? throw Error(where + " must be a string");
        }

        private static string Required(Dictionary<string, object> data, string key)
        {
            if (!data.TryGetValue(key, out var value)) throw Error("Missing " + key);
            return Str(value, key);
        }

        private static void ValidKey(string key, string where)
        {
            if (!KeyPattern.IsMatch(key)) throw Error("Invalid " + where + ": " + key);
        }

        private static void Fields(Dictionary<string, object> data, string where, params string[] allowed)
        {
            foreach (string key in data.Keys)
                if (!allowed.Contains(key)) throw Error("Unknown " + where + " field: " + key);
        }

        private static bool AddUnique<T>(Dictionary<string, T> map, string key, T value)
        {
            if (map.ContainsKey(key)) return false;
            map.Add(key, value);
            return true;
        }

        private static Dictionary<string, object> ReadJson(string path)
        {
            // Production MiniJSON accepts duplicate properties and permissive
            // numbers. This isolated reader keeps the example validation strict.
            return Obj(new JsonReader(File.ReadAllText(path)).Read(), path);
        }

        private static string Child(string root, string path)
        {
            if (Path.IsPathRooted(path)) throw Error("Absolute input path: " + path);
            string full = Path.GetFullPath(Path.Combine(root, path));
            string prefix = Path.GetFullPath(root).TrimEnd(Path.DirectorySeparatorChar) + Path.DirectorySeparatorChar;
            if (!full.StartsWith(prefix, StringComparison.Ordinal))
                throw Error("Input path outside example directory: " + path);
            return full;
        }

        public static int Run(string[] args)
        {
            try
            {
                if (args.Length != 5 || !new[] { "A", "B", "C" }.Contains(args[1]))
                    throw Error("Usage: --phase-example A|B|C input-dir context output.lua");
                var output = Compile(args[1], Path.GetFullPath(args[2]), args[3]);
                WriteOutput(args[4], output);
                return 0;
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine("Phase example: " + ex.Message);
                return 1;
            }
        }

        private static Dictionary<string, object> Compile(string mode, string root, string context)
        {
            string[] parts = context.Split(':');
            if (context != "retail")
            {
                if (parts.Length != 2) throw Error("Invalid context");
                foreach (string part in parts) ValidKey(part, "context");
            }

            Dictionary<string, object> selection = null;
            if (mode == "B")
            {
                var selections = ReadJson(Child(root, "selection.json"));
                if (!selections.TryGetValue(context, out var selected))
                    throw Error("Missing selection for " + context);
                selection = Obj(selected, context);
            }
            string sourceName = mode == "B" ? "layout.lua" : "sources.lua";
            var source = new LiteralParser(File.ReadAllText(Child(root, sourceName))).Read();
            var used = new HashSet<string>();
            var usedSlots = new HashSet<string>();
            var groups = TransformList(Arr(source, "source root"), root, selection,
                parts[0], context, new List<object>(), used, usedSlots, new HashSet<string>());
            if (selection != null)
                foreach (string slot in selection.Keys)
                    if (!usedSlots.Contains(slot)) throw Error("Unused group selection: " + slot);

            var milestones = new List<object>();
            var policies = new Dictionary<string, object>();
            if (context != "retail")
            {
                string path = (mode == "C" ? "catalogs/" : "profiles/") + parts[0] + "/" + parts[1] + ".json";
                var catalog = ReadJson(Child(root, path));
                Fields(catalog, "profile", mode == "C" ? new[] { "milestones" } : new[] { "milestones", "content" });
                milestones = Arr(catalog.TryGetValue("milestones", out var value) ? value : null, "milestones");
                var order = MilestoneOrder(milestones);
                var content = ReadPolicies(mode, root, context, catalog);
                foreach (var pair in content)
                {
                    ValidKey(pair.Key, "policy key");
                    if (!used.Contains(pair.Key)) throw Error("Orphan policy: " + pair.Key);
                    ValidatePolicy(pair.Key, Obj(pair.Value, pair.Key), order);
                }
                foreach (string key in used)
                {
                    if (!content.TryGetValue(key, out var policy)) throw Error("Missing policy: " + key);
                    policies.Add(context + ":" + key, policy);
                }
            }
            return new Dictionary<string, object> {
                { "context", context }, { "milestones", milestones },
                { "policies", policies }, { "groups", groups }
            };
        }

        private static Dictionary<string, int> MilestoneOrder(List<object> milestones)
        {
            var order = new Dictionary<string, int>();
            for (int index = 0; index < milestones.Count; index++)
            {
                string key = Str(milestones[index], "milestone");
                ValidKey(key, "milestone");
                if (key == "start") throw Error("start is a boundary, not a milestone");
                if (!AddUnique(order, key, index)) throw Error("Duplicate milestone: " + key);
            }
            if (order.Count == 0) throw Error("Empty milestone catalog");
            return order;
        }

        private static Dictionary<string, object> ReadPolicies(string mode, string root, string context, Dictionary<string, object> catalog)
        {
            if (mode != "C")
                return Obj(catalog.TryGetValue("content", out var content) ? content : null, "content");
            var result = new Dictionary<string, object>();
            foreach (string path in Directory.GetFiles(Child(root, "policies"), "*.json").OrderBy(p => p, StringComparer.Ordinal))
            {
                var rows = ReadJson(path);
                if (!rows.TryGetValue(context, out var row)) continue;
                foreach (var pair in Obj(row, context))
                    if (!AddUnique(result, pair.Key, pair.Value)) throw Error("Duplicate policy: " + pair.Key);
            }
            return result;
        }

        private static void ValidatePolicy(string key, Dictionary<string, object> policy, Dictionary<string, int> order)
        {
            Fields(policy, "policy", "status", "windows");
            string status = policy.TryGetValue("status", out var value) ? Str(value, key + " status") : null;
            if (status != null && status != "disabled" && status != "unknown") throw Error("Invalid status: " + key);
            var windows = Arr(policy.TryGetValue("windows", out var entries) ? entries : null, key + " windows");
            if ((status == null) != (windows.Count > 0)) throw Error("Invalid windows for " + key);
            int previousEnd = -2;
            foreach (object entry in windows)
            {
                var window = Obj(entry, key + " window");
                Fields(window, "window", "from", "until");
                string from = Required(window, "from");
                int opening;
                if (from == "start") opening = -1;
                else if (!order.TryGetValue(from, out opening)) throw Error("Unknown milestone: " + from);
                int closing = int.MaxValue;
                if (window.TryGetValue("until", out var until))
                {
                    if (!order.TryGetValue(Str(until, "until"), out closing)) throw Error("Unknown until milestone");
                }
                if (opening >= closing || opening < previousEnd)
                    throw Error("Unordered or overlapping windows: " + key);
                previousEnd = closing;
            }
        }

        private static List<object> TransformList(List<object> nodes, string root, Dictionary<string, object> selection,
            string flavor, string context, List<object> inherited, HashSet<string> used, HashSet<string> usedSlots, HashSet<string> stack)
        {
            var result = new List<object>();
            foreach (object item in nodes)
            {
                if (item is Slot slot)
                {
                    usedSlots.Add(slot.Name);
                    if (selection == null || !selection.TryGetValue(slot.Name, out var file))
                        throw Error("Missing group selection: " + slot.Name);
                    if (file == null) continue;
                    if (!stack.Add(slot.Name)) throw Error("Recursive group: " + slot.Name);
                    string text = File.ReadAllText(Child(root, Str(file, "fragment")));
                    var fragment = Obj(new LiteralParser(text).Read(), "fragment");
                    Fields(fragment, "fragment", "progressionKey", "groups");
                    var scopes = Scopes(fragment, context, inherited, used);
                    var children = Arr(fragment.TryGetValue("groups", out var groups) ? groups : null, "fragment groups");
                    result.AddRange(TransformList(children, root, selection, flavor, context, scopes, used, usedSlots, stack));
                    stack.Remove(slot.Name);
                    continue;
                }
                var node = Obj(item, "node");
                if (node.TryGetValue("flavors", out var applicability))
                {
                    var flavors = Arr(applicability, "flavors").Select(value => Str(value, "flavor")).ToList();
                    if (flavors.Count == 0 || flavors.Distinct().Count() != flavors.Count) throw Error("Invalid flavors");
                    foreach (string name in flavors) ValidKey(name, "flavor");
                    if (!flavors.Contains(flavor)) continue;
                }
                var scopes2 = Scopes(node, context, inherited, used);
                // A pure scope is an authoring-only ancestor, not an output node.
                // Any additional field makes it an ordinary, visible record.
                if (node.Count == 2 && node.ContainsKey("progressionKey") &&
                    (node.ContainsKey("groups") || node.ContainsKey("g")))
                {
                    object children = node.TryGetValue("groups", out var groups) ? groups : node["g"];
                    result.AddRange(TransformList(Arr(children, "groups"), root, selection, flavor, context,
                        scopes2, used, usedSlots, stack));
                    continue;
                }
                var copy = new Dictionary<string, object>();
                foreach (var pair in node)
                {
                    if (pair.Key == "progressionKey" || pair.Key == "flavors") continue;
                    if (pair.Key == "progressionScopes") throw Error("Authored progressionScopes is forbidden");
                    if (pair.Key == "groups" || pair.Key == "g")
                        copy.Add("groups", TransformList(Arr(pair.Value, "groups"), root, selection, flavor, context, scopes2, used, usedSlots, stack));
                    else
                        copy.Add(pair.Key, pair.Value);
                }
                if (scopes2.Count > 0) copy.Add("progressionScopes", scopes2);
                result.Add(copy);
            }
            return result;
        }

        private static List<object> Scopes(Dictionary<string, object> node, string context, List<object> inherited, HashSet<string> used)
        {
            var result = new List<object>(inherited);
            if (node.TryGetValue("progressionKey", out var value))
            {
                string key = Str(value, "progressionKey");
                ValidKey(key, "progressionKey");
                if (context != "retail")
                {
                    used.Add(key);
                    string qualified = context + ":" + key;
                    if (!result.Contains(qualified)) result.Add(qualified);
                }
            }
            return result;
        }

        private static void WriteOutput(string path, Dictionary<string, object> output)
        {
            string target = Path.GetFullPath(path);
            string temporary = target + "." + Guid.NewGuid().ToString("N") + ".tmp";
            try
            {
                string header = GeneratedHeader((string)output["context"]);
                File.WriteAllText(temporary, header + "\nreturn " + Lua(output) + "\n", new UTF8Encoding(false));
                if (File.Exists(target)) File.Replace(temporary, target, null);
                else File.Move(temporary, target);
            }
            finally
            {
                if (File.Exists(temporary)) File.Delete(temporary);
            }
        }

        private static string GeneratedHeader(string context)
        {
            string label = "P4 interface example";
            if (context == "retail") label = "ordinary Retail default; outside P1-P4";
            else if (context == "sod:replay" || context == "progression:replay")
                label = "P4 synthetic comparison fixture";
            return "-- Generated by Parser --phase-example (" + label +
                "). Edit the selected source inputs, then regenerate.";
        }

        private static string Lua(object value, int depth = 0)
        {
            if (value == null) return "nil";
            if (value is string text)
            {
                var result = new StringBuilder("\"");
                foreach (char character in text)
                {
                    if (character == '\\' || character == '"') result.Append('\\').Append(character);
                    else if (character < 32 || character == 127)
                        result.Append('\\').Append(((int)character).ToString("D3", CultureInfo.InvariantCulture));
                    else result.Append(character);
                }
                return result.Append('"').ToString();
            }
            if (value is bool boolean) return boolean ? "true" : "false";
            if (value is double number) return number.ToString("R", CultureInfo.InvariantCulture);
            string indent = new string(' ', depth * 4);
            string childIndent = indent + "    ";
            if (value is List<object> list)
            {
                if (list.Count == 0) return "{}";
                if (list.All(item => !(item is List<object>) && !(item is Dictionary<string, object>)))
                    return "{ " + string.Join(", ", list.Select(item => Lua(item, depth + 1))) + " }";
                return "{\n" + string.Join(",\n", list.Select(item => childIndent + Lua(item, depth + 1))) + "\n" + indent + "}";
            }
            if (value is Dictionary<string, object> map)
            {
                if (map.Count == 0) return "{}";
                var entries = map.OrderBy(pair => FieldOrder(pair.Key)).ThenBy(pair => pair.Key, StringComparer.Ordinal);
                return "{\n" + string.Join(",\n", entries.Select(pair =>
                    childIndent + "[" + Lua(pair.Key) + "] = " + Lua(pair.Value, depth + 1))) + "\n" + indent + "}";
            }
            throw Error("Cannot export value");
        }
        // Identify the node before its conditions and descendants; never let
        // Dictionary insertion order change generated review specimens.
        private static int FieldOrder(string field)
        {
            string[] leading = { "context", "milestones", "policies", "instanceID", "difficultyID",
                "encounterID", "npcID", "creatureID", "itemID", "questID", "objectID", "progressionScopes" };
            int index = Array.IndexOf(leading, field);
            if (index >= 0) return index;
            return field == "groups" ? 100 : 50;
        }
    }
}
