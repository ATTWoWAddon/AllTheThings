---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local SANDWORN_RELIC = 190189;
local function Sym_BrokerItem(...)
	return {
		{"select", "mapID", ZERETH_MORTIS },	-- Select Zereth Mortis
		{"find", "headerID", ZONE_DROPS },		-- Select Zone Drops
		{"pop"},								-- Discard the Header and acquire all of their children.
		{"extract", "itemID"},					-- Only Items!
		{"invtype", ... },
	}
end
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(VENDORS, {
			n(185713, {	-- Hadja
				["coord"] = { 35.2, 65.7, ZERETH_MORTIS },
				["g"] = sharedData({ ["cost"] = { { "c", ANIMA, 500 }, }, }, {
					i(191036, {	-- Broker's Accessory
						["sym"] = {
							{"select", "itemID",
								190389,	-- Broker's Lucky Coin
								190726,	-- Extract of Prodigious Sands
								190374,	-- Gemstone of Prismatic Brilliance
								190390,	-- Protector's Diffusion Implement
								190597,	-- Symbol of the Lupine
								190602,	-- Symbol of the Raptora
								190582,	-- Symbol of the Vombata
							},
						},
					}),
					i(190763, {	-- Broker's Belt
						["sym"] = Sym_BrokerItem("INVTYPE_WAIST"),
					}),
					i(190762, {	-- Broker's Boots
						["sym"] = Sym_BrokerItem("INVTYPE_FEET"),
					}),
					i(190761, {	-- Broker's Bracers
						["sym"] = Sym_BrokerItem("INVTYPE_WRIST"),
					}),
					i(191037, {	-- Broker's Braid
						["sym"] = {
							{"select", "itemID", 188106 }	-- Unfathomable Pendant
						},
					}),
					i(190760, {	-- Broker's Chestpiece
						["sym"] = Sym_BrokerItem("INVTYPE_CHEST", "INVTYPE_ROBE"),
					}),
					i(190759, {	-- Broker's Cloak
						["sym"] = Sym_BrokerItem("INVTYPE_CLOAK"),
					}),
					i(190758, {	-- Broker's Gloves
						["sym"] = Sym_BrokerItem("INVTYPE_HAND"),
					}),
					i(190757, {	-- Broker's Helm
						["sym"] = Sym_BrokerItem("INVTYPE_HEAD"),
					}),
					i(190756, {	-- Broker's Legguards
						["sym"] = Sym_BrokerItem("INVTYPE_LEGS"),
					}),
					i(190764, {	-- Broker's Ring
						["sym"] = {
							{"select", "itemID",
								188053,	-- Abandoned Automa Loop
								188044,	-- Discarded Cartel Al Signet
								188106,	-- Unfathomable Pendant
								188045,	-- Salvaged Viperid Band
							},
						},
					}),
					i(190755, {	-- Broker's Shoulders
						["sym"] = Sym_BrokerItem("INVTYPE_SHOULDER"),
					}),
					i(190741, {	-- Broker's Weaponry
						["sym"] = {
							{"select", "itemID",
								188041,	-- Ageless Spellblade
								188056,	-- Ancient Protector's Pulverizer
								188040,	-- Burnished Arbalest
								188042,	-- Enlightened Dagger
								188043,	-- Eradicator of the Eternal Guard
								188051,	-- Gatewarden's Warglaive
								188039,	-- Harmonic Actuator
								188047,	-- Haven Guard's Cudgel
								188046,	-- Haven Guard's Mace
								188038,	-- Haven Guard's Shield
								188050,	-- Ineffable Spire
								188049,	-- Transcendant Gavel
								188048,	-- Truthseeker's Staff
							},
						},
					}),
				}),
			}),
			n(185587, {	-- Rafiq
				["coord"] = { 60.6, 51, ZERETH_MORTIS },
				["g"] = sharedData({ ["modID"] = 28, ["b"] = 1, }, {
					i(188054, {	-- Antecedent Drape
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188026, {	-- Anthemic Bracers
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188022, {	-- Anthemic Coif
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188019, {	-- Anthemic Cuirass
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188021, {	-- Anthemic Gauntlets
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188020, {	-- Anthemic Greaves
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188023, {	-- Anthemic Legguards
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188025, {	-- Anthemic Links
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188024, {	-- Anthemic Shoulders
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188037, {	-- Choral Amice
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188008, {	-- Choral Handwraps
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188009, {	-- Choral Hood
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188010, {	-- Choral Leggings
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188011, {	-- Choral Sash
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188007, {	-- Choral Slippers
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188006, {	-- Choral Vestments
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188012, {	-- Choral Wraps
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188028, {	-- Harmonium Breastplate
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188030, {	-- Harmonium Gauntlets
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188033, {	-- Harmonium Girdle
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188027, {	-- Harmonium Helm
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188031, {	-- Harmonium Legplates
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188029, {	-- Harmonium Percussive Stompers
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188032, {	-- Harmonium Spaulders
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188034, {	-- Harmonium Vambrace
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188017, {	-- Staccato Belt
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188013, {	-- Staccato Boots
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188018, {	-- Staccato Cuffs
						["cost"] = { { "i", SANDWORN_RELIC, 160 }, },
					}),
					i(188014, {	-- Staccato Grips
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188015, {	-- Staccato Helm
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188016, {	-- Staccato Leggings
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
					i(188036, {	-- Staccato Mantle
						["cost"] = { { "i", SANDWORN_RELIC, 230 }, },
					}),
					i(188035, {	-- Staccato Vest
						["cost"] = { { "i", SANDWORN_RELIC, 300 }, },
					}),
				}),
			}),
			n(187651, {	-- Rendle
				["coord"] = { 34.6, 64, ZERETH_MORTIS },
				["sym"] = {
					{"select", "instanceID", 1190},			-- Castle Nathria
					{"find", "difficultyID", DIFFICULTY.RAID.MULTI.ALL},	-- Legendaries are listed under All Difficulties
					{"extract","runeforgepowerID"},		-- Get all Legendaries
				},
			}),
			n(185092, {	-- Shade of Irik-tu
				["description"] = "Only available while dead.",
				["coord"] = { 34.6, 48.1, ZERETH_MORTIS },
				["g"] = {
					i(189467),	-- Schematic: Ineffable Skitterer
				},
			}),
			n(182257, {	-- Vilo <Enlightened Quartermaster>
				["coord"] = { 34.8, 64.1, ZERETH_MORTIS },
				["g"] = bubbleDownClassicRep(FACTION_THE_ENLIGHTENED, {
					{		-- Neutral
						i(198449, {	-- Pouch of Prodigious Wonders
							["timeline"] = { ADDED_9_2_5 },
						}),
					}, {	-- Friendly
						i(190640, {	-- Font of Ephemeral Power (CI!)
							["cost"] = { { "g", 5000000 } },	-- 500g
							["sym"] = {
								{"select","expansionID",EXPANSION.SL},	-- Select Shadowlands
								{"find","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
							},
						}),
					}, {	-- Honored
						i(191701),	-- Bag of Explored Souls
						i(187750, {	-- Recipe: Crafter's Mark IV (RECIPE!)
							r(359666, {	-- Crafter's Mark IV (RECIPE!)
								["requireSkill"] = ALCHEMY,
							}),
							r(359665, {	-- Crafter's Mark IV (RECIPE!)
								["requireSkill"] = BLACKSMITHING,
							}),
							r(359664, {	-- Crafter's Mark IV (RECIPE!)
								["requireSkill"] = ENGINEERING,
							}),
							r(359663, {	-- Crafter's Mark IV (RECIPE!)
								["requireSkill"] = JEWELCRAFTING,
							}),
							r(359662, {	-- Crafter's Mark IV (RECIPE!)
								["requireSkill"] = LEATHERWORKING,
							}),
							r(359661, {	-- Crafter's Mark IV (RECIPE!)
								["requireSkill"] = TAILORING,
							}),
						}),
						i(187749, {	-- Recipe: Crafter's Mark of the First Ones (RECIPE!)
							r(359673, {	-- Crafter's Mark of the First Ones (RECIPE!)
								["requireSkill"] = ALCHEMY,
							}),
							r(359671, {	-- Crafter's Mark of the First Ones (RECIPE!)
								["requireSkill"] = BLACKSMITHING,
							}),
							r(359674, {	-- Crafter's Mark of the First Ones (RECIPE!)
								["requireSkill"] = ENGINEERING,
							}),
							r(359672, {	-- Crafter's Mark of the First Ones (RECIPE!)
								["requireSkill"] = JEWELCRAFTING,
							}),
							r(359669, {	-- Crafter's Mark of the First Ones (RECIPE!)
								["requireSkill"] = LEATHERWORKING,
							}),
							r(359670, {	-- Crafter's Mark of the First Ones (RECIPE!)
								["requireSkill"] = TAILORING,
							}),
						}),
						i(191781),	-- Vestige of the Devourers
					}, {	-- Revered
						i(187640, {	-- Anointed Protostag (MOUNT!)
							["cost"] = { { "c", ANIMA, 5000 } },
						}),
						i(190956, {	-- Decanter of Untapped Potential (CI!)
							["cost"] = { { "g", 25000000 } },	-- 2500g
							["sym"] = {
								{"select","expansionID",EXPANSION.SL},	-- Select Shadowlands
								{"find","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
							},
						}),
						i(189174),	-- Lens of Focused Intention
						-- Memories
						i(190584),	-- Memory of Unity (DK)
						i(190587),	-- Memory of Unity (DH)
						i(190588),	-- Memory of Unity (DRUID)
						i(199552, { ["timeline"] = { ADDED_10_0_0 } }),	-- Memory of Unity (EVOKER)
						i(190589),	-- Memory of Unity (HUNTER)
						i(190590),	-- Memory of Unity (MAGE)
						i(190591),	-- Memory of Unity (MONK)
						i(190592),	-- Memory of Unity (PALADIN)
						i(190593),	-- Memory of Unity (PRIEST)
						i(190594),	-- Memory of Unity (ROGUE)
						i(190595),	-- Memory of Unity (SHAMAN)
						i(190596),	-- Memory of Unity (WARLOCK)
						i(190598),	-- Memory of Unity (WARRIOR)
						i(187797),	-- Technique: Contract: The Enlightened (RECIPE!)
						i(190379),	-- Technique: Glyph of the Spectral Lupine (RECIPE!)
					}, {	-- Exalted
						i(190237),	-- Broker Translocation Matrix (TOY!)
						i(190384),	-- Eternal Augment Rune
						i(187629, {	-- Heartlight Stone (MOUNT!)
							["cost"] = { { "c", ANIMA, 5000 } },
						}),
						i(190611),	-- Tabard of the Enlightened
					},
				}),
			}),
		}),
	}),
})));