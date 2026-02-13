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
				-- #IF SEASON_OF_DISCOVERY
				n(WEAPONS, {
					i(234565),	-- Grand Marshal's Claymore
					i(234566),	-- Grand Marshal's Sunderer
					i(234567),	-- Grand Marshal's Battle Hammer
					i(234568),	-- Grand Marshal's Demolisher
					i(234569),	-- Grand Marshal's Glaive
					i(234570),	-- Grand Marshal's Polearm
					i(234571),	-- Grand Marshal's Stave
					i(234574),	-- Grand Marshal's Mageblade
					i(234576),	-- Grand Marshal's Warhammer
					i(234578),	-- Grand Marshal's Longsword
					i(234579),	-- Grand Marshal's Swiftblade
					i(234580),	-- Grand Marshal's Handaxe
					i(234581),	-- Grand Marshal's Punisher
					i(234582),	-- Grand Marshal's Dirk
					i(234583),	-- Grand Marshal's Right Hand Blade
					i(234584),	-- Grand Marshal's Left Hand Blade
					i(234585),	-- Grand Marshal's Bullseye
					i(234586),	-- Grand Marshal's Repeater
					i(234587),	-- Grand Marshal's Hand Cannon
					i(234588),	-- Grand Marshal's Aegis
					i(234589),	-- Grand Marshal's Tome of Power
					i(234590),	-- Grand Marshal's Tome of Restoration
				}),
				cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
					-- Epic set
					i(231689), -- Field Marshal's Dragonhide Headguard
					i(231690), -- Field Marshal's Dragonhide Chestpiece
					i(231693), -- Field Marshal's Dragonhide Shoulders
					i(231695), -- Field Marshal's Dragonhide Helm
					i(231696), -- Field Marshal's Dragonhide Armor
					i(231699), -- Field Marshal's Dragonhide Spaulders
					i(231701), -- Field Marshal's Dragonhide Headdress
					i(231702), -- Field Marshal's Dragonhide Tunic
					i(231705), -- Field Marshal's Dragonhide Pauldrons
					i(231691), -- Marshal's Dragonhide Leggings
					i(231692), -- Marshal's Dragonhide Treads
					i(231694), -- Marshal's Dragonhide Grips
					i(231697), -- Marshal's Dragonhide Pants
					i(231698), -- Marshal's Dragonhide Boots
					i(231700), -- Marshal's Dragonhide Gloves
					i(231703), -- Marshal's Dragonhide Legguards
					i(231704), -- Marshal's Dragonhide Greaves
					i(231706), -- Marshal's Dragonhide Gauntlets
					-- Rare set
					-- Lieutenant Commander's Dragonhide
					i(227172), -- Lieutenant Commander's Dragonhide Shoulders
					i(227173), -- Lieutenant Commander's Dragonhide Headguard
					i(227190), -- Lieutenant Commander's Dragonhide Spaulders
					i(227192), -- Lieutenant Commander's Dragonhide Helm
					i(227199), -- Lieutenant Commander's Dragonhide Headdress
					i(227201), -- Lieutenant Commander's Dragonhide Pauldrons
					-- Knight-Captain's Dragonhide
					i(227176), -- Knight-Captain's Dragonhide Chestpiece
					i(227178), -- Knight-Captain's Dragonhide Leggings
					i(227191), -- Knight-Captain's Dragonhide Pants
					i(227195), -- Knight-Captain's Dragonhide Armor
					i(227196), -- Knight-Captain's Dragonhide Tunic
					i(227200), -- Knight-Captain's Dragonhide Legguards
					-- Knight-Lieutenant's Dragonhide
					i(227182), -- Knight-Lieutenant's Dragonhide Treads
					i(227183), -- Knight-Lieutenant's Dragonhide Grips
					i(227193), -- Knight-Lieutenant's Dragonhide Gloves
					i(227194), -- Knight-Lieutenant's Dragonhide Boots
					i(227197), -- Knight-Lieutenant's Dragonhide Greaves
					i(227198), -- Knight-Lieutenant's Dragonhide Gauntlets
				}));
				cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
					-- Epic set
					i(231557), -- Field Marshal's Chain Pauldrons
					i(231562), -- Field Marshal's Chain Greathelm
					i(231563), -- Field Marshal's Chain Armor
					i(231576), -- Field Marshal's Chain Shoulders
					i(231580), -- Field Marshal's Chain Helm
					i(231581), -- Field Marshal's Chain Hauberk
					i(231558), -- Marshal's Chain Legplates
					i(231560), -- Marshal's Chain Grips
					i(231561), -- Marshal's Chain Sabatons
					i(231577), -- Marshal's Chain Legguards
					i(231578), -- Marshal's Chain Vices
					i(231579), -- Marshal's Chain Greaves
					-- Rare set
					i(227066), -- Lieutenant Commander's Chain Helm
					i(227068), -- Lieutenant Commander's Chain Shoulders
					i(227084), -- Lieutenant Commander's Chain Pauldrons
					i(227086), -- Lieutenant Commander's Chain Greathelm
					-- Knight-Captain (Chain)
					i(227070), -- Knight-Captain's Chain Hauberk
					i(227072), -- Knight-Captain's Chain Legguards
					i(227085), -- Knight-Captain's Chain Legplates
					i(227089), -- Knight-Captain's Chain Armor
					-- Knight-Lieutenant (Chain)
					i(227076), -- Knight-Lieutenant's Chain Greaves
					i(227077), -- Knight-Lieutenant's Chain Vices
					i(227087), -- Knight-Lieutenant's Chain Grips
					i(227088), -- Knight-Lieutenant's Chain Sabatons
				})),
				cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
					-- Epic set
					i(231602), -- Field Marshal's Silk Spaulders
					i(231603), -- Field Marshal's Silk Vestments
					i(231604), -- Field Marshal's Coronet
					i(231605), -- Marshal's Silk Leggings
					i(231606), -- Marshal's Silk Footwraps
					i(231607), -- Marshal's Silk Gloves
					i(231608), -- Marshal's Silk Gauntlets
					i(231609), -- Marshal's Silk Handwraps
					-- Rare set
					i(227102), -- Lieutenant Commander's Silk Mantle
					i(227103), -- Lieutenant Commander's Silk Cowl
					-- Knight-Captain (Silk)
					i(227108), -- Knight-Captain's Silk Tunic
					i(227109), -- Knight-Captain's Silk Legguards
					-- Knight-Lieutenant (Silk)
					i(227112), -- Knight-Lieutenant's Silk Walkers
					i(227113), -- Knight-Lieutenant's Silk Handwraps
					i(227114), -- Knight-Lieutenant's Silk Gauntlets
					i(227116), -- Knight-Lieutenant's Silk Gloves
				}));
				cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
					-- Epic set
					i(231640), -- Field Marshal's Lamellar Helmet
					i(231641), -- Field Marshal's Lamellar Chestplate
					i(231645), -- Field Marshal's Lamellar Pauldrons
					i(231648), -- Field Marshal's Lamellar Headguard
					i(231649), -- Field Marshal's Lamellar Breastplate
					i(231651), -- Field Marshal's Lamellar Shoulders
					i(231639), -- Marshal's Lamellar Legguards
					i(231643), -- Marshal's Lamellar Gloves
					i(231646), -- Marshal's Lamellar Greaves
					i(231647), -- Marshal's Lamellar Leggings
					i(231650), -- Marshal's Lamellar Gauntlets
					i(231652), -- Marshal's Lamellar Sabatons
					-- Rare set
					i(227142),	-- Knight-Captain's Lamellar Breastplate
					i(227143),	-- Knight-Captain's Lamellar Leggings
					i(227144),	-- Lieutenant Commander's Lamellar Headguard
					i(227145),	-- Lieutenant Commander's Lamellar Shoulders
					i(227146),	-- Knight-Lieutenant's Lamellar Sabatons
					i(227147),	-- Knight-Lieutenant's Lamellar Gauntlets
					i(227148),	-- Lieutenant Commander's Lamellar Pauldrons
					i(227149),	-- Lieutenant Commander's Lamellar Helmet
					i(227150),	-- Knight-Captain's Lamellar Legguards
					i(227151),	-- Knight-Captain's Lamellar Chestplate
					i(227152),	-- Knight-Lieutenant's Lamellar Gloves
					i(227153),	-- Knight-Lieutenant's Lamellar Greaves
				}));
				cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
					-- Epic set
					i(231616), -- Field Marshal's Satin Crown
					i(231618), -- Field Marshal's Satin Robe
					i(231621), -- Field Marshal's Satin Epaulets
					i(231622), -- Field Marshal's Satin Hood
					i(231624), -- Field Marshal's Satin Tunic
					i(231628), -- Field Marshal's Satin Mantle
					i(231617), -- Marshal's Satin Grips
					i(231619), -- Marshal's Satin Leggings
					i(231620), -- Marshal's Satin Treads
					i(231623), -- Marshal's Satin Handwraps
					i(231626), -- Marshal's Satin Legguards
					i(231627), -- Marshal's Satin Walkers
					-- Rare set
					i(227119), -- Lieutenant Commander's Satin Mantle
					i(227121), -- Lieutenant Commander's Satin Hood
					i(227136), -- Lieutenant Commander's Satin Epaulets
					i(227138), -- Lieutenant Commander's Satin Crown
					-- Knight-Captain (Satin)
					i(227122), -- Knight-Captain's Satin Tunic
					i(227125), -- Knight-Captain's Satin Legguards
					i(227137), -- Knight-Captain's Satin Leggings
					i(227141), -- Knight-Captain's Satin Robe
					-- Knight-Lieutenant (Satin)
					i(227128), -- Knight-Lieutenant's Satin Handwraps
					i(227129), -- Knight-Lieutenant's Satin Walkers
					i(227139), -- Knight-Lieutenant's Satin Grips
					i(227140), -- Knight-Lieutenant's Satin Treads
				}));
				cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
					-- Epic set
					i(231543), -- Field Marshal's Leather Chestpiece
					i(231545), -- Field Marshal's Leather Mask
					i(231547), -- Field Marshal's Leather Epaulets
					i(231544), -- Marshal's Leather Handgrips
					i(231546), -- Marshal's Leather Footguards
					i(231548), -- Marshal's Leather Leggings
					-- Rare set
					i(227054), -- Lieutenant Commander's Leather Shoulders
					i(227055), -- Lieutenant Commander's Leather Helm
					-- Knight-Captain (Leather)
					i(227058), -- Knight-Captain's Leather Chestpiece
					i(227061), -- Knight-Captain's Leather Legguards
					-- Knight-Lieutenant (Leather)
					i(227064), -- Knight-Lieutenant's Leather Walkers
					i(227065), -- Knight-Lieutenant's Leather Grips
				})),
				cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
					-- Epic set
					i(231582), -- Field Marshal's Dreadweave Robe
					i(231583), -- Field Marshal's Dreadweave Shoulders
					i(231584), -- Field Marshal's Coronal
					i(231585), -- Marshal's Dreadweave Boots
					i(231586), -- Marshal's Dreadweave Gloves
					i(231587), -- Marshal's Dreadweave Leggings
					-- Rare set
					i(227091), -- Lieutenant Commander's Dreadweave Spaulders
					i(227093), -- Lieutenant Commander's Dreadweave Cowl
					-- Knight-Captain (Dreadweave)
					i(227095), -- Knight-Captain's Dreadweave Legguards
					i(227096), -- Knight-Captain's Dreadweave Tunic
					-- Knight-Lieutenant (Dreadweave)
					i(227100), -- Knight-Lieutenant's Dreadweave Handwraps
					i(227101), -- Knight-Lieutenant's Dreadweave Walkers
				}));
				cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
					-- Epic set
					i(231536), -- Field Marshal's Plate Armor
					i(231537), -- Field Marshal's Plate Shoulderguards
					i(231538), -- Field Marshal's Plate Helm
					i(231539), -- Marshal's Plate Boots
					i(231540), -- Marshal's Plate Legguards
					i(231541), -- Marshal's Plate Gauntlets
					-- Rare set
					i(227044), -- Lieutenant Commander's Plate Helm
					i(227045), -- Lieutenant Commander's Plate Shoulders
					-- Knight-Captain (Plate)
					i(227046), -- Knight-Captain's Plate Hauberk
					i(227047), -- Knight-Captain's Plate Leggings
					-- Knight-Lieutenant (Plate)
					i(227052), -- Knight-Lieutenant's Plate Greaves
					i(227053), -- Knight-Lieutenant's Plate Gauntlets
				}));

				-- Back
				moh(1, i(16342)),	-- Sergeant's Cape (58)
				moh(1, i(18441)),	-- Sergeant's Cape (45)
				moh(1, i(18440)),	-- Sergeant's Cape (30)

				-- Wrist
				i(216699, {	-- Sergeant Major's Chain Armguards (58)
					["classes"] = { HUNTER, SHAMAN },
				}),
				i(18449, {	-- Sergeant Major's Chain Armguards (45)
					["classes"] = { HUNTER, SHAMAN },
				}),
				i(216698, {	-- Sergeant Major's Dragonhide Armsplints (58)
					["classes"] = { DRUID },
				}),
				i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
					["classes"] = { DRUID },
				}),
				i(18452, {	-- Sergeant Major's Leather  (58)
					["classes"] = { ROGUE },
				}),
				i(216700, {	-- Sergeant Major's Leather Armsplints (45)
					["classes"] = { ROGUE },
				}),
				i(216701, {	-- Sergeant Major's Plate Wristguards (58)
					["classes"] = { PALADIN, WARRIOR },
				}),
				i(18447, {	-- Sergeant Major's Plate Wristguards (45)
					["classes"] = { PALADIN, WARRIOR },
				}),
				i(216702, {	-- Sergeant Major's Silk Cuffs (58)
					["classes"] = { MAGE, PRIEST, WARLOCK },
				}),
				i(18457, {	-- Sergeant Major's Silk Cuffs (45)
					["classes"] = { MAGE, PRIEST, WARLOCK },
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
				-- #ELSE
				n(WEAPONS, {
					moh(2, i(18825)),	-- Grand Marshal's Aegis
					moh(5, i(18867)),	-- Grand Marshal's Battle Hammer
					moh(5, i(18833)),	-- Grand Marshal's Bullseye
					moh(5, i(18876)),	-- Grand Marshal's Claymore
					moh(5, i(23455)),	-- Grand Marshal's Demolisher
					moh(5, i(18838)),	-- Grand Marshal's Dirk
					moh(5, i(18869)),	-- Grand Marshal's Glaive
					moh(5, i(18855)),	-- Grand Marshal's Hand Cannon
					moh(5, i(18827)),	-- Grand Marshal's Handaxe
					moh(5, i(12584)),	-- Grand Marshal's Longsword
					moh(5, i(23451)),	-- Grand Marshal's Mageblade
					moh(5, i(18865)),	-- Grand Marshal's Punisher
					moh(5, i(18847)),	-- Grand Marshal's Razor Hand Blade
					moh(5, i(18836)),	-- Grand Marshal's Repeater
					moh(5, i(18843)),	-- Grand Marshal's Right Hand Blade
					moh(5, i(18873)),	-- Grand Marshal's Stave
					moh(5, i(18830)),	-- Grand Marshal's Sunderer
					moh(5, i(23456)),	-- Grand Marshal's Swiftblade
					moh(2, i(23452)),	-- Grand Marshal's Tome of Power
					moh(2, i(23453)),	-- Grand Marshal's Tome of Restoration
					moh(5, i(23454)),	-- Grand Marshal's Warhammer
				}),
				cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
					-- Epic set
					moh(3, i(16451)),	-- Field Marshal's Dragonhide Helmet
					moh(2, i(16449)),	-- Field Marshal's Dragonhide Spaulders
					moh(3, i(16452)),	-- Field Marshal's Dragonhide Breastplate
					moh(2, i(16448)),	-- Marshal's Dragonhide Gauntlets
					moh(3, i(16450)),	-- Marshal's Dragonhide Legguards
					moh(2, i(16459)),	-- Marshal's Dragonhide Boots
					-- Rare set
					moh(3, i(23308)),	-- Lieutenant Commander's Dragonhide Headguard
					moh(2, i(23309)),	-- Lieutenant Commander's Dragonhide Shoulders
					moh(3, i(23294)),	-- Knight-Captain's Dragonhide Chestpiece
					moh(2, i(23280)),	-- Knight-Lieutenant's Dragonhide Grips
					moh(3, i(23295)),	-- Knight-Captain's Dragonhide Leggings
					moh(2, i(23281)),	-- Knight-Lieutenant's Dragonhide Treads
				}));
				cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
					-- Epic set
					moh(3, i(16465)),	-- Field Marshal's Chain Helm
					moh(2, i(16468)),	-- Field Marshal's Chain Spaulders
					moh(3, i(16466)),	-- Field Marshal's Chain Breastplate
					moh(2, i(16463)), 	-- Marshal's Chain Grips
					moh(3, i(16467)),	-- Marshal's Chain Legguards
					moh(2, i(16462)),	-- Marshal's Chain Boots
					-- Rare set
					moh(3, i(23306)),	-- Lieutenant Commander's Chain Helm
					moh(2, i(23307)),	-- Lieutenant Commander's Chain Shoulders
					moh(3, i(23292)),	-- Knight-Captain's Chain Hauberk
					moh(2, i(23279)),	-- Knight-Lieutenant's Chain Vices
					moh(3, i(23293)),	-- Knight-Captain's Chain Legguards
					moh(2, i(23278)),	-- Knight-Lieutenant's Chain Greaves
				})),
				cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
					-- Epic set
					moh(3, i(16441)),	-- Field Marshal's Coronet
					moh(2, i(16444)),	-- Field Marshal's Silk Spaulders
					moh(3, i(16443)),	-- Field Marshal's Silk Vestments
					moh(2, i(16440)),	-- Marshal's Silk Gloves
					moh(3, i(16442)),	-- Marshal's Silk Leggings
					moh(2, i(16437)),	-- Marshal's Silk Footwraps
					-- Rare set
					moh(3, i(23318)),	-- Lieutenant Commander's Silk Cowl
					moh(2, i(23319)),	-- Lieutenant Commander's Silk Mantle
					moh(3, i(23305)),	-- Knight-Captain's Silk Tunic
					moh(2, i(23290)),	-- Knight-Lieutenant's Silk Handwraps
					moh(3, i(23304)),	-- Knight-Captain's Silk Legguards
					moh(2, i(23291)),	-- Knight-Lieutenant's Silk Walkers
				}));
				cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
					-- Epic set
					moh(3, i(16474)),	-- Field Marshal's Lamellar Faceguard
					moh(2, i(16476)),	-- Field Marshal's Lamellar Pauldrons
					moh(3, i(16473)),	-- Field Marshal's Lamellar Chestplate
					moh(2, i(16471)),	-- Marshal's Lamellar Gloves
					moh(3, i(16475)),	-- Marshal's Lamellar Legplates
					moh(2, i(16472)),	-- Marshal's Lamellar Boots
					-- Rare set
					moh(3, i(23276)),	-- Lieutenant Commander's Lamellar Headguard
					moh(2, i(23277)),	-- Lieutenant Commander's Lamellar Shoulders
					moh(3, i(23272)),	-- Knight-Captain's Lamellar Breastplate
					moh(2, i(23274)),	-- Knight-Lieutenant's Lamellar Gauntlets
					moh(3, i(23273)),	-- Knight-Captain's Lamellar Leggings
					moh(2, i(23275)),	-- Knight-Lieutenant's Lamellar Sabatons
				}));
				cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
					-- Epic set
					moh(3, i(17602)),	-- Field Marshal's Headdress
					moh(2, i(17604)),	-- Field Marshal's Satin Mantle
					moh(3, i(17605)),	-- Field Marshal's Satin Vestments
					moh(2, i(17608)),	-- Marshal's Satin Gloves
					moh(3, i(17603)),	-- Marshal's Satin Pants
					moh(2, i(17607)),	-- Marshal's Satin Sandals
					-- Rare set
					moh(3, i(23316)),	-- Lieutenant Commander's Satin Hood
					moh(2, i(23317)),	-- Lieutenant Commander's Satin Mantle
					moh(3, i(23303)),	-- Knight-Captain's Satin Tunic
					moh(2, i(23288)),	-- Knight-Lieutenant's Satin Handwraps
					moh(3, i(23302)),	-- Knight-Captain's Satin Legguards
					moh(2, i(23289)),	-- Knight-Lieutenant's Satin Walkers
				}));
				cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
					-- Epic set
					moh(3, i(16455)),	-- Field Marshal's Leather Mask
					moh(2, i(16457)),	-- Field Marshal's Leather Epaulets
					moh(3, i(16453)),	-- Field Marshal's Leather Chestpiece
					moh(2, i(16454)),	-- Marshal's Leather Handgrips
					moh(3, i(16456)),	-- Marshal's Leather Leggings
					moh(2, i(16446)),	-- Marshal's Leather Footguards
					-- Rare set
					moh(3, i(23312)),	-- Lieutenant Commander's Leather Helm
					moh(2, i(23313)),	-- Lieutenant Commander's Leather Shoulders
					moh(3, i(23298)),	-- Knight-Captain's Leather Chestpiece
					moh(2, i(23284)),	-- Knight-Lieutenant's Leather Grips
					moh(3, i(23299)),	-- Knight-Captain's Leather Legguards
					moh(2, i(23285)),	-- Knight-Lieutenant's Leather Walkers
				})),
				cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
					-- Epic set
					moh(3, i(29610)),	-- Field Marshal's Mail Helm
					moh(2, i(29611)),	-- Field Marshal's Mail Spaulders
					moh(3, i(29609)),	-- Field Marshal's Mail Armor
					moh(2, i(29607)),	-- Marshal's Mail Gauntlets
					moh(3, i(29608)),	-- Marshal's Mail Leggings
					moh(2, i(29606)),	-- Marshal's Mail Boots
					-- Rare set
					moh(3, i(29598)),	-- Lieutenant Commander's Mail Headguard
					moh(2, i(29599)),	-- Lieutenant Commander's Mail Pauldrons
					moh(3, i(29596)),	-- Knight-Captain's Mail Hauberk
					moh(2, i(29595)),	-- Knight-Lieutenant's Mail Vices
					moh(3, i(29597)),	-- Knight-Captain's Mail Legguards
					moh(2, i(29594)),	-- Knight-Lieutenant's Mail Greaves
				}));
				cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
					-- Epic set
					moh(3, i(17578)),	-- Field Marshal's Coronal
					moh(2, i(17580)),	-- Field Marshal's Dreadweave Shoulders
					moh(3, i(17581)),	-- Field Marshal's Dreadweave Robe
					moh(2, i(17584)),	-- Marshal's Dreadweave Gloves
					moh(3, i(17579)),	-- Marshal's Dreadweave Leggings
					moh(2, i(17583)),	-- Marshal's Dreadweave Boots
					-- Rare set
					moh(3, i(23310)),	-- Lieutenant Commander's Dreadweave Cowl
					moh(2, i(23311)),	-- Lieutenant Commander's Dreadweave Spaulders
					moh(3, i(23297)),	-- Knight-Captain's Dreadweave Tunic
					moh(2, i(23282)),	-- Knight-Lieutenant's Dreadweave Handwraps
					moh(3, i(23296)),	-- Knight-Captain's Dreadweave Legguards
					moh(2, i(23283)),	-- Knight-Lieutenant's Dreadweave Walkers
				}));
				cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
					-- Epic set
					moh(3, i(16478)),	-- Field Marshal's Plate Helm
					moh(2, i(16480)),	-- Field Marshal's Plate Shoulderguards
					moh(3, i(16477)),	-- Field Marshal's Plate Armor
					moh(2, i(16484)),	-- Marshal's Plate Gauntlets
					moh(3, i(16479)),	-- Marshal's Plate Legguards
					moh(2, i(16483)),	-- Marshal's Plate Boots
					-- Rare set
					moh(3, i(23314)),	-- Lieutenant Commander's Plate Helmet
					moh(2, i(23315)),	-- Lieutenant Commander's Plate Shoulders
					moh(3, i(23300)),	-- Knight-Captain's Plate Hauberk
					moh(2, i(23286)),	-- Knight-Lieutenant's Plate Gauntlets
					moh(3, i(23301)),	-- Knight-Captain's Plate Leggings
					moh(2, i(23287)),	-- Knight-Lieutenant's Plate Greaves
				}));

				-- Back
				moh(1, i(16342)),	-- Sergeant's Cape (58)
				moh(1, i(18441)),	-- Sergeant's Cape (45)
				moh(1, i(18440)),	-- Sergeant's Cape (30)

				-- Wrist
				moh(1, i(18448, {	-- Sergeant Major's Chain Armguards (58)
					["classes"] = { HUNTER, SHAMAN },
				})),
				moh(1, i(18449, {	-- Sergeant Major's Chain Armguards (45)
					["classes"] = { HUNTER, SHAMAN },
				})),
				moh(1, i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
					["classes"] = { DRUID },
				})),
				moh(1, i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
					["classes"] = { DRUID },
				})),
				moh(1, i(18452, {	-- Sergeant Major's Leather  (58)
					["classes"] = { ROGUE },
				})),
				moh(1, i(18453, {	-- Sergeant Major's Leather Armsplints (45)
					["classes"] = { ROGUE },
				})),
				moh(1, i(18445, {	-- Sergeant Major's Plate Wristguards (58)
					["classes"] = { PALADIN, WARRIOR },
				})),
				moh(1, i(18447, {	-- Sergeant Major's Plate Wristguards (45)
					["classes"] = { PALADIN, WARRIOR },
				})),
				moh(1, i(18456, {	-- Sergeant Major's Silk Cuffs (58)
					["classes"] = { MAGE, PRIEST, WARLOCK },
				})),
				moh(1, i(18457, {	-- Sergeant Major's Silk Cuffs (45)
					["classes"] = { MAGE, PRIEST, WARLOCK },
				})),

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
				-- #ENDIF
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
				-- #IF SEASON_OF_DISCOVERY
				n(WEAPONS, {
					i(234542),	-- High Warlord's Greatsword
					i(234543),	-- High Warlord's Battle Axe
					i(234545),	-- High Warlord's Pulverizer
					i(234546),	-- High Warlord's Destroyer
					i(234547),	-- High Warlord's Pig Sticker
					i(234548),	-- High Warlord's Pig Poker
					i(234549),	-- High Warlord's War Staff
					i(234550),	-- High Warlord's Spellblade
					i(234551),	-- High Warlord's Battle Mace
					i(234552),	-- High Warlord's Blade
					i(234553),	-- High Warlord's Quickblade
					i(234554),	-- High Warlord's Cleaver
					i(234555),	-- High Warlord's Bludgeon
					i(234556),	-- High Warlord's Razor
					i(234557),	-- High Warlord's Right Claw
					i(234558),	-- High Warlord's Left Claw
					i(234559),	-- High Warlord's Recurve
					i(234560),	-- High Warlord's Crossbow
					i(234561),	-- High Warlord's Street Sweeper
					i(234562),	-- High Warlord's Shield Wall
					i(234563),	-- High Warlord's Tome of Destruction
					i(234564),	-- High Warlord's Tome of Mending
				}),
				cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
					-- Epic set
					i(231672), -- Warlord's Dragonhide Pauldrons
					i(231674), -- Warlord's Dragonhide Tunic
					i(231675), -- Warlord's Dragonhide Headdress
					i(231678), -- Warlord's Dragonhide Helm
					i(231679), -- Warlord's Dragonhide Armor
					i(231681), -- Warlord's Dragonhide Spaulders
					i(231684), -- Warlord's Dragonhide Shoulders
					i(231686), -- Warlord's Dragonhide Chestpiece
					i(231687), -- Warlord's Dragonhide Headguard
					i(231671), -- General's Dragonhide Greaves
					i(231673), -- General's Dragonhide Legguards
					i(231676), -- General's Dragonhide Gauntlets
					i(231677), -- General's Dragonhide Gloves
					i(231680), -- General's Dragonhide Pants
					i(231682), -- General's Dragonhide Boots
					i(231683), -- General's Dragonhide Treads
					i(231685), -- General's Dragonhide Leggings
					i(231688), -- General's Dragonhide Grips
					-- Rare set
					i(227174), -- Champion's Dragonhide Headguard
					i(227175), -- Champion's Dragonhide Shoulders
					i(227184), -- Champion's Dragonhide Spaulders
					i(227186), -- Champion's Dragonhide Helm
					i(227205), -- Champion's Dragonhide Headdress
					i(227207),	-- Champion's Dragonhide Pauldrons
					-- Legionnaire
					i(227177), -- Legionnaire's Dragonhide Leggings
					i(227179), -- Legionnaire's Dragonhide Chestpiece
					i(227185), -- Legionnaire's Dragonhide Pants
					i(227189), -- Legionnaire's Dragonhide Armor
					i(227202), -- Legionnaire's Dragonhide Tunic
					i(227206), -- Legionnaire's Dragonhide Legguards
					-- Blood Guard
					i(227180), -- Blood Guard's Dragonhide Grips
					i(227181), -- Blood Guard's Dragonhide Treads
					i(227187), -- Blood Guard's Dragonhide Gloves
					i(227188), -- Blood Guard's Dragonhide Boots
					i(227203), -- Blood Guard's Dragonhide Greaves
					i(227204), -- Blood Guard's Dragonhide Gauntlets
				}));
				cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
					-- Epic set
					i(231565), -- Warlord's Chain Pauldrons
					i(231566), -- Warlord's Chain Armor
					i(231568), -- Warlord's Chain Greathelm
					i(231571), -- Warlord's Chain Helm
					i(231572), -- Warlord's Chain Shoulders
					i(231573), -- Warlord's Chain Hauberk
					i(231564), -- General's Chain Sabatons
					i(231567), -- General's Chain Legplates
					i(231569), -- General's Chain Grips
					i(231570), -- General's Chain Greaves
					i(231574), -- General's Chain Legguards
					i(231575), -- General's Chain Vices
					-- Rare set
					i(227067), -- Champion's Chain Helm
					i(227069), -- Champion's Chain Shoulders
					i(227078), -- Champion's Chain Pauldrons
					i(227080), -- Champion's Chain Greathelm
					-- Legionnaire (Chain)
					i(227071), -- Legionnaire's Chain Hauberk
					i(227073), -- Legionnaire's Chain Legguards
					i(227079), -- Legionnaire's Chain Legplates
					i(227083), -- Legionnaire's Chain Armor
					-- Blood Guard (Chain)
					i(227074), -- Blood Guard's Chain Greaves
					i(227075), -- Blood Guard's Chain Vices
					i(227081), -- Blood Guard's Chain Grips
					i(227082), -- Blood Guard's Chain Sabatons
				})),
				cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
					-- Epic set
					i(231594), -- Warlord's Silk Amice
					i(231596), -- Warlord's Silk Raiment
					i(231601), -- Warlord's Silk Cowl
					i(231595), -- General's Silk Trousers
					i(231597), -- General's Silk Boots
					i(231598), -- General's Silk Gloves
					i(231599), -- General's Silk Gauntlets
					i(231600), -- General's Silk Handwraps
					-- Rare set
					i(227104), -- Champion's Silk Mantle
					i(227105), -- Champion's Silk Cowl
					-- Legionnaire (Silk)
					i(227106), -- Legionnaire's Silk Tunic
					i(227107), -- Legionnaire's Silk Legguards
					-- Blood Guard (Silk)
					i(227110), -- Blood Guard's Silk Walkers
					i(227111), -- Blood Guard's Silk Handwraps
					i(227115), -- Blood Guard's Silk Gauntlets
					i(227117), -- Blood Guard's Silk Gloves
				}));
				cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
					-- Epic set
					i(231611), -- Warlord's Satin Epaulets
					i(231612), -- Warlord's Satin Robes
					i(231615), -- Warlord's Satin Crown
					i(231631), -- Warlord's Satin Mantle
					i(231632), -- Warlord's Satin Tunic
					i(231635), -- Warlord's Satin Hood
					i(231610), -- General's Satin Treads
					i(231613), -- General's Satin Grips
					i(231614), -- General's Satin Leggings
					i(231630), -- General's Satin Walkers
					i(231633), -- General's Satin Handwraps
					i(231634), -- General's Satin Legguards
					-- Rare set
					i(227118), -- Champion's Satin Hood
					i(227120), -- Champion's Satin Mantle
					i(227130), -- Champion's Satin Epaulets
					i(227132), -- Champion's Satin Crown
					-- Legionnaire (Satin)
					i(227123), -- Legionnaire's Satin Legguards
					i(227124), -- Legionnaire's Satin Tunic
					i(227131), -- Legionnaire's Satin Leggings
					i(227135), -- Legionnaire's Satin Robe
					-- Blood Guard (Satin)
					i(227126), -- Blood Guard's Satin Handwraps
					i(227127), -- Blood Guard's Satin Walkers
					i(227133), -- Blood Guard's Satin Grips
					i(227134), -- Blood Guard's Satin Treads
				}));
				cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
					-- Epic set
					i(231549), -- Warlord's Leather Breastplate
					i(231551), -- Warlord's Leather Spaulders
					i(231553), -- Warlord's Leather Helm
					i(231552), -- General's Leather Treads
					i(231554), -- General's Leather Legguards
					i(231555), -- General's Leather Mitts
					-- Rare set
					i(227056), -- Champion's Leather Shoulders
					i(227057), -- Champion's Leather Helm
					-- Legionnaire (Leather)
					i(227059), -- Legionnaire's Leather Legguards
					i(227060), -- Legionnaire's Leather Chestpiece
					-- Blood Guard (Leather)
					i(227062), -- Blood Guard's Leather Walkers
					i(227063), -- Blood Guard's Leather Grips
				})),
				cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
					-- Epic set
					i(231653), -- Warlord's Mail Hauberk
					i(231654), -- Warlord's Mail Pauldrons
					i(231657), -- Warlord's Mail Headguard
					i(231659), -- Warlord's Mail Spaulders
					i(231662), -- Warlord's Mail Breastplate
					i(231663), -- Warlord's Mail Helm
					i(231665), -- Warlord's Mail Epaulets
					i(231668), -- Warlord's Mail Chestguard
					i(231669), -- Warlord's Mail Skullcap
					i(231655), -- General's Mail Vices
					i(231656), -- General's Mail Greaves
					i(231658), -- General's Mail Legguards
					i(231660), -- General's Mail Gauntlets
					i(231661), -- General's Mail Sabatons
					i(231664), -- General's Mail Leggings
					i(231666), -- General's Mail Gloves
					i(231667), -- General's Mail Boots
					i(231670), -- General's Mail Pants
					-- Rare set
					i(227154),	-- Champion's Mail Pauldrons
					i(227155),	-- Champion's Mail Headguard
					i(227156),	-- Legionnaire's Mail Legguards
					i(227157),	-- Legionnaire's Mail Hauberk
					i(227158),	-- Blood Guard's Mail Greaves
					i(227159),	-- Blood Guard's Mail Vices
					i(227160),	-- Champion's Mail Spaulders
					i(227161),	-- Legionnaire's Mail Leggings
					i(227162),	-- Champion's Mail Helm
					i(227163),	-- Blood Guard's Mail Gauntlets
					i(227164),	-- Blood Guard's Mail Sabatons
					i(227165),	-- Legionnaire's Mail Breastplate
					i(227166),	-- Champion's Mail Epaulets
					i(227167),	-- Legionnaire's Mail Pants
					i(227168),	-- Champion's Mail Skullcap
					i(227169),	-- Blood Guard's Mail Gloves
					i(227170),	-- Blood Guard's Mail Boots
					i(227171),	-- Legionnaire's Mail Chestguard
				}));
				cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
					-- Epic set
					i(231590), -- Warlord's Dreadweave Hood
					i(231591), -- Warlord's Dreadweave Robe
					i(231592), -- Warlord's Dreadweave Mantle
					i(231588), -- General's Dreadweave Pants
					i(231589), -- General's Dreadweave Gloves
					i(231593), -- General's Dreadweave Boots
					-- Rare set
					i(227090), -- Champion's Dreadweave Cowl
					i(227092), -- Champion's Dreadweave Spaulders
					-- Legionnaire (Dreadweave)
					i(227094), -- Legionnaire's Dreadweave Tunic
					i(227097), -- Legionnaire's Dreadweave Legguards
					-- Blood Guard (Dreadweave)
					i(227098), -- Blood Guard's Dreadweave Walkers
					i(227099), -- Blood Guard's Dreadweave Handwraps
				}));
				cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
					-- Epic set
					i(231530), -- Warlord's Plate Armor
					i(231534), -- Warlord's Plate Shoulders
					i(231535), -- Warlord's Plate Headpiece
					i(231531), -- General's Plate Boots
					i(231532), -- General's Plate Gauntlets
					i(231533), -- General's Plate Leggings
					-- Rare set
					i(227042), -- Champion's Plate Shoulders
					i(227043), -- Champion's Plate Helm
					-- Legionnaire (Plate)
					i(227048), -- Legionnaire's Plate Leggings
					i(227049), -- Legionnaire's Plate Hauberk
					-- Blood Guard (Plate)
					i(227050), -- Blood Guard's Plate Gauntlets
					i(227051), -- Blood Guard's Plate Greaves
				})),

				-- Back
				i(18461),	-- Sergeant's Cloak (58)
				i(16341),	-- Sergeant's Cloak (45)
				i(18427),	-- Sergeant's Cloak (30)

				-- Wrist
				i(216704, { ["classes"] = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (58)
				i(18436, { ["classes"] = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (45)
				i(216706, { ["classes"] = { ROGUE }					}),	-- First Sergeant's Leather Armguards (58)
				i(18435, { ["classes"] = { ROGUE }					}),	-- First Sergeant's Leather Armguards (45)
				i(216703, { ["classes"] = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (58)
				i(18432, { ["classes"] = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (45)
				i(216705, { ["classes"] = { PALADIN, WARRIOR } 		}),	-- First Sergeant's Plate Bracers (58)
				i(18430, { ["classes"] = { PALADIN, WARRIOR }		}),	-- First Sergeant's Plate Bracers (45)
				i(216707, { ["classes"] = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (58)
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
				-- #ELSE
				n(WEAPONS, {
					moh(5, i(18831)),	-- High Warlord's Battle Axe
					moh(5, i(23464)),	-- High Warlord's Battle Mace
					moh(5, i(16345)),	-- High Warlord's Blade
					moh(5, i(18866)),	-- High Warlord's Bludgeon
					moh(5, i(18828)),	-- High Warlord's Cleaver
					moh(5, i(18837)),	-- High Warlord's Crossbow
					moh(5, i(23465)),	-- High Warlord's Destroyer
					moh(5, i(18877)),	-- High Warlord's Greatsword
					moh(5, i(18871)),	-- High Warlord's Pig Sticker
					moh(5, i(18868)),	-- High Warlord's Pulverizer
					moh(5, i(23467)),	-- High Warlord's Quickblade
					moh(5, i(18835)),	-- High Warlord's Recurve
					moh(5, i(18840)),	-- High Warlord's Razor
					moh(5, i(18848)),	-- High Warlord's Razor Claw
					moh(5, i(18844)),	-- High Warlord's Right Claw
					moh(2, i(18826)),	-- High Warlord's Shield Wall
					moh(5, i(23466)),	-- High Warlord's Spellblade
					moh(5, i(18860)),	-- High Warlord's Street Sweeper
					moh(2, i(23468)),	-- High Warlord's Tome of Destruction
					moh(2, i(23469)),	-- High Warlord's Tome of Mending
					moh(5, i(18874)),	-- High Warlord's War Staff
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
				-- #ENDIF
			},
		})),
		n(QUESTS, {
			q(8371, {	-- Concerted Efforts
				["qg"] = 15351,	-- Alliance Brigadier General
				["coords"] = {
					{ 57.8, 34.6, DARNASSUS },
					{ 69.8, 90.0, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
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
					{ 69.8, 90.0, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
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
