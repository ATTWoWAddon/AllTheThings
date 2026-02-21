-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local KYSTIA = 2679;
local ZAEN = 2680;
local XATHUUX = 2681;
local LITHIEL = 2682;

------ EncounterToCRS ------
local EncounterToCRS = {
	[KYSTIA] = {
		252458,	-- Kystia Manaheart
		234660,	-- Nibbles
	},
	[ZAEN] = { 234649 },	-- Zaen Bladesorrow
	[XATHUUX] = { 234647 },	-- Xathuux the Annihilator <Lithiel's Guardian>
	[LITHIEL] = { 237415 },	-- Lithiel Cinderfury
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	inst(1304, {	-- Murder Row
		["coord"] = { 56.8, 61.1, MAP.MIDNIGHT.SILVERMOON_CITY },
		["maps"] = {
			2433,	-- Murder Row
			2434,	-- Augurs' Terrace
			2435,	-- The Illicit Rain
		},
		["groups"] = {
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KYSTIA, {
					i(251125),	-- Felsoaked Soles
					i(251124),	-- Gauntlets of Fevered Defense
					i(251126),	-- Greathelm of Temptation
					i(250243),	-- Manaheart's Binding Flame
					i(251123),	-- Nibbles' Training Rod
					i(251127),	-- Nibbling Armbands
				}),
				BossOnly(ZAEN, {
					ach(62388),	-- Illicit Rain: Five Stars
					i(251128),	-- Bladesorrow
					i(251130),	-- Breeches of Deft Deals
					i(251129),	-- Counterfeit Clutches
					i(250215),	-- Freightrunner's Flask
					i(251131),	-- Jangling Felpaulets
					i(251133),	-- Overseer's Vambraces
					i(251132),	-- Speakeasy Shroud
				}),
				BossOnly(XATHUUX, {
					i(251135),	-- Fury-fletched Armlets
					i(250228),	-- Resonant Bellowstone
					i(251136),	-- Signet of Snarling Servitude
					i(251137),	-- Tempestuous Sandals
					i(251134),	-- Xathuux's Cleave
				}),
				BossOnly(LITHIEL, {
					ach(41960),	-- Murder Row
					i(256746),	-- Formula: Smuggler's Enchanted Edge (RECIPE!)
					i(256640),	-- Pattern: Row Walker's Insurance  (RECIPE!)
					i(258518),	-- Plans: Murder Row Fishhook (RECIPE!)
					i(258487),	-- Plans: Murder Row Fleet Feet (RECIPE!)
					i(263238),	-- Illicit Long Table (DECOR!)
					i(251138),	-- Cinderfury Shoulderguards
					i(251141),	-- Lithiel's Linked Leggings
					i(251142),	-- Pendant of Malefic Fury
					i(251139),	-- Summoner's Searing Shirt
					i(250255),	-- Unstable Felheart Crystal
					i(251140),	-- Vilefiend's Guise
				}),
				filter(MISC, {
					i(236381),	-- Sargle's Fortune #12
					-- Vednor consumable buff, one per player. Not sure if worth sourcing per npc
					i(237765),	-- Hearthstop Blade
					i(237763),	-- Felstone
					i(235644),	-- Concealed Pistol
					i(236332),	-- Suntouched Special Reserve
					i(237764),	-- Exquisite Painting
					i(253622),	-- Strangely Pleasant Painting (TODO: incase it will be decor in future builds, but trash atm)
					i(253623),	-- Abstract Painting (TODO: incase it will be decor in future builds, but trash atm)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(LITHIEL, {
					ach(41961),	-- Heroic: Murder Row
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				BossOnly(LITHIEL, {
					ach(41962),	-- Mythic: Murder Row
					ach(61617),	-- Mythic: Murder Row Guild Run
				}),
			}),
		},
	})
})));
