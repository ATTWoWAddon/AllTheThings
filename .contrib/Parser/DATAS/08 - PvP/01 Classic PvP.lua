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
			-- #if AFTER TBC
			-- #if NOT ANYCLASSIC
			["sharedDescription"] = "This item can be purchased, but without the original PvP title, it cannot be used for transmogrification and may not grant collection credit.",
			-- #endif
			-- #endif
			["groups"] = {
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
				cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
					-- Epic set
					i(16451, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Dragonhide Helmet		- 3x Mark of Honor
					i(16449, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Dragonhide Spaulders		- 2x Mark of Honor
					i(16452, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Dragonhide Breastplate	- 3x Mark of Honor
					i(16448, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Dragonhide Gauntlets 			- 2x Mark of Honor
					i(16450, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Dragonhide Legguards 			- 3x Mark of Honor
					i(16459, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Dragonhide Boots 				- 2x Mark of Honor
					-- Rare set
					i(23308, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Dragonhide Headguard	- 3x Mark of Honor
					i(23309, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Dragonhide Shoulders	- 2x Mark of Honor
					i(23294, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Dragonhide Chestpiece 		- 3x Mark of Honor
					i(23280, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Dragonhide Grips			- 2x Mark of Honor
					i(23295, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Dragonhide Leggings 		- 3x Mark of Honor
					i(23281, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Dragonhide Treads 		- 2x Mark of Honor
				}));
				cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
					-- Epic set
					i(16465, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Chain Helm 			- 3x Mark of Honor
					i(16468, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Chain Spaulders   	- 2x Mark of Honor
					i(16466, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Chain Breastplate	- 3x Mark of Honor
					i(16463, { ["cost"] = {{ "i", 137642, 2 }} }), 	-- Marshal's Chain Grips				- 2x Mark of Honor
					i(16467, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Chain Legguards			- 3x Mark of Honor
					i(16462, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Chain Boots				- 2x Mark of Honor
					-- Rare set
					i(23306, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Chain Helm 	  - 3x Mark of Honor
					i(23307, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Chain Shoulders - 2x Mark of Honor
					i(23292, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Chain Hauberk		  - 3x Mark of Honor
					i(23279, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Chain Vices		  - 2x Mark of Honor
					i(23293, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Chain Legguards		  - 3x Mark of Honor
					i(23278, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Chain Greaves	  - 2x Mark of Honor
				})),
				cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
					-- Epic set
					i(16441, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Coronet			- 3x Mark of Honor
					i(16444, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Silk Spaulders	- 2x Mark of Honor
					i(16443, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Silk Vestments	- 3x Mark of Honor
					i(16440, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Silk Gloves			- 2x Mark of Honor
					i(16442, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Silk Leggings			- 3x Mark of Honor
					i(16437, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Silk Footwraps			- 2x Mark of Honor
					-- Rare set
					i(23318, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Silk Cowl		- 3x Mark of Honor
					i(23319, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Silk Mantle	- 2x Mark of Honor
					i(23305, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Silk Tunic			- 3x Mark of Honor
					i(23290, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Silk Handwraps	- 2x Mark of Honor
					i(23304, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Silk Legguards		- 3x Mark of Honor
					i(23291, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Silk Walkers		- 2x Mark of Honor
				}));
				cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
					-- Epic set
					i(16474, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Lamellar Faceguard	- 3x Mark of Honor
					i(16476, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Lamellar Pauldrons	- 2x Mark of Honor
					i(16473, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Lamellar Chestplate	- 3x Mark of Honor
					i(16471, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Lamellar Gloves			- 2x Mark of Honor
					i(16475, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Lamellar Legplates			- 3x Mark of Honor
					i(16472, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Lamellar Boots				- 2x Mark of Honor
					-- Rare set
					i(23276, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Lamellar Headguard	- 3x Mark of Honor
					i(23277, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Lamellar Shoulders	- 2x Mark of Honor
					i(23272, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Lamellar Breastplate		- 3x Mark of Honor
					i(23274, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Lamellar Gauntlets		- 2x Mark of Honor
					i(23273, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Lamellar Leggings			- 3x Mark of Honor
					i(23275, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Lamellar Sabatons		- 2x Mark of Honor
				}));
				cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
					-- Epic set
					i(17602, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Headdress		- 3x Mark of Honor
					i(17604, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Satin Mantle		- 2x Mark of Honor
					i(17605, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Satin Vestments	- 3x Mark of Honor
					i(17608, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Satin Gloves			- 2x Mark of Honor
					i(17603, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Satin Pants			- 3x Mark of Honor
					i(17607, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Satin Sandals			- 2x Mark of Honor
					-- Rare set
					i(23316, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Satin Hood	- 3x Mark of Honor
					i(23317, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Satin Mantle	- 2x Mark of Honor
					i(23303, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Satin Tunic			- 3x Mark of Honor
					i(23288, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Satin Handwraps	- 2x Mark of Honor
					i(23302, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Satin Legguards		- 3x Mark of Honor
					i(23289, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Satin Walkers	- 2x Mark of Honor
				}));
				cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
					-- Epic set
					i(16455, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Leather Mask			- 3x Mark of Honor
					i(16457, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Leather Epaulets		- 2x Mark of Honor
					i(16453, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Leather Chestpiece	- 3x Mark of Honor
					i(16454, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Leather Handgrips			- 2x Mark of Honor
					i(16456, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Leather Leggings			- 3x Mark of Honor
					i(16446, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Leather Footguards			- 2x Mark of Honor
					-- Rare set
					i(23312, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Leather Helm		- 3x Mark of Honor
					i(23313, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Leather Shoulders	- 2x Mark of Honor
					i(23298, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Leather Chestpiece		- 3x Mark of Honor
					i(23284, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Leather Grips		- 2x Mark of Honor
					i(23299, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Leather Legguards		- 3x Mark of Honor
					i(23285, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Leather Walkers		- 2x Mark of Honor
				})),
				cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
					-- Epic set
					i(29610, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Mail Helm		- 3x Mark of Honor
					i(29611, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Mail Spaulders	- 2x Mark of Honor
					i(29609, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Mail Armor		- 3x Mark of Honor
					i(29607, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Mail Gauntlets			- 2x Mark of Honor
					i(29608, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Mail Leggings			- 3x Mark of Honor
					i(29606, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Mail Boots				- 2x Mark of Honor
					-- Rare set
					i(29598, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Mail Headguard	- 3x Mark of Honor
					i(29599, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Mail Pauldrons	- 2x Mark of Honor
					i(29596, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Mail Hauberk			- 3x Mark of Honor
					i(29595, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Mail Vices			- 2x Mark of Honor
					i(29597, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Mail Legguards			- 3x Mark of Honor
					i(29594, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Mail Greaves			- 2x Mark of Honor
				}));
				cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
					-- Epic set
					i(17578, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Coronal				- 3x Mark of Honor
					i(17580, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Dreadweave Shoulders	- 2x Mark of Honor
					i(17581, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Dreadweave Robe		- 3x Mark of Honor
					i(17584, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Dreadweave Gloves			- 2x Mark of Honor
					i(17579, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Dreadweave Leggings		- 3x Mark of Honor
					i(17583, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Dreadweave Boots			- 2x Mark of Honor
					-- Rare set
					i(23310, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Dreadweave Cowl		- 3x Mark of Honor
					i(23311, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Dreadweave Spaulders	- 2x Mark of Honor
					i(23297, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Dreadweave Tunic			- 3x Mark of Honor
					i(23282, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Dreadweave Handwraps		- 2x Mark of Honor
					i(23296, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Dreadweave Legguards		- 3x Mark of Honor
					i(23283, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Dreadweave Walkers		- 2x Mark of Honor
				}));
				cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
					-- Epic set
					i(16478, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Plate Helm			- 3x Mark of Honor
					i(16480, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Field Marshal's Plate Shoulderguards	- 2x Mark of Honor
					i(16477, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Field Marshal's Plate Armor			- 3x Mark of Honor
					i(16484, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Plate Gauntlets			- 2x Mark of Honor
					i(16479, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Marshal's Plate Legguards			- 3x Mark of Honor
					i(16483, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Marshal's Plate Boots				- 2x Mark of Honor
					-- Rare set
					i(23314, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Lieutenant Commander's Plate Helmet		- 3x Mark of Honor
					i(23315, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Lieutenant Commander's Plate Shoulders	- 2x Mark of Honor
					i(23300, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Plate Hauberk			- 3x Mark of Honor
					i(23286, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Plate Gauntlets		- 2x Mark of Honor
					i(23301, { ["cost"] = {{ "i", 137642, 3 }} }),	-- Knight-Captain's Plate Leggings			- 3x Mark of Honor
					i(23287, { ["cost"] = {{ "i", 137642, 2 }} }),	-- Knight-Lieutenant's Plate Greaves		- 2x Mark of Honor
				}));

				-- Back
				i(16342, { ["cost"] = {{ "i", 137642, 1 }} }),	-- Sergeant's Cape (58)	- 1x Mark of Honor
				i(18441, { ["cost"] = {{ "i", 137642, 1 }} }),	-- Sergeant's Cape (45)	- 1x Mark of Honor
				i(18440, { ["cost"] = {{ "i", 137642, 1 }} }),	-- Sergeant's Cape (30)	- 1x Mark of Honor

				-- Wrist
				i(18448, {	-- Sergeant Major's Chain Armguards (58)
					["classes"] = { HUNTER, SHAMAN },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18449, {	-- Sergeant Major's Chain Armguards (45)
					["classes"] = { HUNTER, SHAMAN },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
					["classes"] = { DRUID },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
					["classes"] = { DRUID },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18452, {	-- Sergeant Major's Leather  (58)
					["classes"] = { ROGUE },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18453, {	-- Sergeant Major's Leather Armsplints (45)
					["classes"] = { ROGUE },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18445, {	-- Sergeant Major's Plate Wristguards (58)
					["classes"] = { PALADIN, WARRIOR },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18447, {	-- Sergeant Major's Plate Wristguards (45)
					["classes"] = { PALADIN, WARRIOR },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18456, {	-- Sergeant Major's Silk Cuffs (58)
					["classes"] = { MAGE, PRIEST, WARLOCK },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),
				i(18457, {	-- Sergeant Major's Silk Cuffs (45)
					["classes"] = { MAGE, PRIEST, WARLOCK },
					["cost"] = {{ "i", 137642, 1 }},	-- 1x Mark of Honor
				}),

				-- Necks
				i(18443),	-- Master Sergeant's Insignia (58)
				i(18444),	-- Master Sergeant's Insignia (45)
				i(18442),	-- Master Sergeant's Insignia (30)

				-- Trinkets
				i(18863, { ["classes"] = { DRUID }   }),	-- Insignia of the Alliance
				i(18856, { ["classes"] = { HUNTER }  }),	-- Insignia of the Alliance
				i(18859, { ["classes"] = { MAGE }    }),	-- Insignia of the Alliance
				i(18864, { ["classes"] = { PALADIN } }),	-- Insignia of the Alliance
				i(18862, { ["classes"] = { PRIEST }  }),	-- Insignia of the Alliance
				i(18857, { ["classes"] = { ROGUE }   }),	-- Insignia of the Alliance
				i(18858, { ["classes"] = { WARLOCK } }),	-- Insignia of the Alliance
				i(18854, { ["classes"] = { WARRIOR } }), 	-- Insignia of the Alliance
			},
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
			-- #if AFTER TBC
			-- #if NOT ANYCLASSIC
			["sharedDescription"] = "This item can be purchased, but without the original PvP title, it cannot be used for transmogrification and may not grant collection credit.",
			-- #endif
			-- #endif
			["groups"] = {
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
				cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
					-- Epic set
					i(16550),	-- Warlord's Dragonhide Helmet
					i(16551),	-- Warlord's Dragonhide Epaulets
					i(16549),	-- Warlord's Dragonhide Hauberk
					i(16555),	-- General's Dragonhide Gloves
					i(16552),	-- General's Dragonhide Leggings
					i(16554),	-- General's Dragonhide Boots
					-- Rare set
					i(23253),	-- Champion's Dragonhide Headguard
					i(23254),	-- Champion's Dragonhide Shoulders
					i(22877),	-- Legionnaire's Dragonhide Chestpiece
					i(22863),	-- Blood Guard's Dragonhide Grips
					i(22878),	-- Legionnaire's Dragonhide Leggings
					i(22852),	-- Blood Guard's Dragonhide Treads
				}));
				cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
					-- Epic set
					i(16566),	-- Warlord's Chain Helmet
					i(16568),	-- Warlord's Chain Shoulders
					i(16565),	-- Warlord's Chain Chestpiece
					i(16571),	-- General's Chain Gloves
					i(16567),	-- General's Chain Legguards
					i(16569),	-- General's Chain Boots
					-- Rare set
					i(23251),	-- Champion's Chain Helm
					i(23252),	-- Champion's Chain Shoulders
					i(22874),	-- Legionnaire's Chain Hauberk
					i(22862),	-- Blood Guard's Chain Vices
					i(22875),	-- Legionnaire's Chain Legguards
					i(22843),	-- Blood Guard's Chain Greaves
				})),
				cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
					-- Epic set
					i(16533),	-- Warlord's Silk Cowl
					i(16536),	-- Warlord's Silk Amice
					i(16535),	-- Warlord's Silk Raiment
					i(16540),	-- General's Silk Handguards
					i(16534),	-- General's Silk Trousers
					i(16539),	-- General's Silk Boots
					-- Rare set
					i(23263),	-- Champion's Silk Cowl
					i(23264),	-- Champion's Silk Mantle
					i(22886),	-- Legionnaire's Silk Tunic
					i(22870),	-- Blood Guard's Silk Handwraps
					i(22883),	-- Legionnaire's Silk Legguards
					i(22860),	-- Blood Guard's Silk Walkers
				}));
				cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
					-- Epic set
					i(29616),	-- Warlord's Lamellar Faceguard
					i(29617),	-- Warlord's Lamellar Pauldrons
					i(29615),	-- Warlord's Lamellar Chestplate
					i(29613),	-- General's Lamellar Gloves
					i(29614),	-- General's Lamellar Legplates
					i(29612),	-- General's Lamellar Boots
					-- Rare set
					i(29604),	-- Champion's Lamellar Headguard
					i(29605),	-- Champion's Lamellar Shoulders
					i(29602),	-- Legionnaire's Lamellar Breastplate
					i(29600),	-- Blood Guard's Lamellar Gauntlets
					i(29603),	-- Legionnaire's Lamellar Leggings
					i(29601),	-- Blood Guard's Lamellar Sabatons
				})),
				cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
					-- Epic set
					i(17623),	-- Warlord's Satin Cowl
					i(17622),	-- Warlord's Satin Mantle
					i(17624),	-- Warlord's Satin Robes
					i(17620),	-- General's Satin Gloves
					i(17625),	-- General's Satin Leggings
					i(17618),	-- General's Satin Boots
					-- Rare set
					i(23261),	-- Champion's Satin Hood
					i(23262),	-- Champion's Satin Mantle
					i(22885),	-- Legionnaire's Satin Tunic
					i(22869),	-- Blood Guard's Satin Handwraps
					i(22882),	-- Legionnaire's Satin Legguards
					i(22859),	-- Blood Guard's Satin Walkers
				}));
				cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
					-- Epic set
					i(16561),	-- Warlord's Leather Helm
					i(16562),	-- Warlord's Leather Spaulders
					i(16563),	-- Warlord's Leather Breastplate
					i(16560),	-- General's Leather Mitts
					i(16564),	-- General's Leather Legguards
					i(16558),	-- General's Leather Treads
					-- Rare set
					i(23257),	-- Champion's Leather Helm
					i(23258),	-- Champion's Leather Shoulders
					i(22879),	-- Legionnaire's Leather Chestpiece
					i(22864),	-- Blood Guard's Leather Grips
					i(22880),	-- Legionnaire's Leather Legguards
					i(22856),	-- Blood Guard's Leather Walkers
				})),
				cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
					-- Epic set
					i(16578),	-- Warlord's Mail Helm
					i(16580),	-- Warlord's Mail Spaulders
					i(16577),	-- Warlord's Mail Armor
					i(16574),	-- General's Mail Gauntlets
					i(16579),	-- General's Mail Leggings
					i(16573),	-- General's Mail Boots
					-- Rare set
					i(23259),	-- Champion's Mail Headguard
					i(23260),	-- Champion's Mail Pauldrons
					i(22876),	-- Legionnaire's Mail Hauberk
					i(22867),	-- Blood Guard's Mail Vices
					i(22887),	-- Legionnaire's Mail Legguards
					i(22857),	-- Blood Guard's Mail Greaves
				}));
				cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
					-- Epic set
					i(17591),	-- Warlord's Dreadweave Hood
					i(17590),	-- Warlord's Dreadweave Mantle
					i(17592),	-- Warlord's Dreadweave Robe
					i(17588),	-- General's Dreadweave Gloves
					i(17593),	-- General's Dreadweave Pants
					i(17586),	-- General's Dreadweave Boots
					-- Rare set
					i(23255),	-- Champion's Dreadweave Cowl
					i(23256),	-- Champion's Dreadweave Spaulders
					i(22884),	-- Legionnaire's Dreadweave Tunic
					i(22865),	-- Blood Guard's Dreadweave Handwraps
					i(22881),	-- Legionnaire's Dreadweave Legguards
					i(22855),	-- Blood Guard's Dreadweave Walkers
				}));
				cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
					-- Epic set
					i(16542),	-- Warlord's Plate Headpiece
					i(16544),	-- Warlord's Plate Shoulders
					i(16541),	-- Warlord's Plate Armor
					i(16548),	-- General's Plate Gauntlets
					i(16543),	-- General's Plate Leggings
					i(16545),	-- General's Plate Boots
					-- Rare set
					i(23244),	-- Champion's Plate Helm
					i(23243),	-- Champion's Plate Shoulders
					i(22872),	-- Legionnaire's Plate Hauberk
					i(22868),	-- Blood Guard's Plate Gauntlets
					i(22873),	-- Legionnaire's Plate Leggings
					i(22858),	-- Blood Guard's Plate Greaves
				})),

				-- Back
				i(18461),	-- Sergeant's Cloak (58)
				i(16341),	-- Sergeant's Cloak (45)
				i(18427),	-- Sergeant's Cloak (30)

				-- Wrist
				i(18434, { ["classes"] = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (58)
				i(18436, { ["classes"] = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (45)
				i(16497, { ["classes"] = { ROGUE }					}),	-- First Sergeant's Leather Armguards (58)
				i(18435, { ["classes"] = { ROGUE }					}),	-- First Sergeant's Leather Armguards (45)
				i(16532, { ["classes"] = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (58)
				i(18432, { ["classes"] = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (45)
				i(18429, { ["classes"] = { PALADIN, WARRIOR } 		}),	-- First Sergeant's Plate Bracers (58)
				i(18430, { ["classes"] = { PALADIN, WARRIOR }		}),	-- First Sergeant's Plate Bracers (45)
				i(16486, { ["classes"] = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (58)
				i(18437, { ["classes"] = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (45)

				-- Necks
				i(16335),	-- Senior Sergeant's Insignia (58)
				i(18428),	-- Senior Sergeant's Insignia (45)
				i(15200),	-- Senior Sergeant's Insignia (30)

				-- Trinkets
				i(18853, { ["classes"] = { DRUID }   }),	-- Insignia of the Horde
				i(18846, { ["classes"] = { HUNTER }  }),	-- Insignia of the Horde
				i(18850, { ["classes"] = { MAGE } 	 }),	-- Insignia of the Horde
				i(18851, { ["classes"] = { PRIEST }  }),	-- Insignia of the Horde
				i(18849, { ["classes"] = { ROGUE }   }),	-- Insignia of the Horde
				i(18845, { ["classes"] = { SHAMAN }	 }),	-- Insignia of the Horde
				i(18852, { ["classes"] = { WARLOCK } }),	-- Insignia of the Horde
				i(18834, { ["classes"] = { WARRIOR } }),	-- Insignia of the Horde
			},
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
				["races"] = ALLIANCE_ONLY,
				-- #if AFTER WRATH
				["lvl"] = 61,
				-- #elseif AFTER TBC
				["lvl"] = 60,
				-- #else
				["lvl"] = 51,
				-- #endif
			}),
			q(8385, {	-- Concerted Efforts
				["sourceQuest"] = 8371,	-- Concerted Efforts
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
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
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
				["races"] = HORDE_ONLY,
				-- #if AFTER WRATH
				["lvl"] = 61,
				-- #elseif AFTER TBC
				["lvl"] = 60,
				-- #else
				["lvl"] = 51,
				-- #endif
			}),
			q(8388, {	-- For Great Honor
				["sourceQuest"] = 8367,	-- For Great Honor
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
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
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
