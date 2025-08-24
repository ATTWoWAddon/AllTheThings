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
