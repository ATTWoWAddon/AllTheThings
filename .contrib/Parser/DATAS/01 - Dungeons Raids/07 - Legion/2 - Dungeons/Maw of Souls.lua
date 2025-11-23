-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local YMIRON = 1502;
local HARBARON = 1512;
local HELYA = 1663;

------ EncounterToCRS ------
local EncounterToCRS = {
	[YMIRON] = { 96756 },	-- Ymiron, the Fallen King
	[HARBARON] = { 96754 },	-- Harbaron
	[HELYA] = { 96759 },	-- Helya
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[YMIRON] = {
		i(137326),	-- Fragmented Meteorite Whetstone
		i(133644),	-- Memento of Angerboda
		i(133682),	-- Northern Gale
		i(133637),	-- Utgarde Royal Signet
	};
	[HARBARON] = {
		i(133768),	-- Harbaron's Tether
		i(133645),	-- Neglfar Fare
		i(137327),	-- Relinquishing Grip of Helheim
	};
	[HELYA] = {
		i(133636),	-- Brysngamen, Torc of Helheim
		i(137329),	-- Figurehead of the Naglfar
		i(133634),	-- Grasping Tentacle Loop
		i(133684),	-- Screams of the Unworthy
		i(133683),	-- Seacrusted Mist
	};
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot)
local Boss, BossOnly, Difficulty =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(727, {	-- Maw of Souls
		["coord"] = { 52.5, 45.3, STORMHEIM },
		["maps"] = { 706, 707, 708 },
		["lvl"] = 110,
		["groups"] = {
			n(WORLD_QUESTS, {
				q(42780, {	-- Maw of Souls: From Hell's Mouth
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42757, {	-- Maw of Souls: Menace of the Seas
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42788, {	-- Maw of Souls: Return of the Beast
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(YMIRON, {
					i(134199),	-- Biornskin Belt
					i(134217),	-- Bonespeaker Gloves
					i(134179),	-- Skoldiir Breadsplate
					i(134210),	-- Tideskorn Sabatons
					i(139619),	-- Ymiron's Broken Blade (QS!)
				}),
				BossOnly(HARBARON, {
					i(134197),	-- Biornskin Vest
					i(134218),	-- Bonespeaker Leggings
					i(134183),	-- Skoldiir Legguards
					i(134211),	-- Tideskorn Coif
				}),
				BossOnly(HELYA, {
					ach(10807),	-- Maw of Souls
					i(134195),	-- Biornskin Gloves
					i(134221),	-- Bonespeaker Mantle
					i(134184),	-- Skoldiir Shoulderguards
					i(134214),	-- Tideskorn Vests
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_MYTHIC).AddGroups({
				BossOnly(YMIRON, {
					i(133629),	-- Crown of Fallen Kings
					i(133614),	-- Frost-Stricken Cuffs
					i(133616),	-- Legwraps of Unworthy Souls
					i(133625),	-- Shoulderguards of Bane
				}),
				BossOnly(HARBARON, {
					i(137325),	-- Afterlife Manacles
					i(137324),	-- Bleak Underworld Treads
					i(133771),	-- Seacursed Wrap
					i(133611),	-- Soul-Stitched Robes
					i(133632),	-- Void-Touched Wristplates
				}),
				BossOnly(HELYA, {
					i(137331),	-- Belt of Eternal Torment
					i(133618),	-- Kraken Hide Helm
					i(137332),	-- Mantle of the Dark Sea
					i(133608),	-- Mistbound Helarjar Footwraps
					i(137334),	-- Salt-Laden Stompers
					i(137333),	-- Seaworthy Deck Hands
					i(133770),	-- Slack Tide Girdle
					i(133769),	-- Tempered Seaborne Leggings
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				Boss(YMIRON),
				Boss(HARBARON),
				Boss(HELYA),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(HELYA, {
					ach(10808),	-- Heroic: Maw of Souls
					i(137848),	-- Design: Blessed Dawnlight Medallion [Rank 3] (RECIPE!)
					-- i(137899),	-- Pattern: Dreadleather Jerkin [Rank 3] (RECIPE!) (Not confirmed)
					i(127932),	-- Recipe: Flask of the Countless Armies [Rank 2] (RECIPE!)
					i(136696),	-- Plans: Terrorspike (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				Boss(YMIRON, {
					i(133629),	-- Crown of Fallen Kings
					i(133614),	-- Frost-Stricken Cuffs
					i(133616),	-- Legwraps of Unworthy Souls
					i(133625),	-- Shoulderguards of Bane
				}),
				Boss(HARBARON, {
					i(137325),	-- Afterlife Manacles
					i(137324),	-- Bleak Underworld Treads
					i(133771),	-- Seacursed Wrap
					i(133611),	-- Soul-Stitched Robes
					i(133632),	-- Void-Touched Wristplates
				}),
				Boss(HELYA, {
					i(137331),	-- Belt of Eternal Torment
					i(133618),	-- Kraken Hide Helm
					i(137332),	-- Mantle of the Dark Sea
					i(133608),	-- Mistbound Helarjar Footwraps
					i(137334),	-- Salt-Laden Stompers
					i(137333),	-- Seaworthy Deck Hands
					i(133770),	-- Slack Tide Girdle
					i(133769),	-- Tempered Seaborne Leggings
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MYTHIC).AddGroups({
				Boss(YMIRON, {
					ach(10413, {	-- Instant Karma
						["crs"] = { 98246 },	-- Risen Warrior
					}),
				}),
				Boss(HARBARON, {
					ach(10411, {	-- Helheim Hath No Fury
						["description"] = "This is a speed-run style achievement. You must get to and kill Harbaron in under 3 minutes and 30 seconds.",
					}),
				}),
				Boss(HELYA, {
					ach(10809),	-- Mythic: Maw of Souls
					ach(10863),	-- Mythic: Maw of Souls Guild Run
					ach(10412, {	-- Poor Unfortunate Souls
						["description"] = "Absorb the soul at the beginning of Blackrook Hold, clear the dungeon, then clear Maw of Souls. You must not die at all through both dungeons.\n\nWARNING: You must do this with a group of 5 players for the buffs to upgrade after each boss kill.",
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- Black Rook Hold
						["crs"] = { 98806 },	-- Soul Essence
						["groups"] = { i(140323) },	-- Lagan (PET!)
					}),
					i(137899),	-- Pattern: Dreadleather Jerkin [Rank 3] (RECIPE!)
				}),
			}),
		},
	}),
}));
