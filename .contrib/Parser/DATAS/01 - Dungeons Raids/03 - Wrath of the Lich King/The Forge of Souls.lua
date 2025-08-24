-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local BRONJAHM = 615;
local DEVOURER = 616;

------ EncounterToCRS ------
local EncounterToCRS = {
	[BRONJAHM] = { 36497 },	-- Bronjahm
	[DEVOURER] = { 36502 },	-- Devourer of Souls
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_FOUR, bubbleDown({ ["timeline"] = { ADDED_3_3_0 } }, {
	inst(280, {	-- The Forge of Souls
		["mapID"] = THE_FORGE_OF_SOULS,
		["coord"] = { 52.3, 89.3, ICECROWN },
		["lvl"] = lvlsquish(78, 78, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4516, {	-- The Forge of Souls
					crit(13315, {	-- Bronjahm
						["_encounter"] = { 615, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(13316, {	-- Devourer of Souls
						["_encounter"] = { 616, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
				}),
				ach(4519, {	-- Heroic: The Forge of Souls
					crit(13167, {	-- Bronjahm
						["_encounter"] = { 615, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(13168, {	-- Devourer of Souls
						["_encounter"] = { 616, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(24499, {	-- Echoes of Tortured Souls (A)
					["sourceQuest"] = 24510,	-- Inside the Frozen Citadel (A)
					["qg"] = 37597,	-- Lady Jaina Proudmoore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Bronjahm slain
							["provider"] = { "n", 36497 },	-- Bronjahm <Godfather of Souls>
						}),
						objective(2, {	-- 0/1 Devourer of Souls slain
							["provider"] = { "n", 36502 },	-- Devourer of Souls
						}),
					},
				}),
				q(24511, {	-- Echoes of Tortured Souls (H)
					["sourceQuest"] = 24506,	-- Inside the Frozen Citadel (H)
					["qg"] = 37596,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Bronjahm slain
							["provider"] = { "n", 36497 },	-- Bronjahm <Godfather of Souls>
						}),
						objective(2, {	-- 0/1 Devourer of Souls slain
							["provider"] = { "n", 36502 },	-- Devourer of Souls
						}),
					},
				}),
				q(24510, {	-- Inside the Frozen Citadel (A)
					["qg"] = 37776,	-- Apprentice Nelphi <Kirin Tor>
					["coords"] = {
						{ 46.0, 68.1, NORTHREND_DALARAN },
						{ 46.1, 76.8, NORTHREND_DALARAN },
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24506, {	-- Inside the Frozen Citadel (H)
					["qg"] = 37780,	-- Dark Ranger Vorel
					["coord"] = { 51.3, 27.3, NORTHREND_DALARAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24683, {	-- The Pit of Saron (A)
					["sourceQuest"] = 24499,	-- Echoes of Tortured Souls (A)
					["qg"] = 38160,	-- Lady Jaina Proudmoore
					["maps"] = { PIT_OF_SARON },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
				q(24682, {	-- The Pit of Saron (H)
					["sourceQuest"] = 24511,	-- Echoes of Tortured Souls (H)
					["qg"] = 38161,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["maps"] = { PIT_OF_SARON },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(78, 78, 25),
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(49852),	-- Coffin Nail
					i(49854),	-- Mantle of Tattered Feathers
					i(49855),	-- Plated Grips of Korth'azz
					i(49853),	-- Titanium Links of Lore
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(BRONJAHM, {
					i(49785),	-- Bewildering Shoulderpads
					i(49788),	-- Cold Sweat Grips
					i(50197),	-- Eyes of Bewilderment
					i(50196),	-- Love's Prisoner
					i(49783),	-- Lucky Old Sun
					i(49784),	-- Minister's Number One Legplates
					i(50191),	-- Nighttime
					i(50316),	-- Papa's Brand New Bag
					i(50317),	-- Papa's New Bag
					i(49786),	-- Robes of the Cheating Heart
					i(49787),	-- Seven Stormy Mornings
					i(50193),	-- Very Fashionable Shoulders
					i(50194),	-- Weeping Gauntlets
				}),
				BossOnly(DEVOURER, {
					i(49792),	-- Accursed Crawling Cape
					i(50211),	-- Arcane Loops of Anger
					i(50207),	-- Black Spire Sabatons
					i(49790),	-- Blood Boil Lancet
					i(50203),	-- Blood Weeper
					i(49797),	-- Brace Guards of the Starless Night
					i(49799),	-- Coil of Missing Gems
					i(49796),	-- Essence of Anger
					i(50212),	-- Essence of Desire
					i(50209),	-- Essence of Suffering
					i(50206),	-- Frayed Scoundrel's Cap
					i(49789),	-- Heartshiver
					i(50214),	-- Helm of the Spirit Shock
					i(49794),	-- Legplates of Frozen Granite
					i(49791),	-- Lost Reliquary Chestguard
					i(50213),	-- Mord'rethar Robes
					i(50198),	-- Needle-Encrusted Scorpion
					i(50208),	-- Pauldrons of the Souleater
					i(50215),	-- Recovered Reliquary Boots
					i(50210),	-- Seethe
					i(49795),	-- Sollerets of Suffering
					i(49798),	-- Soul Screaming Boots
					i(49800),	-- Spiteful Signet
					i(49793),	-- Tower of the Mouldering Corpse
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					a(i(50379)),	-- Battered Hilt [A]
					h(i(50380)),	-- Battered Hilt [H]
					i(50318),	-- Ghostly Wristwraps
					i(50315),	-- Seven-Fingered Claws
					i(50319),	-- Unsharpened Ice Razor
				}),
				BossOnly(BRONJAHM, {
					i(50169, {	-- Papa's Brand New Knife
						["timeline"] = { REMOVED_5_0_4 },
					}),
					ach(4522),	-- Soul Power
				}),
				BossOnly(DEVOURER, {
					ach(5112, {	-- Heroic: The Forge of Souls Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					ach(4523),	-- Three Faced
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(49852),	-- Coffin Nail
					i(49854),	-- Mantle of Tattered Feathers
					i(49855),	-- Plated Grips of Korth'azz
					i(49853),	-- Titanium Links of Lore
				}),
				BossOnly(BRONJAHM, {
					i(49785),	-- Bewildering Shoulderpads
					i(49788),	-- Cold Sweat Grips
					i(49783),	-- Lucky Old Sun
					i(49784),	-- Minister's Number One Legplates
					i(50317),	-- Papa's New Bag
					i(49786),	-- Robes of the Cheating Heart
					i(49787),	-- Seven Stormy Mornings
				}),
				BossOnly(DEVOURER, {
					i(49792),	-- Accursed Crawling Cape
					i(49790),	-- Blood Boil Lancet
					i(49797),	-- Brace Guards of the Starless Night
					i(49799),	-- Coil of Missing Gems
					i(49796),	-- Essence of Anger
					i(49789),	-- Heartshiver
					i(49794),	-- Legplates of Frozen Granite
					i(49791),	-- Lost Reliquary Chestguard
					i(49795),	-- Sollerets of Suffering
					i(49798),	-- Soul Screaming Boots
					i(49800),	-- Spiteful Signet
					i(49793),	-- Tower of the Mouldering Corpse
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					a(i(50379)),	-- Battered Hilt [A]
					h(i(50380)),	-- Battered Hilt [H]
					i(50318),	-- Ghostly Wristwraps
					i(50315),	-- Seven-Fingered Claws
					i(50319),	-- Unsharpened Ice Razor
				}),
				BossOnly(BRONJAHM, {
					ach(4522),	-- Soul Power
					i(50197),	-- Eyes of Bewilderment
					i(50196),	-- Love's Prisoner
					i(50191),	-- Nighttime
					i(50169, {	-- Papa's Brand New Knife
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(50316),	-- Papa's Brand New Bag
					i(50193),	-- Very Fashionable Shoulders
					i(50194),	-- Weeping Gauntlets
				}),
				BossOnly(DEVOURER, {
					ach(5112, {	-- Heroic: The Forge of Souls Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					ach(4523),	-- Three Faced
					i(50211),	-- Arcane Loops of Anger
					i(50207),	-- Black Spire Sabatons
					i(50203),	-- Blood Weeper
					i(50212),	-- Essence of Desire
					i(50209),	-- Essence of Suffering
					i(50206),	-- Frayed Scoundrel's Cap
					i(50214),	-- Helm of the Spirit Shock
					i(50213),	-- Mord'rethar Robes
					i(50198),	-- Needle-Encrusted Scorpion
					i(50208),	-- Pauldrons of the Souleater
					i(50215),	-- Recovered Reliquary Boots
					i(50210),	-- Seethe
				}),
			}),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(280, {
		q(35436),	-- The Forge of Souls Reward Quest - Normal completion
		q(35437),	-- The Forge of Souls Reward Quest - Heroic completion
	}),
})));
