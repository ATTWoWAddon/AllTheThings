-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["lvl"] = 100,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(9423, {	-- Goliaths of Gorgrond
					crit(25767, {	-- Tarlna the Ageless
						["_quests"] = { 37462 },
					}),
					crit(25768, {	-- Drov the Ruiner
						["_quests"] = { 37460 },
					}),
				}),
				ach(9418, {	-- Goliaths of Gorgrond Guild Run
					crit(25769, {	-- Tarlna the Ageless
						["_quests"] = { 37462 },
					}),
					crit(25770, {	-- Drov the Ruiner
						["_quests"] = { 37460 },
					}),
				}),
			}),
			e(1291, {	-- Drov the Ruiner
				["creatureID"] = 81252,	-- Drov the Ruiner
				["coord"] = { 44.1, 39.9, GORGROND },
				["questID"] = 37460,
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(120086),	-- Bone Charm Chain
					i(120084),	-- Braided Magnaron Plait
					i(120087),	-- Drov's Durable Gorget
					i(120083),	-- Earthcaller's Charm
					i(120085),	-- Loop of Beaded Mane
					i(115427),	-- Chainhoof Grips
					i(115428),	-- Gauntlets of Impenetrability
					i(115426),	-- Grips of Natural Fury
					i(115425),	-- Quadripedal Grips
					i(115429),	-- Belt of Singing Hooves
					i(115431),	-- Chain of Natural Fury
					i(115430),	-- Cord of Ruination
					i(115432),	-- Waistplate of Bladed Force
				},
			}),
			e(1262, {	-- Rukhmar
				["creatureID"] = 83746,	-- Rukhmar
				["coord"] = { 37.0, 39.3, SPIRES_OF_ARAK },
				["questID"] = 37464,
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					ach(9424),	-- Rukhmar Guild Run
					ach(9425),	-- So Grossly Incandescent
					i(116771),	-- Solar Spirehawk (MOUNT!)
					TempForceMisc(i(127775, {	-- Gemcutter Module: Stamina
						["requireSkill"] = JEWELCRAFTING,
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
					})),
					i(115434),	-- Down-Lined Leggings
					i(115435),	-- Leggings of Flowing Feathers
					i(115436),	-- Phoenixfire Legplates
					i(115433),	-- Solarflame Legwraps
					i(120111),	-- Featherflame Sandals
					i(120112),	-- Phoenix-Rider Boots
					i(120113),	-- Talongrip Spurs
					i(120114),	-- Wing-Forged Greatboots
					i(115440),	-- Burning Beak Band
					i(115441),	-- Callie's Charred Seal
					i(115437),	-- Fire Eye Ring
					i(115439),	-- Firemender Seal
					i(115438),	-- Signet of Burning Truths
				},
			}),
			e(1452, {	-- Supreme Lord Kazzak
				["creatureID"] = 94015,	-- Supreme Lord Kazzak
				["coord"] = { 47.5, 22.1, TANAAN_JUNGLE },
				["questID"] = 39380,
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					ach(10175),	-- Kazzak Guild Run
					ach(10071),	-- The Legion Will NOT Conquer All
					i(127976),	-- Choker of Reciprocity
					i(127977),	-- Insightful Void-Link Chain
					i(127978),	-- Necklace of Flowing Light
					i(127979),	-- Studded Choker of the Accursed
					i(127980),	-- Void-Sealed Gorget
					i(127974),	-- Drape of the Doomguard
					i(127971),	-- Gossamer Felscorched Scarf
					i(127975),	-- Marked Cloak of Command
					i(127973),	-- Nether-Touched Cloak
					i(127972),	-- Spellcloak of Suramar
					i(127981),	-- Bracers of Perfect Discomfort
					i(127983),	-- Supreme Felchain Bracers
					i(127982),	-- Terrorweave Wristwraps
					i(127984),	-- Wristclasps of Righteous Reckoning
					i(124545),	-- Chipped Soul Prism
					i(124546),	-- Mark of Supreme Doom
				},
			}),
			e(1211, {	-- Tarlna the Ageless
				["creatureID"] = 81535,	-- Tarlna the Ageless
				["coord"] = { 47.0, 86.7, GORGROND },
				["questID"] = 37462,
				["isWeekly"] = true,
				["isRaid"] = true,
				["groups"] = {
					i(120089),	-- Chestguard of Rejuvenation
					i(120090),	-- Falling Leaf Breastplate
					i(120091),	-- Robes of the Ageless
					i(120088),	-- Witherleaf Chestguard
					i(115427),	-- Chainhoof Grips
					i(115428),	-- Gauntlets of Impenetrability
					i(115426),	-- Grips of Natural Fury
					i(115425),	-- Quadripedal Grips
					i(115429),	-- Belt of Singing Hooves
					i(115431),	-- Chain of Natural Fury
					i(115430),	-- Cord of Ruination
					i(115432),	-- Waistplate of Bladed Force
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	m(GORGROND, {
		n(WORLD_BOSSES, {
			q(37675),	-- Short-Supply Reward - Tarlna the Ageless bonus roll & Drov the Ruiner bonus roll
			q(37673),	-- Short-Supply Reward - Drov the Ruiner bonus roll
		}),
	}),
	m(SPIRES_OF_ARAK, {
		n(WORLD_BOSSES, {
			q(37672),	-- Short-Supply Reward - Rukhmar bonus roll
		}),
	}),
	m(TANAAN_JUNGLE, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_0 } }, {
		n(WORLD_BOSSES, {
			q(33069),	-- REUSEME - Supreme Lord Kazzak bonus roll
		}),
	})),
})));
