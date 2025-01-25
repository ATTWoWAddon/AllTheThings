-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		q(70893, bubbleDownSelf({ ["minReputation"] = { FACTION_ISKAARA_TUSKARR, 3 } }, {	-- Community Feast
			["provider"] = { "n", 196620 },	-- Pleeqi
			["coord"] = { 13.5, 48.5, THE_AZURE_SPAN },
			["isWeekly"] = true,
			["g"] = {
				i(200095, {	-- Supply-Laden Soup Pot
					["sym"] = {
						{"select", "mapID",
							DRAGON_ISLES,
							THE_WAKING_SHORES,
							OHNAHRAN_PLAINS,
							THE_AZURE_SPAN,
							THALDRASZUS,
						},
						{"pop"},
						{"where", "headerID", ZONE_REWARDS},
						{"pop"},
						{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					},
					["g"] = {
						i(200652),	-- Alchemical Flavor Pocket
						i(215362, {	-- Cache of Storms
							["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
						}),
						i(198131),	-- Recipe: Gral's Devotion (RECIPE!)
						i(198129),	-- Recipe: Gral's Reverence (RECIPE!)
						i(198130),	-- Recipe: Gral's Veneration (RECIPE!)
					},
				}),
				n(ACHIEVEMENTS, {
					ach(16443, {	-- Soupervisor
						title(471),	-- Soupervisor <Name>
					}),
				}),
				n(RARES, {
					n(197557, {	-- Bisquius <The Feast Beast>
						["coord"] = { 13.6, 48.6, THE_AZURE_SPAN },
						["questID"] = 74097,
						["isDaily"] = true,
						["g"] = {
							ach(16444, {	-- Leftovers' Revenge
								i(200882),	-- Big Kinook's Spare Ladle
							}),
						},
					}),
				}),
				filter(REAGENTS, {
					i(204292),	-- "Volcano" Duck
					i(199105),	-- Ancheevy
					i(199212),	-- Clubfish
					i(204299),	-- Dark Thaldraszian Cocoa Powder
					i(204286),	-- Deepsquid Ink
					i(204290),	-- Dragonflame Argali
					i(199833),	-- Dragonhead Eel
					i(204296),	-- Dried Coldsnap Sagittate
					i(199101),	-- Dried Wyldermane Kelp
					i(204297),	-- Exquisite Ohn'ahran Potato
					i(204288),	-- Eye of Bass
					i(204285),	-- Fermented Mackerel Paste
					i(204298),	-- Flaky Pastry Dough
					i(204300),	-- Four-Cheese Blend
					i(204294),	-- Fresh Dragon Fruit
					i(204293),	-- Greenberry
					i(199208),	-- Grungle
					i(199102),	-- Hunk o' Blubber
					i(199207),	-- Iceback Sculpin
					i(204287),	-- Island Crab Jerky
					i(204295),	-- Juicy Bushfruit
					i(199213),	-- Lakkamuk Blenny
					i(204282),	-- Lunker Bits
					i(199205),	-- Manasucker
					i(199103),	-- Nappa's Famous Tea
					i(204284),	-- Norukk's "All-Purpose" Fish Powder
					i(199100),	-- Peppersmelt
					i(199104),	-- Piping-Hot Orca Milk
					i(199834),	-- Pulpy Seagrass
					i(204304),	-- Rations: Dragonbreath Chili
					i(204301),	-- Rations: Scorpid Surprise
					i(204302),	-- Rations: Undermine Clam Chowder
					i(204303),	-- Rations: Westfall Stew
					i(199063),	-- Salted Fish Scraps
					i(204289),	-- Seven Spices Bruffalon
					i(204283),	-- Skrog Liver Oil
					i(199832),	-- Smoked Seaviper
					i(204281),	-- Thousandbite Piranha Collar
					i(204291),	-- Thrice-Charred Mammoth Ribs
					i(199106),	-- Tiny Leviathan Bone
					i(199835),	-- Torga's Braid
				}),
			},
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		header(HEADERS.Quest, 70893, {	-- Community Feast
			q(70925),	-- triggers repeatedly during 'Community Feast' (70925) to show in objective pane
			q(74382),	-- catching a 'Gungle' / purchasing 'Piping Hot Orca Milk' during Community Feast event
			q(72079),	-- tasting/sniffing the soup during Community Feast event
			--q(70924),	-- probably some task during Community Feast event
		}),
	}),
})));
