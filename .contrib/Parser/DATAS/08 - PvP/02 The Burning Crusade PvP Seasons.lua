-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
local function MarkOfWHOOOWHATNow(t)
	-- #if BEFORE LEGION
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
	return t;
end
-- #if BEFORE WRATH
local SEASONONE_GLADIATOR_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_TWO .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. TBC_PHASE_ONE .. [[;
	end
end]];
local MERCILESS_GLADIATOR_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FOUR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. TBC_PHASE_TWO .. [[;
	end
end]];
local VENGEFUL_GLADIATOR_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FIVE .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. TBC_PHASE_THREE .. [[;
	end
end]];
local BRUTAL_GLADIATOR_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_ONE .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. TBC_PHASE_FIVE .. [[;
	end
end]];
-- #endif
root(ROOTS.PVP, applyclassicphase(TBC_PHASE_ONE, run(MarkOfWHOOOWHATNow, pvp(expansion(EXPANSION.TBC, {
	n(PVP_HONOR, {
		-- Players have said that the Alliance versions were available through Cata.
		n(FACTION_HEADER_ALLIANCE, {
			["races"] = ALLIANCE_ONLY,
			["timeline"] = {
				-- Wouter NOTE: these were never removed in Classic and are still available on vendors at the PvP area in capital cities
				-- #if ANYCLASSIC
				ADDED_2_0_1,
				-- #else
				ADDED_2_0_1, REMOVED_5_0_4
				-- #endif
			},
			["groups"] = {
				n(WEAPONS, {
					-- Alliance
					i(28940),	-- Grand Marshal's Barricade
					i(28941),	-- Grand Marshal's Battletome
					i(28950),	-- Grand Marshal's Bonecracker
					i(28942),	-- Grand Marshal's Bonegrinder
					i(28944),	-- Grand Marshal's Cleaver
					i(28945),	-- Grand Marshal's Decapitator
					i(28947),	-- Grand Marshal's Fleshslicer / Grand Marshal's Left Ripper [TBC]
					i(28946),	-- Grand Marshal's Hacker
					i(28960),	-- Grand Marshal's Heavy Crossbow
					i(28948),	-- Grand Marshal's Maul
					i(28949),	-- Grand Marshal's Painsaw
					i(28951),	-- Grand Marshal's Pummeler
					i(28952),	-- Grand Marshal's Quickblade
					i(28953),	-- Grand Marshal's Ripper / Grand Marshal's Right Ripper [TBC]
					i(28954),	-- Grand Marshal's Shanker
					i(28955),	-- Grand Marshal's Shiv
					i(28956),	-- Grand Marshal's Slicer
					i(28957),	-- Grand Marshal's Spellblade
					i(28943),	-- Grand Marshal's Warblade
					i(28959),	-- Grand Marshal's War Staff
				}),
				cl(WARRIOR, {
					-- Grand Marshal's Plate [Warrior]
					i(28701),	-- Grand Marshal's Plate Helm
					i(28703),	-- Grand Marshal's Plate Shoulders
					i(28699),	-- Grand Marshal's Plate Chestpiece
					i(28700),	-- Grand Marshal's Plate Gauntlets
					i(28702),	-- Grand Marshal's Plate Legguards
				}),
				cl(PALADIN, {
					-- Grand Marshal's Lamellar [Paladin]
					i(28681),	-- Grand Marshal's Lamellar Helm
					i(28683),	-- Grand Marshal's Lamellar Shoulders
					i(28679),	-- Grand Marshal's Lamellar Chestpiece
					i(28680),	-- Grand Marshal's Lamellar Gauntlets
					i(28724),	-- Grand Marshal's Lamellar Legguards

					-- Grand Marshal's Ornamented [Paladin]
					i(31632),	-- Grand Marshal's Ornamented Headguard
					i(31634),	-- Grand Marshal's Ornamented Spaulders
					i(31630),	-- Grand Marshal's Ornamented Chestplate
					i(31631),	-- Grand Marshal's Ornamented Gloves
					i(31633),	-- Grand Marshal's Ornamented Leggings

					-- Grand Marshal's Scaled [Paladin]
					i(28711),	-- Grand Marshal's Scaled Helm
					i(28713),	-- Grand Marshal's Scaled Shoulders
					i(28709),	-- Grand Marshal's Scaled Chestpiece
					i(28710),	-- Grand Marshal's Scaled Gauntlets
					i(28712),	-- Grand Marshal's Scaled Legguards
				}),
				cl(HUNTER, {
					-- Grand Marshal's Chain [Hunter]
					i(28615),	-- Grand Marshal's Chain Helm
					i(28617),	-- Grand Marshal's Chain Spaulders
					i(28613),	-- Grand Marshal's Chain Armor
					i(28614),	-- Grand Marshal's Chain Gauntlets
					i(28616),	-- Grand Marshal's Chain Leggings
				}),
				cl(ROGUE, {
					-- Grand Marshal's Leather [Rogue]
					i(28685),	-- Grand Marshal's Leather Helm
					i(28687),	-- Grand Marshal's Leather Spaulders
					i(28688),	-- Grand Marshal's Leather Tunic
					i(28684),	-- Grand Marshal's Leather Gloves
					i(28686),	-- Grand Marshal's Leather Legguards
				}),
				cl(PRIEST, {
					-- Grand Marshal's Mooncloth [Priest]
					i(31622),	-- Grand Marshal's Mooncloth Cowl
					i(31624),	-- Grand Marshal's Mooncloth Shoulderpads
					i(31625),	-- Grand Marshal's Mooncloth Vestments
					i(31620),	-- Grand Marshal's Mooncloth Mitts
					i(31623),	-- Grand Marshal's Mooncloth Legguards

					-- Grand Marshal's Satin [Priest]
					i(28705),	-- Grand Marshal's Satin Hood
					i(28707),	-- Grand Marshal's Satin Mantle
					i(28708),	-- Grand Marshal's Satin Robe
					i(28704),	-- Grand Marshal's Satin Gloves
					i(28706),	-- Grand Marshal's Satin Leggings
				}),
				cl(SHAMAN, {
					-- Grand Marshal's Linked [Shaman]
					i(28691),	-- Grand Marshal's Linked Helm
					i(28693),	-- Grand Marshal's Linked Spaulders
					i(28689),	-- Grand Marshal's Linked Armor
					i(28690),	-- Grand Marshal's Linked Gauntlets
					i(28692),	-- Grand Marshal's Linked Leggings

					-- Grand Marshal's Mail [Shaman]
					i(28696),	-- Grand Marshal's Mail Helm
					i(28698),	-- Grand Marshal's Mail Spaulders
					i(28694),	-- Grand Marshal's Mail Armor
					i(28695),	-- Grand Marshal's Mail Gauntlets
					i(28697),	-- Grand Marshal's Mail Leggings

					-- Grand Marshal's Ringmail [Shaman]
					i(31642),	-- Grand Marshal's Ringmail Headpiece
					i(31644),	-- Grand Marshal's Ringmail Shoulders
					i(31640),	-- Grand Marshal's Ringmail Chestguard
					i(31641),	-- Grand Marshal's Ringmail Gloves
					i(31643),	-- Grand Marshal's Ringmail Legguards
				}),
				cl(MAGE, {
					-- Grand Marshal's Silk [Mage]
					i(28715),	-- Grand Marshal's Silk Cowl
					i(28714),	-- Grand Marshal's Silk Amice
					i(28717),	-- Grand Marshal's Silk Raiment
					i(28716),	-- Grand Marshal's Silk Handguards
					i(28718),	-- Grand Marshal's Silk Trousers
				}),
				cl(WARLOCK, {
					-- Grand Marshal's Dreadweave [Warlock]
					i(28625),	-- Grand Marshal's Dreadweave Hood
					i(28627),	-- Grand Marshal's Dreadweave Mantle
					i(28628),	-- Grand Marshal's Dreadweave Robe
					i(28624),	-- Grand Marshal's Dreadweave Gloves
					i(28626),	-- Grand Marshal's Dreadweave Leggings
				}),
				cl(DRUID, {
					-- Grand Marshal's Dragonhide [Druid]
					i(28619),	-- Grand Marshal's Dragonhide Helm
					i(28622),	-- Grand Marshal's Dragonhide Spaulders
					i(28623),	-- Grand Marshal's Dragonhide Tunic
					i(28618),	-- Grand Marshal's Dragonhide Gloves
					i(28620),	-- Grand Marshal's Dragonhide Legguards

					-- Grand Marshal's Kodohide [Druid]
					i(31590),	-- Grand Marshal's Kodohide Helm
					i(31592),	-- Grand Marshal's Kodohide Spaulders
					i(31593),	-- Grand Marshal's Kodohide Tunic
					i(31589),	-- Grand Marshal's Kodohide Gloves
					i(31591),	-- Grand Marshal's Kodohide Legguards

					-- Grand Marshal's Wyrmhide [Druid]
					i(28720),	-- Grand Marshal's Wyrmhide Helm
					i(28722),	-- Grand Marshal's Wyrmhide Spaulders
					i(28723),	-- Grand Marshal's Wyrmhide Tunic
					i(28719),	-- Grand Marshal's Wyrmhide Gloves
					i(28721),	-- Grand Marshal's Wyrmhide Legguards
				}),
			},
		}),
		n(FACTION_HEADER_HORDE, {
			["races"] = HORDE_ONLY,
			["timeline"] = {
				-- Wouter NOTE: these were never removed in Classic and are still available on vendors at the PvP area in capital cities
				-- #if ANYCLASSIC
				ADDED_2_0_1,
				-- #else
				ADDED_2_0_1, REMOVED_3_0_2
				-- #endif
			},
			["groups"] = {
				n(WEAPONS, {
					i(28939),	-- High Warlord's Barricade
					i(28938),	-- High Warlord's Battletome
					i(28924),	-- High Warlord's Bonecracker
					i(28917),	-- High Warlord's Bonegrinder
					i(28293),	-- High Warlord's Claymore
					i(28920),	-- High Warlord's Cleaver
					i(28918),	-- High Warlord's Decapitator
					i(28922),	-- High Warlord's Fleshslicer / High Warlord's Left Ripper [TBC]
					i(28921),	-- High Warlord's Hacker
					i(28933),	-- High Warlord's Heavy Crossbow
					i(28919),	-- High Warlord's Maul
					i(28923),	-- High Warlord's Painsaw
					i(28925),	-- High Warlord's Pummeler
					i(28926),	-- High Warlord's Quickblade
					i(28928),	-- High Warlord's Ripper / High Warlord's Right Ripper [TBC]
					i(28929),	-- High Warlord's Shanker
					i(28930),	-- High Warlord's Shiv
					i(28937),	-- High Warlord's Slicer
					i(28931),	-- High Warlord's Spellblade
					i(28935),	-- High Warlord's War Staff
				}),
				cl(WARRIOR, {
					-- High Warlord's Plate [Warrior]
					i(28853),	-- High Warlord's Plate Helm
					i(28855),	-- High Warlord's Plate Shoulders
					i(28851),	-- High Warlord's Plate Chestpiece
					i(28852),	-- High Warlord's Plate Gauntlets
					i(28854),	-- High Warlord's Plate Legguards
				}),
				cl(PALADIN, {
					-- High Warlord's Lamellar [Paladin]
					i(28833),	-- High Warlord's Lamellar Helm
					i(28835),	-- High Warlord's Lamellar Shoulders
					i(28831),	-- High Warlord's Lamellar Chestpiece
					i(28832),	-- High Warlord's Lamellar Gauntlets
					i(28834),	-- High Warlord's Lamellar Legguards

					-- High Warlord's Ornamented [Paladin]
					i(31637),	-- High Warlord's Ornamented Headguard
					i(31639),	-- High Warlord's Ornamented Spaulders
					i(31635),	-- High Warlord's Ornamented Chestplate
					i(31636),	-- High Warlord's Ornamented Gloves
					i(31638),	-- High Warlord's Ornamented Leggings

					-- High Warlord's Scaled [Paladin]
					i(28863),	-- High Warlord's Scaled Helm
					i(28865),	-- High Warlord's Scaled Shoulders
					i(28861),	-- High Warlord's Scaled Chestpiece
					i(28862),	-- High Warlord's Scaled Gauntlets
					i(28864),	-- High Warlord's Scaled Legguards
				}),
				cl(HUNTER, {
					-- High Warlord's Chain [Hunter]
					i(28807),	-- High Warlord's Chain Helm
					i(28809),	-- High Warlord's Chain Spaulders
					i(28805),	-- High Warlord's Chain Armor
					i(28806),	-- High Warlord's Chain Gauntlets
					i(28808),	-- High Warlord's Chain Leggings
				}),
				cl(ROGUE, {
					-- High Warlord's Leather [Rogue]
					i(28837),	-- High Warlord's Leather Helm
					i(28839),	-- High Warlord's Leather Spaulders
					i(28840),	-- High Warlord's Leather Tunic
					i(28836),	-- High Warlord's Leather Gloves
					i(28838),	-- High Warlord's Leather Legguards
				}),
				cl(PRIEST, {
					-- High Warlord's Mooncloth [Priest]
					i(31626),	-- High Warlord's Mooncloth Cowl
					i(31628),	-- High Warlord's Mooncloth Shoulderpads
					i(31629),	-- High Warlord's Mooncloth Vestments
					i(31621),	-- High Warlord's Mooncloth Mitts
					i(31627),	-- High Warlord's Mooncloth Legguards

					-- High Warlord's Satin [Priest]
					i(28857),	-- High Warlord's Satin Hood
					i(28859),	-- High Warlord's Satin Mantle
					i(28860),	-- High Warlord's Satin Robe
					i(28856),	-- High Warlord's Satin Gloves
					i(28858),	-- High Warlord's Satin Leggings
				}),
				cl(SHAMAN, {
					-- High Warlord's Linked [Shaman]
					i(28843),	-- High Warlord's Linked Helm
					i(28845),	-- High Warlord's Linked Spaulders
					i(28841),	-- High Warlord's Linked Armor
					i(28842),	-- High Warlord's Linked Gauntlets
					i(28844),	-- High Warlord's Linked Leggings

					-- High Warlord's Mail [Shaman]
					i(28848),	-- High Warlord's Mail Helm
					i(28850),	-- High Warlord's Mail Spaulders
					i(28846),	-- High Warlord's Mail Armor
					i(28847),	-- High Warlord's Mail Gauntlets
					i(28849),	-- High Warlord's Mail Leggings

					-- High Warlord's Ringmail [Shaman]
					i(31648),	-- High Warlord's Ringmail Headpiece
					i(31650),	-- High Warlord's Ringmail Shoulders
					i(31646),	-- High Warlord's Ringmail Chestguard
					i(31647),	-- High Warlord's Ringmail Gloves
					i(31649),	-- High Warlord's Ringmail Legguards
				}),
				cl(MAGE, {
					-- High Warlord's Silk [Mage]
					i(28867),	-- High Warlord's Silk Cowl
					i(28866),	-- High Warlord's Silk Amice
					i(28869),	-- High Warlord's Silk Raiment
					i(28868),	-- High Warlord's Silk Handguards
					i(28870),	-- High Warlord's Silk Trousers
				}),
				cl(WARLOCK, {
					-- High Warlord's Dreadweave [Warlock]
					i(28818),	-- High Warlord's Dreadweave Hood
					i(28820),	-- High Warlord's Dreadweave Mantle
					i(28821),	-- High Warlord's Dreadweave Robe
					i(28817),	-- High Warlord's Dreadweave Gloves
					i(28819),	-- High Warlord's Dreadweave Leggings
				}),
				cl(DRUID, {
					-- High Warlord's Dragonhide [Druid]
					i(28812),	-- High Warlord's Dragonhide Helm
					i(28814),	-- High Warlord's Dragonhide Spaulders
					i(28815),	-- High Warlord's Dragonhide Tunic
					i(28811),	-- High Warlord's Dragonhide Gloves
					i(28813),	-- High Warlord's Dragonhide Legguards

					-- High Warlord's Kodohide [Druid]
					i(31585),	-- High Warlord's Kodohide Helm
					i(31587),	-- High Warlord's Kodohide Spaulders
					i(31588),	-- High Warlord's Kodohide Tunic
					i(31584),	-- High Warlord's Kodohide Gloves
					i(31586),	-- High Warlord's Kodohide Legguards

					-- High Warlord's Wyrmhide [Druid]
					i(28872),	-- High Warlord's Wyrmhide Helm
					i(28874),	-- High Warlord's Wyrmhide Spaulders
					i(28875),	-- High Warlord's Wyrmhide Tunic
					i(28871),	-- High Warlord's Wyrmhide Gloves
					i(28873),	-- High Warlord's Wyrmhide Legguards
				}),
			},
		}),
	}),
	n(SEASON_GLADIATOR, {
		["timeline"] = { ADDED_2_0_1 },
		["groups"] = {
			n(ACHIEVEMENTS, bubbleDown({
				-- #if BEFORE WRATH
				["OnUpdate"] = SEASONONE_GLADIATOR_ONUPDATE,
				-- #endif
			},{
				["timeline"] = { ADDED_2_0_1, REMOVED_2_1_2 },
				["groups"] = {
					ach(886, {	-- Swift Nether Drake
						["provider"] = { "i", 30609 },	-- Swift Nether Drake
						["filterID"] = MOUNTS,
					}),
					i(30609, {	-- Swift Nether Drake
						["description"] = "Awarded to members of the Arena teams during TBC Season 1 that were in the 0.5% bracket of their battlegroup.",
					}),
					ach(11706, {["timeline"] = {ADDED_7_2_0}}),	-- The Original (PvP Season 1)
				},
			})),
			n(PVP_GLADIATOR, {
				n(WEAPONS, {
					moh(80, iensemble(146651, {	-- Arsenal: Gladiator's Weapons
						["timeline"] = {	-- combined with Season 2
							ADDED_7_2_0,
							REMOVED_7_2_5,
						},
					})),
					moh(5, i(28302)),	-- Gladiator's Bonecracker
					moh(5, i(28299)),	-- Gladiator's Bonegrinder
					moh(5, i(28308)),	-- Gladiator's Cleaver
					moh(5, i(28298)),	-- Gladiator's Decapitator
					moh(2, i(28346)),	-- Gladiator's Endgame
					moh(5, i(28314)),	-- Gladiator's Fleshslicer
					moh(5, i(32450)),	-- Gladiator's Gavel
					moh(5, i(24550)),	-- Gladiator's Greatsword
					moh(5, i(28309)),	-- Gladiator's Hacker
					moh(5, i(28294)),	-- Gladiator's Heavy Crossbow
					moh(5, i(28476)),	-- Gladiator's Maul
					moh(5, i(28300)),	-- Gladiator's Painsaw
					moh(5, i(28305)),	-- Gladiator's Pummeler
					moh(5, i(28307)),	-- Gladiator's Quickblade
					moh(2, i(32452)),	-- Gladiator's Reprieve
					moh(5, i(28313)),	-- Gladiator's Ripper
					moh(5, i(32451)),	-- Gladiator's Salvation
					moh(5, i(28312)),	-- Gladiator's Shanker
					moh(2, i(28358)),	-- Gladiator's Shield Wall
					moh(5, i(28310)),	-- Gladiator's Shiv
					moh(5, i(28295)),	-- Gladiator's Slicer
					moh(5, i(28297)),	-- Gladiator's Spellblade
					moh(5, i(28320)),	-- Gladiator's Touch of Defeat
					moh(5, i(24557)),	-- Gladiator's War Staff
					i(28319, {	-- Gladiator's War Edge
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
				}),
				cl(DRUID, {
					moh(12, iensemble(146609, {	-- Ensemble: Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(28127)),	-- Gladiator's Dragonhide Helm
					moh(2, i(28129)),	-- Gladiator's Dragonhide Spaulders
					moh(3, i(28130)),	-- Gladiator's Dragonhide Tunic
					moh(2, i(28126)),	-- Gladiator's Dragonhide Gloves
					moh(3, i(28128)),	-- Gladiator's Dragonhide Legguards

					moh(3, i(31376)),	-- Gladiator's Kodohide Helm
					moh(2, i(31378)),	-- Gladiator's Kodohide Spaulders
					moh(3, i(31379)),	-- Gladiator's Kodohide Tunic
					moh(2, i(31375)),	-- Gladiator's Kodohide Gloves
					moh(3, i(31377)),	-- Gladiator's Kodohide Legguards

					moh(3, i(28137)),	-- Gladiator's Wyrmhide Helm
					moh(2, i(28139)),	-- Gladiator's Wyrmhide Spaulders
					moh(3, i(28140)),	-- Gladiator's Wyrmhide Tunic
					moh(2, i(28136)),	-- Gladiator's Wyrmhide Gloves
					moh(3, i(28138)),	-- Gladiator's Wyrmhide Legguards
				}),
				cl(HUNTER, {
					moh(12, iensemble(146608, {	-- Ensemble: Gladiator's Chain Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(28331)),	-- Gladiator's Chain Helm
					moh(2, i(28333)),	-- Gladiator's Chain Spaulders
					moh(3, i(28334)),	-- Gladiator's Chain Armor
					moh(2, i(28335)),	-- Gladiator's Chain Gauntlets
					moh(3, i(28332)),	-- Gladiator's Chain Leggings
				}),
				cl(MAGE, {
					moh(12, iensemble(146617, {	-- Ensemble: Gladiator's Silk Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(25855)),	-- Gladiator's Silk Cowl
					moh(2, i(25854)),	-- Gladiator's Silk Amice
					moh(3, i(25856)),	-- Gladiator's Silk Raiment
					moh(2, i(25857)),	-- Gladiator's Silk Handguards
					moh(3, i(25858)),	-- Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146616, {	-- Ensemble: Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(27704)),	-- Gladiator's Lamellar Helm
					moh(2, i(27706)),	-- Gladiator's Lamellar Shoulders
					moh(3, i(27702)),	-- Gladiator's Lamellar Chestpiece
					moh(2, i(27703)),	-- Gladiator's Lamellar Gauntlets
					moh(3, i(27705)),	-- Gladiator's Lamellar Legguards

					moh(3, i(31616)),	-- Gladiator's Ornamented Headcover
					moh(2, i(31619)),	-- Gladiator's Ornamented Spaulders
					moh(3, i(31613)),	-- Gladiator's Ornamented Chestguard
					moh(2, i(31614)),	-- Gladiator's Ornamented Gloves
					moh(3, i(31618)),	-- Gladiator's Ornamented Legplates

					moh(3, i(27881)),	-- Gladiator's Scaled Helm
					moh(2, i(27883)),	-- Gladiator's Scaled Shoulders
					moh(3, i(27879)),	-- Gladiator's Scaled Chestpiece
					moh(3, i(27880)),	-- Gladiator's Scaled Gauntlets
					moh(3, i(27882)),	-- Gladiator's Scaled Legguards
				}),
				cl(PRIEST, {
					moh(12, iensemble(146615, {	-- Ensemble: Gladiator's Satin Armor -- Confirmed August 2021 here+Outdoor BC
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(31410)),	-- Gladiator's Mooncloth Hood
					moh(2, i(31412)),	-- Gladiator's Mooncloth Mantle
					moh(3, i(31413)),	-- Gladiator's Mooncloth Robe
					moh(2, i(31409)),	-- Gladiator's Mooncloth Gloves
					moh(3, i(31411)),	-- Gladiator's Mooncloth Leggings

					moh(3, i(27708)),	-- Gladiator's Satin Hood
					moh(2, i(27710)),	-- Gladiator's Satin Mantle
					moh(3, i(27711)),	-- Gladiator's Satin Robe
					moh(2, i(27707)),	-- Gladiator's Satin Gloves
					moh(3, i(27709)),	-- Gladiator's Satin Leggings
				}),
				cl(ROGUE, {
					moh(12, iensemble(146612, {	-- Ensemble: Gladiator's Leather Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(25830)),	-- Gladiator's Leather Helm
					moh(2, i(25832)),	-- Gladiator's Leather Spaulders
					moh(3, i(25831)),	-- Gladiator's Leather Tunic
					moh(2, i(25834)),	-- Gladiator's Leather Gloves
					moh(3, i(25833)),	-- Gladiator's Leather Legguards
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146614, {	-- Ensemble: Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(25998)),	-- Gladiator's Linked Helm
					moh(2, i(25999)),	-- Gladiator's Linked Spaulders
					moh(3, i(25997)),	-- Gladiator's Linked Armor
					moh(2, i(26000)),	-- Gladiator's Linked Gauntlets
					moh(3, i(26001)),	-- Gladiator's Linked Leggings

					moh(3, i(27471)),	-- Gladiator's Mail Helm
					moh(2, i(27473)),	-- Gladiator's Mail Spaulders
					moh(3, i(27469)),	-- Gladiator's Mail Armor
					moh(2, i(27470)),	-- Gladiator's Mail Gauntlets
					moh(3, i(27472)),	-- Gladiator's Mail Leggings

					moh(3, i(31400)),	-- Gladiator's Ringmail Helm
					moh(2, i(31407)),	-- Gladiator's Ringmail Spaulders
					moh(3, i(31396)),	-- Gladiator's Ringmail Armor
					moh(2, i(31397)),	-- Gladiator's Ringmail Gauntlets
					moh(3, i(31406)),	-- Gladiator's Ringmail Leggings
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146611, {	-- Ensemble: Gladiator's Felweave Armor -- Confirmed August 2021 here+Outdoor BC
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(24553)),	-- Gladiator's Dreadweave Hood
					moh(2, i(24554)),	-- Gladiator's Dreadweave Mantle
					moh(3, i(24552)),	-- Gladiator's Dreadweave Robe
					moh(2, i(24556)),	-- Gladiator's Dreadweave Gloves
					moh(3, i(24555)),	-- Gladiator's Dreadweave Leggings

					moh(3, i(30187)),	-- Gladiator's Felweave Cowl
					moh(2, i(30186)),	-- Gladiator's Felweave Amice
					moh(3, i(30200)),	-- Gladiator's Felweave Raiment
					moh(2, i(30188)),	-- Gladiator's Felweave Handguards
					moh(3, i(30201)),	-- Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146613, {	-- Ensemble: Gladiator's Plate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(24545)),	-- Gladiator's Plate Helm
					moh(2, i(24546)),	-- Gladiator's Plate Shoulders
					moh(3, i(24544)),	-- Gladiator's Plate Chestpiece
					moh(2, i(24549)),	-- Gladiator's Plate Gauntlets
					moh(3, i(24547)),	-- Gladiator's Plate Legguards
				}),
				n(WRIST, {
					moh(1, i(28451, {	-- General's Chain Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28445, {	-- General's Dragonhide Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28405, {	-- General's Dreadweave Cuffs
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(147772, {	-- General's Felweave Cuffs
						["timeline"] = { ADDED_7_2_0 },
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(31598, {	-- General's Kodohide Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28643, {	-- General's Lamellar Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28424, {	-- General's Leather Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28605, {	-- General's Linked Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28638, {	-- General's Mail Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(32973, {	-- General's Mooncloth Cuffs
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(32983, {	-- General's Ornamented Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28381, {	-- General's Plate Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(32991, {	-- General's Ringmail Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(147771, {	-- General's Satin Cuffs
						["timeline"] = { ADDED_7_2_0 },
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28646, {	-- General's Scaled Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28411, {	-- General's Silk Cuffs
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28448, {	-- General's Wyrmhide Bracers
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28973, {	-- Marshal's Chain Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28978, {	-- Marshal's Dragonhide Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28981, {	-- Marshal's Dreadweave Cuffs
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(31599, {	-- Marshal's Kodohide Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28984, {	-- Marshal's Lamellar Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28988, {	-- Marshal's Leather Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28989, {	-- Marshal's Linked Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28992, {	-- Marshal's Mail Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(32977, {	-- Marshal's Mooncloth Cuffs
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(32986, {	-- Marshal's Ornamented Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28996, {	-- Marshal's Plate Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(32994, {	-- Marshal's Ringmail Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28999, {	-- Marshal's Scaled Bracers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(29002, {	-- Marshal's Silk Cuffs
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(29006, {	-- Marshal's Wyrmhide Bracers
						["races"] = ALLIANCE_ONLY,
					})),
				}),
				n(WAIST, {
					moh(1, i(28450, {	-- General's Chain Girdle
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28443, {	-- General's Dragonhide Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28404, {	-- General's Dreadweave Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(147615, {	-- General's Felweave Belt
						["timeline"] = { ADDED_7_2_0 },
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(31594, {	-- General's Kodohide Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28641, {	-- General's Lamellar Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28423, {	-- General's Leather Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28629, {	-- General's Linked Girdle
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28639, {	-- General's Mail Girdle
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(32974, {	-- General's Mooncloth Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(32982, {	-- General's Ornamented Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28385, {	-- General's Plate Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(32992, {	-- General's Ringmail Girdle
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(147613, {	-- General's Satin Cord
						["timeline"] = { ADDED_7_2_0 },
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28644, {	-- General's Scaled Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28409, {	-- General's Silk Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28446, {	-- General's Wyrmhide Belt
						["races"] = HORDE_ONLY,
					})),
					moh(1, i(28974, {	-- Marshal's Chain Girdle
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28976, {	-- Marshal's Dragonhide Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28980, {	-- Marshal's Dreadweave Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(31596, {	-- Marshal's Kodohide Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28983, {	-- Marshal's Lamellar Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28986, {	-- Marshal's Leather Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28990, {	-- Marshal's Linked Girdle
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28993, {	-- Marshal's Mail Girdle
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(32976, {	-- Marshal's Mooncloth Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(32985, {	-- Marshal's Ornamented Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28995, {	-- Marshal's Plate Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(32995, {	-- Marshal's Ringmail Girdle
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(28998, {	-- Marshal's Scaled Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(29001, {	-- Marshal's Silk Belt
						["races"] = ALLIANCE_ONLY,
					})),
					moh(1, i(29004, {	-- Marshal's Wyrmhide Belt
						["races"] = ALLIANCE_ONLY,
					})),
				}),
				n(FEET, {
					moh(2, i(28449, {	-- General's Chain Sabatons
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28444, {	-- General's Dragonhide Boots
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28402, {	-- General's Dreadweave Stalkers
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(147616, {	-- General's Felweave Boots
						["timeline"] = { ADDED_7_2_0 },
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(31595, {	-- General's Kodohide Boots
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28642, {	-- General's Lamellar Greaves
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28422, {	-- General's Leather Boots
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28630, {	-- General's Linked Sabatons
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28640, {	-- General's Mail Sabatons
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(32975, {	-- General's Mooncloth Slippers
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(32984, {	-- General's Ornamented Greaves
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28383, {	-- General's Plate Greaves
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(30491, {	-- General's Plate Sabatons / General's Plate Greaves Tier 2 [TBC]
						["timeline"] = {
							-- Wouter NOTE: These aren't in Cata Classic, marking these as CREATED with the Classic patch according to Wowhead - gotta revisit this in WoD Classic :^)
							-- #if ANYCLASSIC
							CREATED_2_5_1, ADDED_6_0_2,
							-- #else
							ADDED_4_0_1, REMOVED_5_0_4, ADDED_6_0_2
							-- #endif
						},
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(32993, {	-- General's Ringmail Sabatons
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(147614, {	-- General's Satin Slippers
						["timeline"] = { ADDED_7_2_0 },
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28645, {	-- General's Scaled Greaves
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28410, {	-- General's Silk Footguards
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28447, {	-- General's Wyrmhide Boots
						["races"] = HORDE_ONLY,
					})),
					moh(2, i(28975, {	-- Marshal's Chain Sabatons
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28977, {	-- Marshal's Dragonhide Boots
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28982, {	-- Marshal's Dreadweave Stalkers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(31597, {	-- Marshal's Kodohide Boots
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28985, {	-- Marshal's Lamellar Greaves
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28987, {	-- Marshal's Leather Boots
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28991, {	-- Marshal's Linked Sabatons
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28994, {	-- Marshal's Mail Sabatons
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(32978, {	-- Marshal's Mooncloth Slippers
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(32987, {	-- Marshal's Ornamented Greaves
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(28997, {	-- Marshal's Plate Greaves
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(32996, {	-- Marshal's Ringmail Sabatons
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(29000, {	-- Marshal's Scaled Greaves
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(29003, {	-- Marshal's Silk Footguards
						["races"] = ALLIANCE_ONLY,
					})),
					moh(2, i(29005, {	-- Marshal's Wyrmhide Boots
						["races"] = ALLIANCE_ONLY,
					})),
				}),
				n(BACK, {
					moh(1, i(28379)),	-- Sergeant's Heavy Cape (A)
					moh(1, i(28380)),	-- Sergeant's Heavy Cape (A)
					moh(1, i(28378)),	-- Sergeant's Heavy Cape (H)
					moh(1, i(28377)),	-- Sergeant's Heavy Cape (H)
				}),
				-- Originally sold Offhand/Neck/Finger by
				-- Alliance SW: n(12781, {	-- Master Sergeant Biggins  &
				-- Horde OG: n(12793, {	-- Brave Stonehide
				filter(NECK_F, {
					i(28245, {	-- Pendant of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_2 },
					}),
					i(28244, {	-- Pendant of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_2 },
					}),
				}),
				filter(FINGER_F, {
					i(28247, {	-- Band of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_2 },
					}),
					i(28246, {	-- Band of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_2 },
					}),
				}),
				filter(TRINKET_F, {
					i(28235, {	-- Medallion of the Alliance (A) (Druid)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28237, {	-- Medallion of the Alliance (A) (Hunter)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28238, {	-- Medallion of the Alliance (A) (Mage)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28236, {	-- Medallion of the Alliance (A) (Paladin)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30349, {	-- Medallion of the Alliance (A) (Priest)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28234, {	-- Medallion of the Alliance (A) (Rogue)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30351, {	-- Medallion of the Alliance (A) (Shaman)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30348, {	-- Medallion of the Alliance (A) (Warlock)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30350, {	-- Medallion of the Alliance (A) (Warrior)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(25829, {	-- Talisman of the Alliance
						["timeline"] = { ADDED_2_0_3, REMOVED_6_0_2 },
					}),
					i(28241, {	-- Medallion of the Horde (H) (Druid)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28243, {	-- Medallion of the Horde (H) (Hunter)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28239, {	-- Medallion of the Horde (H) (Mage)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28242, {	-- Medallion of the Horde (H) (Paladin)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30346, {	-- Medallion of the Horde (H) (Priest)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(28240, {	-- Medallion of the Horde (H) (Rogue)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30345, {	-- Medallion of the Horde (H) (Shaman)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30343, {	-- Medallion of the Horde (H) (Warlock)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(30344, {	-- Medallion of the Horde (H) (Warrior)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_1 },
					}),
					i(24551, {	-- Talisman of the Horde
						["timeline"] = { ADDED_2_0_3, REMOVED_6_0_2 },
					}),
				}),
				-- #if BEFORE MOP
				filter(RELICS_F, {
					i(33945, {	-- Gladiator's Idol of Resolve
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33942, {	-- Gladiator's Idol of Steadfastness
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(28355, {	-- Gladiator's Idol of Tenacity
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33936, {	-- Gladiator's Libram of Fortitude
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(28356, {	-- Gladiator's Libram of Justice
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33948, {	-- Gladiator's Libram of Vengeance
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33939, {	-- Gladiator's Totem of Indomitability
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33951, {	-- Gladiator's Totem of Survival
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(28357, {	-- Gladiator's Totem of the Third Wind
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
				}),
				-- #endif
			}),
		},
	}),
	applyclassicphase(TBC_PHASE_TWO, n(SEASON_MERCILESS, {
		["timeline"] = { ADDED_2_1_2 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11707, {["timeline"] = {ADDED_7_2_0}}),	-- No Mercy (PvP Season 2)
			}),
			n(ACHIEVEMENTS, elitepvp(bubbleDown({
				-- #if BEFORE WRATH
				["OnUpdate"] = MERCILESS_GLADIATOR_ONUPDATE,
				-- #endif
			}, {
				["timeline"] = { ADDED_2_1_2, REMOVED_2_3_0 },
				["groups"] = {
					ach(418, {	-- Merciless Gladiator: Burning Crusade Season 2
						title(37),	-- Merciless Gladiator <Name>
					}),
					ach(887, {	-- Merciless Nether Drake
						["provider"] = { "i", 34092 },	-- Merciless Nether Drake
						["filterID"] = MOUNTS,
					}),
					i(34092, {	-- Merciless Nether Drake
						["description"] = "Awarded to members of the Arena teams during TBC Season 2 that were in the 0.5% bracket of their battlegroup.",
					}),
				},
			}))),
			n(PVP_GLADIATOR, {
				n(WEAPONS, {
					moh(80, iensemble(146650, {	-- Arsenal: Merciless Gladiator's Weapons [Horde / Alliance / Tested ] { Note: Contains Gladiator/Merciless Sets }
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(33313)),	-- Merciless Gladiator's Barrier
					moh(5, i(31958)),	-- Merciless Gladiator's Bonecracker
					moh(5, i(31959)),	-- Merciless Gladiator's Bonegrinder
					moh(5, i(31965)),	-- Merciless Gladiator's Cleaver
					moh(5, i(31986)),	-- Merciless Gladiator's Crossbow of the Phoenix
					moh(5, i(31966)),	-- Merciless Gladiator's Decapitator
					moh(2, i(31978)),	-- Merciless Gladiator's Endgame
					moh(5, i(32003)),	-- Merciless Gladiator's Fleshslicer
					moh(5, i(32963)),	-- Merciless Gladiator's Gavel
					moh(5, i(31984)),	-- Merciless Gladiator's Greatsword
					moh(5, i(31985)),	-- Merciless Gladiator's Hacker
					moh(5, i(32014)),	-- Merciless Gladiator's Maul
					moh(5, i(32025)),	-- Merciless Gladiator's Painsaw
					moh(5, i(32026)),	-- Merciless Gladiator's Pummeler
					moh(5, i(32027)),	-- Merciless Gladiator's Quickblade
					moh(5, i(33309)),	-- Merciless Gladiator's Redoubt
					moh(2, i(32961)),	-- Merciless Gladiator's Reprieve
					moh(5, i(32028)),	-- Merciless Gladiator's Ripper
					moh(5, i(32964)),	-- Merciless Gladiator's Salvation
					moh(5, i(32044)),	-- Merciless Gladiator's Shanker
					moh(2, i(32045)),	-- Merciless Gladiator's Shield Wall
					moh(5, i(32046)),	-- Merciless Gladiator's Shiv
					moh(5, i(32052)),	-- Merciless Gladiator's Slicer
					moh(5, i(32053)),	-- Merciless Gladiator's Spellblade
					moh(5, i(32962)),	-- Merciless Gladiator's Touch of Defeat
					i(32054, {	-- Merciless Gladiator's War Edge
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					moh(5, i(32055)),	-- Merciless Gladiator's War Staff
				}),
				cl(DRUID, {
					moh(12, iensemble(146619, {	-- Ensemble: Merciless Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(31968)),	-- Merciless Gladiator's Dragonhide Helm
					moh(2, i(31971)),	-- Merciless Gladiator's Dragonhide Spaulders
					moh(3, i(31972)),	-- Merciless Gladiator's Dragonhide Tunic
					moh(2, i(31967)),	-- Merciless Gladiator's Dragonhide Gloves
					moh(3, i(31969)),	-- Merciless Gladiator's Dragonhide Legguards

					moh(3, i(31988)),	-- Merciless Gladiator's Kodohide Helm
					moh(2, i(31990)),	-- Merciless Gladiator's Kodohide Spaulders
					moh(3, i(31991)),	-- Merciless Gladiator's Kodohide Tunic
					moh(2, i(31987)),	-- Merciless Gladiator's Kodohide Gloves
					moh(3, i(31989)),	-- Merciless Gladiator's Kodohide Legguards

					moh(3, i(32057)),	-- Merciless Gladiator's Wyrmhide Helm
					moh(2, i(32059)),	-- Merciless Gladiator's Wyrmhide Spaulders
					moh(3, i(32060)),	-- Merciless Gladiator's Wyrmhide Tunic
					moh(2, i(32056)),	-- Merciless Gladiator's Wyrmhide Gloves
					moh(3, i(32058)),	-- Merciless Gladiator's Wyrmhide Legguards
				}),
				cl(HUNTER, {
					moh(12, iensemble(146618, {	-- Ensemble: Merciless Gladiator's Chain Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(31962)),	-- Merciless Gladiator's Chain Helm
					moh(2, i(31964)),	-- Merciless Gladiator's Chain Spaulders
					moh(3, i(31960)),	-- Merciless Gladiator's Chain Armor
					moh(2, i(31961)),	-- Merciless Gladiator's Chain Gauntlets
					moh(3, i(31963)),	-- Merciless Gladiator's Chain Leggings
				}),
				cl(MAGE, {
					moh(12, iensemble(146627, {	-- Ensemble: Merciless Gladiator's Silk Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(32048)),	-- Merciless Gladiator's Silk Cowl
					moh(2, i(32047)),	-- Merciless Gladiator's Silk Amice
					moh(3, i(32050)),	-- Merciless Gladiator's Silk Raiment
					moh(2, i(32049)),	-- Merciless Gladiator's Silk Handguards
					moh(3, i(32051)),	-- Merciless Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146626, {	-- Ensemble: Merciless Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(31997)),	-- Merciless Gladiator's Lamellar Helm
					moh(2, i(31996)),	-- Merciless Gladiator's Lamellar Shoulders
					moh(3, i(31992)),	-- Merciless Gladiator's Lamellar Chestpiece
					moh(2, i(31993)),	-- Merciless Gladiator's Lamellar Gauntlets
					moh(3, i(31995)),	-- Merciless Gladiator's Lamellar Legguards

					moh(3, i(32022)),	-- Merciless Gladiator's Ornamented Headcover
					moh(2, i(32024)),	-- Merciless Gladiator's Ornamented Spaulders
					moh(3, i(32020)),	-- Merciless Gladiator's Ornamented Chestguard
					moh(2, i(32021)),	-- Merciless Gladiator's Ornamented Gloves
					moh(3, i(32023)),	-- Merciless Gladiator's Ornamented Legplates

					moh(3, i(32041)),	-- Merciless Gladiator's Scaled Helm
					moh(2, i(32043)),	-- Merciless Gladiator's Scaled Shoulders
					moh(3, i(32039)),	-- Merciless Gladiator's Scaled Chestpiece
					moh(3, i(32040)),	-- Merciless Gladiator's Scaled Gauntlets
					moh(3, i(32042)),	-- Merciless Gladiator's Scaled Legguards
				}),
				cl(PRIEST, {
					moh(12, iensemble(146625, {	-- Ensemble: Merciless Gladiator's Satin Armor -- Confirmed August 2021 here+Outdoor BC
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(32016)),	-- Merciless Gladiator's Mooncloth Hood
					moh(2, i(32018)),	-- Merciless Gladiator's Mooncloth Mantle
					moh(3, i(32019)),	-- Merciless Gladiator's Mooncloth Robe
					moh(2, i(32015)),	-- Merciless Gladiator's Mooncloth Gloves
					moh(3, i(32017)),	-- Merciless Gladiator's Mooncloth Leggings

					moh(3, i(32035)),	-- Merciless Gladiator's Satin Hood
					moh(2, i(32037)),	-- Merciless Gladiator's Satin Mantle
					moh(3, i(32038)),	-- Merciless Gladiator's Satin Robe
					moh(2, i(32034)),	-- Merciless Gladiator's Satin Gloves
					moh(3, i(32036)),	-- Merciless Gladiator's Satin Leggings
				}),
				cl(ROGUE, {
					moh(12, iensemble(146622, {	-- Ensemble: Merciless Gladiator's Leather Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(31999)),	-- Merciless Gladiator's Leather Helm
					moh(2, i(32001)),	-- Merciless Gladiator's Leather Spaulders
					moh(3, i(32002)),	-- Merciless Gladiator's Leather Tunic
					moh(2, i(31998)),	-- Merciless Gladiator's Leather Gloves
					moh(3, i(32000)),	-- Merciless Gladiator's Leather Legguards
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146624, {	-- Ensemble: Merciless Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(32004)),	-- Merciless Gladiator's Linked Armor
					moh(2, i(32005)),	-- Merciless Gladiator's Linked Gauntlets
					moh(3, i(32006)),	-- Merciless Gladiator's Linked Helm
					moh(3, i(32007)),	-- Merciless Gladiator's Linked Leggings
					moh(2, i(32008)),	-- Merciless Gladiator's Linked Spaulders

					moh(3, i(32011)),	-- Merciless Gladiator's Mail Helm
					moh(2, i(32013)),	-- Merciless Gladiator's Mail Spaulders
					moh(3, i(32009)),	-- Merciless Gladiator's Mail Armor
					moh(2, i(32010)),	-- Merciless Gladiator's Mail Gauntlets
					moh(3, i(32012)),	-- Merciless Gladiator's Mail Leggings

					moh(3, i(32031)),	-- Merciless Gladiator's Ringmail Helm
					moh(2, i(32033)),	-- Merciless Gladiator's Ringmail Spaulders
					moh(3, i(32029)),	-- Merciless Gladiator's Ringmail Armor
					moh(2, i(32030)),	-- Merciless Gladiator's Ringmail Gauntlets
					moh(3, i(32032)),	-- Merciless Gladiator's Ringmail Leggings
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146621, {	-- Ensemble: Merciless Gladiator's Felweave Armor -- Confirmed August 2021 here+Outdoor BC
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(31974)),	-- Merciless Gladiator's Dreadweave Hood
					moh(2, i(31976)),	-- Merciless Gladiator's Dreadweave Mantle
					moh(3, i(31977)),	-- Merciless Gladiator's Dreadweave Robe
					moh(2, i(31973)),	-- Merciless Gladiator's Dreadweave Gloves
					moh(3, i(31975)),	-- Merciless Gladiator's Dreadweave Leggings

					moh(3, i(31980)),	-- Merciless Gladiator's Felweave Cowl
					moh(2, i(31979)),	-- Merciless Gladiator's Felweave Amice
					moh(3, i(31982)),	-- Merciless Gladiator's Felweave Raiment
					moh(2, i(31981)),	-- Merciless Gladiator's Felweave Handguards
					moh(3, i(31983)),	-- Merciless Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146623, {	-- Ensemble: Merciless Gladiator's Plate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(30488)),	-- Merciless Gladiator's Plate Helm
					moh(2, i(30490)),	-- Merciless Gladiator's Plate Shoulders
					moh(3, i(30486)),	-- Merciless Gladiator's Plate Chestpiece
					moh(2, i(30487)),	-- Merciless Gladiator's Plate Gauntlets
					moh(3, i(30489)),	-- Merciless Gladiator's Plate Legguards
				}),
				n(WRIST, {
					moh(1, i(32809)),	-- Veteran's Chain Bracers
					moh(1, i(32810)),	-- Veteran's Dragonhide Bracers
					moh(1, i(32811)),	-- Veteran's Dreadweave Cuffs
					moh(1, i(32812)),	-- Veteran's Kodohide Bracers
					moh(1, i(32813)),	-- Veteran's Lamellar Bracers
					moh(1, i(32814)),	-- Veteran's Leather Bracers
					moh(1, i(147612, {	-- Veteran's Leather Wristguards
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(1, i(32816)),	-- Veteran's Linked Bracers
					moh(1, i(32817)),	-- Veteran's Mail Bracers
					moh(1, i(32980)),	-- Veteran's Mooncloth Cuffs
					moh(1, i(32989)),	-- Veteran's Ornamented Bracers
					moh(1, i(32818)),	-- Veteran's Plate Bracers
					moh(1, i(32997)),	-- Veteran's Ringmail Bracers
					moh(1, i(32819)),	-- Veteran's Scaled Bracers
					moh(1, i(32820)),	-- Veteran's Silk Cuffs
					moh(1, i(32821)),	-- Veteran's Wyrmhide Bracers
				}),
				n(WAIST, {
					moh(1, i(32797)),	-- Veteran's Chain Girdle
					moh(1, i(32798)),	-- Veteran's Dragonhide Belt
					moh(1, i(32799)),	-- Veteran's Dreadweave Belt
					moh(1, i(32800)),	-- Veteran's Kodohide Belt
					moh(1, i(32801)),	-- Veteran's Lamellar Belt
					moh(1, i(32802)),	-- Veteran's Leather Belt
					moh(1, i(147610, {	-- Veteran's Leather Waistband
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(1, i(32803)),	-- Veteran's Linked Girdle
					moh(1, i(32804)),	-- Veteran's Mail Girdle
					moh(1, i(32979)),	-- Veteran's Mooncloth Belt
					moh(1, i(32988)),	-- Veteran's Ornamented Belt
					moh(1, i(32805)),	-- Veteran's Plate Belt
					moh(1, i(32998)),	-- Veteran's Ringmail Girdle
					moh(1, i(32806)),	-- Veteran's Scaled Belt
					moh(1, i(32807)),	-- Veteran's Silk Belt
					moh(1, i(32808)),	-- Veteran's Wyrmhide Belt
				}),
				n(FEET, {
					moh(2, i(32785)),	-- Veteran's Chain Sabatons
					moh(2, i(32786)),	-- Veteran's Dragonhide Boots
					moh(2, i(32787)),	-- Veteran's Dreadweave Stalkers
					moh(2, i(32788)),	-- Veteran's Kodohide Boots
					moh(2, i(32789)),	-- Veteran's Lamellar Greaves
					moh(2, i(32790)),	-- Veteran's Leather Boots
					moh(2, i(147611, {	-- Veteran's Leather Footguards
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(32791)),	-- Veteran's Linked Sabatons
					moh(2, i(32792)),	-- Veteran's Mail Sabatons
					moh(2, i(32981)),	-- Veteran's Mooncloth Slippers
					moh(2, i(32990)),	-- Veteran's Ornamented Greaves
					moh(2, i(32793)),	-- Veteran's Plate Greaves
					moh(2, i(32999)),	-- Veteran's Ringmail Sabatons
					moh(2, i(147609, {	-- Veteran's Satin Slippers
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(32794)),	-- Veteran's Scaled Greaves
					moh(2, i(32795)),	-- Veteran's Silk Footguards
					moh(2, i(32796)),	-- Veteran's Wyrmhide Boots
				}),
				-- Orinally sold Offhand/Neck/Finger by
				-- Alliance SW: n(23446, {	-- Lieutenant Tristia --  &
				-- Horde OG: n(24520, {	-- Doris Volanthius --
				filter(NECK_F, {
					i(33067, {	-- Veteran's Pendant of Conquest
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
					i(33065, {	-- Veteran's Pendant of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
					i(33068, {	-- Veteran's Pendant of Salvation
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
					i(33067, {	-- Veteran's Pendant of Conquest
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
					i(33066, {	-- Veteran's Pendant of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
				}),
				filter(FINGER_F, {
					i(33056, {	-- Veteran's Band of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
					i(33064, {	-- Veteran's Band of Salvation
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
					i(33057, {	-- Veteran's Band of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_2_5_4 },
					}),
				}),
				-- #if BEFORE MOP
				filter(RELICS_F, {
					i(33946, {	-- Merciless Gladiator's Idol of Resolve
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33943, {	-- Merciless Gladiator's Idol of Steadfastness
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33076, {	-- Merciless Gladiator's Idol of Tenacity
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33937, {	-- Merciless Gladiator's Libram of Fortitude
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33077, {	-- Merciless Gladiator's Libram of Justice
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33949, {	-- Merciless Gladiator's Libram of Vengeance
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33940, {	-- Merciless Gladiator's Totem of Indomitability
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33952, {	-- Merciless Gladiator's Totem of Survival
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33078, {	-- Merciless Gladiator's Totem of the Third Wind
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
				}),
				-- #endif
			}),
		},
	})),
	applyclassicphase(TBC_PHASE_THREE, n(SEASON_VENGEFUL, {
		["timeline"] = { ADDED_2_3_0 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11708, {["timeline"] = {ADDED_7_2_0}}),	-- With a Vengeance (PvP Season 3)
			}),
			n(ACHIEVEMENTS, elitepvp(bubbleDown({
				-- #if BEFORE WRATH
				["OnUpdate"] = VENGEFUL_GLADIATOR_ONUPDATE,
				-- #endif
			}, {
				["timeline"] = { ADDED_2_3_0, REMOVED_2_4_3 },
				["groups"] = {
					ach(419, {	-- Vengeful Gladiator: Burning Crusade Season 3
						title(40),	-- Vengeful Gladiator <Name>
					}),
					ach(888, {	-- Vengeful Nether Drake
						["provider"] = { "i", 37676 },	-- Vengeful Nether Drake
						["filterID"] = MOUNTS,
					}),
					i(37676, {	-- Vengeful Nether Drake
						["description"] = "Awarded to members of the Arena teams during TBC Season 3 that were in the 0.5% bracket of their battlegroup.",
					}),
				},
			}))),
			n(PVP_GLADIATOR, {
				n(WEAPONS, {
					moh(80, iensemble(146649, {	-- Arsenal: Vengeful Gladiator's Weapons [ Horde / Alliance / Tested ]
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(33661)),	-- Vengeful Gladiator's Barrier
					moh(5, i(34059)),	-- Vengeful Gladiator's Baton of Light
					moh(5, i(34540)),	-- Vengeful Gladiator's Battle Staff
					moh(5, i(33662)),	-- Vengeful Gladiator's Bonecracker
					moh(5, i(33663)),	-- Vengeful Gladiator's Bonegrinder
					moh(5, i(34015)),	-- Vengeful Gladiator's Chopper
					moh(5, i(33669)),	-- Vengeful Gladiator's Cleaver
					moh(5, i(33670)),	-- Vengeful Gladiator's Decapitator
					moh(2, i(33681)),	-- Vengeful Gladiator's Endgame
					moh(5, i(33705)),	-- Vengeful Gladiator's Fleshslicer
					moh(5, i(33687)),	-- Vengeful Gladiator's Gavel
					moh(5, i(33688)),	-- Vengeful Gladiator's Greatsword
					moh(2, i(34033)),	-- Vengeful Gladiator's Grimoire
					moh(5, i(33689)),	-- Vengeful Gladiator's Hacker
					moh(5, i(33006)),	-- Vengeful Gladiator's Heavy Crossbow
					moh(5, i(34529)),	-- Vengeful Gladiator's Longbow
					moh(5, i(33801)),	-- Vengeful Gladiator's Mutilator
					moh(5, i(33727)),	-- Vengeful Gladiator's Painsaw
					moh(5, i(34066)),	-- Vengeful Gladiator's Piercing Touch
					moh(5, i(33733)),	-- Vengeful Gladiator's Pummeler
					moh(5, i(33734)),	-- Vengeful Gladiator's Quickblade
					moh(2, i(33735)),	-- Vengeful Gladiator's Redoubt
					moh(2, i(33736)),	-- Vengeful Gladiator's Reprieve
					moh(5, i(34530)),	-- Vengeful Gladiator's Rifle
					moh(5, i(33737)),	-- Vengeful Gladiator's Ripper
					moh(5, i(33743)),	-- Vengeful Gladiator's Salvation
					moh(5, i(33754)),	-- Vengeful Gladiator's Shanker
					moh(2, i(33755)),	-- Vengeful Gladiator's Shield Wall
					moh(5, i(33756)),	-- Vengeful Gladiator's Shiv
					moh(5, i(34016)),	-- Vengeful Gladiator's Slasher
					moh(5, i(33762)),	-- Vengeful Gladiator's Slicer
					moh(5, i(33763)),	-- Vengeful Gladiator's Spellblade
					moh(5, i(33716)),	-- Vengeful Gladiator's Staff
					moh(5, i(33764)),	-- Vengeful Gladiator's Touch of Defeat
					i(33765, {	-- Vengeful Gladiator's War Edge
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					moh(5, i(33766)),	-- Vengeful Gladiator's War Staff
					moh(5, i(34014)),	-- Vengeful Gladiator's Waraxe
				}),
				cl(DRUID, {
					moh(12, iensemble(146629, {	-- Ensemble: Vengeful Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33672)),	-- Vengeful Gladiator's Dragonhide Helm
					moh(2, i(33674)),	-- Vengeful Gladiator's Dragonhide Spaulders
					moh(3, i(33675)),	-- Vengeful Gladiator's Dragonhide Tunic
					moh(2, i(33671)),	-- Vengeful Gladiator's Dragonhide Gloves
					moh(3, i(33673)),	-- Vengeful Gladiator's Dragonhide Legguards

					moh(3, i(33691)),	-- Vengeful Gladiator's Kodohide Helm
					moh(2, i(33693)),	-- Vengeful Gladiator's Kodohide Spaulders
					moh(3, i(33694)),	-- Vengeful Gladiator's Kodohide Tunic
					moh(2, i(33690)),	-- Vengeful Gladiator's Kodohide Gloves
					moh(3, i(33692)),	-- Vengeful Gladiator's Kodohide Legguards

					moh(3, i(33768)),	-- Vengeful Gladiator's Wyrmhide Helm
					moh(2, i(33770)),	-- Vengeful Gladiator's Wyrmhide Spaulders
					moh(3, i(33771)),	-- Vengeful Gladiator's Wyrmhide Tunic
					moh(2, i(33767)),	-- Vengeful Gladiator's Wyrmhide Gloves
					moh(3, i(33769)),	-- Vengeful Gladiator's Wyrmhide Legguards
				}),
				cl(HUNTER, {
					moh(12, iensemble(146628, {	-- Ensemble: Vengeful Gladiator's Chain Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33666)),	-- Vengeful Gladiator's Chain Helm
					moh(2, i(33668)),	-- Vengeful Gladiator's Chain Spaulders
					moh(3, i(33664)),	-- Vengeful Gladiator's Chain Armor
					moh(2, i(33665)),	-- Vengeful Gladiator's Chain Gauntlets
					moh(3, i(33667)),	-- Vengeful Gladiator's Chain Leggings
				}),
				cl(MAGE, {
					moh(12, iensemble(146637, {	-- Ensemble: Vengeful Gladiator's Silk Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33758)),	-- Vengeful Gladiator's Silk Cowl
					moh(2, i(33757)),	-- Vengeful Gladiator's Silk Amice
					moh(3, i(33760)),	-- Vengeful Gladiator's Silk Raiment
					moh(2, i(33759)),	-- Vengeful Gladiator's Silk Handguards
					moh(3, i(33761)),	-- Vengeful Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146636, {	-- Ensemble: Vengeful Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33697)),	-- Vengeful Gladiator's Lamellar Helm
					moh(2, i(33699)),	-- Vengeful Gladiator's Lamellar Shoulders
					moh(3, i(33695)),	-- Vengeful Gladiator's Lamellar Chestpiece
					moh(2, i(33696)),	-- Vengeful Gladiator's Lamellar Gauntlets
					moh(3, i(33698)),	-- Vengeful Gladiator's Lamellar Legguards

					moh(3, i(33724)),	-- Vengeful Gladiator's Ornamented Headcover
					moh(2, i(33726)),	-- Vengeful Gladiator's Ornamented Spaulders
					moh(3, i(33722)),	-- Vengeful Gladiator's Ornamented Chestguard
					moh(2, i(33723)),	-- Vengeful Gladiator's Ornamented Gloves
					moh(3, i(33725)),	-- Vengeful Gladiator's Ornamented Legplates

					moh(3, i(33751)),	-- Vengeful Gladiator's Scaled Helm
					moh(3, i(33753)),	-- Vengeful Gladiator's Scaled Shoulders
					moh(3, i(33749)),	-- Vengeful Gladiator's Scaled Chestpiece
					moh(2, i(33750)),	-- Vengeful Gladiator's Scaled Gauntlets
					moh(3, i(33752)),	-- Vengeful Gladiator's Scaled Legguards
				}),
				cl(PRIEST, {
					moh(12, iensemble(146635, {	-- Ensemble: Vengeful Gladiator's Satin Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33718)),	-- Vengeful Gladiator's Mooncloth Hood
					moh(2, i(33720)),	-- Vengeful Gladiator's Mooncloth Mantle
					moh(3, i(33721)),	-- Vengeful Gladiator's Mooncloth Robe
					moh(2, i(33717)),	-- Vengeful Gladiator's Mooncloth Gloves
					moh(3, i(33719)),	-- Vengeful Gladiator's Mooncloth Leggings

					moh(3, i(33745)),	-- Vengeful Gladiator's Satin Hood
					moh(2, i(33747)),	-- Vengeful Gladiator's Satin Mantle
					moh(3, i(33748)),	-- Vengeful Gladiator's Satin Robe
					moh(2, i(33744)),	-- Vengeful Gladiator's Satin Gloves
					moh(3, i(33746)),	-- Vengeful Gladiator's Satin Leggings
				}),
				cl(ROGUE, {
					moh(12, iensemble(146632, {	-- Ensemble: Vengeful Gladiator's Leather Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33701)),	-- Vengeful Gladiator's Leather Helm
					moh(2, i(33703)),	-- Vengeful Gladiator's Leather Spaulders
					moh(3, i(33704)),	-- Vengeful Gladiator's Leather Tunic
					moh(2, i(33700)),	-- Vengeful Gladiator's Leather Gloves
					moh(3, i(33702)),	-- Vengeful Gladiator's Leather Legguards
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146634, {	-- Ensemble: Vengeful Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33708)),	-- Vengeful Gladiator's Linked Helm
					moh(2, i(33710)),	-- Vengeful Gladiator's Linked Spaulders
					moh(3, i(33706)),	-- Vengeful Gladiator's Linked Armor
					moh(2, i(33707)),	-- Vengeful Gladiator's Linked Gauntlets
					moh(3, i(33709)),	-- Vengeful Gladiator's Linked Leggings

					moh(3, i(33713)),	-- Vengeful Gladiator's Mail Helm
					moh(2, i(33715)),	-- Vengeful Gladiator's Mail Spaulders
					moh(3, i(33711)),	-- Vengeful Gladiator's Mail Armor
					moh(2, i(33712)),	-- Vengeful Gladiator's Mail Gauntlets
					moh(3, i(33714)),	-- Vengeful Gladiator's Mail Leggings

					moh(3, i(33740)),	-- Vengeful Gladiator's Ringmail Helm
					moh(2, i(33742)),	-- Vengeful Gladiator's Ringmail Spaulders
					moh(3, i(33738)),	-- Vengeful Gladiator's Ringmail Armor
					moh(2, i(33739)),	-- Vengeful Gladiator's Ringmail Gauntlets
					moh(3, i(33741)),	-- Vengeful Gladiator's Ringmail Leggings
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146631, {	-- Ensemble: Vengeful Gladiator's Felweave Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33677)),	-- Vengeful Gladiator's Dreadweave Hood
					moh(2, i(33679)),	-- Vengeful Gladiator's Dreadweave Mantle
					moh(3, i(33680)),	-- Vengeful Gladiator's Dreadweave Robe
					moh(2, i(33676)),	-- Vengeful Gladiator's Dreadweave Gloves
					moh(3, i(33678)),	-- Vengeful Gladiator's Dreadweave Leggings

					moh(3, i(33683)),	-- Vengeful Gladiator's Felweave Cowl
					moh(2, i(33682)),	-- Vengeful Gladiator's Felweave Amice
					moh(3, i(33685)),	-- Vengeful Gladiator's Felweave Raiment
					moh(2, i(33684)),	-- Vengeful Gladiator's Felweave Handguards
					moh(3, i(33686)),	-- Vengeful Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146633, {	-- Ensemble: Vengeful Gladiator's Plate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(33730)),	-- Vengeful Gladiator's Plate Helm
					moh(2, i(33732)),	-- Vengeful Gladiator's Plate Shoulders
					moh(3, i(33728)),	-- Vengeful Gladiator's Plate Chestpiece
					moh(2, i(33729)),	-- Vengeful Gladiator's Plate Gauntlets
					moh(3, i(33731)),	-- Vengeful Gladiator's Plate Legguards
				}),
				n(WRIST, {
					moh(1, i(33876)),	-- Vindicator's Chain Bracers
					moh(1, i(33881)),	-- Vindicator's Dragonhide Bracers
					moh(1, i(33883)),	-- Vindicator's Dreadweave Cuffs
					moh(1, i(33887)),	-- Vindicator's Kodohide Bracers
					moh(1, i(33889)),	-- Vindicator's Lamellar Bracers
					moh(1, i(33893)),	-- Vindicator's Leather Bracers
					moh(1, i(147670, {	-- Vindicator's Leather Wristguards
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(1, i(33894)),	-- Vindicator's Linked Bracers
					moh(1, i(33897)),	-- Vindicator's Mail Bracers
					moh(1, i(33901)),	-- Vindicator's Mooncloth Cuffs
					moh(1, i(33904)),	-- Vindicator's Ornamented Bracers
					moh(1, i(33813)),	-- Vindicator's Plate Bracers
					moh(1, i(33906)),	-- Vindicator's Ringmail Bracers
					moh(1, i(33910)),	-- Vindicator's Scaled Bracers
					moh(1, i(33913)),	-- Vindicator's Silk Cuffs
					moh(1, i(33917)),	-- Vindicator's Wyrmhide Bracers
				}),
				n(WAIST, {
					moh(1, i(33877)),	-- Vindicator's Chain Girdle
					moh(1, i(33879)),	-- Vindicator's Dragonhide Belt
					moh(1, i(33882)),	-- Vindicator's Dreadweave Belt
					moh(1, i(33885)),	-- Vindicator's Kodohide Belt
					moh(1, i(33888)),	-- Vindicator's Lamellar Belt
					moh(1, i(33891)),	-- Vindicator's Leather Belt
					moh(1, i(33895)),	-- Vindicator's Linked Girdle
					moh(1, i(33898)),	-- Vindicator's Mail Girdle
					moh(1, i(33900)),	-- Vindicator's Mooncloth Belt
					moh(1, i(33903)),	-- Vindicator's Ornamented Belt
					moh(1, i(33811)),	-- Vindicator's Plate Belt
					moh(1, i(33907)),	-- Vindicator's Ringmail Girdle
					moh(1, i(33909)),	-- Vindicator's Scaled Belt
					moh(1, i(33912)),	-- Vindicator's Silk Belt
					moh(1, i(33915)),	-- Vindicator's Wyrmhide Belt
				}),
				n(FEET, {
					moh(2, i(33878)),	-- Vindicator's Chain Sabatons
					moh(2, i(33880)),	-- Vindicator's Dragonhide Boots
					moh(2, i(33884)),	-- Vindicator's Dreadweave Stalkers
					moh(2, i(33886)),	-- Vindicator's Kodohide Boots
					moh(2, i(33890)),	-- Vindicator's Lamellar Greaves
					moh(2, i(33892)),	-- Vindicator's Leather Boots
					moh(2, i(33896)),	-- Vindicator's Linked Sabatons
					moh(2, i(33899)),	-- Vindicator's Mail Sabatons
					moh(2, i(33902)),	-- Vindicator's Mooncloth Slippers
					moh(2, i(33905)),	-- Vindicator's Ornamented Greaves
					moh(2, i(33812)),	-- Vindicator's Plate Greaves
					moh(2, i(33908)),	-- Vindicator's Ringmail Sabatons
					moh(2, i(33911)),	-- Vindicator's Scaled Greaves
					moh(2, i(33914)),	-- Vindicator's Silk Footguards
					moh(2, i(33916)),	-- Vindicator's Wyrmhide Boots
				}),
				-- Orinally sold Offhand/Neck/Finger by
				-- Alliance SW: n(23446, {	-- Lieutenant Tristia --  &
				-- Horde OG: n(24520, {	-- Doris Volanthius --
				filter(NECK_F, {
					i(33920, {	-- Vindicator's Pendant of Conquest
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33921, {	-- Vindicator's Pendant of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					applyclassicphase(TBC_PHASE_FOUR, i(35317, {	-- Vindicator's Pendant of Reprieve
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					i(33922, {	-- Vindicator's Pendant of Salvation
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					applyclassicphase(TBC_PHASE_FOUR, i(35319, {	-- Vindicator's Pendant of Subjugation
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					i(33923, {	-- Vindicator's Pendant of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
				}),
				filter(FINGER_F, {
					i(33853, {	-- Vindicator's Band of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33918, {	-- Vindicator's Band of Salvation
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					applyclassicphase(TBC_PHASE_FOUR, i(35320, {	-- Vindicator's Band of Subjugation
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					i(33919, {	-- Vindicator's Band of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
				}),
				-- #if BEFORE MOP
				filter(RELICS_F, {
					i(33947, {	-- Vengeful Gladiator's Idol of Resolve
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33944, {	-- Vengeful Gladiator's Idol of Steadfastness
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33841, {	-- Vengeful Gladiator's Idol of Tenacity
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33938, {	-- Vengeful Gladiator's Libram of Fortitude
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33842, {	-- Vengeful Gladiator's Libram of Justice
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33950, {	-- Vengeful Gladiator's Libram of Vengeance
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33941, {	-- Vengeful Gladiator's Totem of Indomitability
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33953, {	-- Vengeful Gladiator's Totem of Survival
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
					i(33843, {	-- Vengeful Gladiator's Totem of the Third Wind
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					}),
				}),
				-- #endif
				filter(TRINKET_F, {
					applyclassicphase(TBC_PHASE_FOUR, i(35327, {	-- Battlemaster's Alacrity
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					applyclassicphase(TBC_PHASE_FOUR, i(34579, {	-- Battlemaster's Audacity
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					applyclassicphase(TBC_PHASE_FOUR, i(34576, {	-- Battlemaster's Cruelty
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					applyclassicphase(TBC_PHASE_FOUR, i(34577, {	-- Battlemaster's Depravity
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					applyclassicphase(TBC_PHASE_FOUR, i(34578, {	-- Battlemaster's Determination
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
					applyclassicphase(TBC_PHASE_FOUR, i(34580, {	-- Battlemaster's Perseverance
						["timeline"] = { ADDED_2_0_3, REMOVED_3_0_2 },
					})),
				}),
			}),
		},
	})),
	applyclassicphase(TBC_PHASE_FIVE, n(SEASON_BRUTAL, {
		["timeline"] = { ADDED_2_4_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11709, {["timeline"] = {ADDED_7_2_0}}),	-- Tough Threads (PvP Season 4)
			}),
			n(ACHIEVEMENTS, elitepvp(bubbleDown({
				-- #if BEFORE WRATH
				["OnUpdate"] = BRUTAL_GLADIATOR_ONUPDATE,
				-- #endif
			},{
				["timeline"] = { ADDED_2_4_3, REMOVED_3_0_2 },
				["groups"] = {
					ach(420, {	-- Brutal Gladiator: Burning Crusade Season 4
						title(49),	-- Brutal Gladiator <Name>
					}),
					ach(2316, {	-- Brutal Nether Drake
						["provider"] = { "i", 43516 },	-- Brutal Nether Drake
						["filterID"] = MOUNTS,
					}),
					i(43516, {	-- Brutal Nether Drake
						["description"] = "Awarded to members of the Arena teams during TBC Season 4 that were in the 0.5% bracket of their battlegroup.",
					}),
				},
			}))),
			n(PVP_GLADIATOR, {
				n(WEAPONS, {
					moh(80, iensemble(146648, {	-- Arsenal: Brutal Gladiator's Weapons [ Horde / Alliance / Tested ]
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(34986)),	-- Brutal Gladiator's Barrier
					moh(5, i(34985)),	-- Brutal Gladiator's Baton of Light
					moh(5, i(34987)),	-- Brutal Gladiator's Battle Staff
					moh(5, i(37739, {	-- Brutal Gladiator's Blade of Alacrity
						-- #if ANYCLASSIC
						["timeline"] = { CREATED_4_3_0 },	-- This was never made available to players in Classic.
						-- #endif
					})),
					moh(5, i(34988)),	-- Brutal Gladiator's Bonecracker
					moh(5, i(34989)),	-- Brutal Gladiator's Bonegrinder
					moh(5, i(34995)),	-- Brutal Gladiator's Chopper
					moh(5, i(34996)),	-- Brutal Gladiator's Cleaver
					moh(5, i(34997)),	-- Brutal Gladiator's Decapitator
					moh(2, i(35008)),	-- Brutal Gladiator's Endgame
					moh(5, i(35038)),	-- Brutal Gladiator's Fleshslicer
					moh(5, i(35014)),	-- Brutal Gladiator's Gavel
					moh(5, i(35015)),	-- Brutal Gladiator's Greatsword
					moh(2, i(35016)),	-- Brutal Gladiator's Grimoire
					moh(5, i(35017)),	-- Brutal Gladiator's Hacker
					moh(5, i(36737)),	-- Brutal Gladiator's Hatchet
					moh(5, i(35018)),	-- Brutal Gladiator's Heavy Crossbow
					moh(5, i(35047)),	-- Brutal Gladiator's Longbow
					moh(5, i(35058)),	-- Brutal Gladiator's Mutilator
					moh(5, i(35064)),	-- Brutal Gladiator's Painsaw
					moh(5, i(35065)),	-- Brutal Gladiator's Piercing Touch
					moh(5, i(35071)),	-- Brutal Gladiator's Pummeler
					moh(5, i(35072)),	-- Brutal Gladiator's Quickblade
					moh(2, i(35073)),	-- Brutal Gladiator's Redoubt
					moh(2, i(35074)),	-- Brutal Gladiator's Reprieve
					moh(5, i(35075)),	-- Brutal Gladiator's Rifle
					moh(5, i(35076)),	-- Brutal Gladiator's Ripper
					moh(5, i(35082)),	-- Brutal Gladiator's Salvation
					moh(5, i(35093)),	-- Brutal Gladiator's Shanker
					moh(2, i(35094)),	-- Brutal Gladiator's Shield Wall
					moh(5, i(35095)),	-- Brutal Gladiator's Shiv
					moh(5, i(35037)),	-- Brutal Gladiator's Slasher
					moh(5, i(35101)),	-- Brutal Gladiator's Slicer
					moh(5, i(35102)),	-- Brutal Gladiator's Spellblade
					moh(5, i(35103)),	-- Brutal Gladiator's Staff
					moh(5, i(37740, {	-- Brutal Gladiator's Swift Judgement
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(5, i(35107)),	-- Brutal Gladiator's Touch of Defeat
					i(35108, {	-- Brutal Gladiator's War Edge
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					moh(5, i(35109)),	-- Brutal Gladiator's War Staff
					moh(5, i(35110)),	-- Brutal Gladiator's Waraxe
				}),
				bubbleDown({ ["timeline"] = { ADDED_3_3_2 } }, cl(DEATHKNIGHT, {
					moh(12, iensemble(146600, {	-- Ensemble: Brutal Gladiator's Dreadplate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(40440)),	-- Brutal Gladiator's Dreadplate Chestpiece
					moh(2, i(40441)),	-- Brutal Gladiator's Dreadplate Gauntlets
					moh(3, i(40442)),	-- Brutal Gladiator's Dreadplate Helm
					moh(3, i(40443)),	-- Brutal Gladiator's Dreadplate Legguards
					moh(2, i(40444)),	-- Brutal Gladiator's Dreadplate Shoulders
				})),
				cl(DRUID, {
					moh(12, iensemble(146599, {	-- Ensemble: Brutal Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(34999)),	-- Brutal Gladiator's Dragonhide Helm
					moh(2, i(35001)),	-- Brutal Gladiator's Dragonhide Spaulders
					moh(3, i(35002)),	-- Brutal Gladiator's Dragonhide Tunic
					moh(2, i(34998)),	-- Brutal Gladiator's Dragonhide Gloves
					moh(3, i(35000)),	-- Brutal Gladiator's Dragonhide Legguards

					moh(3, i(35023)),	-- Brutal Gladiator's Kodohide Helm
					moh(2, i(35025)),	-- Brutal Gladiator's Kodohide Spaulders
					moh(3, i(35026)),	-- Brutal Gladiator's Kodohide Tunic
					moh(2, i(35022)),	-- Brutal Gladiator's Kodohide Gloves
					moh(3, i(35024)),	-- Brutal Gladiator's Kodohide Legguards

					moh(3, i(35112)),	-- Brutal Gladiator's Wyrmhide Helm
					moh(2, i(35114)),	-- Brutal Gladiator's Wyrmhide Spaulders
					moh(3, i(35115)),	-- Brutal Gladiator's Wyrmhide Tunic
					moh(2, i(35111)),	-- Brutal Gladiator's Wyrmhide Gloves
					moh(3, i(35113)),	-- Brutal Gladiator's Wyrmhide Legguards
				}),
				cl(HUNTER, {
					moh(12, iensemble(146598, {	-- Ensemble: Brutal Gladiator's Chain Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(34992)),	-- Brutal Gladiator's Chain Helm
					moh(2, i(34994)),	-- Brutal Gladiator's Chain Spaulders
					moh(3, i(34990)),	-- Brutal Gladiator's Chain Armor
					moh(2, i(34991)),	-- Brutal Gladiator's Chain Gauntlets
					moh(3, i(34993)),	-- Brutal Gladiator's Chain Leggings
				}),
				cl(MAGE, {
					moh(12, iensemble(146607, {	-- Ensemble: Brutal Gladiator's Silk Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35097)),	-- Brutal Gladiator's Silk Cowl
					moh(2, i(35096)),	-- Brutal Gladiator's Silk Amice
					moh(3, i(35099)),	-- Brutal Gladiator's Silk Raiment
					moh(2, i(35098)),	-- Brutal Gladiator's Silk Handguards
					moh(3, i(35100)),	-- Brutal Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146606, {	-- Ensemble: Brutal Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35029)),	-- Brutal Gladiator's Lamellar Helm
					moh(2, i(35031)),	-- Brutal Gladiator's Lamellar Shoulders
					moh(3, i(35027)),	-- Brutal Gladiator's Lamellar Chestpiece
					moh(2, i(35028)),	-- Brutal Gladiator's Lamellar Gauntlets
					moh(3, i(35030)),	-- Brutal Gladiator's Lamellar Legguards

					moh(3, i(35061)),	-- Brutal Gladiator's Ornamented Headcover
					moh(2, i(35063)),	-- Brutal Gladiator's Ornamented Spaulders
					moh(3, i(35059)),	-- Brutal Gladiator's Ornamented Chestguard
					moh(2, i(35060)),	-- Brutal Gladiator's Ornamented Gloves
					moh(3, i(35062)),	-- Brutal Gladiator's Ornamented Legplates

					moh(3, i(35090)),	-- Brutal Gladiator's Scaled Helm
					moh(3, i(35092)),	-- Brutal Gladiator's Scaled Shoulders
					moh(3, i(35088)),	-- Brutal Gladiator's Scaled Chestpiece
					moh(2, i(35089)),	-- Brutal Gladiator's Scaled Gauntlets
					moh(3, i(35091)),	-- Brutal Gladiator's Scaled Legguards
				}),
				cl(PRIEST, {
					moh(12, iensemble(146605, {	-- Ensemble: Brutal Gladiator's Satin Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35054)),	-- Brutal Gladiator's Mooncloth Hood
					moh(2, i(35056)),	-- Brutal Gladiator's Mooncloth Mantle
					moh(3, i(35057)),	-- Brutal Gladiator's Mooncloth Robe
					moh(2, i(35053)),	-- Brutal Gladiator's Mooncloth Gloves
					moh(3, i(35055)),	-- Brutal Gladiator's Mooncloth Leggings

					moh(3, i(35084)),	-- Brutal Gladiator's Satin Hood
					moh(2, i(35086)),	-- Brutal Gladiator's Satin Mantle
					moh(3, i(35087)),	-- Brutal Gladiator's Satin Robe
					moh(2, i(35083)),	-- Brutal Gladiator's Satin Gloves
					moh(3, i(35085)),	-- Brutal Gladiator's Satin Leggings
				}),
				cl(ROGUE, {
					moh(12, iensemble(146602, {	-- Ensemble: Brutal Gladiator's Leather Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35033)),	-- Brutal Gladiator's Leather Helm
					moh(2, i(35035)),	-- Brutal Gladiator's Leather Spaulders
					moh(3, i(35036)),	-- Brutal Gladiator's Leather Tunic
					moh(2, i(35032)),	-- Brutal Gladiator's Leather Gloves
					moh(3, i(35034)),	-- Brutal Gladiator's Leather Legguards
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146604, {	-- Ensemble: Brutal Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35044)),	-- Brutal Gladiator's Linked Helm
					moh(2, i(35046)),	-- Brutal Gladiator's Linked Spaulders
					moh(3, i(35042)),	-- Brutal Gladiator's Linked Armor
					moh(2, i(35043)),	-- Brutal Gladiator's Linked Gauntlets
					moh(3, i(35045)),	-- Brutal Gladiator's Linked Leggings

					moh(3, i(35050)),	-- Brutal Gladiator's Mail Helm
					moh(2, i(35052)),	-- Brutal Gladiator's Mail Spaulders
					moh(3, i(35048)),	-- Brutal Gladiator's Mail Armor
					moh(2, i(35049)),	-- Brutal Gladiator's Mail Gauntlets
					moh(3, i(35051)),	-- Brutal Gladiator's Mail Leggings

					moh(3, i(35079)),	-- Brutal Gladiator's Ringmail Helm
					moh(2, i(35081)),	-- Brutal Gladiator's Ringmail Spaulders
					moh(3, i(35077)),	-- Brutal Gladiator's Ringmail Armor
					moh(2, i(35078)),	-- Brutal Gladiator's Ringmail Gauntlets
					moh(3, i(35080)),	-- Brutal Gladiator's Ringmail Leggings
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146601, {	-- Ensemble: Brutal Gladiator's Felweave Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35004)),	-- Brutal Gladiator's Dreadweave Hood
					moh(2, i(35006)),	-- Brutal Gladiator's Dreadweave Mantle
					moh(3, i(35007)),	-- Brutal Gladiator's Dreadweave Robe
					moh(2, i(35003)),	-- Brutal Gladiator's Dreadweave Gloves
					moh(3, i(35005)),	-- Brutal Gladiator's Dreadweave Leggings

					moh(3, i(35010)),	-- Brutal Gladiator's Felweave Cowl
					moh(2, i(35009)),	-- Brutal Gladiator's Felweave Amice
					moh(3, i(35012)),	-- Brutal Gladiator's Felweave Raiment
					moh(2, i(35011)),	-- Brutal Gladiator's Felweave Handguards
					moh(3, i(35013)),	-- Brutal Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146603, {	-- Ensemble: Brutal Gladiator's Plate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(35068)),	-- Brutal Gladiator's Plate Helm
					moh(2, i(35070)),	-- Brutal Gladiator's Plate Shoulders
					moh(3, i(35066)),	-- Brutal Gladiator's Plate Chestpiece
					moh(2, i(35067)),	-- Brutal Gladiator's Plate Gauntlets
					moh(3, i(35069)),	-- Brutal Gladiator's Plate Legguards
				}),
				bubbleDown({ ["timeline"] = { ADDED_3_0_2 } }, n(BACK, {
					moh(2, i(41591)),	-- Sergeant's Reinforced Cape
					moh(2, i(41592)),	-- The Gladiator's Resolution
					moh(2, i(44429)),	-- Volanthius Shroud
					moh(2, i(44431)),	-- Cloak of Certain Reprieve
				})),
				n(WRIST, {
					moh(1, i(35166)),	-- Guardian's Chain Bracers
					moh(1, i(35167)),	-- Guardian's Dragonhide Bracers
					moh(1, i(35168)),	-- Guardian's Dreadweave Cuffs
					moh(1, i(35169)),	-- Guardian's Kodohide Bracers
					moh(1, i(35170)),	-- Guardian's Lamellar Bracers
					moh(1, i(35171)),	-- Guardian's Leather Bracers
					moh(1, i(35172)),	-- Guardian's Linked Bracers
					moh(1, i(35173)),	-- Guardian's Mail Bracers
					moh(1, i(35174)),	-- Guardian's Mooncloth Cuffs
					moh(1, i(35175)),	-- Guardian's Ornamented Bracers
					moh(1, i(35176)),	-- Guardian's Plate Bracers
					moh(1, i(35177)),	-- Guardian's Ringmail Bracers
					moh(1, i(35178)),	-- Guardian's Scaled Bracers
					moh(1, i(35179)),	-- Guardian's Silk Cuffs
					moh(1, i(35180)),	-- Guardian's Wyrmhide Bracers
				}),
				n(WAIST, {
					moh(1, i(35151)),	-- Guardian's Chain Girdle
					moh(1, i(35152)),	-- Guardian's Dragonhide Belt
					moh(1, i(35153)),	-- Guardian's Dreadweave Belt
					moh(1, i(35154)),	-- Guardian's Kodohide Belt
					moh(1, i(35155)),	-- Guardian's Lamellar Belt
					moh(1, i(35156)),	-- Guardian's Leather Belt
					moh(1, i(35157)),	-- Guardian's Linked Girdle
					moh(1, i(35158)),	-- Guardian's Mail Girdle
					moh(1, i(35159)),	-- Guardian's Mooncloth Belt
					moh(1, i(35160)),	-- Guardian's Ornamented Belt
					moh(1, i(35161)),	-- Guardian's Plate Belt
					moh(1, i(35162)),	-- Guardian's Ringmail Girdle
					moh(1, i(35163)),	-- Guardian's Scaled Belt
					moh(1, i(35164)),	-- Guardian's Silk Belt
					moh(1, i(35165)),	-- Guardian's Wyrmhide Belt
				}),
				n(FEET, {
					moh(2, i(35136)),	-- Guardian's Chain Sabatons
					moh(2, i(35137)),	-- Guardian's Dragonhide Boots
					moh(2, i(35138)),	-- Guardian's Dreadweave Stalkers
					moh(2, i(35139)),	-- Guardian's Kodohide Boots
					moh(2, i(35140)),	-- Guardian's Lamellar Greaves
					moh(2, i(35141)),	-- Guardian's Leather Boots
					moh(2, i(35142)),	-- Guardian's Linked Sabatons
					moh(2, i(35143)),	-- Guardian's Mail Sabatons
					moh(2, i(35144)),	-- Guardian's Mooncloth Slippers
					moh(2, i(35145)),	-- Guardian's Ornamented Greaves
					moh(2, i(35146)),	-- Guardian's Plate Greaves
					moh(2, i(35147)),	-- Guardian's Ringmail Sabatons
					moh(2, i(35148)),	-- Guardian's Scaled Greaves
					moh(2, i(35149)),	-- Guardian's Silk Footguards
					moh(2, i(35150)),	-- Guardian's Wyrmhide Boots
				}),
				filter(NECK_F, {
					i(35132, {	-- Guardian's Pendant of Conquest
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(35133, {	-- Guardian's Pendant of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(37929, {	-- Guardian's Pendant of Reprieve
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(35134, {	-- Guardian's Pendant of Salvation
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(37928, {	-- Guardian's Pendant of Subjugation
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(35135, {	-- Guardian's Pendant of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
				}),
				filter(FINGER_F, {
					i(35129, {	-- Guardian's Band of Dominance
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(35130, {	-- Guardian's Band of Salvation
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(37927, {	-- Guardian's Band of Subjugation
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(35131, {	-- Guardian's Band of Triumph
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
				}),
				-- #if BEFORE MOP
				filter(RELICS_F, {
					i(35019, {	-- Brutal Gladiator's Idol of Resolve
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35020, {	-- Brutal Gladiator's Idol of Steadfastness
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35021, {	-- Brutal Gladiator's Idol of Tenacity
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35039, {	-- Brutal Gladiator's Libram of Fortitude
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35040, {	-- Brutal Gladiator's Libram of Justice
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35041, {	-- Brutal Gladiator's Libram of Vengeance
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35104, {	-- Brutal Gladiator's Totem of Indomitability
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35105, {	-- Brutal Gladiator's Totem of Survival
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
					i(35106, {	-- Brutal Gladiator's Totem of the Third Wind
						["timeline"] = { ADDED_2_0_3, REMOVED_5_0_4 },
					}),
				}),
				-- #endif
				filter(TRINKET_F, {
					i(41587, {	-- Battlemaster's Celerity
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					}),
					i(41588, {	-- Battlemaster's Aggression
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					}),
					i(41589, {	-- Battlemaster's Resolve
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					}),
					i(41590, {	-- Battlemaster's Courage
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					}),
					i(37864, {	-- Medallion of the Alliance (epic)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(38589, {	-- Medallion of the Alliance (dk)
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					}),
					i(69861, {	-- Medallion of the Alliance (not during bc, but for bc)
						["timeline"] = { ADDED_4_1_0, REMOVED_6_0_2 },
					}),
					i(37865, {	-- Medallion of the Horde (epic)
						["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					}),
					i(38588, {	-- Medallion of the Horde (dk)
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					}),
					i(69862, {	-- Medallion of the Horde (not during bc, but for bc)
						["timeline"] = { ADDED_4_1_0, REMOVED_6_0_2 },
					}),
				}),
			}),
		},
	})),
})))));

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
-- 	n(PVP, {
-- 		-- PvP Ensembles
-- 		q(46621),	-- Gladiator's Chain Armor (Hunter)
-- 		q(46622),	-- Gladiator's Dragonhide Armor (Druid)
-- 		q(46623),	-- Gladiator's Felweave Armor (Warlock)
-- 		q(46624),	-- Gladiator's Leather Armor (Rogue)
-- 		q(46625),	-- Gladiator's Plate Armor (Warrior)
-- 		q(46626),	-- Gladiator's Ringmail Armor (Shaman)
-- 		q(46627),	-- Gladiator's Satin Armor (Priest)
-- 		q(46628),	-- Gladiator's Scaled Armor (Paladin)
-- 		q(46629),	-- Gladiator's Silk Armor (Mage)
-- 		q(46631),	-- Brutal Gladiator's Chain Armor (Hunter)
-- 		q(46632),	-- Brutal Gladiator's Dragonhide Armor (Druid)
-- 		q(46633),	-- Brutal Gladiator's Felweave Armor (Warlock)
-- 		q(46634),	-- Brutal Gladiator's Leather Armor (Rogue)
-- 		q(46635),	-- Brutal Gladiator's Plate Armor (Warrior)
-- 		q(46636),	-- Brutal Gladiator's Ringmail Armor (Shaman)
-- 		q(46637),	-- Brutal Gladiator's Satin Armor (Priest)
-- 		q(46638),	-- Brutal Gladiator's Scaled Armor (Paladin)
-- 		q(46639),	-- Brutal Gladiator's Silk Armor (Mage)
-- 		q(47060),	-- Brutal Gladiator's Dreadplate Armor (Death Knight)
-- 		q(46641),	-- Vengeful Gladiator's Chain Armor (Hunter)
-- 		q(46642),	-- Vengeful Gladiator's Dragonhide Armor (Druid)
-- 		q(46643),	-- Vengeful Gladiator's Felweave Armor (Warlock)
-- 		q(46644),	-- Vengeful Gladiator's Leather Armor (Rogue)
-- 		q(46645),	-- Vengeful Gladiator's Plate Armor (Warrior)
-- 		q(46646),	-- Vengeful Gladiator's Ringmail Armor (Shaman)
-- 		q(46647),	-- Vengeful Gladiator's Satin Armor (Priest)
-- 		q(46648),	-- Vengeful Gladiator's Scaled Armor (Paladin)
-- 		q(46649),	-- Vengeful Gladiator's Silk Armor (Mage)
-- 		q(46651),	-- Merciless Gladiator's Chain Armor (Hunter)
-- 		q(46652),	-- Merciless Gladiator's Dragonhide Armor (Druid)
-- 		q(46653),	-- Merciless Gladiator's Felweave Armor (Warlock)
-- 		q(46654),	-- Merciless Gladiator's Leather Armor (Rogue)
-- 		q(46655),	-- Merciless Gladiator's Plate Armor (Warrior)
-- 		q(46656),	-- Merciless Gladiator's Ringmail Armor (Shaman)
-- 		q(46657),	-- Merciless Gladiator's Satin Armor (Priest)
-- 		q(46658),	-- Merciless Gladiator's Scaled Armor (Paladin)
-- 		q(46659),	-- Merciless Gladiator's Silk Armor (Mage)

-- 		-- PvP Arsenals
-- 		q(46630),	-- Gladiator's Arsenal
-- 		q(46640),	-- Brutal Gladiator's Arsenal
-- 		q(46650),	-- Vengeful Gladiator's Arsenal
-- 		q(46660),	-- Merciless Gladiator's Arsenal
-- 	}),
-- })));
