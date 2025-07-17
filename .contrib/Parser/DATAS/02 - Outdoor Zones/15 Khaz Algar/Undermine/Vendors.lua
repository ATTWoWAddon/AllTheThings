---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(VENDORS, {
			n(231824, {	-- Kari Bridgeblaster
				["coord"] = { 44.0, 49.8, UNDERMINE },
				["g"] = {
					-- tier set vendor
					-- curio - 228819 Excessively Bejeweled Curio
				},
			}),
			n(237784, {	-- Alchemist Pestlezugg
				["coord"] = { 28.0, 73.9, UNDERMINE },
				["g"] = {
					i(235703),	-- Noggenfogger Select DOWN
					i(235710, {	-- Noggenfogger Select FRESH
						["races"] = { GOBLIN },	-- TODO: I don't have any goblin
					}),
					i(235704),	-- Noggenfogger Select UP
				},
			}),
			n(226994, {	-- Blair Bass <"Gold" Fish Exchange>
				["sourceQuest"] = 83542,	-- Quick Gills for Gold Now
				["coord"] = { 34.0, 71.4, UNDERMINE },
				["g"] = sharedData({
					["cost"] = {{ "i", 227673, 5 }},	-- "Gold" Fish
				},{
					i(237346),	-- Artisan Beverage Goblet Bobber (TOY!)
					i(237345),	-- Limited Edition Rocket Bobber (TOY!)
					i(237347),	-- Organically-Sourced Wellington Bobber (TOY!)
				}),
			}),
			n(239112, {	-- Bombin' Bert
				["coord"] = { 50.9, 31.8, UNDERMINE },
				["g"] = {
					i(237762),	-- "Harmless" Sniper Dislodger XL
					i(237306),	-- NEW Goblin Hot Potato
				},
			}),
			n(239150, {	-- Brix the Bloody
				--TODO: idk rp or whatever purpose it is
				["coord"] = { 28.2, 27.1, UNDERMINE },
				["g"] = {
					i(237315),	-- Fighting Guide: Armed Combat
					i(237320),	-- Fighting Guide: Grappling Combat
					i(237319),	-- Fighting Guide: Magical Combat
					i(237314),	-- Fighting Guide: Unarmed Combat
					i(237318),	-- Injury Guide: Knockdown
					i(237317),	-- Injury Guide: Play Dead
					i(237316),	-- Injury Guide: Stunned
					i(237323),	-- Scoring Guide: Add Point
					i(237322),	-- Scoring Guide: Remove Point
					i(237321),	-- Scoring Guide: Start Counter
				},
			}),
			n(239523, {	-- Brondo Packrat
				["coord"] = { 29.0, 53.8, UNDERMINE },
				["g"] = {
					-- TODO: move into uncollectible?
					i(237333),	-- Undermine Crate
				},
			}),
			n(236411, {	-- Ditty Fuzeboy
				["coord"] = { 35.4, 41.4, UNDERMINE },
				["g"] = {
					i(232850, {	-- Blackwater Kegmover (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
					i(232842, {	-- Crimson Mechasaur (PET!)
						["cost"] = {{ "i", 234741, 10 }},	-- Miscellaneous Mechanica
					}),
					i(232840, {	-- Mechagopher (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
					i(232841, {	-- Professor Punch (PET!)
						["cost"] = {{ "i", 234741, 8 }},	-- Miscellaneous Mechanica
					}),
					i(232846, {	-- Steamwheedle Flunkie (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
					i(232849, {	-- Venture Companyman (PET!)
						["cost"] = {{ "i", 234741, 5 }},	-- Miscellaneous Mechanica
					}),
				},
			}),
			n(231066, {	-- Gallagio Caterer
				["sourceQuest"] = 87297,	-- Cashing the Check
				["g"] = {
					i(237259),	-- Kapow Kanapes
					i(237260),	-- Glass of Daylight Dew
				},
			}),
			n(239166, {	-- Geeves
				["coord"] = { 29.2, 25.8, UNDERMINE },
				["g"] = {
					-- TODO: move in uncollectible if there won't be any purpose or shared in zone
					i(236647),	-- Coin and Kaja
					i(236649),	-- Few Screws Loose
					i(236646),	-- Gallagio Especial
					i(236681),	-- Liquid Gold
					i(236648),	-- Liquid Nitro
					i(236633),	-- Low-Town Fizz
					i(236650),	-- Paincracker
				},
			}),
			n(236849, {	-- Greexit Coarsebub
				["description"] = "Sells different cosmetics depending on which cartel you have a contract with.",
				["coord"] = { 24.5, 63.3, UNDERMINE },
				["g"] = {
					-- Bilgewater Cartel
					i(231736),	-- Bilgewater Bruiser's Tabard
					i(231748),	-- Bilgewater Bruiser's Spaulders
					i(231742),	-- Bilgewater Bruiser's Helm
					-- Blackwater Cartel
					i(231734),	-- Blackwater Bruiser's Tabard
					i(231746),	-- Blackwater Bruiser's Spaulders
					i(231741),	-- Blackwater Bruiser's Helm
					-- Steamwheedle Cartel
					i(231735),	-- Steamwheedle Bruiser's Tabard
					i(231747),	-- Steamwheedle Bruiser's Spaulders
					i(231740),	-- Steamwheedle Bruiser's Helm
					-- Venture Co.
					i(231738),	-- Venture Co. Bruiser's Tabard
					i(231750),	-- Venture Co. Bruiser's Spaulders
					i(231744),	-- Venture Co. Bruiser's Helm
				},
			}),
			n(228286, {	-- Skedgit Cinderbangs <Entrepreneur Inc.>
				["coord"] = { 43.0, 82.8, UNDERMINE },
				["g"] = {
					i(229952, {	-- Asset Advocator (MOUNT!)
						["cost"] = {{ "i", 234741, 25 }},	-- Miscellaneous Mechanica
					}),
					i(229941, {	-- Innovation Investigator (MOUNT!)
						["cost"] = {{ "i", 234741, 25 }},	-- Miscellaneous Mechanica
					}),
					i(229954, {	-- Margin Manipulator (MOUNT!)
						["cost"] = {{ "i", 234741, 25 }},	-- Miscellaneous Mechanica
					}),
				},
			}),
		}),
	}),
})));