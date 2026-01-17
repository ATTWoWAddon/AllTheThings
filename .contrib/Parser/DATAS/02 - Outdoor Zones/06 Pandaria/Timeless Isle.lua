---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
BURDEN_OF_ETERNITY = createHeader({
	readable = "Burden of Eternity",
	icon = 775461,
	text = {
		en = WOWAPI_GetSpellName(147343),
	},
	-- TODO: would like a way to make the custom header use automatic header logic in-game
	-- to get an Item-link formatted name for further clarity on the purpose of the header and in tooltips
	-- e.g. auto = i:103982
	lore = {
		en = "The following items can be created by using a Burden of Eternity on a Timeless Armor Token for a double dose of pointless RNG.",
		-- TODO: de = "",
		es = "Los siguientes objetos se pueden crear usando una Carga de la Eternidad en una Ficha de Armadura Atemporal para una dosis doble de RNG inútil.",
		mx = "Los siguientes objetos se pueden crear usando una Carga de la Eternidad en una Ficha de Armadura Atemporal para una dosis doble de RNG inútil.",
		fr = "Les objets suivants peuvent être créés en utilisant un Fardeau de l'éternité sur un jeton de Cache d'armure du Temps figé pour une double dose de RNG inutile.",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Эти предметы могут быть созданы при помощи Бремя вечности и Вневременного токена для двойной дозы бессмысленного рандома.",
		cn = "以下物品可以通过在永恒护甲代币上使用不朽之责获得双倍无意随机生成来创建。",
		-- TODO: tw = "",
	},
});
root(ROOTS.Zones, {
	m(PANDARIA, {
		applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, m(TIMELESS_ISLE, {
			["lore"] = "A true enigma, the Timeless Isle has drifted in and out of Pandaria's mists for thousands of years. Here, time has no meaning, and the sun neither rises nor sets. Its unique characteristics have brought the Isle under the scrutiny of the bronze dragonflight, pandaren explorers, and the black dragon Wrathion.",
			["icon"] = 294481,
			["maps"] = { 555 },	-- Cavern of Lost Spirits
			["timeline"] = { ADDED_5_4_0 },
			["groups"] = {
				petbattle(m(571, {	-- Celestial Tournament
					["icon"] = 645227,
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(8519, {	-- Celestial Family
								crit(23600, {	-- Xu-Fu, Cub of Xuen
									["provider"] = { "i", 101771 },
								}),
								crit(23719, {	-- Chi-Chi, Hatchling of Chi-Ji
									["provider"] = { "i", 102145 },
								}),
								crit(23720, {	-- Yu'la, Broodling of Yu'lon
									["provider"] = { "i", 102147 },
								}),
								crit(23721, {	-- Zao, Calfling of Niuzao
									["provider"] = { "i", 102146 },
								}),
							}),
							petbattle(ach(8518)),	-- Master of the Master
							ach(8410),	-- The Celestial Tournament
						}),
						petbattles({
							n(71933, {	-- Blingtron 4000
								["coord"] = { 34.8, 59.6, 571 },
							}),
							n(71927, {	-- Chen Stormstout
								["coord"] = { 34.8, 59.6, 571 },
							}),
							n(72285, {	-- Chi-Chi, Hatchling of Chi-Ji
								["coord"] = { 38.0, 55.2, 571 },
							}),
							n(71934, {	-- Dr. Ion Goldbloom <Jurassic Expedition>
								["coord"] = { 34.8, 59.6, 571 },
							}),
							n(71926, {	-- Lorewalker Cho
								["coord"] = { 34.8, 59.6, 571 },
							}),
							n(71930, {	-- Shademaster Kiryn
								["coord"] = { 37.8, 57.2, 571 },
							}),
							n(71929, {	-- Sully "The Pickle" McLeary <SI:7>
								["coord"] = { 37.8, 57.2, 571 },
							}),
							n(71931, {	-- Taran Zhu <Lord of the Shado-Pan>
								["coord"] = { 37.8, 57.2, 571 },
							}),
							n(71932, {	-- Wise Mari <Waterspeaker>
								["coord"] = { 37.8, 57.2, 571 },
							}),
							n(71924, {	-- Wrathion <The Black Prince>
								["coord"] = { 37.8, 57.2, 571 },
							}),
							n(72009, {	-- Xu-Fu, Cub of Xuen
								["coord"] = { 39.8, 55.2, 571 },
							}),
							n(72291, {	-- Yu'la, Broodling of Yu'lon
								["coord"] = { 39.0, 56.4, 571 },
							}),
							n(72290, {	-- Zao, Calfling of Niuzao
								["coord"] = { 39.0, 53.8, 571 },
							}),
						}),
						n(QUESTS, {
							q(33137, {	-- The Celestial Tournament
								["qg"] = 73082,	-- Master Li
								["coord"] = { 34.8, 59.6, TIMELESS_ISLE },
								["isWeekly"] = true,
								["groups"] = {
									i(101529),	-- Celestial Coin
								},
							}),
							q(33136, {	-- The Rainy Day is Here
								["description"] = "You can complete this quest once across your account. It is given to you after your first victory over the Celestial Tournament.",
								["sourceQuest"] = 33137,	-- The Celestial Tournament
								["qg"] = 73082,	-- Master Li
								["coord"] = { 34.8, 59.6, TIMELESS_ISLE },
								["groups"] = {
									i(101529),	-- Celestial Coin
								},
							}),
						}),
						n(VENDORS, {
							n(73082, {	-- Master Li <Celestial Tournament Host>
								["coord"] = { 34.7, 59.6, TIMELESS_ISLE },
								["groups"] = {
									i(102145, {	-- Chi-Chi, Hatchling of Chi-Ji (PET!)
										["cost"] = { { "i", 101529, 3 }, },	-- 3x Celestial Coin
									}),
									i(101771, {	-- Xu-Fu, Cub of Xuen (PET!)
										["cost"] = { { "i", 101529, 3 }, },	-- 3x Celestial Coin
									}),
									i(102147, {	-- Yu'la, Broodling of Yu'lon (PET!)
										["cost"] = { { "i", 101529, 3 }, },	-- 3x Celestial Coin
									}),
									i(102146, {	-- Zao, Calfling of Niuzao (PET!)
										["cost"] = { { "i", 101529, 3 }, },	-- 3x Celestial Coin
									}),
								},
							}),
						}),
					},
				})),
				n(ACHIEVEMENTS, {
					ach(8716),	-- Emissary of Ordos
					ach(8717, {	-- Candlekeeper
						["cost"] = {{"c",789,10}},	-- 10x Bloody Coin
					}),
					ach(8718, {	-- Oathguard
						["cost"] = {{"c",789,100}},	-- 100x Bloody Coin
					}),
					ach(8719, {	-- Blazebinder
						["cost"] = {{"c",789,500}},	-- 500x Bloody Coin
					}),
					ach(8720, {	-- Kilnmaster
						["cost"] = {{"c",789,1000}},	-- 1000x Bloody Coin
					}),
					ach(8721, {	-- Fire-Watcher
						["cost"] = {{"c",789,2000}},	-- 2000x Bloody Coin
						["groups"] = {
							title(251),	-- Fire-Watcher
						},
					}),
					ach(8715),	-- Emperor Shaohao
					ach(8726),	-- Extreme Treasure Hunter (automated)
					ach(8725),	-- Eyes On The Ground (automated)
					ach(8728),	-- Going to Need a Bigger Bag (automated)
					ach(8712),	-- Killing Time (automated)
					ach(8724, {	-- Pilgrimage
						["provider"] = { "o", 222776 },	-- Time-Lost Shrine
						["coords"] = {
							{ 22.8, 29.3, TIMELESS_ISLE },
							{ 26.7, 52.1, TIMELESS_ISLE },
							{ 28.0, 72.0, TIMELESS_ISLE },
							{ 30.2, 45.5, TIMELESS_ISLE },
							{ 30.6, 62.5, TIMELESS_ISLE },
							{ 35.0, 29.4, TIMELESS_ISLE },
							{ 37.5, 74.2, TIMELESS_ISLE },
							{ 43.4, 55.8, TIMELESS_ISLE },
							{ 49.8, 70.1, TIMELESS_ISLE },
							{ 53.0, 60.8, TIMELESS_ISLE },
							{ 58.1, 46.6, TIMELESS_ISLE },
							{ 63.9, 50.6, TIMELESS_ISLE },
							{ 66.1, 72.3, TIMELESS_ISLE },
						},
						["groups"] = {
							crit(24007),	-- Niuzao's Blessing Obtained
							crit(24008),	-- Yu'lon's Blessing Obtained
							crit(24009),	-- Chi-Ji's Blessing Obtained
							crit(24010),	-- Xuen's Blessing Obtained
						},
					}),
					ach(8714),	-- Timeless Champion (automated)
					achpart(8723, 8784),	-- Legend of the Past
					ach(8784, {	-- Timeless Legends
						["coords"] = {
							{ 22.4, 38.7, TIMELESS_ISLE },
							{ 25.0, 71.9, TIMELESS_ISLE },
							{ 32.0, 61.5, TIMELESS_ISLE },
							{ 32.6, 32.8, TIMELESS_ISLE },
							{ 33.8, 54.5, TIMELESS_ISLE },
							{ 37.7, 41.1, TIMELESS_ISLE },
							{ 39.6, 41.1, TIMELESS_ISLE },
							{ 42.8, 55.4, TIMELESS_ISLE },
							{ 47.3, 80.8, TIMELESS_ISLE },
							{ 48.0, 51.2, TIMELESS_ISLE },
							{ 50.4, 71.7, TIMELESS_ISLE },
							{ 52.2, 62.6, TIMELESS_ISLE },
							{ 55.1, 72.9, TIMELESS_ISLE },
							{ 55.3, 50.3, TIMELESS_ISLE },
							{ 55.6, 59.3, TIMELESS_ISLE },
							{ 63.1, 45.3, TIMELESS_ISLE },
							{ 64.5, 72.3, TIMELESS_ISLE },
							{ 65.4, 51.7, TIMELESS_ISLE },
							{ 68.4, 60.4, TIMELESS_ISLE },
						},
					}),
					ach(8722),	-- Timeless Nutriment
					ach(8729),	-- Treasure, Treasure Everywhere
					ach(8727),	-- Where There's Pirates, There's Booty
				}),
				battlepets({
					pet(1324),	-- Ashwing Moth (PET!)
					pet(1325),	-- Flamering Moth (PET!)
					pet(1326, {	-- Skywisp Moth (PET!)
						["description"] = "Found on the tallest peaks of the isle, accessible easiest from an Albatross ride.",
					}),
				}),
				n(BURDEN_OF_ETERNITY, {
					-- Cloth
					-- Amaranthine (Priest Only)
					i(101891, {	-- Amaranthine Cowl
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102287, 1 },	-- Timeless Cloth Helm
						},
						["classes_display"] = { PRIEST },
					}),
					i(101897, {	-- Amaranthine Shoulderpads
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102289, 1 },	-- Timeless Cloth Spaulders
						},
						["classes_display"] = { PRIEST },
					}),
					i(101895, {	-- Amaranthine Robes
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102284, 1 },	-- Timeless Cloth Robes
						},
						["classes_display"] = { PRIEST },
					}),
					i(101899, {	-- Amaranthine Wristwraps
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102321, 1 },	-- Timeless Cloth Bracers
						},
						["classes_display"] = { PRIEST },
					}),
					i(101892, {	-- Amaranthine Handwraps
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102286, 1 },	-- Timeless Cloth Gloves
						},
						["classes_display"] = { PRIEST },
					}),
					i(101890, {	-- Amaranthine Cord
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102290, 1 },	-- Timeless Cloth Belt
						},
						["classes_display"] = { PRIEST },
					}),
					i(101893, {	-- Amaranthine Leggings
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102288, 1 },	-- Timeless Cloth Leggings
						},
						["classes_display"] = { PRIEST },
					}),
					i(101896, {	-- Amaranthine Sandals
						["description"] = "Any Priest spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102285, 1 },	-- Timeless Cloth Boots
						},
						["classes_display"] = { PRIEST },
					}),
					-- Cloudscorcher (Mage & Warlock Only)
					i(101901, {	-- Cloudscorcher Cowl
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102287, 1 },	-- Timeless Cloth Helm
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101906, {	-- Cloudscorcher Shoulderpads
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102289, 1 },	-- Timeless Cloth Spaulders
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101904, {	-- Cloudscorcher Robes
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102284, 1 },	-- Timeless Cloth Robes
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101907, {	-- Cloudscorcher Wristwraps
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102321, 1 },	-- Timeless Cloth Bracers
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101902, {	-- Cloudscorcher Handwraps
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102286, 1 },	-- Timeless Cloth Gloves
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101900, {	-- Cloudscorcher Belt
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102290, 1 },	-- Timeless Cloth Belt
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101903, {	-- Cloudscorcher Leggings
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102288, 1 },	-- Timeless Cloth Leggings
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),
					i(101905, {	-- Cloudscorcher Sandals
						["description"] = "Any Mage/Warlock spec.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102285, 1 },	-- Timeless Cloth Boots
						},
						["classes_display"] = { MAGE, WARLOCK },
					}),

					-- Leather
					-- Cranefeather (Rogue, Druid, Monk) [DPS]
					i(101953, {	-- Cranefeather Hood
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102280, 1 },	-- Timeless Leather Helm
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101955, {	-- Cranefeather Shoulders
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102282, 1 },	-- Timeless Leather Spaulders
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101954, {	-- Cranefeather Jerkin
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102277, 1 },	-- Timeless Leather Chestpiece
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101949, {	-- Cranefeather Bindings
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102322, 1 },	-- Timeless Leather Bracers
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101952, {	-- Cranefeather Gloves
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102279, 1 },	-- Timeless Leather Gloves
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101956, {	-- Cranefeather Waistband
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102283, 1 },	-- Timeless Leather Belt
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101951, {	-- Cranefeather Britches
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102281, 1 },	-- Timeless Leather Leggings
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					i(101950, {	-- Cranefeather Boots
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102278, 1 },	-- Timeless Leather Boots
						},
						["classes_display"] = LEATHER_CLASSES,
					}),
					-- Fire-Chanter (Druid, Monk)
					i(101874, {	-- Fire-Chanter Hood
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102280, 1 },	-- Timeless Leather Helm
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101876, {	-- Fire-Chanter Shoulders
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102282, 1 },	-- Timeless Leather Spaulders
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101875, {	-- Fire-Chanter Jerkin
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102277, 1 },	-- Timeless Leather Chestpiece
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101870, {	-- Fire-Chanter Bindings
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102322, 1 },	-- Timeless Leather Bracers
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101873, {	-- Fire-Chanter Gloves
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102279, 1 },	-- Timeless Leather Gloves
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101877, {	-- Fire-Chanter Waistband
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102283, 1 },	-- Timeless Leather Belt
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101872, {	-- Fire-Chanter Britches
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102281, 1 },	-- Timeless Leather Leggings
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),
					i(101871, {	-- Fire-Chanter Boots
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102278, 1 },	-- Timeless Leather Boots
						},
						["classes_display"] = LEATHER_CLASSES_INTELLECT,
					}),

					-- Mail
					-- Crimsonscale (Shaman, Hunter) [DPS]
					i(101931, {	-- Crimsonscale Helm
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102273, 1 },	-- Timeless Mail Helm
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101933, {	-- Crimsonscale Spaulders
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102275, 1 },	-- Timeless Mail Shoulders
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101934, {	-- Crimsonscale Vest
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102270, 1 },	-- Timeless Mail Chestpiece
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101928, {	-- Crimsonscale Bracers
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102323, 1 },	-- Timeless Mail Bracers
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101929, {	-- Crimsonscale Gauntlets
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102272, 1 },	-- Timeless Mail Gloves
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101927, {	-- Crimsonscale Belt
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102276, 1 },	-- Timeless Mail Belt
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101932, {	-- Crimsonscale Legguards
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102274, 1 },	-- Timeless Mail Leggings
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					i(101930, {	-- Crimsonscale Greaves
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102271, 1 },	-- Timeless Mail Boots
						},
						["classes_display"] = MAIL_CLASSES_AGILITY,
					}),
					-- Ordon Legend-Keeper (Shaman, Evoker) [HEALER]
					i(101923, {	-- Ordon Legend-Keeper Helm
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102273, 1 },	-- Timeless Mail Helm
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101925, {	-- Ordon Legend-Keeper Spaulders
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102275, 1 },	-- Timeless Mail Shoulders
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101926, {	-- Ordon Legend-Keeper Vest
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102270, 1 },	-- Timeless Mail Chestpiece
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101920, {	-- Ordon Legend-Keeper Bracers
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102323, 1 },	-- Timeless Mail Bracers
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101921, {	-- Ordon Legend-Keeper Gauntlets
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102272, 1 },	-- Timeless Mail Gloves
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101919, {	-- Ordon Legend-Keeper Belt
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102276, 1 },	-- Timeless Mail Belt
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101924, {	-- Ordon Legend-Keeper Legguards
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102274, 1 },	-- Timeless Mail Leggings
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),
					i(101922, {	-- Ordon Legend-Keeper Greaves
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102271, 1 },	-- Timeless Mail Boots
						},
						["classes_display"] = MAIL_CLASSES_HEALER,
					}),

					-- Plate
					-- Cliffbreaker (Warrior, Paladin, Death Knight) [DPS]
					i(101882, {	-- Cliffbreaker Helm
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102266, 1 },	-- Timeless Plate Helm
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101885, {	-- Cliffbreaker Pauldrons
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102268, 1 },	-- Timeless Plate Spaulders
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101878, {	-- Cliffbreaker Breastplate
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102263, 1 },	-- Timeless Plate Chestpiece
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101888, {	-- Cliffbreaker Vambraces
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102320, 1 },	-- Timeless Plate Bracers
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101880, {	-- Cliffbreaker Gauntlets
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102265, 1 },	-- Timeless Plate Gloves
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101881, {	-- Cliffbreaker Girdle
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102269, 1 },	-- Timeless Plate Belt
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101883, {	-- Cliffbreaker Legplates
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102267, 1 },	-- Timeless Plate Leggings
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101886, {	-- Cliffbreaker Sabatons
						["description"] = "Set loot spec to DPS.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102264, 1 },	-- Timeless Plate Boot
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					-- Elder Tortoiseshell (Warrior, Paladin, Death Knight) [TANK]
					i(101942, {	-- Elder Tortoiseshell Helm
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102266, 1 },	-- Timeless Plate Helm
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101945, {	-- Elder Tortoiseshell Pauldrons
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102268, 1 },	-- Timeless Plate Spaulders
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101938, {	-- Elder Tortoiseshell Breastplate
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102263, 1 },	-- Timeless Plate Chestpiece
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101948, {	-- Elder Tortoiseshell Vambraces
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102320, 1 },	-- Timeless Plate Bracers
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101940, {	-- Elder Tortoiseshell Gauntlets
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102265, 1 },	-- Timeless Plate Gloves
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101941, {	-- Elder Tortoiseshell Girdle
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102269, 1 },	-- Timeless Plate Belt
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101943, {	-- Elder Tortoiseshell Legplates
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102267, 1 },	-- Timeless Plate Leggings
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					i(101946, {	-- Elder Tortoiseshell Sabatons
						["description"] = "Set loot spec to Tank.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102264, 1 },	-- Timeless Plate Boot
						},
						["classes_display"] = PLATE_CLASSES,
					}),
					-- Everbright (Paladin Only) [HEALER]
					i(101911, {	-- Everbright Helm
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102266, 1 },	-- Timeless Plate Helm
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101913, {	-- Everbright Pauldrons
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102268, 1 },	-- Timeless Plate Spaulders
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101908, {	-- Everbright Breastplate
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102263, 1 },	-- Timeless Plate Chestpiece
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101915, {	-- Everbright Vambraces
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102320, 1 },	-- Timeless Plate Bracers
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101909, {	-- Everbright Gauntlets
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102265, 1 },	-- Timeless Plate Gloves
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101910, {	-- Everbright Girdle
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102269, 1 },	-- Timeless Plate Belt
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101912, {	-- Everbright Legplates
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102267, 1 },	-- Timeless Plate Leggings
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),
					i(101914, {	-- Everbright Sabatons
						["description"] = "Set loot spec to Healer.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102264, 1 },	-- Timeless Plate Boot
						},
						["classes_display"] = PLATE_CLASSES_HEALER,
					}),

					-- Cloaks
					i(101889, {	-- Amaranthine Cloak
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102318, 1 },	-- Timeless Cloak
						},
						["classes_display"] = INTELLECT_CLASSES,
					}),
					i(101879, {	-- Cliffbreaker Drape
						["description"] = "Set loot spec to Strength.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102318, 1 },	-- Timeless Cloak
						},
						["classes_display"] = STRENGTH_CLASSES,
					}),
					i(101939, {	-- Elder Tortoiseshell Drape
						["description"] = "Set loot spec to Strength.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102318, 1 },	-- Timeless Cloak
						},
						["classes_display"] = STRENGTH_CLASSES,
					}),
					i(101935, {	-- Kiln-Stoker Cloak
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102318, 1 },	-- Timeless Cloak
						},
						["classes_display"] = INTELLECT_CLASSES,
					}),
					i(101917, {	-- Warmsun Cloak
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102318, 1 },	-- Timeless Cloak
						},
						["classes_display"] = AGILITY_CLASSES,
					}),

					-- Necklaces
					i(101894, {	-- Amaranthine Necklace
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 104345, 1 },	-- Timeless Lavalliere
						},
						["classes_display"] = INTELLECT_CLASSES,
					}),
					i(101884, {	-- Cliffbreaker Neck
						["description"] = "Set loot spec to Strength.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 104345, 1 },	-- Timeless Lavalliere
						},
						["classes_display"] = STRENGTH_CLASSES,
					}),
					i(101944, {	-- Elder Tortoiseshell Neck
						["description"] = "Set loot spec to Strength.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 104345, 1 },	-- Timeless Lavalliere
						},
						["classes_display"] = STRENGTH_CLASSES,
					}),
					i(101936, {	-- Kiln-Stoker Collar
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 104345, 1 },	-- Timeless Lavalliere
						},
						["classes_display"] = INTELLECT_CLASSES,
					}),
					i(101916, {	-- Warmsun Choker
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 104345, 1 },	-- Timeless Lavalliere
						},
						["classes_display"] = AGILITY_CLASSES,
					}),

					-- Rings
					i(101898, {	-- Amaranthine Signet
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102291, 1 },	-- Timeless Signet
						},
						["classes_display"] = INTELLECT_CLASSES,
					}),
					i(101887, {	-- Cliffbreaker Seal
						["description"] = "Set loot spec to Strength.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102291, 1 },	-- Timeless Signet
						},
						["classes_display"] = STRENGTH_CLASSES,
					}),
					i(101947, {	-- Elder Tortoiseshell Seal
						["description"] = "Set loot spec to Strength.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102291, 1 },	-- Timeless Signet
						},
						["classes_display"] = STRENGTH_CLASSES,
					}),
					i(101937, {	-- Kiln-Stoker Ring
						["description"] = "Set loot spec to Intellect.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102291, 1 },	-- Timeless Signet
						},
						["classes_display"] = INTELLECT_CLASSES,
					}),
					i(101918, {	-- Warmsun Ring
						["description"] = "Set loot spec to Agility.",
						["cost"] = {
							{ "i", 103982, 1 },	-- Burden of Eternity
							{ "i", 102291, 1 },	-- Timeless Signet
						},
						["classes_display"] = AGILITY_CLASSES,
					}),
				}),
				n(FACTIONS, {
					faction(FACTION_EMPEROR_SHAOHAO),	-- Emperor Shaohao
					faction(FACTION_THE_BLACK_PRINCE),	-- The Black Prince
				}),
				n(FLIGHT_PATHS, {
					fp(1294, {	-- Huojin Landing, Timeless Isle
						["cr"] = 71939,	-- Chi-Ro the Skytamer <Flight Master>
						["coord"] = { 21.8, 39.8, TIMELESS_ISLE },
						["races"] = HORDE_ONLY,
					}),
					fp(1293, {	-- Tushui Landing, Timeless Isle
						["cr"] = 71940,	-- Michi Windblossom <Flight Master>
						["coord"] = { 23.2, 71.0, TIMELESS_ISLE },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(PROFESSIONS, {
					prof(FISHING, {
						i(104034, {	-- Purse of Timeless Coins
							["description"] = "Can be fished up from Jewel Danio Schools.",
						}),
					}),
				}),
				n(QUESTS, {
					q(33229, {	-- A Flash of Bronze... (A)
						["qg"] = 73691,	-- Chromie <The Timewalkers>
						["coord"] = { 80.6, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_5_4_0, REMOVED_11_0_0 },	-- Supposedly accidentally removed since 11.0.0?
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(33230, {	-- A Flash of Bronze... (H)
						["qg"] = 73691,	-- Chromie <The Timewalkers>
						["coord"] = { 80.6, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_5_4_0, REMOVED_11_0_0 },	-- Supposedly accidentally removed since 11.0.0?
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(33211, {	-- A Timeless Question
						["qg"] = 73570,	-- Senior Historian Evelyna <The Timewalkers>
						["isDaily"] = true,
					}),
					q(33161, {	-- A Timeless Tour
						["sourceQuests"] = {
							33156,	-- Time Keeper Kairoz
							33160,	-- Time Keeper Kairoz
						},
						["qg"] = 72870,	-- Kairoz
					}),
					q(33337, {	-- A Vision in Time
						["sourceQuests"] = { 33338 },	-- Empowering the Hourglass
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105930),	-- Vision of Time
						},
					}),
					q(33378, {	-- Courting Destiny
						["sourceQuests"] = { 33377 },	-- Hidden Threads
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105934),	-- Vision of Time
						},
					}),
					q(33342, {	-- Drive Back The Flame
						["sourceQuests"] = { 33341 },	-- Wayshrines Of The Celestials
						["qg"] = 73303,	-- Emperor Shaohao
					}),
					q(33338, {	-- Empowering the Hourglass
						["sourceQuests"] = { 33336 },	-- The Essence of Time
						["qg"] = 72870,	-- Kairoz
						["isWeekly"] = true,
						["groups"] = {
							i(105715),	-- Epoch Stone (QI!)
						},
					}),
					q(33377, {	-- Hidden Threads
						["sourceQuests"] = { 33376 },	-- Seeking Fate
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105933),	-- Vision of Time
						},
					}),
					q(33332, {	-- Hints From The Past
						["sourceQuests"] = { 33228 },	-- Time In Your Hands
						["qg"] = 72870,	-- Kairoz
					}),
					q(33231, {	-- Journey to the Timeless Isle (A)
						["sourceQuests"] = {
							33229,	-- A Flash of Bronze...	(Alliance)
							33230,	-- A Flash of Bronze...	(Horde)
						},
						["qg"] = 73691,	-- Chromie <The Timewalkers>
						["coord"] = { 80.6, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,	-- Possible to skip if you just fly to the Isle after picking up Flash of Bronze
					}),
					q(33232, {	-- Journey to the Timeless Isle (H)
						["sourceQuests"] = {
							33229,	-- A Flash of Bronze...	(Alliance)
							33230,	-- A Flash of Bronze...	(Horde)
						},
						["qg"] = 73691,	-- Chromie <The Timewalkers>
						["coord"] = { 80.6, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,	-- Possible to skip if you just fly to the Isle after picking up Flash of Bronze
						["groups"] = {
							i(104110),	-- Curious Bronze Timepiece (QI!)
						},
					}),
					q(33222, {	-- Little Tommy Newcomer
						["qg"] = 73626,	-- Little Tommy Newcomer
						["isDaily"] = true,
					}),
					q(33379, {	-- One Final Turn
						["sourceQuests"] = { 33378 },	-- Courting Destiny
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105935),	-- Vision of Time
						},
					}),
					q(33374, {	-- Path of the Mistwalker
						["sourceQuests"] = { 33341 },	-- Wayshrines Of The Celestials
						["qg"] = 73303,	-- Emperor Shaohao
						["isDaily"] = true,
						["groups"] = {
							i(103642),	-- Book of the Ages
							i(103643),	-- Dew of Eternal Morning
							i(103641),	-- Singing Crystal
						},
					}),
					q(33375, {	-- Refining The Vision
						["sourceQuests"] = { 33337 },	-- A Vision in Time
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105931),	-- Vision of Time
						},
					}),
					q(32974, {	-- Rolo's Riddle #1
						["description"] = "The riddle can be found in |cFFFFFFFFGlinting Sand|r along the coast of the island. Find the first clue at the stone columns near the weekly Gleaming Treasure Chest (|cFFFFFFFF49.4, 69.3|r).",
						["providers"] = {
							{ "i", 102225 },	-- Rolo's Riddle
							{ "o", 222684 },	-- Glinting Sand
						},
					}),
					q(32975, {	-- Rolo's Riddle #2
						["description"] = "Find the second clue at the back of Three-Breeze Terrace (|cFFFFFFFF34.5, 26.5|r).",
						["sourceQuest"] = 32974,	-- Rolo's Riddle
						["qg"] = 72751,	-- Mound of Dirt
						["coord"] = { 49.4, 69.3, TIMELESS_ISLE },
					}),
					q(32976, {	-- Rolo's Riddle #3
						["description"] = "The final treasure you're looking for is high up at the bloody lake where Garnia lives (|cFFFFFFFF66.0, 23.2|r).\n\nYou can pick up an albatross ride, or approach from outside the island with strategic flying/falling/gliding.",
						["sourceQuest"] = 32975,	-- Rolo's Riddle #2
						["qgs"] = {
							72754,	-- Mound of Dirt
							72755,	-- Rolo's Treasure
						},
						["coord"] = { 34.5, 26.5, TIMELESS_ISLE },
						["groups"] = {
							ach(8730),	-- Rolo's Riddle
							i(104013),	-- Timeless Cloth Armor Cache
							i(104012),	-- Timeless Leather Armor Cache
							i(104010),	-- Timeless Mail Armor Cache
							i(104009),	-- Timeless Plate Armor Cache
						},
					}),
					q(33376, {	-- Seeking Fate
						["sourceQuests"] = { 33375 },	-- Refining The Vision
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105932),	-- Vision of Time
						},
					}),
					q(33334, {	-- Strong Enough To Survive
						["sourceQuests"] = { 33333 },	-- Timeless Treasures
						["qg"] = 72870,	-- Kairoz
						["isWeekly"] = true,
					}),
					q(33343, {	-- The Archiereus Of Flame
						["sourceQuests"] = {
							33342,	-- Drive Back The Flame
							33374,	-- Path of the Mistwalker
						},
						["qg"] = 73303,	-- Emperor Shaohao
						["groups"] = {
							i(103982),	-- Burden of Eternity
						},
					}),
					q(33336, {	-- The Essence of Time
						["sourceQuests"] = { 33161 },	-- A Timeless Tour
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(105715),	-- Epoch Stone (QI!)
						},
					}),
					q(33335, {	-- The Last Emperor
						["sourceQuests"] = { 33228 },	-- Time In Your Hands
						["qg"] = 72870,	-- Kairoz
					}),
					q(33228, {	-- Time In Your Hands
						["sourceQuests"] = {
							33156,	-- Time Keeper Kairoz
							33160,	-- Time Keeper Kairoz
						},
						["qg"] = 72870,	-- Kairoz
						["groups"] = {
							i(104013),	-- Timeless Cloth Armor Cache
							i(104012),	-- Timeless Leather Armor Cache
							i(104010),	-- Timeless Mail Armor Cache
							i(104009),	-- Timeless Plate Armor Cache
						},
					}),
					q(33160, {	-- Time Keeper Kairoz
						["sourceQuests"] = { 33231 },	-- Journey to the Timeless Isle
						["qg"] = 73348,	-- Watcher Lara <The Timewalkers>
						["races"] = ALLIANCE_ONLY,
					}),
					q(33156, {	-- Time Keeper Kairoz
						["sourceQuests"] = { 33232 },	-- Journey to the Timeless Isle
						["qg"] = 73353,	-- Watcher Alundra <The Timewalkers>
						["races"] = HORDE_ONLY,
					}),
					q(33340, {	-- Timeless Nutriment
						["sourceQuests"] = { 33335 },	-- The Last Emperor
						["qg"] = 73303,	-- Emperor Shaohao
					}),
					q(33333, {	-- Timeless Treasures
						["sourceQuests"] = { 33332 },	-- Hints From The Past
						["qg"] = 72870,	-- Kairoz
					}),
					q(33341, {	-- Wayshrines Of The Celestials
						["sourceQuests"] = { 33340 },	-- Timeless Nutriment
						["qg"] = 73303,	-- Emperor Shaohao
					}),
				}),
				n(RARES, {
					--[[
					{	-- Blackguard's Jetsam
						["coord"] = { 22.69, 58.93, TIMELESS_ISLE },
						-- Turns into Spectral Treasure Chest npcID 72018
					--]]
					n(73174, {	-- Archiereus of Flame
						["questID"] = 33312,
						["isDaily"] = true,
						["coords"] = {
							{ 58.1, 25.0, TIMELESS_ISLE },
							{ 56.6, 35.9, TIMELESS_ISLE },
							{ 48.4, 33.3, TIMELESS_ISLE },
						},
						["groups"] = {
							i(86574, {	-- Elxir of Ancient Knowledge
								["u"] = REMOVED_FROM_GAME,	-- removed around Legion prepatch
							}),
						},
					}),
					n(73666, {	-- Archiereus of Flame
						["description"] = "This is the summonable version of this rare. It drops more things.",
						["coord"] = { 34.6, 31.6, TIMELESS_ISLE },
						["cost"] = {
							{ "i", 103684, 1 },	-- Scroll of Challenge
						},
						["groups"] = {
							i(86574, {	-- Elixir of Ancient Knowledge
								["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
							}),
						},
					}),
					n(72775, {	-- Bufo
						["questID"] = 33301,
						["isDaily"] = true,
						["coords"] = {
							{ 66.8, 67.2, TIMELESS_ISLE },
							{ 65.6, 69.8, TIMELESS_ISLE },
							{ 63.6, 72.6, TIMELESS_ISLE },
							{ 62.1, 77.1, TIMELESS_ISLE },
						},
						["groups"] = {
							i(104169),	-- Gulp Froglet (PET!)
							i(104241, {	-- Technique: Glyph of Rain of Frogs
								["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
							}),
						},
					}),
					n(73171, {	-- Champion of the Black Flame
						["description"] = "This rare patrols all the way down the pathway from the upper bridge to the lower one.",
						["questID"] = 33299,
						["isDaily"] = true,
						["coords"] = {
							{ 60.6, 48.4, TIMELESS_ISLE },
							{ 65.4, 60.2, TIMELESS_ISLE },
						},
						["groups"] = {
							i(106130),	-- Big Bag of Herbs
							i(104302),	-- Blackflame Daggers (TOY!)
							i(87219),	-- Huge Bag of Herbs
						},
					}),
					n(72045, {	-- Chelon
						["questID"] = 32966,
						["provider"] = { "o", 221027 },	-- Conspicuously Empty Shell
						["description"] = "Click on Conspicuously Empty Shell to spawn Chelon.",
						["coord"] = { 25.2, 35.8, TIMELESS_ISLE },
						["isDaily"] = true,
						["groups"] = {
							i(86584),	-- Hardened Shell (TOY!)
						},
					}),
					n(73175, {	-- Cinderfall
						["questID"] = 33310,
						["isDaily"] = true,
						["coord"] = { 54.1, 52.9, TIMELESS_ISLE },
						["groups"] = {
							i(104299),	-- Falling Flame
							i(104261),	-- Glowing Blue Ash
						},
					}),
					-- INFO: Old ID was possibly 72049, but since 7.3.5 (as far back as Wago.tools goes) it has always been 73854. Can't really timeline when we don't know when the change look place.
					n(73854, {	-- Cranegnasher
						["description"] = "Locate the bloodied red crane corpse, Fishgorged Crane at ~44, 70. If it's not present, then the rare can't be spawned yet.\n\nIf the corpse is there, head south and aggro one of the Fishgorged Cranes by the ocean at ~45, 84. Kite it back to the corpse, and Cranegnasher should appear and attack!",
						["questID"] = 32967,
						["isDaily"] = true,
						["coord"] = { 44.0, 70.0, TIMELESS_ISLE },
						["groups"] = {
							i(104268),	-- Pristine Stalker Hide
						},
					}),
					n(73281, {	-- Dread Ship Vazuvius
						["questID"] = 33314,	-- Note!! Quest 33314 also fires off on first kill of the week. Need to check on another day if both fire off still
						["providers"] = {
							{ "i", 104115 },	-- Mist-Filled Spirit Lantern
							{ "o", 223139 },	-- Cursed Gravestone
						},
						["description"] = "You need to have a Mist-Filled Spirit Lantern from Evermaw to summon this boss when the Cursed Gravestone is active.",
						["coord"] = { 26.5, 27.8, TIMELESS_ISLE },
						["isDaily"] = true,
						["groups"] = {
							i(104294),	-- Rime of the Time-Lost Mariner (TOY!)
						},
					}),
					n(73158, {	-- Emerald Gander
						["description"] = "Travel around the area where the Celestial bosses spawn and kill Brilliant Windfeathers — whenever one respawns, there's a chance it will respawn as an Emerald Gander instead of the normal mob.",
						["questID"] = 33295,
						["isDaily"] = true,
						["coords"] = {
							{ 44.2, 61.6, TIMELESS_ISLE },
							{ 45.0, 53.5, TIMELESS_ISLE },
							{ 44.7, 54.8, TIMELESS_ISLE },
							{ 36.4, 46.3, TIMELESS_ISLE },
							{ 36.7, 84.0, TIMELESS_ISLE },
						},
						["groups"] = {
							i(104287),	-- Windfeather Plume
						},
					}),
					n(73279, {	-- Evermaw <Gnawing Hunger of the Deep>
						["questID"] = 33313,
						["isDaily"] = true,
						["groups"] = {
							i(104115, {	-- Mist-Filled Spirit Lantern
								["description"] = "Use this item at the Cursed Gravestone to summon the Dread Ship Vazuvius.",
							}),
						},
					}),
					n(73172, {	-- Flintlord Gairan
						["questID"] = 33309,
						["isDaily"] = true,
						["coords"] = {
							{ 55.6, 38.0, TIMELESS_ISLE },
							{ 48.8, 36.0, TIMELESS_ISLE },
							{ 46.6, 39.6, TIMELESS_ISLE },
							{ 44.2, 33.8, TIMELESS_ISLE },
							{ 40.6, 27.2, TIMELESS_ISLE },
						},
						["groups"] = {
							i(104298),	-- Ordon Death Chime
						},
					}),
					n(73282, {	-- Garnia
						["questID"] = 33300,
						["isDaily"] = true,
						["coord"] = { 64.6, 28.6, TIMELESS_ISLE },
						["groups"] = {
							i(104159),	-- Ruby Droplet (PET!)
						},
					}),
					n(72970, {	-- Golganarr
						["questID"] = 33315,
						["isDaily"] = true,
						["coord"] = { 62.2, 63.2, TIMELESS_ISLE },
						["groups"] = {
							i(104263),	-- Glinting Pile of Stone
							i(104262),	-- Odd Polished Stone (TOY!)
						},
					}),
					n(73161, {	-- Great Turtle Furyshell
						["description"] = "Travel along the beach and kill Great Turtles — whenever one respawns, there's a chance it will respawn as a Great Turtle Furyshell instead of the normal mob.",
						["questID"] = 33297,
						["isDaily"] = true,
						["coords"] = {
							{ 20.6, 43.2, TIMELESS_ISLE },
							{ 26.6, 72.4, TIMELESS_ISLE },
						},
						["groups"] = {
							i(86584),	-- Hardened Shell (TOY!)
						},
					}),
					n(72909, {	-- Gu'chi the Swarmbringer
						["questID"] = 33294,
						["isDaily"] = true,
						["coords"] = {
							{ 30.2, 71.6, TIMELESS_ISLE },
							{ 40.8, 69.2, TIMELESS_ISLE },
							{ 40.2, 82.8, TIMELESS_ISLE },
							{ 32.4, 78.2, TIMELESS_ISLE },
						},
						["groups"] = {
							i(104291),	-- Gu'chi Swarmling (PET!)
							i(104290),	-- Sticky Silkworm Goo
						},
					}),
					n(73167, {	-- Huolon
						["description"] = "Huolon spawns around the coordinate we have listed, but if he's not pulled immediately he will fly up the hill, over the first upper bridge, and loop back down.",
						["questID"] = 33311,
						["isDaily"] = true,
						["coord"] = { 66.0, 58.8, TIMELESS_ISLE },
						["groups"] = {
							i(104286),	-- Quivering Firestorm Egg
							i(104269),	-- Thundering Onyx Cloud Serpent (MOUNT!)
						},
					}),
					n(73163, {	-- Imperial Python
						["description"] = "Travel around the zone and kill Death Adders — whenever one respawns, there's a chance it will respawn as an Imperial Python instead of the normal mob.",
						["questID"] = 33303,
						["isDaily"] = true,
						["coords"] = {	-- listing basically all the coordinates, just because they're so spread out!
							{ 30.8, 36.2, TIMELESS_ISLE },
							{ 29.0, 43.6, TIMELESS_ISLE },
							{ 25.8, 46.6, TIMELESS_ISLE },
							{ 33.8, 46.6, TIMELESS_ISLE },
							{ 28.8, 62.0, TIMELESS_ISLE },
							{ 27.4, 69.2, TIMELESS_ISLE },
							{ 29.6, 73.6, TIMELESS_ISLE },
							{ 31.2, 75.8, TIMELESS_ISLE },
							{ 34.6, 73.4, TIMELESS_ISLE },
							{ 36.4, 73.4, TIMELESS_ISLE },
							{ 44.6, 65.4, TIMELESS_ISLE },
							{ 53.0, 58.8, TIMELESS_ISLE },
							{ 50.8, 46.2, TIMELESS_ISLE },
						},
						["groups"] = {
							i(104161),	-- Death Adder Hatchling (PET!)
							i(104292),	-- Partially-Digested Meal
						},
					}),
					n(73160, {	-- Ironfur Steelhorn
						["description"] = "Travel around the area where the Celestial bosses spawn and kill Ironfur Great Bulls — whenever one respawns, there's a chance it will respawn as an Ironfur Steelhorn instead of the normal mob.",
						["questID"] = 33296,
						["isDaily"] = true,
						["coords"] = {
							{ 43.8, 43.8, TIMELESS_ISLE },
							{ 41.1, 37.6, TIMELESS_ISLE },
							{ 35.2, 41.8, TIMELESS_ISLE },
							{ 29.6, 45.8, TIMELESS_ISLE },
							{ 31.6, 58.8, TIMELESS_ISLE },
							{ 34.2, 71.0, TIMELESS_ISLE },
						},
						["groups"] = {
							i(89770),	-- Tuft of Yak Fur
						},
					}),
					n(73169, {	-- Jakur of Ordon
						["questID"] = 33306,
						["isDaily"] = true,
						["coord"] = { 53.0, 82.4, TIMELESS_ISLE },
						["groups"] = {
							i(104296),	-- Ordon Ceremonial Robes
							i(104245),	-- Technique: Glyph of the Weaponmaster
							i(104331),	-- Warning Sign (TOY!)
						},
					}),
					n(72193, {	-- Karkanos
						["questID"] = 33292,
						["isDaily"] = true,
						["provider"] = { "n", 72151 },	-- Lin Longpaw
						["coord"] = { 33.8, 85.8, TIMELESS_ISLE },
						["groups"] = {
							i(104035),	-- Giant Purse of Timeless Coins
						},
					}),
					n(73277, {	-- Leafmender
						["questID"] = 33298,
						["isDaily"] = true,
						["coord"] = { 67.2, 44.0, TIMELESS_ISLE },
						["groups"] = {
							i(104156),	-- Ashleaf Spriteling (PET!)
							i(104289),	-- Faintly-Glowing Herb
							i(104222, {	-- Technique: Glyph of One with Nature
								["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
							}),
						},
					}),
					n(73166, {	-- Monstrous Spineclaw
						["description"] = "Travel along the beach and kill Ancient Spineclaws — whenever one respawns, there's a chance it will respawn as a Monstrous Spineclaw instead of the normal mob.",
						["questID"] = 33302,
						["isDaily"] = true,
						["coords"] = {
							{ 23.6, 28.6, TIMELESS_ISLE },
							{ 68.8, 74.8, TIMELESS_ISLE },
						},
						["groups"] = {
							i(104293),	-- Scuttler's Shell
							i(104168),	-- Spineclaw Crab (PET!)
						},
					}),
					o(220807, {	-- Neverending Spritewood
						["questID"] = 32961,
						["description"] = "Click on this to receive a buff that will allow you to kill the sprites. Use your AOE attacks and run around the tree where they are clustered for maximum effect.",
						["coords"] = {
							{ 44.7, 70.5, TIMELESS_ISLE },
							{ 46.3, 71.0, TIMELESS_ISLE },
							{ 47.9, 73.5, TIMELESS_ISLE },
							{ 45.0, 75.7, TIMELESS_ISLE },
						},
						["isDaily"] = true,
						["crs"] = {
							71824,	-- Angry Sprite
							71826,	-- Scary Sprite
						},
						["groups"] = {
							i(104160),	-- Dandelion Frolicker (PET!)
						},
					}),
					n(72048, {	-- Rattleskew
						-- no daily questID popped. may have a one-time questID?
						["provider"] = { "n", 55421 },	-- Ghost Pirate Battle Controller (note: this is more for linking it to the vignette than anything)
						["coord"] = { 60.6, 87.8, TIMELESS_ISLE },	-- mapID needs verification
						["groups"] = {
							i(104321),	-- Captain Zvezdan's Lost Leg
							i(104219),	-- Technique: Glyph of Skeleton
						},
					}),
					n(73157, {	-- Rock Moss
						["questID"] = 33307,
						["isDaily"] = true,
						["coords"] = {
							{ 44.0, 30.9, 555 },	-- actual spawn, in Cavern of Lost Spirits
							{ 43.1, 41.2, TIMELESS_ISLE },	-- entrance
						},
						["groups"] = {
							i(104313),	-- Golden Moss
							i(104312),	-- Strange Glowing Mushroom
							i(104210, {	-- Technique: Glyph of Regenerative Magic
								["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
							}),
						},
					}),
					n(71864, {	-- Spelurk
						["questID"] = 32960,
						["providers"] = {
							{ "o", 220904 },	-- Rock-breaking Hammer
							{ "o", 220815 },	-- Cave-in
							{ "o", 222796 },	-- Cloudstrike Family Helm
						},
						["description"] = "Use the Cloudstrike ability from the Cloudstrike Family Helm to break down the caved in rocks. If you AFK inside the cave or Mage Blink / Warrior Leap through the rocks, you can interact with the Rock-breaking Hammer to open the way.",
						["coord"] = { 59.5, 48.9, TIMELESS_ISLE },
						["isDaily"] = true,
						["groups"] = {
							i(104320),	-- Cursed Talisman
						},
					}),
					n(73704, {	-- Stinkbraid
						["questID"] = 33305,
						["isDaily"] = true,
						["coord"] = { 71.2, 82.6, TIMELESS_ISLE },	-- mapID needs verification
					}),
					n(72769, {	-- Spirit of Jadefire
						["questID"] = 33293,
						["isDaily"] = true,
						["groups"] = {
							i(104258),	-- Glowing Green Ash
							i(104307),	-- Jadefire Spirit (PET!)
							i(104227),	-- Technique: Glyph of Pillar of Light
						},
					}),
					n(72808, {	-- Tsavo'ka
						["questID"] = 33304,
						["isDaily"] = true,
						["coord"] = { 54.2, 42.8, TIMELESS_ISLE },
						["groups"] = {
							i(104268),	-- Pristine Stalker Hide
						},
					}),
					n(73173, {	-- Urdur the Cauterizer
						["questID"] = 33308,
						["isDaily"] = true,
						["coord"] = { 43.6, 26.0, TIMELESS_ISLE },
						["groups"] = {
							i(104296),	-- Ordon Ceremonial Robes
							i(104306),	-- Sunset Stone
						},
					}),
					n(73170, {	-- Watcher Osu
						["questID"] = 33322,
						["isDaily"] = true,
						["coord"] = { 57.6, 76.6, TIMELESS_ISLE },
						["groups"] = {
							i(104305),	-- Ashen Stone
							i(104296),	-- Ordon Ceremonial Robes
						},
					}),
					n(71876, {	-- Zarhym
						["questID"] = 32962,
						["isDaily"] = true,
						["coord"] = { 53.5, 56.4, 555 },	-- Cavern of Lost Spirits
						["description"] = "Daily Lockout\nTraverse the cave to the skeleton at the end within 5 minutes without touching any ghosts.",
						["groups"] = {
							ach(8743),	-- Zarhym Altogether
						},
					}),
					n(72245, {	-- Zesqua
						["questID"] = 33316,
						["isDaily"] = true,
						["coord"] = { 47.0, 87.4, TIMELESS_ISLE },	-- mapID needs verification
						["groups"] = {
							i(104303),	-- Rain Stone
							i(104225, {	-- Technique: Glyph of Condensation
								["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
							}),
						},
					}),
					n(71919, {	-- Zhu-Gon the Sour
						["providers"] = {
							{ "n", 71944 },	-- Skunked Keg of Beer
							{ "n", 71908 },	-- Skunky Brew Alemental
						},
						["description"] = "Kill 10 Skunky Brew Alementals to spawn Zhu-gon the Sour in the town when the event is active.",
						["questID"] = 32959,
						["isDaily"] = true,
						["coord"] = { 37.8, 77.2, TIMELESS_ISLE },
						["groups"] = {
							i(104167),	-- Skunky Alemental (PET!)
						},
					}),
				}),
				n(TREASURES, {
					o(220986, {	-- Blackguard's Jetsam
						["description"] = "Coordinates are for an underwater cave entrance off the coast of the island.",
						["isWeekly"] = true,
						["questID"] = 32956,
						["coord"] = { 17.3, 57.0, TIMELESS_ISLE },
						["groups"] = {
							crit(24022, {	-- Blackguard's Jetsam
								["achievementID"] = 8727,	-- Where There's Pirates, There's Booty
							}),
						},
					}),
					o(221673, {	-- Blazing Chest
						["questID"] = 33210,	-- One-Time Chest - Blazing Chest
						["coord"] = { 47.3, 26.9, TIMELESS_ISLE },
						["groups"] = {
							i(103982),	-- Burden of Eternity
						},
					}),
					o(221725, {	-- Charged Crystal
						["coords"] = {
							{ 49.9, 46.3, TIMELESS_ISLE },
							{ 51.8, 53.8, TIMELESS_ISLE },
							{ 53.0, 59.1, TIMELESS_ISLE },
							{ 53.5, 64.4, TIMELESS_ISLE },
							{ 54.7, 53.3, TIMELESS_ISLE },
							{ 55.0, 44.3, TIMELESS_ISLE },
							{ 56.2, 69.2, TIMELESS_ISLE },
							{ 57.5, 46.5, TIMELESS_ISLE },
							{ 59.4, 55.4, TIMELESS_ISLE },
							{ 59.5, 63.1, TIMELESS_ISLE },
							{ 60.0, 68.6, TIMELESS_ISLE },
							{ 61.0, 59.5, TIMELESS_ISLE },
							{ 63.6, 48.9, TIMELESS_ISLE },
							{ 63.8, 63.9, TIMELESS_ISLE },
							{ 64.5, 58.1, TIMELESS_ISLE },
							{ 66.3, 53.7, TIMELESS_ISLE },
						},
					}),
					o(222796),	-- Cloudstrike Family Helm
					o(222685, {	-- Crane Nest
						["modelScale"] = 2.3,
						["groups"] = {
							i(104157),	-- Azure Crane Chick (PET!)
						},
					}),
					o(222686),	-- Eerie Crystal
					o(222689),	-- Fiery Altar of Ordos
					o(221763),	-- Fire Poppy
					o(222688),	-- Firestorm Egg
					o(223537),	-- Flameheart Shawl
					o(223193, { -- Giant Clam
						["coords"] = {
							{ 16.8, 62.4, TIMELESS_ISLE },
							{ 16.8, 62.5, TIMELESS_ISLE },
							{ 18.4, 53.9, TIMELESS_ISLE },
							{ 18.5, 53.8, TIMELESS_ISLE },
							{ 18.7, 20.3, TIMELESS_ISLE },
							{ 25.5, 14.7, TIMELESS_ISLE },
							{ 25.6, 14.4, TIMELESS_ISLE },
							{ 29.7, 21.8, TIMELESS_ISLE },
							{ 47.8, 87.9, TIMELESS_ISLE },
						},
					}),
					o(220903, {	-- Gleaming Crane Statue
						["description"] = "Click the statue, and you will be thrown up into the air and given a slow-fall buff. Land on any of the platforms and loot any of the |cFFFFFFFFMist-Covered Treasure Chests|r to get credit for the achievement criteria.",
						["coord"] = { 58.4, 60.0, TIMELESS_ISLE },
					}),
					o(220901, {	-- Gleaming Treasure Chest
						["description"] = "Coordinates are for the side of the hill, where you start to jump across the pillars toward the treasure.",
						["isWeekly"] = true,
						["questID"] = 32969,
						["coord"] = { 51.5, 73.4, TIMELESS_ISLE },
					}),
					o(221036, {	-- Gleaming Treasure Satchel
						["description"] = "Starting at around |cFFFFFFFF71.5, 79.8|r, mount up and do a running jump off the corner of the back platform. Landing successfully on the beam may take a couple tries, depending on the angle and the point at which you jump. Once you're on the beam, dismount and walk carefully toward the treasure.",
						["isWeekly"] = true,
						["questID"] = 32970,
						["coord"] = { 70.6, 80.9, TIMELESS_ISLE },
						["groups"] = {
							crit(24023, {	-- Gleaming Treasure Satchel
								["achievementID"] = 8727,	-- Where There's Pirates, There's Booty
							}),
						},
					}),
					o(222684),	-- Glinting Sand
					o(221747),	-- Huge Yak Roast
					n(createHeader({	-- Kukuru's Cache
						readable = "Kukuru's Cache",
						icon = 348554,
						text = {
							en = "Kukuru's Cache",
							de = "Kukurus Schatzkammer",
							es = "Alijo de Kukuru",
							-- TODO: mx = "",
							fr = "Cache de Koukourou",
							it = "Cassa di Kukuru",
							ko = "사부 쿠쿠루 보관함",
							pt = "Baú de Kukuru",
							ru = "клада Кукуру",
							cn = "库库鲁的宝箱",
							-- TODO: tw = "",
						},
						description = {
							en = "Buy a Kukuru's Cache Key to open this. Has a very small chance of containing a Burden of Eternity and more frequently, the Bonkers pet.",
						},
					}), {
						["providers"] = {
							{ "i", 101538 },	-- Kukuru's Cache Key
							{ "o", 220994 },	-- Timeless Chest
							{ "o", 220995 },	-- Timeless Chest
							{ "o", 220996 },	-- Timeless Chest
							{ "o", 220997 },	-- Timeless Chest
							{ "o", 220998 },	-- Timeless Chest
							{ "o", 220999 },	-- Timeless Chest
							{ "o", 221000 },	-- Timeless Chest
							{ "o", 221001 },	-- Timeless Chest
							{ "o", 221002 },	-- Timeless Chest
							{ "o", 221003 },	-- Timeless Chest
							{ "o", 221004 },	-- Timeless Chest
							{ "o", 221005 },	-- Timeless Chest
							{ "o", 221006 },	-- Timeless Chest
							{ "o", 221007 },	-- Timeless Chest
							{ "o", 221008 },	-- Timeless Chest
							{ "o", 221009 },	-- Timeless Chest
							{ "o", 221010 },	-- Timeless Chest
							{ "o", 221013 },	-- Timeless Chest
							{ "o", 221014 },	-- Timeless Chest
							{ "o", 221015 },	-- Timeless Chest
							{ "o", 221016 },	-- Timeless Chest
							{ "o", 221017 },	-- Timeless Chest
							{ "o", 221018 },	-- Timeless Chest
							{ "o", 221019 },	-- Timeless Chest
							{ "o", 221020 },	-- Timeless Chest
							{ "o", 221021 },	-- Timeless Chest
							{ "o", 221022 },	-- Timeless Chest
							{ "o", 221023 },	-- Timeless Chest
							{ "o", 221024 },	-- Timeless Chest
							{ "o", 221026 },	-- Timeless Chest
						},
						["coord"] = { 59.0, 41.0, TIMELESS_ISLE },
						["groups"] = {
							i(104202),	-- Bonkers (PET!)
							i(103982),	-- Burden of Eternity
						},
					}),
					o(220908, {	-- Mist-Covered Treasure Chest
						["provider"] = { "o", 220903, },	-- Gleaming Crane Statue
						["isWeekly"] = true,
						["questID"] = 32971,
						["coord"] = { 59.0, 60.0, TIMELESS_ISLE },
						["description"] = "Coordinates are for the Gleaming Crane Statue which allows you to fly up to the chests.",
					}),
					o(221670, {	-- Moss-Covered Chest
						["questID"] = 33170,
						["coord"] = { 36.6, 34.0, TIMELESS_ISLE },
					}),
					o(223084, {	-- Moss-Covered Chest
						["questID"] = 33171,
						["coord"] = { 25.4, 27.1, TIMELESS_ISLE },
					}),
					o(223085, {	-- Moss-Covered Chest
						["questID"] = 33172,
						["coord"] = { 27.3, 39.1, TIMELESS_ISLE },
					}),
					o(223086, {	-- Moss-Covered Chest
						["questID"] = 33173,
						["coord"] = { 30.6, 36.5, TIMELESS_ISLE },
					}),
					o(223087, {	-- Moss-Covered Chest
						["questID"] = 33174,
						["coord"] = { 22.3, 35.3, TIMELESS_ISLE },
					}),
					o(223088, {	-- Moss-Covered Chest
						["questID"] = 33175,
						["coord"] = { 22.1, 49.2, TIMELESS_ISLE },
					}),
					o(223089, {	-- Moss-Covered Chest
						["questID"] = 33176,
						["coord"] = { 24.8, 53.0, TIMELESS_ISLE },
					}),
					o(223090, {	-- Moss-Covered Chest
						["questID"] = 33177,
						["coord"] = { 25.7, 45.8, TIMELESS_ISLE },
					}),
					o(223091, {	-- Moss-Covered Chest
						["questID"] = 33178,
						["coord"] = { 22.2, 68.0, TIMELESS_ISLE },
					}),
					o(223092, {	-- Moss-Covered Chest
						["questID"] = 33179,
						["coord"] = { 26.8, 68.7, TIMELESS_ISLE },
					}),
					o(223093, {	-- Moss-Covered Chest
						["questID"] = 33180,
						["coord"] = { 31.0, 76.3, TIMELESS_ISLE },
					}),
					o(223094, {	-- Moss-Covered Chest
						["questID"] = 33181,
						["coord"] = { 35.3, 76.5, TIMELESS_ISLE },
					}),
					o(223095, {	-- Moss-Covered Chest
						["questID"] = 33182,
						["coord"] = { 38.7, 71.6, TIMELESS_ISLE },
					}),
					o(223096, {	-- Moss-Covered Chest
						["questID"] = 33183,
						["coord"] = { 39.7, 79.5, TIMELESS_ISLE },
					}),
					o(223097, {	-- Moss-Covered Chest
						["description"] = "Underwater, at the base of one of the pier legs.",
						["questID"] = 33184,
						["coord"] = { 34.8, 84.2, TIMELESS_ISLE },
					}),
					o(223098, {	-- Moss-Covered Chest
						["questID"] = 33185,
						["coord"] = { 43.5, 84.1, TIMELESS_ISLE },
					}),
					o(223099, {	-- Moss-Covered Chest
						["questID"] = 33186,
						["coord"] = { 46.9, 53.6, TIMELESS_ISLE },
					}),
					o(223100, {	-- Moss-Covered Chest
						["questID"] = 33187,
						["coord"] = { 46.7, 46.7, TIMELESS_ISLE },
					}),
					o(223101, {	-- Moss-Covered Chest
						["questID"] = 33188,
						["coord"] = { 51.1, 45.7, TIMELESS_ISLE },
					}),
					o(223102, {	-- Moss-Covered Chest
						["questID"] = 33189,
						["coord"] = { 55.5, 44.4, TIMELESS_ISLE },
					}),
					o(223103, {	-- Moss-Covered Chest
						["questID"] = 33190,
						["coord"] = { 58.0, 50.6, TIMELESS_ISLE },
					}),
					o(223104, {	-- Moss-Covered Chest
						["questID"] = 33191,
						["coord"] = { 65.6, 47.8, TIMELESS_ISLE },
					}),
					o(223105, {	-- Moss-Covered Chest
						["questID"] = 33192,
						["coord"] = { 63.7, 59.1, TIMELESS_ISLE },
					}),
					o(223106, {	-- Moss-Covered Chest
						["questID"] = 33193,
						["coord"] = { 64.9, 75.6, TIMELESS_ISLE },
					}),
					o(223107, {	-- Moss-Covered Chest
						["questID"] = 33194,
						["coord"] = { 60.1, 66.0, TIMELESS_ISLE },
					}),
					o(223108, {	-- Moss-Covered Chest
						["questID"] = 33195,
						["coord"] = { 49.7, 65.7, TIMELESS_ISLE },
					}),
					o(223109, {	-- Moss-Covered Chest
						["questID"] = 33196,
						["coord"] = { 53.1, 70.7, TIMELESS_ISLE },
					}),
					o(223110, {	-- Moss-Covered Chest
						["questID"] = 33197,
						["coord"] = { 52.7, 62.7, TIMELESS_ISLE },
					}),
					o(223111, {	-- Moss-Covered Chest
						["questID"] = 33198,
						["coord"] = { 44.1, 65.3, TIMELESS_ISLE },
					}),
					o(223112, {	-- Moss-Covered Chest
						["questID"] = 33199,
						["coord"] = { 26.0, 61.4, TIMELESS_ISLE },
					}),
					o(223113, {	-- Moss-Covered Chest
						["questID"] = 33200,
						["coord"] = { 24.6, 38.6, TIMELESS_ISLE },
					}),
					o(223114, {	-- Moss-Covered Chest
						["questID"] = 33201,
						["coord"] = { 59.9, 31.3, TIMELESS_ISLE },
					}),
					o(223115, {	-- Moss-Covered Chest
						["questID"] = 33202,
						["coord"] = { 29.8, 31.8, TIMELESS_ISLE },
					}),
					o(223204, {	-- Moss-Covered Chest
						["questID"] = 33227,
						["coord"] = { 61.6, 88.4, TIMELESS_ISLE },
					}),
					o(222687),	-- Ordon Supplies
					o(221689),	-- Ripe Crispfruit
					o(223538),	-- Riverspeaker's Trident
					o(221764, {	-- Roasted Seed
						["coords"] = {
							{ 63.1, 41.6, TIMELESS_ISLE },
							{ 63.3, 36.4, TIMELESS_ISLE },
							{ 65.6, 58.4, TIMELESS_ISLE },
							{ 66.8, 38.8, TIMELESS_ISLE },
							{ 67.3, 44.3, TIMELESS_ISLE },
							{ 68.5, 52.3, TIMELESS_ISLE },
							{ 70.2, 55.9, TIMELESS_ISLE },
							{ 70.7, 41.8, TIMELESS_ISLE },
							{ 73.6, 47.0, TIMELESS_ISLE },
						},
					}),
					o(220902, {	-- Rope-Bound Treasure Chest
						["description"] = "Coordinates are for the beginning of the rope pathway. You need to carefully walk along the ropes, dropping down to the lower ropes, until you've crossed Red Stone Run and can drop down to the treasure.",
						["isWeekly"] = true,
						["questID"] = 32968,
						["coord"] = { 60.1, 45.9, TIMELESS_ISLE },
					}),
					o(221690),	-- Sand-Covered Egg
					o(221617, {	-- Skull-Covered Chest
						["description"] = "Inside the Cavern of Lost Spirits.",
						["questID"] = 33203,
						["coord"] = { 62.9, 35.3, 555 },	-- Cavern of Lost Spirits
					}),
					o(221672, {	-- Smoldering Chest
						["questID"] = 33208,
						["coord"] = { 69.4, 33.1, TIMELESS_ISLE },
					}),
					o(223119, {	-- Smoldering Chest
						["questID"] = 33209,
						["coord"] = { 54.0, 78.1, TIMELESS_ISLE },
					}),
					o(223539),	-- Snowdrift Tiger Talons
					o(223228),	-- Southsea Firebrew
					o(221671, {	-- Sturdy Chest
						["description"] = "On top of a plateau. You can pick up an albatross ride, or approach from outside the island with strategic flying/falling/gliding.",
						["questID"] = 33204,
						["coord"] = { 28.1, 35.1, TIMELESS_ISLE },
					}),
					o(223116, {	-- Sturdy Chest
						["description"] = "On top of a plateau. You can pick up an albatross ride, or approach from outside the island with strategic flying/falling/gliding.",
						["questID"] = 33205,
						["coord"] = { 26.7, 64.9, TIMELESS_ISLE },
					}),
					o(223117, {	-- Sturdy Chest
						["questID"] = 33206,
						["coord"] = { 64.6, 70.5, TIMELESS_ISLE },
					}),
					o(223118, {	-- Sturdy Chest
						["description"] = "The chest is inside Spelurk's cave. Classes that can snap/jump forward abruptly (like Mage Blink) can force their way into the cave. Using a toy like the Mushroom Chair or the Leather Love Seat may also work.",
						["questID"] = 33207,
						["coord"] = { 59.2, 49.5, TIMELESS_ISLE },
					}),
					o(220832, {	-- Sunken Treasure
						["description"] = "In the belly of the sunken ship.",
						["isWeekly"] = true,
						["questID"] = 32957,
						["coord"] = { 40.4, 92.9, TIMELESS_ISLE },
						["cost"] = { { "i", 104015, 1 } },	-- Barnacle Encrusted Key
						["cr"] = 71920,	-- Cursed Hozen Swabby
						["groups"] = {
							crit(24021, {	-- Sunken Treasure
								["achievementID"] = 8727,	-- Where There's Pirates, There's Booty
							}),
							i(134024),	-- Cursed Swabby Helmet (TOY!)
						},
					}),
				}),
				n(VENDORS, {
					n(73656, {	-- Crafter Kwon <Arms & Armor Repairs>
						["coord"] = { 38.5, 46.4, TIMELESS_ISLE },
						["sym"] = {{"select","npcID",56705},{"pop"}},	-- Singegruff <Adventuring Supplies>
					}),
					n(73657, {	-- Great Chef Woo <Food & Drink>
						["description"] = "You can turn in various zone drops to this vendor for Timeless Coins.\n\nThe quests can be repeated indefinitely.",
						["coord"] = { 41.8, 63.7, TIMELESS_ISLE },
						["groups"] = sharedData({
							["repeatable"] = true,
							["groups"] = {
								currency(777),	-- Timeless Coins
							},
						},{
							q(33235, {	-- Great Turtle Meat
								["cost"] = {{"i",104265,1}},	-- Great Turtle Meat
							}),
							q(33236, {	-- Heavy Yak Flank
								["cost"] = {{"i",104266,1}},	-- Heavy Yak Flank
							}),
							q(33234, {	-- Meaty Crane Leg
								["cost"] = {{"i",104264,1}},	-- Meaty Crane Leg
							}),
							q(33239, {	-- Pristine Firestorm Egg
								["cost"] = {{"i",104257,1}},	-- Pristine Firestorm Egg
							}),
							q(33238, {	-- Thick Tiger Haunch
								["cost"] = {{"i",104267,1}},	-- Thick Tiger Haunch
							}),
						}),
					}),
					n(73819, {	-- Ku-Mo <Hand-Made Kites>
						["coord"] = { 41.1, 63.8, TIMELESS_ISLE },
						["groups"] = {
							i(104333, {	-- Flimsy Sky Lantern
								["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
							}),
							i(104346, {	-- Golden Glider
								["cost"] = { { "c", 777, 1000 } },	-- 1,000x Timeless Coin
							}),
							i(104332, {	-- Sky Lantern (PET!)
								["cost"] = { { "c", 777, 7500 } },	-- 7,500x Timeless Coin
							}),
						},
					}),
					n(72007, {	-- Master Kukuru
						i(101538, {	-- Kukuru's Cache Key
							["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
						}),
					}),
					n(73305, {	-- Mistweaver Ai <Timeless Artifacts>
						["coord"] = { 42.6, 55.7, TIMELESS_ISLE },
						["groups"] = {
							i(103989, {	-- Alacrity of Xuen
								["cost"] = { { "c", 777, 50000 } },	-- 50,000x Timeless Coin
							}),
							i(103982, {	-- Burden of Eternity
								["cost"] = { { "c", 777, 50000 } },	-- 50,000x Timeless Coin
							}),
							i(105921, {	-- Cloudscorcher Greatstaff
								["cost"] = { { "c", 777, 20000 } },	-- 20,000x Timeless Coin
							}),
							i(103988, {	-- Contemplation of Chi-Ji
								["cost"] = { { "c", 777, 50000 } },	-- 50,000x Timeless Coin
							}),
							i(105923, {	-- Contemplation of Shaohao
								["cost"] = { { "c", 777, 20000 } },	-- 20,000x Timeless Coin
							}),
							i(105919, {	-- Daylight Protectorate
								["cost"] = { { "c", 777, 10000 } },	-- 10,000x Timeless Coin
							}),
							i(103986, {	-- Discipline of Xuen
								["cost"] = { { "c", 777, 50000 } },	-- 50,000x Timeless Coin
							}),
							i(105927, {	-- Featherdraw Longbow
								["cost"] = { { "c", 777, 20000 } },	-- 20,000x Timeless Coin
							}),
							i(105924, {	-- Hozen Can Opener
								["cost"] = { { "c", 777, 10000 } },	-- 10,000x Timeless Coin
							}),
							currency(752, {	-- Mogu Rune of Fate
								["cost"] = { { "c", 777, 1000 } },	-- 1,000x Timeless Coin
							}),
							i(105926, {	-- Ordon Sacrificial Dagger
								["cost"] = { { "c", 777, 10000 } },	-- 10,000x Timeless Coin
							}),
							i(105920, {	-- Pandaren Peace Offering
								["cost"] = { { "c", 777, 10000 } },	-- 10,000x Timeless Coin
							}),
							i(104014, {	-- Pouch of Timeless Coins (was purchased via valor points)
								["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
							}),
							i(103990, {	-- Resolve of Niuzao
								["cost"] = { { "c", 777, 50000 } },	-- 50,000x Timeless Coin
							}),
							i(105929, {	-- Scavenged Pandaren Dagger
								["cost"] = { { "c", 777, 10000 } },	-- 10,000x Timeless Coin
							}),
							i(105922, {	-- Shield of the Eternal Noon
								["cost"] = { { "c", 777, 10000 } },	-- 10,000x Timeless Coin
							}),
							i(103977, {	-- Time-Worn Journal
								["cost"] = { { "c", 777, 500 } },		-- 500x Timeless Coin
							}),
							i(104013, {	-- Timeless Cloth Armor Cache
								["cost"] = { { "c", 777, 7500 } },		-- 7,500x Timeless Coin
							}),
							i(104012, {	-- Timeless Leather Armor Cache
								["cost"] = { { "c", 777, 7500 } },		-- 7,500x Timeless Coin
							}),
							i(104010, {	-- Timeless Mail Armor Cache
								["cost"] = { { "c", 777, 7500 } },		-- 7,500x Timeless Coin
							}),
							i(104009, {	-- Timeless Plate Armor Cache
								["cost"] = { { "c", 777, 7500 } },		-- 7,500x Timeless Coin
							}),
							i(105925, {	-- Yak-Herder's Longstaff
								["cost"] = { { "c", 777, 20000 } },	-- 20,000x Timeless Coin
							}),
							i(103987, {	-- Yu'lon's Bite
								["cost"] = { { "c", 777, 50000 } },	-- 50,000x Timeless Coin
							}),
						},
					}),
					n(73306, {	-- Mistweaver Ku <Lost Treasures of Shaohao>
						["coord"] = { 42.6, 54.6, TIMELESS_ISLE },
						["groups"] = bubbleDownClassicRep(FACTION_EMPEROR_SHAOHAO, {
							{		-- Neutral
							}, {	-- Friendly
								i(103683, {	-- Mask of Anger
									["cost"] = { { "c", 777, 100 } },	-- 100x Timeless Coin
								}),
								i(103681, {	-- Mask of Doubt
									["cost"] = { { "c", 777, 100 } },	-- 100x Timeless Coin
								}),
								i(103679, {	-- Mask of Fear
									["cost"] = { { "c", 777, 100 } },	-- 100x Timeless Coin
								}),
								i(103680, {	-- Mask of Hatred
									["cost"] = { { "c", 777, 100 } },	-- 100x Timeless Coin
								}),
								i(103682, {	-- Mask of Violence
									["cost"] = { { "c", 777, 100 } },	-- 100x Timeless Coin
								}),
							}, {	-- Honored
								i(103684, {	-- Scroll of Challenge
									["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
								}),
								i(103678, {	-- Time-Lost Artifact
									["cost"] = { { "c", 777, 7500 } },	-- 7,500x Timeless Coin
								}),
							}, {	-- Revered
								i(103685, {	-- Celestial Defender's Medallion (TOY!)
									["cost"] = { { "c", 777, 1000 } },	-- 1,000x Timeless Coin
								}),
								i(104295, {	-- Harmonious Purcupette (PET!)
									["cost"] = { { "c", 777, 7500 } },	-- 7,500x Timeless Coin
								}),
							}, {	-- Exalted
								i(87774, {	-- Heavenly Golden Cloud Serpent (MOUNT!)
									["cost"] = { { "c", 777, 100000 } },	-- 100,000x Timeless Coin
								}),
							},
						}),
					}),
					n(237817, {	-- Nostwin
						["coords"] = {
							{ 42.7, 56.6, TIMELESS_ISLE },
							{ 43.2, 54.1, TIMELESS_ISLE },
							{ 42.8, 52.6, TIMELESS_ISLE },
						},
						["timeline"] = { ADDED_11_1_0 },
						["groups"] = {
							i(221818),	-- Astral Emperor's Serpentling (PET!)
							i(235782, {	-- Battleplate of Winged Triumph
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235743, {	-- Breastplate of the Lost Catacomb
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235764, {	-- Breastplate of the Witch Doctor
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235783, {	-- Breastplate of Winged Triumph
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235758, {	-- Cap of the Haunted Forest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235744, {	-- Chestguard of the Lost Catacomb
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235784, {	-- Chestguard of Winged Triumph
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235770, {	-- Chronomancer Leggings
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235766, {	-- Chronomancer Pants
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235765, {	-- Chronomancer Shirt
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235768, {	-- Chronomancer Trousers
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235767, {	-- Chronomancer Vest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235756, {	-- Cover of the Haunted Forest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235722, {	-- Cover of the Thousandfold Blades
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235718, {	-- Crown of the Burning Scroll
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							iensemble(235716),	-- Ensemble: Cloak of Infinite Potential
							iensemble(215198, {	-- Ensemble: Timeworn Dreadful Mooncloth Regalia
								["cost"] = { { "c", TIMEWARPED_BADGE, 4000 }, },
							}),
							iensemble(215200, {	-- Ensemble: Timeworn Malevolent Mooncloth Regalia
								["cost"] = { { "c", TIMEWARPED_BADGE, 4000 }, },
							}),
							i(235726, {	-- Eternal Blossom Bindings
								["cost"] = { { "c", TIMEWARPED_BADGE, 200 }, },
							}),
							i(235728, {	-- Eternal Blossom Jerkin
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235729, {	-- Eternal Blossom Mantle
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235727, {	-- Eternal Blossom Tunic
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235730, {	-- Eternal Blossom Tunic
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235749, {	-- Firebird's Breastplate
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235745, {	-- Firebird's Cuirass
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235746, {	-- Firebird's Legguards
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235748, {	-- Firebird's Legwraps
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235747, {	-- Firebird's Shirt
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235760, {	-- Helm of the Haunted Forest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235717, {	-- Hood of the Burning Scroll
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(220765),	-- Illusion: Sha Corruption (ILLUSION!)
							i(235781, {	-- Jerkin of Seven Sacred Seals
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235759, {	-- Jerkin of the Haunted Forest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235776, {	-- Leggings of the Shattered Vale
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235771, {	-- Leggings of the Ternion Glory
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235778, {	-- Legguards of the Shattered Vale
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235721, {	-- Mantle of the Thousandfold Blades
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235719, {	-- Mitts of the Burning Scroll
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(221817),	-- Muskpaw Calf (PET!)
							i(235777, {	-- Pants of the Shattered Vale
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235773, {	-- Pants of the Ternion Glory
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235725, {	-- Red Crane Cover
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235723, {	-- Red Crane Legguards
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235724, {	-- Red Crane Spaulders
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235763, {	-- Robeguard of the Witch Doctor
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235735, {	-- Sha-Skin Amice
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235733, {	-- Sha-Skin Mantle
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235731, {	-- Sha-Skin Mitts
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235734, {	-- Sha-Skin Shirt
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235732, {	-- Sha-Skin Vestment
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235769, {	-- Shirt of the Chronomancer
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235774, {	-- Shirt of the Horned Nightmare
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235755, {	-- Shirt of the Thousandfold Hells
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235772, {	-- Trousers of the Ternion Glory
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235779, {	-- Tunic of Seven Sacred Seals
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235780, {	-- Vest of Seven Sacred Seals
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235757, {	-- Vest of the Haunted Forest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235761, {	-- Vest of the Haunted Forest
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235754, {	-- Vest of the Thousandfold Hells
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235775, {	-- Vestments of the Shattered Vale
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235762, {	-- Vestments of the Witch Doctor
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235752, {	-- Warhelm of Resounding Rings
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235739, {	-- White Tiger Greaves
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235740, {	-- White Tiger Legplates
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235742, {	-- White Tiger Shoulderguards
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235741, {	-- White Tiger Spaulders
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
							i(235750, {	-- Yaungol Slayer's Belt
								["cost"] = { { "c", TIMEWARPED_BADGE, 700 }, },
							}),
							i(235751, {	-- Yaungol Slayer's Spaulders
								["cost"] = { { "c", TIMEWARPED_BADGE, 800 }, },
							}),
						},
					}),
					n(73307, {	-- Speaker Gulan <Emissary of Ordos>
						["coord"] = { 74.9, 44.9, TIMELESS_ISLE },
						["groups"] = {
							i(102467, {	-- Censer of Eternal Agony (TOY!)
								["cost"] = { { "c", 777, 1000 } },	-- 1,000x Timeless Coin
							}),
							i(102463, {	-- Fire-Watcher's Oath
								["cost"] = { { "c", 777, 100 } },	-- 100x Timeless Coin
							}),
							pvp(i(102464, {	-- Black Ash
								["cost"] = { { "c", 789, 1 } },	-- 1x Bloody Coin
							})),
							pvp(i(103639, {	-- Pouch of White Ash
								["cost"] = { { "c", 789, 20 } },	-- 20x Bloody Coin
							})),
							pvp(i(103638, {	-- Ashhide Mushan Beast (MOUNT!)
								["cost"] = { { "c", 789, 500 } },	-- 500x Bloody Coin
							})),
							pvp(i(103637, {	-- Vengeful Porcupette (PET!)
								["cost"] = { { "c", 789, 100 } },	-- 100x Bloody Coin
							})),
							pvp(currency(789, {	-- Bloody Coin
								["description"] = "Earn Bloody Coins by transforming into an Emissary of Ordos and getting killing blows on enemy players.",
								["providers"] = {
									{ "i", 102467 },	-- Censer of Eternal Agony
									{ "i", 102463 },	-- Fire-Watcher's Oath
								},
							})),
						},
					}),
					n(73293, {	-- Whizzig
						["description"] = "This vendor is rare and is not always available.",
						["coords"] = {
							{ 40.0, 63.0, TIMELESS_ISLE },
							{ 42.8, 59.4, TIMELESS_ISLE },
							{ 41.6, 47.2, TIMELESS_ISLE },
							{ 35.0, 52.8, TIMELESS_ISLE },
						},
						["groups"] = {
							i(103786, {	-- "Dapper Gentleman" Costume
								["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
							}),
							i(103795, {	-- "Dread Pirate" Costume
								["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
							}),
							i(103789, {	-- "Little Princess" Costume
								["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
							}),
							i(103797, {	-- Big Pink Bow
								["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
							}),
							i(71153, {	-- Magical Pet Biscuit
								["cost"] = { { "c", 777, 500 } },	-- 500x Timeless Coin
							}),
							i(104230, {	-- Technique: Glyph of Shifted Appearances
								["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
								["cost"] = { { "c", 777, 4000 } },	-- 4000x Timeless Coin
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					n(72766, {	-- Ancient Spineclaw
						i(104293),	-- Scuttler's Shell
					}),
					n(72877, {	-- Ashleaf Sprite
						i(106130),	-- Big Bag of Herbs
						i(104289),	-- Faintly-Glowing Herb
						i(104222, {	-- Technique: Glyph of One with Nature
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
					}),
					n(72897, {	-- Blazebound Chanter
						i(104304),	-- Blizzard Stone
						i(104296),	-- Ordon Ceremonial Robes
					}),
					n(72762, {	-- Brilliant Windfeather
						i(104287),	-- Windfeather Plume
					}),
					n(72895, {	-- Burning Berserker
						i(106130),	-- Big Bag of Herbs
						i(86566),	-- Forager's Gloves
						i(104232, {	-- Technique: Glyph of Headhunting
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
					}),
					n(72807, {	-- Crag Stalker
						i(104279, {	-- Technique: Glyph of the Lean Pack
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
					}),
					n(72876, {	-- Crimsonscale Firestorm
						i(104286),	-- Quivering Firestorm Egg
					}),
					n(72771, {	-- Damp Shambler
						i(104312),	-- Strange Glowing Mushroom
						i(104210, {	-- Technique: Glyph of Regenerative Magic
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
					}),
					n(72841, {	-- Death Adder
						i(104292),	-- Partially-Digested Meal
					}),
					n(72809, {	-- Eroded Cliffdweller
						i(104263),	-- Glinting Pile of Stone
						i(104262),	-- Odd Polished Stone (TOY!)
					}),
					n(72896, {	-- Eternal Kilnmaster
						i(104297),	-- Blazing Sigil of Ordos
						i(104309),	-- Eternal Kiln (TOY!)
						i(104217, {	-- Technique: Glyph of Impaling Throws
							["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
						}),
					}),
					n(73162, {	-- Foreboding Flame
						i(104261),	-- Glowing Blue Ash
						i(104166),	-- Ominous Flame (PET!)
						i(104227),	-- Technique: Glyph of Pillar of Light
					}),
					i(104265, {	-- Great Turtle Meat
						["description"] = "Can be turned in for 50 Timeless Coins.",
					}),
					n(72777, {	-- Gulp Frog
						i(104241, {	-- Technique: Glyph of Rain of Frogs
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
					}),
					i(104266, {	-- Heavy Yak Flank
						["description"] = "Can be turned in for 50 Timeless Coins.",
					}),
					n(72898, {	-- High Priest of Ordos
						i(104329),	-- Ash-Covered Horn (TOY!)
					}),
					n(72767, {	-- Jademist Dancer
						i(104288),	-- Condensed Jademist
						i(104164),	-- Jademist Dancer (PET!)
						i(104224),	-- Technique: Glyph of Evaporation
					}),
					i(104264, {	-- Meaty Crane Leg
						["description"] = "Can be turned in for 20 Timeless Coins.",
					}),
					n(72888, {	-- Molten Guardian
						i(104328),	-- Cauterizing Core
					}),
					n(72875, {	-- Ordon Candlekeeper
						i(86565),	-- Battle Horn (TOY!)
						i(104209, {	-- Technique: Glyph of Loud Horn
							["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
						}),
					}),
					n(72894, {	-- Ordon Fire-Watcher
						i(104297),	-- Blazing Sigil of Ordos
						i(104296),	-- Ordon Ceremonial Robes
						i(104209, {	-- Technique: Glyph of Loud Horn
							["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
						}),
					}),
					n(72892, {	-- Ordon Oathguard
						i(104209, {	-- Technique: Glyph of Loud Horn
							["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
						}),
						i(104244, {	-- Technique: Glyph of the Watchful Eye
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
						i(104330),	-- Warped Warning Sign
					}),
					n(72805, {	-- Primal Stalker
						i(104268),	-- Pristine Stalker Hide
						i(104279, {	-- Technique: Glyph of the Lean Pack
							["timeline"] = { ADDED_5_4_0, REMOVED_7_0_3 },
						}),
					}),
					i(104257, {	-- Pristine Firestorm Egg
						["description"] = "Can be turned in for 500 Timeless Coins.",
					}),
					n(73018, {	-- Spectral Brewmaster
						i(104235),	-- Technique: Glyph of Lingering Ancestors
						i(104335),	-- Thick Pi'jiu Brew
					}),
					n(73025, {	-- Spectral Mistweaver
						i(104334),	-- Misty Pi'jiu Brew
						i(104235),	-- Technique: Glyph of Lingering Ancestors
					}),
					n(73021, {	-- Spectral Windwalker
						i(104336),	-- Bubbling Pi'jiu Brew
						i(104235),	-- Technique: Glyph of Lingering Ancestors
					}),
					n(72908, {	-- Spotted Swarmer
						i(104290),	-- Sticky Silkworm Goo
					}),
					i(104267, {	-- Thick Tiger Haunch
						["description"] = "Can be turned in for 100 Timeless Coins.",
					}),
					n(72761, {	-- Windfeather Nestkeeper
						i(104231),	-- Technique: Glyph of Inspired Hymns
					}),
					i(103642),	-- Book of the Ages
					i(103643),	-- Dew of Eternal Morning
					i(103641),	-- Singing Crystal
					i(104316, {	-- Spectral Grog
						["crs"] = {
							72033,	-- Rattling Mariner
							71987,	-- Spectral Pirate
							72048,	-- Rattleskew
						},
					}),
					i(103982, {	-- Burden of Eternity
						["crs"] = {
							73174,	-- Archiereus of Flame
							73666,	-- Archiereus of Flame
							72775,	-- Bufo
							73171,	-- Champion of the Black Flame
							72045,	-- Chelon
							73175,	-- Cinderfall
							72049,	-- Cranegnasher
							73281,	-- Dread Ship Vazuvius
							73158,	-- Emerald Gander
							73279,	-- Evermaw <Gnawing Hunger of the Deep>
							73172,	-- Flintlord Gairan
							73282,	-- Garnia
							72970,	-- Golganarr
							73161,	-- Great Turtle Furyshell
							72909,	-- Gu'chi the Swarmbringer
							73167,	-- Huolon
							73163,	-- Imperial Python
							73160,	-- Ironfur Steelhorn
							73169,	-- Jakur of Ordon
							72193,	-- Karkanos
							73277,	-- Leafmender
							73166,	-- Monstrous Spineclaw
							72048,	-- Rattleskew
							73157,	-- Rock Moss
							71864,	-- Spelurk
							73704,	-- Stinkbraid
							72769,	-- Spirit of Jadefire
							72808,	-- Tsavo'ka
							73173,	-- Urdur the Cauterizer
							73170,	-- Watcher Osu
							72245,	-- Zesqua
							71919,	-- Zhu-Gon the Sour
						},
					}),
					i(102318, {	-- Timeless Cloak
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101889),	-- Amaranthine Cloak
						-- 		i(101879),	-- Cliffbreaker Drape
						-- 		i(101939),	-- Elder Tortoiseshell Drape
						-- 		i(101935),	-- Kiln-Stoker Cloak
						-- 		i(101917),	-- Warmsun Cloak
						-- 	}
						-- }),
						i(101800),	-- Amaranthine Cloak
						i(101790),	-- Cliffbreaker Drape
						i(101852),	-- Elder Tortoiseshell Drape
						i(101848),	-- Kiln-Stoker Cloak
						i(101828),	-- Warmsun Cloak
					}),
					i(104013, {	-- Timeless Cloth Armor Cache
						["description"] = "The item created will be class- and spec-specific.|r",
						["groups"] = {
							i(101801),	-- Amaranthine Cord
							i(101802),	-- Amaranthine Cowl
							i(101803),	-- Amaranthine Handwraps
							i(101804),	-- Amaranthine Leggings
							i(101806),	-- Amaranthine Robe
							i(101807),	-- Amaranthine Sandals
							i(101808),	-- Amaranthine Shoulderpads
							i(101810),	-- Amaranthine Wristwraps
							i(101811),	-- Cloudscorcher Belt
							i(101812),	-- Cloudscorcher Cowl
							i(101813),	-- Cloudscorcher Handwraps
							i(101814),	-- Cloudscorcher Leggings
							i(101815),	-- Cloudscorcher Robe
							i(101816),	-- Cloudscorcher Sandals
							i(101817),	-- Cloudscorcher Shoulderpads
							i(101818),	-- Cloudscorcher Wristwraps
						},
					}),
					i(102287, {	-- Timeless Cloth Helm
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101891),	-- Amaranthine Cowl
						-- 		i(101901),	-- Cloudscorcher Cowl
						-- 	}
						-- }),
						i(101802),	-- Amaranthine Cowl
						i(101812),	-- Cloudscorcher Cowl
					}),
					i(102289, {	-- Timeless Cloth Spaulders
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101897),	-- Amaranthine Shoulderpads
						-- 		i(101906),	-- Cloudscorcher Shoulderpads
						-- 	}
						-- }),
						i(101808),	-- Amaranthine Shoulderpads
						i(101817),	-- Cloudscorcher Shoulderpads
					}),
					i(102284, {	-- Timeless Cloth Robes
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101895),	-- Amaranthine Robes
						-- 		i(101904),	-- Cloudscorcher Robes
						-- 	}
						-- }),
						i(101806),	-- Amaranthine Robes
						i(101815),	-- Cloudscorcher Robes
					}),
					i(102321, {	-- Timeless Cloth Bracers
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101899),	-- Amaranthine Wristwraps
						-- 		i(101907),	-- Cloudscorcher Wristwraps
						-- 	}
						-- }),
						i(101810),	-- Amaranthine Wristwraps
						i(101818),	-- Cloudscorcher Wristwraps
					}),
					i(102286, {	-- Timeless Cloth Gloves
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101892),	-- Amaranthine Handwraps
						-- 		i(101902),	-- Cloudscorcher Handwraps
						-- 	}
						-- }),
						i(101803),	-- Amaranthine Handwraps
						i(101813),	-- Cloudscorcher Handwraps
					}),
					i(102290, {	-- Timeless Cloth Belt
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101890),	-- Amaranthine Cord
						-- 		i(101900),	-- Cloudscorcher Belt
						-- 	}
						-- }),
						i(101801),	-- Amaranthine Cord
						i(101811),	-- Cloudscorcher Belt
					}),
					i(102288, {	-- Timeless Cloth Leggings
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101893),	-- Amaranthine Leggings
						-- 		i(101903),	-- Cloudscorcher Leggings
						-- 	}
						-- }),
						i(101804),	-- Amaranthine Leggings
						i(101814),	-- Cloudscorcher Leggings
					}),
					i(102285, {	-- Timeless Cloth Boots
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101896),	-- Amaranthine Sandals
						-- 		i(101905),	-- Cloudscorcher Sandals
						-- 	}
						-- }),
						i(101807),	-- Amaranthine Sandals
						i(101816),	-- Cloudscorcher Sandals
					}),
					i(104012, {	-- Timeless Leather Armor Cache
						["description"] = "The item created will be class- and spec-specific.|r",
						["groups"] = {
							i(101862),	-- Cranefeather Bindings
							i(101863),	-- Cranefeather Boots
							i(101864),	-- Cranefeather Britches
							i(101865),	-- Cranefeather Gloves
							i(101866),	-- Cranefeather Hood
							i(101867),	-- Cranefeather Jerkin
							i(101868),	-- Cranefeather Shoulders
							i(101869),	-- Cranefeather Waistband
							i(101781),	-- Fire-Chanter Bindings
							i(101782),	-- Fire-Chanter Boots
							i(101783),	-- Fire-Chanter Britches
							i(101784),	-- Fire-Chanter Gloves
							i(101785),	-- Fire-Chanter Hood
							i(101786),	-- Fire-Chanter Jerkin
							i(101787),	-- Fire-Chanter Shoulders
							i(101788),	-- Fire-Chanter Waistband
						},
					}),
					i(102280, {	-- Timeless Leather Helm
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101953),	-- Cranefeather Hood
						-- 		i(101874),	-- Fire-Chanter Hood
						-- 	}
						-- }),
						i(101866),	-- Cranefeather Hood
						i(101785),	-- Fire-Chanter Hood
					}),
					i(102282, {	-- Timeless Leather Spaulders
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101955),	-- Cranefeather Shoulders
						-- 		i(101876),	-- Fire-Chanter Shoulders
						-- 	}
						-- }),
						i(101868),	-- Cranefeather Shoulders
						i(101787),	-- Fire-Chanter Shoulders
					}),
					i(102277, {	-- Timeless Leather Chestpiece
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101954),	-- Cranefeather Jerkin
						-- 		i(101875),	-- Fire-Chanter Jerkin
						-- 	}
						-- }),
						i(101867),	-- Cranefeather Jerkin
						i(101786),	-- Fire-Chanter Jerkin
					}),
					i(102322, {	-- Timeless Leather Bracers
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101949),	-- Cranefeather Bindings
						-- 		i(101870),	-- Fire-Chanter Bindings
						-- 	}
						-- }),
						i(101862),	-- Cranefeather Bindings
						i(101781),	-- Fire-Chanter Bindings
					}),
					i(102279, {	-- Timeless Leather Gloves
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101952),	-- Cranefeather Gloves
						-- 		i(101873),	-- Fire-Chanter Gloves
						-- 	}
						-- }),
						i(101865),	-- Cranefeather Gloves
						i(101784),	-- Fire-Chanter Gloves
					}),
					i(102283, {	-- Timeless Leather Belt
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101956),	-- Cranefeather Waistband
						-- 		i(101877),	-- Fire-Chanter Waistband
						-- 	}
						-- }),
						i(101869),	-- Cranefeather Waistband
						i(101788),	-- Fire-Chanter Waistband
					}),
					i(102281, {	-- Timeless Leather Leggings
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101951),	-- Cranefeather Britches
						-- 		i(101872),	-- Fire-Chanter Britches
						-- 	}
						-- }),
						i(101864),	-- Cranefeather Britches
						i(101783),	-- Fire-Chanter Britches
					}),
					i(102278, {	-- Timeless Leather Boots
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101950),	-- Cranefeather Boots
						-- 		i(101871),	-- Fire-Chanter Boots
						-- 	}
						-- }),
						i(101863),	-- Cranefeather Boots
						i(101782),	-- Fire-Chanter Boots
					}),
					i(104010, {	-- Timeless Mail Armor Cache
						["description"] = "The item created will be class- and spec-specific.|r",
						["groups"] = {
							i(101838),	-- Crimsonscale Belt
							i(101839),	-- Crimsonscale Bracers
							i(101840),	-- Crimsonscale Gauntlets
							i(101841),	-- Crimsonscale Greaves
							i(101842),	-- Crimsonscale Helm
							i(101843),	-- Crimsonscale Legguards
							i(101844),	-- Crimsonscale Spaulders
							i(101845),	-- Crimsonscale Vest
							i(101830),	-- Ordon Legend-Keeper Belt
							i(101831),	-- Ordon Legend-Keeper Bracers
							i(101832),	-- Ordon Legend-Keeper Gauntlets
							i(101833),	-- Ordon Legend-Keeper Greaves
							i(101834),	-- Ordon Legend-Keeper Helm
							i(101835),	-- Ordon Legend-Keeper Legguards
							i(101836),	-- Ordon Legend-Keeper Spaulders
							i(101837),	-- Ordon Legend-Keeper Vestments
						},
					}),
					i(102273, {	-- Timeless Mail Helm
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101931),	-- Crimsonscale Helm
						-- 		i(101923),	-- Ordon Legend-Keeper Helm
						-- 	}
						-- }),
						i(101842),	-- Crimsonscale Helm
						i(101834),	-- Ordon Legend-Keeper Helm
					}),
					i(102275, {	-- Timeless Mail Shoulders
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101933),	-- Crimsonscale Spaulders
						-- 		i(101925),	-- Ordon Legend-Keeper Spaulders
						-- 	}
						-- }),
						i(101844),	-- Crimsonscale Spaulders
						i(101836),	-- Ordon Legend-Keeper Spaulders
					}),
					i(102270, {	-- Timeless Mail Chestpiece
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101934),	-- Crimsonscale Vest
						-- 		i(101926),	-- Ordon Legend-Keeper Vest
						-- 	}
						-- }),
						i(101845),	-- Crimsonscale Vest
						i(101837),	-- Ordon Legend-Keeper Vest
					}),
					i(102323, {	-- Timeless Mail Bracers
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101928),	-- Crimsonscale Bracers
						-- 		i(101920),	-- Ordon Legend-Keeper Bracers
						-- 	}
						-- }),
						i(101839),	-- Crimsonscale Bracers
						i(101831),	-- Ordon Legend-Keeper Bracers
					}),
					i(102272, {	-- Timeless Mail Gloves
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101929),	-- Crimsonscale Gauntlets
						-- 		i(101921),	-- Ordon Legend-Keeper Gauntlets
						-- 	}
						-- }),
						i(101840),	-- Crimsonscale Gauntlets
						i(101832),	-- Ordon Legend-Keeper Gauntlets
					}),
					i(102276, {	-- Timeless Mail Belt
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101927),	-- Crimsonscale Belt
						-- 		i(101919),	-- Ordon Legend-Keeper Belt
						-- 	}
						-- }),
						i(101838),	-- Crimsonscale Belt
						i(101830),	-- Ordon Legend-Keeper Belt
					}),
					i(102274, {	-- Timeless Mail Leggings
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101932),	-- Crimsonscale Legguards
						-- 		i(101924),	-- Ordon Legend-Keeper Legguards
						-- 	}
						-- }),
						i(101843),	-- Crimsonscale Legguards
						i(101835),	-- Ordon Legend-Keeper Legguards
					}),
					i(102271, {	-- Timeless Mail Boots
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101930),	-- Crimsonscale Greaves
						-- 		i(101922),	-- Ordon Legend-Keeper Greaves
						-- 	}
						-- }),
						i(101841),	-- Crimsonscale Greaves
						i(101833),	-- Ordon Legend-Keeper Greaves
					}),
					i(104009, {	-- Timeless Plate Armor Cache
						["description"] = "The item created will be class- and spec-specific.|r",
						["groups"] = {
							i(101789),	-- Cliffbreaker Breastplate
							i(101791),	-- Cliffbreaker Gauntlets
							i(101792),	-- Cliffbreaker Girdle
							i(101793),	-- Cliffbreaker Helm
							i(101794),	-- Cliffbreaker Legplates
							i(101796),	-- Cliffbreaker Pauldrons
							i(101797),	-- Cliffbreaker Sabatons
							i(101799),	-- Cliffbreaker Vambraces
							i(101851),	-- Elder Tortoiseshell Breastplate
							i(101853),	-- Elder Tortoiseshell Gauntlets
							i(101854),	-- Elder Tortoiseshell Girdle
							i(101855),	-- Elder Tortoiseshell Helm
							i(101856),	-- Elder Tortoiseshell Legplates
							i(101858),	-- Elder Tortoiseshell Pauldrons
							i(101859),	-- Elder Tortoiseshell Sabatons
							i(101861),	-- Elder Tortoiseshell Vambraces
							i(101819),	-- Everbright Breastplate
							i(101820),	-- Everbright Gauntlets
							i(101821),	-- Everbright Girdle
							i(101822),	-- Everbright Helm
							i(101823),	-- Everbright Legplates
							i(101824),	-- Everbright Pauldrons
							i(101825),	-- Everbright Sabatons
							i(101826),	-- Everbright Vambraces
						},
					}),
					i(102266, {	-- Timeless Plate Helm
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101882),	-- Cliffbreaker Helm
						-- 		i(101942),	-- Elder Tortoiseshell Helm
						-- 		i(101911),	-- Everbright Helm
						-- 	}
						-- }),
						i(101793),	-- Cliffbreaker Helm
						i(101855),	-- Elder Tortoiseshell Helm
						i(101822),	-- Everbright Helm
					}),
					i(102268, {	-- Timeless Plate Spaulders
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101885),	-- Cliffbreaker Pauldrons
						-- 		i(101945),	-- Elder Tortoiseshell Pauldrons
						-- 		i(101913),	-- Everbright Pauldrons
						-- 	}
						-- }),
						i(101796),	-- Cliffbreaker Pauldrons
						i(101858),	-- Elder Tortoiseshell Pauldrons
						i(101824),	-- Everbright Pauldrons
					}),
					i(102263, {	-- Timeless Plate Chestpiece
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101878),	-- Cliffbreaker Breastplate
						-- 		i(101938),	-- Elder Tortoiseshell Breastplate
						-- 		i(101908),	-- Everbright Breastplate
						-- 	}
						-- }),
						i(101789),	-- Cliffbreaker Breastplate
						i(101851),	-- Elder Tortoiseshell Breastplate
						i(101819),	-- Everbright Breastplate
					}),
					i(102320, {	-- Timeless Plate Bracers
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101888),	-- Cliffbreaker Vambraces
						-- 		i(101948),	-- Elder Tortoiseshell Vambraces
						-- 		i(101915),	-- Everbright Vambraces
						-- 	}
						-- }),
						i(101799),	-- Cliffbreaker Vambraces
						i(101861),	-- Elder Tortoiseshell Vambraces
						i(101826),	-- Everbright Vambraces
					}),
					i(102265, {	-- Timeless Plate Gloves
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101880),	-- Cliffbreaker Gauntlets
						-- 		i(101940),	-- Elder Tortoiseshell Gauntlets
						-- 		i(101909),	-- Everbright Gauntlets
						-- 	}
						-- }),
						i(101791),	-- Cliffbreaker Gauntlets
						i(101853),	-- Elder Tortoiseshell Gauntlets
						i(101820),	-- Everbright Gauntlets
					}),
					i(102269, {	-- Timeless Plate Belt
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101881),	-- Cliffbreaker Girdle
						-- 		i(101941),	-- Elder Tortoiseshell Girdle
						-- 		i(101910),	-- Everbright Girdle
						-- 	}
						-- }),
						i(101792),	-- Cliffbreaker Girdle
						i(101854),	-- Elder Tortoiseshell Girdle
						i(101821),	-- Everbright Girdle
					}),
					i(102267, {	-- Timeless Plate Leggings
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101883),	-- Cliffbreaker Legplates
						-- 		i(101943),	-- Elder Tortoiseshell Legplates
						-- 		i(101912),	-- Everbright Legplates
						-- 	}
						-- }),
						i(101794),	-- Cliffbreaker Legplates
						i(101856),	-- Elder Tortoiseshell Legplates
						i(101823),	-- Everbright Legplates
					}),
					i(102264, {	-- Timeless Plate Boot
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101886),	-- Cliffbreaker Sabatons
						-- 		i(101946),	-- Elder Tortoiseshell Sabatons
						-- 		i(101914),	-- Everbright Sabatons
						-- 	}
						-- }),
						i(101797),	-- Cliffbreaker Sabatons
						i(101859),	-- Elder Tortoiseshell Sabatons
						i(101825),	-- Everbright Sabatons
					}),
					i(104345, {	-- Timeless Lavalliere
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101894),	-- Amaranthine Necklace
						-- 		i(101884),	-- Cliffbreaker Neck
						-- 		i(101944),	-- Elder Tortoiseshell Neck
						-- 		i(101936),	-- Kiln-Stoker Collar
						-- 		i(101916),	-- Warmsun Choker
						-- 	}
						-- }),
						i(101805),	-- Amaranthine Necklace
						i(101795),	-- Cliffbreaker Choker
						i(101857),	-- Elder Tortoiseshell Gorget
						i(101849),	-- Kiln-Stoker Collar
						i(101827),	-- Warmsun Choker
					}),
					i(102291, {	-- Timeless Signet
						-- n(BURDEN_OF_ETERNITY, {
						-- 	["cost"] = { { "i", 103982, 1 } },	-- Burden of Eternity
						-- 	["groups"] = {
						-- 		i(101898),	-- Cliffbreaker Seal
						-- 		i(101947),	-- Elder Tortoiseshell Seal
						-- 		i(101937),	-- Kiln-Stoker Ring
						-- 		i(101918),	-- Warmsun Ring
						-- 	}
						-- }),
						i(101809),	-- Amaranthine Signet
						i(101798),	-- Cliffbreaker Seal
						i(101860),	-- Elder Tortoiseshell Seal
						i(101850),	-- Kiln-Stoker Ring
						i(101829),	-- Warmsun Ring
					}),
					i(104347, {	-- Timeless Curio
						i(103689),	-- Alacrity of Xuen
						i(103688),	-- Contemplation of Chi-Ji
						i(103686),	-- Discipline of Xuen
						i(103690),	-- Resolve of Niuzao
						i(103687),	-- Yu'lon's Bite
					}),
				}),
			},
		})),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
	m(PANDARIA, {
		m(TIMELESS_ISLE, {
			n(QUESTS, {
				q(33385),	-- Kairoz Weekly Tracking Quest
			}),
			n(RARES, {
				q(33348),	-- "Tom" Bone Apart - Intro Tracking Quest — approaching Zarhym inside the cavern of lost spirits
				q(44696),	-- Tracking Quest - Daily - Watcher Osu — alternate Watcher Osu
				q(33288),	-- Tracking Quest - First - Archiereus of Flame
				q(33276),	-- Tracking Quest - First - Bufo
				q(33274),	-- Tracking Quest - First - Champion of the Black Flame
				q(33318),	-- Tracking Quest - First - Chelon
				q(33286),	-- Tracking Quest - First - Cinderfall
				q(33319),	-- Tracking Quest - First - Cranegnasher
				q(33290),	-- Tracking Quest - First - Dread Ship Vazuvius
				q(33261),	-- Tracking Quest - First - Emerald Gander
				q(33289),	-- Tracking Quest - First - Evermaw
				q(33285),	-- Tracking Quest - First - Flintlord Gairan
				q(33275),	-- Tracking Quest - First - Garnia
				q(33291),	-- Tracking Quest - First - Golganarr
				q(33272),	-- Tracking Quest - First - Great Turtle Furyshell
				q(33260),	-- Tracking Quest - First - Gu'chi the Swarmbringer
				q(33287),	-- Tracking Quest - First - Huolon
				q(33278),	-- Tracking Quest - First - Imperial Python
				q(33270),	-- Tracking Quest - First - Ironfur Steelhorn
				q(33281),	-- Tracking Quest - First - Jakur of Ordon
				q(33258),	-- Tracking Quest - First - Karkanos
				q(33273),	-- Tracking Quest - First - Leafmender
				q(33277),	-- Tracking Quest - First - Monstrous Spineclaw
				q(33283),	-- Tracking Quest - First - Rock Moss
				q(33259),	-- Tracking Quest - First - Spirit of Jadefire
				q(33280),	-- Tracking Quest - First - Stinkbraid
				q(33597),	-- Tracking Quest - First - The Obliterator
				q(33279),	-- Tracking Quest - First - Tsavo'ka
				q(33284),	-- Tracking Quest - First - Urdur the Cauterizer
				q(33321),	-- Tracking Quest - First - Watcher Osu
				q(32997),	-- Tracking Quest - First - Zesqua
				q(33317),	-- Tracking Quest - First - Zhu-Gon the Bitter/Skunky Beer
				q(33162),	-- Weekly Vignette Boss Kill - Tracking Quest — popped upon arriving to timeless isle and killing evermaw (first rare of the week)
				q(33164),	-- Weekly Vignette Event Compeltion - Tracking Quest — popped when killing chelon, along with daily questID. didn't pop from just interacting with shell.
			}),
			n(TREASURES, {
				q(33163),	-- Weekly Vignette Loot Chest - Tracking Quest — looting treasure chest with barnacle-encrusted key at (40.3, 92.9), secondary trigger
				q(33216),	-- One-Time Chest - T1G1, secondary trigger
				q(33217),	-- One-Time Chest - T1G2, secondary trigger
				q(33218),	-- One-Time Chest - T1G3, secondary trigger
				q(33219),	-- One-Time Chest - T1G4, secondary trigger
				q(33220),	-- One-Time Chest - T2, secondary trigger
				q(33221),	-- One-Time Chest - T3, secondary trigger
			}),
		}),
	}),
})));
