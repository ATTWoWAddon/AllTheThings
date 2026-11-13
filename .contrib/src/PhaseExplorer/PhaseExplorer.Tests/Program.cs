using PhaseExplorer.Core;

static void Check(bool condition, string message) { if (!condition) throw new Exception(message); }
await VerifyWrappedInstanceRoots();
if (args.Contains("--synthetic-only", StringComparer.Ordinal)) return;
string root = args.Length == 0 ? Directory.GetCurrentDirectory() : Path.GetFullPath(args[0]);
var index = await ProjectIndex.LoadAsync(root);
Check(index.Files.Count > 6, "Discovery must not use a fixed six-case catalog");
string basePath = Path.Combine(".contrib", "phase-examples", "evolution");
await VerifyNativeSourceRoots(index, basePath);
if (args.Contains("--native-only", StringComparer.Ordinal)) return;
string Bwl(string f) => Path.Combine(basePath, "blackwing-lair", "p4", f);
var bwl = index.GetDetail(Bwl("sod.lua"));
Check(bwl.Diagnostics.Count == 0, "BWL should parse");
var heads = bwl.Nodes.Where(x => x.Label.StartsWith("i(19002)")).ToList();
Check(heads.Count == 2, $"Expected two actual item 19002 occurrences, got {heads.Count}");
Check(heads.Select(x => x.Id).Distinct().Count() == 2, "Occurrences must retain separate IDs");
Check(heads.Any(x => x.Bindings.Any(b => b.Key == "raid.bwl.original")), "Original route missing");
Check(heads.Any(x => x.Bindings.Any(b => b.Key == "raid.bwl.sod20")), "Reworked route missing");
Check(heads.All(x => x.Bindings.Any(b => b.Key == "raid.bwl.common")), "Raid parent must apply to both routes");
var gnomer = index.GetDetail(Path.Combine(basePath, "gnomeregan", "p4", "sod.lua"));
var zone = gnomer.Nodes.Single(x => x.Label.StartsWith("i(216634)"));
Check(zone.Bindings.Any(x => x.Key == "gnomeregan.raid10"), "Zone drop should inherit raid scope");
Check(zone.Bindings.All(x => x.Key != "gnomeregan.dungeon"), "Zone drop must not inherit old dungeon");
var standardGnomer = index.GetDetail(Path.Combine(basePath, "gnomeregan", "p4", "classic.lua"));
var standardDungeon = standardGnomer.Nodes.Single(n => RecordKinds.Identity(n.Label) == ("231", "instanceID") && n.Bindings.Any(b => b.Key == "gnomeregan.dungeon"));
Check(standardDungeon.Bindings.Count(b => b.Key == "gnomeregan.dungeon") == 1, "Structural standard dungeon key occurs once");
var nativeGnomer = index.GetDetail(Path.Combine(".contrib", ".db", "standard", "01 - Dungeons Raids", "01 - Classic", "Gnomeregan.lua"));
Check(nativeGnomer.Nodes.All(n => !n.Label.StartsWith("applyclassicphase(")), "Standard Gnomeregan has no invented legacy phase writer");
var dfc = index.GetDetail(Path.Combine(basePath, "demon-fall-canyon", "p4", "sod.lua"));
var branch = dfc.Nodes.First(x => x.Label.StartsWith("i(235787)"));
Check(branch.Bindings.Any(x => x.Key == "dfc.dungeon") && branch.Bindings.Any(x => x.Key == "dfc.ironwood-branch"), "DFC parent and child must both apply");
string schedule = index.ReadFile(Path.Combine(".contrib", "phase-examples", "schedule.json"));
foreach (string flavor in new[] { "progression", "era", "anniversary" })
    Check(Schedule.Resolve(schedule, "gnomeregan.dungeon", flavor, "start").State == "active", "Unphased standard dungeon remains available from start: " + flavor);
Check(Schedule.Resolve(schedule, "raid.bwl.original", "sod").State == "disabled", "Disabled policy");
Check(Schedule.Resolve(schedule, "raid.bwl.sod20", "sod").AliasPath.Contains("raid.bwl.common"), "Alias target");
Check(Schedule.Resolve(schedule, "dfc.dungeon", "sod").State == "unknown", "Unknown is not disabled");
Check(Schedule.Resolve(schedule, "raid.bwl.common", "sod", "vanilla.4").State == "future", "Before opening");
Check(Schedule.Resolve(schedule, "raid.bwl.common", "sod", "vanilla.5").State == "active", "Opening inclusive");
Console.WriteLine($"PASS — {index.Files.Count} Lua/JSON files indexed; source occurrences and schedule semantics verified.");
var stage = Relations.Contexts(index, Bwl("sod.lua"));
Check(stage.Count == 1 && stage[0].Stage == "P4", "Stage must come from the adjacent migration manifest");
var selections = Relations.Selections(index, Bwl("sod.lua"));
Check(selections.Any(x => x.Label == "sod:main: selected"), "SoD source selection");
Check(selections.Any(x => x.Label == "progression:main: selects classic.lua"), "Other source selection");
var dfcSelections = Relations.Selections(index, Path.Combine(basePath, "demon-fall-canyon", "p4", "sod.lua"));
Check(dfcSelections.Any(x => x.Label == "retail: absent"), "Null selections must remain visible");
string temporary = Path.Combine(Path.GetTempPath(), "phase-explorer-tests-" + Guid.NewGuid().ToString("N"));
Directory.CreateDirectory(temporary);
try
{
    File.Copy(index.FullPath(Bwl("sod.lua")), Path.Combine(temporary, "bwl.lua"));
    File.WriteAllText(Path.Combine(temporary, "custom.lua"), "-- progressionKey = \\\"test.key\\\"\nlocal phase = 1\ninst(1, { progressionKey = \\\"test.key\\\", groups = { i(123), }, provider = { \\\"i\\\", 123 }, })\n".Replace("\\\"", "\""));
    File.WriteAllText(Path.Combine(temporary, "guards.lua"), "local text = [=[\n-- #if FALSE_GUARD\n]=]\n-- #if SEASON_OF_DISCOVERY\ni(17)\n-- #else\ni(18)\n-- #endif\n{ itemID = 22734 },\n");
    File.WriteAllText(Path.Combine(temporary, "legacy.lua"), "local PHASE_TWO = 2\nlocal text = [=[\nPHASE_TWO = 99\n]=]\n-- PHASE_TWO = 42\ninst(1, { phase = PHASE_TWO, groups = { i(31) } })\n");
    File.WriteAllText(Path.Combine(temporary, "profile-main.json"), "{\"milestones\":[\"one\"],\"content\":{\"test.key\":{\"windows\":[{\"from\":\"one\"}]}}}");
    File.WriteAllText(Path.Combine(temporary, "profile-replay.json"), "{\"milestones\":[\"one\",\"two\"],\"content\":{\"test.key\":{\"windows\":[{\"from\":\"two\"}]}}}");
    File.WriteAllText(Path.Combine(temporary, "timing.json"), "{\"rules\":{\"custom\":{\"test.key\":\"unknown\"}},\"calendars\":{\"sod\":[\"start2\"]}} ");
    var small = await ProjectIndex.LoadAsync(temporary);
    var refs = await small.FindTypedReferencesAsync("19002");
    Check(refs.Count(x => x.Kind == "Item occurrence") == 2, "Two BWL acquisition occurrences must remain separate");
    Check(refs.Count(x => x.Kind == "provider reference") == 2, "Provider tuples must be typed as references");
    var bindings = await small.FindTypedReferencesAsync("test.key");
    Check(bindings.Count(x => x.Kind == "Binds") == 1, "Comments must not become bindings");
    var distinctContexts = small.PoliciesFor("test.key", "custom.lua");
    Check(distinctContexts.Count == 3, "Schedule, main and replay must remain separate contexts");
    Check(Schedule.Resolve(small.ScheduleText(distinctContexts.Single(x => x.File == "profile-main.json")), "test.key", "profile", "one").State == "active", "Main profile opening");
    Check(Schedule.Resolve(small.ScheduleText(distinctContexts.Single(x => x.File == "profile-replay.json")), "test.key", "profile", "one").State == "future", "Replay profile has independent timing");
    Check(small.PoliciesFor("missing.key", "profile-main.json").Count == 0, "Missing profile policies must not fall back to another context");
    var legacy = small.GetDetail("legacy.lua");
    Check(legacy.Nodes.Single(n => n.Label.StartsWith("i(31)")).Bindings.Any(b => b.Key == "legacy:PHASE_TWO"), "Legacy phase field inheritance");
    Check((await small.FindDefinitionsAsync("PHASE_TWO")).Count == 1, "Legacy constant definition");
    Check(legacy.Nodes.Any(n => n.Label.StartsWith("definition PHASE_TWO = 2")), "Legacy definitions are navigable source nodes");
    var custom = small.GetDetail("custom.lua");
    Check(custom.Nodes.Any(x => x.Label.StartsWith("i(123)") && x.Bindings.Any(b => b.Key == "test.key")), "Custom source binding");
    var guards = small.GetDetail("guards.lua");
    Check(guards.Nodes.Single(n => n.Label.StartsWith("i(17)")).Condition == "if SEASON_OF_DISCOVERY", "Directives inside long strings must not affect guards");
    Check(guards.Nodes.Single(n => n.Label.StartsWith("i(18)")).Condition.Contains("if SEASON_OF_DISCOVERY / else"), "Else must retain its predicate");
    Check(guards.Nodes.Any(n => n.Label.StartsWith("record itemID=22734")), "Direct itemID records must be represented");
    Check((await small.FindTypedReferencesAsync("22734")).Count(r => r.Kind == "Item occurrence") == 1, "Direct itemID is an occurrence");
}
finally { Directory.Delete(temporary, true); }
string windows = """
{"calendars":{"sod":["one","two","three","four"]},"rules":{"case":{"k":{"windows":[{"from":"one","until":"two"},{"from":"three","until":"four"}]},"a":{"sameAs":"b"},"b":{"sameAs":"a"}}},"fullSourceRules":{}}
""";
Check(Schedule.Resolve(windows, "k", "sod", "two").State == "removed", "Window end must be exclusive");
Check(Schedule.Resolve(windows, "k", "sod", "three").State == "active", "Second window must reopen");
Check(Schedule.Resolve(windows, "a", "sod").Diagnostic?.Contains("Cyclic") == true, "Alias cycles must be reported");
Check(Schedule.Resolve("{\"calendars\":{\"sod\":[\"x\",\"x\"]},\"rules\":{\"c\":{\"k\":\"x\"}}}", "k", "sod").State == "error", "Invalid calendar must report an error");
Console.WriteLine("PASS — source selection, typed references, arbitrary schedule names and window boundaries verified.");
string compiledFile = Path.Combine(".contrib", "phase-examples", "generated", "sod-main.lua");
var compiled = index.GetDetail(compiledFile);
var compiledSphere = compiled.Nodes.FirstOrDefault(n => n.Label.StartsWith("record itemID=223539"));
Check(compiledSphere != null, "Generated indexed itemID record");
Check(compiledSphere!.Bindings.Any(b => b.Key == "sod:main:brd.enthralled-sphere"), "Generated progressionScopes binding");
var compiledPolicy = index.PoliciesFor("sod:main:brd.enthralled-sphere", compiledFile);
Check(compiledPolicy.Count == 1 && compiledPolicy[0].File == compiledFile, "Compiled scope must resolve against same file");
Check(Schedule.Resolve(index.ScheduleText(compiledPolicy[0]), "sod:main:brd.enthralled-sphere", "sod:main").Description.Contains("vanilla.3"), "Compiled policy timing");
string profileFile = Path.Combine(".contrib", "phase-examples", "input", "profiles", "sod", "main.json");
var profilePolicy = index.PoliciesFor("raid.bwl.common", profileFile);
Check(profilePolicy.Count == 1 && profilePolicy[0].File == profileFile, "Profile must use its own policy");
Check(Schedule.Resolve(index.ScheduleText(profilePolicy[0]), "raid.bwl.common", "profile").Description.Contains("vanilla.5"), "Profile opening");
Console.WriteLine("PASS — compiled Lua and expanded profile policies resolved from their own source.");

// Complete-instance and transition coverage supplements the compact examples above.
var originalHead = heads.Single(n => n.Bindings.Any(b => b.Key == "raid.bwl.original"));
var reworkedHead = heads.Single(n => n.Bindings.Any(b => b.Key == "raid.bwl.sod20"));
CheckSourceSpan(index, originalHead, "i(19002");
CheckSourceSpan(index, reworkedHead, "i(19002");
Check(originalHead.Location.Offset != reworkedHead.Location.Offset, "BWL routes keep separate current source spans");
Check(gnomer.Nodes.Where(n => n.Label.StartsWith("i(216661)")).All(n => n.Bindings.Any(b => b.Key == "gnomeregan.raid10") && n.Bindings.All(b => b.Key != "gnomeregan.dungeon")), "Second Gnomeregan zone drop is outside the old dungeon");
var aq = index.GetDetail(Path.Combine(basePath, "temple-of-ahnqiraj", "p4", "sod.lua"));
var bases = aq.Nodes.Where(n => n.Label.StartsWith("record itemID=22734")).ToList();
Check(bases.Count == 2 && bases.Select(n => n.Id).Distinct().Count() == 2, "AQ direct tables retain distinct acquisition occurrences");
Check(bases.All(n => n.Bindings.Any(b => b.Key == "aq40.common") && n.Bindings.Any(b => b.Key == "aq40.atiesh-base")), "AQ direct tables inherit parent and item policies");
var brd = index.GetDetail(Path.Combine(basePath, "blackrock-depths", "p4", "sod.lua"));
Check(brd.Nodes.Single(n => n.Label.StartsWith("i(223539)")).Bindings.Select(b => b.Key).ToHashSet().IsSupersetOf(["brd.dungeon", "brd.enthralled-sphere"]), "BRD sphere inherits dungeon and item scopes");
var dm = index.GetDetail(Path.Combine(basePath, "dire-maul", "p4", "sod.lua"));
Check(dm.Nodes.Single(n => n.Label.StartsWith("i(21982)")).Bindings.Select(b => b.Key).ToHashSet().IsSupersetOf(["dire-maul.common", "dire-maul.dungeon-set-2"]), "Dire Maul item inherits both scopes");
foreach (string stageName in new[] { "p2.1", "p2.2", "p3" })
{
    foreach (string alternative in new[] { "standard", "sod" })
    {
        var contextStage = Relations.Contexts(index, Path.Combine(basePath, "blackwing-lair", stageName, alternative + ".lua"));
        Check(contextStage.Single().Stage == stageName.ToUpperInvariant(), "Migration manifest stage " + stageName);
        Check(Path.GetFileName(contextStage[0].Location.File) == alternative + ".migration.json", "Stage comes from the selected alternative's declared control");
    }
}
var bwlConsumers = await index.FindSourceReferencesAsync(Bwl("sod.lua"));
Check(bwlConsumers.Any(r => r.Location.File == Bwl("selection.json")) && bwlConsumers.Any(r => r.Location.File == Bwl("migration.json")), "Real BWL source links back to its selection and migration consumers");
VerifySourceStages(index, basePath);
Console.WriteLine("PASS — all six complete instances and migration stages verified.");

string regressionRoot = Path.Combine(Path.GetTempPath(), "phase-explorer-regressions-" + Guid.NewGuid().ToString("N"));
Directory.CreateDirectory(regressionRoot);
try
{
    File.WriteAllText(Path.Combine(regressionRoot, "branches.lua"), """
inst(2, {
-- #if FIRST
progressionKey = "left",
i(701),
-- #elseif SECOND
progressionKey = "middle",
i(702),
-- #else
progressionKey = "right",
i(703),
-- #endif
groups = { i(704) }
})
{ itemID = 705, progressionKey = "self" }
{ questID = 706, groups = { { npcID = 707 } } }
q(17), n(99), o(7001), ach(7001), spell(7001)
q(7), i(7), n(7), r(7), cat(7), race(7)
inst(4, { provider = { "i", 7 }, cost = { { "i", 7, 1 } }, groups = { { questID = 7 } } })
local CONST = 1
if CONST == 1 then q(1) end
inst(3, { provider = { q(17) }, groups = { q(7001), n(7001) } })
function helper() end
local incidental = "self"
""");
    File.WriteAllText(Path.Combine(regressionRoot, "a.json"), "{\"calendars\":{\"sod\":[\"one\"]},\"rules\":{\"custom\":{\"left\":\"unknown\"}}}");
    File.WriteAllText(Path.Combine(regressionRoot, "b.json"), "{\"calendars\":{\"sod\":[\"one\"]},\"rules\":{\"custom\":{\"right\":\"disabled\"}}}");
    File.WriteAllText(Path.Combine(regressionRoot, "unicode.json"), "{\"名稱\": {\"key\": \"value after key\"}}");
    File.WriteAllText(Path.Combine(regressionRoot, "migration.json"), "{\"defaultStage\":\"P1\",\"cohorts\":[{\"stage\":\"P3\",\"sources\":[\"branches.lua\"]}]}");
    File.WriteAllText(Path.Combine(regressionRoot, "long.lua"), "local text = \"" + new string('x', 300000) + "NEEDLE\"");
    File.WriteAllText(Path.Combine(regressionRoot, "records.json"), """
{"items":[{"itemID":25},{"questID":25},{"npcID":25}],"provider":[{"itemID":25}],"$comment":{"itemID":25},"numericKeys":{"25":"incidental"}}
""");
    File.WriteAllText(Path.Combine(regressionRoot, "selection.json"), """
{"selected":{"main":"./branches.lua","other":"nested/branches.lua"},"absent":null,"$comment":"branches.lua"}
""");
    File.WriteAllText(Path.Combine(regressionRoot, "inputs.json"), """
{"inputs":{"sources":["branches.lua"]},"description":"branches.lua","$comment":{"source":"branches.lua"}}
""");
    File.WriteAllText(Path.Combine(regressionRoot, "malformed.json"), "{ invalid");
    var regression = await ProjectIndex.LoadAsync(regressionRoot);
    var branchDetail = regression.GetDetail("branches.lua");
    Check(branchDetail.Diagnostics.Count == 0, "Conditional fixture parses");
    Check(branchDetail.Nodes.Select(n => n.Id).Distinct().Count() == branchDetail.Nodes.Count, "Every source occurrence has a unique identity");
    foreach (var (id, key) in new[] { (701, "left"), (702, "middle"), (703, "right") })
    {
        var node = branchDetail.Nodes.Single(n => n.Label.StartsWith($"i({id})"));
        Check(node.Bindings.Count == 1 && node.Bindings[0].Key == key, "Mutually exclusive source branches must not inherit each other");
    }
    Check(branchDetail.Nodes.Single(n => n.Label.StartsWith("i(704)")).Bindings.Count == 3, "An unconditional child retains all guarded alternatives");
    Check(branchDetail.Nodes.Single(n => n.Label.StartsWith("record itemID=705")).Bindings.Single().Authored, "Direct record and key share one authored occurrence");
    Check(branchDetail.Nodes.Any(n => n.Label.StartsWith("record questID=706")) && branchDetail.Nodes.Any(n => n.Label.StartsWith("record npcID=707")), "All direct ID table records are navigable");
    Check(!branchDetail.Nodes.Any(n => n.Label.StartsWith("helper(")), "Function declaration must not become a call occurrence");
    var smallIdReferences = await regression.FindTypedReferencesAsync("17");
    Check(smallIdReferences.Count(r => r.Kind == "Quest occurrence") == 1 && smallIdReferences.Count(r => r.Kind == "provider reference") == 1, "Small quest IDs distinguish acquisitions and metadata references");
    Check((await regression.FindTypedReferencesAsync("99")).Single().Kind == "NPC occurrence", "Small NPC IDs remain typed");
    var questOnly = await regression.FindTypedReferencesAsync("7", domain: "questID");
    Check(questOnly.Count == 2 && questOnly.All(r => r.Domain == "questID"), "Quest queries exclude colliding item and NPC IDs");
    var itemOnly = await regression.FindTypedReferencesAsync("7", domain: "itemID");
    Check(itemOnly.Count == 3 && itemOnly.Count(r => r.Kind is "provider reference" or "cost reference") == 2, "Item queries retain typed provider and cost references");
    Check((await regression.FindTypedReferencesAsync("7", domain: "recipeID")).Single().Kind == "Recipe occurrence", "r is the recipe shortcut");
    Check((await regression.FindTypedReferencesAsync("7", domain: "categoryID")).Single().Kind == "Category occurrence", "cat is the category shortcut");
    Check((await regression.FindTypedReferencesAsync("7", domain: "raceID")).Single().Kind == "Race occurrence", "race is distinct from recipe");
    Check((await regression.FindDefinitionsAsync("CONST")).Count == 1 && (await regression.FindTypedReferencesAsync("CONST")).Count(r => r.Kind == "Definition") == 1, "Equality must not create a false definition");
    var constructors = (await regression.FindTypedReferencesAsync("7001")).Select(r => r.Kind).ToHashSet();
    Check(constructors.IsSupersetOf(["Quest occurrence", "NPC occurrence", "Object occurrence", "Achievement occurrence", "Spell occurrence"]), "Every constructor record has typed Used by references");
    Check((await regression.FindTypedReferencesAsync("helper")).Single().Kind == "Definition", "Function definitions retain their reference type");
    Check((await regression.FindTypedReferencesAsync("self")).Count == 1, "Incidental strings do not become typed bindings");
    Check(regression.PoliciesFor("right", "a.json").Count == 0, "A selected schedule cannot fall back to another schedule");
    Check(regression.OperationDiagnostics.Any(d => d.Contains("malformed.json")), "Malformed schedule candidates remain visible as diagnostics");
    var unicode = regression.GetDetail("unicode.json").Nodes.Single(n => n.Location.Pointer == "/名稱/key");
    Check(unicode.EndOffset > unicode.Location.Offset + unicode.Location.Length, "JSON value range must belong to the selected property");
    var jsonItems = await regression.FindTypedReferencesAsync("25", domain: "itemID");
    Check(jsonItems.Count == 2 && jsonItems.Any(r => r.Kind == "provider reference") && jsonItems.Any(r => r.Location.Pointer == "/items/0/itemID"), "Explicit JSON item IDs preserve pointers, domain and metadata reference types");
    Check((await regression.FindTypedReferencesAsync("25", domain: "questID")).Single().Location.Pointer == "/items/1/questID", "JSON quest ID excludes item and NPC collisions");
    var jsonIdentity = RecordKinds.Identity(regression.GetDetail("records.json").Nodes.Single(n => n.Location.Pointer == "/items/0/itemID").Label);
    Check(jsonIdentity?.Symbol == "25" && jsonIdentity?.Domain == "itemID", "JSON typed record inspection initiates the proper Used by query");
    var consumers = await regression.FindSourceReferencesAsync("branches.lua");
    Check(consumers.Count == 3 && consumers.All(r => r.Location.Pointer != null), "Source consumers normalize relative paths and include selection, migration and inputs only");
    Check(consumers.Any(r => r.Location.Pointer == "/selected/main") && consumers.All(r => r.Location.Pointer != "/selected/other"), "Source consumers match complete normalized paths, not basenames");
    var longHit = (await regression.SearchAsync("NEEDLE")).Single();
    Check(longHit.Text.Length < 300 && longHit.Location.Column > 300000, "Long source lines retain exact locations with bounded displayed snippets");
    Check(Relations.Contexts(regression, "branches.lua").Single().Stage == "P3", "Relative cohort chooses source stage");
    Check(Relations.Contexts(regression, "long.lua").Single().Stage == "P1", "Default stage does not depend on the directory name");
    File.WriteAllText(Path.Combine(regressionRoot, "many.lua"), "local records = {\n" + string.Concat(Enumerable.Range(1, 20000).Select(n => $"{{ itemID = {n} }},\n")) + "}");
    var largeIndex = await ProjectIndex.LoadAsync(regressionRoot);
    var watch = System.Diagnostics.Stopwatch.StartNew();
    Check(largeIndex.GetDetail("many.lua").Nodes.Count(n => n.Label.StartsWith("record itemID=")) == 20000, "Large generated tables retain every record");
    Console.WriteLine($"PASS — guarded alternatives, source isolation, direct ID records, JSON value navigation and 20,000 generated records ({watch.Elapsed.TotalSeconds:F2}s).");
}
finally { Directory.Delete(regressionRoot, true); }

if (args.Length > 1 && args[1] == "--benchmark")
{
    foreach (string file in new[] { ".contrib/.raw/ItemDB/9.0.1 Shadowlands - ItemDB.lua", ".contrib/.db/standard/00 - Item DB/itemDB.json" })
    {
        var watch = System.Diagnostics.Stopwatch.StartNew();
        var detail = index.GetDetail(file);
        Console.WriteLine($"BENCHMARK — {file}: {detail.Nodes.Count:N0} nodes, {detail.Diagnostics.Count} diagnostics, {watch.Elapsed.TotalSeconds:F2}s; managed memory {GC.GetTotalMemory(false) / 1024 / 1024:N0} MiB.");
    }
}

static async Task VerifyWrappedInstanceRoots()
{
    string temporary = Path.Combine(Path.GetTempPath(), "phase-explorer-instance-roots-" + Guid.NewGuid().ToString("N"));
    Directory.CreateDirectory(temporary);
    try
    {
        File.WriteAllText(Path.Combine(temporary, "sod.lua"), """
instanceroot(2784, applyclassicphase(SOD_PHASE_FOUR, {
    progressionKey = "dungeon",
    groups = {
        i(9, { progressionKey = "child" }),
        { itemID = 10 },
    },
}))
i(2784)
n(2784)
""");
        File.WriteAllText(Path.Combine(temporary, "standard.lua"), "inst(2784, {})");
        File.WriteAllText(Path.Combine(temporary, "unlisted.lua"), "inst(1, {})");
        File.WriteAllText(Path.Combine(temporary, "sod.migration.json"), "{\"defaultStage\":\"P1\",\"cohorts\":[{\"stage\":\"P3\",\"sources\":[\"./sod.lua\"]}]}");
        File.WriteAllText(Path.Combine(temporary, "standard.migration.json"), "{\"defaultStage\":\"P2.1\",\"cohorts\":[{\"stage\":\"P2.2\",\"sources\":[\"standard.lua\"]}]}");
        var index = await ProjectIndex.LoadAsync(temporary);
        var detail = index.GetDetail("sod.lua");
        Check(detail.Diagnostics.Count == 0, "Phase-wrapped instance root parses");
        var root = detail.Nodes.Single(n => n.Label.StartsWith("instanceroot(2784)"));
        Check(RecordKinds.Identity(root.Label) == ("2784", "instanceID"), "instanceroot identifies an instance record");
        Check(root.Bindings.Select(b => b.Key).ToHashSet().SetEquals(["legacy:SOD_PHASE_FOUR", "dungeon"]), "Wrapped root owns its phase and parent progression key");
        Check(root.Bindings.All(b => b.Authored), "Wrapped root fields retain authored locations");
        var child = detail.Nodes.Single(n => n.Label.StartsWith("i(9)"));
        Check(child.Bindings.Select(b => b.Key).ToHashSet().SetEquals(["legacy:SOD_PHASE_FOUR", "dungeon", "child"]), "Wrapped instance and child scopes remain additive");
        var sibling = detail.Nodes.Single(n => n.Label.StartsWith("record itemID=10"));
        Check(sibling.Bindings.Any(b => b.Key == "dungeon") && sibling.Bindings.All(b => b.Key != "child"), "Sibling record does not inherit the child key");
        var references = await index.FindTypedReferencesAsync("2784", domain: "instanceID");
        Check(references.Count == 2 && references.All(r => r.Kind == "Instance occurrence"), "Instance roots and standard records exclude colliding item and NPC IDs");
        Check(Relations.Contexts(index, "sod.lua").Single().Stage == "P3", "Named SoD control resolves its explicit relative cohort");
        Check(Relations.Contexts(index, "standard.lua").Single().Stage == "P2.2", "Named standard control remains independent of SoD");
        Check(Relations.Contexts(index, "unlisted.lua").Count == 0, "Named controls do not apply to an unrelated source");
        Console.WriteLine("PASS — wrapped standalone instance identities and additive root/child scopes verified.");
    }
    finally { Directory.Delete(temporary, true); }
}

static void CheckSourceSpan(ProjectIndex index, SourceNode node, string prefix)
{
    string text = index.ReadFile(node.Location.File);
    Check(text.AsSpan(node.Location.Offset).StartsWith(prefix), "Occurrence points at its current source constructor");
    int line = 1 + text.AsSpan(0, node.Location.Offset).Count('\n');
    int lineStart = text.LastIndexOf('\n', Math.Max(0, node.Location.Offset - 1)) + 1;
    Check(node.Location.Line == line && node.Location.Column == node.Location.Offset - lineStart + 1, "Occurrence line and column match its current exact source span");
}

static async Task VerifyNativeSourceRoots(ProjectIndex index, string evolution)
{
    string manifestFile = Path.Combine(evolution, "full-source", "sources.json");
    using var manifest = System.Text.Json.JsonDocument.Parse(index.ReadFile(manifestFile));
    var entries = manifest.RootElement.GetProperty("sources").EnumerateArray().ToList();
    Check(entries.Count == 11 && entries.Count(e => e.GetProperty("alternative").GetString() == "standard") == 5, "Source catalog contains five standard and six standalone SoD alternatives");
    Dictionary<string, string> instanceIds = new() { ["blackwing-lair"] = "742", ["blackrock-depths"] = "228", ["demon-fall-canyon"] = "2784", ["dire-maul"] = "230", ["temple-of-ahnqiraj"] = "744", ["gnomeregan"] = "231" };
    var metadata = index.GetDetail(manifestFile);
    for (int i = 0; i < entries.Count; i++)
    {
        var entry = entries[i];
        string caseName = entry.GetProperty("case").GetString()!;
        string alternative = entry.GetProperty("alternative").GetString()!;
        string sourceFile = entry.GetProperty("source").GetString()!.Replace('/', Path.DirectorySeparatorChar);
        string p1File = Path.Combine(evolution, caseName, "p1", alternative + ".lua");
        var native = index.GetDetail(sourceFile);
        Check(native.Diagnostics.Count == 0, "Canonical source parses: " + sourceFile);
        var roots = native.Nodes.Where(n => RecordKinds.Identity(n.Label) == (instanceIds[caseName], "instanceID")).ToList();
        Check(roots.Count > 0, "Canonical alternative has its declared instance identity: " + sourceFile);
        foreach (var root in roots) CheckSourceSpan(index, root, alternative == "sod" ? "instanceroot(" : "inst(");
        var saved = index.GetDetail(p1File);
        Check(saved.Nodes.Count(n => RecordKinds.Identity(n.Label) == (instanceIds[caseName], "instanceID")) == roots.Count, "P1 snapshot preserves every version-guarded instance occurrence");
        if (caseName == "blackwing-lair")
        {
            int expected = alternative == "sod" ? 2 : 1;
            Check(native.Nodes.Count(n => n.Label.StartsWith("i(19002)")) == expected, "Canonical BWL alternative retains its own acquisition-route count");
            Check(saved.Nodes.Count(n => n.Label.StartsWith("i(19002)")) == expected, "P1 BWL alternative keeps the same acquisition-route count");
        }
        var fileNode = metadata.Nodes.Single(n => n.Location.Pointer == $"/sources/{i}/file");
        Check(Relations.Outgoing(index, fileNode).Single().Location.File == sourceFile, "Provenance file link selects the exact production root");
        var snapshotNode = metadata.Nodes.Single(n => n.Location.Pointer == $"/sources/{i}/snapshotFile");
        Check(Relations.Outgoing(index, snapshotNode).Single().Location.File == p1File, "Provenance snapshot link selects the matching P1 alternative");
    }
    string sodBwl = entries.Single(e => e.GetProperty("case").GetString() == "blackwing-lair" && e.GetProperty("alternative").GetString() == "sod").GetProperty("source").GetString()!.Replace('/', Path.DirectorySeparatorChar);
    int bwlEntry = entries.FindIndex(e => e.GetProperty("case").GetString() == "blackwing-lair" && e.GetProperty("alternative").GetString() == "sod");
    var consumers = await index.FindSourceReferencesAsync(sodBwl);
    Check(consumers.Any(r => r.Location.File == manifestFile && r.Location.Pointer == $"/sources/{bwlEntry}/file"), "Standalone production source links back to its exact provenance entry");
    Check(!index.Files.Any(f => f.RelativePath == Path.Combine(evolution, "demon-fall-canyon", "p1", "standard.lua")), "DFC has no invented standard alternative");
    Console.WriteLine("PASS — all eleven canonical/P1 alternatives, typed instance roots and exact provenance navigation verified.");
}

static void VerifySourceStages(ProjectIndex index, string evolution)
{
    using var manifest = System.Text.Json.JsonDocument.Parse(index.ReadFile(Path.Combine(evolution, "full-source", "sources.json")));
    foreach (var entry in manifest.RootElement.GetProperty("sources").EnumerateArray())
    {
        string caseName = entry.GetProperty("case").GetString()!;
        string alternative = entry.GetProperty("alternative").GetString()!;
        foreach (string stage in new[] { "p1", "p2.1", "p2.2", "p3", "p4" })
        {
            var names = stage != "p4" ? new[] { alternative } : alternative == "sod" ? new[] { "sod" } : new[] { "classic", "retail" };
            foreach (string name in names)
            {
                string source = Path.Combine(evolution, caseName, stage, name + ".lua");
                var context = Relations.Contexts(index, source).Single();
                Check(context.Stage == stage.ToUpperInvariant(), $"Actual source stage {caseName}/{stage}/{name}");
                if (stage == "p1") continue;
                Check(context.Location.Pointer?.EndsWith("/stage", StringComparison.Ordinal) == true, "Stage links to its exact declared cohort");
                using var control = System.Text.Json.JsonDocument.Parse(index.ReadFile(context.Location.File));
                string directory = Path.GetDirectoryName(context.Location.File)!;
                Check(control.RootElement.GetProperty("cohorts").EnumerateArray().Any(cohort =>
                    cohort.GetProperty("stage").GetString() == context.Stage && cohort.GetProperty("sources").EnumerateArray().Any(value =>
                        Path.GetFullPath(Path.Combine(index.Root, directory, value.GetString()!)) == Path.GetFullPath(Path.Combine(index.Root, source)))), "Named source alternative owns the selected stage");
            }
        }
    }
}
