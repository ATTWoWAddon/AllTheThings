---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	n(ZONE_REWARDS, {
		currency(VOIDLIGHT_MARL),
		n(ARMOR, {
			filter(BACK_F, {
				i(257022),	-- Deepvine Shroud
				i(259359),	-- Rootspeaker's Mantle
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
				i(256970),	-- Loa-Blessed Beads
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
				i(259896),	-- Bark of the Guardian Tree
				i(248583),	-- Drum of Renewed Bonds
				i(251791),	-- Holy Retributor's Order
				i(251783),	-- Lost Idol of the Hash'ey
				i(252957),	-- Tangle of Vibrant Vines
				i(251782),	-- Withered Saptor's Paw
			}),
		}),
		n(WEAPONS, {
			i(257016),	-- Deep Forest Hacker
			i(256987),	-- Ironvine Bulwark
			i(257011),	-- Thornwood Slasher
			i(256990),	-- Verdant Tracker's Edge
		}),
		i(260193, {	-- Fabled Veteran's Cache
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
			--["groups"] = {
			--	zone_rewards?	
			--},
		}),
	}),
}));
