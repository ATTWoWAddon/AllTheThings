-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CRAFTSMANS_WRITS_HEADER = createHeader({
	readable = "Craftsman's Writs",
	icon = 134327,
	text = {
		en = "Craftsman's Writs",
	},
	description = {
		en = "Sealed Journeyman's, Expert's and Artisan's Writs drop all over Azeroth and contain a random Craftsman's Writ of that rank. Each writ starts a daily quest to deliver a crafted item to a customer marked on your map, rewarding reputation with the Azeroth Commerce Authority or Durotar Supply and Logistics. You don't need the profession yourself.",
	},
});
root(ROOTS.ExpansionFeatures, {
	n(TRADE_LOGISTICS, {
		timeline = { TIMELINE.ADDED_1_60_1 },
		groups = {
			n(CRAFTSMANS_WRITS_HEADER, {
				n(QUESTS, {
					prof(ALCHEMY, {
						q(94260, {	-- Craftsman's Writ: Catseye Draught [Expert]
							qs = 264060,	-- Craftsman's Writ: Catseye Draught (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10592, 1 } },	-- Catseye Draught
							isDaily = true,
						}),
						q(94324, {	-- Craftsman's Writ: Distilled Firewater [Artisan]
							qs = 264124,	-- Craftsman's Writ: Distilled Firewater (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 246948, 1 } },	-- Distilled Firewater
							isDaily = true,
						}),
						q(94319, {	-- Craftsman's Writ: Draught of Detect Demon [Artisan]
							qs = 264119,	-- Craftsman's Writ: Draught of Detect Demon (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9233, 1 } },	-- Draught of Detect Demon
							isDaily = true,
						}),
						q(94219, {	-- Craftsman's Writ: Draught of Water Breathing [Journeyman]
							qs = 264019,	-- Craftsman's Writ: Draught of Water Breathing (QS!)
							cr = 8305,	-- Kixxle <Potions & Herbs>
							coord = { 50.2, 37.8, MAP.WETLANDS },
							cost = { { "i", 5996, 1 } },	-- Draught of Water Breathing
							isDaily = true,
						}),
						q(94317, {	-- Craftsman's Writ: Dreamless Sleep Potion [Artisan]
							qs = 264117,	-- Craftsman's Writ: Dreamless Sleep Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 12190, 1 } },	-- Dreamless Sleep Potion
							isDaily = true,
						}),
						q(94266, {	-- Craftsman's Writ: Elixir of Agility [Expert]
							qs = 264066,	-- Craftsman's Writ: Elixir of Agility (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8949, 1 } },	-- Elixir of Agility
							isDaily = true,
						}),
						q(94218, {	-- Craftsman's Writ: Elixir of Defense [Journeyman]
							qs = 264018,	-- Craftsman's Writ: Elixir of Defense (QS!)
							cr = 4720,	-- Rizzle Brassbolts
							coord = { 77.2, 77.4, MAP.THOUSAND_NEEDLES },
							cost = { { "i", 8951, 1 } },	-- Elixir of Defense
							races = HORDE_ONLY,
							isDaily = true,
						}),
						q(94216, {	-- Craftsman's Writ: Elixir of Lesser Agility [Journeyman]
							qs = 264016,	-- Craftsman's Writ: Elixir of Lesser Agility (QS!)
							cr = 4201,	-- Ziz Fizziks
							coord = { 59.0, 62.4, MAP.STONETALON_MOUNTAINS },
							cost = { { "i", 3390, 1 } },	-- Elixir of Lesser Agility
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94004, {	-- Craftsman's Writ: Elixir of Ogre's Strength [Journeyman]
							qs = 264011,	-- Craftsman's Writ: Elixir of Ogre's Strength (QS!)
							cr = 257281,	-- Sos'mol <Crushridge Runt>
							coord = { 38.4, 61.2, MAP.ALTERAC_MOUNTAINS },
							cost = { { "i", 3391, 1 } },	-- Elixir of Ogre Strength
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94212, {	-- Craftsman's Writ: Elixir of Wisdom [Journeyman]
							qs = 264012,	-- Craftsman's Writ: Elixir of Wisdom (QS!)
							cr = 257296,	-- Muggol Breezebeard <Wildhammer Clan>
							coord = { 48.8, 55.8, MAP.ARATHI_HIGHLANDS },
							cost = { { "i", 3383, 1 } },	-- Elixir of Wisdom
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94263, {	-- Craftsman's Writ: Fire Protection Potion [Expert]
							qs = 264063,	-- Craftsman's Writ: Fire Protection Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 6049, 1 } },	-- Fire Protection Potion
							isDaily = true,
						}),
						q(94321, {	-- Craftsman's Writ: Flask of Chromatic Resistance [Artisan]
							qs = 264121,	-- Craftsman's Writ: Flask of Chromatic Resistance (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 13513, 1 } },	-- Flask of Chromatic Resistance
							isDaily = true,
						}),
						q(94215, {	-- Craftsman's Writ: Free Action Potion [Journeyman]
							qs = 264015,	-- Craftsman's Writ: Free Action Potion (QS!)
							cr = 261928,	-- Webbed Mudsnout Gnoll
							coord = { 62.2, 69.2, MAP.HILLSBRAD_FOOTHILLS },
							cost = { { "i", 5634, 1 } },	-- Free Action Potion
							isDaily = true,
						}),
						q(94256, {	-- Craftsman's Writ: Frost Protection Potion [Expert]
							qs = 264056,	-- Craftsman's Writ: Frost Protection Potion (QS!)
							cr = 2921,	-- Lotwil Veriatus
							coord = { 25.8, 45.0, MAP.BADLANDS },
							cost = { { "i", 6050, 1 } },	-- Frost Protection Potion
							isDaily = true,
						}),
						q(94320, {	-- Craftsman's Writ: Gift of Arthas [Artisan]
							qs = 264120,	-- Craftsman's Writ: Gift of Arthas (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9088, 1 } },	-- Gift of Arthas
							isDaily = true,
						}),
						q(94265, {	-- Craftsman's Writ: Goblin Rocket Fuel [Expert]
							qs = 264065,	-- Craftsman's Writ: Goblin Rocket Fuel (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9061, 1 } },	-- Goblin Rocket Fuel
							isDaily = true,
						}),
						q(94261, {	-- Craftsman's Writ: Great Rage Potion [Expert]
							qs = 264061,	-- Craftsman's Writ: Great Rage Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 5633, 1 } },	-- Great Rage Potion
							isDaily = true,
						}),
						q(94318, {	-- Craftsman's Writ: Greater Fire Protection Potion [Artisan]
							qs = 264118,	-- Craftsman's Writ: Greater Fire Protection Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 13457, 1 } },	-- Greater Fire Protection Potion
							isDaily = true,
						}),
						q(94257, {	-- Craftsman's Writ: Lesser Invisibility Potion [Expert]
							qs = 264057,	-- Craftsman's Writ: Lesser Invisibility Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 3823, 1 } },	-- Lesser Invisibility Potion
							isDaily = true,
						}),
						q(94213, {	-- Craftsman's Writ: Lesser Mana Potion [Journeyman]
							qs = 264013,	-- Craftsman's Writ: Lesser Mana Potion (QS!)
							cr = 257315,	-- Ash'alari
							coord = { 60.2, 72.4, MAP.ASHENVALE },
							cost = { { "i", 3385, 1 } },	-- Lesser Mana Potion
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94258, {	-- Craftsman's Writ: Lesser Stoneshield Potion [Expert]
							qs = 264058,	-- Craftsman's Writ: Lesser Stoneshield Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4623, 1 } },	-- Lesser Stoneshield Potion
							isDaily = true,
						}),
						q(94217, {	-- Craftsman's Writ: Lesser Troll's Blood Elixir [Journeyman]
							qs = 264017,	-- Craftsman's Writ: Lesser Troll's Blood Elixir (QS!)
							cr = 14508,	-- Short John Mithril
							coord = { 29.4, 47.4, MAP.STRANGLETHORN_VALE },
							cost = { { "i", 3388, 1 } },	-- Lesser Troll's Blood Elixir
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94322, {	-- Craftsman's Writ: Limited Invulnerability Potion [Artisan]
							qs = 264122,	-- Craftsman's Writ: Limited Invulnerability Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 3387, 1 } },	-- Limited Invulnerability Potion
							isDaily = true,
						}),
						q(94323, {	-- Craftsman's Writ: Major Rejuvenation Potion [Artisan]
							qs = 264123,	-- Craftsman's Writ: Major Rejuvenation Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 18253, 1 } },	-- Major Rejuvenation Potion
							isDaily = true,
						}),
						q(94262, {	-- Craftsman's Writ: Mana Potion [Expert]
							qs = 264062,	-- Craftsman's Writ: Mana Potion (QS!)
							cr = 262284,	-- Spek
							coord = { 76.8, 54.2, MAP.RIVERGLADES },
							cost = { { "i", 3827, 1 } },	-- Mana Potion
							isDaily = true,
						}),
						q(94259, {	-- Craftsman's Writ: Nature Protection Potion [Expert]
							qs = 264059,	-- Craftsman's Writ: Nature Protection Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 6052, 1 } },	-- Nature Protection Potion
							isDaily = true,
						}),
						q(94316, {	-- Craftsman's Writ: Potion of Demonslaying [Artisan]
							qs = 264116,	-- Craftsman's Writ: Potion of Demonslaying (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9224, 1 } },	-- Potion of Demon Slaying
							isDaily = true,
						}),
						q(94264, {	-- Craftsman's Writ: Shadow Oil [Expert]
							qs = 264064,	-- Craftsman's Writ: Shadow Oil (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 3824, 1 } },	-- Shadow Oil
							isDaily = true,
						}),
						q(94214, {	-- Craftsman's Writ: Shadow Protection Potion [Journeyman]
							qs = 264014,	-- Craftsman's Writ: Shadow Protection Potion (QS!)
							cr = 3134,	-- Kzixx <Rare Goods>
							coord = { 81.4, 19.8, MAP.DUSKWOOD },
							cost = { { "i", 6048, 1 } },	-- Shadow Protection Potion
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94267, {	-- Craftsman's Writ: Wildvine Potion [Expert]
							qs = 264067,	-- Craftsman's Writ: Wildvine Potion (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9144, 1 } },	-- Wildvine Potion
							isDaily = true,
						}),
					}),
					prof(BLACKSMITHING, {
						q(94332, {	-- Craftsman's Writ: Arcanite Skeleton Key [Artisan]
							qs = 264132,	-- Craftsman's Writ: Arcanite Skeleton Key (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15872, 1 } },	-- Arcanite Skeleton Key
							isDaily = true,
						}),
						q(94227, {	-- Craftsman's Writ: Big Bronze Knife [Journeyman]
							qs = 264027,	-- Craftsman's Writ: Big Bronze Knife (QS!)
							cr = 6626,	-- "Plucky" Johnson
							coord = { 79.4, 75.6, MAP.THOUSAND_NEEDLES },
							cost = { { "i", 3848, 1 } },	-- Big Bronze Knife
							isDaily = true,
						}),
						q(94272, {	-- Craftsman's Writ: Blue Glittering Axe [Expert]
							qs = 264072,	-- Craftsman's Writ: Blue Glittering Axe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7942, 1 } },	-- Blue Glittering Axe
							isDaily = true,
						}),
						q(94330, {	-- Craftsman's Writ: Darkrune Gauntlets [Artisan]
							qs = 264130,	-- Craftsman's Writ: Darkrune Gauntlets (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 20549, 1 } },	-- Darkrune Gauntlets
							isDaily = true,
						}),
						q(94333, {	-- Craftsman's Writ: Ebon Shiv [Artisan]
							qs = 264133,	-- Craftsman's Writ: Ebon Shiv (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7947, 1 } },	-- Ebon Shiv
							isDaily = true,
						}),
						q(94221, {	-- Craftsman's Writ: Golden Rod [Journeyman]
							qs = 264021,	-- Craftsman's Writ: Golden Rod (QS!)
							cr = 257296,	-- Muggol Breezebeard <Wildhammer Clan>
							coord = { 48.8, 55.8, MAP.ARATHI_HIGHLANDS },
							cost = { { "i", 11128, 1 } },	-- Golden Rod
							isDaily = true,
						}),
						q(94274, {	-- Craftsman's Writ: Golden Scale Coif [Expert]
							qs = 264074,	-- Craftsman's Writ: Golden Scale Coif (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 3837, 1 } },	-- Golden Scale Coif
							isDaily = true,
						}),
						q(94278, {	-- Craftsman's Writ: Golden Scale Gauntlets [Expert]
							qs = 264078,	-- Craftsman's Writ: Golden Scale Gauntlets (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9366, 1 } },	-- Golden Scale Gauntlets
							isDaily = true,
						}),
						q(94228, {	-- Craftsman's Writ: Green Iron Boots [Journeyman]
							qs = 264028,	-- Craftsman's Writ: Green Iron Boots (QS!)
							cr = 8305,	-- Kixxle <Potions & Herbs>
							coord = { 50.2, 37.8, MAP.WETLANDS },
							cost = { { "i", 3484, 1 } },	-- Green Iron Boots
							isDaily = true,
						}),
						q(94226, {	-- Craftsman's Writ: Green Iron Gauntlets [Journeyman]
							qs = 264026,	-- Craftsman's Writ: Green Iron Gauntlets (QS!)
							cr = 2501,	-- "Sea Wolf" MacKinley
							coord = { 27.8, 77.0, MAP.STRANGLETHORN_VALE },
							cost = { { "i", 3485, 1 } },	-- Green Iron Gauntlets
							isDaily = true,
						}),
						q(94224, {	-- Craftsman's Writ: Heavy Bronze Mace [Journeyman]
							qs = 264024,	-- Craftsman's Writ: Heavy Bronze Mace (QS!)
							cr = 261932,	-- Gorgrash <Escaped Durnholde Prisoner>
							coord = { 80.0, 48.2, MAP.HILLSBRAD_FOOTHILLS },
							cost = { { "i", 3491, 1 } },	-- Heavy Bronze Mace
							isDaily = true,
						}),
						q(94279, {	-- Craftsman's Writ: Heavy Mithril Axe [Expert]
							qs = 264079,	-- Craftsman's Writ: Heavy Mithril Axe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7941, 1 } },	-- Heavy Mithril Axe
							isDaily = true,
						}),
						q(94331, {	-- Craftsman's Writ: Huge Thorium Battleaxe [Artisan]
							qs = 264131,	-- Craftsman's Writ: Huge Thorium Battleaxe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 12775, 1 } },	-- Huge Thorium Battleaxe
							isDaily = true,
						}),
						q(94329, {	-- Craftsman's Writ: Imperial Plate Chest [Artisan]
							qs = 264129,	-- Craftsman's Writ: Imperial Plate Chest (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 12422, 1 } },	-- Imperial Plate Chest
							isDaily = true,
						}),
						q(94269, {	-- Craftsman's Writ: Inlaid Mithril Cylinder [Expert]
							qs = 264069,	-- Craftsman's Writ: Inlaid Mithril Cylinder (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9060, 1 } },	-- Inlaid Mithril Cylinder
							isDaily = true,
						}),
						q(94222, {	-- Craftsman's Writ: Iridescent Hammer [Journeyman]
							qs = 264022,	-- Craftsman's Writ: Iridescent Hammer (QS!)
							cr = 257316,	-- Cowardly Peon <Self-Proclaimed Brave Peon>
							coord = { 78.4, 68.8, MAP.ASHENVALE },
							cost = { { "i", 5541, 1 } },	-- Iridescent Hammer
							isDaily = true,
						}),
						q(94328, {	-- Craftsman's Writ: Mithril Spurs [Artisan]
							qs = 264128,	-- Craftsman's Writ: Mithril Spurs (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7969, 1 } },	-- Mithril Spurs
							isDaily = true,
						}),
						q(94273, {	-- Craftsman's Writ: Moonsteel Broadsword [Expert]
							qs = 264073,	-- Craftsman's Writ: Moonsteel Broadsword (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 3853, 1 } },	-- Moonsteel Broadsword
							isDaily = true,
						}),
						q(94327, {	-- Craftsman's Writ: Orcish War Leggings [Artisan]
							qs = 264127,	-- Craftsman's Writ: Orcish War Leggings (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7929, 1 } },	-- Orcish War Leggings
							isDaily = true,
						}),
						q(94271, {	-- Craftsman's Writ: Ornate Mithril Shoulders [Expert]
							qs = 264071,	-- Craftsman's Writ: Ornate Mithril Shoulders (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7928, 1 } },	-- Ornate Mithril Shoulders
							isDaily = true,
						}),
						q(94220, {	-- Craftsman's Writ: Pearl-Handled Dagger [Journeyman]
							qs = 264020,	-- Craftsman's Writ: Pearl-Handled Dagger (QS!)
							cr = 257282,	-- Alan Sneeks
							coord = { 30.4, 61.2, MAP.ALTERAC_MOUNTAINS },
							cost = { { "i", 5540, 1 } },	-- Pearl-handled Dagger
							races = HORDE_ONLY,
							isDaily = true,
						}),
						q(94326, {	-- Craftsman's Writ: Radiant Belt [Artisan]
							qs = 264126,	-- Craftsman's Writ: Radiant Belt (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 12416, 1 } },	-- Radiant Belt
							isDaily = true,
						}),
						q(94325, {	-- Craftsman's Writ: Radiant Circlet [Artisan]
							qs = 264125,	-- Craftsman's Writ: Radiant Circlet (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 12417, 1 } },	-- Radiant Circlet
							isDaily = true,
						}),
						q(94225, {	-- Craftsman's Writ: Rough Bronze Leggings [Journeyman]
							qs = 264025,	-- Craftsman's Writ: Rough Bronze Leggings (QS!)
							cr = 4201,	-- Ziz Fizziks
							coord = { 59.0, 62.4, MAP.STONETALON_MOUNTAINS },
							cost = { { "i", 2865, 1 } },	-- Rough Bronze Leggings
							isDaily = true,
						}),
						q(94223, {	-- Craftsman's Writ: Silver Skeleton Key [Journeyman]
							qs = 264023,	-- Craftsman's Writ: Silver Skeleton Key (QS!)
							coord = { 26.2, 36.2, MAP.DUSKWOOD },
							-- TODO: Wowhead doesn't name the customer yet.
							cost = { { "i", 15869, 1 } },	-- Silver Skeleton Key
							isDaily = true,
						}),
						q(94275, {	-- Craftsman's Writ: Solid Sharpening Stone [Expert]
							qs = 264075,	-- Craftsman's Writ: Solid Sharpening Stone (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7964, 1 } },	-- Solid Sharpening Stone
							isDaily = true,
						}),
						q(94268, {	-- Craftsman's Writ: Steel Plate Helm [Expert]
							qs = 264068,	-- Craftsman's Writ: Steel Plate Helm (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7922, 1 } },	-- Steel Plate Helm
							isDaily = true,
						}),
						q(94270, {	-- Craftsman's Writ: Steel Weapon Chain [Expert]
							qs = 264070,	-- Craftsman's Writ: Steel Weapon Chain (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 6041, 1 } },	-- Steel Weapon Chain
							isDaily = true,
						}),
						q(94277, {	-- Craftsman's Writ: Truesilver Rod [Expert]
							qs = 264077,	-- Craftsman's Writ: Truesilver Rod (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 11144, 1 } },	-- Truesilver Rod
							isDaily = true,
						}),
						q(94276, {	-- Craftsman's Writ: Wicked Mithril Blade [Expert]
							qs = 264076,	-- Craftsman's Writ: Wicked Mithril Blade (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7943, 1 } },	-- Wicked Mithril Blade
							isDaily = true,
						}),
					}),
					prof(ENGINEERING, {
						q(94281, {	-- Craftsman's Writ: Advanced Target Dummy [Expert]
							qs = 264081,	-- Craftsman's Writ: Advanced Target Dummy (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4392, 1 } },	-- Advanced Target Dummy
							isDaily = true,
						}),
						q(94236, {	-- Craftsman's Writ: Big Bronze Bomb [Journeyman]
							qs = 264036,	-- Craftsman's Writ: Big Bronze Bomb (QS!)
							cr = 4706,	-- Razzeric
							coord = { 80.2, 76.0, MAP.THOUSAND_NEEDLES },
							cost = { { "i", 4380, 1 } },	-- Big Bronze Bomb
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94284, {	-- Craftsman's Writ: Catseye Ultra Goggles [Expert]
							qs = 264084,	-- Craftsman's Writ: Catseye Ultra Goggles (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10501, 1 } },	-- Catseye Ultra Goggles
							isDaily = true,
						}),
						q(94237, {	-- Craftsman's Writ: Crafted Solid Shot [Journeyman]
							qs = 264037,	-- Craftsman's Writ: Crafted Solid Shot (QS!)
							cr = 8305,	-- Kixxle <Potions & Herbs>
							coord = { 50.2, 37.8, MAP.WETLANDS },
							cost = { { "i", 8069, 200 } },	-- Crafted Solid Shot
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94282, {	-- Craftsman's Writ: Craftsman's Monocle [Expert]
							qs = 264082,	-- Craftsman's Writ: Craftsman's Monocle (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4393, 1 } },	-- Craftsman's Monocle
							isDaily = true,
						}),
						q(94291, {	-- Craftsman's Writ: Dark Iron Bomb [Expert]
							qs = 264091,	-- Craftsman's Writ: Dark Iron Bomb (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 16005, 1 } },	-- Dark Iron Bomb
							isDaily = true,
						}),
						q(94230, {	-- Craftsman's Writ: Explosive Sheep [Journeyman]
							qs = 264030,	-- Craftsman's Writ: Explosive Sheep (QS!)
							cr = 257304,	-- Alyce
							coord = { 34.0, 23.2, MAP.ARATHI_HIGHLANDS },
							cost = { { "i", 4384, 1 } },	-- Explosive Sheep
							isDaily = true,
						}),
						q(94339, {	-- Craftsman's Writ: Field Repair Bot 74A [Artisan]
							qs = 264139,	-- Craftsman's Writ: Field Repair Bot 74A (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 18232, 1 } },	-- Field Repair Bot 74A
							isDaily = true,
						}),
						q(94287, {	-- Craftsman's Writ: Fire Goggles [Expert]
							qs = 264087,	-- Craftsman's Writ: Fire Goggles (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10500, 1 } },	-- Fire Goggles
							isDaily = true,
						}),
						q(94286, {	-- Craftsman's Writ: Flash Bomb [Expert]
							qs = 264086,	-- Craftsman's Writ: Flash Bomb (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4852, 1 } },	-- Flash Bomb
							isDaily = true,
						}),
						q(94337, {	-- Craftsman's Writ: Gnomish Alarm-O-Bot [Artisan]
							qs = 264137,	-- Craftsman's Writ: Gnomish Alarm-O-Bot (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 18645, 1 } },	-- Gnomish Alarm-O-Bot
							isDaily = true,
						}),
						q(94235, {	-- Craftsman's Writ: Gnomish Universal Remote [Journeyman]
							qs = 264035,	-- Craftsman's Writ: Gnomish Universal Remote (QS!)
							cr = 7853,	-- Scooty <Chief Engineer>
							coord = { 27.4, 77.4, MAP.STRANGLETHORN_VALE },
							cost = { { "i", 7506, 1 } },	-- Gnomish Universal Remote
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94338, {	-- Craftsman's Writ: Goblin Jumper Cables XL [Artisan]
							qs = 264138,	-- Craftsman's Writ: Goblin Jumper Cables XL (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 18587, 1 } },	-- Goblin Jumper Cables XL
							isDaily = true,
						}),
						q(94283, {	-- Craftsman's Writ: Goblin Land Mine [Expert]
							qs = 264083,	-- Craftsman's Writ: Goblin Land Mine (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4395, 1 } },	-- Goblin Land Mine
							isDaily = true,
						}),
						q(94335, {	-- Craftsman's Writ: Green Lens [Artisan]
							qs = 264135,	-- Craftsman's Writ: Green Lens (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10504, 1 } },	-- Green Lens
							isDaily = true,
						}),
						q(94289, {	-- Craftsman's Writ: Gyromatic Micro-Adjuster [Expert]
							qs = 264089,	-- Craftsman's Writ: Gyromatic Micro-Adjuster (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10498, 1 } },	-- Gyromatic Micro-Adjustor
							isDaily = true,
						}),
						q(94336, {	-- Craftsman's Writ: Lifelike Mechanical Toad [Artisan]
							qs = 264136,	-- Craftsman's Writ: Lifelike Mechanical Toad (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15996, 1 } },	-- Lifelike Mechanical Toad
							isDaily = true,
						}),
						q(94334, {	-- Craftsman's Writ: Masterwork Target Dummy [Artisan]
							qs = 264134,	-- Craftsman's Writ: Masterwork Target Dummy (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 16023, 1 } },	-- Masterwork Target Dummy
							isDaily = true,
						}),
						q(94280, {	-- Craftsman's Writ: Mechanical Dragonling [Expert]
							qs = 264080,	-- Craftsman's Writ: Mechanical Dragonling (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4396, 1 } },	-- Mechanical Dragonling
							isDaily = true,
						}),
						q(94290, {	-- Craftsman's Writ: Mechanical Repair Kit [Expert]
							qs = 264090,	-- Craftsman's Writ: Mechanical Repair Kit (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 11590, 1 } },	-- Mechanical Repair Kit
							isDaily = true,
						}),
						q(94232, {	-- Craftsman's Writ: Minor Recombobulator [Journeyman]
							qs = 264032,	-- Craftsman's Writ: Minor Recombobulator (QS!)
							cr = 3134,	-- Kzixx <Rare Goods>
							coord = { 81.4, 19.8, MAP.DUSKWOOD },
							cost = { { "i", 4381, 1 } },	-- Minor Recombobulator
							isDaily = true,
						}),
						q(94288, {	-- Craftsman's Writ: Mithril Frag Bomb [Expert]
							qs = 264088,	-- Craftsman's Writ: Mithril Frag Bomb (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10514, 1 } },	-- Mithril Frag Bomb
							isDaily = true,
						}),
						q(94231, {	-- Craftsman's Writ: Moonsight Rifle [Journeyman]
							qs = 264031,	-- Craftsman's Writ: Moonsight Rifle (QS!)
							cr = 257317,	-- Grembly
							coord = { 82.2, 50.8, MAP.ASHENVALE },
							cost = { { "i", 4383, 1 } },	-- Moonsight Rifle
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94229, {	-- Craftsman's Writ: Ornate Spyglass [Journeyman]
							qs = 264029,	-- Craftsman's Writ: Ornate Spyglass (QS!)
							cr = 257282,	-- Alan Sneeks
							coord = { 30.4, 61.2, MAP.ALTERAC_MOUNTAINS },
							cost = { { "i", 5507, 1 } },	-- Ornate Spyglass
							isDaily = true,
						}),
						q(94233, {	-- Craftsman's Writ: Practice Lock [Journeyman]
							qs = 264033,	-- Craftsman's Writ: Practice Lock (QS!)
							cr = 261932,	-- Gorgrash <Escaped Durnholde Prisoner>
							coord = { 80.0, 48.2, MAP.HILLSBRAD_FOOTHILLS },
							cost = { { "i", 6712, 1 } },	-- Practice Lock
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94234, {	-- Craftsman's Writ: Shadow Goggles [Journeyman]
							qs = 264034,	-- Craftsman's Writ: Shadow Goggles (QS!)
							cr = 4201,	-- Ziz Fizziks
							coord = { 59.0, 62.4, MAP.STONETALON_MOUNTAINS },
							cost = { { "i", 4373, 1 } },	-- Shadow Goggles
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94341, {	-- Craftsman's Writ: Sniper Scope [Artisan]
							qs = 264141,	-- Craftsman's Writ: Sniper Scope (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10548, 1 } },	-- Sniper Scope
							isDaily = true,
						}),
						q(94342, {	-- Craftsman's Writ: Tranquil Mechanical Yeti [Artisan]
							qs = 264142,	-- Craftsman's Writ: Tranquil Mechanical Yeti (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 21277, 1 } },	-- Tranquil Mechanical Yeti
							isDaily = true,
						}),
						q(94340, {	-- Craftsman's Writ: Truesilver Transformer [Artisan]
							qs = 264140,	-- Craftsman's Writ: Truesilver Transformer (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 18631, 1 } },	-- Truesilver Transformer
							isDaily = true,
						}),
						q(94285, {	-- Craftsman's Writ: Unstable Trigger [Expert]
							qs = 264085,	-- Craftsman's Writ: Unstable Trigger (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10560, 1 } },	-- Unstable Trigger
							isDaily = true,
						}),
					}),
					prof(LEATHERWORKING, {
						q(94245, {	-- Craftsman's Writ: Barbaric Gloves [Journeyman]
							qs = 264045,	-- Craftsman's Writ: Barbaric Gloves (QS!)
							cr = 4496,	-- Goblin Pit Boss
							coord = { 79.8, 76.4, MAP.THOUSAND_NEEDLES },
							cost = { { "i", 4254, 1 } },	-- Barbaric Gloves
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94300, {	-- Craftsman's Writ: Big Voodoo Mask [Expert]
							qs = 264100,	-- Craftsman's Writ: Big Voodoo Mask (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8201, 1 } },	-- Big Voodoo Mask
							isDaily = true,
						}),
						q(94301, {	-- Craftsman's Writ: Big Voodoo Robe [Expert]
							qs = 264101,	-- Craftsman's Writ: Big Voodoo Robe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8200, 1 } },	-- Big Voodoo Robe
							isDaily = true,
						}),
						q(94348, {	-- Craftsman's Writ: Chimeric Vest [Artisan]
							qs = 264148,	-- Craftsman's Writ: Chimeric Vest (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15075, 1 } },	-- Chimeric Vest
							isDaily = true,
						}),
						q(94292, {	-- Craftsman's Writ: Comfortable Leather Hat [Expert]
							qs = 264092,	-- Craftsman's Writ: Comfortable Leather Hat (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8174, 1 } },	-- Comfortable Leather Hat
							isDaily = true,
						}),
						q(94244, {	-- Craftsman's Writ: Dark Leather Shoulders [Journeyman]
							qs = 264044,	-- Craftsman's Writ: Dark Leather Shoulders (QS!)
							cr = 2663,	-- Narkk <Pirate Supplies>
							coord = { 28.2, 74.4, MAP.STRANGLETHORN_VALE },
							cost = { { "i", 4252, 1 } },	-- Dark Leather Shoulders
							isDaily = true,
						}),
						q(94241, {	-- Craftsman's Writ: Dark Leather Tunic [Journeyman]
							qs = 264041,	-- Craftsman's Writ: Dark Leather Tunic (QS!)
							cr = 3134,	-- Kzixx <Rare Goods>
							coord = { 81.4, 19.8, MAP.DUSKWOOD },
							cost = { { "i", 2317, 1 } },	-- Dark Leather Tunic
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94294, {	-- Craftsman's Writ: Dusky Bracers [Expert]
							qs = 264094,	-- Craftsman's Writ: Dusky Bracers (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7378, 1 } },	-- Dusky Bracers
							isDaily = true,
						}),
						q(94239, {	-- Craftsman's Writ: Fine Leather Pants [Journeyman]
							qs = 264039,	-- Craftsman's Writ: Fine Leather Pants (QS!)
							cr = 257304,	-- Alyce
							coord = { 34.0, 23.2, MAP.ARATHI_HIGHLANDS },
							cost = { { "i", 5958, 1 } },	-- Fine Leather Pants
							isDaily = true,
						}),
						q(94351, {	-- Craftsman's Writ: Frostsaber Boots [Artisan]
							qs = 264151,	-- Craftsman's Writ: Frostsaber Boots (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15071, 1 } },	-- Frostsaber Boots
							isDaily = true,
						}),
						q(94293, {	-- Craftsman's Writ: Guardian Cloak [Expert]
							qs = 264093,	-- Craftsman's Writ: Guardian Cloak (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 5965, 1 } },	-- Guardian Cloak
							isDaily = true,
						}),
						q(94238, {	-- Craftsman's Writ: Heavy Leather Ball [Journeyman]
							qs = 264038,	-- Craftsman's Writ: Heavy Leather Ball (QS!)
							cr = 257281,	-- Sos'mol <Crushridge Runt>
							coord = { 38.4, 61.2, MAP.ALTERAC_MOUNTAINS },
							cost = { { "i", 18662, 1 } },	-- Heavy Leather Ball
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94243, {	-- Craftsman's Writ: Heavy Quiver [Journeyman]
							qs = 264043,	-- Craftsman's Writ: Heavy Quiver (QS!)
							cr = 4201,	-- Ziz Fizziks
							coord = { 59.0, 62.4, MAP.STONETALON_MOUNTAINS },
							cost = { { "i", 7371, 1 } },	-- Heavy Quiver
							isDaily = true,
						}),
						q(94349, {	-- Craftsman's Writ: Heavy Scorpid Helm [Artisan]
							qs = 264149,	-- Craftsman's Writ: Heavy Scorpid Helm (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15080, 1 } },	-- Heavy Scorpid Helm
							isDaily = true,
						}),
						q(94240, {	-- Craftsman's Writ: Herbalist's Gloves [Journeyman]
							qs = 264040,	-- Craftsman's Writ: Herbalist's Gloves (QS!)
							cr = 257322,	-- Murache
							coord = { 64.6, 80.0, MAP.ASHENVALE },
							cost = { { "i", 7349, 1 } },	-- Herbalist's Gloves
							isDaily = true,
						}),
						q(94299, {	-- Craftsman's Writ: Nightscape Shoulders [Expert]
							qs = 264099,	-- Craftsman's Writ: Nightscape Shoulders (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8192, 1 } },	-- Nightscape Shoulders
							isDaily = true,
						}),
						q(94242, {	-- Craftsman's Writ: Pilferer's Gloves [Journeyman]
							qs = 264042,	-- Craftsman's Writ: Pilferer's Gloves (QS!)
							cr = 3536,	-- Kris Legace <Freewheeling Tradeswoman>
							coord = { 80.0, 39.0, MAP.HILLSBRAD_FOOTHILLS },
							cost = { { "i", 7358, 1 } },	-- Pilferer's Gloves
							isDaily = true,
						}),
						q(94297, {	-- Craftsman's Writ: Quickdraw Quiver [Expert]
							qs = 264097,	-- Craftsman's Writ: Quickdraw Quiver (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8217, 1 } },	-- Quickdraw Quiver
							isDaily = true,
						}),
						q(94246, {	-- Craftsman's Writ: Red Whelp Gloves [Journeyman]
							qs = 264046,	-- Craftsman's Writ: Red Whelp Gloves (QS!)
							cr = 8305,	-- Kixxle <Potions & Herbs>
							coord = { 50.2, 37.8, MAP.WETLANDS },
							cost = { { "i", 7284, 1 } },	-- Red Whelp Gloves
							isDaily = true,
						}),
						q(94350, {	-- Craftsman's Writ: Runic Leather Bracers [Artisan]
							qs = 264150,	-- Craftsman's Writ: Runic Leather Bracers (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15092, 1 } },	-- Runic Leather Bracers
							isDaily = true,
						}),
						q(94346, {	-- Craftsman's Writ: Runic Leather Headband [Artisan]
							qs = 264146,	-- Craftsman's Writ: Runic Leather Headband (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15094, 1 } },	-- Runic Leather Headband
							isDaily = true,
						}),
						q(94298, {	-- Craftsman's Writ: Swift Boots [Expert]
							qs = 264098,	-- Craftsman's Writ: Swift Boots (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7391, 1 } },	-- Swift Boots
							isDaily = true,
						}),
						q(94303, {	-- Craftsman's Writ: Thick Leather Ammo Pouch [Expert]
							qs = 264103,	-- Craftsman's Writ: Thick Leather Ammo Pouch (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8218, 1 } },	-- Thick Leather Ammo Pouch
							isDaily = true,
						}),
						q(94302, {	-- Craftsman's Writ: Turtle Scale Breastplate [Expert]
							qs = 264102,	-- Craftsman's Writ: Turtle Scale Breastplate (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8189, 1 } },	-- Turtle Scale Breastplate
							isDaily = true,
						}),
						q(94345, {	-- Craftsman's Writ: Volcanic Breastplate [Artisan]
							qs = 264145,	-- Craftsman's Writ: Volcanic Breastplate (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15053, 1 } },	-- Volcanic Breastplate
							isDaily = true,
						}),
						q(94347, {	-- Craftsman's Writ: Wicked Leather Bracers [Artisan]
							qs = 264147,	-- Craftsman's Writ: Wicked Leather Bracers (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15084, 1 } },	-- Wicked Leather Bracers
							isDaily = true,
						}),
						q(94343, {	-- Craftsman's Writ: Wicked Leather Pants [Artisan]
							qs = 264143,	-- Craftsman's Writ: Wicked Leather Pants (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 15087, 1 } },	-- Wicked Leather Pants
							isDaily = true,
						}),
						q(94295, {	-- Craftsman's Writ: Wild Leather Helmet [Expert]
							qs = 264095,	-- Craftsman's Writ: Wild Leather Helmet (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8214, 1 } },	-- Wild Leather Helmet
							isDaily = true,
						}),
						q(94296, {	-- Craftsman's Writ: Wild Leather Shoulders [Expert]
							qs = 264096,	-- Craftsman's Writ: Wild Leather Shoulders (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 8210, 1 } },	-- Wild Leather Shoulders
							isDaily = true,
						}),
					}),
					prof(TAILORING, {
						q(94249, {	-- Craftsman's Writ: Azure Silk Hood [Journeyman]
							qs = 264049,	-- Craftsman's Writ: Azure Silk Hood (QS!)
							cr = 257316,	-- Cowardly Peon <Self-Proclaimed Brave Peon>
							coord = { 78.4, 68.8, MAP.ASHENVALE },
							cost = { { "i", 7048, 1 } },	-- Azure Silk Hood
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94310, {	-- Craftsman's Writ: Black Mageweave Vest [Expert]
							qs = 264110,	-- Craftsman's Writ: Black Mageweave Vest (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 9998, 1 } },	-- Black Mageweave Vest
							isDaily = true,
						}),
						q(94248, {	-- Craftsman's Writ: Blue Overalls [Journeyman]
							qs = 264048,	-- Craftsman's Writ: Blue Overalls (QS!)
							cr = 257304,	-- Alyce
							coord = { 34.0, 23.2, MAP.ARATHI_HIGHLANDS },
							cost = { { "i", 6263, 1 } },	-- Blue Overalls
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94357, {	-- Craftsman's Writ: Cenarion Herb Bag [Artisan]
							qs = 264157,	-- Craftsman's Writ: Cenarion Herb Bag (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 22251, 1 } },	-- Cenarion Herb Bag
							isDaily = true,
						}),
						q(94314, {	-- Craftsman's Writ: Cindercloth Robe [Expert]
							qs = 264114,	-- Craftsman's Writ: Cindercloth Robe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10042, 1 } },	-- Cindercloth Robe
							isDaily = true,
						}),
						q(94253, {	-- Craftsman's Writ: Colorful Kilt [Journeyman]
							qs = 264053,	-- Craftsman's Writ: Colorful Kilt (QS!)
							cr = 261961,	-- Hekshi <Zandalar Infiltrator>
							coord = { 50.4, 19.2, MAP.STRANGLETHORN_VALE },
							cost = { { "i", 10048, 1 } },	-- Colorful Kilt
							races = HORDE_ONLY,
							isDaily = true,
						}),
						q(94306, {	-- Craftsman's Writ: Crimson Silk Robe [Expert]
							qs = 264106,	-- Craftsman's Writ: Crimson Silk Robe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7063, 1 } },	-- Crimson Silk Robe
							isDaily = true,
						}),
						q(94315, {	-- Craftsman's Writ: Earthen Silk Belt [Expert]
							qs = 264115,	-- Craftsman's Writ: Earthen Silk Belt (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 7061, 1 } },	-- Earthen Silk Belt
							isDaily = true,
						}),
						q(94308, {	-- Craftsman's Writ: Enchanted Mageweave Pouch [Expert]
							qs = 264108,	-- Craftsman's Writ: Enchanted Mageweave Pouch (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 22246, 1 } },	-- Enchanted Mageweave Pouch
							isDaily = true,
						}),
						q(94356, {	-- Craftsman's Writ: Felcloth Boots [Artisan]
							qs = 264156,	-- Craftsman's Writ: Felcloth Boots (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 14108, 1 } },	-- Felcloth Boots
							isDaily = true,
						}),
						q(94359, {	-- Craftsman's Writ: Ghostweave Vest [Artisan]
							qs = 264159,	-- Craftsman's Writ: Ghostweave Vest (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 14141, 1 } },	-- Ghostweave Vest
							isDaily = true,
						}),
						q(94344, {	-- Craftsman's Writ: Gordok Ogre Suit [Artisan]
							qs = 264144,	-- Craftsman's Writ: Gordok Ogre Suit (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 18258, 1 } },	-- Gordok Ogre Suit
							isDaily = true,
						}),
						q(94254, {	-- Craftsman's Writ: Greater Adept's Robe [Journeyman]
							qs = 264054,	-- Craftsman's Writ: Greater Adept's Robe (QS!)
							cr = 6548,	-- Magus Tirth
							coord = { 78.2, 75.8, MAP.THOUSAND_NEEDLES },
							cost = { { "i", 6264, 1 } },	-- Greater Adept's Robe
							isDaily = true,
						}),
						q(94247, {	-- Craftsman's Writ: Lesser Wizard's Robe [Journeyman]
							qs = 264047,	-- Craftsman's Writ: Lesser Wizard's Robe (QS!)
							cr = 257282,	-- Alan Sneeks
							coord = { 30.4, 61.2, MAP.ALTERAC_MOUNTAINS },
							cost = { { "i", 5766, 1 } },	-- Lesser Wizard's Robe
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94304, {	-- Craftsman's Writ: Mageweave Bag [Expert]
							qs = 264104,	-- Craftsman's Writ: Mageweave Bag (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10050, 1 } },	-- Mageweave Bag
							isDaily = true,
						}),
						q(94312, {	-- Craftsman's Writ: Orange Martial Shirt [Expert]
							qs = 264112,	-- Craftsman's Writ: Orange Martial Shirt (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10052, 1 } },	-- Orange Martial Shirt
							isDaily = true,
						}),
						q(94251, {	-- Craftsman's Writ: Phoenix Pants [Journeyman]
							qs = 264051,	-- Craftsman's Writ: Phoenix Pants (QS!)
							cr = 6176,	-- Bath'rah the Windwatcher
							coord = { 80.2, 62.6, MAP.ALTERAC_MOUNTAINS },
							cost = { { "i", 4317, 1 } },	-- Phoenix Pants
							races = HORDE_ONLY,
							isDaily = true,
						}),
						q(94311, {	-- Craftsman's Writ: Red Mageweave Pants [Expert]
							qs = 264111,	-- Craftsman's Writ: Red Mageweave Pants (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10009, 1 } },	-- Red Mageweave Pants
							isDaily = true,
						}),
						q(94252, {	-- Craftsman's Writ: Red Woolen Boots [Journeyman]
							qs = 264052,	-- Craftsman's Writ: Red Woolen Boots (QS!)
							cr = 4201,	-- Ziz Fizziks
							coord = { 59.0, 62.4, MAP.STONETALON_MOUNTAINS },
							cost = { { "i", 4313, 1 } },	-- Red Woolen Boots
							races = ALLIANCE_ONLY,
							isDaily = true,
						}),
						q(94353, {	-- Craftsman's Writ: Runecloth Bag [Artisan]
							qs = 264153,	-- Craftsman's Writ: Runecloth Bag (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 14046, 1 } },	-- Runecloth Bag
							isDaily = true,
						}),
						q(94354, {	-- Craftsman's Writ: Runecloth Boots [Artisan]
							qs = 264154,	-- Craftsman's Writ: Runecloth Boots (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 13864, 1 } },	-- Runecloth Boots
							isDaily = true,
						}),
						q(94305, {	-- Craftsman's Writ: Shadoweave Gloves [Expert]
							qs = 264105,	-- Craftsman's Writ: Shadoweave Gloves (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10023, 1 } },	-- Shadoweave Gloves
							isDaily = true,
						}),
						q(94358, {	-- Craftsman's Writ: Shadoweave Mask [Artisan]
							qs = 264158,	-- Craftsman's Writ: Shadoweave Mask (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10025, 1 } },	-- Shadoweave Mask
							isDaily = true,
						}),
						q(94307, {	-- Craftsman's Writ: Shadoweave Robe [Expert]
							qs = 264107,	-- Craftsman's Writ: Shadoweave Robe (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10004, 1 } },	-- Shadoweave Robe
							isDaily = true,
						}),
						q(94250, {	-- Craftsman's Writ: Small Silk Pack [Journeyman]
							qs = 264050,	-- Craftsman's Writ: Small Silk Pack (QS!)
							cr = 3134,	-- Kzixx <Rare Goods>
							coord = { 81.4, 19.8, MAP.DUSKWOOD },
							cost = { { "i", 4245, 1 } },	-- Small Silk Pack
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94360, {	-- Craftsman's Writ: Soul Pouch [Artisan]
							qs = 264160,	-- Craftsman's Writ: Soul Pouch (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 21340, 1 } },	-- Soul Pouch
							isDaily = true,
						}),
						q(94255, {	-- Craftsman's Writ: Spider Silk Slippers [Journeyman]
							qs = 264055,	-- Craftsman's Writ: Spider Silk Slippers (QS!)
							cr = 8305,	-- Kixxle <Potions & Herbs>
							coord = { 50.2, 37.8, MAP.WETLANDS },
							cost = { { "i", 4321, 1 } },	-- Spider Silk Slippers
							races = HORDE_ONLY,
							isDaily = true,
							groups = {
								i(284584),	-- Coin Pouch
							},
						}),
						q(94309, {	-- Craftsman's Writ: Star Belt [Expert]
							qs = 264109,	-- Craftsman's Writ: Star Belt (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 4329, 1 } },	-- Star Belt
							isDaily = true,
						}),
						q(94355, {	-- Craftsman's Writ: Tuxedo Jacket [Artisan]
							qs = 264155,	-- Craftsman's Writ: Tuxedo Jacket (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10036, 1 } },	-- Tuxedo Jacket
							isDaily = true,
						}),
						q(94313, {	-- Craftsman's Writ: White Bandit Mask [Expert]
							qs = 264113,	-- Craftsman's Writ: White Bandit Mask (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 10008, 1 } },	-- White Bandit Mask
							isDaily = true,
						}),
						q(94352, {	-- Craftsman's Writ: Wizardweave Turban [Artisan]
							qs = 264152,	-- Craftsman's Writ: Wizardweave Turban (QS!)
							-- TODO: Wowhead doesn't list the customer yet.
							cost = { { "i", 14130, 1 } },	-- Wizardweave Turban
							isDaily = true,
						}),
					}),
				}),
				-- TODO: No Apprentice writs are known yet.
				i(262887),	-- Sealed Apprentice's Writ
				i(262888, {	-- Sealed Journeyman's Writ
					i(264049),	-- Craftsman's Writ: Azure Silk Hood (QS!)
					i(264045),	-- Craftsman's Writ: Barbaric Gloves (QS!)
					i(264036),	-- Craftsman's Writ: Big Bronze Bomb (QS!)
					i(264027),	-- Craftsman's Writ: Big Bronze Knife (QS!)
					i(264048),	-- Craftsman's Writ: Blue Overalls (QS!)
					i(264053),	-- Craftsman's Writ: Colorful Kilt (QS!)
					i(264037),	-- Craftsman's Writ: Crafted Solid Shot (QS!)
					i(264044),	-- Craftsman's Writ: Dark Leather Shoulders (QS!)
					i(264041),	-- Craftsman's Writ: Dark Leather Tunic (QS!)
					i(264019),	-- Craftsman's Writ: Draught of Water Breathing (QS!)
					i(264018),	-- Craftsman's Writ: Elixir of Defense (QS!)
					i(264016),	-- Craftsman's Writ: Elixir of Lesser Agility (QS!)
					i(264011),	-- Craftsman's Writ: Elixir of Ogre's Strength (QS!)
					i(264012),	-- Craftsman's Writ: Elixir of Wisdom (QS!)
					i(264030),	-- Craftsman's Writ: Explosive Sheep (QS!)
					i(264039),	-- Craftsman's Writ: Fine Leather Pants (QS!)
					i(264015),	-- Craftsman's Writ: Free Action Potion (QS!)
					i(264035),	-- Craftsman's Writ: Gnomish Universal Remote (QS!)
					i(264021),	-- Craftsman's Writ: Golden Rod (QS!)
					i(264054),	-- Craftsman's Writ: Greater Adept's Robe (QS!)
					i(264028),	-- Craftsman's Writ: Green Iron Boots (QS!)
					i(264026),	-- Craftsman's Writ: Green Iron Gauntlets (QS!)
					i(264024),	-- Craftsman's Writ: Heavy Bronze Mace (QS!)
					i(264038),	-- Craftsman's Writ: Heavy Leather Ball (QS!)
					i(264043),	-- Craftsman's Writ: Heavy Quiver (QS!)
					i(264040),	-- Craftsman's Writ: Herbalist's Gloves (QS!)
					i(264022),	-- Craftsman's Writ: Iridescent Hammer (QS!)
					i(264013),	-- Craftsman's Writ: Lesser Mana Potion (QS!)
					i(264017),	-- Craftsman's Writ: Lesser Troll's Blood Elixir (QS!)
					i(264047),	-- Craftsman's Writ: Lesser Wizard's Robe (QS!)
					i(264032),	-- Craftsman's Writ: Minor Recombobulator (QS!)
					i(264031),	-- Craftsman's Writ: Moonsight Rifle (QS!)
					i(264029),	-- Craftsman's Writ: Ornate Spyglass (QS!)
					i(264020),	-- Craftsman's Writ: Pearl-Handled Dagger (QS!)
					i(264051),	-- Craftsman's Writ: Phoenix Pants (QS!)
					i(264042),	-- Craftsman's Writ: Pilferer's Gloves (QS!)
					i(264033),	-- Craftsman's Writ: Practice Lock (QS!)
					i(264046),	-- Craftsman's Writ: Red Whelp Gloves (QS!)
					i(264052),	-- Craftsman's Writ: Red Woolen Boots (QS!)
					i(264025),	-- Craftsman's Writ: Rough Bronze Leggings (QS!)
					i(264034),	-- Craftsman's Writ: Shadow Goggles (QS!)
					i(264014),	-- Craftsman's Writ: Shadow Protection Potion (QS!)
					i(264023),	-- Craftsman's Writ: Silver Skeleton Key (QS!)
					i(264050),	-- Craftsman's Writ: Small Silk Pack (QS!)
					i(264055),	-- Craftsman's Writ: Spider Silk Slippers (QS!)
				}),
				i(262889, {	-- Sealed Expert's Writ
					i(264081),	-- Craftsman's Writ: Advanced Target Dummy (QS!)
					i(264100),	-- Craftsman's Writ: Big Voodoo Mask (QS!)
					i(264101),	-- Craftsman's Writ: Big Voodoo Robe (QS!)
					i(264110),	-- Craftsman's Writ: Black Mageweave Vest (QS!)
					i(264072),	-- Craftsman's Writ: Blue Glittering Axe (QS!)
					i(264060),	-- Craftsman's Writ: Catseye Draught (QS!)
					i(264084),	-- Craftsman's Writ: Catseye Ultra Goggles (QS!)
					i(264114),	-- Craftsman's Writ: Cindercloth Robe (QS!)
					i(264092),	-- Craftsman's Writ: Comfortable Leather Hat (QS!)
					i(264082),	-- Craftsman's Writ: Craftsman's Monocle (QS!)
					i(264106),	-- Craftsman's Writ: Crimson Silk Robe (QS!)
					i(264091),	-- Craftsman's Writ: Dark Iron Bomb (QS!)
					i(264094),	-- Craftsman's Writ: Dusky Bracers (QS!)
					i(264115),	-- Craftsman's Writ: Earthen Silk Belt (QS!)
					i(264066),	-- Craftsman's Writ: Elixir of Agility (QS!)
					i(264108),	-- Craftsman's Writ: Enchanted Mageweave Pouch (QS!)
					i(264087),	-- Craftsman's Writ: Fire Goggles (QS!)
					i(264063),	-- Craftsman's Writ: Fire Protection Potion (QS!)
					i(264086),	-- Craftsman's Writ: Flash Bomb (QS!)
					i(264056),	-- Craftsman's Writ: Frost Protection Potion (QS!)
					i(264083),	-- Craftsman's Writ: Goblin Land Mine (QS!)
					i(264065),	-- Craftsman's Writ: Goblin Rocket Fuel (QS!)
					i(264074),	-- Craftsman's Writ: Golden Scale Coif (QS!)
					i(264078),	-- Craftsman's Writ: Golden Scale Gauntlets (QS!)
					i(264061),	-- Craftsman's Writ: Great Rage Potion (QS!)
					i(264093),	-- Craftsman's Writ: Guardian Cloak (QS!)
					i(264089),	-- Craftsman's Writ: Gyromatic Micro-Adjuster (QS!)
					i(264079),	-- Craftsman's Writ: Heavy Mithril Axe (QS!)
					i(264069),	-- Craftsman's Writ: Inlaid Mithril Cylinder (QS!)
					i(264057),	-- Craftsman's Writ: Lesser Invisibility Potion (QS!)
					i(264058),	-- Craftsman's Writ: Lesser Stoneshield Potion (QS!)
					i(264104),	-- Craftsman's Writ: Mageweave Bag (QS!)
					i(264062),	-- Craftsman's Writ: Mana Potion (QS!)
					i(264080),	-- Craftsman's Writ: Mechanical Dragonling (QS!)
					i(264090),	-- Craftsman's Writ: Mechanical Repair Kit (QS!)
					i(264088),	-- Craftsman's Writ: Mithril Frag Bomb (QS!)
					i(264073),	-- Craftsman's Writ: Moonsteel Broadsword (QS!)
					i(264059),	-- Craftsman's Writ: Nature Protection Potion (QS!)
					i(264099),	-- Craftsman's Writ: Nightscape Shoulders (QS!)
					i(264112),	-- Craftsman's Writ: Orange Martial Shirt (QS!)
					i(264071),	-- Craftsman's Writ: Ornate Mithril Shoulders (QS!)
					i(264097),	-- Craftsman's Writ: Quickdraw Quiver (QS!)
					i(264111),	-- Craftsman's Writ: Red Mageweave Pants (QS!)
					i(264064),	-- Craftsman's Writ: Shadow Oil (QS!)
					i(264105),	-- Craftsman's Writ: Shadoweave Gloves (QS!)
					i(264107),	-- Craftsman's Writ: Shadoweave Robe (QS!)
					i(264075),	-- Craftsman's Writ: Solid Sharpening Stone (QS!)
					i(264109),	-- Craftsman's Writ: Star Belt (QS!)
					i(264068),	-- Craftsman's Writ: Steel Plate Helm (QS!)
					i(264070),	-- Craftsman's Writ: Steel Weapon Chain (QS!)
					i(264098),	-- Craftsman's Writ: Swift Boots (QS!)
					i(264103),	-- Craftsman's Writ: Thick Leather Ammo Pouch (QS!)
					i(264077),	-- Craftsman's Writ: Truesilver Rod (QS!)
					i(264102),	-- Craftsman's Writ: Turtle Scale Breastplate (QS!)
					i(264085),	-- Craftsman's Writ: Unstable Trigger (QS!)
					i(264113),	-- Craftsman's Writ: White Bandit Mask (QS!)
					i(264076),	-- Craftsman's Writ: Wicked Mithril Blade (QS!)
					i(264095),	-- Craftsman's Writ: Wild Leather Helmet (QS!)
					i(264096),	-- Craftsman's Writ: Wild Leather Shoulders (QS!)
					i(264067),	-- Craftsman's Writ: Wildvine Potion (QS!)
				}),
				i(262890, {	-- Sealed Artisan's Writ
					i(264132),	-- Craftsman's Writ: Arcanite Skeleton Key (QS!)
					i(264157),	-- Craftsman's Writ: Cenarion Herb Bag (QS!)
					i(264148),	-- Craftsman's Writ: Chimeric Vest (QS!)
					i(264130),	-- Craftsman's Writ: Darkrune Gauntlets (QS!)
					i(264124),	-- Craftsman's Writ: Distilled Firewater (QS!)
					i(264119),	-- Craftsman's Writ: Draught of Detect Demon (QS!)
					i(264117),	-- Craftsman's Writ: Dreamless Sleep Potion (QS!)
					i(264133),	-- Craftsman's Writ: Ebon Shiv (QS!)
					i(264156),	-- Craftsman's Writ: Felcloth Boots (QS!)
					i(264139),	-- Craftsman's Writ: Field Repair Bot 74A (QS!)
					i(264121),	-- Craftsman's Writ: Flask of Chromatic Resistance (QS!)
					i(264151),	-- Craftsman's Writ: Frostsaber Boots (QS!)
					i(264159),	-- Craftsman's Writ: Ghostweave Vest (QS!)
					i(264120),	-- Craftsman's Writ: Gift of Arthas (QS!)
					i(264137),	-- Craftsman's Writ: Gnomish Alarm-O-Bot (QS!)
					i(264138),	-- Craftsman's Writ: Goblin Jumper Cables XL (QS!)
					i(264144),	-- Craftsman's Writ: Gordok Ogre Suit (QS!)
					i(264118),	-- Craftsman's Writ: Greater Fire Protection Potion (QS!)
					i(264135),	-- Craftsman's Writ: Green Lens (QS!)
					i(264149),	-- Craftsman's Writ: Heavy Scorpid Helm (QS!)
					i(264131),	-- Craftsman's Writ: Huge Thorium Battleaxe (QS!)
					i(264129),	-- Craftsman's Writ: Imperial Plate Chest (QS!)
					i(264136),	-- Craftsman's Writ: Lifelike Mechanical Toad (QS!)
					i(264122),	-- Craftsman's Writ: Limited Invulnerability Potion (QS!)
					i(264123),	-- Craftsman's Writ: Major Rejuvenation Potion (QS!)
					i(264134),	-- Craftsman's Writ: Masterwork Target Dummy (QS!)
					i(264128),	-- Craftsman's Writ: Mithril Spurs (QS!)
					i(264127),	-- Craftsman's Writ: Orcish War Leggings (QS!)
					i(264116),	-- Craftsman's Writ: Potion of Demonslaying (QS!)
					i(264126),	-- Craftsman's Writ: Radiant Belt (QS!)
					i(264125),	-- Craftsman's Writ: Radiant Circlet (QS!)
					i(264153),	-- Craftsman's Writ: Runecloth Bag (QS!)
					i(264154),	-- Craftsman's Writ: Runecloth Boots (QS!)
					i(264150),	-- Craftsman's Writ: Runic Leather Bracers (QS!)
					i(264146),	-- Craftsman's Writ: Runic Leather Headband (QS!)
					i(264158),	-- Craftsman's Writ: Shadoweave Mask (QS!)
					i(264141),	-- Craftsman's Writ: Sniper Scope (QS!)
					i(264160),	-- Craftsman's Writ: Soul Pouch (QS!)
					i(264142),	-- Craftsman's Writ: Tranquil Mechanical Yeti (QS!)
					i(264140),	-- Craftsman's Writ: Truesilver Transformer (QS!)
					i(264155),	-- Craftsman's Writ: Tuxedo Jacket (QS!)
					i(264145),	-- Craftsman's Writ: Volcanic Breastplate (QS!)
					i(264147),	-- Craftsman's Writ: Wicked Leather Bracers (QS!)
					i(264143),	-- Craftsman's Writ: Wicked Leather Pants (QS!)
					i(264152),	-- Craftsman's Writ: Wizardweave Turban (QS!)
				}),
			}),
		},
	}),
});
