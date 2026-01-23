---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local CatalystableItem = setmetatable({}, { __index = function(t,key)
	return { bonusID = 8822 }	-- bonusID signifies catalystID 3 when checked via ItemConversionDB
end})
local function i_PrimalistToken1007(itemID, t)
	local token = i(itemID, t)
	token.timeline = { ADDED_10_0_7, REMOVED_12_0_0 }
	return token
end
local function i_PrimalistToken1200(itemID, t)
	local token = i(itemID, t)
	token.timeline = { ADDED_12_0_0 }
	return token
end
root(ROOTS.Zones, m(DRAGON_ISLES, {
	m(THE_FORBIDDEN_REACH, {
		n(ZONE_REWARDS, {
			["timeline"] = { ADDED_10_0_7 },
			["groups"] = {
				currency(2118),	-- Elemental Overflow
				i(204276),	-- Untapped Forbidden Knowledge
				i(202196, {	-- Zskera Vault Key
					["cost"] = { {"c", DRAGON_SUPPLIES, 50} },
					["crs"] = {
						-- Vendors also
						200566,	-- Cataloger Daela
						200563,	-- Kraxxus
						200564,	-- Storykeeper Ashekh
						200562,	-- Turik
					},
				}),
				n(BACK, {
					i_PrimalistToken1007(203646, {	-- Primalist Cloak
						iupgrade(199450, 14, 9344, CatalystableItem.Item),	-- Cape of Raging Tempests
						iupgrade(199451, 14, 9344, CatalystableItem.Item),	-- Cloak of Raging Tempests
						iupgrade(199452, 14, 9344, CatalystableItem.Item),	-- Shroud of Raging Tempests
						iupgrade(199449, 14, 9344, CatalystableItem.Item),	-- Wrap of Raging Tempests
					}),
					i_PrimalistToken1200(263867, {	-- Primalist Cloak
						["sym"] = {{"select","itemID",
							199450,	-- Cape of Raging Tempests
							199451,	-- Cloak of Raging Tempests
							199452,	-- Shroud of Raging Tempests
							199449,	-- Wrap of Raging Tempests
						},{"modID",185}},
					}),
				}),
				filter(CLOTH, {
					i_PrimalistToken1007(203635, {	-- Primalist Cloth Belt
						iupgrade(199422, 14, 9344, CatalystableItem.Item),	-- Cord of Raging Tempests
					}),
					i_PrimalistToken1200(263733, {	-- Primalist Cloth Belt
						["sym"] = {{"select","itemID",199422},{"modID",185}},
					}),
					i_PrimalistToken1007(203641, {	-- Primalist Cloth Boots
						iupgrade(199418, 14, 9344, CatalystableItem.Item),	-- Boots of Raging Tempests
					}),
					i_PrimalistToken1200(263862, {	-- Primalist Cloth Boots
						["sym"] = {{"select","itemID",199418},{"modID",185}},
					}),
					i_PrimalistToken1007(203632, {	-- Primalist Cloth Bracers
						iupgrade(199423, 14, 9344, CatalystableItem.Item),	-- Cuffs of Raging Tempests
					}),
					i_PrimalistToken1200(263730, {	-- Primalist Cloth Bracers
						["sym"] = {{"select","itemID",199423},{"modID",185}},
					}),
					i_PrimalistToken1007(203616, {	-- Primalist Cloth Chestpiece
						iupgrade(199417, 14, 9344, CatalystableItem.Item),	-- Vestment of Raging Tempests
					}),
					i_PrimalistToken1200(263716, {	-- Primalist Cloth Chestpiece
						["sym"] = {{"select","itemID",199417},{"modID",185}},
					}),
					i_PrimalistToken1007(203642, {	-- Primalist Cloth Gloves
						iupgrade(199419, 14, 9344, CatalystableItem.Item),	-- Gloves of Raging Tempests
					}),
					i_PrimalistToken1200(263863, {	-- Primalist Cloth Gloves
						["sym"] = {{"select","itemID",199419},{"modID",185}},
					}),
					i_PrimalistToken1007(203612, {	-- Primalist Cloth Helm
						iupgrade(199420, 14, 9344, CatalystableItem.Item),	-- Hood of Raging Tempests
					}),
					i_PrimalistToken1200(263711, {	-- Primalist Cloth Helm
						["sym"] = {{"select","itemID",199420},{"modID",185}},
					}),
					i_PrimalistToken1007(203622, {	-- Primalist Cloth Leggings
						iupgrade(199421, 14, 9344, CatalystableItem.Item),	-- Leggings of Raging Tempests
					}),
					i_PrimalistToken1200(263721, {	-- Primalist Cloth Leggings
						["sym"] = {{"select","itemID",199421},{"modID",185}},
					}),
					i_PrimalistToken1007(203627, {	-- Primalist Cloth Spaulders
						iupgrade(199424, 14, 9344, CatalystableItem.Item),	-- Shoulderpads of Raging Tempests
					}),
					i_PrimalistToken1200(263725, {	-- Primalist Cloth Spaulders
						["sym"] = {{"select","itemID",199424},{"modID",185}},
					}),
				}),
				filter(LEATHER, {
					i_PrimalistToken1007(203637, {	-- Primalist Leather Belt
						iupgrade(199429, 14, 9344, CatalystableItem.Item),	-- Sash of Raging Tempests
					}),
					i_PrimalistToken1200(263776, {	-- Primalist Leather Belt
						["sym"] = {{"select","itemID",199429},{"modID",185}},
					}),
					i_PrimalistToken1007(203638, {	-- Primalist Leather Boots
						iupgrade(199425, 14, 9344, CatalystableItem.Item),	-- Waders of Raging Tempests
					}),
					i_PrimalistToken1200(263822, {	-- Primalist Leather Boots
						["sym"] = {{"select","itemID",199425},{"modID",185}},
					}),
					i_PrimalistToken1007(203630, {	-- Primalist Leather Bracers
						iupgrade(199430, 14, 9344, CatalystableItem.Item),	-- Bindings of Raging Tempests
					}),
					i_PrimalistToken1200(263728, {	-- Primalist Leather Bracers
						["sym"] = {{"select","itemID",199430},{"modID",185}},
					}),
					i_PrimalistToken1007(203618, {	-- Primalist Leather Chestpiece
						iupgrade(199431, 14, 9344, CatalystableItem.Item),	-- Vest of Raging Tempests
					}),
					i_PrimalistToken1200(263718, {	-- Primalist Leather Chestpiece
						["sym"] = {{"select","itemID",199431},{"modID",185}},
					}),
					i_PrimalistToken1007(203645, {	-- Primalist Leather Gloves
						iupgrade(199426, 14, 9344, CatalystableItem.Item),	-- Handguards of Raging Tempests
					}),
					i_PrimalistToken1200(263866, {	-- Primalist Leather Gloves
						["sym"] = {{"select","itemID",199426},{"modID",185}},
					}),
					i_PrimalistToken1007(203614, {	-- Primalist Leather Helm
						iupgrade(199427, 14, 9344, CatalystableItem.Item),	-- Cowl of Raging Tempests
					}),
					i_PrimalistToken1200(263713, {	-- Primalist Leather Helm
						["sym"] = {{"select","itemID",199427},{"modID",185}},
					}),
					i_PrimalistToken1007(203619, {	-- Primalist Leather Leggings
						iupgrade(199428, 14, 9344, CatalystableItem.Item),	-- Breeches of Raging Tempests
					}),
					i_PrimalistToken1200(263719, {	-- Primalist Leather Leggings
						["sym"] = {{"select","itemID",199428},{"modID",185}},
					}),
					i_PrimalistToken1007(203629, {	-- Primalist Leather Spaulders
						iupgrade(199432, 14, 9344, CatalystableItem.Item),	-- Epaulets of Raging Tempests
					}),
					i_PrimalistToken1200(263727, {	-- Primalist Leather Spaulders
						["sym"] = {{"select","itemID",199432},{"modID",185}},
					}),
				}),
				filter(MAIL, {
					i_PrimalistToken1007(203636, {	-- Primalist Mail Belt
						iupgrade(199447, 14, 9344, CatalystableItem.Item),	-- Cinch of Raging Tempests
					}),
					i_PrimalistToken1200(263740, {	-- Primalist Mail Belt
						["sym"] = {{"select","itemID",199447},{"modID",185}},
					}),
					i_PrimalistToken1007(203639, {	-- Primalist Mail Boots
						iupgrade(199442, 14, 9344, CatalystableItem.Item),	-- Striders of Raging Tempests
					}),
					i_PrimalistToken1200(263859, {	-- Primalist Mail Boots
						["sym"] = {{"select","itemID",199442},{"modID",185}},
					}),
					i_PrimalistToken1007(203631, {	-- Primalist Mail Bracers
						iupgrade(199448, 14, 9344, CatalystableItem.Item),	-- Bracers of Raging Tempests
					}),
					i_PrimalistToken1200(263729, {	-- Primalist Mail Bracers
						["sym"] = {{"select","itemID",199448},{"modID",185}},
					}),
					i_PrimalistToken1007(203617, {	-- Primalist Mail Chestpiece
						iupgrade(199441, 14, 9344, CatalystableItem.Item),	-- Chestguard of Raging Tempests
					}),
					i_PrimalistToken1200(263717, {	-- Primalist Mail Chestpiece
						["sym"] = {{"select","itemID",199441},{"modID",185}},
					}),
					i_PrimalistToken1007(203644, {	-- Primalist Mail Gloves
						iupgrade(199443, 14, 9344, CatalystableItem.Item),	-- Grips of Raging Tempests
					}),
					i_PrimalistToken1200(263865, {	-- Primalist Mail Gloves
						["sym"] = {{"select","itemID",199443},{"modID",185}},
					}),
					i_PrimalistToken1007(203613, {	-- Primalist Mail Helm
						iupgrade(199444, 14, 9344, CatalystableItem.Item),	-- Coif of Raging Tempests
					}),
					i_PrimalistToken1200(263712, {	-- Primalist Mail Helm
						["sym"] = {{"select","itemID",199444},{"modID",185}},
					}),
					i_PrimalistToken1007(203620, {	-- Primalist Mail Leggings
						iupgrade(199445, 14, 9344, CatalystableItem.Item),	-- Greaves of Raging Tempests
					}),
					i_PrimalistToken1200(263720, {	-- Primalist Mail Leggings
						["sym"] = {{"select","itemID",199445},{"modID",185}},
					}),
					i_PrimalistToken1007(203628, {	-- Primalist Mail Spaulders
						iupgrade(199446, 14, 9344, CatalystableItem.Item),	-- Shoulderguards of Raging Tempests
					}),
					i_PrimalistToken1200(263726, {	-- Primalist Mail Spaulders
						["sym"] = {{"select","itemID",199446},{"modID",185}},
					}),
				}),
				filter(PLATE, {
					i_PrimalistToken1007(203634, {	-- Primalist Plate Belt
						iupgrade(199439, 14, 9344, CatalystableItem.Item),	-- Girdle of Raging Tempests
					}),
					i_PrimalistToken1200(263732, {	-- Primalist Plate Belt
						["sym"] = {{"select","itemID",199439},{"modID",185}},
					}),
					i_PrimalistToken1007(203640, {	-- Primalist Plate Boots
						iupgrade(199435, 14, 9344, CatalystableItem.Item),	-- Sabatons of Raging Tempests
					}),
					i_PrimalistToken1200(263861, {	-- Primalist Plate Boots
						["sym"] = {{"select","itemID",199435},{"modID",185}},
					}),
					i_PrimalistToken1007(203633, {	-- Primalist Plate Bracers
						iupgrade(199440, 14, 9344, CatalystableItem.Item),	-- Armplates of Raging Tempests
					}),
					i_PrimalistToken1200(263731, {	-- Primalist Plate Bracers
						["sym"] = {{"select","itemID",199440},{"modID",185}},
					}),
					i_PrimalistToken1007(203615, {	-- Primalist Plate Chestpiece
						iupgrade(199434, 14, 9344, CatalystableItem.Item),	-- Breastplate of Raging Tempests
					}),
					i_PrimalistToken1200(263715, {	-- Primalist Plate Chestpiece
						["sym"] = {{"select","itemID",199434},{"modID",185}},
					}),
					i_PrimalistToken1007(203643, {	-- Primalist Plate Gloves
						iupgrade(199436, 14, 9344, CatalystableItem.Item),	-- Gauntlets of Raging Tempests
					}),
					i_PrimalistToken1200(263864, {	-- Primalist Plate Gloves
						["sym"] = {{"select","itemID",199436},{"modID",185}},
					}),
					i_PrimalistToken1007(203611, {	-- Primalist Plate Helm
						iupgrade(199433, 14, 9344, CatalystableItem.Item),	-- Helm of Raging Tempests
					}),
					i_PrimalistToken1200(263710, {	-- Primalist Plate Helm
						["sym"] = {{"select","itemID",199433},{"modID",185}},
					}),
					i_PrimalistToken1007(203623, {	-- Primalist Plate Leggings
						iupgrade(199437, 14, 9344, CatalystableItem.Item),	-- Legguards of Raging Tempests
					}),
					i_PrimalistToken1200(263722, {	-- Primalist Plate Leggings
						["sym"] = {{"select","itemID",199437},{"modID",185}},
					}),
					i_PrimalistToken1007(203626, {	-- Primalist Plate Spaulders
						iupgrade(199438, 14, 9344, CatalystableItem.Item),	-- Mantle of Raging Tempests
					}),
					i_PrimalistToken1200(263724, {	-- Primalist Plate Spaulders
						["sym"] = {{"select","itemID",199438},{"modID",185}},
					}),
				}),
				n(WEAPONS, {
					i_PrimalistToken1007(203650, {	-- Primalist Weapon
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
					i_PrimalistToken1200(257603, {	-- Primalist Weapon
						["sym"] = {{"select","itemID",
							199314,	-- Broadsword of Raging Tempests
							199319,	-- Bulwark of Raging Tempests
							199304,	-- Cleaver of Raging Tempests
							199324,	-- Crusher of Raging Tempests
							199318,	-- Cudgel of Raging Tempests
							199309,	-- Dagger of Raging Tempests
							199308,	-- Glaive of Raging Tempests
							199315,	-- Greatsword of Raging Tempests
							199306,	-- Hacker of Raging Tempests
							199305,	-- Hatchet of Raging Tempests
							199307,	-- Heartseeker of Raging Tempests
							199311,	-- Horn of Raging Tempests
							199320,	-- Impaler of Raging Tempests
							199321,	-- Javelin of Raging Tempests
							199325,	-- Mace of Raging Tempests
							199323,	-- Mallet of Raging Tempests
							199317,	-- Maul of Raging Tempests
							199313,	-- Pole of Raging Tempests
							199322,	-- Rod of Raging Tempests
							199316,	-- Scepter of Raging Tempests
							199310,	-- Shiv of Raging Tempests
							199312,	-- Staff of Raging Tempests
						},{"modID",185}},
					}),
				}),
				filter(NECK_F, {
					i_PrimalistToken1007(203648, {	-- Primalist Necklace
						["sym"] = {{"select","itemID",
							201962,	-- Heat of Primal Winter
						}},
					}),
					i_PrimalistToken1200(263869, {	-- Primalist Necklace
						["sym"] = {{"select","itemID",
							201962,	-- Heat of Primal Winter
						},{"modID",185}},
					}),
				}),
				filter(FINGER_F, {
					i_PrimalistToken1007(203647, {	-- Primalist Ring
						["sym"] = {{"select","itemID",
							201960,	-- Chronologically Unstable Loop
						}},
					}),
					i_PrimalistToken1200(263868, {	-- Primalist Ring
						["sym"] = {{"select","itemID",
							201960,	-- Chronologically Unstable Loop
						},{"modID",185}},
					}),
				}),
				filter(TRINKET_F, {
					i_PrimalistToken1007(203649, {	-- Primalist Trinket
						["sym"] = {{"select","itemID",
							202015,	-- Sands of Temporal Perfection
						}},
					}),
					i_PrimalistToken1200(263714, {	-- Primalist Trinket
						["sym"] = {{"select","itemID",
							202015,	-- Sands of Temporal Perfection
						},{"modID",185}},
					}),
				}),
			},
		}),
	}),
}))
