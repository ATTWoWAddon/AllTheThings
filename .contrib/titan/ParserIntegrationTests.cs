using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;

public static class TitanParserIntegration
{
    private const BindingFlags Flags = BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static;
    private static Assembly assembly;
    private static Type framework, catalog, program, json, titan, objects;
    private static string root, temp;
    private static int checks;
    private static object Invoke(Type type, string method, params object[] args)
    {
        return type.GetMethods(Flags).Single(m => m.Name == method && m.GetParameters().Length == args.Length).Invoke(null, args);
    }
    private static Dictionary<string, object> D(params object[] pairs)
    {
        var result = new Dictionary<string, object>();
        for (int i = 0; i < pairs.Length; i += 2) result[(string)pairs[i]] = pairs[i + 1];
        return result;
    }
    private static List<object> L(params object[] values) { return values.ToList(); }
    private static string Serialize(object value) { return (string)Invoke(json, "Serialize", value); }
    private static Dictionary<string, object> Read(string path) { return (Dictionary<string, object>)Invoke(json, "Deserialize", File.ReadAllText(path)); }
    private static void Write(string path, object value) { File.WriteAllText(path, Serialize(value)); }
    private static string Hash(string path)
    {
        using (var stream = File.OpenRead(path))
        using (var hash = SHA256.Create()) return BitConverter.ToString(hash.ComputeHash(stream)).Replace("-", "").ToLowerInvariant();
    }
    private static void Assert(bool value, string reason)
    {
        if (!value) throw new Exception("FAIL: " + reason);
        ++checks;
    }
    private static void Reject(Action action, string text)
    {
        bool rejected = false;
        try { action(); } catch (Exception error)
        {
            while (error.InnerException != null) error = error.InnerException;
            Assert(error.Message.Contains(text), "rejection should identify " + text + ": " + error.Message);
            rejected = true;
        }
        Assert(rejected, "expected rejection: " + text);
    }
    private static object Config { get { return framework.GetProperty("Config", Flags).GetValue(null, null); } }
    private static void Load(string name, Dictionary<string, object> changes = null)
    {
        framework.GetProperty("Config", Flags).SetValue(null, null, null);
        framework.GetField("_preprocessorTags", Flags).SetValue(null, null);
        Invoke(framework, "InitConfigSettings", "../.db/shared/.config/root.config", false);
        Invoke(framework, "InitConfigSettings", "../.db/standard/.config/retail/retail.config", false);
        Invoke(framework, "InitConfigSettings", "../.db/standard/.config/classic/" + name + ".config", true);
        if (changes != null)
        {
            string path = Path.Combine(temp, "override.config"); Write(path, changes);
            Invoke(framework, "InitConfigSettings", path, false);
        }
        Invoke(framework, "ApplyConfigSettings");
        var config = Config;
        var indexer = config.GetType().GetProperty("Item", BindingFlags.Instance | BindingFlags.NonPublic, null, null, new[] { typeof(string) }, null);
        foreach (string fieldName in new[] { "SINGULAR_PLURAL_FIELDS_LONG", "NON_SORTED_FIELDS", "PASS_THRU_FIELDS" })
        {
            var field = objects.GetField(fieldName, Flags);
            var value = indexer.GetValue(config, new object[] { fieldName });
            var convert = value.GetType().GetMethods(Flags).Single(m => m.Name == "op_Implicit" && m.ReturnType == field.FieldType);
            field.SetValue(null, convert.Invoke(null, new[] { value }));
        }
    }
    private static List<IDictionary<string, object>> MergeRoutes(params IDictionary<string, object>[] sources)
    {
        var merge = objects.GetMethods(Flags)
            .Single(m => m.Name == "Merge" && m.IsGenericMethodDefinition && m.GetGenericArguments().Length == 1)
            .MakeGenericMethod(typeof(object));
        var result = new List<object>();
        foreach (var source in sources) merge.Invoke(null, new object[] { result, source });
        return result.Cast<IDictionary<string, object>>().ToList();
    }
    private static string Process(string relative)
    {
        MethodInfo method = program.GetMethod("ProcessContent", Flags, null, new[] { typeof(string) }, null);
        return (string)method.Invoke(null, new object[] { File.ReadAllText(Path.Combine(root, relative)) });
    }
    private static Dictionary<string, object> Bind(string source, Dictionary<string, object> node)
    {
        Invoke(catalog, "BindSources", D("Instances", L(node)), Path.Combine(root, ".contrib/.db/standard/01 - Dungeons Raids/" + source));
        return node;
    }
    private static bool Requires(Dictionary<string, object> node, string key)
    {
        object value; return node.TryGetValue("releasePhases", out value) && ((List<object>)value).Contains(key);
    }
    private static bool NoPrivateFields(Dictionary<string, object> node)
    {
        if (node.Keys.Any(k => k.StartsWith("_progression"))) return false;
        object value;
        return !node.TryGetValue("g", out value) || ((List<object>)value).Cast<Dictionary<string, object>>().All(NoPrivateFields);
    }
    private static Dictionary<string, object> UlduarFixture()
    {
        return D("instanceID", 759L, "u", 31L, "g", L(D("itemID", 25L, "u", 31L), D("itemID", 35L, "u", 1L), D("itemID", 36L, "u", 2L), D("itemID", 37L, "u", 3L), D("itemID", 38L, "u", 3001L), D("itemID", 39L, "u", 32L)));
    }
    public static int Main(string[] args)
    {
        try
        {
            if (args.Length != 2) throw new ArgumentException("Expected the repository root and the CI-built Parser.exe path.");
            if (IntPtr.Size != 8) throw new InvalidOperationException("The Parser fixture must run as a 64-bit process.");
            Run(args[0], Assembly.LoadFrom(args[1]));
            return 0;
        }
        catch (Exception error)
        {
            Console.Error.WriteLine(error);
            return 1;
        }
    }
    public static int Run(string repoRoot, Assembly parserAssembly)
    {
        root = repoRoot; assembly = parserAssembly; checks = 0;
        framework = assembly.GetType("ATT.Framework", true);
        catalog = assembly.GetType("ATT.ProgressionCatalog", true);
        program = assembly.GetType("ATT.Program", true);
        json = assembly.GetType("MiniJSON.Json", true);
        titan = assembly.GetType("ATT.TitanProfile", true);
        objects = framework.GetNestedType("Objects", BindingFlags.Public);
        Invoke(assembly.GetType("ATT.Export", true), "Initialize");
        temp = Path.Combine(Path.GetTempPath(), "att-titan-integration-" + Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(temp);
        framework.GetProperty("Automated", Flags).SetValue(null, true, null);
        try
        {
            Load("03 - Titan Reforged");
            var tags = (HashSet<string>)framework.GetProperty("PreProcessorTags", Flags).GetValue(null, null);
            Assert(tags.Contains("TITAN_REFORGED") && !tags.Contains("RETAIL") && !tags.Contains("WRATH_CLASSIC_ITEMDB"), "profile array replacement and raw isolation");
            Assert(Process(".contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua").Trim().Length == 0, "Consolidator output excludes ordinary Wrath raw data from Titan");
            string ulduarPath = "03 - Wrath of the Lich King/5 Ulduar.lua";
            string ulduarSource = ".contrib/.db/standard/01 - Dungeons Raids/" + ulduarPath;
            Assert(!Process(ulduarSource).Contains("ULDUAR_PHASE_ONUPDATE"), "Titan excludes the six Wrath phase callbacks");
            var rawNested = D("instanceID", 759L, "u", 31L, "groups", L(D("itemID", 25L, "u", 31L)));
            Bind(ulduarPath, D("headerID", -1L, "groups", L(rawNested)));
            Assert(Requires(rawNested, "titan:6") && !((Dictionary<string, object>)((List<object>)rawNested["groups"])[0]).ContainsKey("u"), "actual Lua groups fields bind before merge normalizes them to g");
            var six = Bind(ulduarPath, UlduarFixture());
            Assert(Requires(six, "titan:6") && !six.ContainsKey("u"), "qualified Titan Ulduar scope resolves to independent phase six");
            var children = ((List<object>)six["g"]).Cast<Dictionary<string, object>>().ToList();
            Assert(!children[0].ContainsKey("u"), "inherited declared progression u is cleared only in the mapped scope");
            Assert((long)children[1]["u"] == 1 && (long)children[2]["u"] == 2 && (long)children[3]["u"] == 3, "true unavailable/status u values survive conversion");
            Assert((long)children[4]["u"] == 3001, "undeclared conditional/subphase IDs remain legacy u");
            Assert(Requires(children[5], "titan:unknown") && !children[5].ContainsKey("u"), "different child release transition remains explicit and unknown on Titan");
            Assert(NoPrivateFields(six), "source binding provenance never enters data objects");
            var future = Bind("03 - Wrath of the Lich King/8 Icecrown Citadel.lua", D("instanceID", 758L, "u", 33L, "g", L(D("itemID", 25L))));
            Assert(Requires(future, "titan:10") && ((List<object>)future["g"]).Count == 1, "future acquisition data is retained with a release requirement");
            var unknown = Bind("02 - Burning Crusade/7 The Black Temple.lua", D("instanceID", 751L, "u", 19L));
            Assert(Requires(unknown, "titan:unknown") && !unknown.ContainsKey("u"), "unknown Black Temple availability is separate from declared TBC phase u");
            var hyjal = Bind("02 - Burning Crusade/6 The Battle for Mount Hyjal.lua", D("instanceID", 750L, "u", 19L));
            Assert(Requires(hyjal, "titan:unknown") && !hyjal.ContainsKey("u"), "unknown Mount Hyjal availability is explicit and clears only declared release u");
            var karazhan = Bind("02 - Burning Crusade/1 Karazhan (Raid).lua", D("instanceID", 745L, "u", 17L, "g", L(D("itemID", 25L, "u", 17L), D("itemID", 35L, "u", 2L))));
            Assert(Requires(karazhan, "titan:7") && !karazhan.ContainsKey("u"), "known Karazhan scope maps to Titan seven independently of historical TBC one");
            Assert(!((Dictionary<string, object>)((List<object>)karazhan["g"])[0]).ContainsKey("u") && (long)((Dictionary<string, object>)((List<object>)karazhan["g"])[1])["u"] == 2, "Kara inherited release clears while removed child remains unavailable");
            var dragonQuest = D("questID", 8446L, "u", 14L);
            var dragons = D("headerID", -74L, "u", 14L, "groups", L(dragonQuest, D("npcID", 14889L, "u", 14L)));
            var azuregos = D("npcID", 6109L, "u", 12L);
            var kazzak = D("npcID", 12397L, "u", 12L);
            Bind("01 - Classic/0.9 World Bosses.lua", D("headerID", -1L, "groups", L(azuregos, dragons, kazzak)));
            Assert(Requires(dragons, "titan:9") && !dragonQuest.ContainsKey("u"), "whole dragon source includes shared drops and quests in the release gate");
            Assert(!azuregos.ContainsKey("releasePhases") && !kazzak.ContainsKey("releasePhases") && (long)azuregos["u"] == 12, "unrelated world-boss acquisition routes retain compatibility behavior");
            var profileSix = (Dictionary<string, object>)Invoke(catalog, "ExportProfile");
            Assert((string)profileSix["baseline"] == "titan:6", "baseline is metadata");
            var profile = Read(Path.Combine(root, ".contrib/.db/shared/.config/progression/titan.json"));
            profile["baseline"] = "titan:5"; string profilePath = Path.Combine(temp, "phase-five.json"); Write(profilePath, profile);
            Load("03 - Titan Reforged", D("ProgressionProfile", profilePath));
            var five = Bind(ulduarPath, UlduarFixture());
            Assert(Serialize(five) == Serialize(six), "same DataPatch and different baseline produce identical category bodies");
            Assert((string)((Dictionary<string, object>)Invoke(catalog, "ExportProfile"))["baseline"] == "titan:5", "only profile metadata changes baseline");
            profile["baseline"] = "titan:unknown"; Write(profilePath, profile);
            Reject(delegate { Load("03 - Titan Reforged", D("ProgressionProfile", profilePath)); }, "Unknown baseline");
            profile["baseline"] = "titan:6";
            ((Dictionary<string, object>)((Dictionary<string, object>)profile["phases"])["titan:6"])["order"] = 6.25;
            Write(profilePath, profile);
            Reject(delegate { Load("03 - Titan Reforged", D("ProgressionProfile", profilePath)); }, "integer order");
            profile["baseline"] = "titan:missing"; Write(profilePath, profile);
            Reject(delegate { Load("03 - Titan Reforged", D("ProgressionProfile", profilePath)); }, "Unknown baseline");

            Load("03 - Wrath");
            string wrathUlduar = Process(ulduarSource);
            Assert(wrathUlduar.Split(new[] { "OnUpdate = ULDUAR_PHASE_ONUPDATE" }, StringSplitOptions.None).Length == 7
                && wrathUlduar.Contains("SetSourceAvailability"), "Wrath retains six profile-aware Ulduar callbacks");
            Assert(Process(".contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua").Contains("_.ItemDB"), "ordinary Wrath retains its dedicated ItemDB");
            var wrath = Bind(ulduarPath, UlduarFixture());
            Assert(Requires(wrath, "wrath:2"), "same Ulduar source maps to Wrath phase two");
            var classicNaxx = Bind("01 - Classic/3.0 Naxxramas.lua", D("instanceID", 754L, "u", 30L));
            var wrathNaxx = Bind("03 - Wrath of the Lich King/2 Naxxramas.lua", D("instanceID", 754L, "u", 30L));
            Assert(!classicNaxx.ContainsKey("releasePhases") && Requires(wrathNaxx, "wrath:1"), "source filename disambiguates shared Naxxramas ID754");
            var differentRoute = D("releasePhases", L("wrath:3"));
            Assert(!(bool)Invoke(catalog, "SameRequirements", wrath, differentRoute), "different acquisition requirements cannot flatten into one Parser source");
            Assert((bool)Invoke(catalog, "SameRequirements", wrath, D("releasePhases", L("wrath:2"))), "equivalent acquisition requirements can merge");

            var removedRoute = D("itemID", 25L, "releasePhases", L("wrath:2"), "u", 2L, "e", 1L);
            var eventRoute = D("itemID", 25L, "releasePhases", L("wrath:2"), "e", 2L);
            var distinct = MergeRoutes(removedRoute, eventRoute);
            Assert(distinct.Count == 2 && (long)distinct[0]["u"] == 2 && (long)distinct[0]["e"] == 1
                && !distinct[1].ContainsKey("u") && (long)distinct[1]["e"] == 2,
                "same-release item alternatives retain their own event and unavailable conditions");
            Assert(MergeRoutes(removedRoute, D("itemID", 25L, "releasePhases", L("wrath:2"), "un", 2L, "event", 1L)).Count == 1,
                "field aliases merge with equivalent canonical route conditions");

            foreach (string field in new[] { "u", "e", "phase" })
            {
                var restricted = D("itemID", 25L, field, 2L);
                var available = D("itemID", 25L);
                var parent = Bind(ulduarPath, D("instanceID", 759L, "u", 31L, "g", L(restricted, available, D("itemID", 25L))));
                var mergedChildren = (List<object>)MergeRoutes(parent).Single()["g"];
                Assert(mergedChildren.Count == 2 && (long)((IDictionary<string, object>)mergedChildren[0])[field] == 2
                    && !((IDictionary<string, object>)mergedChildren[1]).ContainsKey(field),
                    "inherited release retains distinct " + field + " routes and merges equivalent routes");

                var copy = MergeRoutes(restricted).Single();
                Assert(MergeRoutes(copy, D("itemID", 25L)).Count == 2,
                    "merging a copied inherited route still preserves " + field);
            }
            Assert(MergeRoutes(D("itemID", 25L, "u", 2L), D("itemID", 25L)).Count == 1,
                "unmapped sources retain the existing merge with a profile");

            Load("02 - TBC");
            Assert(MergeRoutes(D("itemID", 25L, "u", 2L), D("itemID", 25L)).Count == 1,
                "a build without a profile retains the existing merge");

            Load("01 - Classic Era");
            var legacy40 = D("difficultyID", 9L, "u", 11L);
            var sod20Unmapped = D("difficultyID", 201L, "u", 1608L);
            Bind("01 - Classic/1.0 Molten Core.lua", D("instanceID", 741L, "g", L(legacy40, sod20Unmapped)));
            Assert(Requires(legacy40, "era:1") && !legacy40.ContainsKey("u"), "Era maps the legacy forty-player acquisition variant");
            Assert(!sod20Unmapped.ContainsKey("releasePhases") && (long)sod20Unmapped["u"] == 1608, "Era does not accidentally map the separate SoD twenty-player variant");
            Load("01 - Classic SOD");
            var lateFive = D("itemID", 227683L, "u", 1609L);
            var lateSix = D("itemID", 233213L, "u", 1610L);
            var sod20 = D("difficultyID", 201L, "u", 1608L, "g", L(lateSix));
            var tierOneReward = D("itemID", 226659L, "u", 1608L);
            var tierTwoReward = D("itemID", 232099L, "u", 1609L);
            var earlyHydraxis = D("npcID", 227819L, "u", 1608L, "groups", L(tierOneReward));
            var lateHydraxis = D("npcID", 227819L, "u", 1609L, "groups", L(tierTwoReward));
            ((List<object>)sod20["g"]).Add(earlyHydraxis);
            ((List<object>)sod20["g"]).Add(lateHydraxis);
            var retainedLegacy = D("difficultyID", 9L, "u", 11L);
            Bind("01 - Classic/1.0 Molten Core.lua", D("instanceID", 741L, "g", L(retainedLegacy, sod20, lateFive)));
            Assert(Requires(sod20, "sod:4") && !sod20.ContainsKey("u"), "SoD maps its distinct twenty-player variant to phase four");
            Assert(Requires(lateFive, "sod:5") && Requires(lateSix, "sod:6"), "explicit child exceptions retain later phases than their parent raid");
            Assert(!earlyHydraxis.ContainsKey("releasePhases") && !tierOneReward.ContainsKey("u"), "phase-four Hydraxis Tier1 reward inherits only the phase-four raid requirement");
            Assert(Requires(lateHydraxis, "sod:5") && !tierTwoReward.ContainsKey("u"), "same-NPC later Hydraxis Tier2 route retains its own phase-five transition");
            Assert(!(bool)Invoke(catalog, "SameRequirements", earlyHydraxis, lateHydraxis), "same-NPC acquisition variants cannot merge away their reward phase difference");
            Assert(!retainedLegacy.ContainsKey("releasePhases") && (long)retainedLegacy["u"] == 11, "unmapped legacy variant preserves its existing compatibility behavior");

            // An additional profile requires data/config only, no engine whitelist change.
            var custom = D("schema", 1L, "id", "fixture", "baseline", "fixture:one", "phases", D("fixture:one", D("order", 1L, "legacyU", 31L, "name", D("en", "Fixture"))), "content", D("raid.ulduar", "fixture:one"), "legacyReleases", D("31", "fixture:one"));
            string customPath = Path.Combine(temp, "custom.json"); Write(customPath, custom);
            Load("03 - Wrath", D("ProgressionProfile", customPath, "ProgressionIdentity", "fixture"));
            Assert(Requires(Bind(ulduarPath, UlduarFixture()), "fixture:one"), "generic engine accepts a data-defined additional flavor profile");
            ((Dictionary<string, object>)((Dictionary<string, object>)custom["phases"])["fixture:one"])["legacyU"] = 3L; Write(customPath, custom);
            Reject(delegate { Load("03 - Wrath", D("ProgressionProfile", customPath, "ProgressionIdentity", "fixture")); }, "explicitly declared");

            // Snapshot schema validation runs in the actual Parser before loading inputs.
            Load("03 - Titan Reforged");
            var manifest = Read(Path.Combine(root, ".contrib/titan/snapshot-manifest.json"));
            string manifestPath = Path.Combine(temp, "manifest.json");
            manifest["build"] = "3.4.5.63697"; Write(manifestPath, manifest);
            Reject(delegate { Load("03 - Titan Reforged", D("TitanSnapshotManifest", manifestPath)); }, "differs from DataPatch");
            manifest["build"] = "3.80.2.70372"; manifest["inputs"] = D(); Write(manifestPath, manifest);
            Reject(delegate { Load("03 - Titan Reforged", D("TitanSnapshotManifest", manifestPath)); }, "must be an array");
            var fixtureRoot = Path.Combine(temp, "snapshot-fixture");
            var fixtureWago = Path.Combine(fixtureRoot, ".contrib/.db/standard/.config/.wago/Titan Reforged");
            var fixtureRaw = Path.Combine(fixtureRoot, ".contrib/.raw/ItemDB");
            Directory.CreateDirectory(fixtureWago); Directory.CreateDirectory(fixtureRaw);
            var rawChanges = D("root-addon", fixtureRoot, "wago-directories", L(fixtureWago), "TitanSnapshotManifest", manifestPath);
            manifest = Read(Path.Combine(root, ".contrib/titan/snapshot-manifest.json")); Write(manifestPath, manifest);
            Load("03 - Titan Reforged", rawChanges);
            string csvPath = Path.Combine(fixtureWago, "Item.zhCN.3.80.2.70372.csv");
            File.WriteAllText(csvPath, "ID,ClassID,SubclassID\n25,2,7\n");
            Reject(delegate { Load("03 - Titan Reforged", rawChanges); }, "unlisted inputs");
            manifest["inputStatus"] = "candidate";
            manifest["inputs"] = L(D("kind", "wago", "table", "Item", "path", ".contrib/.db/standard/.config/.wago/Titan Reforged/Item.zhCN.3.80.2.70372.csv", "build", "3.80.2.70372", "region", "cn", "locale", "zhCN", "url", "https://wago.tools/db2/Item/csv?build=3.80.2.70372&locale=zhCN", "acquiredUTC", "2026-10-20T00:00:00Z", "sha256", Hash(csvPath), "verificationStatus", "unverified"));
            Write(manifestPath, manifest); Load("03 - Titan Reforged", rawChanges);
            Invoke(assembly.GetType("ATT.DB.WagoData", true), "LoadFromCSV", csvPath);
            Assert(true, "localized snapshot filename passes the actual Wago loader");
            File.AppendAllText(csvPath, "35,2,7\n");
            Reject(delegate { Load("03 - Titan Reforged", rawChanges); }, "SHA-256 mismatch");
            File.Delete(csvPath);
            string wrongRaw = Path.Combine(fixtureRaw, "3.4.0 Wrath of the Lich King - ItemDB.lua");
            File.WriteAllText(wrongRaw, "DBContext = \"TITAN_REFORGED\";\n");
            manifest["inputs"] = L(D("kind", "itemdb", "path", ".contrib/.raw/ItemDB/3.4.0 Wrath of the Lich King - ItemDB.lua", "build", "3.80.2.70372", "region", "cn", "locale", "enUS", "url", "https://example.invalid/synthetic-fixture", "acquiredUTC", "2026-10-20T00:00:00Z", "sha256", Hash(wrongRaw), "verificationStatus", "unverified"));
            Write(manifestPath, manifest);
            Reject(delegate { Load("03 - Titan Reforged", rawChanges); }, "distinct build-pinned raw filename");
            Console.WriteLine("Titan Parser integration: " + checks + " checks passed.");
            return checks;
        }
        finally { Directory.Delete(temp, true); }
    }
}
