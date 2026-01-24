---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	n(ZONE_REWARDS, {
		currency(VOIDLIGHT_MARL),
		--TODO: alpha state - seems like there no separation between zones in rewards and they could be mixed in
		n(ARMOR, {
			filter(BACK_F, {
				i(257021),	-- Verdant Tracker's Covert
			}),
			filter(CLOTH, {
			}),
			filter(FINGER_F, {
				i(256985),	-- Forest Hunter's Hoop
			}),
			filter(LEATHER, {
				i(256967),	-- Verdant Tracker's Cuffs
				i(256975),	-- Verdant Tracker's Anklets
				i(256979),	-- Verdant Tracker's Claws
				i(256983),	-- Verdant Tracker's Vest
				i(256996),	-- Verdant Tracker's Guise
				i(257000),	-- Verdant Tracker's Trophy Mantle
				i(257004),	-- Verdant Tracker's Legguards
				i(257019),	-- Verdant Tracker's Buckle
			}),
			filter(MAIL, {
			}),
			filter(NECK_F, {
			}),
			filter(PLATE, {
				i(256994),	-- Steelbark Casque
				i(256981),	-- Steelbark Chestguard
				i(256977),	-- Steelbark Gauntlets
				i(257017),	-- Steelbark Girdle
				i(257002),	-- Steelbark Greaves
				i(256973),	-- Steelbark Sabatons
				i(256998),	-- Steelbark Shoulderguards
				i(256965),	-- Steelbark Vambraces
			}),
			filter(TRINKET_F, {
				i(251782),	-- Withered Saptor's Paw
			}),
		}),
		n(WEAPONS, {
			i(257016),	-- Deep Forest Hacker
			i(256990),	-- Verdant Tracker's Edge
		}),
	}),
}));
