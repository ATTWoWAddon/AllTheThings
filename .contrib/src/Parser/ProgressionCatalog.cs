using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;

namespace ATT
{
    /// <summary>
    /// Resolves neutral acquisition scopes through an independent flavor profile.
    /// Bindings run before source merging and timeline/legacy-u retention. They never
    /// prune future loot or replace unavailable states; runtime evaluates releasePhases.
    /// </summary>
    internal static class ProgressionCatalog
    {
        private static Dictionary<string, object> _profile;
        private static Dictionary<string, object> _phases;
        private static Dictionary<string, object> _content;
        private static Dictionary<string, object> _legacy;
        private static HashSet<long> _releaseIDs;
        private static Dictionary<string, List<Dictionary<string, object>>> _bindings;
        private static string _addonRoot;
        private static Dictionary<string, long> _bindingCounts;
        private static ConditionalWeakTable<IDictionary<string, object>, object> _controlledRoutes;
        internal static bool Enabled => _profile != null;

        internal static void Initialize(CustomConfiguration config)
        {
            _profile = null;
            _controlledRoutes = new ConditionalWeakTable<IDictionary<string, object>, object>();
            string profilePath = config["ProgressionProfile"];
            if (string.IsNullOrWhiteSpace(profilePath)) return;
            _profile = ReadObject(profilePath);
            string id = GetString(_profile, "id");
            Require(_profile["schema"] is long schema && schema == 1, "Unsupported profile schema.");
            Require(Regex.IsMatch(id, "^[a-z][a-z0-9-]*$"), "Profile identity must be a safe stable key.");
            string expectedIdentity = config["ProgressionIdentity"];
            Require(string.IsNullOrEmpty(expectedIdentity) || id == expectedIdentity, "Profile identity differs from the configured flavor.");
            _phases = GetObject(_profile, "phases");
            _content = GetObject(_profile, "content");
            _legacy = GetObject(_profile, "legacyReleases");
            string baselineKey = GetString(_profile, "baseline");
            Require(_phases.ContainsKey(baselineKey), "Unknown baseline; do not infer a current phase.");
            var baseline = AsObject(_phases[baselineKey]);
            Require(!baseline.TryGetValue("status", out object baselineStatus) || (string)baselineStatus != "unknown", "Unknown baseline cannot select a progression order.");
            var orders = new HashSet<long>();
            var legacyIDs = new HashSet<long>();
            foreach (var pair in _phases)
            {
                Require(pair.Key.StartsWith(id + ":", StringComparison.Ordinal) && Regex.IsMatch(pair.Key, "^[a-z][a-z0-9-]*:[a-z0-9][a-z0-9-]*$"), "Phase keys must belong to the selected profile namespace.");
                var phase = AsObject(pair.Value);
                Require(phase.TryGetValue("order", out object rawOrder) && rawOrder is long && (long)rawOrder >= 0, "Every phase requires an explicit nonnegative integer order.");
                Require(orders.Add((long)rawOrder), "Phase orders must be unique within one profile.");
                Require(!phase.TryGetValue("status", out object status) || (string)status == "unknown", "Unsupported phase status.");
                if (phase.TryGetValue("legacyU", out object legacyU))
                    Require(legacyU is long && legacyIDs.Add((long)legacyU), "Legacy preference IDs must be unique integers within one profile.");
            }
            foreach (var phase in _content.Values.Concat(_legacy.Values))
                Require(phase is string key && _phases.ContainsKey(key), "Content/legacy mappings must name a declared phase.");
            _addonRoot = Path.GetFullPath(config["root-addon"] ?? "../..").Replace('\\', '/').TrimEnd('/');
            var catalog = ReadObject(config["ProgressionBindings"]);
            Require(Convert.ToInt64(catalog["schema"]) == 1, "Unsupported binding catalog schema.");
            var declaredIDs = catalog["legacyReleaseIDs"] as List<object>;
            Require(declaredIDs != null && declaredIDs.All(value => value is long), "Release-ID declarations must be an integer array.");
            _releaseIDs = new HashSet<long>(declaredIDs.Cast<long>());
            Require(_releaseIDs.Count == declaredIDs.Count, "Duplicate release-ID declarations.");
            Require(!_releaseIDs.Contains(1) && !_releaseIDs.Contains(2), "Unavailable statuses must not be declared release IDs.");
            Require(legacyIDs.All(_releaseIDs.Contains), "Phase legacyU must belong to the explicitly declared release-ID catalog.");
            foreach (var key in _legacy.Keys)
                Require(long.TryParse(key, out long legacyID) && _releaseIDs.Contains(legacyID), "Legacy transitions must name explicitly declared release IDs.");
            _bindingCounts = new Dictionary<string, long>();
            _bindings = new Dictionary<string, List<Dictionary<string, object>>>(StringComparer.OrdinalIgnoreCase);
            foreach (var entry in (List<object>)catalog["bindings"])
            {
                var binding = AsObject(entry);
                string source = GetString(binding, "source").Replace('\\', '/');
                Require(!Path.IsPathRooted(source) && !source.Split('/').Contains(".."), "Binding sources must be repository-relative.");
                Require(binding["selectors"] is List<object> selectors && selectors.Count > 0, "Bindings require qualified ancestry selectors.");
                foreach (var selector in (List<object>)binding["selectors"])
                    Require(AsObject(selector).Count > 0 && AsObject(selector).All(pair => Regex.IsMatch(pair.Key, "^[a-zA-Z][a-zA-Z0-9]*$") && pair.Value is long), "Selectors require numeric identity fields.");
                if (!_bindings.TryGetValue(source, out var list)) _bindings[source] = list = new List<Dictionary<string, object>>();
                list.Add(binding);
            }
            var knownKeys = new HashSet<string>(_bindings.Values.SelectMany(list => list).Select(binding => GetString(binding, "key")));
            Require(_content.Keys.All(knownKeys.Contains), "Profile contains a content key absent from the shared binding catalog.");
        }

        internal static void BindSources(IDictionary<string, object> containers, string filename)
        {
            if (_profile == null || string.IsNullOrWhiteSpace(filename)) return;
            string source = Path.GetFullPath(filename).Replace('\\', '/');
            if (source.StartsWith(_addonRoot + "/", StringComparison.OrdinalIgnoreCase)) source = source.Substring(_addonRoot.Length + 1);
            _bindings.TryGetValue(source, out var bindings);
            foreach (var value in containers.Values)
                if (value is List<object>) VisitValue(value, new List<IDictionary<string, object>>(), null, source, bindings);
        }

        private sealed class Scope
        {
            internal long? RawU;
        }

        private static void VisitValue(object value, List<IDictionary<string, object>> ancestry, Scope inherited, string source,
            List<Dictionary<string, object>> bindings)
        {
            if (value is IDictionary<string, object> node)
            {
                long? rawU = node.TryGetValue("u", out object raw) && raw.TryConvert(out long id) ? (long?)id : null;
                var scope = inherited;
                bool matched = false;
                string matchedPhase = null;
                if (bindings != null)
                {
                    foreach (var binding in bindings)
                    {
                        if (!_content.TryGetValue(GetString(binding, "key"), out object phase) || !Matches(node, ancestry, (List<object>)binding["selectors"])) continue;
                        Require(matchedPhase == null || matchedPhase == (string)phase, "Conflicting acquisition bindings target one source node: " + source);
                        matchedPhase = (string)phase;
                        AddRequirement(node, matchedPhase);
                        string diagnosticKey = BindingIdentity(binding);
                        _bindingCounts.TryGetValue(diagnosticKey, out long count);
                        _bindingCounts[diagnosticKey] = count + 1;
                        matched = true;
                    }
                }
                // Qualified source provenance is captured in the catalog's separate map
                // before merging; no private binding fields enter acquisition objects.
                if (matched) scope = new Scope { RawU = rawU.HasValue && _releaseIDs.Contains(rawU.Value) ? rawU : inherited?.RawU };
                if (scope != null && rawU.HasValue && _releaseIDs.Contains(rawU.Value))
                {
                    if (matched || scope.RawU == rawU)
                    {
                        node.Remove("u");
                    }
                    else if (_legacy.TryGetValue(rawU.Value.ToString(), out object phase))
                    {
                        AddRequirement(node, (string)phase);
                        node.Remove("u");
                        scope = new Scope { RawU = rawU };
                    }
                    // A different child phase without an explicit adapter remains legacy u.
                }
                // Inherited requirements still control how sibling acquisition nodes can merge.
                if (scope != null || node.ContainsKey("releasePhases") ||
                    ancestry.Count > 0 && HasControlledRoute(ancestry[ancestry.Count - 1]))
                    _controlledRoutes.GetValue(node, _ => new object());
                ancestry.Add(node);
                foreach (var child in node.Where(p => p.Key == "g" || p.Key == "groups" || p.Key == "aqd" || p.Key == "hqd").Select(p => p.Value).ToArray())
                    VisitValue(child, ancestry, scope, source, bindings);
                ancestry.RemoveAt(ancestry.Count - 1);
            }
            else if (value is List<object> list)
            {
                foreach (var child in list) VisitValue(child, ancestry, inherited, source, bindings);
            }
        }

        private static bool Matches(IDictionary<string, object> node, List<IDictionary<string, object>> ancestry, List<object> selectors)
        {
            if (!MatchesOne(node, AsObject(selectors[selectors.Count - 1]))) return false;
            int index = ancestry.Count - 1;
            for (int selector = selectors.Count - 2; selector >= 0; --selector)
            {
                while (index >= 0 && !MatchesOne(ancestry[index], AsObject(selectors[selector]))) --index;
                if (index < 0) return false;
                --index;
            }
            return true;
        }

        private static bool MatchesOne(IDictionary<string, object> node, Dictionary<string, object> selector) =>
            selector.All(pair => node.TryGetValue(pair.Key, out object value) && value.TryConvert(out long number) && number == Convert.ToInt64(pair.Value));

        private static void AddRequirement(IDictionary<string, object> node, string phase)
        {
            if (!node.TryGetValue("releasePhases", out List<object> requirements)) node["releasePhases"] = requirements = new List<object>();
            if (!requirements.Contains(phase)) requirements.Add(phase);
        }

        private static bool HasControlledRoute(IDictionary<string, object> node) =>
            node.ContainsKey("releasePhases") || _controlledRoutes.TryGetValue(node, out _);

        internal static void PreserveRouteScope(IDictionary<string, object> target, IDictionary<string, object> source)
        {
            if (Enabled && HasControlledRoute(source))
                _controlledRoutes.GetValue(target, _ => new object());
        }

        internal static bool SameRequirements(IDictionary<string, object> left, IDictionary<string, object> right)
        {
            left.TryGetValue("releasePhases", out List<object> a);
            right.TryGetValue("releasePhases", out List<object> b);
            bool sameReleases = a == null || b == null ? a == b : new HashSet<string>(a.Cast<string>()).SetEquals(b.Cast<string>());
            return sameReleases && ((!HasControlledRoute(left) && !HasControlledRoute(right))
                || (SameCondition(left, right, "u") && SameCondition(left, right, "e") && SameCondition(left, right, "phase")));
        }

        private static bool SameCondition(IDictionary<string, object> left, IDictionary<string, object> right, string field)
        {
            bool hasLeft = TryGetCondition(left, field, out long leftValue);
            bool hasRight = TryGetCondition(right, field, out long rightValue);
            return hasLeft == hasRight && (!hasLeft || leftValue == rightValue);
        }

        private static bool TryGetCondition(IDictionary<string, object> node, string field, out long value)
        {
            if (node.TryGetValue(field, out value)) return true;
            if (field == "phase") return false;
            foreach (var pair in node)
                if (Framework.ConvertFieldName(pair.Key) == field && pair.Value.TryConvert(out value)) return true;
            return false;
        }

        internal static Dictionary<string, object> ExportProfile()
        {
            if (_profile == null) return null;
            var phases = new Dictionary<string, object>();
            foreach (var pair in _phases)
            {
                var definition = new Dictionary<string, object>(AsObject(pair.Value));
                if (definition.TryGetValue("legacyU", out object legacy) && Framework.Phases != null
                    && Framework.Phases.TryGetValue(Convert.ToInt64(legacy), out object rawPhase)
                    && rawPhase is IDictionary<string, object> phase && phase.TryGetValue("text", out object text))
                {
                    var localized = new Dictionary<string, object>((IDictionary<string, object>)text);
                    if (definition.TryGetValue("name", out object names))
                        foreach (var name in AsObject(names)) localized[name.Key] = name.Value;
                    definition["name"] = localized;
                }
                phases[pair.Key] = definition;
            }
            return new Dictionary<string, object> { { "id", _profile["id"] }, { "baseline", _profile["baseline"] }, { "phases", phases } };
        }

        internal static void AddMetadata(Dictionary<string, object> metadata)
        {
            if (_profile == null) return;
            metadata["phasePolicy"] = "independent-profiles";
            metadata["progressionProfile"] = _profile["id"];
            metadata["progressionBaseline"] = _profile["baseline"];
        }

        private static string BindingIdentity(Dictionary<string, object> binding) => GetString(binding, "source") + "|" + GetString(binding, "key") + "|" + MiniJSON.Json.Serialize(binding["selectors"]);

        internal static void WriteDiagnostics(string addonRoot)
        {
            if (_profile == null) return;
            var entries = new List<object>();
            foreach (var binding in _bindings.OrderBy(pair => pair.Key).SelectMany(pair => pair.Value))
            {
                string key = GetString(binding, "key");
                if (!_content.TryGetValue(key, out object phase)) continue;
                _bindingCounts.TryGetValue(BindingIdentity(binding), out long count);
                entries.Add(new Dictionary<string, object>
                {
                    { "key", key }, { "source", binding["source"] }, { "selectors", binding["selectors"] },
                    { "phase", phase }, { "hits", count },
                });
                if (count == 0) Framework.LogWarn("Progression binding unmatched: " + key + " in " + GetString(binding, "source"));
            }
            var report = new Dictionary<string, object>
            {
                { "profile", _profile["id"] }, { "baseline", _profile["baseline"] }, { "bindings", entries },
                { "coverage", _profile.ContainsKey("coverage") ? _profile["coverage"] : "Catalog-bound sources only." },
            };
            string directory = Path.Combine(addonRoot, ".contrib/Debugging/Progression");
            Directory.CreateDirectory(directory);
            Framework.WriteIfDifferent(Path.Combine(directory, GetString(_profile, "id") + ".json"), MiniJSON.Json.Serialize(report) + "\n");
            Framework.Log("Progression bindings: " + GetString(_profile, "id") + ": " + entries.Count + " configured acquisition selectors; diagnostic report written.");
        }

        private static Dictionary<string, object> ReadObject(string path)
        {
            Require(!string.IsNullOrWhiteSpace(path) && File.Exists(path), "Profile or binding catalog is missing: " + path);
            return AsObject(MiniJSON.Json.Deserialize(File.ReadAllText(path)));
        }
        private static Dictionary<string, object> AsObject(object value)
        {
            Require(value is Dictionary<string, object>, "Expected a JSON object.");
            return (Dictionary<string, object>)value;
        }
        private static Dictionary<string, object> GetObject(Dictionary<string, object> value, string key) => AsObject(value[key]);
        private static string GetString(Dictionary<string, object> value, string key)
        {
            Require(value.TryGetValue(key, out object text) && text is string && !string.IsNullOrWhiteSpace((string)text), "Expected a nonempty string: " + key);
            return (string)text;
        }
        private static void Require(bool condition, string message)
        {
            if (!condition) throw new FormatException("Progression catalog: " + message);
        }
    }
}
