using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

public sealed class ProgressionParserIntegrationTests : ParserIntegrationFixture
{
    public static int Main(string[] args)
    {
        return RunFixture(args, "Progression Parser integration", Verify);
    }

    private static void Verify()
    {
        Load("03 - Wrath");
        int authoredCallbacks = File.ReadAllText(Path.Combine(root, UlduarSource))
            .Split(new[] { UlduarCallback }, StringSplitOptions.None).Length - 1;
        Assert(authoredCallbacks == 6, "Expected six authored Ulduar callbacks; found " + authoredCallbacks);
        string wrathUlduar = Process(UlduarSource);
        int wrathCallbacks = wrathUlduar.Split(new[] { UlduarCallback }, StringSplitOptions.None).Length - 1;
        bool usesSourceAvailability = wrathUlduar.Contains("SetSourceAvailability");
        // Two authored sites belong to the 7.3.5-and-later block outside Wrath.
        Assert(wrathCallbacks == 4 && usesSourceAvailability,
            "Wrath DataPatch 3.4.5.63697 retains four profile-aware Ulduar callbacks; found "
            + wrathCallbacks + ", source adapter present: " + usesSourceAvailability);
        Console.WriteLine("Ulduar callback assignments: authored {0}, Wrath {1}; Wrath source adapter present: {2}",
            authoredCallbacks, wrathCallbacks, usesSourceAvailability);
        Assert(Process(".contrib/.db/standard/00 - Item DB/.dynamic/03 - Wrath.lua").Contains("_.ItemDB"), "ordinary Wrath retains its ItemDB");
        var wrath = Bind(UlduarPath, UlduarFixture());
        Assert(Requires(wrath, "wrath:2"), "same Ulduar source maps to Wrath phase two");
        var wrathProfile = Read(Path.Combine(root, ".contrib/.db/shared/.config/progression/wrath.json"));
        string wrathProfilePath = Path.Combine(temp, "wrath-profile.json");
        wrathProfile["baseline"] = "wrath:2";
        Write(wrathProfilePath, wrathProfile);
        Load("03 - Wrath", D("ProgressionProfile", wrathProfilePath));
        Assert(Serialize(Bind(UlduarPath, UlduarFixture())) == Serialize(wrath),
            "same DataPatch and different baseline preserve acquisition data");
        Assert((string)((Dictionary<string, object>)Invoke(catalog, "ExportProfile"))["baseline"] == "wrath:2",
            "only exported profile metadata changes baseline");
        Load("03 - Wrath");
        wrath = Bind(UlduarPath, UlduarFixture());
        var unavailableChild = D("itemID", 25L, "u", 32L, "phase", 33L);
        var independentRoot = Bind(UlduarPath, D("instanceID", 759L, "u", 32L, "phase", 31L, "g", L(unavailableChild)));
        Assert(Requires(independentRoot, "wrath:2") && !Requires(independentRoot, "wrath:3") &&
            (long)independentRoot["u"] == 32L && !independentRoot.ContainsKey("phase"),
            "catalog binding consumes only phase and preserves a same-number availability field");
        Assert(Requires(unavailableChild, "wrath:4") && !Requires(unavailableChild, "wrath:3") &&
            (long)unavailableChild["u"] == 32L && !unavailableChild.ContainsKey("phase"),
            "a child phase transition leaves its independent u condition untouched");
        var preserved = Bind(UlduarPath, D("instanceID", 759L, "u", 31L));
        Assert((long)preserved["u"] == 31L && Requires(preserved, "wrath:2"),
            "an explicit source binding never reinterprets u as a release");
        var unmappedNumeric = Bind(UlduarPath, D("instanceID", 759L, "u", 31L, "phase", 3001L));
        Assert(Requires(unmappedNumeric, "wrath:2") && (long)unmappedNumeric["u"] == 31L &&
            (long)unmappedNumeric["phase"] == 3001L,
            "catalog binding preserves unavailable and undeclared numeric phase fields independently");
        var removed = Bind(UlduarPath, D("instanceID", 759L, "u", 2L, "phase", 31L));
        Assert((long)removed["u"] == 2L && !removed.ContainsKey("phase") && Requires(removed, "wrath:2"),
            "mapping a valid phase preserves the existing removed status");
        Load("01 - Classic Era");
        Bind(UlduarPath, preserved);
        Assert((long)preserved["u"] == 31L, "changing profiles does not consume an existing availability field");
        Load("03 - Wrath");
        var classicNaxx = Bind("01 - Classic/3.0 Naxxramas.lua", D("instanceID", 754L, "u", 30L, "phase", 16L));
        var wrathNaxx = Bind("03 - Wrath of the Lich King/2 Naxxramas.lua", D("instanceID", 754L, "u", 30L));
        Assert(!classicNaxx.ContainsKey("releasePhases") && (long)classicNaxx["u"] == 30L &&
            (long)classicNaxx["phase"] == 16L && (long)wrathNaxx["u"] == 30L && Requires(wrathNaxx, "wrath:1"),
            "source filename separates shared Naxxramas ID754 and preserves unbound numeric conditions");
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
            long condition = field == "phase" ? 3001L : 2L;
            var restricted = D("itemID", 25L, field, condition);
            var available = D("itemID", 25L);
            var parent = Bind(UlduarPath, D("instanceID", 759L, "phase", 31L, "g", L(restricted, available, D("itemID", 25L))));
            var mergedChildren = (List<object>)MergeRoutes(parent).Single()["g"];
            Assert(mergedChildren.Count == 2 && (long)((IDictionary<string, object>)mergedChildren[0])[field] == condition
                && !((IDictionary<string, object>)mergedChildren[1]).ContainsKey(field),
                "inherited release retains distinct " + field + " routes and merges equivalent routes");

            var copy = MergeRoutes(restricted).Single();
            Assert(MergeRoutes(copy, D("itemID", 25L)).Count == 2,
                "merging a copied inherited route still preserves " + field);
        }
        Assert(MergeRoutes(D("itemID", 25L, "u", 2L), D("itemID", 25L)).Count == 1,
            "unmapped sources retain the existing merge with a profile");

        Load("02 - TBC");
        var disabledNumeric = Bind(UlduarPath, D("instanceID", 759L, "u", 31L, "phase", 31L));
        Assert(!disabledNumeric.ContainsKey("releasePhases") && (long)disabledNumeric["u"] == 31L &&
            (long)disabledNumeric["phase"] == 31L, "catalog-stage input without a profile preserves both fields");
        Assert(MergeRoutes(D("itemID", 25L, "u", 2L), D("itemID", 25L)).Count == 1,
            "a build without a profile retains the existing merge");

        Load("01 - Classic Era");
        const string molCorePath = "01 - Classic/1.0 Molten Core.lua";
        const string molCoreSource = ".contrib/.db/standard/01 - Dungeons Raids/" + molCorePath;
        Assert(!Process(molCoreSource).Contains("DIFFICULTY.LEGACY_RAID.PLAYER40"),
            "Era preprocesses the Molten Core tree without a legacy difficulty wrapper");
        var eraMoltenCore = Bind(molCorePath, D("instanceID", 741L, "g", L(D("itemID", 18878L))));
        Assert(Requires(eraMoltenCore, "era:1"), "Era maps the actual Molten Core instance acquisition scope");

        Load("01 - Classic SOD");
        Assert(Process(molCoreSource).Contains("DIFFICULTY.LEGACY_RAID.PLAYER40"),
            "SoD retains its separate legacy difficulty wrapper");
        var lateFive = D("itemID", 227683L, "phase", 1609L);
        var lateSix = D("itemID", 233213L, "phase", 1610L);
        var sod20 = D("difficultyID", 201L, "phase", 1608L, "g", L(lateSix));
        var tierOneReward = D("itemID", 226659L, "phase", 1608L);
        var tierTwoReward = D("itemID", 232099L, "phase", 1609L);
        var earlyHydraxis = D("npcID", 227819L, "phase", 1608L, "groups", L(tierOneReward));
        var lateHydraxis = D("npcID", 227819L, "phase", 1609L, "groups", L(tierTwoReward));
        ((List<object>)sod20["g"]).Add(earlyHydraxis);
        ((List<object>)sod20["g"]).Add(lateHydraxis);
        var retainedLegacy = D("difficultyID", 9L, "phase", 11L);
        Bind("01 - Classic/1.0 Molten Core.lua", D("instanceID", 741L, "g", L(retainedLegacy, sod20, lateFive)));
        Assert(Requires(sod20, "sod:4") && !sod20.ContainsKey("phase"), "SoD maps its distinct twenty-player variant to phase four");
        Assert(Requires(lateFive, "sod:5") && Requires(lateSix, "sod:6"), "explicit child exceptions retain later phases than their parent raid");
        Assert(!earlyHydraxis.ContainsKey("releasePhases") && !tierOneReward.ContainsKey("phase"), "phase-four Hydraxis Tier1 reward inherits only the phase-four raid requirement");
        Assert(Requires(lateHydraxis, "sod:5") && !tierTwoReward.ContainsKey("phase"), "same-NPC later Hydraxis Tier2 route retains its own phase-five transition");
        Assert(!(bool)Invoke(catalog, "SameRequirements", earlyHydraxis, lateHydraxis), "same-NPC acquisition variants cannot merge away their reward phase difference");
        Assert(!retainedLegacy.ContainsKey("releasePhases") && (long)retainedLegacy["phase"] == 11, "unmapped legacy variant preserves its existing compatibility behavior");

        // An additional profile requires data/config only, no engine whitelist change.
        var custom = D("schema", 1L, "id", "fixture", "baseline", "fixture:one", "phases", D("fixture:one", D("order", 1L, "phaseID", 31L, "name", D("en", "Fixture"))), "content", D("raid.ulduar", "fixture:one"), "phaseMappings", D("31", "fixture:one"));
        string customPath = Path.Combine(temp, "custom.json"); Write(customPath, custom);
        Load("03 - Wrath", D("ProgressionProfile", customPath, "ProgressionIdentity", "fixture"));
        Assert(Requires(Bind(UlduarPath, UlduarFixture()), "fixture:one"), "generic engine accepts a data-defined additional flavor profile");
        ((Dictionary<string, object>)((Dictionary<string, object>)custom["phases"])["fixture:one"])["phaseID"] = 3L; Write(customPath, custom);
        Reject(delegate { Load("03 - Wrath", D("ProgressionProfile", customPath, "ProgressionIdentity", "fixture")); }, "explicitly declared");
    }
}
