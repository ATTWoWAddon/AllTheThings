-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local HEROIC_MODS = {}
local MYTHIC_MODS = {}
-- #IF AFTER 11.1.0
-- #IF BEFORE 11.2.0
-- Blizzard changed the default modID from difficulty to all return the Normal appearance since they made the
-- BFA Dungeon items in TWW:S2 all change appearance based on their upgrade track
-- So we need the proper modIDs to represent the original SourceID's from those difficulties
HEROIC_MODS.modID = 35
HEROIC_MODS.sharedDescription = "Obtained from M+ 6+ Loot, or Upgraded M+ 0-5 Loot"
MYTHIC_MODS.modID = 162
MYTHIC_MODS.sharedDescription = "Obtained from M+ Great Vault @ Myth track, or Upgraded M+ 6+ Loot"
-- #ENDIF
-- #ENDIF
root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	inst(1012, {	-- The MOTHERLODE!!
		["coords"] = {
			{ 39.2, 71.5, ZULDAZAR },	-- Alliance
			{ 44.3, 92.6, DAZARALOR },	-- Horde
		},
		["maps"] = { 1010 },	-- The Motherlode
		["lvl"] = 110,
		["g"] = {
			n(VENDORS, {
				n(140319, {	-- Hobart Grapplehammer
					["description"] = "In the building directly at the end of the first road after entering the dungeon.",
					["g"] = {
						i(161131, {	-- Barely Stable Azerite Reactor
							["cost"] = { { "g", 300000000 } },	-- 30k gold
						}),
					},
				}),
			}),
			n(WORLD_QUESTS, {
				q(52295, {	-- The MOTHERLODE!!: Elementals on the Payroll
					["isWorldQuest"] = true,
				}),
				q(52302, {	-- The MOTHERLODE!!: He's Got Really Big Bombs
					["isWorldQuest"] = true,
				}),
				q(52298, {	-- The MOTHERLODE!!: The Smarts Are In His Horn!
					["isWorldQuest"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				i(168144, {	-- Extremely Precise Vial
					["crs"] = {
						133432,	-- Venture Co. Alchemist
						133430,	-- Venture Co. Mastermind
						140902,	-- Vog'rish, the Ascended
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2109, {	-- Coin-Operated Crowd Pummeler
					["crs"] = { 129214 },	-- Coin-Operated Crowd Pummeler
					["g"] = {
						ig(168153),	-- Coin Return Flipper
					},
				}),
				e(2116, {	-- Mogul Razdunk
					["crs"] = {
						129232,	-- Mogul Razdunk
						132713,	-- Mogul Razdunk
					},
					["g"] = {
						ach(12844),	-- The MOTHERLODE!!
						ig(163708),	-- Ironfoe (Dark Iron Dwarf Quest Item)
						ig(161136, {	-- Azerite Forged Protection Plating
							["description"] = "Seems to require at least 175 BFA Engineering Skill to drop.",
						}),
						ig(161137, {	-- Blast-Fired Electric Servomotor
							["description"] = "Seems to require at least 225 BFA Engineering Skill to drop.",
						}),
						ig(161132, {	-- Crush Resistant Stabilizer
							["description"] = "Seems to require at least 200 BFA Engineering Skill to drop.",
						}),
						ig(161129, {	-- Mecha-Mogul Mk1 Remote Activation Device
							["description"] = "Seems to require at least 250 BFA Engineering Skill to drop.",
							["requireSkill"] = ENGINEERING,
							["cost"] = { { "i", 161138, 1 } },	-- Azerite Inspir-A-Geneering Elixir
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(2109, {	-- Coin-Operated Crowd Pummeler
					["crs"] = { 129214 },	-- Coin-Operated Crowd Pummeler
					["g"] = {
						i(159638),	-- Electro-Arm Bludgeoner
						i(159663),	-- G0-4W4Y Crowd Repeller
						i(158353),	-- Servo-Arm Bindings
						i(159357),	-- Linked Pummeler Grips
						i(155864),	-- Power-Assisted Vicegrips
						i(158350),	-- Rowdy Reveler's Legwraps
						i(159462),	-- Footbomb Championship Ring
					},
				}),
				e(2114, {	-- Azerokk
					["crs"] = { 129227 },	-- Azerokk
					["g"] = {
						i(158357),	-- Bindings of Enraged Earth
						i(158359),	-- Stonefury Vambraces
						i(159231),	-- Mine Rat's Handwarmers
						i(159226),	-- Excavator's Safety Belt
						i(159361),	-- Shalebiter Interlinked Chain
						i(159725),	-- Unscrupulous Geologist's Belt
						i(159336),	-- Mercenary Miner's Boots
						i(159679),	-- Sabatons of Rampaging Elements
						i(159612),	-- Azerokk's Resonating Heart
						i(168133),	-- Unrefined Azerite Geode
						i(168136),	-- Azerokk's Fist
					},
				}),
				e(2115, {	-- Rixxa Fluxflame
					["crs"] = { 129231 },	-- Rixxa Fluxflame
					["g"] = {
						i(159639),	-- P.A.C.I.F.I.S.T.  Mk7
						i(159287),	-- Cloak of Questionable Intent
						i(159240),	-- Rixxa's Sweat-Wicking Cuffs
						i(159305),	-- Corrosive Handler's Gloves
						i(158341),	-- Chemical Blaster's Legguards
						i(159451),	-- Leadplate Leegguards
						i(159235),	-- Deranged Alchemist's Slippers
					},
				}),
				e(2116, {	-- Mogul Razdunk
					["crs"] = {
						129232,	-- Mogul Razdunk
						132713,	-- Mogul Razdunk
					},
					["g"] = {
						i(159641),	-- G3T-00t
						i(158364),	-- High Altitude Turban
						i(159360),	-- Crashguard Spaulders
						i(159232),	-- Exquisitely Aerodynamic Shoulderpads
						i(159415),	-- Skyscorcher Pauldrons
						i(158349),	-- Petticoat of the Self-Stylized Azerite Baron
						i(158307),	-- Shrapnel-Dampening Chestguard
						i(159298),	-- Venture Co. Plenipotentiary Vest
						i(159611),	-- Razdunk's Big Red Button
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, bubbleDownFiltered(HEROIC_MODS,FILTERFUNC_itemID,{
				e(2109, {	-- Coin-Operated Crowd Pummeler
					["crs"] = { 129214 },	-- Coin-Operated Crowd Pummeler
					["g"] = {
						i(159638),	-- Electro-Arm Bludgeoner
						i(159663),	-- G0-4W4Y Crowd Repeller
						i(158353),	-- Servo-Arm Bindings
						i(159357),	-- Linked Pummeler Grips
						i(155864),	-- Power-Assisted Vicegrips
						i(158350),	-- Rowdy Reveler's Legwraps
						i(159462),	-- Footbomb Championship Ring
					},
				}),
				e(2114, {	-- Azerokk
					["crs"] = { 129227 },	-- Azerokk
					["g"] = {
						i(158357),	-- Bindings of Enraged Earth
						i(158359),	-- Stonefury Vambraces
						i(159231),	-- Mine Rat's Handwarmers
						i(159226),	-- Excavator's Safety Belt
						i(159361),	-- Shalebiter Interlinked Chain
						i(159725),	-- Unscrupulous Geologist's Belt
						i(159336),	-- Mercenary Miner's Boots
						i(159679),	-- Sabatons of Rampaging Elements
						i(159612),	-- Azerokk's Resonating Heart
						i(168133),	-- Unrefined Azerite Geode
						i(168136),	-- Azerokk's Fist
					},
				}),
				e(2115, {	-- Rixxa Fluxflame
					["crs"] = { 129231 },	-- Rixxa Fluxflame
					["g"] = {
						i(159639),	-- P.A.C.I.F.I.S.T.  Mk7
						i(159287),	-- Cloak of Questionable Intent
						i(159240),	-- Rixxa's Sweat-Wicking Cuffs
						i(159305),	-- Corrosive Handler's Gloves
						i(158341),	-- Chemical Blaster's Legguards
						i(159451),	-- Leadplate Leegguards
						i(159235),	-- Deranged Alchemist's Slippers
					},
				}),
				e(2116, {	-- Mogul Razdunk
					["crs"] = {
						129232,	-- Mogul Razdunk
						132713,	-- Mogul Razdunk
					},
					["g"] = {
						ach(12845),	-- Heroic: The MOTHERLODE!!
						i(159641),	-- G3T-00t
						i(158364),	-- High Altitude Turban
						i(159360),	-- Crashguard Spaulders
						i(159232),	-- Exquisitely Aerodynamic Shoulderpads
						i(159415),	-- Skyscorcher Pauldrons
						i(158349),	-- Petticoat of the Self-Stylized Azerite Baron
						i(158307),	-- Shrapnel-Dampening Chestguard
						i(159298),	-- Venture Co. Plenipotentiary Vest
						i(159611),	-- Razdunk's Big Red Button
					},
				}),
			})),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
				e(2116, {	-- Mogul Razdunk
					["crs"] = {
						129232,	-- Mogul Razdunk
						132713,	-- Mogul Razdunk
					},
					["g"] = {
						i(235416),	-- Crashguard Spaulders
						i(235418),	-- Exquisitely Aerodynamic Shoulderpads
						i(235419),	-- High Altitude Turban
						i(235420),	-- Petticoat of the Self-Stylized Azerite Baron
						i(235460),	-- Shrapnel-Dampening Chestguard
						i(235415),	-- Skyscorcher Pauldrons
						i(235417),	-- Venture Co. Plenipotentiary Vest
					},
				}),
			})),
			d(DIFFICULTY.DUNGEON.MYTHIC, bubbleDownFiltered(MYTHIC_MODS,FILTERFUNC_itemID,{
				["difficulties"] = { DIFFICULTY.DUNGEON.MYTHIC, DIFFICULTY.DUNGEON.KEYSTONE },
				["g"] = {
					n(ZONE_DROPS, {
						ig(161138, {	-- Azerite Inspir-A-Geneering Elixir
							["description"] = "Seems to require at least 225 BFA Engineering Skill to drop.",
							["requireSkill"] = ENGINEERING,
							["crs"] = {
								133430,	-- Venture Co. Mastermind
								140902,	-- Vog'rish, the Ascended
							},
						}),
					}),
					n(ZONE_DROPS, sharedData({
						["crs"] = {
							136643,	-- Azerite Extractor
							129214,	-- Coin-Operated Crowd Pummeler
							130485,	-- Mechanized Peacekeeper
							136139,	-- Mechanized Peacekeeper
							133463,	-- Venture Co. War Machine
						},
						["requireSkill"] = ENGINEERING,
					},{
						ig(161136, {	-- Azerite Forged Protection Plating
							["description"] = "Seems to require at least 175 BFA Engineering Skill to drop.",
						}),
						ig(161137, {	-- Blast-Fired Electric Servomotor
							["description"] = "Seems to require at least 225 BFA Engineering Skill to drop.",
						}),
						ig(161132, {	-- Crush Resistant Stabilizer
							["description"] = "Seems to require at least 200 BFA Engineering Skill to drop.",
						}),
					})),
					e(2109, {	-- Coin-Operated Crowd Pummeler
						["crs"] = { 129214 },	-- Coin-Operated Crowd Pummeler
						-- TWW Season 2 removed all mythic sources
						["g"] = {
							ach(12855),	-- Pitch Invasion
							i(159638),	-- Electro-Arm Bludgeoner
							i(159663),	-- G0-4W4Y Crowd Repeller
							i(158353),	-- Servo-Arm Bindings
							i(159357),	-- Linked Pummeler Grips
							i(155864),	-- Power-Assisted Vicegrips
							i(158350),	-- Rowdy Reveler's Legwraps
							i(159462),	-- Footbomb Championship Ring
						},
					}),
					e(2114, {	-- Azerokk
						["crs"] = { 129227 },	-- Azerokk
						-- TWW Season 2 removed all mythic sources
						["g"] = {
							i(158357),	-- Bindings of Enraged Earth
							i(158359),	-- Stonefury Vambraces
							i(159231),	-- Mine Rat's Handwarmers
							i(159226),	-- Excavator's Safety Belt
							i(159361),	-- Shalebiter Interlinked Chain
							i(159725),	-- Unscrupulous Geologist's Belt
							i(159336),	-- Mercenary Miner's Boots
							i(159679),	-- Sabatons of Rampaging Elements
							i(159612),	-- Azerokk's Resonating Heart
							i(168133),	-- Unrefined Azerite Geode
							i(168136),	-- Azerokk's Fist
						},
					}),
					e(2115, {	-- Rixxa Fluxflame
						["crs"] = { 129231 },	-- Rixxa Fluxflame
						-- TWW Season 2 removed all mythic sources
						["g"] = {
							i(159639),	-- P.A.C.I.F.I.S.T.  Mk7
							i(159287),	-- Cloak of Questionable Intent
							i(159240),	-- Rixxa's Sweat-Wicking Cuffs
							i(159305),	-- Corrosive Handler's Gloves
							i(158341),	-- Chemical Blaster's Legguards
							i(159451),	-- Leadplate Leegguards
							i(159235),	-- Deranged Alchemist's Slippers
						},
					}),
					e(2116, {	-- Mogul Razdunk
						["crs"] = {
							129232,	-- Mogul Razdunk
							132713,	-- Mogul Razdunk
						},
						-- TWW Season 2 removed all mythic sources
						["g"] = {
							ach(12846),	-- Mythic: The MOTHERELODE!!
							ach(13006),	-- Mythic: The MOTHERLODE!! Guild Run
							ach(12854),	-- Ready for Raiding VI
							i(161135),	-- Schematic: Mecha-Mogul Mk2 (RECIPE!)
							i(159641),	-- G3T-00t
							i(158364),	-- High Altitude Turban
							i(159360),	-- Crashguard Spaulders
							i(159232),	-- Exquisitely Aerodynamic Shoulderpads
							i(159415),	-- Skyscorcher Pauldrons
							i(158349),	-- Petticoat of the Self-Stylized Azerite Baron
							i(158307),	-- Shrapnel-Dampening Chestguard
							i(159298),	-- Venture Co. Plenipotentiary Vest
							i(159611),	-- Razdunk's Big Red Button
						},
					}),
				},
			})),
			n(MYTHIC_PLUS, bubbleDown({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART } }, {
				e(2116, {	-- Mogul Razdunk
					["crs"] = {
						129232,	-- Mogul Razdunk
						132713,	-- Mogul Razdunk
					},
					["g"] = {
						-- Hero Track
						iupgrade(235416, 162, 0, {["modID"] = 35 }),	-- Crashguard Spaulders
						iupgrade(235418, 162, 0, {["modID"] = 35 }),	-- Exquisitely Aerodynamic Shoulderpads
						iupgrade(235419, 162, 0, {["modID"] = 35 }),	-- High Altitude Turban
						iupgrade(235420, 162, 0, {["modID"] = 35 }),	-- Petticoat of the Self-Stylized Azerite Baron
						iupgrade(235460, 162, 0, {["modID"] = 35 }),	-- Shrapnel-Dampening Chestguard
						iupgrade(235415, 162, 0, {["modID"] = 35 }),	-- Skyscorcher Pauldrons
						iupgrade(235417, 162, 0, {["modID"] = 35 }),	-- Venture Co. Plenipotentiary Vest
						-- Myth Track
						-- Hero 5/6 should be enough for sourceID collection, but good luck trying to find exact mod/bonus ID for tooltip
						n(UPGRADE, {
							i(235418, {["modID"] = 162 }),	-- Exquisitely Aerodynamic Shoulderpads
							i(235420, {["modID"] = 162 }),	-- Petticoat of the Self-Stylized Azerite Baron
							i(235419, {["modID"] = 162 }),	-- High Altitude Turban
							i(235417, {["modID"] = 162 }),	-- Venture Co. Plenipotentiary Vest
							i(235416, {["modID"] = 162 }),	-- Crashguard Spaulders
							i(235460, {["modID"] = 162 }),	-- Shrapnel-Dampening Chestguard
							i(235415, {["modID"] = 162 }),	-- Skyscorcher Pauldrons
						}),
					},
				}),
			})),
		},
	}),
})));