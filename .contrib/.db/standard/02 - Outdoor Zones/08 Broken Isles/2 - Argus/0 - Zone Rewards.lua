---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			n(ZONE_REWARDS, {
				n(BACK, {
					i(150988),	-- Twisted-Ritualist's Shawl
				}),
				filter(CLOTH, {
					i(150980),	-- Doomsinger Cap
					i(150987),	-- Doomsinger Amice
					i(150985),	-- Doomsinger Robes
					i(150983),	-- Doomsinger Cuffs
					i(150981),	-- Doomsinger Mitts
					i(150982),	-- Doomsinger Sash
					i(150986),	-- Doomsinger Leggings
					i(150984),	-- Doomsinger Slippers
				}),
				filter(LEATHER, {
					i(150969),	-- Stygian Mask
					i(150970),	-- Stygian Shoulderguards
					i(150968),	-- Stygian Vest
					i(150964),	-- Stygian Armbands
					i(150965),	-- Stygian Grips
					i(150966),	-- Stygian Belt
					i(150971),	-- Stygian Trousers
					i(150967),	-- Stygian Boots
				}),
				filter(MAIL, {
					i(150975),	-- Nath'raxxan Coif
					i(150979),	-- Nath'raxxan Spaulders
					i(150978),	-- Nath'raxxan Chestguard
					i(150972),	-- Nath'raxxan Wristguards
					i(150973),	-- Nath'raxxan Gloves
					i(150977),	-- Nath'raxxan Girdle
					i(150974),	-- Nath'raxxan Leggings
					i(150976),	-- Nath'raxxan Boots
				}),
				filter(PLATE, {
					i(150957),	-- Garothi Helmet
					i(150960),	-- Garothi Pauldrons
					i(150958),	-- Garothi Breastplate
					i(150962),	-- Garothi Vambraces
					i(150961),	-- Garothi Gauntlets
					i(150959),	-- Garothi Waistplate
					i(150956),	-- Garothi Greaves
					i(150963),	-- Garothi Sabatons
				}),
				n(NECK, {
					i(150990),	-- Krokul-Bone Pendant
					i(136733),	-- Warden Pendant
				}),
				n(FINGER, {
					i(150989),	-- Foul-Sadist's Seal
				}),
				n(RELICS, {
					i(151009),	-- Annihilan Heart
					i(151006),	-- Augari Manuscript
					i(151005),	-- Dram of Light
					i(151013),	-- Ethereal Anchor
					i(151014),	-- Fulminating Arcstone
					i(151012),	-- Marsuul Egg
					i(151010),	-- Narouan Fin
					i(151011),	-- Stygian Munition Casing
					i(151008),	-- Vilefiend Fang
					i(151007),	-- Ur'zul Ichor
				}),
				currency(1508),	-- Veiled Argunite
			}),
		})),
	}),
});
