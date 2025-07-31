---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local CatalystableItem = setmetatable({}, { __index = function(t,key)
	return { bonusID = 8822 }	-- bonusID signifies catalystID 3 when checked via ItemConversionDB
end})
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(THE_FORBIDDEN_REACH, {
		n(ZONE_REWARDS, {
			currency(2118),	-- Elemental Overflow
			i(204276),	-- Untapped Forbidden Knowledge
			i(202196, {	-- Zskera Vault Key
				["cost"] = {{"c",DRAGON_SUPPLIES,50}},
				["crs"] = {
					-- Vendors also
					200566,	-- Cataloger Daela
					200563,	-- Kraxxus
					200564,	-- Storykeeper Ashekh
					200562,	-- Turik
				},
			}),
			n(BACK, {
				i(203646, {	-- Primalist Cloak
					iupgrade(199450, 14, 9344, CatalystableItem.Item),	-- Cape of Raging Tempests
					iupgrade(199451, 14, 9344, CatalystableItem.Item),	-- Cloak of Raging Tempests
					iupgrade(199452, 14, 9344, CatalystableItem.Item),	-- Shroud of Raging Tempests
					iupgrade(199449, 14, 9344, CatalystableItem.Item),	-- Wrap of Raging Tempests
				}),
			}),
			filter(CLOTH, {
				i(203635, {	-- Primalist Cloth Belt
					iupgrade(199422, 14, 9344, CatalystableItem.Item),	-- Cord of Raging Tempests
				}),
				i(203641, {	-- Primalist Cloth Boots
					iupgrade(199418, 14, 9344, CatalystableItem.Item),	-- Boots of Raging Tempests
				}),
				i(203632, {	-- Primalist Cloth Bracers
					iupgrade(199423, 14, 9344, CatalystableItem.Item),	-- Cuffs of Raging Tempests
				}),
				i(203616, {	-- Primalist Cloth Chestpiece
					iupgrade(199417, 14, 9344, CatalystableItem.Item),	-- Vestment of Raging Tempests
				}),
				i(203642, {	-- Primalist Cloth Gloves
					iupgrade(199419, 14, 9344, CatalystableItem.Item),	-- Gloves of Raging Tempests
				}),
				i(203612, {	-- Primalist Cloth Helm
					iupgrade(199420, 14, 9344, CatalystableItem.Item),	-- Hood of Raging Tempests
				}),
				i(203622, {	-- Primalist Cloth Leggings
					iupgrade(199421, 14, 9344, CatalystableItem.Item),	-- Leggings of Raging Tempests
				}),
				i(203627, {	-- Primalist Cloth Spaulders
					iupgrade(199424, 14, 9344, CatalystableItem.Item),	-- Shoulderpads of Raging Tempests
				}),
			}),
			filter(LEATHER, {
				i(203637, {	-- Primalist Leather Belt
					iupgrade(199429, 14, 9344, CatalystableItem.Item),	-- Sash of Raging Tempests
				}),
				i(203638, {	-- Primalist Leather Boots
					iupgrade(199425, 14, 9344, CatalystableItem.Item),	-- Waders of Raging Tempests
				}),
				i(203630, {	-- Primalist Leather Bracers
					iupgrade(199430, 14, 9344, CatalystableItem.Item),	-- Bindings of Raging Tempests
				}),
				i(203618, {	-- Primalist Leather Chestpiece
					iupgrade(199431, 14, 9344, CatalystableItem.Item),	-- Vest of Raging Tempests
				}),
				i(203645, {	-- Primalist Leather Gloves
					iupgrade(199426, 14, 9344, CatalystableItem.Item),	-- Handguards of Raging Tempests
				}),
				i(203614, {	-- Primalist Leather Helm
					iupgrade(199427, 14, 9344, CatalystableItem.Item),	-- Cowl of Raging Tempests
				}),
				i(203619, {	-- Primalist Leather Leggings
					iupgrade(199428, 14, 9344, CatalystableItem.Item),	-- Breeches of Raging Tempests
				}),
				i(203629, {	-- Primalist Leather Spaulders
					iupgrade(199432, 14, 9344, CatalystableItem.Item),	-- Epaulets of Raging Tempests
				}),
			}),
			filter(MAIL, {
				i(203636, {	-- Primalist Mail Belt
					iupgrade(199447, 14, 9344, CatalystableItem.Item),	-- Cinch of Raging Tempests
				}),
				i(203639, {	-- Primalist Mail Boots
					iupgrade(199442, 14, 9344, CatalystableItem.Item),	-- Striders of Raging Tempests
				}),
				i(203631, {	-- Primalist Mail Bracers
					iupgrade(199448, 14, 9344, CatalystableItem.Item),	-- Bracers of Raging Tempests
				}),
				i(203617, {	-- Primalist Mail Chestpiece
					iupgrade(199441, 14, 9344, CatalystableItem.Item),	-- Chestguard of Raging Tempests
				}),
				i(203644, {	-- Primalist Mail Gloves
					iupgrade(199443, 14, 9344, CatalystableItem.Item),	-- Grips of Raging Tempests
				}),
				i(203613, {	-- Primalist Mail Helm
					iupgrade(199444, 14, 9344, CatalystableItem.Item),	-- Coif of Raging Tempests
				}),
				i(203620, {	-- Primalist Mail Leggings
					iupgrade(199445, 14, 9344, CatalystableItem.Item),	-- Greaves of Raging Tempests
				}),
				i(203628, {	-- Primalist Mail Spaulders
					iupgrade(199446, 14, 9344, CatalystableItem.Item),	-- Shoulderguards of Raging Tempests
				}),
			}),
			filter(PLATE, {
				i(203634, {	-- Primalist Plate Belt
					iupgrade(199439, 14, 9344, CatalystableItem.Item),	-- Girdle of Raging Tempests
				}),
				i(203640, {	-- Primalist Plate Boots
					iupgrade(199435, 14, 9344, CatalystableItem.Item),	-- Sabatons of Raging Tempests
				}),
				i(203633, {	-- Primalist Plate Bracers
					iupgrade(199440, 14, 9344, CatalystableItem.Item),	-- Armplates of Raging Tempests
				}),
				i(203615, {	-- Primalist Plate Chestpiece
					iupgrade(199434, 14, 9344, CatalystableItem.Item),	-- Breastplate of Raging Tempests
				}),
				i(203643, {	-- Primalist Plate Gloves
					iupgrade(199436, 14, 9344, CatalystableItem.Item),	-- Gauntlets of Raging Tempests
				}),
				i(203611, {	-- Primalist Plate Helm
					iupgrade(199433, 14, 9344, CatalystableItem.Item),	-- Helm of Raging Tempests
				}),
				i(203623, {	-- Primalist Plate Leggings
					iupgrade(199437, 14, 9344, CatalystableItem.Item),	-- Legguards of Raging Tempests
				}),
				i(203626, {	-- Primalist Plate Spaulders
					iupgrade(199438, 14, 9344, CatalystableItem.Item),	-- Mantle of Raging Tempests
				}),
			}),
			n(WEAPONS, {
				i(203650, {	-- Primalist Weapon
					iupgrade(199314, 14, 9344),	-- Broadsword of Raging Tempests
					iupgrade(199319, 14, 9344),	-- Bulwark of Raging Tempests
					iupgrade(199304, 14, 9344),	-- Cleaver of Raging Tempests
					iupgrade(199324, 14, 9344),	-- Crusher of Raging Tempests
					iupgrade(199318, 14, 9344),	-- Cudgel of Raging Tempests
					iupgrade(199309, 14, 9344),	-- Dagger of Raging Tempests
					iupgrade(199308, 14, 9344),	-- Glaive of Raging Tempests
					iupgrade(199315, 14, 9344),	-- Greatsword of Raging Tempests
					iupgrade(199306, 14, 9344),	-- Hacker of Raging Tempests
					iupgrade(199305, 14, 9344),	-- Hatchet of Raging Tempests
					iupgrade(199307, 14, 9344),	-- Heartseeker of Raging Tempests
					iupgrade(199311, 14, 9344),	-- Horn of Raging Tempests
					iupgrade(199320, 14, 9344),	-- Impaler of Raging Tempests
					iupgrade(199321, 14, 9344),	-- Javelin of Raging Tempests
					iupgrade(199325, 14, 9344),	-- Mace of Raging Tempests
					iupgrade(199323, 14, 9344),	-- Mallet of Raging Tempests
					iupgrade(199317, 14, 9344),	-- Maul of Raging Tempests
					iupgrade(199313, 14, 9344),	-- Pole of Raging Tempests
					iupgrade(199322, 14, 9344),	-- Rod of Raging Tempests
					iupgrade(199316, 14, 9344),	-- Scepter of Raging Tempests
					iupgrade(199310, 14, 9344),	-- Shiv of Raging Tempests
					iupgrade(199312, 14, 9344),	-- Staff of Raging Tempests
				}),
			}),
			filter(NECK_F, {
				i(203648, {	-- Primalist Necklace
					["sym"] = {{"select","itemID",
						201962,	-- Heat of Primal Winter
					}},
				}),
			}),
			filter(FINGER_F, {
				i(203647, {	-- Primalist Ring
					["sym"] = {{"select","itemID",
						201960,	-- Chronologically Unstable Loop
					}},
				}),
			}),
			filter(TRINKET_F, {
				i(203649, {	-- Primalist Trinket
					["sym"] = {{"select","itemID",
						202015,	-- Sands of Temporal Perfection
					}},
				})
			}),
		}),
	}),
})));
