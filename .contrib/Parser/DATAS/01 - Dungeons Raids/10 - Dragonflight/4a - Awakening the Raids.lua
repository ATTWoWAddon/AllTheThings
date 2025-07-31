-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SENNARTH = 2482;
local DATHEA = 2502;
local KUROG = 2491;
local DIURNA = 2493;
local RASZAGETH = 2499;

local EXPERIMENTS = 2530;
local RASHOK = 2525;
local ZSKARN = 2532;
local MAGMORAX = 2527;
local NELTHARION = 2523;

local IGIRA = 2554;
local LARODAR = 2553;
local NYMUE = 2556;
local SMOLDERON = 2563;
local TINDRAL = 2565;

------ SlotToCRS ------
local SlotToCRS = {
	HEAD = {
		[RASZAGETH] = { 193909, 189492 },	-- Raszageth the Storm-Eater
		[MAGMORAX] = { 201579 },	-- Magmorax
		[TINDRAL] = { 210601, 209090 },	-- Tindral Sageswift <Seer of Flame>
	},
	SHOULDER = {
		[DIURNA] = { 190245 },	-- Broodkeeper Diurna
		[NELTHARION] = { 203133, 201668 },	-- Echo of Neltharion
		[SMOLDERON] = { 200927 },	-- Smolderon <The Firelord>
	},
	CHEST = {
		[KUROG] = { 181378 },	-- Kurog Grimtotem
		[ZSKARN] = { 202637, 202375 },	-- Zskarn <the Vigilant Steward>
		[NYMUE] = { 206172 },	-- Nymue <Weaver of the Cycle>
	},
	HANDS = {
		[DATHEA] = { 189813 },	-- Dathea, Ascended
		[EXPERIMENTS] = {
			200912,	-- Neldris <Experiment 4>
			200918,	-- Rionthus <Experiment 328>
			200913,	-- Thadrion <Experiment 147>
		},
		[IGIRA] = { 206689, 200926 },	-- Igira the Cruel <Zaqali Elder>
	},
	LEGS = {
		[SENNARTH] = { 187967 },	-- Sennarth, the Cold Breath
		[RASHOK] = { 201320 },	-- Rashok, the Elder
		[LARODAR] = { 208445 },	-- Larodar, Keeper of the Flame
	},
};

------ Tokens ------
local Tokens = {
	HEAD = {
		n(HEAD, {
			i(217324, {	-- Dreadful Decelerating Chronograph
				i(217223),	-- Piercing Gaze of the Risen Nightmare
				i(217228),	-- Screaming Torchfiend's Burning Scowl
				i(217212),	-- Grimhorns of the Sinister Savant
			}),
			i(217325, {	-- Mystic Decelerating Chronograph
				i(217193),	-- Bough of the Autumn Blaze
				i(217183),	-- Stormwing Harrier's Skullmask
				i(217232),	-- Wayward Chronomancer's Chronocap
			}),
			i(217326, {	-- Venerated Decelerating Chronograph
				i(217198),	-- Heartfire Sentinel's Forgehelm
				i(217202),	-- Mask of the Furnace Seraph
				i(217238),	-- Greatwolf Outcast's Jaws
			}),
			i(217327, {	-- Zenith Decelerating Chronograph
				i(217178),	-- Crown of the Awakened
				i(217188),	-- Gaze of the Waking Fist
				i(217208),	-- Lurking Specter's Visage
				i(217218),	-- Thraexhelm of the Onyx Crucible
			}),
		}),
	},
	SHOULDER = {
		n(SHOULDER, {
			i(217332, {	-- Dreadful Synchronous Timestrand
				i(217225),	-- Skewers of the Risen Nightmare
				i(217230),	-- Screaming Torchfiend's Horned Memento
				i(217214),	-- Amice of the Sinister Savant
			}),
			i(217333, {	-- Mystic Synchronous Timestrand
				i(217195),	-- Mantle of the Autumn Blaze
				i(217185),	-- Stormwing Harrier's Pinions
				i(217234),	-- Wayward Chronomancer's Metronomes
			}),
			i(217334, {	-- Venerated Synchronous Timestrand
				i(217200),	-- Heartfire Sentinel's Steelwings
				i(217204),	-- Devotion of the Furnace Seraph
				i(217240),	-- Greatwolf Outcast's Companions
			}),
			i(217335, {	-- Zenith Synchronous Timestrand
				i(217180),	-- Talons of the Awakened
				i(217190),	-- Mantle of the Waking Fist
				i(217210),	-- Lurking Specter's Shoulderblades
				i(217220),	-- Pauldrons of the Onyx Crucible
			}),
		}),
	},
	CHEST = {
		n(CHEST, {
			i(217316, {	-- Dreadful Fleeting Hourglass
				i(217221),	-- Casket of the Risen Nightmare
				i(217226),	-- Screaming Torchfiend's Binding
				i(217215),	-- Cursed Robes of the Sinister Savant
			}),
			i(217317, {	-- Mystic Fleeting Hourglass
				i(217191),	-- Chestroots of the Autumn Blaze
				i(217181),	-- Stormwing Harrier's Cuirass
				i(217235),	-- Wayward Chronomancer's Patchwork
			}),
			i(217318, {	-- Venerated Fleeting Hourglass
				i(217196),	-- Heartfire Sentinel's Brigandine
				i(217205),	-- Command of the Furnace Seraph
				i(217236),	-- Greatwolf Outcast's Harness
			}),
			i(217319, {	-- Zenith Fleeting Hourglass
				i(217176),	-- Hauberk of the Awakened
				i(217186),	-- Chestwrap of the Waking Fist
				i(217206),	-- Lurking Specter's Brigandine
				i(217216),	-- Battlechest of the Onyx Crucible
			}),
		}),
	},
	HANDS = {
		n(HANDS, {
			i(217320, {	-- Dreadful Quickened Bronzestone
				i(217222),	-- Thorns of the Risen Nightmare
				i(217227),	-- Screaming Torchfiend's Grasp
				i(217211),	-- Grips of the Sinister Savant
			}),
			i(217321, {	-- Mystic Quickened Bronzestone
				i(217192),	-- Handguards of the Autumn Blaze
				i(217182),	-- Stormwing Harrier's Handguards
				i(217231),	-- Wayward Chronomancer's Gloves
			}),
			i(217322, {	-- Venerated Quickened Bronzestone
				i(217197),	-- Heartfire Sentinel's Protectors
				i(217201),	-- Grasp of the Furnace Seraph
				i(217237),	-- Greatwolf Outcast's Grips
			}),
			i(217323, {	-- Zenith Quickened Bronzestone
				i(217177),	-- Gauntlets of the Awakened
				i(217187),	-- Palms of the Waking Fist
				i(217207),	-- Lurking Specter's Handgrips
				i(217217),	-- Handguards of the Onyx Crucible
			}),
		}),
	},
	LEGS = {
		n(LEGS, {
			i(217328, {	-- Dreadful Ephemeral Hypersphere
				i(217224),	-- Greaves of the Risen Nightmare
				i(217229),	-- Screaming Torchfiend's Blazewraps
				i(217213),	-- Leggings of the Sinister Savant
			}),
			i(217329, {	-- Mystic Ephemeral Hypersphere
				i(217194),	-- Pants of the Autumn Blaze
				i(217184),	-- Stormwing Harrier's Greaves
				i(217233),	-- Wayward Chronomancer's Pantaloons
			}),
			i(217330, {	-- Venerated Ephemeral Hypersphere
				i(217199),	-- Heartfire Sentinel's Faulds
				i(217203),	-- Breeches of the Furnace Seraph
				i(217239),	-- Greatwolf Outcast's Fur-Lined Kilt
			}),
			i(217331, {	-- Zenith Ephemeral Hypersphere
				i(217179),	-- Legguards of the Awakened
				i(217189),	-- Legguards of the Waking Fist
				i(217209),	-- Lurking Specter's Tights
				i(217219),	-- Legplates of the Onyx Crucible
			}),
		}),
	},
};

------ Helper Functions ------
local UpgradeMapping = {
	-- #IF BEFORE 11.0.2
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
	-- #ELSE
	[DIFFICULTY.RAID.LFR] = IGNORED_VALUE,
	[DIFFICULTY.RAID.NORMAL] = IGNORED_VALUE,
	[DIFFICULTY.RAID.HEROIC] = IGNORED_VALUE,
	-- #ENDIF
}

local BUBBLEDATA = { ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }

local TIER_SLOTS = {
	"HEAD",
	"SHOULDER",
	"CHEST",
	"HANDS",
	"LEGS"
}

for _,SLOT in ipairs(TIER_SLOTS) do
	local InstanceHelper = CreateInstanceHelper(SlotToCRS[SLOT])

	local Difficulty, RawAllBosses = InstanceHelper.Difficulty, InstanceHelper.RawAllBosses
	InstanceHelper.UpgradeMapping = UpgradeMapping
	local cbd = Tokens[SLOT]

	root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown(BUBBLEDATA, {
		header(HEADERS.Achievement, 19574, {
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades(
				RawAllBosses(clone(cbd))
			),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades(
				RawAllBosses(clone(cbd))
			),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades(
				RawAllBosses(clone(cbd))
			),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups(
				RawAllBosses(clone(cbd))
			),
		}),
	})))
end
