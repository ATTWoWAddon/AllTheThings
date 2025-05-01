-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(726, {	-- The Arcway
		["mapID"] = 749,
		["lvl"] = 110,
		["g"] = {
			n(WORLD_QUESTS, {
				q(43639, {	-- The Arcway: Arcanist Down
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(43637, {	-- The Arcway: Clogged Drain
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(43640, {	-- The Arcway: Creeping Suspicions
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(43638, {	-- The Arcway: Silver Serpent
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(43641, {	-- The Arcway: Wandering Plague
					["isWorldQuest"] = true,
					["lvl"] = 110,
					["g"] = {
						i(141053, {	-- Technique: Glyph of Polymorphic Proportions (RECIPE!)
							["description"] = "The rare that drops this glyph is only available during the WQ The Arcway: Wandering Plague.",
							["cr"] = 111057,	-- The Rat King
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				cr(98207, e(1500, {	-- Nal'tira
					i(136969),	-- Tome of Hex: Spider (CI!)
				})),
				cr(98208, e(1501, {	-- Advisor Vandros
					i(137897),	-- Pattern: Dreadleather Gloves [Rank 3] (RECIPE!)
					i(127927),	-- Recipe: Potion of the Old War [Rank 2] (RECIPE!)
					i(137712),	-- Schematic: Tactical Headgun [Rank 3] (RECIPE!)
				})),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				cr(98203, e(1497, {	-- Ivanyr
					i(134269),	-- Arcane Defender's Belt
					i(134501),	-- Crackling Overcharge Chestguard
					i(134526),	-- Gnawed Thumb Ring
					i(134421),	-- Ink-Smudged Handwraps
					i(134298),	-- Ley Dragoon's Stompers
					i(134309),	-- Manawracker Shoulders
					i(134467),	-- Nether Mindsnappers
					i(137398),	-- Portable Manacracker
					i(134280),	-- Swordsinger's Wristguards
					i(137397),	-- Tunnel Trudger Footguards
					i(137399),	-- Ivanyr's Hunger
				})),
				cr(98205, e(1498, {	-- Corstilax
					i(134402),	-- Cape of Rigid Order
					i(137400),	-- Coagulated Nightwell Residue
					i(134424),	-- Collar of Enclosure
					i(134463),	-- Decontaminated Chain Tunic
					i(134522),	-- Detention Wristclamps
					i(134453),	-- Spaulders of Aberrant Inhibition
					i(134488),	-- Stabilized Energy Pendant
					i(137402),	-- Cleansing Isotope
					i(137403),	-- Quarantine Catalyst
				})),
				cr(98206, e(1499, {	-- General Xakal
					i(134449),	-- Bloodclaw Leggings
					i(134373),	-- Felbat Leather Vest
					i(134509),	-- Fists of the Legion
					i(137404),	-- Legwraps of Reverberating Shadows
					i(134387),	-- Mardum Chain Helm
					i(134396),	-- Netherwhisper Slippers
					i(134359),	-- Portalguard Legplates
					i(137405),	-- Remorseless Chain Armbands
					i(134533),	-- Ring of Looming Menace
					i(137406),	-- Terrorbound Nexus
					i(137407),	-- Sealed Fel Fissure
					i(137408),	-- Xakal's Determination
				})),
				cr(98207, e(1500, {	-- Nal'tira
					i(134472),	-- Arcane Exterminator's Shoulderguards
					i(134410),	-- Cloak of Mana-Spun Silk
					i(137410),	-- Greathelm of Barbed Chelicerae
					i(137409),	-- Manafang Waistguard
					i(133766),	-- Nether Anti-Toxin
					i(134540),	-- Ring of Twisted Webbing
					i(134435),	-- Tunnel Fiend Bracers
					i(137412),	-- Fistful of Eyes
					i(137411),	-- Nal'tira's Venom Gland
				})),
				cr(98208, e(1501, {	-- Advisor Vandros
					i(134267),	-- Arcane Defender's Breastplate
					i(137416),	-- Chain of Causal Links
					i(137419),	-- Chrono Shard
					i(137418),	-- Erratically Ticking Talisman
					i(134413),	-- Fluxflow Robes
					i(134518),	-- Frozen Pendulum Shoulderguards
					i(137415),	-- Gaze of Fleeting Hours
					i(134297),	-- Ley Dragoon's Gloves
					i(134444),	-- Mana-Lanced Gloves
					i(134304),	-- Manawracker Crown
					i(134475),	-- Mute Erasure Legguards
					i(134286),	-- Swordsinger's Shoulders
					i(137413),	-- Time-Breached Waistband
					i(137417),	-- Treads of Fates Entwined
					i(137421),	-- Accelerating Torrent
					i(137420),	-- Split Second
				})),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					cr(98203, e(1497, {	-- Ivanyr
						ach(10773),	-- Arcanic Cling
						i(134269),	-- Arcane Defender's Belt
						i(134501),	-- Crackling Overcharge Chestguard
						i(134526),	-- Gnawed Thumb Ring
						i(134421),	-- Ink-Smudged Handwraps
						i(134298),	-- Ley Dragoon's Stompers
						i(134309),	-- Manawracker Shoulders
						i(134467),	-- Nether Mindsnappers
						i(137398),	-- Portable Manacracker
						i(134280),	-- Swordsinger's Wristguards
						i(137397),	-- Tunnel Trudger Footguards
						i(137399),	-- Ivanyr's Hunger
					})),
					cr(98205, e(1498, {	-- Corstilax
						ach(10775),	-- Clean House
						i(134402),	-- Cape of Rigid Order
						i(137400),	-- Coagulated Nightwell Residue
						i(134424),	-- Collar of Enclosure
						i(134463),	-- Decontaminated Chain Tunic
						i(134522),	-- Detention Wristclamps
						i(134453),	-- Spaulders of Aberrant Inhibition
						i(134488),	-- Stabilized Energy Pendant
						i(137402),	-- Cleansing Isotope
						i(137403),	-- Quarantine Catalyst
					})),
					cr(98206, e(1499, {	-- General Xakal
						i(134449),	-- Bloodclaw Leggings
						i(134373),	-- Felbat Leather Vest
						i(134509),	-- Fists of the Legion
						i(137404),	-- Legwraps of Reverberating Shadows
						i(134387),	-- Mardum Chain Helm
						i(134396),	-- Netherwhisper Slippers
						i(134359),	-- Portalguard Legplates
						i(137405),	-- Remorseless Chain Armbands
						i(134533),	-- Ring of Looming Menace
						i(137406),	-- Terrorbound Nexus
						i(137407),	-- Sealed Fel Fissure
						i(137408),	-- Xakal's Determination
					})),
					cr(98207, e(1500, {	-- Nal'tira
						i(134472),	-- Arcane Exterminator's Shoulderguards
						i(134410),	-- Cloak of Mana-Spun Silk
						i(137410),	-- Greathelm of Barbed Chelicerae
						i(137409),	-- Manafang Waistguard
						i(133766),	-- Nether Anti-Toxin
						i(134540),	-- Ring of Twisted Webbing
						i(134435),	-- Tunnel Fiend Bracers
						i(137412),	-- Fistful of Eyes
						i(137411),	-- Nal'tira's Venom Gland
					})),
					cr(98208, e(1501, {	-- Advisor Vandros
						ach(10813),	-- Mythic: The Arcway
						ach(10864),	-- Mythic: The Arcway Guild Run
						ach(10776, {	-- No Time to Waste
							["crs"] = { 103130 },	-- Timeless Wraith
						}),
						i(137851),	-- Design: Tranquil Necklace of Prophecy [Rank 3] (RECIPE!)
						i(134267),	-- Arcane Defender's Breastplate
						i(137416),	-- Chain of Causal Links
						i(137419),	-- Chrono Shard
						i(137418),	-- Erratically Ticking Talisman
						i(134413),	-- Fluxflow Robes
						i(134518),	-- Frozen Pendulum Shoulderguards
						i(137415),	-- Gaze of Fleeting Hours
						i(134297),	-- Ley Dragoon's Gloves
						i(134444),	-- Mana-Lanced Gloves
						i(134304),	-- Manawracker Crown
						i(134475),	-- Mute Erasure Legguards
						i(134286),	-- Swordsinger's Shoulders
						i(137413),	-- Time-Breached Waistband
						i(137417),	-- Treads of Fates Entwined
						i(137421),	-- Accelerating Torrent
						i(137420),	-- Split Second
						i(146678),	-- Vandros' Shadoweave Robes (Tailoring QI!)
					})),
				},
			}),
		},
	}),
}));
