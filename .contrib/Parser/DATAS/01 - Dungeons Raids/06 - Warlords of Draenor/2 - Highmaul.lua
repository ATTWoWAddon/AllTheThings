-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(477, {	-- Highmaul
		["mapID"] = 612,
		["maps"] = { 610, 611, 613, 614, 615 },
		["coord"] = { 32.9, 38.3, DRAENOR_NAGRAND },
		["isRaid"] = true,
		["lvl"] = 100,
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(8986, {	-- The Walled City
					crit(25010, {	-- Kargath Bladefist
						["_encounter"] = { 1128, DIFFICULTY.RAID.LFR },
					}),
					crit(25012, {	-- The Butcher
						["_encounter"] = { 971, DIFFICULTY.RAID.LFR },
					}),
					crit(25016, {	-- Brackenspore
						["_encounter"] = { 1196, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(8987, {	-- Arcane Sanctum
					crit(25011, {	-- Tectus
						["_encounter"] = { 1195, DIFFICULTY.RAID.LFR },
					}),
					crit(25014, {	-- Twin Ogron
						["_encounter"] = { 1148, DIFFICULTY.RAID.LFR },
					}),
					crit(25015, {	-- Ko'ragh
						["_encounter"] = { 1153, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(8988, {	-- Imperator's Fall
					crit(25018, {	-- Imperator Mar'gok
						-- CRIEVE NOTE: If we want to keep this criteria, keep the provider so it has a proper name.
						["provider"] = { "n", 77428 },	-- Imperator Mar'gok <Sorcerer King>
						["_encounter"] = { 1197, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(9416),	-- Highmaul Guild Run
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					78714,	-- Kargath
					77404,	-- The Butcher
					78491,	-- Brackenspore
					78948,	-- Tectus
					78237,	-- Twin Ogron (Phemos)
					78238,	-- Twin Ogron (Pol)
					79015,	-- Ko'ragh
					77428,	-- Imperator Mar'gok
				},
				["groups"] = {
					un(REMOVED_FROM_GAME, i(115280, {	-- Abrogator Stone

					})),
					un(REMOVED_FROM_GAME, i(115981, {	-- Abrogator Stone Cluster

					})),
				},
			}),
			d(DIFFICULTY.RAID.MULTI.ALL, {
				cr(78714, e(1128, {	-- Kargath Bladefist <Warlord of the Shattered Hand>
					i(138807, {	-- Illusion: Mark of the Shattered Hand (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
				})),
				cr(78948, e(1195, {	-- Tectus <The Living Mountain>
					i(138835, {	-- Illusion: Rockbiter (ILLUSION!)
						["classes"] = { SHAMAN },
						["timeline"] = { ADDED_7_0_3 },
					}),
				})),
				cr(79015, e(1153, {	-- Ko'ragh <Breaker of Magic>
					un(REMOVED_FROM_GAME, i(115288)),	-- Felbreaker's Tome
				})),
				cr(77428, e(1197, {	-- Imperator Mar'gok <Sorcerer King>
					un(REMOVED_FROM_GAME, i(115289)),	-- Sigil of the Sorcerer King
				})),
			}),
			d(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 94870 },	-- Seer Kazal <Shadowmoon Exile>
			}),
			d(DIFFICULTY.RAID.LFR, {
				header(HEADERS.Achievement, 8986, {	-- The Walled City
					cr(78714, e(1128, {	-- Kargath Bladefist <Warlord of the Shattered Hand>
						i(116360),	-- Blade Dancer's Claws
						i(116236),	-- Iron Bomb Spaulders
						i(116298),	-- Flamescarred Drape
						i(116030),	-- Bracer of Amputation
						i(116205),	-- Firewalker's Treads
						i(116003),	-- Spectator's Sandals of Carnage
						i(116282),	-- Grunt's Rusty Ring
						i(116289),	-- Bloodmaw's Tooth
					})),
					cr(77404, e(971, {	-- The Butcher
						i(116361),	-- Butcher's Cruel Chopper
						i(116297),	-- Fleshhook Cloak
						i(116209),	-- Spine-Ripper Bracers
						i(115998),	-- Sterilized Handwraps
						i(116026),	-- Bonebreaker Boots
						i(116230),	-- Ogre-Eater Treads
						i(116281),	-- Bloodstone Seal
						i(116290),	-- Emblem of Gushing Wounds
					})),
					cr(78491, e(1196, {	-- Brackenspore <Walker of the Deep>
						i(116288),	-- Tide-Caller's Gorget
						i(116028),	-- Shoulderguards of Perpetually Exploding Fungus
						i(116294),	-- Rotmelter Mosscloak
						i(115999),	-- Rotmonger Bracers
						i(116208),	-- Carnage Breath Gauntlets
						i(116233),	-- Grips of Burning Infusion
						i(116291),	-- Immaculate Living Mushroom
					})),
				}),
				header(HEADERS.Achievement, 8987, {	-- Arcane Sanctum
					cr(78948, e(1195, {	-- Tectus <The Living Mountain>
						i(116362),	-- Shard of Crystalline Fury
						i(116363),	-- Shield of Violent Upheaval
						i(116237),	-- Crown of the Crags
						i(116285),	-- Cratermaker Choker
						i(116210),	-- Chestwrap of Violent Upheaval
						i(116000),	-- Mountainslide Robes
						i(116032),	-- Legguards of Ravenous Assault
						i(116279),	-- Frostcap Band
						i(116292),	-- Mote of the Mountain
					})),
					e(1148, {	-- Twin Ogron
						["crs"] = {
							78237,	-- Twin Ogron (Phemos)
							78238,	-- Twin Ogron (Pol)
						},
						["g"] = {
							i(116364),	-- Dagger of Enfeeblement
							i(116365),	-- Captured Arcane Fragment
							i(116286),	-- Fire-Blind Necklace
							i(116211),	-- Shoulderguards of the Shepherd
							i(115997),	-- Twin-Gaze Spaulders
							i(116234),	-- Bracers of Cursed Cries
							i(116025),	-- Pulverizing Grips
							i(116283),	-- Ring of Enfeebling Accusations
						},
					}),
					cr(79015, e(1153, {	-- Ko'ragh <Breaker of Magic>
						i(116366),	-- Magic-Breaker Greatsword
						i(116368),	-- Polearm of Expulsion
						i(116367),	-- Shield-Shatter Longbow
						i(116212),	-- Alloy-Inlaid Cap
						i(115996),	-- Fel-Flame Coronet
						i(116284),	-- Necklace of Volatile Anomalies
						i(116295),	-- Cloak of Overflowing Energies
						i(116029),	-- Crackle-Proof Chestguard
						i(116231),	-- Legplates of Arcanic Absorbtion
						i(116293),	-- Idol of Suppression
					})),
				}),
				header(HEADERS.Achievement, 8988, {	-- Imperator's Fall
					cr(77428, e(1197, {	-- Imperator Mar'gok <Sorcerer King>
						i(116372),	-- Imperator's Warstaff
						i(116373),	-- Mirrorshield of Arcane Fortification
						i(116027),	-- Gorian Royal Crown
						i(116287),	-- Chain of the Unbroken Lineage
						i(116296),	-- Greatcloak of Impactful Pulses
						i(116235),	-- Chestplate of Destructive Resonance
						i(116002),	-- High Arcanist Leggings
						i(116206),	-- Warmage's Legwraps
						i(116280),	-- Seal of Arcane Wrath
					})),
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				cr(78714, e(1128, {	-- Kargath Bladefist <Warlord of the Shattered Hand>
					ach(8948, {	-- Flame On!
						["crs"] = { 88123 },	-- Fire Pillar
					}),
				})),
				cr(77404, e(971, {	-- The Butcher
					ach(8947, {	-- Hurry Up, Maggot!
						["crs"] = { 80728 },	-- Maggot
					}),
				})),
				cr(78491, e(1196, {	-- Brackenspore <Walker of the Deep>
					ach(8975),	-- A Fungus Among Us
				})),
				cr(78948, e(1195, {	-- Tectus <The Living Mountain>
					ach(8974, {	-- More Like Wrecked-us
						["crs"] = { 80557 },	-- Mote of Tectus <Mote of the Mountain>
					}),
				})),
				e(1148, {	-- Twin Ogron
					["crs"] = {
						78237,	-- Twin Ogron (Phemos)
						78238,	-- Twin Ogron (Pol)
					},
					["g"] = {
						ach(8958),	-- Brothers in Arms
					},
				}),
				cr(79015, e(1153, {	-- Ko'ragh <Breaker of Magic>
					ach(8976),	-- Pair Annihilation
				})),
				cr(77428, e(1197, {	-- Imperator Mar'gok <Sorcerer King>
					ach(8977, {	-- Lineage of Power
						["crs"] = { 78121 },	-- Gorian Warmage
					}),
				})),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(ZONE_DROPS, {
					i(119343),	-- Eye-Blinder Greatcloak
					i(119347),	-- Gill's Glorious Windcloak
					i(119346),	-- Kyu-Sy's Tarflame Doomcloak
					i(119344),	-- Magic-Breaker Cape
					i(119345),	-- Milenah's Intricate Cloak
					i(119336),	-- Cord of Winsome Sorrows
					i(119335),	-- Eyeripper Girdle
					i(119338),	-- Belt of Inebriated Sorrows
					i(119337),	-- Ripswallow Plate Belt
				}),
				cr(78714, e(1128, {	-- Kargath Bladefist <Warlord of the Shattered Hand>
					i(113591),	-- The Bladefist
					i(113592),	-- Bileslinger's Censer
					i(113600),	-- Casque of the Iron Bomber
					i(113596),	-- Vilebreath Mask
					i(113598),	-- Champion's Medallion
					i(113605),	-- Fireproof Greatcloak
					i(113601),	-- Chestguard of the Roaring Crowd
					i(113593),	-- Grips of Vicious Mauling
					i(113602),	-- Throat-Ripper Gauntlets
					i(113595),	-- Treads of Sand and Blood
					i(113599),	-- Grunt's Solid Signet
					i(113604),	-- Kargath's Last Link
				})),
				cr(77404, e(971, {	-- The Butcher
					i(113606),	-- Butcher's Bloody Cleaver
					i(113607),	-- Butcher's Terrible Tenderizer
					i(113608),	-- Hood of Dispassionate Execution
					i(113609),	-- Slaughterhouse Spaulders
					i(113637),	-- Cloak of Frenzied Rage
					i(113634),	-- Bracers of Spare Skin
					i(113632),	-- Gauntlets of the Heavy Hand
					i(113610),	-- Meatmonger's Gory Grips
					i(113636),	-- Belt of Bloody Guts
					i(113633),	-- Entrail Squishers
					i(113611),	-- Flenser's Hookring
					i(113638),	-- Gutwrench Ring
					i(113612),	-- Scales of Doom
				})),
				cr(78491, e(1196, {	-- Brackenspore <Walker of the Deep>
					i(113652),	-- Crystalline Branch of the Brackenspore
					i(113653),	-- Maw of Souls
					i(113662),	-- Collar of Wailing Mouths
					i(113661),	-- Deep Walker Pauldrons
					i(113657),	-- Cloak of Creeping Necrosis
					i(113654),	-- Moss-Woven Mailshirt
					i(113655),	-- Robes of Necrotic Whispers
					i(113659),	-- Fleshchewer Greatbelt
					i(113656),	-- Girdle of the Infected Mind
					i(113660),	-- Mosscrusher Sabatons
					i(113664),	-- Sandals of Mycoid Musing
					i(113658),	-- Bottle of Infesting Spores
				})),
				cr(78948, e(1195, {	-- Tectus <The Living Mountain>
					i(113640),	-- Earthwarped Bladestaff
					i(113639),	-- Spire of Tectus
					i(113647),	-- Flechette-Riddled Chain
					i(113641),	-- Living Mountain Shoulderguards
					i(113642),	-- Crystal-Woven Bracers
					i(113648),	-- Legplates of Fractured Crystal
					i(113649),	-- Mountainwalker's Boots
					i(113644),	-- Earthfury Band
					i(113643),	-- Eye of Tectus
					i(113646),	-- Ring of Infinite Accretion
					i(113651),	-- Signet of Crystalline Barrage
					i(113650),	-- Pillar of the Earth
					i(113645),	-- Tectus' Beating Heart
				})),
				e(1148, {	-- Twin Ogron
					["crs"] = {
						78237,	-- Twin Ogron (Phemos)
						78238,	-- Twin Ogron (Pol)
					},
					["g"] = {
						i(113667),	-- Phemos' Double Slasher
						i(113666),	-- Absalom's Bloody Bulwark
						i(113833),	-- Odyssian Choker
						i(113830),	-- Cloak of Ruminant Deception
						i(113831),	-- Chestplate of Arcane Volatility
						i(113826),	-- Bracers of the Crying Chorus
						i(113832),	-- Treacherous Palms
						i(113827),	-- Belt of Imminent Lies
						i(113828),	-- Sea-Cursed Leggings
						i(113829),	-- Golden-Tongued Seal
						i(113834),	-- Pol's Blinded Eye
						i(113835),	-- Shards of Nothing
					},
				}),
				cr(79015, e(1153, {	-- Ko'ragh <Breaker of Magic>
					i(113838),	-- Gar'tash, Hammer of the Breakers
					i(113836),	-- Ko'ragh's Boot Knife
					i(113837),	-- Rod of Fel Nullification
					i(113845),	-- Rune-Enscribed Hood
					i(113841),	-- Ko'ragh's Family Locket
					i(113847),	-- Cloak of Searing Shadows
					i(113844),	-- Bracers of Mirrored Flame
					i(113839),	-- Leggings of Broken Magic
					i(113840),	-- Destabilized Sandals
					i(113846),	-- Seal of Unbound Frost
					i(113843),	-- Spell-Sink Signet
					i(113842),	-- Emblem of Caustic Healing
				})),
				cr(77428, e(1197, {	-- Imperator Mar'gok <Sorcerer King>
					i(113848),	-- Gor'gah, High Blade of the Gorians
					i(113857),	-- Staff of the Grand Imperator
					i(113858),	-- Choker of Violent Displacement
					i(113851),	-- Reaver's Nose Ring
					i(113855),	-- Uncrushable Shoulderplates
					i(113852),	-- Force Nova Cloak
					i(113850),	-- Robes of the Arcane Ultimatum
					i(113856),	-- Nether Blast Leggings
					i(113849),	-- Face Kickers
					i(113860),	-- Shockwave Signet
					i(113853),	-- Captive Micro-Aberration
					i(113861),	-- Evergaze Arcane Eidolon
					i(113854),	-- Mark of Rapid Replication
					i(113859),	-- Quiescent Runestone
				})),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(ZONE_DROPS, {
					i(119343),	-- Eye-Blinder Greatcloak
					i(119347),	-- Gill's Glorious Windcloak
					i(119346),	-- Kyu-Sy's Tarflame Doomcloak
					i(119344),	-- Magic-Breaker Cape
					i(119345),	-- Milenah's Intricate Cloak
					i(119336),	-- Cord of Winsome Sorrows
					i(119335),	-- Eyeripper Girdle
					i(119338),	-- Belt of Inebriated Sorrows
					i(119337),	-- Ripswallow Plate Belt
				}),
				cr(78714, e(1128, {	-- Kargath Bladefist <Warlord of the Shattered Hand>
					i(113591),	-- The Bladefist
					i(113592),	-- Bileslinger's Censer
					i(113600),	-- Casque of the Iron Bomber
					i(113596),	-- Vilebreath Mask
					i(113598),	-- Champion's Medallion
					i(113605),	-- Fireproof Greatcloak
					i(113601),	-- Chestguard of the Roaring Crowd
					i(113593),	-- Grips of Vicious Mauling
					i(113602),	-- Throat-Ripper Gauntlets
					i(113595),	-- Treads of Sand and Blood
					i(113599),	-- Grunt's Solid Signet
					i(113604),	-- Kargath's Last Link
				})),
				cr(77404, e(971, {	-- The Butcher
					i(113606),	-- Butcher's Bloody Cleaver
					i(113607),	-- Butcher's Terrible Tenderizer
					i(113608),	-- Hood of Dispassionate Execution
					i(113609),	-- Slaughterhouse Spaulders
					i(113637),	-- Cloak of Frenzied Rage
					i(113634),	-- Bracers of Spare Skin
					i(113632),	-- Gauntlets of the Heavy Hand
					i(113610),	-- Meatmonger's Gory Grips
					i(113636),	-- Belt of Bloody Guts
					i(113633),	-- Entrail Squishers
					i(113611),	-- Flenser's Hookring
					i(113638),	-- Gutwrench Ring
					i(113612),	-- Scales of Doom
				})),
				cr(78491, e(1196, {	-- Brackenspore <Walker of the Deep>
					i(113652),	-- Crystalline Branch of the Brackenspore
					i(113653),	-- Maw of Souls
					i(113662),	-- Collar of Wailing Mouths
					i(113661),	-- Deep Walker Pauldrons
					i(113657),	-- Cloak of Creeping Necrosis
					i(113654),	-- Moss-Woven Mailshirt
					i(113655),	-- Robes of Necrotic Whispers
					i(113659),	-- Fleshchewer Greatbelt
					i(113656),	-- Girdle of the Infected Mind
					i(113660),	-- Mosscrusher Sabatons
					i(113664),	-- Sandals of Mycoid Musing
					i(113658),	-- Bottle of Infesting Spores
				})),
				cr(78948, e(1195, {	-- Tectus <The Living Mountain>
					i(113640),	-- Earthwarped Bladestaff
					i(113639),	-- Spire of Tectus
					i(113647),	-- Flechette-Riddled Chain
					i(113641),	-- Living Mountain Shoulderguards
					i(113642),	-- Crystal-Woven Bracers
					i(113648),	-- Legplates of Fractured Crystal
					i(113649),	-- Mountainwalker's Boots
					i(113644),	-- Earthfury Band
					i(113643),	-- Eye of Tectus
					i(113646),	-- Ring of Infinite Accretion
					i(113651),	-- Signet of Crystalline Barrage
					i(113650),	-- Pillar of the Earth
					i(113645),	-- Tectus' Beating Heart
				})),
				e(1148, {	-- Twin Ogron
					["crs"] = {
						78237,	-- Twin Ogron (Phemos)
						78238,	-- Twin Ogron (Pol)
					},
					["g"] = {
						i(113667),	-- Phemos' Double Slasher
						i(113666),	-- Absalom's Bloody Bulwark
						i(113833),	-- Odyssian Choker
						i(113830),	-- Cloak of Ruminant Deception
						i(113831),	-- Chestplate of Arcane Volatility
						i(113826),	-- Bracers of the Crying Chorus
						i(113832),	-- Treacherous Palms
						i(113827),	-- Belt of Imminent Lies
						i(113828),	-- Sea-Cursed Leggings
						i(113829),	-- Golden-Tongued Seal
						i(113834),	-- Pol's Blinded Eye
						i(113835),	-- Shards of Nothing
					},
				}),
				cr(79015, e(1153, {	-- Ko'ragh <Breaker of Magic>
					i(113838),	-- Gar'tash, Hammer of the Breakers
					i(113836),	-- Ko'ragh's Boot Knife
					i(113837),	-- Rod of Fel Nullification
					i(113845),	-- Rune-Enscribed Hood
					i(113841),	-- Ko'ragh's Family Locket
					i(113847),	-- Cloak of Searing Shadows
					i(113844),	-- Bracers of Mirrored Flame
					i(113839),	-- Leggings of Broken Magic
					i(113840),	-- Destabilized Sandals
					i(113846),	-- Seal of Unbound Frost
					i(113843),	-- Spell-Sink Signet
					i(113842),	-- Emblem of Caustic Healing
				})),
				cr(77428, e(1197, {	-- Imperator Mar'gok <Sorcerer King>
					un(REMOVED_FROM_GAME, ach(9441)),	-- Ahead of the Curve: Imperator's Fall
					i(113848),	-- Gor'gah, High Blade of the Gorians
					i(113857),	-- Staff of the Grand Imperator
					i(113858),	-- Choker of Violent Displacement
					i(113851),	-- Reaver's Nose Ring
					i(113855),	-- Uncrushable Shoulderplates
					i(113852),	-- Force Nova Cloak
					i(113850),	-- Robes of the Arcane Ultimatum
					i(113856),	-- Nether Blast Leggings
					i(113849),	-- Face Kickers
					i(113860),	-- Shockwave Signet
					i(113853),	-- Captive Micro-Aberration
					i(113861),	-- Evergaze Arcane Eidolon
					i(113854),	-- Mark of Rapid Replication
					i(113859),	-- Quiescent Runestone
				})),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(ZONE_DROPS, {
					i(119343),	-- Eye-Blinder Greatcloak
					i(119347),	-- Gill's Glorious Windcloak
					i(119346),	-- Kyu-Sy's Tarflame Doomcloak
					i(119344),	-- Magic-Breaker Cape
					i(119345),	-- Milenah's Intricate Cloak
					i(119336),	-- Cord of Winsome Sorrows
					i(119335),	-- Eyeripper Girdle
					i(119338),	-- Belt of Inebriated Sorrows
					i(119337),	-- Ripswallow Plate Belt
				}),
				cr(78714, e(1128, {	-- Kargath Bladefist <Warlord of the Shattered Hand>
					ach(8949),	-- Mythic: Kargath Bladefist
					i(113591),	-- The Bladefist
					i(113592),	-- Bileslinger's Censer
					i(113600),	-- Casque of the Iron Bomber
					i(113596),	-- Vilebreath Mask
					i(113598),	-- Champion's Medallion
					i(113605),	-- Fireproof Greatcloak
					i(113601),	-- Chestguard of the Roaring Crowd
					i(113593),	-- Grips of Vicious Mauling
					i(113602),	-- Throat-Ripper Gauntlets
					i(113595),	-- Treads of Sand and Blood
					i(113599),	-- Grunt's Solid Signet
					i(113604),	-- Kargath's Last Link
				})),
				cr(77404, e(971, {	-- The Butcher
					ach(8960),	-- Mythic: The Butcher
					i(113606),	-- Butcher's Bloody Cleaver
					i(113607),	-- Butcher's Terrible Tenderizer
					i(113608),	-- Hood of Dispassionate Execution
					i(113609),	-- Slaughterhouse Spaulders
					i(113637),	-- Cloak of Frenzied Rage
					i(113634),	-- Bracers of Spare Skin
					i(113632),	-- Gauntlets of the Heavy Hand
					i(113610),	-- Meatmonger's Gory Grips
					i(113636),	-- Belt of Bloody Guts
					i(113633),	-- Entrail Squishers
					i(113611),	-- Flenser's Hookring
					i(113638),	-- Gutwrench Ring
					i(113612),	-- Scales of Doom
				})),
				cr(78491, e(1196, {	-- Brackenspore <Walker of the Deep>
					ach(8962),	-- Mythic: Brackenspore
					i(113652),	-- Crystalline Branch of the Brackenspore
					i(113653),	-- Maw of Souls
					i(113662),	-- Collar of Wailing Mouths
					i(113661),	-- Deep Walker Pauldrons
					i(113657),	-- Cloak of Creeping Necrosis
					i(113654),	-- Moss-Woven Mailshirt
					i(113655),	-- Robes of Necrotic Whispers
					i(113659),	-- Fleshchewer Greatbelt
					i(113656),	-- Girdle of the Infected Mind
					i(113660),	-- Mosscrusher Sabatons
					i(113664),	-- Sandals of Mycoid Musing
					i(113658),	-- Bottle of Infesting Spores
				})),
				cr(78948, e(1195, {	-- Tectus <The Living Mountain>
					ach(8961),	-- Mythic: Tectus
					i(113640),	-- Earthwarped Bladestaff
					i(113639),	-- Spire of Tectus
					i(113647),	-- Flechette-Riddled Chain
					i(113641),	-- Living Mountain Shoulderguards
					i(113642),	-- Crystal-Woven Bracers
					i(113648),	-- Legplates of Fractured Crystal
					i(113649),	-- Mountainwalker's Boots
					i(113644),	-- Earthfury Band
					i(113643),	-- Eye of Tectus
					i(113646),	-- Ring of Infinite Accretion
					i(113651),	-- Signet of Crystalline Barrage
					i(113650),	-- Pillar of the Earth
					i(113645),	-- Tectus' Beating Heart
				})),
				e(1148, {	-- Twin Ogron
					["crs"] = {
						78237,	-- Twin Ogron (Phemos)
						78238,	-- Twin Ogron (Pol)
					},
					["g"] = {
						ach(8963),	-- Mythic: Twin Ogron
						i(113667),	-- Phemos' Double Slasher
						i(113666),	-- Absalom's Bloody Bulwark
						i(113833),	-- Odyssian Choker
						i(113830),	-- Cloak of Ruminant Deception
						i(113831),	-- Chestplate of Arcane Volatility
						i(113826),	-- Bracers of the Crying Chorus
						i(113832),	-- Treacherous Palms
						i(113827),	-- Belt of Imminent Lies
						i(113828),	-- Sea-Cursed Leggings
						i(113829),	-- Golden-Tongued Seal
						i(113834),	-- Pol's Blinded Eye
						i(113835),	-- Shards of Nothing
					},
				}),
				cr(79015, e(1153, {	-- Ko'ragh <Breaker of Magic>
					ach(8964),	-- Mythic: Ko'ragh
					i(113838),	-- Gar'tash, Hammer of the Breakers
					i(113836),	-- Ko'ragh's Boot Knife
					i(113837),	-- Rod of Fel Nullification
					i(113845),	-- Rune-Enscribed Hood
					i(113841),	-- Ko'ragh's Family Locket
					i(113847),	-- Cloak of Searing Shadows
					i(113844),	-- Bracers of Mirrored Flame
					i(113839),	-- Leggings of Broken Magic
					i(113840),	-- Destabilized Sandals
					i(113846),	-- Seal of Unbound Frost
					i(113843),	-- Spell-Sink Signet
					i(113842),	-- Emblem of Caustic Healing
				})),
				e(1197, {	-- Imperator Mar'gok <Sorcerer King>
					["crs"] = {
						77428,	-- Imperator Mar'gok
						78623,	-- Cho'gall
					},
					["g"] = {
						un(REMOVED_FROM_GAME, ach(9441)),	-- Ahead of the Curve: Imperator's Fall
						un(REMOVED_FROM_GAME, ach(9442)),	-- Cutting Edge: Imperator's Fall
						un(REMOVED_FROM_GAME, ach(9397)),	-- Realm First! Imperator's Fall
						ach(8965, {	-- Mythic: Imperator's Fall
							title(304),	-- <Name>, Empire's Twilight
						}),
						ach(9420),	-- Mythic: Imperator's Fall Guild Run
						i(113848),	-- Gor'gah, High Blade of the Gorians
						i(113857),	-- Staff of the Grand Imperator
						i(113858),	-- Choker of Violent Displacement
						i(113851),	-- Reaver's Nose Ring
						i(113855),	-- Uncrushable Shoulderplates
						i(113852),	-- Force Nova Cloak
						i(113850),	-- Robes of the Arcane Ultimatum
						i(113856),	-- Nether Blast Leggings
						i(113849),	-- Face Kickers
						i(113860),	-- Shockwave Signet
						i(113853),	-- Captive Micro-Aberration
						i(113861),	-- Evergaze Arcane Eidolon
						i(113854),	-- Mark of Rapid Replication
						i(113859),	-- Quiescent Runestone
					},
				}),
			}),
		},
	}),
})));