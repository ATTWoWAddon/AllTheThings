-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(900, {	-- Cathedral of Eternal Night
		["coord"] = { 64.7, 16.6, BROKEN_SHORE },
		["maps"] = { 845, 846, 847, 848, 849 },
		["g"] = {
			n(WORLD_QUESTS, {
				q(46867, {	-- Cathedral of Eternal Night: Fel Beast
					["sourceQuests"] = { 46773 },	-- The Command Center
					["isWorldQuest"] = true,
				}),
				q(46868, {	-- Cathedral of Eternal Night: Infernal Dead
					["sourceQuests"] = { 46773 },	-- The Command Center
					["isWorldQuest"] = true,
				}),
				q(46844, {	-- Cathedral of Eternal Night: Mistress of Blades
					["sourceQuests"] = { 46773 },	-- The Command Center
					["isWorldQuest"] = true,
				}),
				q(46865, {	-- Cathedral of Eternal Night: Mother of Flame
					["sourceQuests"] = { 46773 },	-- The Command Center
					["isWorldQuest"] = true,
				}),
				q(46869, {	-- Cathedral of Eternal Night: Temptress of Pain
					["sourceQuests"] = { 46773 },	-- The Command Center
					["isWorldQuest"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				["crs"] = {
					118704,	-- Dul'zak
					118723,	-- Gazerax
					118705,	-- Nal'asha
					120713,	-- Wa'glur
					120716,	-- Dreadspeaker Serilis
					120715,	-- Raga'yut
					120717,	-- Mistress Dominix
				},
				["g"] = sharedData({
					["bonusID"] = 1812,
				},{
					i(147514),	-- Felguard Destroyer's Legplates
					i(147515),	-- Hellblaze Invader's Greaves
					i(147517),	-- Inquisitor's Battle Cowl
					i(147516),	-- Legion Stalker's Hood
					i(147117, {	-- Orb of the Fel Temptress (CI!)
						["crs"] = {
							120366,	-- Hellblaze Temptress
							118714,	-- Hellblaze Temptress
						},
						["ignoreBonus"] = true,
						["description"] = "This is a rare drop from the Hellblaze Temptress mobs in the Cathedral of Eternal Night, on Heroic or Mythic difficulty.\n\nThere are 7 Temptress' available before the first boss. Kill all 7 and then reset the dungeon.",
					}),
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				cr(117193, e(1905, {	-- Agronox
					i(144469),	-- Caretaker's Budding Mantle
					i(144491),	-- Choking Vine Bindings
					i(144490),	-- Corruption-Fused Stompers
					i(144468),	-- Felpruner's Shroud
					i(144470),	-- Grovetender's Handwraps
					i(144497),	-- Petrified Hust Girdle
					i(144477),	-- Splinters of Agronox
					i(144483),	-- Spore-Coated Vest
					i(144498),	-- Vambraces of Fel Crust
					i(144458),	-- Agronox's Unsullied Heartwood
					i(144459),	-- Knot of Fel
				})),
				cr(117194, e(1906, {	-- Thrashbite the Scornful
					i(144492),	-- Chain-Draped Gauntlets
					i(144482),	-- Fel-Oiled Infernal Machine
					i(144493),	-- Link-Lashed Spaulders
					i(144479),	-- Master Thrasher's Lockcollar
					i(144485),	-- Mo'arg Heavyweight's Wristwraps
					i(144471),	-- Pulverizing Felsoles
					i(144484),	-- Tattered Scornful Leggings
					i(144499),	-- Tenderized Breastplate
					i(144472),	-- Thrashbite's Cummerbund
					i(144462),	-- Fel-Tempered Link
					i(144460),	-- Fury of the Scorned
					i(144461),	-- Thrashbite's Spite
				})),
				cr(119542, e(1904, {	-- Domatrax
					i(144496),	-- Burning Chain Waistguard
					i(144476),	-- Cloak of the Unending Assault
					i(144475),	-- Dark Mistress' Cuffs
					i(144495),	-- Domatrax's Chain Hauberk
					i(144488),	-- Feaster Hide Gloves
					i(144503),	-- Helm of Domatrax
					i(144481),	-- Ring of Fel Domination
					i(144474),	-- Sheer Felwoven Hosiery
					i(144489),	-- Shoulderguards of Legion Domination
					i(144500),	-- Two-Toed Trashstompers
					i(144466),	-- Gore-Flecked Feaster Fang
					i(144467),	-- Vial of Eternal Moon
				})),
				cr(120793, e(1878, {	-- Mephistroth
					ach(11700),	-- Cathedral of Eternal Night
					ach(11701),	-- Heroic: Cathedral of Eternal Night
					i(144478),	-- Band of Dark Solitude
					i(144486),	-- Cerulean Shadowfade Belt
					i(144501),	-- Dread Commander's Pauldrons
					i(144480),	-- Dreadstone of Endless Shadows
					i(144494),	-- Imposing Dreadsoul Headgear
					i(144473),	-- Nathrezim Acolyte's Robes
					i(144502),	-- Shadowed Grips of the Nathrezim
					i(144487),	-- Treads of Creeping Shadows
					i(144465),	-- Essence of the Legion Tempest
					i(144464),	-- Mephistroth's Nail
					i(144463),	-- Shard of Kaldorei Stained Glass
				})),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					cr(117193, e(1905, {	-- Agronox
						ach(11768, {	-- Boom Bloom
							["crs"] = { 121695 },	-- Budding Flower
						}),
						i(144469),	-- Caretaker's Budding Mantle
						i(144491),	-- Choking Vine Bindings
						i(144490),	-- Corruption-Fused Stompers
						i(144468),	-- Felpruner's Shroud
						i(144470),	-- Grovetender's Handwraps
						i(144497),	-- Petrified Hust Girdle
						i(144477),	-- Splinters of Agronox
						i(144483),	-- Spore-Coated Vest
						i(144498),	-- Vambraces of Fel Crust
						i(144458),	-- Agronox's Unsullied Heartwood
						i(144459),	-- Knot of Fel
					})),
					cr(117194, e(1906, {	-- Thrashbite the Scornful
						ach(11769, {	-- A Steamy Romance Saga
							["description"] = "Need to be in a full 5 man party for this achievement.",
						}),
						i(144492),	-- Chain-Draped Gauntlets
						i(144482),	-- Fel-Oiled Infernal Machine
						i(144493),	-- Link-Lashed Spaulders
						i(144479),	-- Master Thrasher's Lockcollar
						i(144485),	-- Mo'arg Heavyweight's Wristwraps
						i(144471),	-- Pulverizing Felsoles
						i(144484),	-- Tattered Scornful Leggings
						i(144499),	-- Tenderized Breastplate
						i(144472),	-- Thrashbite's Cummerbund
						i(144462),	-- Fel-Tempered Link
						i(144460),	-- Fury of the Scorned
						i(144461),	-- Thrashbite's Spite
					})),
					cr(119542, e(1904, {	-- Domatrax
						i(144496),	-- Burning Chain Waistguard
						i(144476),	-- Cloak of the Unending Assault
						i(144475),	-- Dark Mistress' Cuffs
						i(144495),	-- Domatrax's Chain Hauberk
						i(144488),	-- Feaster Hide Gloves
						i(144503),	-- Helm of Domatrax
						i(144481),	-- Ring of Fel Domination
						i(144474),	-- Sheer Felwoven Hosiery
						i(144489),	-- Shoulderguards of Legion Domination
						i(144500),	-- Two-Toed Trashstompers
						i(144466),	-- Gore-Flecked Feaster Fang
						i(144467),	-- Vial of Eternal Moon
					})),
					cr(120793, e(1878, {	-- Mephistroth
						ach(11703),	-- Master of Shadows
						ach(11702),	-- Mythic: Cathedral of Eternal Night
						i(144478),	-- Band of Dark Solitude
						i(144486),	-- Cerulean Shadowfade Belt
						i(144501),	-- Dread Commander's Pauldrons
						i(144480),	-- Dreadstone of Endless Shadows
						i(144494),	-- Imposing Dreadsoul Headgear
						i(144473),	-- Nathrezim Acolyte's Robes
						i(144502),	-- Shadowed Grips of the Nathrezim
						i(144487),	-- Treads of Creeping Shadows
						i(144465),	-- Essence of the Legion Tempest
						i(144464),	-- Mephistroth's Nail
						i(144463),	-- Shard of Kaldorei Stained Glass
					})),
				},
			}),
		},
	}),
}));