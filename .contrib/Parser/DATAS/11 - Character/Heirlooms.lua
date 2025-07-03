-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
-- Heirloom Upgrades are listed here as they are 'filled' on load in game with all possible Upgrade level groups via Heirlooms.lua:CacheHeirlooms()
root(ROOTS.Character, n(HEIRLOOMS, {
	n(ACHIEVEMENTS, {
		ach(9909, {	-- Heirloom Hoarder (35)
			i(122718, {	-- Clinking Present
				i(120968),	-- Chauffered Chopper (H)
				i(122703),	-- Chauffered Chopper (A)
			}),
		}),
		ach(9908),	-- Ready for Powerleveling (15)
		ach(9906),	-- Alt-ernative Lifestyle (5)
		ach(9911),	-- Where's the Mailbox? (1)
	}),
	i(122338),	-- Ancient Heirloom Armor Casing
	i(122339),	-- Ancient Heirloom Scabbard
	i(122340),	-- Timeworn Heirloom Armor Casing
	i(122341),	-- Timeworn Heirloom Scabbard
	i(151614, {	-- Weathered Heirloom Armor Casing
		["timeline"] = { ADDED_7_2_5 },
	}),
	i(151615, {	-- Weathered Heirloom Scabbard
		["timeline"] = { ADDED_7_2_5 },
	}),
	i(167731, {	-- Battle-Hardened Heirloom Armor Casing
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(167732, {	-- Battle-Hardened Heirloom Scabbard
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(187997, {	-- Eternal Heirloom Armor Casing
		["timeline"] = { ADDED_9_1_5 },
	}),
	i(187998, {	-- Eternal Heirloom Scabbard
		["timeline"] = { ADDED_9_1_5 },
	}),
	i(204336, {	-- Awakened Heirloom Armor Casing
		["timeline"] = { ADDED_10_0_7 },
	}),
	i(204337, {	-- Awakened Heirloom Scabbard
		["timeline"] = { ADDED_10_0_7 },
	}),
}))
-- #if NOT ANYCLASSIC
-- Retail has a dynamic category for Heirlooms, no need to have them duplicated here
if true then return end
-- #endif
-- This File needs cleaning / Braghe
root(ROOTS.Character, n(HEIRLOOMS, {
	n(ARMOR, {
		n(BACK, {
			i(62040, {	-- Ancient Bloodmoon Cloak
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122262),	-- Ancient Bloodmoon Cloak
			i(166770),	-- Banded Gilnean Cloak
			i(62039, {	-- Inherited Cape of the Black Baron
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122261),	-- Inherited Cape of the Black Baron
			i(69892, {	-- Ripped Sandstorm Cloak
				["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
			}),
			i(122266),	-- Ripped Sandstorm Cloak
			i(166752),	-- Stone Guard's Bladed Cloak
			i(62038, {	-- Worn Stoneskin Gargoyle Cape
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122260),	-- Worn Stoneskin Gargoyle Cape
		}),
		filter(CLOTH, {
			i(93859, {	-- Bloodstained Dreadmist Mantle
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93860, {	-- Bloodstained Dreadmist Robe
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(44107, {	-- Exquisite Sunderseer Mantle
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122378),	-- Exquisite Sunderseer Mantle
			i(93861, {	-- Prestigious Sunderseer Mantle
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(62029, {	-- Tattered Dreadmist Leggings
				["timeline"] = { CREATED_4_0_3, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122256),	-- Tattered Dreadmist Leggings
			i(42985, {	-- Tattered Dreadmist Mantle
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122360),	-- Tattered Dreadmist Mantle
			i(61958, {	-- Tattered Dreadmist Mask
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122250),	-- Tattered Dreadmist Mask
			i(48691, {	-- Tattered Dreadmist Robe
				["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
			}),
			i(122384),	-- Tattered Dreadmist Robe
		}),
		n(FINGER, {
			i(128173),	-- Admiral Taylor's Loyalty Ring
			i(219325, {	-- Band of Radiant Echoes
				["timeline"] = { ADDED_11_0_0, REMOVED_TWW_LAUNCH },
			}),
			i(128172),	-- Captain Sander's Returned Band
			i(50255, {	-- Dread Pirate Ring
				["timeline"] = { ADDED_3_3_0, REMOVED_6_1_0 },
			}),
			i(122529),	-- Dread Pirate Ring
			i(128169),	-- Signet of the Third Fleet
		}),
		filter(LEATHER, {
			i(44103, {	-- Exceptional Stormshroud Shoulders
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122376),	-- Exceptional Stormshroud Shoulders
			i(44105, {	-- Lasting Feralheart Spaulders
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122377),	-- Lasting Feralheart Spaulders
			i(93865, {	-- Majestic Ironfeather Breastplate
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93864, {	-- Majestic Ironfeather Shoulders
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(48687, {	-- Preened Ironfeather Breastplate
				["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
			}),
			i(122382),	-- Preened Ironfeather Breastplate
			i(42984, {	-- Preened Ironfeather Shoulders
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122359),	-- Preened Ironfeather Shoulders
			i(61942, {	-- Preened Tribal War Feathers
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122249),	-- Preened Tribal War Feathers
			i(62027, {	-- Preened Wildfeather Leggings
				["timeline"] = { CREATED_4_0_3, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122255),	-- Preened Wildfeather Leggings
			i(61937, {	-- Stained Shadowcraft Cap
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122248),	-- Stained Shadowcraft Cap
			i(62026, {	-- Stained Shadowcraft Pants
				["timeline"] = { CREATED_4_0_3, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122254),	-- Stained Shadowcraft Pants
			i(42952, {	-- Stained Shadowcraft Spaulders
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122358),	-- Stained Shadowcraft Spaulders
			i(48689, {	-- Stained Shadowcraft Tunic
				["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
			}),
			i(122383),	-- Stained Shadowcraft Tunic
			i(93867, {	-- Superior Stormshroud Shoulders
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93862, {	-- Supple Shadowcraft Spaulders
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93863, {	-- Supple Shadowcraft Tunic
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93866, {	-- Wild Feralheart Spaulders
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
		}),
		filter(MAIL, {
			i(93886, {	-- Adorned Beastmaster's Mantle
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(44102, {	-- Aged Pauldrons of The Five Thunders
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122375),	-- Aged Pauldrons of The Five Thunders
			i(93876, {	-- Awakened Pauldrons of Elements
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93885, {	-- Awakened Vest of Elements
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(42950, {	-- Champion Herod's Shoulder
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122356),	-- Champion Herod's Shoulders
			i(48677, {	-- Champion's Deathdealer Breastplate
				["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
			}),
			i(122379),	-- Champion's Deathdealer Breastplate
			i(93888, {	-- Furious Deathdealer Breastplate
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93887, {	-- Grand Champion Herod's Shoulder
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(61936, {	-- Mystical Coif of Elements
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122247),	-- Mystical Coif of Elements
			i(62025, {	-- Mystical Kilt of Elements
				["timeline"] = { CREATED_4_0_3, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122253),	-- Mystical Kilt of Elements
			i(42951, {	-- Mystical Pauldrons of Elements
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122357),	-- Mystical Pauldrons of Elements
			i(48683, {	-- Mystical Vest of Elements
				["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
			}),
			i(122380),	-- Mystical Vest of Elements
			i(44101, {	-- Prized Beastmaster's Mantle
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122374),	-- Prized Beastmaster's Mantle
			i(62024, {	-- Tarnished Leggings of Destruction
				["timeline"] = { CREATED_4_0_3, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122252),	-- Tarnished Leggings of Destruction
			i(61935, {	-- Tarnished Raging Berserker's Helm
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122246),	-- Tarnished Raging Berserker's Helm
			i(93889, {	-- Venerated Pauldrons of The Five Thunders
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
		}),
		n(NECK, {
			i(122663),	-- Eternal Amulet of the Redeemed
			i(122667),	-- Eternal Emberfury Talisman
			i(122664),	-- Eternal Horizon Choker
			i(122662),	-- Eternal Talisman of Evasion
			i(122668),	-- Eternal Will of the Martyr
			i(122666),	-- Eternal Woven Ivy Necklace
			i(153130),	-- Man'ari Training Amulet
		}),
		filter(PLATE, {
			i(93892, {	-- Brushed Breastplate of Might
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93893, {	-- Brushed Pauldrons of Might
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(69889, {	-- Burnished Breastplate of Might
				["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
			}),
			i(122387),	-- Burnished Breastplate of Might
			i(69887, {	-- Burnished Helm of Might
				["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
			}),
			i(122263),	-- Burnished Helm of Might
			i(69888, {	-- Burnished Legplates of Might
				["timeline"] = { CREATED_4_1_0, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122264),	-- Burnished Legplates of Might
			i(69890, {	-- Burnished Pauldrons of Might
				["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
			}),
			i(122388),	-- Burnished Pauldrons of Might
			i(93891, {	-- Gleaming Breastplate of Valor
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93890, {	-- Gleaming Spaulders of Valor
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(93894, {	-- Immaculate Lightforge Spaulders
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(48685, {	-- Polished Breastplate of Valor
				["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
			}),
			i(122381),	-- Polished Breastplate of Valor
			i(61931, {	-- Polished Helm of Valor
				["timeline"] = { ADDED_4_0_3, REMOVED_6_1_0 },
			}),
			i(122245),	-- Polished Helm of Valor
			i(62023, {	-- Polished Legplates of Valor
				["timeline"] = { CREATED_4_0_3, ADDED_5_0_4, REMOVED_6_1_0 },
			}),
			i(122251),	-- Polished Legplates of Valor
			i(42949, {	-- Polished Spaulders of Valor
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122355),	-- Polished Spaulders of Valor
			i(127010),	-- Pristine Lightforge Breastplate
			i(127012),	-- Pristine Lightforge Helm
			i(127011),	-- Pristine Lightforge Legplates
			i(44100, {	-- Pristine Lightforge Spaulders
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122373),	-- Pristine Lightforge Spaulders
			i(93895, {	-- Reinforced Stockade Pauldrons
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(44099, {	-- Strengthened Stockade Pauldrons
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122372),	-- Strengthened Stockade Pauldrons

		}),
		n(TRINKET, {
			i(93899, {	-- Bequeathed Insignia of the Alliance
				["timeline"] = { ADDED_5_3_0, REMOVED_6_1_0 },
			}),
			i(93898, {	-- Bequeathed Insignia of the Horde
				["timeline"] = { ADDED_5_3_0, REMOVED_6_1_0 },
			}),
			i(126948),	-- Defending Champion
			i(42992, {	-- Discerning Eye of the Beast
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122362),	-- Discerning Eye of the Beast
			i(93896, {	-- Forceful Hand of Justice
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(133595, {	-- Gronntooth War Horn
				["timeline"] = { ADDED_6_2_3, REMOVED_7_0_3_LAUNCH },
			}),
			i(133597, {	-- Infallible Tracking Charm
				["timeline"] = { ADDED_6_2_3, REMOVED_7_0_3_LAUNCH },
			}),
			i(44098, {	-- Inherited Insignia of the Alliance
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122371, {	-- Inherited Insignia of the Alliance
				["races"] = ALLIANCE_ONLY,
			}),
			i(44097, {	-- Inherited Insignia of the Horde
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122370, {	-- Inherited Insignia of the Horde
				["races"] = HORDE_ONLY,
			}),
			i(93900, {	-- Inherited Mark of Tyranny
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(122530),	-- Inherited Mark of Tyranny
			i(133585, {	-- Judgment of the Naaru
				["timeline"] = { ADDED_6_2_3, REMOVED_7_0_3_LAUNCH },
			}),
			i(133596, {	-- Orb of Voidsight
				["timeline"] = { ADDED_6_2_3, REMOVED_7_0_3_LAUNCH },
			}),
			i(93897, {	-- Piercing Eye of the Beast
				["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
			}),
			i(133598, {	-- Purified Shard of the Third Moon
				["timeline"] = { ADDED_6_2_3, REMOVED_7_0_3_LAUNCH },
			}),
			i(126949),	-- Returning Champion
			i(42991, {	-- Swift Hand of Justice
				["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
			}),
			i(122361),	-- Swift Hand of Justice
			i(128318),	-- Touch of the Void
		}),
	}),
	n(WEAPONS, {
		i(42944, { ["timeline"] = {	-- Balanced Heartseeker
			ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122350),	-- Balanced Heartseeker
		i(93851, {	-- Battle-Forged Truesilver Champion
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93848, {	-- Battle-Hardened Thrash Blade
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(44096, {	-- Battleworn Thrash Blade
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122369),	-- Battleworn Thrash Blade
		i(42943, {	-- Bloodied Arcanite Reaper
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122349),	-- Bloodied Arcanite Reaper
		i(69893, {	-- Bloodsoaked Skullforge Reaver
			["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
		}),
		i(122389),	-- Bloodsoaked Skullforge Reaver
		un(REMOVED_FROM_GAME, i(93858)),	-- Brawler's Bladed Claws
		-- Wouter NOTE: going to fix these after items are actually sourced (aka Brawler's Guild is fixed),
		-- otherwise they'll show up as uncollected on Classic, while not being available yet.
		--i(93858, {	-- Brawler's Razor Claws
		--	["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		--}),
		un(REMOVED_FROM_GAME, i(92948)),	-- Brawler's Razor Claws
		--i(92948, {	-- Brawler's Razor Claws
		--	["timeline"] = { ADDED_5_1_0, REMOVED_6_1_0 },
		--}),
		i(122396, {	-- Brawler's Razor Claws
			["timeline"] = {
				ADDED_5_1_0, REMOVED_6_0_2,
				ADDED_6_1_0, REMOVED_7_0_3,
				ADDED_7_2_0, REMOVED_8_0_1,
				ADDED_8_2_0, REMOVED_9_0_1,
			},
		}),
		i(79131, {	-- Burnished Warden Staff
			["timeline"] = { ADDED_5_0_4, REMOVED_6_1_0 },
		}),
		i(122363),	-- Burnished Warden Staff
		i(42946, {	-- Charmed Ancient Bone Bow
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122352),	-- Charmed Ancient Bone Bow
		i(93847, {	-- Crushing Mass of McGowan
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93852, {	-- Deadly Scarlet Kris
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(42948, {	-- Devout Aurastone Hammer
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122354),	-- Devout Aurastone Hammer
		i(42947, {	-- Dignified Headmaster's Charge
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122353),	-- Dignified Headmaster's Charge
		i(140773),	-- Eagletalon Spear
		i(93849, {	-- Elder Staff of Jordan
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93902, {	-- Flamescarred Draconian Deflector
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(122391),	-- Flamescarred Draconian Deflector
		i(93845, {	-- Gore-Steeped Skullforge Reaver
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(44095, {	-- Grand Staff of Jordan
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122368),	-- Grand Staff of Jordan
		i(93843, {	-- Hardened Arcanite Reaper
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(105674, {	-- Hellscream's Barrier (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104409, {	-- Hellscream's Barrier (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105687, {	-- Hellscream's Barrier (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105672, {	-- Hellscream's Cleaver (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104404, {	-- Hellscream's Cleaver (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105685, {	-- Hellscream's Cleaver (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105679, {	-- Hellscream's Decapitator (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104405, {	-- Hellscream's Decapitator (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105692, {	-- Hellscream's Decapitator (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105678, {	-- Hellscream's Doomblade (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104401, {	-- Hellscream's Doomblade (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105691, {	-- Hellscream's Doomblade (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105673, {	-- Hellscream's Pig Sticker (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104403, {	-- Hellscream's Pig Sticker (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105686, {	-- Hellscream's Pig Sticker (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105671, {	-- Hellscream's Razor (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104400, {	-- Hellscream's Razor (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105684, {	-- Hellscream's Razor (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105680, {	-- Hellscream's Shield Wall (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104407, {	-- Hellscream's Shield Wall (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105693, {	-- Hellscream's Shield Wall (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105676, {	-- Hellscream's Tome of Destruction (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104408, {	-- Hellscream's Tome of Destruction (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105689, {	-- Hellscream's Tome of Destruction (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105677, {	-- Hellscream's War Staff (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104406, {	-- Hellscream's War Staff (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105690, {	-- Hellscream's War Staff (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105670, {	-- Hellscream's Warbow (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104399, {	-- Hellscream's Warbow (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105683, {	-- Hellscream's Warbow (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(105675, {	-- Hellscream's Warmace (Flex [MoP] / Normal [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(104402, {	-- Hellscream's Warmace (Normal [MoP] / Heroic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2, ADDED_10_2_7, REMOVED_MOP_REMIX_END },
		}),
		i(105688, {	-- Hellscream's Warmace (Heroic [MoP] / Mythic [WoD+])
			["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
		}),
		i(93904, {	-- Musty Tome of the Lost
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(122390),	-- Musty Tome of the Lost
		i(93856, {	-- Noble Dal'Rend's Sacred Charge
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93853, {	-- Pious Aurastone Hammer
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93846, {	-- Re-Engineered Lava Dredger
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93844, {	-- Refinished Warden Staff
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(44092, {	-- Reforged Truesilver Champion
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122365),	-- Reforged Truesilver Champion
		i(48718, {	-- Repurposed Lava Dredger
			["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
		}),
		i(122386),	-- Repurposed Lava Dredger
		i(93854, {	-- Scholarly Headmaster's Charge
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(44091, {	-- Sharpened Scarlet Kris
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122364),	-- Sharpened Scarlet Kris
		i(93841, {	-- Smoothbore Dwarven Hand Cannon
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(131733),	-- Spear of Rethu
		i(44094, {	-- The Blessed Hammer of Grace
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122367),	-- The Blessed Hammer of Grace
		i(93850, {	-- The Sanctified Hammer of Grace
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(44093, {	-- Upgraded Dwarven Hand Cannon
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122366),	-- Upgraded Dwarven Hand Cannon
		i(42945, {	-- Venerable Dal'Rend's Sacred Charge
			["timeline"] = { ADDED_3_0_2, REMOVED_6_1_0 },
		}),
		i(122351),	-- Venerable Dal'Rend's Sacred Charge
		i(48716, {	-- Venerable Mass of McGowan
			["timeline"] = { ADDED_3_2_0, REMOVED_6_1_0 },
		}),
		i(122385),	-- Venerable Mass of McGowan
		i(93857, {	-- Vengeful Heartseeker
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93855, {	-- War-Torn Ancient Bone Bow
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(93903, {	-- Weathered Observer's Shield
			["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
		}),
		i(122392),	-- Weathered Observer's Shield
	}),
}));