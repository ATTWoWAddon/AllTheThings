---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(KARESH, {
		n(RARES, sharedData({
			["isDaily"] = true,
		},{
			n(232098, {	-- "Chowdar" <Escaped Auction Parcel #8675308>
				["coords"] = {	-- Runs between the coordinates
					{ 81.9, 75.6, KARESH_TAZAVESH },
					{ 76.5, 76.8, KARESH_TAZAVESH },
					{ 72.8, 84.2, KARESH_TAZAVESH },
				},
				["questID"] = 90587,
				["groups"] = {
					i(242323),	-- Chowdar's Favorite Ribbon (TOY!)
					i(239477),	-- Reshii Brute's Epaulettes
					i(239455),	-- Reshii Magi's Bands
					i(239460),	-- Reshii Scout's Breeches
				},
			}),
			n(241956, {	-- Arcana-Monger So'zer
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 33.6, 36.9, KARESH_TAZAVESH },
				["questID"] = 90696,
				["groups"] = {
					i(239474),	-- Reshii Brute's Handguards
					i(239456),	-- Reshii Scout's Jerkin
					i(239467),	-- Reshii Skirmisher's Cowl
				},
			}),
			n(238540, {	-- Grubber
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 71.2, 57.2, KARESH_TAZAVESH },
				["isDaily"] = IGNORED_VALUE,
				["isWeekly"] = true,
				["questID"] = 90698,
				["provider"] = { "o", 517436 },	-- Vignette
				["groups"] = {
					i(239478),	-- Reshii Brute's Greatbelt
					i(239454),	-- Reshii Magi's Cord
					i(246064),	-- Reshii Magi's Pendant
					i(239463),	-- Reshii Scout's Bracers
					i(239465),	-- Reshii Skirmisher's Boots
					i(239469),	-- Reshii Skirmisher's Pauldrons
				},
			}),
			n(245998, {	-- Heka'tamos <the Elemental Disjunction>
				["description"] = "You need to interract with Spectral Lantern, Dewminder, Earthy Succulent, and Windcatcher inside The Oasis. Their positions are marked on the minimap.\nOnce you have obtained the buffs, you can summon Heka'tamos at the Brazier of Elemental Union near his spawn point.",
				["coords"] = {
					{ 75.2, 31.0, KARESH },
				},
				["crs"] = {
					246163,	-- Heka'tamos [Vignette]
				},
				["questID"] = 91276,
				["groups"] = {
					i(245272),	-- Heka'Tarnos, Bringer of Discord (PET!)
					i(246065),	-- Reshii Magi's Band
					i(246064),	-- Reshii Magi's Pendant
				},
			}),
			n(238536, {	-- Hollowbane
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 48.4, 16.9, KARESH },
				["questID"] = 90689,
				["groups"] = {
					i(239477),	-- Reshii Brute's Epaulettes
					i(239473),	-- Reshii Brute's Sollerets
					i(239462),	-- Reshii Scout's Belt
					i(239471),	-- Reshii Skirmisher's Armguards
				},
			}),
			n(231229, {	-- Korgoth the Hungerer
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: The Oasis'.",
				["coord"] = { 71.5, 27.4, KARESH },
				["crs"] = { 231232 },	-- Devourer Attack (Vignette)
				["questID"] = 91309,
				["isDaily"] = IGNORED_VALUE,
				["isWeekly"] = true,
				["groups"] = {
					i(232467, {	-- Crystallized Anima (QS!)
						["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in quest obtained from this item unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
					}),
					q(91286, { -- -- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: The Oasis' (84993)
						["name"] = "Devoured Energy-Pod Devourer Attack: The Oasis",
						["isWeekly"] = true,
						["groups"] = {
							i(246240),	-- Devoured Energy-Pod
						},
					}),
					i(239475),	-- Reshii Brute's Helmet
					i(240116),	-- Reshii Brute's Longsword
					i(240118),	-- Reshii Brute's Spear
					i(240115),	-- Reshii Brute's Warmace
					i(240117),	-- Reshii Magi's Wand
					i(240111),	-- Reshii Skirmisher's Axe
					i(240114),	-- Reshii Skirmisher's Morningstar
				},
			}),
			n(245997, {	-- Malek'ta <The Jaws of Oblivion>
				["description"] = "Malek'ta is burrowed under the ground. Jump around to lure it out.",
				["coord"] = { 54.1, 58.8, KARESH },
				["questID"] = 91275,
				["groups"] = {
					i(245214),	-- Palek'ti, the Mouth of Nothingness (PET!)
					i(240169),	-- Reshii Magi's Amulet
					i(240168),	-- Reshii Magi's Seal
				},
			}),
			n(234970, {	-- Miasmawrath
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: Eco-dome: Primus'.",
				["coord"] = { 50.6, 54.1, KARESH },
				["crs"] = { 234967 },	-- Soroth Miasmawrath (Vignette)
				["questID"] = 91310,
				["isDaily"] = IGNORED_VALUE,
				["isWeekly"] = true,
				["groups"] = {
					i(238663, {	-- Crystallized Anima (QS!)
						["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in quest obtained from this item unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
					}),
					q(91287, { -- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: Eco-dome: Primus' (86447)
						["name"] = "Devoured Energy-Pod Devourer Attack: Eco-dome Primus",
						["isWeekly"] = true,
						["groups"] = {
							i(246240),	-- Devoured Energy-Pod
						},
					}),
					i(240121),	-- Reshii Brute's Barrier
					i(240116),	-- Reshii Brute's Longsword
					i(240118),	-- Reshii Brute's Spear
					i(240113),	-- Reshii Magi's Dagger
					i(240117),	-- Reshii Magi's Wand
					i(240112),	-- Reshii Scout's Blade
					i(240111),	-- Reshii Skirmisher's Axe
					i(240119),	-- Reshii Skirmisher's Staff
				},
			}),
			n(235422, {	-- Phase-Thief Tezra
				-- ["coord"] = { x, y, KARESH },
				-- ["questID"] = ,
			}),
			n(241920, {	-- Purple Peat
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 42.5, 57.5, KARESH },
				["questID"] = 90692,
				["isDaily"] = IGNORED_VALUE,
				["isWeekly"] = true,
				["groups"] = {
					i(239472),	-- Reshii Brute's Breastplate
					i(240168),	-- Reshii Magi's Seal
					i(239448),	-- Reshii Magi's Vestments
					i(239460),	-- Reshii Scout's Breeches
					i(239459),	-- Reshii Scout's Hood
					i(239466),	-- Reshii Skirmisher's Gauntlets
				},
			}),
			n(238135, {	-- Shatterpulse
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 49.2, 28.2, KARESH },
				["questID"] = 90687,
				["groups"] = {
					i(239452),	-- Reshii Magi's Leggings
				},
			}),
			n(235087, {	-- The Harvester
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: The Atrium'.",
				["coord"] = { 49.5, 64.2, KARESH },
				["questID"] = 91311,
				["isDaily"] = IGNORED_VALUE,
				["isWeekly"] = true,
				["groups"] = {
					i(238664, {	-- Crystallized Anima (QS!)
						["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in quest obtained from this item unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
					}),
					q(91289, { -- -- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: The Atrium' (86464)
						["name"] = "Devoured Energy-Pod Devourer Attack: The Atrium",
						["isWeekly"] = true,
						["groups"] = {
							i(246240),	-- Devoured Energy-Pod
						},
					}),
					i(240121),	-- Reshii Brute's Barrier
					i(240118),	-- Reshii Brute's Spear
					i(240115),	-- Reshii Brute's Warmace
					i(240113),	-- Reshii Magi's Dagger
					i(240120),	-- Reshii Magi's Lantern
					i(240117),	-- Reshii Magi's Wand
					i(240112),	-- Reshii Scout's Blade
					i(240111),	-- Reshii Skirmisher's Axe
					i(240114),	-- Reshii Skirmisher's Morningstar
					i(240119),	-- Reshii Skirmisher's Staff
				},
			}),
			n(235104, {	-- The Wallbreaker
				["description"] = "Rare can be summoned and killed only during the 'Devourer Attack: Tazavesh'.",
				["coord"] = { 27.5, 72.3, KARESH_TAZAVESH },
				["crs"] = { 235102 },	-- Devourer Attack 4 (Vignette)
				["questID"] = 91312,
				["isDaily"] = IGNORED_VALUE,
				["isWeekly"] = true,
				["groups"] = {
					i(238665, {	-- Crystallized Anima (QS!)
						["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in quest obtained from this item unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
					}),
					q(91290, { -- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: Tazavesh' (86465)
						["name"] = "Devoured Energy-Pod Devourer Attack: Tazavesh",
						["isWeekly"] = true,
						["groups"] = {
							i(246240),	-- Devoured Energy-Pod
						},
					}),
					i(240121),	-- Reshii Brute's Barrier
					i(240116),	-- Reshii Brute's Longsword
					i(240118),	-- Reshii Brute's Spear
					i(240115),	-- Reshii Brute's Warmace
					i(240113),	-- Reshii Magi's Dagger
					i(240120),	-- Reshii Magi's Lantern
					i(240112),	-- Reshii Scout's Blade
					i(240111),	-- Reshii Skirmisher's Axe
					i(240114),	-- Reshii Skirmisher's Morningstar
					i(240119),	-- Reshii Skirmisher's Staff
				},
			}),
			n(238384, {	-- Xy'vox the Twisted
				["description"] = "Rare can be summoned and killed only when someone is doing a Warrant quest.",
				["coord"] = { 31.2, 57.8, KARESH },
				["questID"] = 90694,
				["isWeekly"] = true,
				["groups"] = {
					i(239479),	-- Reshii Brute's Vambraces
					i(246065),	-- Reshii Magi's Band
					i(239461),	-- Reshii Scout's Shoulderpads
					i(239457),	-- Reshii Scout's Soles
					i(239470),	-- Reshii Skirmisher's Sash
				},
			}),
		})),
		n(REWARDS, {
			i(246159, {	-- Translocated Gorger (MOUNT!)
				["description"] = "|cff1eff00Devoured Energy-Pods|r can be obtained by killing Rare Elite Bosses of the 'Devourer Attacks'\n1 Energy-Pod can be obtained per Rare, Warband, and Week.",
				["cost"] = {{ "i", 246240, 20 }},	-- Devoured Energy-Pod
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(RARES, {
				q(90697, {	-- Weekly reputation: "Arcana-Monger So'zer"
					["name"] = "Arcana-Monger So'zer weekly reputation obtained.",
				}),
				q(90676, {	-- Weekly reputation: "Chowdar"
					["name"] = "Chowdar weekly reputation obtained.",
				}),
				q(90699, {	-- Weekly reputation: Grubber
					["name"] = "Grubber weekly reputation obtained.",
				}),
				q(91422, {	-- Weekly reputation: Heka'tamos
					["name"] = "Heka'tamos weekly reputation obtained.",
				}),
				q(90691, {	-- Weekly reputation: Hollowbane
					["name"] = "Hollowbane weekly reputation obtained.",
				}),
				q(91433, {	-- Weekly reputation: Korgoth the Hungerer
					["name"] = "Korgoth the Hungerer weekly reputation obtained.",
				}),
				q(91421, {	-- Weekly reputation: Malek'ta
					["name"] = "Malek'ta weekly reputation obtained.",
				}),
				q(91434, {	-- Weekly reputation: Miasmawrath
					["name"] = "Miasmawrath weekly reputation obtained.",
				}),
				q(90693, {	-- Weekly reputation: Purple Peat (TODO: swap with rare questID if wrong)
					["name"] = "Purple Peat weekly reputation obtained.",
				}),
				q(90688, {	-- Weekly reputation: Shatterpulse (TODO: swap with rare questID if wrong)
					["name"] = "Shatterpulse weekly reputation obtained.",
				}),
				q(91435, {	-- Weekly reputation: The Harvester
					["name"] = "The Harvester weekly reputation obtained.",
				}),
				q(91436, {	-- Weekly reputation: The Wallbreaker
					["name"] = "The Wallbreaker weekly reputation obtained.",
				}),
				q(90695, {	-- Weekly reputation: Xy'vox the Twisted (TODO: swap with rare questID if wrong)
					["name"] = "Xy'vox the Twisted weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
