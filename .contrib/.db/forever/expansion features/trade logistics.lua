-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, {
	n(TRADE_LOGISTICS, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			n(QUESTS, {
				q(95820, {	-- Karolek
					sourceQuest = 95819,	-- Sign Me Up! [H]
					qg = 256388,	-- Jornah <Contract Coordinator>
					coord = { 49.8, 29.4, MAP.THE_BARRENS },
					maps = { MAP.ORGRIMMAR },
					races = HORDE_ONLY,
				}),
				q(95817, {	-- Rotgath Stonebeard
					sourceQuest = 95816,	-- Sign Me Up! [A]
					qg = 256391,	-- Elaine Compton <Contract Coordinator>
					coord = { 10.2, 71.2, MAP.REDRIDGE_MOUNTAINS },
					maps = { MAP.IRONFORGE },
					races = ALLIANCE_ONLY,
				}),
				q(95816, {	-- Sign Me Up! [A]
					qg = 256391,	-- Elaine Compton <Contract Coordinator>
					qs = 270888,	-- Advertising License Application (QS!)
					qi = 270896,	-- Massive Pile of Forms (PQI!)
					coord = { 10.2, 71.2, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						objective(2, {	-- 0/1 Massive Pile of Completed Forms
							provider = { "i", 270897 },	-- Massive Pile of Completed Forms
						}),
					},
				}),
				q(95819, {	-- Sign Me Up! [H]
					qg = 256388,	-- Jornah <Contract Coordinator>
					qs = 270887,	-- Advertising License Application (QS!)
					qi = 270896,	-- Massive Pile of Forms (PQI!)
					coord = { 49.8, 29.4, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						objective(2, {	-- 0/1 Massive Pile of Completed Forms
							provider = { "i", 270897 },	-- Massive Pile of Completed Forms
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(256732, {	-- Alynsia <Enchanter>
					coord = { 11.1, 71.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
							i(271624, {	-- Enchanting Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(249479, {	-- Formula: Enchant Weapon - Insight (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249480, {	-- Formula: Enchant Weapon - Recovery (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249481, {	-- Formula: Enchant Weapon - Revelation (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249482, {	-- Formula: Glimmering Staff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249476, {	-- Formula: Mystic Mushroom (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249484, {	-- Formula: Orb of Mystic Insight (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249485, {	-- Formula: Orb of Souls (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249478, {	-- Formula: Polished Driftwood Icon (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249483, {	-- Formula: Soulstaff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249477, {	-- Formula: Tenets of the Silver Hand (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
						}, {	-- Friendly
							i(249510, {	-- Formula: Enchant Chest - Absorption (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249504, {	-- Formula: Enchant Necklace - Agility (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249505, {	-- Formula: Enchant Necklace - Deflection (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249503, {	-- Formula: Enchant Necklace - Healing Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249502, {	-- Formula: Enchant Necklace - Spell Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249496, {	-- Formula: Enchant Necklace - Strength (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249507, {	-- Formula: Dreamstaff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249494, {	-- Formula: Libram of Invocation (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249506, {	-- Formula: Radiant Staff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249493, {	-- Formula: Talons of Wrath (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249495, {	-- Formula: Totem of Ancestral Protection (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249508, {	-- Formula: Truesilver Conduit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249509, {	-- Formula: Twisting Essence Jar (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
						}, {	-- Honored
							i(249537, {	-- Formula: Brilliant Wand (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(249526, {	-- Formula: Enchant 2H Weapon - Mighty Healing Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249525, {	-- Formula: Enchant 2H Weapon - Mighty Spell Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274394, {	-- Formula: Enchant 2H Weapon - Spellblasting (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(289560, {	-- Formula: Enchant Boots - Speed (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(274399, {	-- Formula: Enchant Cloak - Agility (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274401, {	-- Formula: Enchant Bracer - Greater Spellpower (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249539, {	-- Formula: Enchant Bracer - Superior Deflection (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249538, {	-- Formula: Enchant Bracer - Superior Intellect (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249534, {	-- Formula: Enchant Gloves - Arcane Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249536, {	-- Formula: Enchant Gloves - Holy Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249535, {	-- Formula: Enchant Gloves - Natural Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274398, {	-- Formula: Enchant Gloves - Superior Strength (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274393, {	-- Formula: Enchant Off-Hand - Wisdom (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249529, {	-- Formula: Idol of the Dream (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249530, {	-- Formula: Libram of Holy Alacrity (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249532, {	-- Formula: Totem of Thunder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(248196, {	-- Apothecary Durelle <Alchemist>
					coord = { 49.8, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
						{	-- Neutral
							i(271621, {	-- Alchemy Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(250388, {	-- Recipe: Elixir of Lesser Intellect (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250381, {	-- Recipe: Elixir of Lesser Spirit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250984, {	-- Recipe: Frenzy Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250378, {	-- Recipe: Lesser Arcane Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250367, {	-- Recipe: Lesser Cleric's Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250376, {	-- Recipe: Lesser Mageblood Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250990, {	-- Recipe: Mender's Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250978, {	-- Recipe: Spellblasting Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
						}, {	-- Friendly
							i(250996, {	-- Recipe: Disorienting Smog Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250371, {	-- Recipe: Elixir of Greater Fortitude (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250383, {	-- Recipe: Elixir of Greater Spirit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250997, {	-- Recipe: Dragonfire Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250369, {	-- Recipe: Greater Cleric's Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250377, {	-- Recipe: Greater Mageblood Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
						}, {	-- Honored
							i(250995, {	-- Recipe: Caustic Smog Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250364, {	-- Recipe: Elixir of Cunning (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250386, {	-- Recipe: Elixir of Ferocity (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250379, {	-- Recipe: Elixir of Nature Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250374, {	-- Recipe: Elixir of Sages (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250387, {	-- Recipe: Elixir of the Grizzly (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(250373, {	-- Recipe: Elixir of the Owl (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250365, {	-- Recipe: Elixir of the Phalanx (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250384, {	-- Recipe: Elixir of the Whale (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250372, {	-- Recipe: Elixir of Wicked Regeneration (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250987, {	-- Recipe: Major Frenzy Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(250993, {	-- Recipe: Major Mender's Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250981, {	-- Recipe: Major Spellblasting Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250998, {	-- Recipe: Potion of Elemental Siphoning (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250994, {	-- Recipe: Potion of Venomous Blood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(248198, {	-- Aza'bek <Chef>
					coord = { 49.6, 29.2, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					sym = {{ "select", "itemID",
						21219,	-- Recipe: Sagefish Delight (RECIPE!)
						21099,	-- Recipe: Smoked Sagefish (RECIPE!)
					}},
				}),
				n(248199, {	-- Beneris <Enchanting>
					coord = { 49.6, 29.8, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
						{	-- Neutral
							i(271624, {	-- Enchanting Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(249479, {	-- Formula: Enchant Weapon - Insight (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249480, {	-- Formula: Enchant Weapon - Recovery (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249481, {	-- Formula: Enchant Weapon - Revelation (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249482, {	-- Formula: Glimmering Staff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249476, {	-- Formula: Mystic Mushroom (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249484, {	-- Formula: Orb of Mystic Insight (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249485, {	-- Formula: Orb of Souls (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249478, {	-- Formula: Polished Driftwood Icon (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249483, {	-- Formula: Soulstaff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(249477, {	-- Formula: Tenets of the Silver Hand (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
						}, {	-- Friendly
							i(249510, {	-- Formula: Enchant Chest - Absorption (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249504, {	-- Formula: Enchant Necklace - Agility (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249505, {	-- Formula: Enchant Necklace - Deflection (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249503, {	-- Formula: Enchant Necklace - Healing Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249502, {	-- Formula: Enchant Necklace - Spell Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249496, {	-- Formula: Enchant Necklace - Strength (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249507, {	-- Formula: Dreamstaff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249494, {	-- Formula: Libram of Invocation (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249506, {	-- Formula: Radiant Staff (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249493, {	-- Formula: Talons of Wrath (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249495, {	-- Formula: Totem of Ancestral Protection (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249508, {	-- Formula: Truesilver Conduit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(249509, {	-- Formula: Twisting Essence Jar (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
						}, {	-- Honored
							i(249537, {	-- Formula: Brilliant Wand (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(249526, {	-- Formula: Enchant 2H Weapon - Mighty Healing Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249525, {	-- Formula: Enchant 2H Weapon - Mighty Spell Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274394, {	-- Formula: Enchant 2H Weapon - Spellblasting (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(289560, {	-- Formula: Enchant Boots - Speed (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(274399, {	-- Formula: Enchant Cloak - Agility (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274401, {	-- Formula: Enchant Bracer - Greater Spellpower (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249539, {	-- Formula: Enchant Bracer - Superior Deflection (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249538, {	-- Formula: Enchant Bracer - Superior Intellect (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249534, {	-- Formula: Enchant Gloves - Arcane Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249536, {	-- Formula: Enchant Gloves - Holy Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249535, {	-- Formula: Enchant Gloves - Natural Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274398, {	-- Formula: Enchant Gloves - Superior Strength (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(274393, {	-- Formula: Enchant Off-Hand - Wisdom (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249529, {	-- Formula: Idol of the Dream (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249530, {	-- Formula: Libram of Holy Alacrity (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(249532, {	-- Formula: Totem of Thunder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256734, {	-- Daniel Stitchsong <Leatherworker>
					coord = { 10.0, 72.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
							i(271626, {	-- Leatherworking Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(252765, {	-- Pattern: Brawler's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252786, {	-- Pattern: Brawler's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252777, {	-- Pattern: Brawler's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252798, {	-- Pattern: Brawler's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252820, {	-- Pattern: Brawler's Leather Legguards (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252805, {	-- Pattern: Brawler's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252788, {	-- Pattern: Defender's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252779, {	-- Pattern: Defender's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252800, {	-- Pattern: Defender's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252822, {	-- Pattern: Defender's Leather Kilt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252807, {	-- Pattern: Defender's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252769, {	-- Pattern: Stormrider's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252790, {	-- Pattern: Stormrider's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252781, {	-- Pattern: Stormrider's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252802, {	-- Pattern: Stormrider's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252824, {	-- Pattern: Stormrider's Leather Kilt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252809, {	-- Pattern: Stormrider's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252768, {	-- Pattern: Totemic Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252789, {	-- Pattern: Totemic Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252780, {	-- Pattern: Totemic Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252801, {	-- Pattern: Totemic Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252823, {	-- Pattern: Totemic Leather Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252808, {	-- Pattern: Totemic Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252766, {	-- Pattern: Trapper's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252787, {	-- Pattern: Trapper's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252778, {	-- Pattern: Trapper's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252799, {	-- Pattern: Trapper's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252821, {	-- Pattern: Trapper's Leather Legguards (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252806, {	-- Pattern: Trapper's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252803, {	-- Pattern: Wisdom's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252782, {	-- Pattern: Wisdom's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252825, {	-- Pattern: Wisdom's Leather Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252770, {	-- Pattern: Wisdom's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252791, {	-- Pattern: Wisdom's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252810, {	-- Pattern: Wisdom's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
						}, {	-- Friendly
							i(252834, {	-- Pattern: Forceful Thick Armor Kit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252842, {	-- Pattern: Mender's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252852, {	-- Pattern: Mender's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252903, {	-- Pattern: Mender's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252836, {	-- Pattern: Prowler's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252848, {	-- Pattern: Prowler's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252840, {	-- Pattern: Skirmisher's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252902, {	-- Pattern: Skirmisher's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252841, {	-- Pattern: Skycaller's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252851, {	-- Pattern: Skycaller's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252901, {	-- Pattern: Skycaller's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252837, {	-- Pattern: Skulker's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252849, {	-- Pattern: Skulker's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252838, {	-- Pattern: Stalker's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252900, {	-- Pattern: Stalker's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252839, {	-- Pattern: Warden's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252850, {	-- Pattern: Warden's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
						}, {	-- Honored
							i(252864, {	-- Pattern: Mender's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252857, {	-- Pattern: Mender's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252876, {	-- Pattern: Mender's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252925, {	-- Pattern: Mender's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252907, {	-- Pattern: Mender's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252913, {	-- Pattern: Mender's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252941, {	-- Pattern: Mystic Rugged Armor Kit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252860, {	-- Pattern: Prowler's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252853, {	-- Pattern: Prowler's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252872, {	-- Pattern: Prowler's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252863, {	-- Pattern: Skycaller's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252856, {	-- Pattern: Skycaller's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252875, {	-- Pattern: Skycaller's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252923, {	-- Pattern: Skycaller's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252905, {	-- Pattern: Skycaller's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252911, {	-- Pattern: Skycaller's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252924, {	-- Pattern: Skirmisher's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252906, {	-- Pattern: Skirmisher's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252912, {	-- Pattern: Skirmisher's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252861, {	-- Pattern: Skulker's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252854, {	-- Pattern: Skulker's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252873, {	-- Pattern: Skulker's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252922, {	-- Pattern: Stalker's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252904, {	-- Pattern: Stalker's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252910, {	-- Pattern: Stalker's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252862, {	-- Pattern: Warden's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252855, {	-- Pattern: Warden's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252874, {	-- Pattern: Warden's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256742, {	-- Dianne Softstep <Uncertified Scribe>
					coord = { 9.0, 76.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						i(262902, {	-- Forged Delivery Receipt
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
							groups = {
								i(262917),	-- Notarized Shipping Container
							},
						}),
						i(262896, {	-- Forger's Quill
							minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
						}),
					},
				}),
				n(248200, {	-- Fizzlefuse <Opportunist Engineer>
					coord = { 49.8, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
								{	-- Neutral
							i(271625, {	-- Engineering Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(264205, {	-- Schematic: EZ-Thro Copper Bomb XL (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264204, {	-- Schematic: EZ-Thro Wrap (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264206, {	-- Schematic: No Slip SAF-T Padding (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264203, {	-- Schematic: SAF-T Copper Bomb (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264202, {	-- Schematic: SAF-T Dynamite (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264201, {	-- Schematic: SAF-T Tabs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(285285, {	-- Schematic: Satchel of Copper Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
						}, {	-- Friendly
							i(280326, {	-- Schematic: Bent Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280323, {	-- Schematic: Clanking Cord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280328, {	-- Schematic: Dented Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(264211, {	-- Schematic: EZ-Thro Fireproof Fuse (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280325, {	-- Schematic: Floppy Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280322, {	-- Schematic: Gizmo Girdle (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(264209, {	-- Schematic: SAF-T Bell (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(285286, {	-- Schematic: Satchel of Bronze Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280327, {	-- Schematic: Stuckbutton Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280321, {	-- Schematic: Whimsical Waistwrap (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
						}, {	-- Honored
							i(264217, {	-- Schematic: Compact Critter Carrier (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264216, {	-- Schematic: Emergency Field Cloak 270 (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264221, {	-- Schematic: Gnomish Army Knife (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264234, {	-- Schematic: Gnomish Poultryizer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
							i(264222, {	-- Schematic: Loot-A-Rang (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264220, {	-- Schematic: SAF-T Disposable Parachute (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(285288, {	-- Schematic: Satchel of Dark Iron Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(285287, {	-- Schematic: Satchel of Iron Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264237, {	-- Schematic: Stealthman 52 (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
							i(264235, {	-- Schematic: Ultralight Goblin Glider (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
							i(264232, {	-- Schematic: Ultrasafe Rechargeable Battery (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256733, {	-- Fritz Fizzle <Engineer>
					coord = { 10.4, 74.4, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
							i(271625, {	-- Engineering Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(264205, {	-- Schematic: EZ-Thro Copper Bomb XL (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264204, {	-- Schematic: EZ-Thro Wrap (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264206, {	-- Schematic: No Slip SAF-T Padding (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264203, {	-- Schematic: SAF-T Copper Bomb (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264202, {	-- Schematic: SAF-T Dynamite (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(264201, {	-- Schematic: SAF-T Tabs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(285285, {	-- Schematic: Satchel of Copper Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
						}, {	-- Friendly
							i(280326, {	-- Schematic: Bent Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280323, {	-- Schematic: Clanking Cord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280328, {	-- Schematic: Dented Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(264211, {	-- Schematic: EZ-Thro Fireproof Fuse (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280325, {	-- Schematic: Floppy Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280322, {	-- Schematic: Gizmo Girdle (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(264209, {	-- Schematic: SAF-T Bell (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(285286, {	-- Schematic: Satchel of Bronze Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280327, {	-- Schematic: Stuckbutton Goggles (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(280321, {	-- Schematic: Whimsical Waistwrap (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
						}, {	-- Honored
							i(264217, {	-- Schematic: Compact Critter Carrier (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264216, {	-- Schematic: Emergency Field Cloak 270 (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264221, {	-- Schematic: Gnomish Army Knife (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264234, {	-- Schematic: Gnomish Poultryizer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
							i(264222, {	-- Schematic: Loot-A-Rang (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264220, {	-- Schematic: SAF-T Disposable Parachute (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(285288, {	-- Schematic: Satchel of Dark Iron Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(285287, {	-- Schematic: Satchel of Iron Bombs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 270 }},
							}),
							i(264237, {	-- Schematic: Stealthman 52 (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
							i(264235, {	-- Schematic: Ultralight Goblin Glider (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
							i(264232, {	-- Schematic: Ultrasafe Rechargeable Battery (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 360 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256384, {	-- Gishah <Supply Officer>
					coord = { 49.4, 29.4, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						i(270887, {	-- Advertising License Application (QS!)
							minReputation = { 2587, HONORED },	-- Durotar Supply and Logistics, Honored.
							cost = { { "c", 3402, 1200 } },	-- x1200 Merchant's Favor
						}),
						i(262764, {	-- Durotar Supply and Logistics Tabard
							minReputation = { 2587, EXALTED },	-- Durotar Supply and Logistics, Exalted.
							cost = { { "c", 3402, 200 } },	-- x200 Merchant's Favor
						}),
						i(284664, {	-- Packmule Treat
							minReputation = { 2587, REVERED },	-- Durotar Supply and Logistics, Revered.
							cost = { { "c", 3402, 1500 } },	-- x1500 Merchant's Favor
						}),
					},
				}),
				n(248197, {	-- Gor'mak <Blacksmith>
					coord = { 49.8, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
						{	-- Neutral
							i(271622, {	-- Blacksmithing Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(251358, {	-- Plans: Acolyte's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251368, {	-- Plans: Acolyte's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251363, {	-- Plans: Acolyte's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251383, {	-- Plans: Acolyte's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251378, {	-- Plans: Acolyte's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251373, {	-- Plans: Acolyte's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(285291, {	-- Plans: Arcanite Blacksmith Hammer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(285289, {	-- Plans: Cracked Blacksmith Hammer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251369, {	-- Plans: Crusader's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251359, {	-- Plans: Crusader's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251364, {	-- Plans: Crusader's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251384, {	-- Plans: Crusader's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251379, {	-- Plans: Crusader's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251374, {	-- Plans: Crusader's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251356, {	-- Plans: Guard's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251366, {	-- Plans: Guard's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251361, {	-- Plans: Guard's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251381, {	-- Plans: Guard's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251376, {	-- Plans: Guard's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251371, {	-- Plans: Guard's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(285290, {	-- Plans: Mithril Blacksmith Hammer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251357, {	-- Plans: Protector's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251367, {	-- Plans: Protector's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251362, {	-- Plans: Protector's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251382, {	-- Plans: Protector's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251377, {	-- Plans: Protector's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251372, {	-- Plans: Protector's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251355, {	-- Plans: Veteran's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251365, {	-- Plans: Veteran's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251360, {	-- Plans: Veteran's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251380, {	-- Plans: Veteran's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251375, {	-- Plans: Veteran's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251370, {	-- Plans: Veteran's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
						}, {	-- Friendly
							i(251422, {	-- Plans: Justicar's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251432, {	-- Plans: Justicar's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251418, {	-- Plans: Officer's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251428, {	-- Plans: Officer's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251421, {	-- Plans: Prefect's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251431, {	-- Plans: Prefect's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251419, {	-- Plans: Sentinel's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251429, {	-- Plans: Sentinel's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251420, {	-- Plans: Warder's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251430, {	-- Plans: Warder's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
						}, {	-- Honored
							i(251447, {	-- Plans: Enriched Thorium Breastplate (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251449, {	-- Plans: Enriched Thorium Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251448, {	-- Plans: Enriched Thorium Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251417, {	-- Plans: Justicar's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251427, {	-- Plans: Justicar's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251437, {	-- Plans: Justicar's Wristguards (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251471, {	-- Plans: Legionite Glaive (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251413, {	-- Plans: Officer's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251423, {	-- Plans: Officer's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251433, {	-- Plans: Officer's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251416, {	-- Plans: Prefect's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251426, {	-- Plans: Prefect's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251436, {	-- Plans: Prefect's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251414, {	-- Plans: Sentinel's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251424, {	-- Plans: Sentinel's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251434, {	-- Plans: Sentinel's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251466, {	-- Plans: Thorium Cestus (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251465, {	-- Plans: Thorium Greatmace (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251415, {	-- Plans: Warder's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251425, {	-- Plans: Warder's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251435, {	-- Plans: Warder's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256736, {	-- Huey Sunnydale <Mule Handler>
					coord = { 8.4, 72.0, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						i(262766, {	-- Reins of the Pack Kodo (MOUNT!)
							minReputation = { 2586, EXALTED },	-- Azeroth Commerce Authority, Exalted.
							cost = { { "c", 3402, 6000 } },	-- x6000 Merchant's Favor
						}),
					},
				}),
				n(248202, {	-- Jim'bek <Tailor>
					coord = { 49.6, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
						{	-- Neutral
							i(253894, {	-- Pattern: Flame Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253954, {	-- Pattern: Flame Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253918, {	-- Pattern: Flame Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253966, {	-- Pattern: Flame Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253992, {	-- Pattern: Flame Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253930, {	-- Pattern: Flame Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253898, {	-- Pattern: Pearly Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253958, {	-- Pattern: Pearly Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253922, {	-- Pattern: Pearly Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253970, {	-- Pattern: Pearly Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253996, {	-- Pattern: Pearly Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253934, {	-- Pattern: Pearly Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253890, {	-- Pattern: Pristine Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253950, {	-- Pattern: Pristine Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253914, {	-- Pattern: Pristine Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253962, {	-- Pattern: Pristine Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253988, {	-- Pattern: Pristine Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253926, {	-- Pattern: Pristine Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253896, {	-- Pattern: Shadow Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253956, {	-- Pattern: Shadow Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253920, {	-- Pattern: Shadow Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253968, {	-- Pattern: Shadow Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253994, {	-- Pattern: Shadow Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253932, {	-- Pattern: Shadow Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253900, {	-- Pattern: Shining Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253960, {	-- Pattern: Shining Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253924, {	-- Pattern: Shining Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253972, {	-- Pattern: Shining Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253998, {	-- Pattern: Shining Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253936, {	-- Pattern: Shining Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253892, {	-- Pattern: Silky Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253952, {	-- Pattern: Silky Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253916, {	-- Pattern: Silky Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253964, {	-- Pattern: Silky Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253990, {	-- Pattern: Silky Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253928, {	-- Pattern: Silky Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(271627, {	-- Tailoring Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
						}, {	-- Friendly
							i(254028, {	-- Pattern: Black Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254088, {	-- Pattern: Black Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254026, {	-- Pattern: Fiery Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254086, {	-- Pattern: Fiery Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254024, {	-- Pattern: Frothing Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254084, {	-- Pattern: Frothing Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254082, {	-- Pattern: Gilded Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254030, {	-- Pattern: Golden Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254090, {	-- Pattern: Golden Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254036, {	-- Pattern: Mageweave Reagent Bag (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254066, {	-- Pattern: Netherflame Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254054, {	-- Pattern: Netherflame Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254062, {	-- Pattern: Nethergeld Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254050, {	-- Pattern: Nethergeld Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254072, {	-- Pattern: Netherlight Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254060, {	-- Pattern: Netherlight Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254064, {	-- Pattern: Netherfroth Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254052, {	-- Pattern: Netherfroth Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254068, {	-- Pattern: Netherpearl Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254056, {	-- Pattern: Netherpearl Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254070, {	-- Pattern: Nethershine Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254058, {	-- Pattern: Nethershine Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254032, {	-- Pattern: Radiant Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254092, {	-- Pattern: Radiant Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254080, {	-- Pattern: Runecloth Reagent Bag (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
						}, {	-- Honored
							i(254114, {	-- Pattern: Black Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254112, {	-- Pattern: Fiery Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254110, {	-- Pattern: Frothing Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254108, {	-- Pattern: Gilded Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254116, {	-- Pattern: Golden Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254118, {	-- Pattern: Radiant Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256731, {	-- Kalsey Sanden <Chef>
					coord = { 10.8, 72.8, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					sym = {{ "select", "itemID",
						2692,	-- Hot Spices
						2678,	-- Mild Spices
						21219,	-- Recipe: Sagefish Delight (RECIPE!)
						21099,	-- Recipe: Smoked Sagefish (RECIPE!)
						159,	-- Refreshing Spring Water
						4536,	-- Shiny Red Apple
						10284,	-- Simple Flour
						4470,	-- Simple Wood
						3713,	-- Soothing Spices
						11291,	-- Star Wood
						272941,	-- Thick Logs
					}},
					groups = {
						i(249888, {	-- Recipe: Calcified Smoothie (RECIPE!)
							minReputation = { 2586, FRIENDLY },	-- Azeroth Commerce Authority, Friendly.
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(249887, {	-- Recipe: Mrrggl Smrrthle (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(249886, {	-- Recipe: Slimy Smoothie (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(249889, {	-- Recipe: Spicy Smoothie (RECIPE!)
							minReputation = { 2586, FRIENDLY },	-- Azeroth Commerce Authority, Friendly.
							cost = { { "c", 3402, 60 } },	-- x60 Merchant's Favor
						}),
						i(249885, {	-- Recipe: Venomous Smoothie (RECIPE!)
							cost = { { "c", 3402, 30 } },	-- x30 Merchant's Favor
						}),
						i(249890, {	-- Recipe: Wicked Smoothie (RECIPE!)
							minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
							cost = { { "c", 3402, 90 } },	-- x90 Merchant's Favor
						}),
					},
				}),
				n(256672, {	-- Kurvelk Shadowhoof <Uncertified Scribe>
					coord = { 49.8, 30.0, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						i(262902, {	-- Forged Delivery Receipt
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
							groups = {
								i(262917),	-- Notarized Shipping Container
							},
						}),
						i(262896, {	-- Forger's Quill
							minReputation = { 2587, HONORED },	-- Durotar Supply and Logistics, Honored.
							cost = { { "c", 3402, 15 } },	-- x15 Merchant's Favor
						}),
					},
				}),
				n(256735, {	-- Mivin Shadowweave <Tailor>
					coord = { 10.0, 72.8, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
							i(253894, {	-- Pattern: Flame Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253954, {	-- Pattern: Flame Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253918, {	-- Pattern: Flame Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253966, {	-- Pattern: Flame Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253992, {	-- Pattern: Flame Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253930, {	-- Pattern: Flame Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253898, {	-- Pattern: Pearly Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253958, {	-- Pattern: Pearly Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253922, {	-- Pattern: Pearly Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253970, {	-- Pattern: Pearly Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253996, {	-- Pattern: Pearly Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253934, {	-- Pattern: Pearly Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253890, {	-- Pattern: Pristine Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253950, {	-- Pattern: Pristine Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253914, {	-- Pattern: Pristine Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253962, {	-- Pattern: Pristine Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253988, {	-- Pattern: Pristine Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253926, {	-- Pattern: Pristine Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253896, {	-- Pattern: Shadow Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253956, {	-- Pattern: Shadow Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253920, {	-- Pattern: Shadow Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253968, {	-- Pattern: Shadow Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253994, {	-- Pattern: Shadow Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253932, {	-- Pattern: Shadow Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253900, {	-- Pattern: Shining Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253960, {	-- Pattern: Shining Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253924, {	-- Pattern: Shining Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253972, {	-- Pattern: Shining Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253998, {	-- Pattern: Shining Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253936, {	-- Pattern: Shining Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253892, {	-- Pattern: Silky Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253952, {	-- Pattern: Silky Circlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253916, {	-- Pattern: Silky Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253964, {	-- Pattern: Silky Gown (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253990, {	-- Pattern: Silky Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(253928, {	-- Pattern: Silky Sash (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(271627, {	-- Tailoring Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
						}, {	-- Friendly
							i(254028, {	-- Pattern: Black Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254088, {	-- Pattern: Black Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254026, {	-- Pattern: Fiery Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254086, {	-- Pattern: Fiery Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254024, {	-- Pattern: Frothing Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254084, {	-- Pattern: Frothing Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254082, {	-- Pattern: Gilded Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254030, {	-- Pattern: Golden Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254090, {	-- Pattern: Golden Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254036, {	-- Pattern: Mageweave Reagent Bag (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254066, {	-- Pattern: Netherflame Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254054, {	-- Pattern: Netherflame Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254062, {	-- Pattern: Nethergeld Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254050, {	-- Pattern: Nethergeld Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254072, {	-- Pattern: Netherlight Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254060, {	-- Pattern: Netherlight Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254064, {	-- Pattern: Netherfroth Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254052, {	-- Pattern: Netherfroth Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254068, {	-- Pattern: Netherpearl Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254056, {	-- Pattern: Netherpearl Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254070, {	-- Pattern: Nethershine Cuffs (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254058, {	-- Pattern: Nethershine Shoulders (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254032, {	-- Pattern: Radiant Handwraps (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254092, {	-- Pattern: Radiant Waistcord (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(254080, {	-- Pattern: Runecloth Reagent Bag (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
						}, {	-- Honored
							i(254114, {	-- Pattern: Black Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254112, {	-- Pattern: Fiery Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254110, {	-- Pattern: Frothing Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254108, {	-- Pattern: Gilded Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254116, {	-- Pattern: Golden Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(254118, {	-- Pattern: Radiant Sandals (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256729, {	-- Nina Surefire <Alchemist>
					coord = { 10.8, 72.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
							i(271621, {	-- Alchemy Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(250388, {	-- Recipe: Elixir of Lesser Intellect (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250381, {	-- Recipe: Elixir of Lesser Spirit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250984, {	-- Recipe: Frenzy Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250378, {	-- Recipe: Lesser Arcane Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250367, {	-- Recipe: Lesser Cleric's Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250376, {	-- Recipe: Lesser Mageblood Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250990, {	-- Recipe: Mender's Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
							i(250978, {	-- Recipe: Spellblasting Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 45 }},
							}),
						}, {	-- Friendly
							i(250996, {	-- Recipe: Disorienting Smog Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250371, {	-- Recipe: Elixir of Greater Fortitude (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250383, {	-- Recipe: Elixir of Greater Spirit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250997, {	-- Recipe: Dragonfire Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250369, {	-- Recipe: Greater Cleric's Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(250377, {	-- Recipe: Greater Mageblood Elixir (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
						}, {	-- Honored
							i(250995, {	-- Recipe: Caustic Smog Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250364, {	-- Recipe: Elixir of Cunning (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250386, {	-- Recipe: Elixir of Ferocity (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250379, {	-- Recipe: Elixir of Nature Power (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250374, {	-- Recipe: Elixir of Sages (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250387, {	-- Recipe: Elixir of the Grizzly (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(250373, {	-- Recipe: Elixir of the Owl (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250365, {	-- Recipe: Elixir of the Phalanx (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250384, {	-- Recipe: Elixir of the Whale (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250372, {	-- Recipe: Elixir of Wicked Regeneration (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250987, {	-- Recipe: Major Frenzy Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 240 }},
							}),
							i(250993, {	-- Recipe: Major Mender's Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250981, {	-- Recipe: Major Spellblasting Potion (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250998, {	-- Recipe: Potion of Elemental Siphoning (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
							i(250994, {	-- Recipe: Potion of Venomous Blood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 180 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256400, {	-- Okamache <Kodo Handler>
					coord = { 49.6, 28.8, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = {
						i(262766, {	-- Reins of the Pack Kodo (MOUNT!)
							minReputation = { 2587, EXALTED },	-- Durotar Supply and Logistics, Exalted.
							cost = { { "c", 3402, 6000 } },	-- x6000 Merchant's Favor
						}),
					},
				}),
				n(248201, {	-- Pawani <Leatherworker>
					coord = { 49.6, 29.6, MAP.THE_BARRENS },
					races = HORDE_ONLY,
					groups = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
						{	-- Neutral
							i(271626, {	-- Leatherworking Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(252765, {	-- Pattern: Brawler's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252786, {	-- Pattern: Brawler's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252777, {	-- Pattern: Brawler's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252798, {	-- Pattern: Brawler's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252820, {	-- Pattern: Brawler's Leather Legguards (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252805, {	-- Pattern: Brawler's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252767, {	-- Pattern: Defender's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252788, {	-- Pattern: Defender's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252779, {	-- Pattern: Defender's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252800, {	-- Pattern: Defender's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252822, {	-- Pattern: Defender's Leather Kilt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252807, {	-- Pattern: Defender's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252769, {	-- Pattern: Stormrider's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252790, {	-- Pattern: Stormrider's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252781, {	-- Pattern: Stormrider's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252802, {	-- Pattern: Stormrider's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252824, {	-- Pattern: Stormrider's Leather Kilt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252809, {	-- Pattern: Stormrider's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252768, {	-- Pattern: Totemic Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252789, {	-- Pattern: Totemic Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252780, {	-- Pattern: Totemic Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252801, {	-- Pattern: Totemic Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252823, {	-- Pattern: Totemic Leather Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252808, {	-- Pattern: Totemic Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252766, {	-- Pattern: Trapper's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252787, {	-- Pattern: Trapper's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252778, {	-- Pattern: Trapper's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252799, {	-- Pattern: Trapper's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252821, {	-- Pattern: Trapper's Leather Legguards (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252806, {	-- Pattern: Trapper's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252803, {	-- Pattern: Wisdom's Leather Hood (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252782, {	-- Pattern: Wisdom's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252825, {	-- Pattern: Wisdom's Leather Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252770, {	-- Pattern: Wisdom's Leather Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(252810, {	-- Pattern: Wisdom's Leather Tunic (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
						}, {	-- Friendly
							i(252834, {	-- Pattern: Forceful Thick Armor Kit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252842, {	-- Pattern: Mender's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252852, {	-- Pattern: Mender's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252903, {	-- Pattern: Mender's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252836, {	-- Pattern: Prowler's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252848, {	-- Pattern: Prowler's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252840, {	-- Pattern: Skirmisher's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252902, {	-- Pattern: Skirmisher's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252841, {	-- Pattern: Skycaller's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252851, {	-- Pattern: Skycaller's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252901, {	-- Pattern: Skycaller's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252837, {	-- Pattern: Skulker's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252849, {	-- Pattern: Skulker's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252838, {	-- Pattern: Stalker's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252900, {	-- Pattern: Stalker's Mail Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252839, {	-- Pattern: Warden's Leather Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(252850, {	-- Pattern: Warden's Leather Shoulder (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
						}, {	-- Honored
							i(252864, {	-- Pattern: Mender's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252857, {	-- Pattern: Mender's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252876, {	-- Pattern: Mender's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252925, {	-- Pattern: Mender's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252907, {	-- Pattern: Mender's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252913, {	-- Pattern: Mender's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252941, {	-- Pattern: Mystic Rugged Armor Kit (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252860, {	-- Pattern: Prowler's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252853, {	-- Pattern: Prowler's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252872, {	-- Pattern: Prowler's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252863, {	-- Pattern: Skycaller's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252856, {	-- Pattern: Skycaller's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252875, {	-- Pattern: Skycaller's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252923, {	-- Pattern: Skycaller's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252905, {	-- Pattern: Skycaller's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252911, {	-- Pattern: Skycaller's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252924, {	-- Pattern: Skirmisher's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252906, {	-- Pattern: Skirmisher's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252912, {	-- Pattern: Skirmisher's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252861, {	-- Pattern: Skulker's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252854, {	-- Pattern: Skulker's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252873, {	-- Pattern: Skulker's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252922, {	-- Pattern: Stalker's Mail Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252904, {	-- Pattern: Stalker's Mail Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252910, {	-- Pattern: Stalker's Mail Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252862, {	-- Pattern: Warden's Leather Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252855, {	-- Pattern: Warden's Leather Bracers (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(252874, {	-- Pattern: Warden's Leather Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256730, {	-- Stondry Darkhammer <Blacksmith>
					coord = { 10.4, 74.6, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
							i(271622, {	-- Blacksmithing Certification
								cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
							}),
							i(251358, {	-- Plans: Acolyte's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251368, {	-- Plans: Acolyte's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251363, {	-- Plans: Acolyte's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251383, {	-- Plans: Acolyte's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251378, {	-- Plans: Acolyte's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251373, {	-- Plans: Acolyte's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(285291, {	-- Plans: Arcanite Blacksmith Hammer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(285289, {	-- Plans: Cracked Blacksmith Hammer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251369, {	-- Plans: Crusader's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251359, {	-- Plans: Crusader's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251364, {	-- Plans: Crusader's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251384, {	-- Plans: Crusader's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251379, {	-- Plans: Crusader's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251374, {	-- Plans: Crusader's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251356, {	-- Plans: Guard's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251366, {	-- Plans: Guard's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251361, {	-- Plans: Guard's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251381, {	-- Plans: Guard's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251376, {	-- Plans: Guard's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251371, {	-- Plans: Guard's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(285290, {	-- Plans: Mithril Blacksmith Hammer (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251357, {	-- Plans: Protector's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251367, {	-- Plans: Protector's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251362, {	-- Plans: Protector's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251382, {	-- Plans: Protector's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251377, {	-- Plans: Protector's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251372, {	-- Plans: Protector's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251355, {	-- Plans: Veteran's Boots (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251365, {	-- Plans: Veteran's Chain Belt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251360, {	-- Plans: Veteran's Gloves (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251380, {	-- Plans: Veteran's Silvered Chain Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251375, {	-- Plans: Veteran's Silvered Chain Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
							i(251370, {	-- Plans: Veteran's Silvered Chain Shirt (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 30 }},
							}),
						}, {	-- Friendly
							i(251422, {	-- Plans: Justicar's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251432, {	-- Plans: Justicar's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251418, {	-- Plans: Officer's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251428, {	-- Plans: Officer's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251421, {	-- Plans: Prefect's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251431, {	-- Plans: Prefect's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251419, {	-- Plans: Sentinel's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251429, {	-- Plans: Sentinel's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251420, {	-- Plans: Warder's Gauntlet (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
							i(251430, {	-- Plans: Warder's Pauldrons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 60 }},
							}),
						}, {	-- Honored
							i(251447, {	-- Plans: Enriched Thorium Breastplate (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251449, {	-- Plans: Enriched Thorium Helm (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251448, {	-- Plans: Enriched Thorium Leggings (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251417, {	-- Plans: Justicar's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251427, {	-- Plans: Justicar's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251437, {	-- Plans: Justicar's Wristguards (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251471, {	-- Plans: Legionite Glaive (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 120 }},
							}),
							i(251413, {	-- Plans: Officer's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251423, {	-- Plans: Officer's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251433, {	-- Plans: Officer's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251416, {	-- Plans: Prefect's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251426, {	-- Plans: Prefect's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251436, {	-- Plans: Prefect's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251414, {	-- Plans: Sentinel's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251424, {	-- Plans: Sentinel's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251434, {	-- Plans: Sentinel's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251466, {	-- Plans: Thorium Cestus (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251465, {	-- Plans: Thorium Greatmace (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251415, {	-- Plans: Warder's Sabatons (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251425, {	-- Plans: Warder's Waistguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
							i(251435, {	-- Plans: Warder's Wristguard (RECIPE!)
								cost = {{ "c", MERCHANTS_FAVOR, 90 }},
							}),
						}, {	-- Revered
						}, {	-- Exalted
						},
					}),
				}),
				n(256389, {	-- Tamelyn Aldridge <Supply Officer>
					coord = { 10.5, 71.3, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					groups = {
						i(270888, {	-- Advertising License Application (QS!)
							minReputation = { 2586, HONORED },	-- Azeroth Commerce Authority, Honored.
							cost = { { "c", 3402, 1200 } },	-- x1200 Merchant's Favor
						}),
						i(262765, {	-- Azeroth Commerce Authority Tabard
							minReputation = { 2586, EXALTED },	-- Azeroth Commerce Authority, Exalted.
							cost = { { "c", 3402, 200 } },	-- x200 Merchant's Favor
						}),
						i(284664, {	-- Packmule Treat
							minReputation = { 2586, REVERED },	-- Azeroth Commerce Authority, Revered.
							cost = { { "c", 3402, 1500 } },	-- x1500 Merchant's Favor
						}),
					},
				}),
			}),
		},
	}),
});
