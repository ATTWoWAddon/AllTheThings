-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
local function MarkOfWHOOOWHATNow(t)
	-- #if BEFORE 7.0.3.22248
	-- Programmatically remove all references to Mark of Honor.
	if t.cost then
		local totalCosts = #t.cost;
		for i=totalCosts,1,-1 do
			if t.cost[i][2] == 137642 then
				-- Mark of Honor, remove it!
				table.remove(t.cost, i);
				totalCosts = totalCosts - 1;
			end
		end
		if totalCosts == 0 then
			t.cost = nil;
		end
	end
	-- #endif
	-- #if NOT ANYCLASSIC
	if t.itemID then elitepvp(t); end
	-- #endif
	return t;
end
root(ROOTS.PVP, run(MarkOfWHOOOWHATNow, pvp(expansion(EXPANSION.CLASSIC, {
	["description"] = "In order to collect these, you need to have the original title associated with the gear.",
	["groups"] = {
		n(HONOR_TITLES, bubbleDownSelf({ ["timeline"] = { ADDED_1_11_1, REMOVED_2_0_1 }}, {
			pvprank(1),		-- Private / Scout
			pvprank(2),		-- Corporal / Grunt
			pvprank(3),		-- Sergeant / Sergeant
			pvprank(4),		-- Master Sergeant / Senior Sergeant
			pvprank(5),		-- Sergeant Major / First Sergeant
			pvprank(6),		-- Knight / Stone Guard
			pvprank(7),		-- Knight-Lieutenant / Blood Guard
			pvprank(8),		-- Knight-Captain / Legionnaire
			pvprank(9),		-- Knight-Champion / Centurion
			pvprank(10),	-- Lieutenant Commander / Champion
			pvprank(11),	-- Commander / Lieutenant General
			pvprank(12),	-- Marshal / General
			pvprank(13),	-- Field Marshal / Warlord
			pvprank(14),	-- Grand Marshal / High Warlord
		})),
		n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({
			["timeline"] = {
				ADDED_1_11_1,
				-- #if NOT ANYCLASSIC
				REMOVED_2_0_1,
				-- #endif
			}
		}, {
			["races"] = ALLIANCE_ONLY,
			["groups"] = sharedData({
				-- #if AFTER 2.0.1
				["description"] = "This item can be purchased, but without the original PvP title, it cannot be used for transmogrification and may not grant collection credit.",
				-- #endif
			}, {
				-- Original Classic Gear, only collectable with the original title.
				n(WEAPONS, {
					i(18825, {	-- Grand Marshal's Aegis
						["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
					}),
					i(18867, {	-- Grand Marshal's Battle Hammer
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18833, {	-- Grand Marshal's Bullseye
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18876, {	-- Grand Marshal's Claymore
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23455, {	-- Grand Marshal's Demolisher
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18838, {	-- Grand Marshal's Dirk
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18869, {	-- Grand Marshal's Glaive
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18855, {	-- Grand Marshal's Hand Cannon
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18827, {	-- Grand Marshal's Handaxe
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(12584, {	-- Grand Marshal's Longsword
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23451, {	-- Grand Marshal's Mageblade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18865, {	-- Grand Marshal's Punisher
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18847, {	-- Grand Marshal's Razor Hand Blade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18836, {	-- Grand Marshal's Repeater
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18843, {	-- Grand Marshal's Right Hand Blade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18873, {	-- Grand Marshal's Stave
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18830, {	-- Grand Marshal's Sunderer
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23456, {	-- Grand Marshal's Swiftblade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23452, {	-- Grand Marshal's Tome of Power
						["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
					}),
					i(23453, {	-- Grand Marshal's Tome of Restoration
						["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
					}),
					i(23454, {	-- Grand Marshal's Warhammer
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
				}),
				i(16465, {	-- Field Marshal's Chain Helm
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(17578, {	-- Field Marshal's Coronal
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16441, {	-- Field Marshal's Coronet
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16451, {	-- Field Marshal's Dragonhide Helmet
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(17602, {	-- Field Marshal's Headdress
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16474, {	-- Field Marshal's Lamellar Faceguard
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16455, {	-- Field Marshal's Leather Mask
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(29610, {	-- Field Marshal's Mail Helm
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16478, {	-- Field Marshal's Plate Helm
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23306, {	-- Lieutenant Commander's Chain Helm
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23308, {	-- Lieutenant Commander's Dragonhide Headguard
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23310, {	-- Lieutenant Commander's Dreadweave Cowl
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23276, {	-- Lieutenant Commander's Lamellar Headguard
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23312, {	-- Lieutenant Commander's Leather Helm
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(29598, {	-- Lieutenant Commander's Mail Headguard
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23314, {	-- Lieutenant Commander's Plate Helmet
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23316, {	-- Lieutenant Commander's Satin Hood
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23318, {	-- Lieutenant Commander's Silk Cowl
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				-- Shoulders
				i(16468, {	-- Field Marshal's Chain Spaulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16449, {	-- Field Marshal's Dragonhide Spaulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(17580, {	-- Field Marshal's Dreadweave Shoulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16476, {	-- Field Marshal's Lamellar Pauldrons
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16457, {	-- Field Marshal's Leather Epaulets
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(29611, {	-- Field Marshal's Mail Spaulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16480, {	-- Field Marshal's Plate Shoulderguards
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(17604, {	-- Field Marshal's Satin Mantle
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16444, {	-- Field Marshal's Silk Spaulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23307, {	-- Lieutenant Commander's Chain Shoulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23309, {	-- Lieutenant Commander's Dragonhide Shoulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23311, {	-- Lieutenant Commander's Dreadweave Spaulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23277, {	-- Lieutenant Commander's Lamellar Shoulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23313, {	-- Lieutenant Commander's Leather Shoulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(29599, {	-- Lieutenant Commander's Mail Pauldrons
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23315, {	-- Lieutenant Commander's Plate Shoulders
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23317, {	-- Lieutenant Commander's Satin Mantle
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23319, {	-- Lieutenant Commander's Silk Mantle
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				-- Back
				i(16342, {	-- Sergeant's Cape
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
					["races"] = ALLIANCE_ONLY,
				}),
				i(18440, {	-- Sergeant's Cape
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
					["races"] = ALLIANCE_ONLY,
				}),
				i(18441, {	-- Sergeant's Cape
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
					["races"] = ALLIANCE_ONLY,
				}),
				-- Chest
				i(16466, {	-- Field Marshal's Chain Breastplate
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16452, {	-- Field Marshal's Dragonhide Breastplate
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(17581, {	-- Field Marshal's Dreadweave Robe
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16473, {	-- Field Marshal's Lamellar Chestplate
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16453, {	-- Field Marshal's Leather Chestpiece
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(29609, {	-- Field Marshal's Mail Armor
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16477, {	-- Field Marshal's Plate Armor
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16443, {	-- Field Marshal's Silk Vestments
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(17605, {	-- Field Marshal's Satin Vestments
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23292, {	-- Knight-Captain's Chain Hauberk
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23294, {	-- Knight-Captain's Dragonhide Chestpiece
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23297, {	-- Knight-Captain's Dreadweave Tunic
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23272, {	-- Knight-Captain's Lamellar Breastplate
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23298, {	-- Knight-Captain's Leather Chestpiece
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(29596, {	-- Knight-Captain's Mail Hauberk
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23300, {	-- Knight-Captain's Plate Hauberk
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23303, {	-- Knight-Captain's Satin Tunic
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23305, {	-- Knight-Captain's Silk Tunic
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				-- Wrist
				i(18448, {	-- Sergeant Major's Chain Armguards
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18449, {	-- Sergeant Major's Chain Armguards
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18454, {	-- Sergeant Major's Dragonhide Armsplints
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18455, {	-- Sergeant Major's Dragonhide Armsplints
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18452, {	-- Sergeant Major's Leather Armsplints
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18453, {	-- Sergeant Major's Leather Armsplints
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18445, {	-- Sergeant Major's Plate Wristguards
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18447, {	-- Sergeant Major's Plate Wristguards
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18456, {	-- Sergeant Major's Silk Cuffs
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				i(18457, {	-- Sergeant Major's Silk Cuffs
					["cost"] = { { "i", 137642, 1 }, },	-- 1x Mark of Honor
				}),
				-- Hands
				i(23279, {	-- Knight-Lieutenant's Chain Vices
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23280, {	-- Knight-Lieutenant's Dragonhide Grips
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23282, {	-- Knight-Lieutenant's Dreadweave Handwraps
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23274, {	-- Knight-Lieutenant's Lamellar Gauntlets
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23284, {	-- Knight-Lieutenant's Leather Grips
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(29595, {	-- Knight-Lieutenant's Mail Vices
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23286, {	-- Knight-Lieutenant's Plate Gauntlets
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23288, {	-- Knight-Lieutenant's Satin Handwraps
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23290, {	-- Knight-Lieutenant's Silk Handwraps
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16463, {	-- Marshal's Chain Grips
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16448, {	-- Marshal's Dragonhide Gauntlets
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(17584, {	-- Marshal's Dreadweave Gloves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16471, {	-- Marshal's Lamellar Gloves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16454, {	-- Marshal's Leather Handgrips
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(29607, {	-- Marshal's Mail Gauntlets
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16484, {	-- Marshal's Plate Gauntlets
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(17608, {	-- Marshal's Satin Gloves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16440, {	-- Marshal's Silk Gloves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				-- Legs
				i(23293, {	-- Knight-Captain's Chain Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23295, {	-- Knight-Captain's Dragonhide Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23296, {	-- Knight-Captain's Dreadweave Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23273, {	-- Knight-Captain's Lamellar Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23299, {	-- Knight-Captain's Leather Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(29597, {	-- Knight-Captain's Mail Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23301, {	-- Knight-Captain's Plate Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23302, {	-- Knight-Captain's Satin Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(23304, {	-- Knight-Captain's Silk Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16467, {	-- Marshal's Chain Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16450, {	-- Marshal's Dragonhide Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(17579, {	-- Marshal's Dreadweave Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16475, {	-- Marshal's Lamellar Legplates
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16456, {	-- Marshal's Leather Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(29608, {	-- Marshal's Mail Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16479, {	-- Marshal's Plate Legguards
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(17603, {	-- Marshal's Satin Pants
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				i(16442, {	-- Marshal's Silk Leggings
					["cost"] = { { "i", 137642, 3 }, },	-- 3x Mark of Honor
				}),
				-- Feet
				i(23278, {	-- Knight-Lieutenant's Chain Greaves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23281, {	-- Knight-Lieutenant's Dragonhide Treads
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23283, {	-- Knight-Lieutenant's Dreadweave Walkers
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23275, {	-- Knight-Lieutenant's Lamellar Sabatons
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23285, {	-- Knight-Lieutenant's Leather Walkers
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(29594, {	-- Knight-Lieutenant's Mail Greaves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23287, {	-- Knight-Lieutenant's Plate Greaves
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23289, {	-- Knight-Lieutenant's Satin Walkers
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(23291, {	-- Knight-Lieutenant's Silk Walkers
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16462, {	-- Marshal's Chain Boots
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16459, {	-- Marshal's Dragonhide Boots
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(17583, {	-- Marshal's Dreadweave Boots
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16472, {	-- Marshal's Lamellar Boots
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16446, {	-- Marshal's Leather Footguards
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(29606, {	-- Marshal's Mail Boots
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16483, {	-- Marshal's Plate Boots
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(17607, {	-- Marshal's Satin Sandals
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				i(16437, {	-- Marshal's Silk Footwraps
					["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
				}),
				-- Necks
				i(18443),	-- Master Sergeant's Insignia (58)
				i(18444),	-- Master Sergeant's Insignia (45)
				i(18442),	-- Master Sergeant's Insignia (30)
				-- Trinkets
				i(18854, {	-- Insignia of the Alliance
					["classes"] = { WARRIOR },
				}),
				i(18857, {	-- Insignia of the Alliance
					["classes"] = { ROGUE },
				}),
				i(18862, {	-- Insignia of the Alliance
					["classes"] = { PRIEST },
				}),
				i(18859, {	-- Insignia of the Alliance
					["classes"] = { MAGE },
				}),
				i(18858, {	-- Insignia of the Alliance
					["classes"] = { WARLOCK },
				}),
				i(18863, {	-- Insignia of the Alliance
					["classes"] = { DRUID },
				}),
				i(18864, {	-- Insignia of the Alliance
					["classes"] = { PALADIN },
				}),
				i(18856, {	-- Insignia of the Alliance
					["classes"] = { HUNTER },
				}),
			}),
		})),
		n(FACTION_HEADER_HORDE, bubbleDownSelf({
			["timeline"] = {
				ADDED_1_11_1,
				-- #if NOT ANYCLASSIC
				REMOVED_2_0_1,
				-- #endif
			}
		}, {
			["races"] = HORDE_ONLY,
			["groups"] = sharedData({
				-- #if AFTER 2.0.1
				["description"] = "This item can be purchased, but without the original PvP title, it cannot be used for transmogrification and may not grant collection credit.",
				-- #endif
			}, {
				n(WEAPONS, {
					i(18831, {	-- High Warlord's Battle Axe
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23464, {	-- High Warlord's Battle Mace
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(16345, {	-- High Warlord's Blade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18866, {	-- High Warlord's Bludgeon
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18828, {	-- High Warlord's Cleaver
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18837, {	-- High Warlord's Crossbow
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23465, {	-- High Warlord's Destroyer
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18877, {	-- High Warlord's Greatsword
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18871, {	-- High Warlord's Pig Sticker
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18868, {	-- High Warlord's Pulverizer
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23467, {	-- High Warlord's Quickblade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18835, {	-- High Warlord's Recurve
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18840, {	-- High Warlord's Razor
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18848, {	-- High Warlord's Razor Claw
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18844, {	-- High Warlord's Right Claw
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18826, {	-- High Warlord's Shield Wall
						["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
					}),
					i(23466, {	-- High Warlord's Spellblade
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(18860, {	-- High Warlord's Street Sweeper
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
					i(23468, {	-- High Warlord's Tome of Destruction
						["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
					}),
					i(23469, {	-- High Warlord's Tome of Mending
						["cost"] = { { "i", 137642, 2 }, },	-- 2x Mark of Honor
					}),
					i(18874, {	-- High Warlord's War Staff
						["cost"] = { { "i", 137642, 5 }, },	-- 5x Mark of Honor
					}),
				}),
				i(16486),	-- First Sergeant's Silk Cuffs
				i(16497),	-- First Sergeant's Leather Armguards
				i(16532),	-- First Sergeant's Mail Wristguards
				i(16533),	-- Warlord's Silk Cowl
				i(16534),	-- General's Silk Trousers
				i(16535),	-- Warlord's Silk Raiment
				i(16536),	-- Warlord's Silk Amice
				i(16539),	-- General's Silk Boots
				i(16540),	-- General's Silk Handguards
				i(16541),	-- Warlord's Plate Armor
				i(16542),	-- Warlord's Plate Headpiece
				i(16543),	-- General's Plate Leggings
				i(16544),	-- Warlord's Plate Shoulders
				i(16545),	-- General's Plate Boots
				i(16548),	-- General's Plate Gauntlets
				i(16549),	-- Warlord's Dragonhide Hauberk
				i(16550),	-- Warlord's Dragonhide Helmet
				i(16551),	-- Warlord's Dragonhide Epaulets
				i(16552),	-- General's Dragonhide Leggings
				i(16554),	-- General's Dragonhide Boots
				i(16555),	-- General's Dragonhide Gloves
				i(16558),	-- General's Leather Treads
				i(16560),	-- General's Leather Mitts
				i(16561),	-- Warlord's Leather Helm
				i(16562),	-- Warlord's Leather Spaulders
				i(16563),	-- Warlord's Leather Breastplate
				i(16564),	-- General's Leather Legguards
				i(16565),	-- Warlord's Chain Chestpiece
				i(16566),	-- Warlord's Chain Helmet
				i(16567),	-- General's Chain Legguards
				i(16568),	-- Warlord's Chain Shoulders
				i(16569),	-- General's Chain Boots
				i(16571),	-- General's Chain Gloves
				i(16573),	-- General's Mail Boots
				i(16574),	-- General's Mail Gauntlets
				i(16577),	-- Warlord's Mail Armor
				i(16578),	-- Warlord's Mail Helm
				i(16579),	-- General's Mail Leggings
				i(16580),	-- Warlord's Mail Spaulders
				i(17586),	-- General's Dreadweave Boots
				i(17588),	-- General's Dreadweave Gloves
				i(17590),	-- Warlord's Dreadweave Mantle
				i(17591),	-- Warlord's Dreadweave Hood
				i(17592),	-- Warlord's Dreadweave Robe
				i(17593),	-- General's Dreadweave Pants
				i(17618),	-- General's Satin Boots
				i(17620),	-- General's Satin Gloves
				i(17622),	-- Warlord's Satin Mantle
				i(17623),	-- Warlord's Satin Cowl
				i(17624),	-- Warlord's Satin Robes
				i(17625),	-- General's Satin Leggings
				i(18429),	-- First Sergeant's Plate Bracers
				i(18434),	-- First Sergeant's Dragonhide Armguards
				i(22843),	-- Blood Guard's Chain Greaves
				i(22852),	-- Blood Guard's Dragonhide Treads
				i(22855),	-- Blood Guard's Dreadweave Walkers
				i(22856),	-- Blood Guard's Leather Walkers
				i(22857),	-- Blood Guard's Mail Greaves
				i(22858),	-- Blood Guard's Plate Greaves
				i(22859),	-- Blood Guard's Satin Walkers
				i(22860),	-- Blood Guard's Silk Walkers
				i(22862),	-- Blood Guard's Chain Vices
				i(22863),	-- Blood Guard's Dragonhide Grips
				i(22864),	-- Blood Guard's Leather Grips
				i(22852),	-- Blood Guard's Leather Treads
				i(22865),	-- Blood Guard's Dreadweave Handwraps
				i(22867),	-- Blood Guard's Mail Vices
				i(22868),	-- Blood Guard's Plate Gauntlets
				i(22869),	-- Blood Guard's Satin Handwraps
				i(22870),	-- Blood Guard's Silk Handwraps
				i(22872),	-- Legionnaire's Plate Hauberk
				i(22873),	-- Legionnaire's Plate Leggings
				i(22874),	-- Legionnaire's Chain Hauberk
				i(22875),	-- Legionnaire's Chain Legguards
				i(22876),	-- Legionnaire's Mail Hauberk
				i(22877),	-- Legionnaire's Dragonhide Chestpiece
				i(22878),	-- Legionnaire's Dragonhide Leggings
				i(22879),	-- Legionnaire's Leather Chestpiece
				i(22880),	-- Legionnaire's Leather Legguards
				i(22881),	-- Legionnaire's Dreadweave Legguards
				i(22882),	-- Legionnaire's Satin Legguards
				i(22883),	-- Legionnaire's Silk Legguards
				i(22884),	-- Legionnaire's Dreadweave Tunic
				i(22885),	-- Legionnaire's Satin Tunic
				i(22886),	-- Legionnaire's Silk Tunic
				i(22887),	-- Legionnaire's Mail Legguards
				i(23243),	-- Champion's Plate Shoulders
				i(23244),	-- Champion's Plate Helm
				i(23251),	-- Champion's Chain Helm
				i(23252),	-- Champion's Chain Shoulders
				i(23253),	-- Champion's Dragonhide Headguard
				i(23254),	-- Champion's Dragonhide Shoulders
				i(23255),	-- Champion's Dreadweave Cowl
				i(23256),	-- Champion's Dreadweave Spaulders
				i(23257),	-- Champion's Leather Helm
				i(23258),	-- Champion's Leather Shoulders
				i(23259),	-- Champion's Mail Headguard
				i(23260),	-- Champion's Mail Pauldrons
				i(23261),	-- Champion's Satin Hood
				i(23262),	-- Champion's Satin Mantle
				i(23263),	-- Champion's Silk Cowl
				i(23264),	-- Champion's Silk Mantle
				i(29600),	-- Blood Guard's Lamellar Gauntlets
				i(29601),	-- Blood Guard's Lamellar Sabatons
				i(29602),	-- Legionnaire's Lamellar Breastplate
				i(29603),	-- Legionnaire's Lamellar Leggings
				i(29604),	-- Champion's Lamellar Headguard
				i(29605),	-- Champion's Lamellar Shoulders
				i(29612),	-- General's Lamellar Boots
				i(29613),	-- General's Lamellar Gloves
				i(29614),	-- General's Lamellar Legplates
				i(29615),	-- Warlord's Lamellar Chestplate
				i(29616),	-- Warlord's Lamellar Faceguard
				i(29617),	-- Warlord's Lamellar Pauldrons
				i(18430),	-- First Sergeant's Plate Bracers
				i(18432),	-- First Sergeant's Mail Wristguards
				i(18435),	-- First Sergeant's Leather Armguards
				i(18436),	-- First Sergeant's Dragonhide Armguards
				i(18437),	-- First Sergeant's Silk Cuffs

				-- Back
				i(18461),	-- Sergeant's Cloak (58)
				i(16341),	-- Sergeant's Cloak (45)
				i(18427),	-- Sergeant's Cloak (30)
				-- Necks
				i(16335),	-- Senior Sergeant's Insignia (58)
				i(18428),	-- Senior Sergeant's Insignia (45)
				i(15200),	-- Senior Sergeant's Insignia (30)
				-- Trinkets
				i(18834, {	-- Insignia of the Horde
					["classes"] = { WARRIOR },
				}),
				i(18849, {	-- Insignia of the Horde
					["classes"] = { ROGUE },
				}),
				i(18846, {	-- Insignia of the Horde
					["classes"] = { HUNTER },
				}),
				i(18851, {	-- Insignia of the Horde
					["classes"] = { PRIEST },
				}),
				i(18853, {	-- Insignia of the Horde
					["classes"] = { DRUID },
				}),
				i(18850, {	-- Insignia of the Horde
					["classes"] = { MAGE },
				}),
				i(18852, {	-- Insignia of the Horde
					["classes"] = { WARLOCK },
				}),
				i(18845, {	-- Insignia of the Horde
					["classes"] = { SHAMAN },
				}),
			}),
		})),
		n(QUESTS, {
			q(8371, {	-- Concerted Efforts
				["qg"] = 15351,	-- Alliance Brigadier General
				["coords"] = {
					{ 57.8, 34.6, DARNASSUS },
					{ 69.8, 90, IRONFORGE },
					{ 79.4, 18, STORMWIND_CITY },
					-- #if AFTER TBC
					{ 67.4, 33.9, SHATTRATH_CITY },
					-- #else
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					-- #endif
				},
				["timeline"] = { REMOVED_3_3_3 },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					-- #if AFTER TBC
					{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
					{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
					{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					-- #else
					{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
					{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					-- #endif
				},
				-- #if AFTER WRATH
				["lvl"] = 61,
				-- #elseif AFTER TBC
				["lvl"] = 60,
				-- #else
				["lvl"] = 51,
				-- #endif
			}),
			q(8385, {	-- Concerted Efforts
				["qg"] = 15351,	-- Alliance Brigadier General
				["sourceQuest"] = 8371,	-- Concerted Efforts
				["coords"] = {
					{ 57.8, 34.6, DARNASSUS },
					{ 69.8, 90, IRONFORGE },
					{ 79.4, 18, STORMWIND_CITY },
					-- #if AFTER TBC
					{ 67.4, 33.9, SHATTRATH_CITY },
					-- #else
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					-- #endif
				},
				["timeline"] = { REMOVED_3_3_3 },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["cost"] = {
					-- #if AFTER TBC
					{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
					{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
					{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					-- #else
					{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
					{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					-- #endif
				},
				-- #if AFTER WRATH
				["lvl"] = 61,
				-- #elseif AFTER TBC
				["lvl"] = 60,
				-- #else
				["lvl"] = 51,
				-- #endif
			}),
			q(8367, {	-- For Great Honor
				["qg"] = 15350,	-- Horde Warbringer
				["coords"] = {
					{ 79.8, 30.4, ORGRIMMAR },
					{ 56.0, 76.7, THUNDER_BLUFF },
					{ 60.7, 87.7, UNDERCITY },
					-- #if AFTER TBC
					{ 67.0, 56.6, SHATTRATH_CITY },
					-- #else
					{ 62.6, 59.1, ALTERAC_MOUNTAINS },
					{ 73.5, 29.7, ARATHI_HIGHLANDS },
					{ 46.7, 8.4, THE_BARRENS },
					-- #endif
				},
				["timeline"] = { REMOVED_3_3_3 },
				["races"] = HORDE_ONLY,
				["cost"] = {
					-- #if AFTER TBC
					{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
					{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
					{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					-- #else
					{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
					{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					-- #endif
				},
				-- #if AFTER WRATH
				["lvl"] = 61,
				-- #elseif AFTER TBC
				["lvl"] = 60,
				-- #else
				["lvl"] = 51,
				-- #endif
			}),
			q(8388, {	-- For Great Honor
				["qg"] = 15350,	-- Horde Warbringer
				["sourceQuest"] = 8367,	-- For Great Honor
				["coords"] = {
					{ 79.8, 30.4, ORGRIMMAR },
					{ 56.0, 76.7, THUNDER_BLUFF },
					{ 60.7, 87.7, UNDERCITY },
					-- #if AFTER TBC
					{ 67.0, 56.6, SHATTRATH_CITY },
					-- #else
					{ 62.6, 59.1, ALTERAC_MOUNTAINS },
					{ 73.5, 29.7, ARATHI_HIGHLANDS },
					{ 46.7, 8.4, THE_BARRENS },
					-- #endif
				},
				["timeline"] = { REMOVED_3_3_3 },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["cost"] = {
					-- #if AFTER TBC
					{ "i", 20560, 1 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 1 },	-- Arathi Basin Mark of Honor
					{ "i", 29024, 1 },	-- Eye of the Storm Mark of Honor
					{ "i", 20558, 1 },	-- Warsong Gulch Mark of Honor
					-- #else
					{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
					{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
					{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					-- #endif
				},
				-- #if AFTER WRATH
				["lvl"] = 61,
				-- #elseif AFTER TBC
				["lvl"] = 60,
				-- #else
				["lvl"] = 51,
				-- #endif
			}),
		}),
	},
}))));