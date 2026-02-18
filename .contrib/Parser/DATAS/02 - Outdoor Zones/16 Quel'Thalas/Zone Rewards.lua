---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	n(ZONE_REWARDS, {
		-- * Means not confirmed fully
		currency(VOIDLIGHT_MARL),
		n(ARMOR, {
			filter(BACK_F, {
				i(257022),	-- Deepvine Shroud
				i(259359),	-- Rootspeaker's Mantle
				i(259360),	-- Steelbark Cloak*
				i(257021),	-- Verdant Tracker's Covert
			}),
			filter(CLOTH, {
				i(256976),	-- Deepvine Ankleguards
				i(256968),	-- Deepvine Bracers
				i(257005),	-- Deepvine Britches
				i(256984),	-- Deepvine Chestwrap
				i(256997),	-- Deepvine Collar
				i(256980),	-- Deepvine Grips
				i(257001),	-- Deepvine Pauldrons
				i(257020),	-- Deepvine Waistguard
			}),
			filter(FINGER_F, {
				i(256986),	-- Circlet of Encroaching Shadow
				i(256972),	-- Evertwisting Swiftvine
				i(256985),	-- Forest Hunter's Hoop
				i(256971),	-- Radiant Phoenix Band*
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
				i(257018),	-- Rootspeaker's Barkclasp
				i(256978),	-- Rootspeaker's Branches
				i(256999),	-- Rootspeaker's Canopy
				i(256974),	-- Rootspeaker's Footwraps
				i(256995),	-- Rootspeaker's Headdress
				i(256966),	-- Rootspeaker's Leafwraps
				i(257003),	-- Rootspeaker's Leggings
				i(256982),	-- Rootspeaker's Trunk
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
			i(256989),	-- Bladed Rootwarden's Stave*
			i(259356),	-- Bloomweaver's Pierce*
			i(259349),	-- Blossoming Rootwarden's Focus*
			i(257016),	-- Deep Forest Hacker
			i(257009),	-- Deep Hunter's Arc*
			i(259355),	-- Deep Hunter's Repeater*
			i(257010),	-- Flourishing Vinescythe*
			i(256987),	-- Ironvine Bulwark
			i(256988),	-- Lumenbloom Lantern*
			i(257014),	-- Lumenbloom Scepter*
			i(256992),	-- Razorvine Cudgel*
			i(257012),	-- Rootwarden's Spellblade*
			i(257008),	-- Splinterthorn Spear*
			i(257007),	-- Tanglevine Spellfocus*
			i(257011),	-- Thornwood Slasher
			i(259358),	-- Underbrush-Clearing Cleaver*
			i(259352),	-- Verdant Speaker's Grasp*
			i(256990),	-- Verdant Tracker's Edge
			i(256993),	-- Verdant Tracker's Spike*
			i(257006),	-- Vine-Rending Claymore*
			i(257015),	-- Vinebound Shank*
			i(259351),	-- Vinewoven Fangs*
			i(256991),	-- Vinewrapped Mallet
			i(257013),	-- Viridescent Crusher
		}),
		--
		i(260193, {	-- Fabled Veteran's Cache
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
			--["groups"] = {
			--	zone_rewards?
			--},
		}),
	}),
}));
