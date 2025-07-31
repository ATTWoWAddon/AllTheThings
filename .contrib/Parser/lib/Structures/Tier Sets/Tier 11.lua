TIER_ELEVEN_NORMAL_GROUPS = {	-- Bastion of Twilight [Tier 11] (Normal)
	cl(WARRIOR, {
		-- DPS
		i(60325),	-- Earthen Helmet
		i(60327),	-- Earthen Pauldrons
		i(60326),	-- Earthen Gauntlets
		i(60323),	-- Earthen Battleplate
		i(60324),	-- Earthen Legplates

		-- Protection
		i(60328),	-- Earthen Faceguard
		i(60331),	-- Earthen Shoulderguards
		i(60332),	-- Earthen Handguards
		i(60329),	-- Earthen Chestguard
		i(60330),	-- Earthen Legguards
	}),
	cl(PALADIN, {
		-- DPS
		i(60346),	-- Reinforced Sapphirium Helmet
		i(60348),	-- Reinforced Sapphirium Pauldrons
		i(60345),	-- Reinforced Sapphirium Gauntlets
		i(60344),	-- Reinforced Sapphirium Battleplate
		i(60347),	-- Reinforced Sapphirium Legplates

		-- Holy
		i(60359),	-- Reinforced Sapphirium Headguard
		i(60362),	-- Reinforced Sapphirium Mantle
		i(60363),	-- Reinforced Sapphirium Gloves
		i(60360),	-- Reinforced Sapphirium Breastplate
		i(60361),	-- Reinforced Sapphirium Greaves

		-- Protection
		i(60356),	-- Reinforced Sapphirium Faceguard
		i(60358),	-- Reinforced Sapphirium Shoulderguards
		i(60355),	-- Reinforced Sapphirium Handguards
		i(60354),	-- Reinforced Sapphirium Chestguard
		i(60357),	-- Reinforced Sapphirium Legguards
	}),
	cl(DEATHKNIGHT, {
		-- DPS
		i(60341),	-- Magma Plated Helmet
		i(60343),	-- Magma Plated Pauldrons
		i(60340),	-- Magma Plated Gauntlets
		i(60339),	-- Magma Plated Battleplate
		i(60342),	-- Magma Plated Legplates

		-- Protection
		i(60351),	-- Magma Plated Faceguard
		i(60353),	-- Magma Plated Shoulderguards
		i(60350),	-- Magma Plated Handguards
		i(60349),	-- Magma Plated Chestguard
		i(60352),	-- Magma Plated Legguards
	}),
	cl(HUNTER, {
		i(60303),	-- Lightning-Charged Headguard
		i(60306),	-- Lightning-Charged Spaulders
		i(60307),	-- Lightning-Charged Gloves
		i(60304),	-- Lightning-Charged Tunic
		i(60305),	-- Lightning-Charged Legguards
	}),
	cl(ROGUE, {
		i(60299),	-- Wind Dancer's Helmet
		i(60302),	-- Wind Dancer's Spaulders
		i(60298),	-- Wind Dancer's Gloves
		i(60301),	-- Wind Dancer's Tunic
		i(60300),	-- Wind Dancer's Legguards
	}),
	cl(PRIEST, {
		-- DPS
		i(60256),	-- Mercurial Hood
		i(60253),	-- Mercurial Shoulderwraps
		i(60257),	-- Mercurial Gloves
		i(60254),	-- Mercurial Vestment
		i(60255),	-- Mercurial Leggings

		-- Holy
		i(60258),	-- Mercurial Cowl
		i(60262),	-- Mercurial Mantle
		i(60275),	-- Mercurial Handwraps
		i(60259),	-- Mercurial Robes
		i(60261),	-- Mercurial Legwraps
	}),
	cl(SHAMAN, {
		-- Enhance
		i(60320),	-- Helmet of the Raging Elements
		i(60322),	-- Spaulders of the Raging Elements
		i(60319),	-- Grips of the Raging Elements
		i(60318),	-- Cuirass of the Raging Elements
		i(60321),	-- Legguards of the Raging Elements

		-- Elemental
		i(60315),	-- Headpiece of the Raging Elements
		i(60317),	-- Shoulderwraps of the Raging Elements
		i(60314),	-- Gloves of the Raging Elements
		i(60313),	-- Hauberk of the Raging Elements
		i(60316),	-- Kilt of the Raging Elements

		-- Restoration
		i(60308),	-- Faceguard of the Raging Elements
		i(60311),	-- Mantle of the Raging Elements
		i(60312),	-- Handwraps of the Raging Elements
		i(60309),	-- Tunic of the Raging Elements
		i(60310),	-- Legwraps of the Raging Elements
	}),
	cl(MAGE, {
		i(60243),	-- Firelord's Hood
		i(60246),	-- Firelord's Mantle
		i(60247),	-- Firelord's Gloves
		i(60244),	-- Firelord's Robes
		i(60245),	-- Firelord's Leggings
	}),
	cl(WARLOCK, {
		i(60249),	-- Shadowflame Hood
		i(60252),	-- Shadowflame Mantle
		i(60248),	-- Shadowflame Handwraps
		i(60251),	-- Shadowflame Robes
		i(60250),	-- Shadowflame Leggings
	}),
	cl(DRUID, {
		-- Boomkin
		i(60282),	-- Stormrider's Cover
		i(60284),	-- Stormrider's Shoulderwraps
		i(60285),	-- Stormrider's Gloves
		i(60281),	-- Stormrider's Vestment
		i(60283),	-- Stormrider's Leggings

		-- Feral
		i(60286),	-- Stormrider's Headpiece
		i(60289),	-- Stormrider's Spaulders
		i(60290),	-- Stormrider's Grips
		i(60287),	-- Stormrider's Raiment
		i(60288),	-- Stormrider's Legguards

		-- Restoration
		i(60277),	-- Stormrider's Helm
		i(60279),	-- Stormrider's Mantle
		i(60280),	-- Stormrider's Handwraps
		i(60276),	-- Stormrider's Robes
		i(60278),	-- Stormrider's Legwraps
	}),
};
TIER_ELEVEN_HEROIC_GROUPS = {	-- Bastion of Twilight [Tier 11] (Heroic)
	cl(WARRIOR, {
		-- DPS
		i(65266, {	-- Earthen Helmet
			["cost"] = { { "i", 65000, 1 }, },	-- Crown of the Forlorn Protector
		}),
		i(65268, {	-- Earthen Pauldrons
			["cost"] = { { "i", 65087, 1 }, },	-- Shoulders of the Forlorn Protector
		}),
		i(65265, {	-- Earthen Gauntlets
			["cost"] = {
				{ "i", 67430, 1 },	-- Gauntlets of the Forlorn Protector
				{ "i", 60326, 1 },	-- Earthen Gauntlets
			},
		}),
		i(65264, {	-- Earthen Battleplate
			["cost"] = {
				{ "i", 67424, 1 },	-- Chest of the Forlorn Protector
				{ "i", 60323, 1 },	-- Earthen Battleplate
			},
		}),
		i(65267, {	-- Earthen Legplates
			["cost"] = {
				{ "i", 67427, 1 },	-- Leggings of the Forlorn Protector
				{ "i", 60324, 1 },	-- Earthen Legplates
			},
		}),

		-- Protection
		i(65271, {	-- Earthen Faceguard
			["cost"] = { { "i", 65000, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65273, {	-- Earthen Shoulderguards
			["cost"] = { { "i", 65087, 1 }, },	-- Shoulders of the Forlorn Protector
		}),
		i(65270, {	-- Earthen Handguards
			["cost"] = {
				{ "i", 67430, 1 },	-- Gauntlets of the Forlorn Protector
				{ "i", 60332, 1 },	-- Earthen Handguards
			},
		}),
		i(65269, {	-- Earthen Chestguard
			["cost"] = {
				{ "i", 67424, 1 },	-- Chest of the Forlorn Protector
				{ "i", 60329, 1 },	-- Earthen Chestguard
			},
		}),
		i(65272, {	-- Earthen Legguards
			["cost"] = {
				{ "i", 67427, 1 },	-- Leggings of the Forlorn Protector
				{ "i", 60330, 1 },	-- Earthen Legguards
			},
		}),
	}),
	cl(PALADIN, {
		-- DPS
		i(65216, {	-- Reinforced Sapphirium Helmet
			["cost"] = { { "i", 65001, 1 }, },	-- Crown of the Forlorn Conqueror
		}),
		i(65218, {	-- Reinforced Sapphirium Pauldrons
			["cost"] = { { "i", 65088, 1 }, },	-- Shoulders of the Forlorn Conqueror
		}),
		i(65215, {	-- Reinforced Sapphirium Gauntlets
			["cost"] = {
				{ "i", 67429, 1 },	-- Gauntlets of the Forlorn Conqueror
				{ "i", 60345, 1 },	-- Reinforced Sapphirium Gauntlets
			},
		}),
		i(65214, {	-- Reinforced Sapphirium Battleplate
			["cost"] = {
				{ "i", 67423, 1 },	-- Chest of the Forlorn Conqueror
				{ "i", 60344, 1 },	-- Reinforced Sapphirium Battleplate
			},
		}),
		i(65217, {	-- Reinforced Sapphirium Legplates
			["cost"] = {
				{ "i", 67428, 1 },	-- Leggings of the Forlorn Conqueror
				{ "i", 60347, 1 },	-- Reinforced Sapphirium Legplates
			},
		}),

		-- Holy
		i(65221, {	-- Reinforced Sapphirium Headguard
			["cost"] = { { "i", 65001, 1 }, },	-- Crown of the Forlorn Conqueror
		}),
		i(65223, {	-- Reinforced Sapphirium Mantle
			["cost"] = { { "i", 65088, 1 }, },	-- Shoulders of the Forlorn Conqueror
		}),
		i(65220, {	-- Reinforced Sapphirium Gloves
			["cost"] = {
				{ "i", 67429, 1 },	-- Gauntlets of the Forlorn Conqueror
				{ "i", 60363, 1 },	-- Reinforced Sapphirium Gloves
			},
		}),
		i(65219, {	-- Reinforced Sapphirium Breastplate
			["cost"] = {
				{ "i", 67423, 1 },	-- Chest of the Forlorn Conqueror
				{ "i", 60360, 1 },	-- Reinforced Sapphirium Breastplate
			},
		}),
		i(65222, {	-- Reinforced Sapphirium Greaves
			["cost"] = {
				{ "i", 67428, 1 },	-- Leggings of the Forlorn Conqueror
				{ "i", 60361, 1 },	-- Reinforced Sapphirium Greaves
			},
		}),

		-- Protection
		i(65226, {	-- Reinforced Sapphirium Faceguard
			["cost"] = { { "i", 65001, 1 }, },	-- Crown of the Forlorn Conqueror
		}),
		i(65228, {	-- Reinforced Sapphirium Shoulderguards
			["cost"] = { { "i", 65088, 1 }, },	-- Shoulders of the Forlorn Conqueror
		}),
		i(65225, {	-- Reinforced Sapphirium Handguards
			["cost"] = {
				{ "i", 67429, 1 },	-- Gauntlets of the Forlorn Conqueror
				{ "i", 60355, 1 },	-- Reinforced Sapphirium Handguards
			},
		}),
		i(65224, {	-- Reinforced Sapphirium Chestguard
			["cost"] = {
				{ "i", 67423, 1 },	-- Chest of the Forlorn Conqueror
				{ "i", 60354, 1 },	-- Reinforced Sapphirium Chestguard
			},
		}),
		i(65227, {	-- Reinforced Sapphirium Legguards
			["cost"] = {
				{ "i", 67428, 1 },	-- Leggings of the Forlorn Conqueror
				{ "i", 60357, 1 },	-- Reinforced Sapphirium Legguards
			},
		}),
	}),
	cl(DEATHKNIGHT, {
		-- DPS
		i(65181, {	-- Magma Plated Helmet
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65183, {	-- Magma Plated Pauldrons
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65180, {	-- Magma Plated Gauntlets
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60340, 1 },	-- Magma Plated Gauntlets
			},
		}),
		i(65179, {	-- Magma Plated Battleplate
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60339, 1 },	-- Magma Plated Battleplate
			},
		}),
		i(65182, {	-- Magma Plated Legplates
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60342, 1 },	-- Magma Plated Legplates
			},
		}),

		-- Protection
		i(65186, {	-- Magma Plated Faceguard
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65188, {	-- Magma Plated Shoulderguards
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65185, {	-- Magma Plated Handguards
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60350, 1 },	-- Magma Plated Handguards
			},
		}),
		i(65184, {	-- Magma Plated Chestguard
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60349, 1 },	-- Magma Plated Chestguard
			},
		}),
		i(65187, {	-- Magma Plated Legguards
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60352, 1 },	-- Magma Plated Legguards
			},
		}),
	}),
	cl(HUNTER, {
		i(65206, {	-- Lightning-Charged Headguard
			["cost"] = { { "i", 65000, 1 }, },	-- Crown of the Forlorn Protector
		}),
		i(65208, {	-- Lightning-Charged Spaulders
			["cost"] = { { "i", 65087, 1 }, },	-- Shoulders of the Forlorn Protector
		}),
		i(65205, {	-- Lightning-Charged Gloves
			["cost"] = {
				{ "i", 67430, 1 },	-- Gauntlets of the Forlorn Protector
				{ "i", 60307, 1 },	-- Lightning-Charged Gloves
			},
		}),
		i(65204, {	-- Lightning-Charged Tunic
			["cost"] = {
				{ "i", 67424, 1 },	-- Chest of the Forlorn Protector
				{ "i", 60304, 1 },	-- Lightning-Charged Tunic
			},
		}),
		i(65207, {	-- Lightning-Charged Legguards
			["cost"] = {
				{ "i", 67427, 1 },	-- Leggings of the Forlorn Protector
				{ "i", 60305, 1 },	-- Lightning-Charged Legguards
			},
		}),
	}),
	cl(ROGUE, {
		i(65241, {	-- Wind Dancer's Helmet
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65243, {	-- Wind Dancer's Spaulders
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65240, {	-- Wind Dancer's Gloves
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60298, 1 },	-- Wind Dancer's Gloves
			},
		}),
		i(65239, {	-- Wind Dancer's Tunic
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60301, 1 },	-- Wind Dancer's Tunic
			},
		}),
		i(65242, {	-- Wind Dancer's Legguards
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60300, 1 },	-- Wind Dancer's Legguards
			},
		}),
	}),
	cl(PRIEST, {
		-- DPS
		i(65235, {	-- Mercurial Hood
			["cost"] = { { "i", 65001, 1 }, },	-- Crown of the Forlorn Conqueror
		}),
		i(65238, {	-- Mercurial Shoulderwraps
			["cost"] = { { "i", 65088, 1 }, },	-- Shoulders of the Forlorn Conqueror
		}),
		i(65234, {	-- Mercurial Gloves
			["cost"] = {
				{ "i", 67429, 1 },	-- Gauntlets of the Forlorn Conqueror
				{ "i", 60257, 1 },	-- Mercurial Gloves
			},
		}),
		i(65237, {	-- Mercurial Vestment
			["cost"] = {
				{ "i", 67423, 1 },	-- Chest of the Forlorn Conqueror
				{ "i", 60254, 1 },	-- Mercurial Vestment
			},
		}),
		i(65236, {	-- Mercurial Leggings
			["cost"] = {
				{ "i", 67428, 1 },	-- Leggings of the Forlorn Conqueror
				{ "i", 60255, 1 },	-- Mercurial Leggings
			},
		}),

		-- Holy
		i(65230, {	-- Mercurial Cowl
			["cost"] = { { "i", 65001, 1 }, },	-- Crown of the Forlorn Conqueror
		}),
		i(65233, {	-- Mercurial Mantle
			["cost"] = { { "i", 65088, 1 }, },	-- Shoulders of the Forlorn Conqueror
		}),
		i(65229, {	-- Mercurial Handwraps
			["cost"] = {
				{ "i", 67429, 1 },	-- Gauntlets of the Forlorn Conqueror
				{ "i", 60275, 1 },	-- Mercurial Handwraps
			},
		}),
		i(65232, {	-- Mercurial Robes
			["cost"] = {
				{ "i", 67423, 1 },	-- Chest of the Forlorn Conqueror
				{ "i", 60259, 1 },	-- Mercurial Robes
			},
		}),
		i(65231, {	-- Mercurial Legwraps
			["cost"] = {
				{ "i", 67428, 1 },	-- Leggings of the Forlorn Conqueror
				{ "i", 60261, 1 },	-- Mercurial Legwraps
			},
		}),
	}),
	cl(SHAMAN, {
		-- Enhance
		i(65251, {	-- Helmet of the Raging Elements
			["cost"] = { { "i", 65000, 1 }, },	-- Crown of the Forlorn Protector
		}),
		i(65253, {	-- Spaulders of the Raging Elements
			["cost"] = { { "i", 65087, 1 }, },	-- Shoulders of the Forlorn Protector
		}),
		i(65250, {	-- Grips of the Raging Elements
			["cost"] = {
				{ "i", 67430, 1 },	-- Gauntlets of the Forlorn Protector
				{ "i", 60319, 1 },	-- Grips of the Raging Elements
			},
		}),
		i(65249, {	-- Cuirass of the Raging Elements
			["cost"] = {
				{ "i", 67424, 1 },	-- Chest of the Forlorn Protector
				{ "i", 60318, 1 },	-- Cuirass of the Raging Elements
			},
		}),
		i(65252, {	-- Legguards of the Raging Elements
			["cost"] = {
				{ "i", 67427, 1 },	-- Leggings of the Forlorn Protector
				{ "i", 60321, 1 },	-- Legguards of the Raging Elements
			},
		}),

		-- Elemental
		i(65256, {	-- Headpiece of the Raging Elements
			["cost"] = { { "i", 65000, 1 }, },	-- Crown of the Forlorn Protector
		}),
		i(65258, {	-- Shoulderwraps of the Raging Elements
			["cost"] = { { "i", 65087, 1 }, },	-- Shoulders of the Forlorn Protector
		}),
		i(65255, {	-- Gloves of the Raging Elements
			["cost"] = {
				{ "i", 67430, 1 },	-- Gauntlets of the Forlorn Protector
				{ "i", 60314, 1 },	-- Gloves of the Raging Elements
			},
		}),
		i(65254, {	-- Hauberk of the Raging Elements
			["cost"] = {
				{ "i", 67424, 1 },	-- Chest of the Forlorn Protector
				{ "i", 60313, 1 },	-- Hauberk of the Raging Elements
			},
		}),
		i(65257, {	-- Kilt of the Raging Elements
			["cost"] = {
				{ "i", 67427, 1 },	-- Leggings of the Forlorn Protector
				{ "i", 60316, 1 },	-- Kilt of the Raging Elements
			},
		}),

		-- Restoration
		i(65246, {	-- Faceguard of the Raging Elements
			["cost"] = { { "i", 65000, 1 }, },	-- Crown of the Forlorn Protector
		}),
		i(65248, {	-- Mantle of the Raging Elements
			["cost"] = { { "i", 65087, 1 }, },	-- Shoulders of the Forlorn Protector
		}),
		i(65245, {	-- Handwraps of the Raging Elements
			["cost"] = {
				{ "i", 67430, 1 },	-- Gauntlets of the Forlorn Protector
				{ "i", 60312, 1 },	-- Handwraps of the Raging Elements
			},
		}),
		i(65244, {	-- Tunic of the Raging Elements
			["cost"] = {
				{ "i", 67424, 1 },	-- Chest of the Forlorn Protector
				{ "i", 60309, 1 },	-- Tunic of the Raging Elements
			},
		}),
		i(65247, {	-- Legwraps of the Raging Elements
			["cost"] = {
				{ "i", 67427, 1 },	-- Leggings of the Forlorn Protector
				{ "i", 60310, 1 },	-- Legwraps of the Raging Elements
			},
		}),
	}),
	cl(MAGE, {
		i(65210, {	-- Firelord's Hood
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65213, {	-- Firelord's Mantle
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65209, {	-- Firelord's Gloves
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60247, 1 },	-- Firelord's Gloves
			},
		}),
		i(65212, {	-- Firelord's Robes
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60244, 1 },	-- Firelord's Robes
			},
		}),
		i(65211, {	-- Firelord's Leggings
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60245, 1 },	-- Firelord's Leggings
			},
		}),
	}),
	cl(WARLOCK, {
		i(65260, {	-- Shadowflame Hood
			["cost"] = { { "i", 65001, 1 }, },	-- Crown of the Forlorn Conqueror
		}),
		i(65263, {	-- Shadowflame Mantle
			["cost"] = { { "i", 65088, 1 }, },	-- Shoulders of the Forlorn Conqueror
		}),
		i(65259, {	-- Shadowflame Handwraps
			["cost"] = {
				{ "i", 67429, 1 },	-- Gauntlets of the Forlorn Conqueror
				{ "i", 60248, 1 },	-- Shadowflame Handwraps
			},
		}),
		i(65262, {	-- Shadowflame Robes
			["cost"] = {
				{ "i", 67423, 1 },	-- Chest of the Forlorn Conqueror
				{ "i", 60251, 1 },	-- Shadowflame Robes
			},
		}),
		i(65261, {	-- Shadowflame Leggings
			["cost"] = {
				{ "i", 67428, 1 },	-- Leggings of the Forlorn Conqueror
				{ "i", 60250, 1 },	-- Shadowflame Leggings
			},
		}),
	}),
	cl(DRUID, {
		-- Boomkin
		i(65200, {	-- Stormrider's Cover
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65203, {	-- Stormrider's Shoulderwraps
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65199, {	-- Stormrider's Gloves
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60285, 1 },	-- Stormrider's Gloves
			},
		}),
		i(65202, {	-- Stormrider's Vestment
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60281, 1 },	-- Stormrider's Vestment
			},
		}),
		i(65201, {	-- Stormrider's Leggings
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60283, 1 },	-- Stormrider's Leggings
			},
		}),

		-- Feral
		i(65190, {	-- Stormrider's Headpiece
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65193, {	-- Stormrider's Spaulders
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65189, {	-- Stormrider's Grips
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60290, 1 },	-- Stormrider's Grips
			},
		}),
		i(65192, {	-- Stormrider's Raiment
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60287, 1 },	-- Stormrider's Raiment
			},
		}),
		i(65191, {	-- Stormrider's Legguards
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60288, 1 },	-- Stormrider's Legguards
			},
		}),

		-- Restoration
		i(65195, {	-- Stormrider's Helm
			["cost"] = { { "i", 65002, 1 }, },	-- Crown of the Forlorn Vanquisher
		}),
		i(65198, {	-- Stormrider's Mantle
			["cost"] = { { "i", 65089, 1 }, },	-- Shoulders of the Forlorn Vanquisher
		}),
		i(65194, {	-- Stormrider's Handwraps
			["cost"] = {
				{ "i", 67431, 1 },	-- Gauntlets of the Forlorn Vanquisher
				{ "i", 60280, 1 },	-- Stormrider's Handwraps
			},
		}),
		i(65197, {	-- Stormrider's Robes
			["cost"] = {
				{ "i", 67425, 1 },	-- Chest of the Forlorn Vanquisher
				{ "i", 60276, 1 },	-- Stormrider's Robes
			},
		}),
		i(65196, {	-- Stormrider's Legwraps
			["cost"] = {
				{ "i", 67426, 1 },	-- Leggings of the Forlorn Vanquisher
				{ "i", 60278, 1 },	-- Stormrider's Legwraps
			},
		}),
	}),
};
TIER_ELEVEN_COMMON_GROUPS = {
	i(65001, {	-- Crown of the Forlorn Conqueror
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(65000, {	-- Crown of the Forlorn Protector
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(65002, {	-- Crown of the Forlorn Vanquisher
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(65088, {	-- Shoulders of the Forlorn Conqueror
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(65087, {	-- Shoulders of the Forlorn Protector
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(65089, {	-- Shoulders of the Forlorn Vanquisher
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67429, {	-- Gauntlets of the Forlorn Conqueror
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67430, {	-- Gauntlets of the Forlorn Protector
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67431, {	-- Gauntlets of the Forlorn Vanquisher
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67423, {	-- Chest of the Forlorn Conqueror
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67424, {	-- Chest of the Forlorn Protector
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67425, {	-- Chest of the Forlorn Vanquisher
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67428, {	-- Leggings of the Forlorn Conqueror
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67427, {	-- Leggings of the Forlorn Protector
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(67426, {	-- Leggings of the Forlorn Vanquisher
		["cost"] = { { "i", 66998, 1 }, },	-- Essence of the Forlorn
	}),
	i(57931),	-- Amulet of Dull Dreaming
	i(57924),	-- Apple-Bent Bough
	i(58185),	-- Band of Bees
	i(58188),	-- Band of Secret Names
	i(58182),	-- Bedrock Talisman
	i(57913),	-- Beech Green Belt
	i(57915),	-- Belt of Barred Clouds
	i(57916),	-- Belt of the Dim Forest
	i(57922),	-- Belt of the Falling Rain
	i(57917),	-- Belt of the Still Stream
	i(58152),	-- Blessed Hands of Elune
	i(58481),	-- Boots of the Perilous Seas
	i(58096),	-- Breastplate of Raging Fury
	i(57934),	-- Celadon Pendant
	i(58106),	-- Chestguard of Dancing Waves
	i(58139),	-- Chestguard of Forgetfulness
	i(58101),	-- Chestplate of the Steadfast
	i(58150),	-- Cluster of Stars
	i(58184),	-- Core of Ripeness
	i(58155),	-- Cowl of Pleasant Gloom
	i(58108),	-- Crown of the Blazing Sun
	i(57929),	-- Dawnblaze Blade
	i(58134),	-- Embrace of the Night
	i(58198),	-- Eternal Pathfinders
	i(58484),	-- Fading Violet Sandals
	i(58190),	-- Floating Web
	i(58181),	-- Fluid Death
	i(57914),	-- Girdle of the Mountains
	i(58130),	-- Gleaning Gloves
	i(58110),	-- Gloves of Curious Conscience
	i(58163),	-- Gloves of Purification
	i(58158),	-- Gloves of the Painless Midnight
	i(58125),	-- Gloves of the Passing Night
	i(58192),	-- Gray Hair Cloak
	i(58097),	-- Greaves of Gallantry
	i(58102),	-- Greaves of Splendor
	i(58193),	-- Haunt of Flies
	i(58194),	-- Heavenly Breeze
	i(58098),	-- Helm of Easeful Death
	i(58128),	-- Helm of the Inward Eye
	i(58103),	-- Helm of the Proud
	i(57923),	-- Hermit's Lamp
	i(58122),	-- Hillside Striders
	i(68812),	-- Hornet-Sting Band
	i(57921),	-- Incense-Infused Cummerbund
	i(58160),	-- Leggings of Charity
	i(58140),	-- Leggings of Late Blooms
	i(58127),	-- Leggings of Soothing Silence
	i(58132),	-- Leggings of the Burrowing Mole
	i(58107),	-- Legguards of the Gentle
	i(58180),	-- License to Slay
	i(58161),	-- Mask of New Snow
	i(58133),	-- Mask of Vines
	i(58157),	-- Meadow Mantle
	i(58485),	-- Melodious Slippers
	i(58199),	-- Moccasins of Verdurous Glooms
	i(58159),	-- Musk Rose Robes
	i(58105),	-- Numbing Handguards
	i(58109),	-- Pauldrons of the Forlorn
	i(58100),	-- Pauldrons of the High Requiem
	i(57930),	-- Pendant of Quiet Breath
	i(58154),	-- Pensive Legwraps
	i(58099),	-- Reaping Gauntlets
	i(58187),	-- Ring of the Battle Anthem
	-- #if BEFORE MOP
	i(64674, {	-- Relic of Aggramar
		["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
	}),
	i(64673, {	-- Relic of Eonar
		["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
	}),
	i(64671, {	-- Relic of Golganneth
		["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
	}),
	i(64676, {	-- Relic of Khaz'goroth
		["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
	}),
	i(64672, {	-- Relic of Norgannon
		["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
	}),
	-- #endif
	i(58153),	-- Robes of Embalmed Darkness
	i(58197),	-- Rock Furrow Boots
	i(57918),	-- Sash of Musing
	i(58129),	-- Seafoam Mantle
	i(57926),	-- Shield of the Four Grey Towers
	i(57925),	-- Shield of the Mists
	i(58486),	-- Slippers of Moving Waters
	i(58151),	-- Somber Shawl
	i(58183),	-- Soul Casket
	i(58138),	-- Sticky Fingers
	i(57933),	-- String of Beaded Bubbles
	i(58162),	-- Summer Song Shoulderwraps
	i(58104),	-- Sunburnt Pauldrons
	i(57919),	-- Thatch Eave Vines
	i(57932),	-- The Lustrous Eye
	i(57927),	-- Throat Slasher
	i(58482),	-- Treads of Fleeting Joy
	i(58131),	-- Tunic of Sinking Envy
	i(58189),	-- Twined Band of Flowers
	i(58121),	-- Vest of the True Companion
	i(58126),	-- Vest of the Waking Dream
	i(58191),	-- Viewless Wings
	i(58123),	-- Willow Mask
	i(57928),	-- Windslicer
	i(58195),	-- Woe Breeder's Boots
	i(58124),	-- Wrap of the Valley Glades
};
TIER_ELEVEN_GROUPS = applyclassicphase(CATA_PHASE_ONE,
	appendGroups(TIER_ELEVEN_COMMON_GROUPS,
	appendGroups(TIER_ELEVEN_HEROIC_GROUPS,
	appendGroups(TIER_ELEVEN_NORMAL_GROUPS, {
}))));
-- #IF AFTER 6.0.2
SYMLINKS.TIER_ELEVEN = {
	CONQ = {
		HEAD = {{"select","itemID",
			60346,	-- Reinforced Sapphirium Helmet
			60359,	-- Reinforced Sapphirium Headguard
			60356,	-- Reinforced Sapphirium Faceguard
			60256,	-- Mercurial Hood
			60258,	-- Mercurial Cowl
			60249,	-- Shadowflame Hood
		}},
		SHOULDER = {{"select","itemID",
			60348,	-- Reinforced Sapphirium Pauldrons
			60362,	-- Reinforced Sapphirium Mantle
			60358,	-- Reinforced Sapphirium Shoulderguards
			60253,	-- Mercurial Shoulderwraps
			60262,	-- Mercurial Mantle
			60252,	-- Shadowflame Mantle
		}},
	},
	VANQ = {
		HEAD = {{"select","itemID",
			60341,	-- Magma Plated Helmet
			60351,	-- Magma Plated Faceguard
			60282,	-- Stormrider's Cover
			60286,	-- Stormrider's Headpiece
			60277,	-- Stormrider's Helm
			60243,	-- Firelord's Hood
			60299,	-- Wind Dancer's Helmet
		}},
		SHOULDER = {{"select","itemID",
			60343,	-- Magma Plated Pauldrons
			60353,	-- Magma Plated Shoulderguards
			60284,	-- Stormrider's Shoulderwraps
			60289,	-- Stormrider's Spaulders
			60279,	-- Stormrider's Mantle
			60246,	-- Firelord's Mantle
			60302,	-- Wind Dancer's Spaulders
		}},
	},
	PROT = {
		HEAD = {{"select","itemID",
			60303,	-- Lightning-Charged Headguard
			60320,	-- Helmet of the Raging Elements
			60315,	-- Headpiece of the Raging Elements
			60308,	-- Faceguard of the Raging Elements
			60325,	-- Earthen Helmet
			60328,	-- Earthen Faceguard
		}},
		SHOULDER = {{"select","itemID",
			60306,	-- Lightning-Charged Spaulders
			60322,	-- Spaulders of the Raging Elements
			60317,	-- Shoulderwraps of the Raging Elements
			60311,	-- Mantle of the Raging Elements
			60327,	-- Earthen Pauldrons
			60331,	-- Earthen Shoulderguards
		}},
	}
}
-- #ELSE
SYMLINKS.TIER_ELEVEN = {
	CONQ = {
		HEAD = IGNORED_VALUE,
		SHOULDER = IGNORED_VALUE,
	},
	VANQ = {
		HEAD = IGNORED_VALUE,
		SHOULDER = IGNORED_VALUE,
	},
	PROT = {
		HEAD = IGNORED_VALUE,
		SHOULDER = IGNORED_VALUE,
	}
}
-- #ENDIF
