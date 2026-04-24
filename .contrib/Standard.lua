--[[
-- NEW FILE AND ROOT()
At the start of a new files we always have 3 rows that explain which kind of "Module" (i.e main category) it belongs to.
There after it follows with no space the root() function that will encapsulate most of the file.
In the root() functions we use ROOTS constants followed by the next header and a bubbleDown for the main timeline(when this file first started to being use) of the file.

Some examples
---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2 } }, {
	m(ARDENWEALD, {
	}),
})));

-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = TIMELINE_10_0_2_LAUNCH }, {
	inst(1201, {	-- Algeth'ar Academy
	}),
})));

-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_2_5 } }, {
	n(ALLIED_RACES, {
	}),
})));

There could of course be expection to this and put the bubbleDownSelf on the next header like this.
-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.SL, {
	header(HEADERS.Achievement, SEASON_COSMIC, bubbleDownSelf({
		["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5, ADDED_10_0_2_LAUNCH },
	},{
	})),
}));


-------------------------------------------------------------------------------------------------------------------------------------------
-- q()

-- The Basic Standard Quest with no extra fields

Braghe:
q(questID, {	-- Quest Name
	["sourceQuests"] = { questID },	-- Quest Name
	["provider"] = { "n", npcID },	-- Npc Name
	["coord"] = { X, Y, mapID },
	["groups"] = {
		i(itemID),	-- Item Name
	},
}),

Discussion Points
1] The use of sourceQuest and sourceQuests.
	using ["sourceQuest"] will only be able to take one quest and does not use brackets i.e ["sourceQuest"] = questID,
	using ["sourceQuests"] can use multiple quests and uses brackets ["sourceQuests"] = { questID },

	Braghe: I only use ["sourceQuests"] because I believe it's alot easier to use just one field and the extra brackets doesnt matter. It's also easy to add multiple quests
	["sourceQuests"] = {
		questID1,
		questID2,
	}, since this is the usual quest form it also looks uniform

2] The use of qg and provider.
	The field ["qg"] is used by some and it stand for questgiver and usually in the form ["qg"] = npcID, but can be expanded to ["qgs"] = { npcID1, npcID2 }.
	Other use ["provider"] = { "n", npcID } or for multiple
	["providers"] = {
		{ "n", npcID1 },
		{ "n", npcID2 },
	}

	Braghe: Since parser converts providers with "n" to qg. We can just use providers since they are used anyway when the quest starts from an item or object. ["provider"] = { "i", itemID } or ["provider"] = { "o", objectID }

3] The use of coord and coords.
	I dont think anyone uses ["coords"] for single coords....

Extended Quest

Braghe:
q(questID, {	-- Quest Name
	["name"] = "Quest Name, if the name will NEVER load in game",
	["description"] = "Text",
	["sourceQuests"] = { questID },	-- Quest Name
	["sourceQuestNumRequired"] = number,
	["altQuests"] = { questID },	-- Quest Name
	["provider"] = { "n", npcID },	-- Npc Name
	["coord"] = { X, Y, MAPID_CONSTANT },
	["timeline"] = { timeline },
	["maps"] = { MAPID_CONSTANT },
	["cost"] = { { "i", itemID, number }, },	-- numberxItem Name
	["races"] = { raceID },
	["classes"] = { classID },
	["lockCriteria"] = { criteriaID },
	["customCollect"] = { customID },
	["isBreadcrumb"] = true,
	["isWorldQuest"] = true,
	["repeatable"] = true,
	["isYearly"] = true,
	["isMonthly"] = true,
	["isWeekly"] = true,
	["isDaily"] = true,
	["groups"] = {
		i(itemID),	-- Item Name
	},
}),

Crieve List
qg/qgs/provider
altQuests
sourceQuest/sourceQuests
coords
timeline
maps
races
classes
isDaily/isYearly/repeatable/isBreadcrumb (they don't typically exist together on the same object)
crs
lvl
f
OnClick
OnInit
OnUpdate
OnTooltip
groups


Braghe: I dont think we ever use mapID (i.e one maps), altQuest (one altQuests), classID, raceID etc... so its kinda weird to do it to sourceQuests.


-------------------------------------------------------------------------------------------------------------------------------------------
Basic/Standard Rare

n(npcID, {	-- Name
	["description"] = "Text",
	["crs"] = { npcID },	-- Npc Name
	["coord"] = { X, Y, mapID },	-- Map Name
	["questID"] = questID,
	["isDaily"] = true,
	["groups"] = {
		i(itemID),	-- Item Name
	},
}),

Example:
n(184804, {	-- Helmix
	["description"] = "Will call out an emote\"The ground vibrates... something burrows beneath the surface!\" in the zone when spawned",
	["crs"] = {
		183749,	-- Helmix
		183748,	-- Helmix
	},
	["coord"] = { 58.2, 68.3, ZERETH_MORTIS },
	["questID"] = 65551,
	["groups"] = {
		i(189931),	-- Annelid's Hinge Wrappings
		i(189965),	-- Armored Cuffs of the Unbroken
		i(190056),	-- Enlightened Explorer's Lantern
		i(190054),	-- Facet Sharpening Crossbow
	},
}),


Extened Rare

n(npcID, {	-- Name
	["description"] = "Text",
	["crs"] = { npcID },	-- Npc Name
	["coord"] = { X, Y, mapID },	-- Map Name
	["maps"] = { mapID },	-- Map Name
	["questID"] = questID,
	["isDaily"] = true,
	["isWeekly"] = true,
	["isMonthly"] = true,
	["isYearly"] = true,
	["repeatable"] = true,
	["cost"] = { { "i", itemID, number }, },	-- numberxItem Name
	["timeline"] = { timeline },
	["groups"] = {
		i(itemID),	-- Item Name
	},
}),

Example:
n(187306, {	-- Morchok <Harbinger of Twilight>
	["description"] = "Restore 20 Obsidian Keys to Igys the Believer.",
	["coord"] = { 32.2, 51.9, THE_WAKING_SHORES },
	["questID"] = 74067,
	["isDaily"] = true,
	["cost"] = { { "i", 191264, 20 }, },	-- 20x Restored Obsidian Key
	["groups"] = {
		i(200207),	-- Petrified Fungal Spores
	},
}),

-------------------------------------------------------------------------------------------------------------------------------------------
Basic/Standard Treasure

o(objectID, {	-- Object Name
	["description"] = "Text",
	["coord"] = { X, Y, mapID },	-- Map Name
	["questID"] = questID,
	["groups"] = {
		i(itemID),	-- Item Name
	},
}),

Example:
o(375668, {	-- Misty Treasure Chest
	["description"] = "Stand on the Handhold sticking out of the waterfall and walk forward to find this treasure (it's very hidden behind the water).",
	["coord"] = { 58.6, 53.1, THE_WAKING_SHORES },
	["questID"] = 65646,
	["groups"] = {
		i(202194),	-- Misty Satchel
	},
}),


Extended Treasure

o(objectID, {	-- Object Name
	["description"] = "Text",
	["crs"] = { npcID },	-- Npc Name
	["sourceQuests"] = { questID },	-- Quest Name
	["coord"] = { X, Y, mapID },	-- Map Name
	["maps"] = { mapID },	-- Map Name
	["questID"] = questID,
	["isDaily"] = true,
	["isWeekly"] = true,
	["isMonthly"] = true,
	["isYearly"] = true,
	["repeatable"] = true,
	["cost"] = { { "i", itemID, number }, },	-- numberxItem Name
	["timeline"] = { timeline },
	["groups"] = {
		i(itemID),	-- Item Name
	},
}),

Example:
o(373568, {	-- Provis Cache
	["description"] = "Use Firim's Spare Forge-tap to gain 15xEphemera Strands(187728) to get Ephemera Orb(187787), not guaranteed.",
	["coord"] = { 42.0, 51.9, ZERETH_MORTIS },
	["questID"] = 65183,
	["cost"] = { { "i", 188231, 1 }, },	-- 1xProvis Cache Key
	["groups"] = {
		i(189710, {	-- Pocopoc's Ruby and Platinum Body
			["questID"] = 65474,
		}),
	},
}),

--]]
