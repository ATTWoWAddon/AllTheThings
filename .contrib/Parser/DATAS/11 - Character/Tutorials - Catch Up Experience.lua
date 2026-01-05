---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Character, n(TUTORIALS, {
	m(ARATHI_HIGHLANDS_CATCHUP, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
		["icon"] = 236712,
		["maps"] = { 2451 },	-- Arathi Highlands (Catch Up Experience)
		["lore"] = "Journey through the Arathi Highlands to help refamiliarize yourself with World of Warcraft and receive upgraded gear for your character.",
		["description"] = "Accessible through Tutorials tab of your Adventure Guide.\n\n|cFFE50D12WARNING:|r Trying to fly out of the area will reset the whole experience.",
		["groups"] = {
			n(QUESTS, sharedData({
				["isRepeatable"] = true,
			}, {
				q(90882, {	-- Gnoll Way
					["aqd"] = {
						["qg"] = 244643,	-- Lady Jaina Proudmoore
						["coord"] = { 70.0, 40.7, ARATHI_HIGHLANDS_CATCHUP },
					},
					["hqd"] = {
						["qg"] = 244642,	-- Thrall
						["coord"] = { 69.8, 40.8, ARATHI_HIGHLANDS_CATCHUP },
					},
					["groups"] = {	-- Weapons
						cl(DEATHKNIGHT, {
							i(153726),	-- Heart-Lesion Blade x2
							i(153747),	-- Heart-Lesion Runeblade
						}),
						cl(DEMONHUNTER, {
							i(160513),	-- Illidari Warglaive x2
						}),
						cl(DRUID, {
							i(153773),	-- Springrain Spear
							i(153792),	-- Springrain Staff
						}),
						cl(EVOKER, {
							i(194522),	-- Blue Winglord's Staff
						}),
						cl(HUNTER, {
							i(153814),	-- Trailseeker Spear
							i(231839),	-- Trailseeker Longbow
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153835),	-- Mistdancer Spire
							i(153856),	-- Mistdancer Staff
							i(153859),	-- Mistdancer Sword x2
						}),
						cl(PALADIN, {
							i(153892),	-- Sunsoul Bulwark
							i(153889),	-- Sunsoul Scepter
							i(153891),	-- Sunsoul Sword
							i(153893),	-- Sunsoul Warmaul
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90883, {	-- To Go'shek Farm
					["sourceQuest"] = 90882,	-- Gnoll Way
					["aqd"] = {
						["qg"] = 244643,	-- Lady Jaina Proudmoore
						["coord"] = { 70.0, 40.7, ARATHI_HIGHLANDS_CATCHUP },
					},
					["hqd"] = {
						["qg"] = 244642,	-- Thrall
						["coord"] = { 69.8, 40.8, ARATHI_HIGHLANDS_CATCHUP },
					},
					["groups"] = {	-- Bags
						i(249773),	-- Large Black Bag
						i(249771),	-- Large Blue Bag
						i(188213),	-- Large Green Bag
						i(249772),	-- Large Red Bag
					},
				}),
				q(90885, {	-- My Beautiful Pumpkins
					["sourceQuest"] = 90883,	-- To Go'shek Farm
					["qg"] = 244729,	-- Farmer Bruvk
					["coord"] = { 56.4, 59.6, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Rings
						cl(DEATHKNIGHT, {
							i(153742),	-- Heart-Lesion Band of Stoicism
							i(153741),	-- Heart-Lesion Ring of Stoicism
						}),
						cl(DEMONHUNTER, {
							i(154745),	-- Illidari Band
							i(154746),	-- Illidari Ring
						}),
						cl(DRUID, {
							i(153797),	-- Springrain Band of Durability
							i(153796),	-- Springrain Ring of Durability
						}),
						cl(EVOKER, {
							i(194533),	-- Blue Winglord's Ring
							i(194534),	-- Blue Winglord's Loop
						}),
						cl(HUNTER, {
							i(153802),	-- Trailseeker Band of Onslaught
							i(153803),	-- Trailseeker Ring of Onslaught
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153862),	-- Mistdancer Band of Onslaught
							i(153863),	-- Mistdancer Ring of Onslaught
						}),
						cl(PALADIN, {
							i(153909),	-- Sunsoul Band of Stoicism
							i(153908),	-- Sunsoul Ring of Stoicism
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90886, {	-- Best Laid Plans of Kobolds and Ogres
					["sourceQuest"] = 90883,	-- To Go'shek Farm
					["qg"] = 244656,	-- Thrall
					["coord"] = { 56.3, 59.6, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Boots and Gloves
						i(243573),	-- Poorly Written Plans (QI!)
						--
						cl(DEATHKNIGHT, {
							i(153735),	-- Heart-Lesion Greaves
							i(153736),	-- Heart-Lesion Handguards
						}),
						cl(DEMONHUNTER, {
							i(154741),	-- Illidari Boots
							i(154738),	-- Illidari Gloves
						}),
						cl(DRUID, {
							i(153785),	-- Springrain Boots
							i(153786),	-- Springrain Gloves
						}),
						cl(EVOKER, {
							i(194524),	-- Blue Winglord's Boots
							i(194527),	-- Blue Winglord's Grips
						}),
						cl(HUNTER, {
							i(153807),	-- Trailseeker Gauntlets
							i(153806),	-- Trailseeker Greaves
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153845),	-- Mistdancer Boots
							i(153846),	-- Mistdancer Gloves
						}),
						cl(PALADIN, {
							i(153902),	-- Sunsoul Greaves
							i(153903),	-- Sunsoul Handguards
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90887, {	-- Farmer's Nemesis
					["sourceQuest"] = 90883,	-- To Go'shek Farm
					["qg"] = 244655,	-- Lady Jaina Proudmoore
					["coord"] = { 56.5, 59.7, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Cloak and Chest
						cl(DEATHKNIGHT, {
							i(153718),	-- Heart-Lesion Breastplate
							i(153734),	-- Heart-Lesion Cloak of Stoicism
						}),
						cl(DEMONHUNTER, {
							i(154748),	-- Illidari Drape
							i(154739),	-- Illidari Robe
						}),
						cl(DRUID, {
							i(153793),	-- Springrain Cloak of Durability
							-- No chest piece?
						}),
						cl(EVOKER, {
							i(194526),	-- Blue Winglord's Hauberk
							i(194535),	-- Cobalt Winglord's Cloak
						}),
						cl(HUNTER, {
							i(153799),	-- Trailseeker Cloak of Rage
							i(153805),	-- Trailseeker Vest
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153865),	-- Mistdancer Cloak of Rage
							i(153837),	-- Mistdancer Vest
						}),
						cl(PALADIN, {
							i(153867),	-- Sunsoul Battleplate
							i(153901),	-- Sunsoul Cloak of Stoicism
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90888, {	-- Saving Stromgarde Keep
					["sourceQuests"] = {
						90885,	-- My Beautiful Pumpkins
						90886,	-- Best Laid Plans of Kobolds and Ogres
						90887,	-- Farmer's Nemesis
					},
					["qg"] = 244655,	-- Lady Jaina Proudmoore
					["coord"] = { 56.5, 59.7, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Trinkets
						cl(DEATHKNIGHT, {
							i(153740),	-- Heart-Lesion Defender Idol
							i(153743),	-- Heart-Lesion Defender Stone
						}),
						cl(DEMONHUNTER, {
							i(154744),	-- Charm of Demonic Fire
							i(154743),	-- Demon Trophy
						}),
						cl(DRUID, {
							i(153795),	-- Springrain Idol of Durability
							i(153798),	-- Springrain Stone of Durability
						}),
						cl(EVOKER, {
							i(194532),	-- Blue Winglord's Insignia
							i(194531),	-- Claw-Carved Figurine
						}),
						cl(HUNTER, {
							i(153801),	-- Trailseeker Idol of Rage
							i(153804),	-- Trailseeker Stone of Rage
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153860),	-- Mistdancer Idol of Rage
							i(153864),	-- Mistdancer Stone of Rage
						}),
						cl(PALADIN, {
							i(153907),	-- Sunsoul Defender Idol
							i(153910),	-- Sunsoul Defender Stone
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(92028, {	-- Pardon the Interruption
					["sourceQuests"] = {
						90885,	-- My Beautiful Pumpkins
						90886,	-- Best Laid Plans of Kobolds and Ogres
						90887,	-- Farmer's Nemesis
					},
					["qg"] = 249423,	-- Sergeant Colvin
					["coord"] = { 19.6, 57.5, ARATHI_HIGHLANDS_CATCHUP },
				}),
				q(90895, {	-- Catapult Bombardment
					["sourceQuest"] = 90888,	-- Saving Stromgarde Keep
					["qg"] = 244658,	-- Lady Jaina Proudmoore
					["coord"] = { 19.5, 57.4, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Pants and Necklace
						cl(DEATHKNIGHT, {
							i(153739),	-- Heart-Lesion Amulet
							i(153738),	-- Heart-Lesion Legguards
						}),
						cl(DEMONHUNTER, {
							i(154747),	-- Illidari Chain
							i(154736),	-- Illidari Leggings
						}),
						cl(DRUID, {
							i(153788),	-- Springrain Britches
							i(153794),	-- Springrain Choker
						}),
						cl(EVOKER, {
							i(194536),	-- Blue Winglord's Amulet
							i(194529),	-- Blue Winglord's Greaves
						}),
						cl(HUNTER, {
							i(153800),	-- Trailseeker Choker
							i(153809),	-- Trailseeker Legguards
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153850),	-- Mistdancer Britches
							i(153861),	-- Mistdancer Choker
						}),
						cl(PALADIN, {
							i(153906),	-- Sunsoul Amulet
							i(153905),	-- Sunsoul Legguards
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90893, {	-- Repelling the Siege
					["sourceQuest"] = 90888,	-- Saving Stromgarde Keep
					["qg"] = 244657,	-- Thrall
					["coord"] = { 19.4, 57.4, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Waist and Wrist
						cl(DEATHKNIGHT, {
							i(153746),	-- Heart-Lesion Armguards
							i(153745),	-- Heart-Lesion Waistband
						}),
						cl(DEMONHUNTER, {
							i(154742),	-- Illidari Belt
							i(154740),	-- Illidari Bracers
						}),
						cl(DRUID, {
							i(153791),	-- Springrain Bindings
							i(153790),	-- Springrain Waistband
						}),
						cl(EVOKER, {
							i(194525),	-- Blue Winglord's Bracers
							i(194523),	-- Blue Winglord's Chain
						}),
						cl(HUNTER, {
							i(153811),	-- Trailseeker Belt
							i(153812),	-- Trailseeker Bracers
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153858),	-- Mistdancer Bindings
							i(153857),	-- Mistdancer Waistband
						}),
						cl(PALADIN, {
							i(153913),	-- Sunsoul Armguards
							i(153912),	-- Sunsoul Waistband
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90896, {	-- One Last Ogre
					["sourceQuests"] = {
						90888,	-- Catapult Bombardment
						90893,	-- Repelling the Siege
					},
					["qg"] = 244666,	-- Thrall
					["coord"] = { 24.6, 37.1, ARATHI_HIGHLANDS_CATCHUP },
					["groups"] = {	-- Head & Shoulders
						cl(DEATHKNIGHT, {
							i(153737),	-- Heart-Lesion Faceguard
							i(153744),	-- Heart-Lesion Shoulderguards
						}),
						cl(DEMONHUNTER, {
							i(154737),	-- Illidari Blindfold
							i(154735),	-- Illidari Shoulders
						}),
						cl(DRUID, {
							i(153787),	-- Springrain Hood
							i(153789),	-- Springrain Shoulders
						}),
						cl(EVOKER, {
							i(194528),	-- Blue Winglord's Coif
							i(194530),	-- Blue Winglord's Shoulders
						}),
						cl(HUNTER, {
							i(153808),	-- Trailseeker Helm
							i(153810),	-- Trailseeker Spaulders
						}),
						cl(MAGE, {
						}),
						cl(MONK, {
							i(153847),	-- Mistdancer Hood
							i(153855),	-- Mistdancer Shoulders
						}),
						cl(PALADIN, {
							i(153904),	-- Sunsoul Faceguard
							i(153911),	-- Sunsoul Shoulderguards
						}),
						cl(PRIEST, {
						}),
						cl(ROGUE, {
						}),
						cl(SHAMAN, {
						}),
						cl(WARLOCK, {
						}),
						cl(WARRIOR, {
						}),
					},
				}),
				q(90897, {	-- Back to Stromgarde
					["sourceQuest"] = 90896,	-- One Last Ogre
					["qg"] = 244667,	-- Lady Jaina Proudmoore
					["coord"] = { 24.7, 37.1, ARATHI_HIGHLANDS_CATCHUP },
					["races"] = ALLIANCE_ONLY,
				}),
				q(90898, {	-- Back to Hammerfall
					["sourceQuest"] = 90896,	-- One Last Ogre
					["qg"] = 244666,	-- Thrall
					["coord"] = { 24.6, 37.1, ARATHI_HIGHLANDS_CATCHUP },
					["races"] = HORDE_ONLY,
				}),
				q(90911, {	-- Your Next Adventure
					["aqd"] = {
						["sourceQuest"] = 90897,	-- Back to Stromgarde
						["qg"] = 244714,	-- Lady Jaina Proudmoore
						["coord"] = { 19.5, 61.6, ARATHI_HIGHLANDS_CATCHUP },
					},
					["hqd"] = {
						["sourceQuest"] = 90898,	-- Back to Hammerfall
						["qg"] = 244715,	-- Thrall
						["coord"] = { 69.2, 34.6, ARATHI_HIGHLANDS_CATCHUP },
					},
				}),
			})),
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
		m(ARATHI_HIGHLANDS_CATCHUP, {
			q(93382),	-- Pardon the Interruption
		}),
	}));
});
