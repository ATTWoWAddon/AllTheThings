---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(ZONE_REWARDS, {
			-- * Means not confirmed yet
			filter(COSMETIC, {
				-- Temp Placement. Should probably be moved to treasures after figuring it out? List items directly and attach coords to them, maybe?
				-- These are related to 'Phase-Lost-and-Found" achievement
				-- You find orbs while Phase Diving and when you go through them, you get the item
				-- Orb can't be targeted so idk if it is an object or NPC.
				i(250276),	-- Phase-Lost Greatsword
				i(250300),	-- Phase-Lost Rod (51.2, 67.7, KARESH)

				-- Not confirmed
				i(250269),	-- Phase-Lost Longsword
				i(250272),	-- Phase-Lost Cudgel
				i(250278),	-- Phase-Lost Great Mace
				i(250280),	-- Phase-Lost Chopper
				i(250281),	-- Phase-Lost Battleaxe
				i(250284),	-- Phase-Lost Spire
				i(250285),	-- Phase-Lost Shillelagh
				i(250286),	-- Phase-Lost Blunderbuss
				i(250287),	-- Phase-Lost Longbow
				i(250288),	-- Phase-Lost Baselard
				i(250289),	-- Phase-Lost Dirk
				i(250294),	-- Phase-Lost Katar
				i(250295),	-- Phase-Lost Claw
				i(250297),	-- Phase-Lost Beacon
				i(250298),	-- Phase-Lost Bulwark
				i(250299),	-- Phase-Lost Pavise
				i(250301),	-- Phase-Lost Wand
			}),
			filter(CLOTH, {
				i(243507),	-- Wastelander Magi's Bands
				i(243506),	-- Wastelander Magi's Cord
				i(243503),	-- Wastelander Magi's Crown
				i(243502),	-- Wastelander Magi's Gloves
				i(243504),	-- Wastelander Magi's Leggings
				i(243501),	-- Wastelander Magi's Slippers
				i(243505),	-- Wastelander Magi's Spines
				i(243500),	-- Wastelander Magi's Vestments
			}),
			filter(FINGER_F, {
				i(243496),	-- Wastelander's Gilded Band
				i(243498),	-- Wastelander's Gilded Loop
				i(243497),	-- Wastelander's Gilded Signet
			}),
			filter(LEATHER, {
				i(243514),	-- Wastelander Scout's Belt
				i(243515),	-- Wastelander Scout's Bracers
				i(243512),	-- Wastelander Scout's Breeches
				i(243510),	-- Wastelander Scout's Grips
				i(243511),	-- Wastelander Scout's Hood
				i(243508),	-- Wastelander Scout's Jerkin
				i(243513),	-- Wastelander Scout's Shoulderpads
				i(243509),	-- Wastelander Scout's Soles
			}),
			filter(MAIL, {
				i(243523),	-- Wastelander Skirmisher's Armguards
				i(243517),	-- Wastelander Skirmisher's Boots
				i(243516),	-- Wastelander Skirmisher's Brigandine
				i(243519),	-- Wastelander Skirmisher's Cowl
				i(243518),	-- Wastelander Skirmisher's Gauntlets
				i(243520),	-- Wastelander Skirmisher's Legguards
				i(243521),	-- Wastelander Skirmisher's Pauldrons
				i(243522),	-- Wastelander Skirmisher's Sash
			}),
			filter(MISC, {
				i(242529),	-- Shadowtrade Imports
			}),
			filter(NECK_F, {
				i(243499),	-- Wastelander's Gilded Pendant
			}),
			filter(PLATE, {
				i(243524),	-- Wastelander Brute's Breastplate
				i(243529),	-- Wastelander Brute's Epaulettes
				i(243530),	-- Wastelander Brute's Greatbelt
				i(243528),	-- Wastelander Brute's Greaves
				i(243526),	-- Wastelander Brute's Handguards
				i(243527),	-- Wastelander Brute's Helmet
				i(243525),	-- Wastelander Brute's Sollerets
				i(243531),	-- Wastelander Brute's Vambraces
			}),
			filter(TRINKET_F, {
			}),
			n(WEAPONS, {
				--TODO: uncomment what is confirmed
				i(243549),	-- Wastelander's Gilded Bastion*
				i(243543),	-- Wastelander's Gilded Bident*
				i(243547),	-- Wastelander's Gilded Blade*
				i(243541),	-- Wastelander's Gilded Blaster*
				i(243533),	-- Wastelander's Gilded Carver*
				i(243548),	-- Wastelander's Gilded Censer*
				i(243534),	-- Wastelander's Gilded Chopper*
				i(243532),	-- Wastelander's Gilded Cleaver*
				i(243539),	-- Wastelander's Gilded Falchion
				i(243546),	-- Wastelander's Gilded Greatsword
				i(243536),	-- Wastelander's Gilded Kris*
				i(243540),	-- Wastelander's Gilded Longsword
				i(243537),	-- Wastelander's Gilded Mace*
				i(243544),	-- Wastelander's Gilded Pole*
				i(243542),	-- Wastelander's Gilded Spear
				i(243545),	-- Wastelander's Gilded Staff
				i(243535),	-- Wastelander's Gilded Stiletto
				i(243538),	-- Wastelander's Gilded Warmace
				i(243550),	-- Wastelander's Gilded Warglaive
			}),
		}),
	}),
})));
