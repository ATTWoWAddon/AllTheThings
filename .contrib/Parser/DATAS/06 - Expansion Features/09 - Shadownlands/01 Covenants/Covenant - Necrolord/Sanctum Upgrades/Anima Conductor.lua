-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local GRATEFUL_CURRENCY = currency(GRATEFUL);
local AMALGAMTED_FORWORNS_JOURNAL = i(184298);
local TEMPERED_BONEPLASTE_WAISTGUARD = i(184291);
local GIEGER = n(162741, {	-- Gieger <Experimental Construct>
	["description"] = "A member of the |cFF40bf40Necrolord Covenant|r must channel anima to the House of Constructs to summon him.",
	["questID"] = 58872,
	["isDaily"] = true,
	["coord"] = { 31.4, 35.4, MALDRAXXUS },
	["cr"] = 162815,	-- Final Thread
	["g"] = {
		i(182080),	-- Predatory Plagueroc (MOUNT!)
		AMALGAMTED_FORWORNS_JOURNAL,
		i(183754),	-- Stitchflesh's Design Notes
	},
});
local SABRIEL = n(168147, {	-- Sabriel the Bonecleaver
	["description"] = "Can be killed and looted by any Covenant, but a member of the |cFF40bf40Necrolord Covenant|r must channel anima to the Theater of Pain and pick up the daily quest |cFF349cffSpoiling For A Fight|r to add Sabriel to the arena's rotation.",
	["isDaily"] = true,
	["questID"] = 58784,
	["coord"] = { 50.4, 48.2, MALDRAXXUS },
	["crs"] = { 168148 },	-- Drolkrad
	["g"] = {
		i(181815),	-- Armored Bonehoof Tauralus (MOUNT!)
		TEMPERED_BONEPLASTE_WAISTGUARD,
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NEC" }, {
	n(NECROLORD, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641396,
			["g"] = {
				n(ANIMA_CONDUCTOR, {
					["icon"] = 3854015,
					["g"] = sharedData({ ["icon"] = 3854015 }, {
						n(REWARDS, {
							["g"] = {
								currency(GRATEFUL, {
									["description"] = "Grateful Offerings can be collected once you have unlocked the Anima Conductor in for your covenant.\n Once unlocked, you can loot them from Covenant Callings (higher Conductor => more Offerings), Patterns Within Patterns Weekly Quest in Zereth Morthis and from special rares & treasures, based on the channeling of your Anima Conductor.",
								}),
							},
						}),
						n(TIER_ONE, {
							n(QUESTS, {
								q(63057, {	-- Restoring Power
									["provider"] = { "n", 161909 },	-- Arkadia Moa
									["coord"] = { 52.4, 38.4, SEAT_OF_THE_PRIMUS },
								}),
								q(60722, {	-- Tower Power
									["sourceQuests"] = { 63057 },	-- Restoring Power
									["provider"] = { "n", 167205 },	-- Yondare Hex
									["coord"] = { 49.0, 36.0, SEAT_OF_THE_PRIMUS },
								}),
							}),
							n(RARES, {
								GIEGER,
							}),
							n(TREASURES, {
								o(355035, {	-- Chosen Runecoffer [Treasure: House of the Chosen]
									["description"] = "Becomes accessible when selecting the Anima Conduit to 'The House of the Chosen'\nRequires clicking the 3 Runes in the area to unlock",
									["questID"] = 61647,
									["isDaily"] = true,
									["coord"] = { 38.0, 65.6, MALDRAXXUS },
									["g"] = {
										o(1278968766, {	-- Rune -- TODO: proper objectID?
											["questID"] = 61648,
											["isDaily"] = true,
										}),
										o(1278968767, {	-- Rune -- TODO: proper objectID?
											["questID"] = 61649,
											["isDaily"] = true,
										}),
										o(1278968768, {	-- Rune -- TODO: proper objectID?
											["questID"] = 61650,
											["isDaily"] = true,
										}),
										i(183622),	-- Grand Runespeaker's Staff
									},
								}),
							}),
						}),
						n(TIER_TWO, {
							n(QUESTS, sharedData({ ["isDaily"] = true }, {
								q(62563, {	-- Back Again!
									["provider"] = { "n", 160523 },	-- Cyrin Smirk
									["coord"] = { 51.4, 16.2, MALDRAXXUS },
								}),
								q(62403, {	-- Boared to Death
									["provider"] = { "n", 167603 },	-- Fixer Bixie
									["coord"] = { 49.0, 36.0, MALDRAXXUS },
									["g"] = {
										i(183620),	-- Bloody Tusks (QI!)
									},
								}),
								q(62390, {	-- Body Count
									["provider"] = { "n", 167603 },	-- Fixer Bixie
									["coord"] = { 49.0, 36.0, MALDRAXXUS },
									["g"] = {
										i(183600),	-- Abomination Parts (QI!)
									},
								}),
								q(62364, {	-- Dire Learning
									["provider"] = { "n", 167603 },	-- Fixer Bixie
									["coord"] = { 49.0, 36.0, MALDRAXXUS },
								}),
								q(62363, {	-- Heavy Lifting
									["provider"] = { "n", 167603 },	-- Fixer Bixie
									["coord"] = { 49.0, 36.0, MALDRAXXUS },
								}),
								q(58211, {	-- Pumped Up
									["provider"] = { "n", 168675 },	-- Varzisk Lidless
									["coord"] = { 51.2, 16.8, MALDRAXXUS },
									["g"] = {
										i(173892),	-- Salvaged Gear (QI!)
										i(173881),	-- Sludge Pump (QI!)
									},
								}),
								q(58260, {	-- Queens and Future Kings
									["provider"] = { "n", 167603 },	-- Fixer Bixie
									["coord"] = { 49.0, 36.0, MALDRAXXUS },
									["g"] = {
										i(173942),	-- Marrowbore Larva (QI!)
									},
								}),
								q(57964, {	-- Revenge Is Easy
									["provider"] = { "n", 160523 },	-- Cyrin Smirk
									["coord"] = { 51.4, 16.2, MALDRAXXUS },
								}),
								q(60482, {	-- See With My Eyes
									["provider"] = { "n", 168675 },	-- Varzisk Lidless
									["coord"] = { 51.2, 16.8, MALDRAXXUS },
									["g"] = {
										i(178992),	-- Hidden Weapons (QI!)
										i(178993),	-- Sightless Vision (QI!)
									},
								}),
								q(60505, {	-- Spider's Lair
									["provider"] = { "n", 168675 },	-- Varzisk Lidless
									["coord"] = { 51.2, 16.8, MALDRAXXUS },
								}),
								q(62362, {	-- Volatile Reactions
									["provider"] = { "n", 167603 },	-- Fixer Bixie
									["coord"] = { 49.0, 36.0, MALDRAXXUS },
									["g"] = {
										i(183436),	-- Animated Catalyst (QI!)
									},
								}),
							})),
							n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
								q(61699, {	-- Not Much to Goo On
									["coord"] = { 66, 66, MALDRAXXUS },
									["g"] = {
										i(177844),	-- Plague Sample (QI!)
									},
								}),
								q(61841, {	-- Not Much to Goo On
									["coord"] = { 66, 66, MALDRAXXUS },
								}),
							})),
						}),
						n(TIER_THREE, {
							n(RARES, {
								q(58454, {	-- Spoiling For A Fight
									["provider"] = { "n", 159830 },	-- Au'narim
									["isDaily"] = true,
									["coord"] = { 53.6, 47.6, MALDRAXXUS },
								}),
								SABRIEL,
							}),
						}),
					}),
				}),
			},
		}),
	}),
})));

for _,t in ipairs({GIEGER,SABRIEL,GRATEFUL_CURRENCY,AMALGAMTED_FORWORNS_JOURNAL,TEMPERED_BONEPLASTE_WAISTGUARD}) do
	t.customCollect = nil;
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NECROLORD, {
		n(SANCTUM_UPGRADES, {
			n(ANIMA_CONDUCTOR, {
				q(61187),	-- Rank 3 Buff - Skeleton Command
				q(61185),	-- Rank 3 Buff - Arctic Flesh
				q(61186),	-- Rank 3 Buff - Primed Maldracite
				q(61588),	-- House of the Chosen
				q(60781),	-- House of Constructs
				q(60774),	-- Theater of Pain
				q(60780),	-- House of Eyes
				q(60782),	-- House of Rituals
				q(60773),	-- House of Plagues
			}),
		}),
	}),
})));