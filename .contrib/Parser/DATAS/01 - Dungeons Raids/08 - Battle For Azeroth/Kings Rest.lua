-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	inst(1041, {	-- Kings' Rest
		["coord"] = { 37.6, 39.4, ZULDAZAR },
		["maps"] = {
			1004,	-- Kings' Rest
		},
		["lvl"] = 120,
		["groups"] = {
			n(WORLD_QUESTS, {
				q(51502, {	-- King's Rest: Kingsguard
					["isWorldQuest"] = true,
					["lvl"] = 120,
				}),
				q(51501, {	-- King's Rest: Malfunction Junction
					["isWorldQuest"] = true,
					["lvl"] = 120,
				}),
				q(51500, {	-- King's Rest: The Weaponmaster Walks Again
					["isWorldQuest"] = true,
					["lvl"] = 120,
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(2165, {	-- The Golden Serpent
					["crs"] = { 135322 },	-- The Golden Serpent
					["groups"] = {
						i(159137),	-- Gilded Serpent's Tooth
						i(159413),	-- Gauntlets of the Avian Sentinel
						i(159369),	-- Belt of the Consecrateed Tomb
						i(159313),	-- Breechees of the Sacred Hall
						i(159234),	-- Down-Lined Breeches
						i(159412),	-- Auric Puddle Stompers
						i(159304),	-- Goldfeather Boots
						i(159617),	-- Lustrous Golden Plumage
						i(168168, {	-- Gilded Plume
							["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
						}),
					},
				}),
				e(2171, {	-- Mchimba the Embalmer
					["crs"] = { 134993 },	-- Mchimba the Embalmer
					["groups"] = {
						i(159642),	-- Royal Purifier's Spaade
						i(159667),	-- Vessel of Last Rites
						i(159409),	-- Embalmer's Steadying Bracers
						i(159312),	-- Desiccator's Blessed Gloves
						i(160213),	-- Sepulchral Construct's Gloves
						i(159459),	-- Ritual Binder's Ring
						i(159618),	-- Mchimba's Ritual Bandages
					},
				}),
				e(2170, {	-- The Council of Tribes
					["crs"] = {
						135470,	-- Aka'ali  the Conqueror
						135475,	-- Kula the Butcher
						135472,	-- Zanazal the Wise
					},
					["groups"] = {
						i(160216),	-- Crackling Jade Kilij
						i(159136),	-- Jeweled Dagger of Subjugation
						i(159643),	-- Crossbow of Forgotten Majesty
						i(159288),	-- Cloak of the Restless Tribes
						i(159300),	-- Kula's Butchering Wristwraps
						i(159418),	-- Girdle of Pestilent Purification
						i(159371),	-- Boots of the Headlong Conqueror
						i(159243),	-- Sandals of Wise Voodoo
					},
				}),
				e(2172, {	-- Dazar, The First King
					["crs"] = { 136160 },	-- King Dazar <The First>
					["groups"] = {
						ach(12848),	-- Kings' Rest
						i(159644),	-- Geti'ikku, Cut of Death
						i(159645),	-- Headcracker of Supplication
						i(159236),	-- Headdress of the First Empire
						i(159422),	-- Helm of the Raptor King
						i(158344),	-- Mantle of Ceremonial Ascension
						i(159423),	-- Pauldrons of the Great Unifier
						i(159368),	-- Spaulders of Prime Emperor
						i(158355),	-- Loa-Blessed Chestguard
						i(159303),	-- Vest of Reverent Adoration
						i(159301),	-- Primal Dinomancer's Belt
						i(168129),	-- Essence of the Troll Dynasty
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["difficulties"] = { DIFFICULTY.DUNGEON.KEYSTONE, DIFFICULTY.DUNGEON.MYTHIC },
				["groups"] = {
					ach(12722, {	-- It Belongs in a Mausoleum!
						crit(41269, {	-- First trinket found
							["description"] = "The first trinket is in the first room, on the pedestal in the center of the room.",
						}),
						crit(41270, {	-- Second trinket found
							["description"] = "The trinket is located on the inside of the stairwell that leads up to the closed door in the room that is next to the pedestal for the rejected serpent followers.",
						}),
						crit(41271, {	-- Third trinket found
							["description"] = "At 44.2 / 32.6, the brute slams the ground and knocks you up. The trinket is on the ledge.",
						}),
						crit(41272, {	-- Fourth trinket found
							["description"] = "It is on the right pillar after coming down the stairs to the final boss.",
						}),
					}),
					e(2165, {	-- The Golden Serpent
						["crs"] = { 135322 },	-- The Golden Serpent
						["groups"] = {
							i(159137),	-- Gilded Serpent's Tooth
							i(159413),	-- Gauntlets of the Avian Sentinel
							i(159369),	-- Belt of the Consecrateed Tomb
							i(159313),	-- Breechees of the Sacred Hall
							i(159234),	-- Down-Lined Breeches
							i(159412),	-- Auric Puddle Stompers
							i(159304),	-- Goldfeather Boots
							i(159617),	-- Lustrous Golden Plumage
							i(168168, {	-- Gilded Plume
								["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
							}),
						},
					}),
					e(2171, {	-- Mchimba the Embalmer
						["crs"] = { 134993 },	-- Mchimba the Embalmer
						["groups"] = {
							ach(12721),	-- Wrap God
							i(159642),	-- Royal Purifier's Spaade
							i(159667),	-- Vessel of Last Rites
							i(159409),	-- Embalmer's Steadying Bracers
							i(159312),	-- Desiccator's Blessed Gloves
							i(160213),	-- Sepulchral Construct's Gloves
							i(159459),	-- Ritual Binder's Ring
							i(159618),	-- Mchimba's Ritual Bandages
						},
					}),
					e(2170, {	-- The Council of Tribes
						["crs"] = {
							135470,	-- Aka'ali  the Conqueror
							135475,	-- Kula the Butcher
							135472,	-- Zanazal the Wise
						},
						["groups"] = {
							i(160216),	-- Crackling Jade Kilij
							i(159136),	-- Jeweled Dagger of Subjugation
							i(159643),	-- Crossbow of Forgotten Majesty
							i(159288),	-- Cloak of the Restless Tribes
							i(159300),	-- Kula's Butchering Wristwraps
							i(159418),	-- Girdle of Pestilent Purification
							i(159371),	-- Boots of the Headlong Conqueror
							i(159243),	-- Sandals of Wise Voodoo
						},
					}),
					e(2172, {	-- Dazar, The First King
						["crs"] = { 136160 },	-- King Dazar <The First>
						["groups"] = {
							ach(12848),	-- Kings' Rest
							ach(13008),	-- Kings' Rest Guild Run
							ach(12723, {	-- How to Keep a Mummy
								["description"] = "On the final boss, there are two sarcophagi with 2 greenish stones in front of them. Simply pull the boss and have 1 party member stand on each stone. Lights will start filling up around the bottom. When they are full, it locks in and the rightmost sarcophagus will begin to shake. Simply kill the boss at this point and Miimii is yours!",
								["groups"] = {
									i(161214),	-- Miimii (PET!)
								},
							}),
							i(159921),	-- Tomb Stalker (MOUNT!)
							i(159644),	-- Geti'ikku, Cut of Death
							i(159645),	-- Headcracker of Supplication
							i(159236),	-- Headdress of the First Empire
							i(159422),	-- Helm of the Raptor King
							i(158344),	-- Mantle of Ceremonial Ascension
							i(159423),	-- Pauldrons of the Great Unifier
							i(159368),	-- Spaulders of Prime Emperor
							i(158355),	-- Loa-Blessed Chestguard
							i(159303),	-- Vest of Reverent Adoration
							i(159301),	-- Primal Dinomancer's Belt
							i(168129),	-- Essence of the Troll Dynasty
						},
					}),
				},
			}),
		},
	}),
})));
