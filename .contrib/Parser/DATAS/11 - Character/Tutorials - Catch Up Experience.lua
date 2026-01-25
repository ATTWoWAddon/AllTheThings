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
							i(153830),	-- Mountainsage Staff
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
							i(153934),	-- Communal Staff
							i(153944),	-- Communal Stave
						}),
						cl(ROGUE, {
							i(153959),	-- Lightdrinker Dagger
							i(153960),	-- Lightdrinker Shiv
							i(153961),	-- Lightdrinker Sword x2
						}),
						cl(SHAMAN, {
							i(153973),	-- Streamtalker Claws
							i(154005),	-- Streamtalker Shield
							i(153983),	-- Streamtalker Talons x2
						}),
						cl(WARLOCK, {
							i(154024),	-- Felsoul Stave
						}),
						cl(WARRIOR, {
							i(154035),	-- Oathsworn Axe
							i(154036),	-- Oathsworn Bulwark
							i(154025),	-- Oathsworn Greataxe x2
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
							i(153817),	-- Mountainsage Band of Destruction
							i(153818),	-- Mountainsage Ring of Destruction
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
							i(153927),	-- Communal Band of Wisdom
							i(153928),	-- Communal Ring of Wisdom
						}),
						cl(ROGUE, {
							i(153948),	-- Lightdrinker Band of Onslaught
							i(153949),	-- Lightdrinker Ring of Onslaught
						}),
						cl(SHAMAN, {
							i(153996),	-- Streamtalker Band of Wisdom
							i(153995),	-- Streamtalker Ring of Wisdom
						}),
						cl(WARLOCK, {
							i(154011),	-- Felsoul Band of Destruction
							i(154012),	-- Felsoul Ring of Destruction
						}),
						cl(WARRIOR, {
							i(154115),	-- Oathsworn Band of Might
							i(154114),	-- Oathsworn Ring of Might
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
							i(153821),	-- Mountainsage Handwraps
							i(153820),	-- Mountainsage Sandals
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
							i(153936),	-- Communal Boots
							i(153937),	-- Communal Gloves
						}),
						cl(ROGUE, {
							i(153952),	-- Lightdrinker Boots
							i(153953),	-- Lightdrinker Gloves
						}),
						cl(SHAMAN, {
							i(154002),	-- Streamtalker Grips
							i(154001),	-- Streamtalker Sabatons
						}),
						cl(WARLOCK, {
							i(154015),	-- Felsoul Handwraps
							i(154014),	-- Felsoul Sandals
						}),
						cl(WARRIOR, {
							i(154039),	-- Oathsworn Greaves
							i(154040),	-- Oathsworn Handguards
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
							-- No chest piece	- Exo, 06.01.2026.
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
							i(153829),	-- Mountainsage Cloak of Destruction
							-- No chest piece	- Exo, 06.01.2026.
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
							i(153935),	-- Communal Cloak of Destruction
							-- No chest piece	- Exo, 06.01.2026.
						}),
						cl(ROGUE, {
							i(153945),	-- Lightdrinker Cloak of Rage
							i(153951),	-- Lightdrinker Jerkin
						}),
						cl(SHAMAN, {
							i(153998),	-- Streamtalker Cloak of Destruction
							-- No chest piece	- Exo, 06.01.2026.
						}),
						cl(WARLOCK, {
							i(154023),	-- Felsoul Cloak of Destruction
							-- No chest piece	- Exo, 06.01.2026.
						}),
						cl(WARRIOR, {
							i(154037),	-- Oathsworn Chestguard
							i(154119),	-- Oathsworn Cloak of Battle
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
							i(153816),	-- Mountainsage Idol of Destruction
							i(153819),	-- Mountainsage Stone of Destruction
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
							i(153926),	-- Communal Idol of Wisdom
							i(153930),	-- Communal Stone of Wisdom
						}),
						cl(ROGUE, {
							i(153947),	-- Lightdrinker Idol of Rage
							i(153950),	-- Lightdrinker Stone of Rage
						}),
						cl(SHAMAN, {
							i(153994),	-- Streamtalker Idol of Wisdom
							i(153997),	-- Streamtalker Stone of Wisdom
						}),
						cl(WARLOCK, {
							i(154010),	-- Felsoul Idol of Destruction
							i(154013),	-- Felsoul Stone of Destruction
						}),
						cl(WARRIOR, {
							i(154116),	-- Oathsworn Idol of Battle
							i(154117),	-- Oathsworn Stone of Battle
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
							i(153823),	-- Mountainsage Leggings
							i(153815),	-- Mountainsage Medallion
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
							i(153925),	-- Communal Necklace
							i(153939),	-- Communal Pants
						}),
						cl(ROGUE, {
							i(153955),	-- Lightdrinker Britches
							i(153946),	-- Lightdrinker Choker
						}),
						cl(SHAMAN, {
							i(154004),	-- Streamtalker Leggings
							i(153993),	-- Streamtalker Necklace
						}),
						cl(WARLOCK, {
							i(154017),	-- Felsoul Leggings
							i(154009),	-- Felsoul Medallion
						}),
						cl(WARRIOR, {
							i(154042),	-- Oathsworn Legguards
							i(154118),	-- Oathsworn Pendant
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
							i(153826),	-- Mountainsage Cord
							i(153827),	-- Mountainsage Wristwraps
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
							i(153943),	-- Communal Bindings
							i(153942),	-- Communal Sash
						}),
						cl(ROGUE, {
							i(153958),	-- Lightdrinker Bindings
							i(153957),	-- Lightdrinker Waistband
						}),
						cl(SHAMAN, {
							i(154007),	-- Streamtalker Girdle
							i(194525),	-- Blue Winglord's Bracers
						}),
						cl(WARLOCK, {
							i(154020),	-- Felsoul Cord
							i(154021),	-- Felsoul Wristwraps
						}),
						cl(WARRIOR, {
							i(154050),	-- Oathsworn Armguards
							i(154049),	-- Oathsworn Waistband
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
							i(153822),	-- Mountainsage Hood
							i(153825),	-- Mountainsage Shoulderpads
						}),
						cl(MONK, {
							i(153847),	-- Mistdancer Hood
							i(153842),	-- Mistdancer Pauldrons
						}),
						cl(PALADIN, {
							i(153904),	-- Sunsoul Faceguard
							i(153911),	-- Sunsoul Shoulderguards
						}),
						cl(PRIEST, {
							i(153938),	-- Communal Cowl
							i(153941),	-- Communal Mantle
						}),
						cl(ROGUE, {
							i(153954),	-- Lightdrinker Hood
							i(153956),	-- Lightdrinker Shoulders
						}),
						cl(SHAMAN, {
							i(154003),	-- Streamtalker Cowl
							i(154006),	-- Streamtalker Spaulders
						}),
						cl(WARLOCK, {
							i(154016),	-- Felsoul Cowl
							-- No shoulder piece	- Exo, 06.01.2026.
						}),
						cl(WARRIOR, {
							i(154041),	-- Oathsworn Faceguard
							i(154048),	-- Oathsworn Shoulderguards
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
