using System.Text.RegularExpressions;

namespace PhaseExplorer.Core;

/// <summary>ATT record shortcuts declared in .contrib/.db/shared/functions/Shortcuts.lua.</summary>
public static class RecordKinds
{
    private static readonly Dictionary<string, (string Domain, string Kind)> Constructors = new(StringComparer.Ordinal);
    /// <summary>Register the supported ATT shortcut names and their occurrence domains.</summary>
    static RecordKinds()
    {
        Add("itemID", "Item occurrence", "item", "i", "ig");
        Add("questID", "Quest occurrence", "quest", "q", "qNYI");
        Add("npcID", "NPC occurrence", "npc", "n", "n_conditional");
        Add("objectID", "Object occurrence", "obj", "o");
        Add("achievementID", "Achievement occurrence", "ach");
        Add("achievementCategoryID", "Achievement category occurrence", "achcat");
        Add("instanceID", "Instance occurrence", "inst", "instanceroot");
        Add("encounterID", "Encounter occurrence", "e");
        Add("difficultyID", "Difficulty occurrence", "d");
        Add("recipeID", "Recipe occurrence", "recipe", "r");
        Add("spellID", "Spell occurrence", "spell", "sp");
        Add("sourceID", "Source occurrence", "itemsource");
        Add("categoryID", "Category occurrence", "category", "cat");
        Add("classID", "Class occurrence", "cl");
        Add("raceID", "Race occurrence", "race");
        Add("headerID", "Header occurrence", "raceWithoutLock", "clWithoutLock");
        Add("creatureID", "Creature occurrence", "creature", "cr");
        Add("currencyID", "Currency occurrence", "currency");
        Add("mapID", "Map occurrence", "map", "m");
        Add("mountID", "Mount occurrence", "mount");
        Add("factionID", "Faction occurrence", "faction");
        Add("flightpathID", "Flight path occurrence", "flightpath", "fp");
        Add("followerID", "Follower occurrence", "follower");
        Add("professionID", "Profession occurrence", "prof");
        Add("professionnodeID", "Profession node occurrence", "professionnode", "pn");
        Add("objectiveID", "Quest objective occurrence", "questobjective", "objective", "qo");
        Add("decorID", "Decor occurrence", "rawdecor");
        Add("titleID", "Title occurrence", "title", "title_female", "title_male");
        Add("artifactID", "Artifact occurrence", "artifact");
        Add("campsiteID", "Campsite occurrence", "campsite");
        Add("petAbilityID", "Pet ability occurrence", "battlepetability", "bpa", "pa");
        Add("petTypeID", "Pet type occurrence", "battlepettype", "bpt");
        Add("explorationID", "Exploration occurrence", "exploration");
        Add("firstcraftID", "First craft occurrence", "firstcraft");
        Add("buildingID", "Building occurrence", "garrisonBuilding");
        Add("talentID", "Garrison talent occurrence", "garrisonTalent");
        Add("missionID", "Mission occurrence", "mission");
        Add("pvpRankID", "PvP rank occurrence", "pvprank");
    }
    /// <summary>Associate each shortcut name with its domain and occurrence label.</summary>
    /// <param name="domain">ID field namespace associated with each shortcut.</param>
    /// <param name="kind">Human-readable occurrence classification.</param>
    /// <param name="names">ATT shortcut names registered for this same ID namespace.</param>
    private static void Add(string domain, string kind, params string[] names)
    {
        foreach (string name in names) Constructors.Add(name, (domain, kind));
    }
    /// <summary>Look up a shortcut and return its domain and occurrence label when recognized.</summary>
    /// <param name="name">ATT shortcut identifier to look up.</param>
    /// <param name="domain">Receives the ID namespace, or an empty string for an unknown shortcut.</param>
    /// <param name="kind">Receives the occurrence label, or an empty string for an unknown shortcut.</param>
    /// <returns>True when a shortcut is registered; false leaves both outputs empty.</returns>
    public static bool TryConstructor(string name, out string domain, out string kind)
    {
        if (Constructors.TryGetValue(name, out var record)) { domain = record.Domain; kind = record.Kind; return true; }
        domain = kind = "";
        return false;
    }
    /// <summary>Extract a typed record identity from a supported Lua or JSON display label.</summary>
    /// <param name="label">Lua constructor, direct record or JSON scalar label produced by the source parsers.</param>
    /// <returns>Numeric symbol and ID namespace, or null when the label is not a supported record.</returns>
    public static (string Symbol, string Domain)? Identity(string label)
    {
        int reference = label.IndexOf(": ", StringComparison.Ordinal);
        if (label.StartsWith("reference in ", StringComparison.Ordinal) && reference >= 0) label = label[(reference + 2)..];
        var call = Regex.Match(label, @"^([A-Za-z_][A-Za-z_0-9]*)\((-?\d+)\)");
        if (call.Success && TryConstructor(call.Groups[1].Value, out string domain, out _))
            return (call.Groups[2].Value, domain == "npcID" && call.Groups[2].Value.StartsWith('-') ? "headerID" : domain);
        var table = Regex.Match(label, @"^record ([A-Za-z_][A-Za-z_0-9]*ID)=(-?\d+)");
        if (table.Success) return (table.Groups[2].Value, table.Groups[1].Value);
        var json = Regex.Match(label, @"^([A-Za-z_][A-Za-z_0-9]*ID): (-?\d+)$");
        return json.Success ? (json.Groups[2].Value, json.Groups[1].Value) : null;
    }
}
