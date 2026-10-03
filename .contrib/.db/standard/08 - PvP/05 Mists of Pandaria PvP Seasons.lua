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
	return t;
end

-- #if BEFORE WOD
local SEASON_MALEVOLENT_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
	end
end]];
local SEASON_TYRANNICAL_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[;
	end
end]];
-- #endif

root(ROOTS.PVP, {
	run(MarkOfWHOOOWHATNow, pvp(expansion(EXPANSION.MOP, {
		n(SEASON_MALEVOLENT, applyclassicphase(MOP_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
			n(ACHIEVEMENTS, {
				ach(11717, {["timeline"] = {ADDED_7_2_0}}),	-- Why Male(volent) Models? (PvP Season 12)
			}),
			n(ACHIEVEMENTS, bubbleDown({
				["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
				-- #if BEFORE WOD
				["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
				-- #endif
			}, {
				ach(8243, {	-- Hero of the Alliance: Malevolent
					["races"] = ALLIANCE_ONLY,
				}),
				ach(8244, {	-- Hero of the Horde: Malevolent
					["races"] = HORDE_ONLY,
				}),
				ach(8214, {	-- Malevolent Gladiator (Retail) // Malevolent Gladiator: Season 12 (3v3) (Classic)
					title(223),	-- Malevolent Gladiator <Name>
				}),
				ach(8216, {	-- Malevolent Gladiator's Cloud Serpent
					["provider"] = { "i", 95041 },	-- Malevolent Gladiator's Cloud Serpent
					["filterID"] = MOUNTS,
				}),
				i(95041, {	-- Malevolent Gladiator's Cloud Serpent
					["description"] = "Awarded to members of the Arena teams during MoP Season 1 that were in the 0.5% bracket of their battlegroup.",
				}),
				-- #if ANYCLASSIC
				ach(42762),	-- Challenger: Season 12
				ach(42764),	-- Rival: Season 12
				ach(42763),	-- Duelist: Season 12
				ach(61350, {	-- Gladiator: Season 12 (2v2)
				}),
				ach(42765, {	-- Gladiator: Season 12 (3v3)
				}),
				ach(61358, {	-- Gladiator: Season 12 (5v5)
				}),
				ach(61459, {	-- Malevolent Conquest
					["races"] = HORDE_ONLY,
				}),
				ach(61460, {	-- Malevolent Conquest
					["races"] = ALLIANCE_ONLY,
				}),
				ach(61354, {	-- Malevolent Gladiator: Season 12 (2v2)
					title(223),	-- Malevolent Gladiator <Name>
				}),
				ach(61362, {	-- Malevolent Gladiator: Season 12 (5v5)
					title(223),	-- Malevolent Gladiator <Name>
				}),
				ach(61415, {	-- Undisputed Gladiator: Season 12
					title(261),	-- Undisputed Gladiator <Name>
				}),
				-- #endif
			})),
			n(PVP_HONOR, {
				-- #if ANYCLASSIC
				n(WEAPONS, {
					i(84714),	-- Dreadful Gladiator's Barrier
					i(84723),	-- Dreadful Gladiator's Battle Staff
					i(84719),	-- Dreadful Gladiator's Bonecracker
					i(84721),	-- Dreadful Gladiator's Bonegrinder
					i(84701),	-- Dreadful Gladiator's Cleaver
					i(84707),	-- Dreadful Gladiator's Decapitator
					i(84711),	-- Dreadful Gladiator's Endgame
					i(84724),	-- Dreadful Gladiator's Energy Staff
					i(84720),	-- Dreadful Gladiator's Gavel
					i(84717),	-- Dreadful Gladiator's Greatsword
					i(84702),	-- Dreadful Gladiator's Hacker
					i(84705),	-- Dreadful Gladiator's Longbow
					i(84722),	-- Dreadful Gladiator's Pike
					i(84700),	-- Dreadful Gladiator's Pummeler
					i(84716),	-- Dreadful Gladiator's Quickblade
					i(84715),	-- Dreadful Gladiator's Redoubt
					i(84699),	-- Dreadful Gladiator's Render
					i(84712),	-- Dreadful Gladiator's Reprieve
					i(84706),	-- Dreadful Gladiator's Rifle
					i(84696),	-- Dreadful Gladiator's Ripper
					i(84708),	-- Dreadful Gladiator's Shanker
					i(84713),	-- Dreadful Gladiator's Shield Wall
					i(84710),	-- Dreadful Gladiator's Slicer
					i(84695),	-- Dreadful Gladiator's Spellblade
					i(84725),	-- Dreadful Gladiator's Staff
				}),
				-- #endif
				cl(DEATHKNIGHT, {
					moh(12, iensemble(138715, {	-- Ensemble: Dreadful Gladiator's Dreadplate Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(3, i(84372)),	-- Dreadful Gladiator's Dreadplate Chestpiece
					moh(2, i(84373)),	-- Dreadful Gladiator's Dreadplate Gauntlets
					moh(3, i(84374)),	-- Dreadful Gladiator's Dreadplate Helm
					moh(3, i(84375)),	-- Dreadful Gladiator's Dreadplate Legguards
					moh(2, i(84376)),	-- Dreadful Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					moh(12, iensemble(138719, {	-- Ensemble: Dreadful Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(2, i(84377)),	-- Dreadful Gladiator's Dragonhide Gloves
					moh(3, i(84378)),	-- Dreadful Gladiator's Dragonhide Helm
					moh(3, i(84379)),	-- Dreadful Gladiator's Dragonhide Legguards
					moh(3, i(84380)),	-- Dreadful Gladiator's Dragonhide Robes
					moh(2, i(84381)),	-- Dreadful Gladiator's Dragonhide Spaulders
					moh(2, i(84385)),	-- Dreadful Gladiator's Kodohide Gloves
					moh(3, i(84386)),	-- Dreadful Gladiator's Kodohide Helm
					moh(3, i(84387)),	-- Dreadful Gladiator's Kodohide Legguards
					moh(3, i(84388)),	-- Dreadful Gladiator's Kodohide Robes
					moh(2, i(84389)),	-- Dreadful Gladiator's Kodohide Spaulders
					moh(2, i(84393)),	-- Dreadful Gladiator's Wyrmhide Gloves
					moh(3, i(84394)),	-- Dreadful Gladiator's Wyrmhide Helm
					moh(3, i(84395)),	-- Dreadful Gladiator's Wyrmhide Legguards
					moh(3, i(84396)),	-- Dreadful Gladiator's Wyrmhide Robes
					moh(2, i(84397)),	-- Dreadful Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					moh(12, iensemble(138718, {	-- Ensemble: Dreadful Gladiator's Chain Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(3, i(84408)),	-- Dreadful Gladiator's Chain Armor
					moh(2, i(84409)),	-- Dreadful Gladiator's Chain Gauntlets
					moh(3, i(84410)),	-- Dreadful Gladiator's Chain Helm
					moh(3, i(84411)),	-- Dreadful Gladiator's Chain Leggings
					moh(2, i(84412)),	-- Dreadful Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					moh(12, iensemble(138722, {	-- Ensemble: Dreadful Gladiator's Silk Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(2, i(84417)),	-- Dreadful Gladiator's Silk Amice
					moh(3, i(84414)),	-- Dreadful Gladiator's Silk Cowl
					moh(2, i(84413)),	-- Dreadful Gladiator's Silk Handguards
					moh(3, i(84416)),	-- Dreadful Gladiator's Silk Robe
					moh(3, i(84415)),	-- Dreadful Gladiator's Silk Trousers
				}),
				cl(MONK, {
					moh(12, iensemble(138720, {	-- Ensemble: Dreadful Gladiator's Ironskin Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(2, i(84548)),	-- Dreadful Gladiator's Copperskin Gloves
					moh(3, i(84549)),	-- Dreadful Gladiator's Copperskin Helm
					moh(3, i(84550)),	-- Dreadful Gladiator's Copperskin Legguards
					moh(2, i(84552)),	-- Dreadful Gladiator's Copperskin Spaulders
					moh(3, i(84551)),	-- Dreadful Gladiator's Copperskin Tunic
					moh(2, i(84543)),	-- Dreadful Gladiator's Ironskin Gloves
					moh(3, i(84544)),	-- Dreadful Gladiator's Ironskin Helm
					moh(3, i(84545)),	-- Dreadful Gladiator's Ironskin Legguards
					moh(2, i(84547)),	-- Dreadful Gladiator's Ironskin Spaulders
					moh(3, i(84546)),	-- Dreadful Gladiator's Ironskin Tunic
				}),
				cl(PALADIN, {
					moh(12, iensemble(138716, {	-- Ensemble: Dreadful Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(3, i(84429)),	-- Dreadful Gladiator's Ornamented Chestguard
					moh(2, i(84430)),	-- Dreadful Gladiator's Ornamented Gloves
					moh(3, i(84431)),	-- Dreadful Gladiator's Ornamented Headcover
					moh(3, i(84432)),	-- Dreadful Gladiator's Ornamented Legplates
					moh(2, i(84433)),	-- Dreadful Gladiator's Ornamented Spaulders
					moh(3, i(84418)),	-- Dreadful Gladiator's Scaled Chestpiece
					moh(2, i(84419)),	-- Dreadful Gladiator's Scaled Gauntlets
					moh(3, i(84420)),	-- Dreadful Gladiator's Scaled Helm
					moh(3, i(84421)),	-- Dreadful Gladiator's Scaled Legguards
					moh(2, i(84422)),	-- Dreadful Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					moh(12, iensemble(138723, {	-- Ensemble: Dreadful Gladiator's Satin Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(2, i(84440)),	-- Dreadful Gladiator's Mooncloth Gloves
					moh(3, i(84441)),	-- Dreadful Gladiator's Mooncloth Helm
					moh(3, i(84442)),	-- Dreadful Gladiator's Mooncloth Leggings
					moh(2, i(84444)),	-- Dreadful Gladiator's Mooncloth Mantle
					moh(3, i(84443)),	-- Dreadful Gladiator's Mooncloth Robe
					moh(2, i(84445)),	-- Dreadful Gladiator's Satin Gloves
					moh(3, i(84446)),	-- Dreadful Gladiator's Satin Hood
					moh(3, i(84447)),	-- Dreadful Gladiator's Satin Leggings
					moh(2, i(84449)),	-- Dreadful Gladiator's Satin Mantle
					moh(3, i(84448)),	-- Dreadful Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					moh(12, iensemble(138721, {	-- Ensemble: Dreadful Gladiator's Leather Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(2, i(84463)),	-- Dreadful Gladiator's Leather Gloves
					moh(3, i(84464)),	-- Dreadful Gladiator's Leather Helm
					moh(3, i(84465)),	-- Dreadful Gladiator's Leather Legguards
					moh(2, i(84466)),	-- Dreadful Gladiator's Leather Spaulders
					moh(3, i(84462)),	-- Dreadful Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					moh(12, iensemble(138717, {	-- Ensemble: Dreadful Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(3, i(84477)),	-- Dreadful Gladiator's Linked Armor
					moh(2, i(84478)),	-- Dreadful Gladiator's Linked Gauntlets
					moh(3, i(84479)),	-- Dreadful Gladiator's Linked Helm
					moh(3, i(84480)),	-- Dreadful Gladiator's Linked Leggings
					moh(2, i(84481)),	-- Dreadful Gladiator's Linked Spaulders
					moh(3, i(84483)),	-- Dreadful Gladiator's Mail Armor
					moh(2, i(84484)),	-- Dreadful Gladiator's Mail Gauntlets
					moh(3, i(84485)),	-- Dreadful Gladiator's Mail Helm
					moh(3, i(84486)),	-- Dreadful Gladiator's Mail Leggings
					moh(2, i(84487)),	-- Dreadful Gladiator's Mail Spaulders
					moh(3, i(84472)),	-- Dreadful Gladiator's Ringmail Armor
					moh(2, i(84473)),	-- Dreadful Gladiator's Ringmail Gauntlets
					moh(3, i(84474)),	-- Dreadful Gladiator's Ringmail Helm
					moh(3, i(84475)),	-- Dreadful Gladiator's Ringmail Leggings
					moh(2, i(84476)),	-- Dreadful Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					moh(12, iensemble(138724, {	-- Ensemble: Dreadful Gladiator's Felweave Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(2, i(84503)),	-- Dreadful Gladiator's Felweave Amice
					moh(3, i(84500)),	-- Dreadful Gladiator's Felweave Cowl
					moh(2, i(84499)),	-- Dreadful Gladiator's Felweave Handguards
					moh(3, i(84502)),	-- Dreadful Gladiator's Felweave Raiment
					moh(3, i(84501)),	-- Dreadful Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(138714, {	-- Ensemble: Dreadful Gladiator's Plate Armor
						["timeline"] = { ADDED_7_1_5 },
					})),
					moh(3, i(84504)),	-- Dreadful Gladiator's Plate Chestpiece
					moh(2, i(84505)),	-- Dreadful Gladiator's Plate Gauntlets
					moh(3, i(84506)),	-- Dreadful Gladiator's Plate Helm
					moh(3, i(84507)),	-- Dreadful Gladiator's Plate Legguards
					moh(2, i(84508)),	-- Dreadful Gladiator's Plate Shoulders
				}),
				n(BACK, {
					moh(1, i(84345)),	-- Dreadful Gladiator's Cape of Cruelty
					moh(1, i(84346)),	-- Dreadful Gladiator's Cape of Prowess
					moh(1, i(84491)),	-- Dreadful Gladiator's Cloak of Alacrity
					moh(1, i(84492)),	-- Dreadful Gladiator's Cloak of Prowess
					moh(1, i(84363)),	-- Dreadful Gladiator's Drape of Cruelty
					moh(1, i(84364)),	-- Dreadful Gladiator's Drape of Meditation
					moh(1, i(84362)),	-- Dreadful Gladiator's Drape of Prowess
				}),
				n(WRIST, {
					moh(1, i(84471)),	-- Dreadful  Gladiator's Armbands of Meditation
					moh(1, i(84470)),	-- Dreadful  Gladiator's Armbands of Prowess
					moh(1, i(84439)),	-- Dreadful Gladiator's Armplates of Alacrity
					moh(1, i(84438)),	-- Dreadful Gladiator's Armplates of Proficiency
					moh(1, i(84461)),	-- Dreadful Gladiator's Armwraps of Accuracy
					moh(1, i(84460)),	-- Dreadful Gladiator's Armwraps of Alacrity
					moh(1, i(84384)),	-- Dreadful Gladiator's Bindings of Meditation
					moh(1, i(84392)),	-- Dreadful Gladiator's Bindings of Prowess
					moh(1, i(84428)),	-- Dreadful Gladiator's Bracers of Meditation
					moh(1, i(84427)),	-- Dreadful Gladiator's Bracers of Prowess
					moh(1, i(84359)),	-- Dreadful Gladiator's Cuffs of Accuracy
					moh(1, i(84361)),	-- Dreadful Gladiator's Cuffs of Meditation
					moh(1, i(84360)),	-- Dreadful Gladiator's Cuffs of Prowess
					moh(1, i(84407)),	-- Dreadful Gladiator's Wristguards of Accuracy
					moh(1, i(84406)),	-- Dreadful Gladiator's Wristguards of Alacrity
				}),
				n(WAIST, {
					moh(1, i(84390)),	-- Dreadful Gladiator's Belt of Cruelty
					moh(1, i(84382)),	-- Dreadful Gladiator's Belt of Meditation
					moh(1, i(84423)),	-- Dreadful Gladiator's Clasp of Cruelty
					moh(1, i(84424)),	-- Dreadful Gladiator's Clasp of Meditation
					moh(1, i(84354)),	-- Dreadful Gladiator's Cord of Accuracy
					moh(1, i(84353)),	-- Dreadful Gladiator's Cord of Cruelty
					moh(1, i(84355)),	-- Dreadful Gladiator's Cord of Meditation
					moh(1, i(84434)),	-- Dreadful Gladiator's Girdle of Accuracy
					moh(1, i(84435)),	-- Dreadful Gladiator's Girdle of Prowess
					moh(1, i(84403)),	-- Dreadful Gladiator's Links of Accuracy
					moh(1, i(84402)),	-- Dreadful Gladiator's Links of Cruelty
					moh(1, i(84457)),	-- Dreadful Gladiator's Waistband of Accuracy
					moh(1, i(84456)),	-- Dreadful Gladiator's Waistband of Cruelty
					moh(1, i(84482)),	-- Dreadful Gladiator's Waistguard of Cruelty
					moh(1, i(84467)),	-- Dreadful Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					moh(2, i(84459)),	-- Dreadful Gladiator's Boots of Alacrity
					moh(2, i(84458)),	-- Dreadful Gladiator's Boots of Cruelty
					moh(2, i(84391)),	-- Dreadful Gladiator's Footguards of Alacrity (Leather)
					moh(2, i(84383)),	-- Dreadful Gladiator's Footguards of Meditation (Leather)
					moh(2, i(84468)),	-- Dreadful Gladiator's Footguards of Alacrity (Mail)
					moh(2, i(84469)),	-- Dreadful Gladiator's Footguards of Meditation (Mail)
					moh(2, i(84425)),	-- Dreadful Gladiator's Greaves of Alacrity
					moh(2, i(84426)),	-- Dreadful Gladiator's Greaves of Meditation
					moh(2, i(84405)),	-- Dreadful Gladiator's Sabatons of Alacrity
					moh(2, i(84404)),	-- Dreadful Gladiator's Sabatons of Cruelty
					moh(2, i(84357)),	-- Dreadful Gladiator's Treads of Alacrity
					moh(2, i(84356)),	-- Dreadful Gladiator's Treads of Cruelty
					moh(2, i(84358)),	-- Dreadful Gladiator's Treads of Meditation
					moh(2, i(84437)),	-- Dreadful Gladiator's Warboots of Alacrity
					moh(2, i(84436)),	-- Dreadful Gladiator's Warboots of Cruelty
				}),
				filter(FINGER_F, sharedData({
					["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					-- #if BEFORE WOD
					["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
					-- #endif
				}, {
					i(84370),	-- Dreadful Gladiator's Band of Accuracy
					i(84369),	-- Dreadful Gladiator's Band of Cruelty
					i(84371),	-- Dreadful Gladiator's Band of Meditation
					i(84352),	-- Dreadful Gladiator's Ring of Accuracy
					i(84351),	-- Dreadful Gladiator's Ring of Cruelty
					i(84498),	-- Dreadful Gladiator's Signet of Accuracy
					i(84497),	-- Dreadful Gladiator's Signet of Cruelty
				})),
				filter(NECK_F, sharedData({
					["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					-- #if BEFORE WOD
					["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
					-- #endif
				}, {
					i(84494),	-- Dreadful Gladiator's Choker of Accuracy
					i(84493),	-- Dreadful Gladiator's Choker of Proficiency
					i(84347),	-- Dreadful Gladiator's Necklace of Proficiency
					i(84348),	-- Dreadful Gladiator's Necklace of Prowess
					i(84365),	-- Dreadful Gladiator's Pendant of Alacrity
					i(84366),	-- Dreadful Gladiator's Pendant of Cruelty
					i(84367),	-- Dreadful Gladiator's Pendant of Meditation
				})),
				filter(TRINKET_F, sharedData({
					["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					-- #if BEFORE WOD
					["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
					-- #endif
				}, {
					i(84344),	-- Dreadful Gladiator's Badge of Conquest
					i(84488),	-- Dreadful Gladiator's Badge of Dominance
					i(84490),	-- Dreadful Gladiator's Badge of Victory
					i(84399),	-- Dreadful Gladiator's Emblem of Cruelty
					i(84401),	-- Dreadful Gladiator's Emblem of Meditation
					i(84400),	-- Dreadful Gladiator's Emblem of Tenacity
					i(84349),	-- Dreadful Gladiator's Insignia of Conquest
					i(84489),	-- Dreadful Gladiator's Insignia of Dominance
					i(84495),	-- Dreadful Gladiator's Insignia of Victory
					i(84450),	-- Dreadful Gladiator's Medallion of Cruelty (A)
					i(84454),	-- Dreadful Gladiator's Medallion of Meditation (A)
					i(84452),	-- Dreadful Gladiator's Medallion of Tenacity (A)
					i(84451),	-- Dreadful Gladiator's Medallion of Cruelty (H)
					i(84455),	-- Dreadful Gladiator's Medallion of Meditation (H)
					i(84453),	-- Dreadful Gladiator's Medallion of Tenacity (H)
				})),
			}),
			n(PVP_GLADIATOR, {
				-- ["description"] = "These items are available from Malevolent Gladiator: Season 12 class ensembles only",
				["groups"] = {
					n(WEAPONS, sharedData({
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						-- #endif
					}, {
						moh(80, iensemble(144243, {	-- Arsenal: Malevolent Gladiator's Weapons
							["timeline"] = { ADDED_7_1_5 },
						})),
						-- S12 Tag
						i(84911),	-- Malevolent Gladiator's Barrier
						i(84787),	-- Malevolent Gladiator's Battle Staff
						i(84970),	-- Malevolent Gladiator's Bonecracker
						i(84785),	-- Malevolent Gladiator's Bonegrinder
						i(84965),	-- Malevolent Gladiator's Cleaver
						i(84791),	-- Malevolent Gladiator's Decapitator
						i(84866),	-- Malevolent Gladiator's Endgame
						i(84788),	-- Malevolent Gladiator's Energy Staff
						i(84971),	-- Malevolent Gladiator's Gavel
						i(84790),	-- Malevolent Gladiator's Greatsword
						i(84966),	-- Malevolent Gladiator's Hacker
						i(84896),	-- Malevolent Gladiator's Longbow
						i(84786),	-- Malevolent Gladiator's Pike
						i(84964),	-- Malevolent Gladiator's Pummeler
						i(84969),	-- Malevolent Gladiator's Quickblade
						i(84912),	-- Malevolent Gladiator's Redoubt
						i(84963),	-- Malevolent Gladiator's Render
						i(84867),	-- Malevolent Gladiator's Reprieve
						i(84900),	-- Malevolent Gladiator's Rifle
						i(84962),	-- Malevolent Gladiator's Ripper
						i(84967),	-- Malevolent Gladiator's Shanker
						i(84910),	-- Malevolent Gladiator's Shield Wall
						i(84894, {	-- Malevolent Gladiator's Slasher
							["timeline"] = { CREATED_5_0_4 },
						}),
						i(84968),	-- Malevolent Gladiator's Slicer
						i(84961),	-- Malevolent Gladiator's Spellblade
						i(84789),	-- Malevolent Gladiator's Staff
					})),
					cl(DEATHKNIGHT, {
						moh(12, iensemble(138704, {	-- Ensemble: Malevolent Gladiator's Dreadplate Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84795),	-- Malevolent Gladiator's Dreadplate Chestpiece
						i(84835),	-- Malevolent Gladiator's Dreadplate Gauntlets
						i(84853),	-- Malevolent Gladiator's Dreadplate Helm
						i(84872),	-- Malevolent Gladiator's Dreadplate Legguards
						i(84918),	-- Malevolent Gladiator's Dreadplate Shoulders
					}),
					cl(DRUID, {
						moh(12, iensemble(138708, {	-- Ensemble: Malevolent Gladiator's Dragonhide Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84832),	-- Malevolent Gladiator's Dragonhide Gloves
						i(84852),	-- Malevolent Gladiator's Dragonhide Helm
						i(84871),	-- Malevolent Gladiator's Dragonhide Legguards
						i(84901),	-- Malevolent Gladiator's Dragonhide Robes
						i(84916),	-- Malevolent Gladiator's Dragonhide Spaulders
						i(84833),	-- Malevolent Gladiator's Kodohide Gloves
						i(84850),	-- Malevolent Gladiator's Kodohide Helm
						i(84882),	-- Malevolent Gladiator's Kodohide Legguards
						i(84907),	-- Malevolent Gladiator's Kodohide Robes
						i(84927),	-- Malevolent Gladiator's Kodohide Spaulders
						i(84843),	-- Malevolent Gladiator's Wyrmhide Gloves
						i(84861),	-- Malevolent Gladiator's Wyrmhide Helm
						i(84880),	-- Malevolent Gladiator's Wyrmhide Legguards
						i(84906),	-- Malevolent Gladiator's Wyrmhide Robes
						i(84925),	-- Malevolent Gladiator's Wyrmhide Spaulders
					}),
					cl(HUNTER, {
						moh(12, iensemble(138707, {	-- Ensemble: Malevolent Gladiator's Chain Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84796),	-- Malevolent Gladiator's Chain Armor
						i(84841),	-- Malevolent Gladiator's Chain Gauntlets
						i(84858),	-- Malevolent Gladiator's Chain Helm
						i(84874),	-- Malevolent Gladiator's Chain Leggings
						i(84921),	-- Malevolent Gladiator's Chain Spaulders
					}),
					cl(MAGE, {
						moh(12, iensemble(138711, {	-- Ensemble: Malevolent Gladiator's Silk Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84917),	-- Malevolent Gladiator's Silk Amice
						i(84855),	-- Malevolent Gladiator's Silk Cowl
						i(84837),	-- Malevolent Gladiator's Silk Handguards
						i(84904),	-- Malevolent Gladiator's Silk Robe
						i(84875),	-- Malevolent Gladiator's Silk Trousers
					}),
					cl(MONK, {
						moh(12, iensemble(138709, {	-- Ensemble: Malevolent Gladiator's Ironskin Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84836),	-- Malevolent Gladiator's Copperskin Gloves
						i(84854),	-- Malevolent Gladiator's Copperskin Helm
						i(84873),	-- Malevolent Gladiator's Copperskin Legguards
						i(84920),	-- Malevolent Gladiator's Copperskin Spaulders
						i(84903),	-- Malevolent Gladiator's Copperskin Tunic
						i(84839),	-- Malevolent Gladiator's Ironskin Gloves
						i(84857),	-- Malevolent Gladiator's Ironskin Helm
						i(84877),	-- Malevolent Gladiator's Ironskin Legguards
						i(84919),	-- Malevolent Gladiator's Ironskin Spaulders
						i(84902),	-- Malevolent Gladiator's Ironskin Tunic
					}),
					cl(PALADIN, {
						moh(12, iensemble(138705, {	-- Ensemble: Malevolent Gladiator's Scaled Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84793),	-- Malevolent Gladiator's Ornamented Chestguard
						i(84831),	-- Malevolent Gladiator's Ornamented Gloves
						i(84849),	-- Malevolent Gladiator's Ornamented Headcover
						i(84869),	-- Malevolent Gladiator's Ornamented Legplates
						i(84914),	-- Malevolent Gladiator's Ornamented Spaulders
						i(84794),	-- Malevolent Gladiator's Scaled Chestpiece
						i(84834),	-- Malevolent Gladiator's Scaled Gauntlets
						i(84851),	-- Malevolent Gladiator's Scaled Helm
						i(84870),	-- Malevolent Gladiator's Scaled Legguards
						i(84915),	-- Malevolent Gladiator's Scaled Shoulders
					}),
					cl(PRIEST, {
						moh(12, iensemble(138712, {	-- Ensemble: Malevolent Gladiator's Satin Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84846),	-- Malevolent Gladiator's Mooncloth Gloves
						i(84863),	-- Malevolent Gladiator's Mooncloth Helm
						i(84883),	-- Malevolent Gladiator's Mooncloth Leggings
						i(84928),	-- Malevolent Gladiator's Mooncloth Mantle
						i(84908),	-- Malevolent Gladiator's Mooncloth Robe
						i(84838),	-- Malevolent Gladiator's Satin Gloves
						i(84864),	-- Malevolent Gladiator's Satin Hood
						i(84884),	-- Malevolent Gladiator's Satin Leggings
						i(84929),	-- Malevolent Gladiator's Satin Mantle
						i(84909),	-- Malevolent Gladiator's Satin Robe
					}),
					cl(ROGUE, {
						moh(12, iensemble(138710, {	-- Ensemble: Malevolent Gladiator's Leather Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84830),	-- Malevolent Gladiator's Leather Gloves
						i(84848),	-- Malevolent Gladiator's Leather Helm
						i(84868),	-- Malevolent Gladiator's Leather Legguards
						i(84913),	-- Malevolent Gladiator's Leather Spaulders
						i(84792),	-- Malevolent Gladiator's Leather Tunic
					}),
					cl(SHAMAN, {
						moh(12, iensemble(138706, {	-- Ensemble: Malevolent Gladiator's Ringmail Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84799),	-- Malevolent Gladiator's Linked Armor
						i(84844),	-- Malevolent Gladiator's Linked Gauntlets
						i(84862),	-- Malevolent Gladiator's Linked Helm
						i(84881),	-- Malevolent Gladiator's Linked Leggings
						i(84926),	-- Malevolent Gladiator's Linked Spaulders
						i(84798),	-- Malevolent Gladiator's Mail Armor
						i(84845),	-- Malevolent Gladiator's Mail Gauntlets
						i(84860),	-- Malevolent Gladiator's Mail Helm
						i(84879),	-- Malevolent Gladiator's Mail Leggings
						i(84924),	-- Malevolent Gladiator's Mail Spaulders
						i(84800),	-- Malevolent Gladiator's Ringmail Armor
						i(84847),	-- Malevolent Gladiator's Ringmail Gauntlets
						i(84865),	-- Malevolent Gladiator's Ringmail Helm
						i(84885),	-- Malevolent Gladiator's Ringmail Leggings
						i(84930),	-- Malevolent Gladiator's Ringmail Spaulders
					}),
					cl(WARLOCK, {
						moh(12, iensemble(138713, {	-- Ensemble: Malevolent Gladiator's Felweave Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84923),	-- Malevolent Gladiator's Felweave Amice
						i(84859),	-- Malevolent Gladiator's Felweave Cowl
						i(84842),	-- Malevolent Gladiator's Felweave Handguards
						i(84905),	-- Malevolent Gladiator's Felweave Raiment
						i(84878),	-- Malevolent Gladiator's Felweave Trousers
					}),
					cl(WARRIOR, {
						moh(12, iensemble(138703, {	-- Ensemble: Malevolent Gladiator's Plate Armor
							["timeline"] = { ADDED_7_1_5 },
						})),
						i(84797),	-- Malevolent Gladiator's Plate Chestpiece
						i(84840),	-- Malevolent Gladiator's Plate Gauntlets
						i(84856),	-- Malevolent Gladiator's Plate Helm
						i(84876),	-- Malevolent Gladiator's Plate Legguards
						i(84922),	-- Malevolent Gladiator's Plate Shoulders
					}),
					n(BACK, {
						-- From Sha of Anger
						i(84804),	-- Malevolent Gladiator's Cape of Cruelty
						i(84805),	-- Malevolent Gladiator's Cape of Prowess
						i(84807),	-- Malevolent Gladiator's Cloak of Alacrity
						i(84806),	-- Malevolent Gladiator's Cloak of Prowess
						i(84801),	-- Malevolent Gladiator's Drape of Cruelty
						i(84802),	-- Malevolent Gladiator's Drape of Meditation
						i(84803),	-- Malevolent Gladiator's Drape of Prowess
					}),
					n(WRIST, {
						-- From Sha of Anger
						i(84984),	-- Malevolent Gladiator's Armbands of Meditation
						i(84983),	-- Malevolent Gladiator's Armbands of Prowess
						i(84986),	-- Malevolent Gladiator's Armplates of Alacrity
						i(84985),	-- Malevolent Gladiator's Armplates of Proficiency
						i(84973),	-- Malevolent Gladiator's Armwraps of Accuracy
						i(84972),	-- Malevolent Gladiator's Armwraps of Alacrity
						i(84976),	-- Malevolent Gladiator's Bindings of Meditation
						i(84982),	-- Malevolent Gladiator's Bindings of Prowess
						i(84975),	-- Malevolent Gladiator's Bracers of Meditation
						i(84974),	-- Malevolent Gladiator's Bracers of Prowess
						i(84977),	-- Malevolent Gladiator's Cuffs of Accuracy
						i(84979),	-- Malevolent Gladiator's Cuffs of Meditation
						i(84978),	-- Malevolent Gladiator's Cuffs of Prowess
						i(84981),	-- Malevolent Gladiator's Wristguards of Accuracy
						i(84980),	-- Malevolent Gladiator's Wristguards of Alacrity
					}),
					n(WAIST, {
						-- From Sha of Anger
						i(84960),	-- Malevolent Gladiator's Belt of Cruelty
						i(84953),	-- Malevolent Gladiator's Belt of Meditation
						i(84951),	-- Malevolent Gladiator's Clasp of Cruelty
						i(84952),	-- Malevolent Gladiator's Clasp of Meditation
						i(84955),	-- Malevolent Gladiator's Cord of Accuracy
						i(84954),	-- Malevolent Gladiator's Cord of Cruelty
						i(84956),	-- Malevolent Gladiator's Cord of Meditation
						i(84949),	-- Malevolent Gladiator's Girdle of Accuracy
						i(84950),	-- Malevolent Gladiator's Girdle of Prowess
						i(84957),	-- Malevolent Gladiator's Links of Accuracy
						i(84958),	-- Malevolent Gladiator's Links of Cruelty
						i(84948),	-- Malevolent Gladiator's Waistband of Accuracy
						i(84947),	-- Malevolent Gladiator's Waistband of Cruelty
						i(84959),	-- Malevolent Gladiator's Waistguard of Cruelty
						i(84946),	-- Malevolent Gladiator's Waistguard of Meditation
					}),
					n(FEET, {
						-- From Sha of Anger
						i(84809),	-- Malevolent Gladiator's Boots of Alacrity
						i(84808),	-- Malevolent Gladiator's Boots of Cruelty
						i(84819),	-- Malevolent Gladiator's Footguards of Alacrity (Leather)
						i(84820),	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
						i(84813),	-- Malevolent Gladiator's Footguards of Meditation (Leather)
						i(84821),	-- Malevolent Gladiator's Footguards of Meditation (Mail)
						i(84811),	-- Malevolent Gladiator's Greaves of Alacrity
						i(84812),	-- Malevolent Gladiator's Greaves of Meditation
						i(84818),	-- Malevolent Gladiator's Sabatons of Alacrity
						i(84817),	-- Malevolent Gladiator's Sabatons of Cruelty
						i(84815),	-- Malevolent Gladiator's Treads of Alacrity
						i(84814),	-- Malevolent Gladiator's Treads of Cruelty
						i(84816),	-- Malevolent Gladiator's Treads of Meditation
						i(84822),	-- Malevolent Gladiator's Warboots of Alacrity
						i(84810),	-- Malevolent Gladiator's Warboots of Cruelty
					}),
					filter(NECK_F, {
						-- From Sha of Anger
						i(84892),	-- Malevolent Gladiator's Choker of Accuracy
						i(84891),	-- Malevolent Gladiator's Choker of Proficiency
						i(84889),	-- Malevolent Gladiator's Necklace of Proficiency
						i(84890),	-- Malevolent Gladiator's Necklace of Prowess
						i(84886),	-- Malevolent Gladiator's Pendant of Alacrity
						i(84887),	-- Malevolent Gladiator's Pendant of Cruelty
						i(84888),	-- Malevolent Gladiator's Pendant of Meditation
					}),
					filter(FINGER_F, {
						-- From Sha of Anger
						i(84824),	-- Malevolent Gladiator's Band of Accuracy
						i(84823),	-- Malevolent Gladiator's Band of Cruelty
						i(84825),	-- Malevolent Gladiator's Band of Meditation
						i(84827),	-- Malevolent Gladiator's Ring of Accuracy
						i(84826),	-- Malevolent Gladiator's Ring of Cruelty
						i(84829),	-- Malevolent Gladiator's Signet of Accuracy
						i(84828),	-- Malevolent Gladiator's Signet of Cruelty
					}),
					filter(TRINKET_F, sharedData({
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						-- #endif
					}, {
						i(84934),	-- Malevolent Gladiator's Badge of Conquest
						i(84940),	-- Malevolent Gladiator's Badge of Dominance
						i(84942),	-- Malevolent Gladiator's Badge of Victory
						i(84936),	-- Malevolent Gladiator's Emblem of Cruelty
						i(84939),	-- Malevolent Gladiator's Emblem of Meditation
						i(84938),	-- Malevolent Gladiator's Emblem of Tenacity
						i(84935),	-- Malevolent Gladiator's Insignia of Conquest
						i(84941),	-- Malevolent Gladiator's Insignia of Dominance
						i(84937),	-- Malevolent Gladiator's Insignia of Victory
						i(84943),	-- Malevolent Gladiator's Medallion of Cruelty (A)
						i(84932),	-- Malevolent Gladiator's Medallion of Meditation (A)
						i(84945),	-- Malevolent Gladiator's Medallion of Tenacity (A)
						i(84944),	-- Malevolent Gladiator's Medallion of Cruelty (H)
						i(84933),	-- Malevolent Gladiator's Medallion of Meditation (H)
						i(84931),	-- Malevolent Gladiator's Medallion of Tenacity (H)
					})),
				},
			}),
			n(PVP_ELITE, bubbleDown({
				["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
				-- #if BEFORE WOD
				["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
				-- #endif
			}, {
				-- Original Sources are:
				-- n65514 Ethan Natice in Valley of the Four Winds (Alliance)
				-- n65515 Acon Deathwielder in Area Kun-Lai Summit (Horde)
				n(WEAPONS, {
					i(85125),	-- Malevolent Gladiator's Barrier
					i(85122),	-- Malevolent Gladiator's Baton of Light
					i(85109),	-- Malevolent Gladiator's Battle Staff
					i(85136),	-- Malevolent Gladiator's Bonecracker
					i(85107),	-- Malevolent Gladiator's Bonegrinder
					i(85131),	-- Malevolent Gladiator's Cleaver
					i(85113),	-- Malevolent Gladiator's Decapitator
					i(85114),	-- Malevolent Gladiator's Endgame
					i(85110),	-- Malevolent Gladiator's Energy Staff
					i(85116),	-- Malevolent Gladiator's Fleshslicer
					i(85137),	-- Malevolent Gladiator's Gavel
					i(85112),	-- Malevolent Gladiator's Greatsword
					i(85132),	-- Malevolent Gladiator's Hacker
					i(85120),	-- Malevolent Gladiator's Heavy Crossbow
					i(85119),	-- Malevolent Gladiator's Longbow
					i(85108),	-- Malevolent Gladiator's Pike
					i(85130),	-- Malevolent Gladiator's Pummeler
					i(85135),	-- Malevolent Gladiator's Quickblade
					i(85126),	-- Malevolent Gladiator's Redoubt
					i(85129),	-- Malevolent Gladiator's Render
					i(85115),	-- Malevolent Gladiator's Reprieve
					i(85123),	-- Malevolent Gladiator's Rifle
					i(85128),	-- Malevolent Gladiator's Ripper
					i(85133),	-- Malevolent Gladiator's Shanker
					i(85124),	-- Malevolent Gladiator's Shield Wall
					i(85117, {	-- Malevolent Gladiator's Slasher
						["timeline"] = { CREATED_5_0_4 },
					}),
					i(85134),	-- Malevolent Gladiator's Slicer
					i(85127),	-- Malevolent Gladiator's Spellblade
					i(85111),	-- Malevolent Gladiator's Staff
					i(85121),	-- Malevolent Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(84993),	-- Malevolent Gladiator's Dreadplate Chestpiece
					i(85028),	-- Malevolent Gladiator's Dreadplate Gauntlets
					i(85046),	-- Malevolent Gladiator's Dreadplate Helm
					i(85059),	-- Malevolent Gladiator's Dreadplate Legguards
					i(85086),	-- Malevolent Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					i(85025),	-- Malevolent Gladiator's Dragonhide Gloves
					i(85045),	-- Malevolent Gladiator's Dragonhide Helm
					i(85058),	-- Malevolent Gladiator's Dragonhide Legguards
					i(85065),	-- Malevolent Gladiator's Dragonhide Robes
					i(85084),	-- Malevolent Gladiator's Dragonhide Spaulders
					i(85026),	-- Malevolent Gladiator's Kodohide Gloves
					i(85043),	-- Malevolent Gladiator's Kodohide Helm
					i(85051),	-- Malevolent Gladiator's Kodohide Legguards
					i(85071),	-- Malevolent Gladiator's Kodohide Robes
					i(85082),	-- Malevolent Gladiator's Kodohide Spaulders
					i(85022),	-- Malevolent Gladiator's Wyrmhide Gloves
					i(85037),	-- Malevolent Gladiator's Wyrmhide Helm
					i(85049),	-- Malevolent Gladiator's Wyrmhide Legguards
					i(85070),	-- Malevolent Gladiator's Wyrmhide Robes
					i(85080),	-- Malevolent Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					i(84994),	-- Malevolent Gladiator's Chain Armor
					i(85020),	-- Malevolent Gladiator's Chain Gauntlets
					i(85034),	-- Malevolent Gladiator's Chain Helm
					i(85061),	-- Malevolent Gladiator's Chain Leggings
					i(85076),	-- Malevolent Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					i(85085),	-- Malevolent Gladiator's Silk Amice
					i(85031),	-- Malevolent Gladiator's Silk Cowl
					i(85016),	-- Malevolent Gladiator's Silk Handguards
					i(85068),	-- Malevolent Gladiator's Silk Robe
					i(85062),	-- Malevolent Gladiator's Silk Trousers
				}),
				cl(MONK, {
					i(85015),	-- Malevolent Gladiator's Copperskin Gloves
					i(85030),	-- Malevolent Gladiator's Copperskin Helm
					i(85060),	-- Malevolent Gladiator's Copperskin Legguards
					i(85088),	-- Malevolent Gladiator's Copperskin Spaulders
					i(85067),	-- Malevolent Gladiator's Copperskin Tunic
					i(85018),	-- Malevolent Gladiator's Ironskin Gloves
					i(85033),	-- Malevolent Gladiator's Ironskin Helm
					i(85064),	-- Malevolent Gladiator's Ironskin Legguards
					i(85087),	-- Malevolent Gladiator's Ironskin Spaulders
					i(85066),	-- Malevolent Gladiator's Ironskin Tunic
				}),
				cl(PALADIN, {
					i(84991),	-- Malevolent Gladiator's Ornamented Chestguard
					i(85024),	-- Malevolent Gladiator's Ornamented Gloves
					i(85042),	-- Malevolent Gladiator's Ornamented Headcover
					i(85056),	-- Malevolent Gladiator's Ornamented Legplates
					i(85090),	-- Malevolent Gladiator's Ornamented Spaulders
					i(84992),	-- Malevolent Gladiator's Scaled Chestpiece
					i(85027),	-- Malevolent Gladiator's Scaled Gauntlets
					i(85044),	-- Malevolent Gladiator's Scaled Helm
					i(85057),	-- Malevolent Gladiator's Scaled Legguards
					i(85091),	-- Malevolent Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					i(85013),	-- Malevolent Gladiator's Mooncloth Gloves
					i(85039),	-- Malevolent Gladiator's Mooncloth Helm
					i(85052),	-- Malevolent Gladiator's Mooncloth Leggings
					i(85083),	-- Malevolent Gladiator's Mooncloth Mantle
					i(85072),	-- Malevolent Gladiator's Mooncloth Robe
					i(85017),	-- Malevolent Gladiator's Satin Gloves
					i(85040),	-- Malevolent Gladiator's Satin Hood
					i(85053),	-- Malevolent Gladiator's Satin Leggings
					i(85074),	-- Malevolent Gladiator's Satin Mantle
					i(85073),	-- Malevolent Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					i(85023),	-- Malevolent Gladiator's Leather Gloves
					i(85041),	-- Malevolent Gladiator's Leather Helm
					i(85055),	-- Malevolent Gladiator's Leather Legguards
					i(85089),	-- Malevolent Gladiator's Leather Spaulders
					i(84995),	-- Malevolent Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					i(84989),	-- Malevolent Gladiator's Linked Armor
					i(85011),	-- Malevolent Gladiator's Linked Gauntlets
					i(85038),	-- Malevolent Gladiator's Linked Helm
					i(85050),	-- Malevolent Gladiator's Linked Leggings
					i(85081),	-- Malevolent Gladiator's Linked Spaulders
					i(84988),	-- Malevolent Gladiator's Mail Armor
					i(85012),	-- Malevolent Gladiator's Mail Gauntlets
					i(85036),	-- Malevolent Gladiator's Mail Helm
					i(85048),	-- Malevolent Gladiator's Mail Leggings
					i(85079),	-- Malevolent Gladiator's Mail Spaulders
					i(84990),	-- Malevolent Gladiator's Ringmail Armor
					i(85014),	-- Malevolent Gladiator's Ringmail Gauntlets
					i(85029),	-- Malevolent Gladiator's Ringmail Helm
					i(85054),	-- Malevolent Gladiator's Ringmail Leggings
					i(85075),	-- Malevolent Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					i(85078),	-- Malevolent Gladiator's Felweave Amice
					i(85035),	-- Malevolent Gladiator's Felweave Cowl
					i(85021),	-- Malevolent Gladiator's Felweave Handguards
					i(85069),	-- Malevolent Gladiator's Felweave Raiment
					i(85047),	-- Malevolent Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					i(84987),	-- Malevolent Gladiator's Plate Chestpiece
					i(85019),	-- Malevolent Gladiator's Plate Gauntlets
					i(85032),	-- Malevolent Gladiator's Plate Helm
					i(85063),	-- Malevolent Gladiator's Plate Legguards
					i(85077),	-- Malevolent Gladiator's Plate Shoulders
				}),
				n(WAIST, {
					i(85098),	-- Malevolent Gladiator's Belt of Cruelty
					i(85106),	-- Malevolent Gladiator's Belt of Meditation
					i(85104),	-- Malevolent Gladiator's Clasp of Cruelty
					i(85105),	-- Malevolent Gladiator's Clasp of Meditation
					i(85093),	-- Malevolent Gladiator's Cord of Accuracy
					i(85092),	-- Malevolent Gladiator's Cord of Cruelty
					i(85094),	-- Malevolent Gladiator's Cord of Meditation
					i(85102),	-- Malevolent Gladiator's Girdle of Accuracy
					i(85103),	-- Malevolent Gladiator's Girdle of Prowess
					i(85095),	-- Malevolent Gladiator's Links of Accuracy
					i(85096),	-- Malevolent Gladiator's Links of Cruelty
					i(85101),	-- Malevolent Gladiator's Waistband of Accuracy
					i(85100),	-- Malevolent Gladiator's Waistband of Cruelty
					i(85097),	-- Malevolent Gladiator's Waistguard of Cruelty
					i(85099),	-- Malevolent Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					i(85010),	-- Malevolent Gladiator's Boots of Alacrity
					i(85009),	-- Malevolent Gladiator's Boots of Cruelty
					i(84996),	-- Malevolent Gladiator's Footguards of Alacrity (Leather)
					i(84997),	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
					i(85003),	-- Malevolent Gladiator's Footguards of Meditation (Leahter)
					i(84998),	-- Malevolent Gladiator's Footguards of Meditation (Mail)
					i(85001),	-- Malevolent Gladiator's Greaves of Alacrity
					i(85002),	-- Malevolent Gladiator's Greaves of Meditation
					i(85008),	-- Malevolent Gladiator's Sabatons of Alacrity
					i(85007),	-- Malevolent Gladiator's Sabatons of Cruelty
					i(85005),	-- Malevolent Gladiator's Treads of Alacrity
					i(85004),	-- Malevolent Gladiator's Treads of Cruelty
					i(85006),	-- Malevolent Gladiator's Treads of Meditation
					i(84999),	-- Malevolent Gladiator's Warboots of Alacrity
					i(85000),	-- Malevolent Gladiator's Warboots of Cruelty
				}),
			})),
		}))),
		n(SEASON_TYRANNICAL, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {
			n(ACHIEVEMENTS, {
				ach(11718, {["timeline"] = {ADDED_7_2_0}}),	-- Dressed to Oppress (PvP Season 13)
			}),
			n(ACHIEVEMENTS, bubbleDown({
				["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 },
				-- #if BEFORE WOD
				["OnUpdate"] = SEASON_TYRANNICAL_ONUPDATE,
				-- #endif
			}, {
				ach(8652, {	-- Hero of the Alliance: Tyrannical
					["races"] = ALLIANCE_ONLY,
				}),
				ach(8653, {	-- Hero of the Horde: Tyrannical
					["races"] = HORDE_ONLY,
				}),
				ach(8791, {	-- Tyrannical Gladiator (Retail) // Tyrannical Gladiator: Season 13 (3v3) (Classic)
					title(225),	-- Tyrannical Gladiator <Name>
				}),
				ach(8678, {	-- Tyrannical Gladiator's Cloud Serpent
					["provider"] = { "i", 104325 },	-- Tyrannical Gladiator's Cloud Serpent
					["filterID"] = MOUNTS,
				}),
				i(104325, {	-- Tyrannical Gladiator's Cloud Serpent
					["description"] = "Awarded to members of the Arena teams during MoP Season 2 that were in the 0.5% bracket of their battlegroup.",
				}),
				-- #if ANYCLASSIC
				ach(61098),	-- Challenger: Season 13
				ach(61097),	-- Duelist: Season 13
				ach(61099),	-- Rival: Season 13
				ach(61351, {	-- Gladiator: Season 13 (2v2)
				}),
				ach(61096, {	-- Gladiator: Season 13 (3v3)
				}),
				ach(61359, {	-- Gladiator: Season 13 (5v5)
				}),
				ach(61355, {	-- Tyrannical Gladiator: Season 13 (2v2)
					title(225),	-- Tyrannical Gladiator <Name>
				}),
				ach(61363, {	-- Tyrannical Gladiator: Season 13 (5v5)
					title(225),	-- Tyrannical Gladiator <Name>
				}),
				ach(61416, {	-- Undisputed Gladiator: Season 13
					title(261),	-- Undisputed Gladiator <Name>
				}),
				-- #endif
			})),
			n(PVP_HONOR, {
				["description"] = "These items are available from Malevolent Gladiator: Season 12 Vendor.",
				["groups"] = {
					n(WEAPONS, {
						moh(2, i(91482)),	-- Malevolent Gladiator's Barrier
						moh(5, i(91486)),	-- Malevolent Gladiator's Battle Staff
						moh(5, i(91759)),	-- Malevolent Gladiator's Bonecracker
						moh(5, i(91442)),	-- Malevolent Gladiator's Bonegrinder
						moh(5, i(91442)),	-- Malevolent Gladiator's Bonegrinder
						moh(5, i(91446)),	-- Malevolent Gladiator's Cleaver
						moh(5, i(91440)),	-- Malevolent Gladiator's Decapitator
						moh(2, i(91480)),	-- Malevolent Gladiator's Endgame
						moh(5, i(91560)),	-- Malevolent Gladiator's Energy Staff
						moh(5, i(91556)),	-- Malevolent Gladiator's Gavel
						moh(5, i(91444)),	-- Malevolent Gladiator's Greatsword
						moh(5, i(91757)),	-- Malevolent Gladiator's Hacker
						moh(5, i(91460)),	-- Malevolent Gladiator's Longbow
						moh(5, i(91660)),	-- Malevolent Gladiator's Pike
						moh(5, i(91448)),	-- Malevolent Gladiator's Pummeler
						moh(5, i(91450)),	-- Malevolent Gladiator's Quickblade
						moh(2, i(91558)),	-- Malevolent Gladiator's Redoubt
						moh(5, i(91749)),	-- Malevolent Gladiator's Render
						moh(2, i(91494)),	-- Malevolent Gladiator's Reprieve
						moh(5, i(91554)),	-- Malevolent Gladiator's Rifle
						moh(5, i(91745)),	-- Malevolent Gladiator's Ripper
						moh(5, i(91743)),	-- Malevolent Gladiator's Shanker
						moh(2, i(91771)),	-- Malevolent Gladiator's Shield Wall
						moh(5, i(91761)),	-- Malevolent Gladiator's Slicer
						moh(5, i(91484)),	-- Malevolent Gladiator's Spellblade
						moh(5, i(91535)),	-- Malevolent Gladiator's Staff
					}),
					cl(DEATHKNIGHT, {
						moh(3, i(91500)),	-- Malevolent Gladiator's Dreadplate Chestpiece
						moh(2, i(91502)),	-- Malevolent Gladiator's Dreadplate Gauntlets
						moh(3, i(91504)),	-- Malevolent Gladiator's Dreadplate Helm
						moh(3, i(91506)),	-- Malevolent Gladiator's Dreadplate Legguards
						moh(2, i(91508)),	-- Malevolent Gladiator's Dreadplate Shoulders
					}),
					cl(DRUID, {
						moh(2, i(91510)),	-- Malevolent Gladiator's Dragonhide Gloves
						moh(3, i(91512)),	-- Malevolent Gladiator's Dragonhide Helm
						moh(3, i(91514)),	-- Malevolent Gladiator's Dragonhide Legguards
						moh(3, i(91516)),	-- Malevolent Gladiator's Dragonhide Robes
						moh(2, i(91518)),	-- Malevolent Gladiator's Dragonhide Spaulders
						moh(2, i(91525)),	-- Malevolent Gladiator's Kodohide Gloves
						moh(3, i(91527)),	-- Malevolent Gladiator's Kodohide Helm
						moh(3, i(91529)),	-- Malevolent Gladiator's Kodohide Legguards
						moh(3, i(91531)),	-- Malevolent Gladiator's Kodohide Robes
						moh(2, i(91533)),	-- Malevolent Gladiator's Kodohide Spaulders
						moh(2, i(91542)),	-- Malevolent Gladiator's Wyrmhide Gloves
						moh(3, i(91544)),	-- Malevolent Gladiator's Wyrmhide Helm
						moh(3, i(91546)),	-- Malevolent Gladiator's Wyrmhide Legguards
						moh(3, i(91548)),	-- Malevolent Gladiator's Wyrmhide Robes
						moh(2, i(91550)),	-- Malevolent Gladiator's Wyrmhide Spaulders
					}),
					cl(HUNTER, {
						moh(3, i(91575)),	-- Malevolent Gladiator's Chain Armor
						moh(2, i(91577)),	-- Malevolent Gladiator's Chain Gauntlets
						moh(3, i(91579)),	-- Malevolent Gladiator's Chain Helm
						moh(3, i(91581)),	-- Malevolent Gladiator's Chain Leggings
						moh(2, i(91583)),	-- Malevolent Gladiator's Chain Spaulders
					}),
					cl(MAGE, {
						moh(2, i(91593)),	-- Malevolent Gladiator's Silk Amice
						moh(3, i(91587)),	-- Malevolent Gladiator's Silk Cowl
						moh(2, i(91585)),	-- Malevolent Gladiator's Silk Handguards
						moh(3, i(91591)),	-- Malevolent Gladiator's Silk Robe
						moh(3, i(91589)),	-- Malevolent Gladiator's Silk Trousers
					}),
					cl(MONK, {
						moh(2, i(91610)),	-- Malevolent Gladiator's Copperskin Gloves
						moh(3, i(91612)),	-- Malevolent Gladiator's Copperskin Helm
						moh(3, i(91614)),	-- Malevolent Gladiator's Copperskin Legguards
						moh(2, i(91616)),	-- Malevolent Gladiator's Copperskin Spaulders
						moh(3, i(91618)),	-- Malevolent Gladiator's Copperskin Tunic
						moh(2, i(91600)),	-- Malevolent Gladiator's Ironskin Gloves
						moh(3, i(91602)),	-- Malevolent Gladiator's Ironskin Helm
						moh(3, i(91604)),	-- Malevolent Gladiator's Ironskin Legguards
						moh(2, i(91606)),	-- Malevolent Gladiator's Ironskin Spaulders
						moh(3, i(91608)),	-- Malevolent Gladiator's Ironskin Tunic
					}),
					cl(PALADIN, {
						moh(3, i(91640)),	-- Malevolent Gladiator's Ornamented Chestguard
						moh(2, i(91642)),	-- Malevolent Gladiator's Ornamented Gloves
						moh(3, i(91644)),	-- Malevolent Gladiator's Ornamented Headcover
						moh(3, i(91646)),	-- Malevolent Gladiator's Ornamented Legplates
						moh(2, i(91648)),	-- Malevolent Gladiator's Ornamented Spaulders
						moh(3, i(91620)),	-- Malevolent Gladiator's Scaled Chestpiece
						moh(2, i(91622)),	-- Malevolent Gladiator's Scaled Gauntlets
						moh(3, i(91624)),	-- Malevolent Gladiator's Scaled Helm
						moh(3, i(91626)),	-- Malevolent Gladiator's Scaled Legguards
						moh(2, i(91628)),	-- Malevolent Gladiator's Scaled Shoulders
					}),
					cl(PRIEST, {
						moh(2, i(91662)),	-- Malevolent Gladiator's Mooncloth Gloves
						moh(3, i(91664)),	-- Malevolent Gladiator's Mooncloth Helm
						moh(3, i(91666)),	-- Malevolent Gladiator's Mooncloth Leggings
						moh(2, i(91670)),	-- Malevolent Gladiator's Mooncloth Mantle
						moh(3, i(91668)),	-- Malevolent Gladiator's Mooncloth Robe
						moh(2, i(91672)),	-- Malevolent Gladiator's Satin Gloves
						moh(3, i(91674)),	-- Malevolent Gladiator's Satin Hood
						moh(3, i(91676)),	-- Malevolent Gladiator's Satin Leggings
						moh(2, i(91680)),	-- Malevolent Gladiator's Satin Mantle
						moh(3, i(91678)),	-- Malevolent Gladiator's Satin Robe
					}),
					cl(ROGUE, {
						moh(2, i(91695)),	-- Malevolent Gladiator's Leather Gloves
						moh(3, i(91697)),	-- Malevolent Gladiator's Leather Helm
						moh(3, i(91699)),	-- Malevolent Gladiator's Leather Legguards
						moh(2, i(91701)),	-- Malevolent Gladiator's Leather Spaulders
						moh(3, i(91693)),	-- Malevolent Gladiator's Leather Tunic
					}),
					cl(SHAMAN, {
						moh(3, i(91721)),	-- Malevolent Gladiator's Linked Armor
						moh(2, i(91723)),	-- Malevolent Gladiator's Linked Gauntlets
						moh(3, i(91725)),	-- Malevolent Gladiator's Linked Helm
						moh(3, i(91727)),	-- Malevolent Gladiator's Linked Leggings
						moh(2, i(91729)),	-- Malevolent Gladiator's Linked Spaulders
						moh(3, i(91733)),	-- Malevolent Gladiator's Mail Armor
						moh(2, i(91735)),	-- Malevolent Gladiator's Mail Gauntlets
						moh(3, i(91737)),	-- Malevolent Gladiator's Mail Helm
						moh(3, i(91739)),	-- Malevolent Gladiator's Mail Leggings
						moh(2, i(91741)),	-- Malevolent Gladiator's Mail Spaulders
						moh(3, i(91711)),	-- Malevolent Gladiator's Ringmail Armor
						moh(2, i(91713)),	-- Malevolent Gladiator's Ringmail Gauntlets
						moh(3, i(91715)),	-- Malevolent Gladiator's Ringmail Helm
						moh(3, i(91717)),	-- Malevolent Gladiator's Ringmail Leggings
						moh(2, i(91719)),	-- Malevolent Gladiator's Ringmail Spaulders
					}),
					cl(WARLOCK, {
						moh(2, i(91781)),	-- Malevolent Gladiator's Felweave Amice
						moh(3, i(91775)),	-- Malevolent Gladiator's Felweave Cowl
						moh(2, i(91773)),	-- Malevolent Gladiator's Felweave Handguards
						moh(3, i(91779)),	-- Malevolent Gladiator's Felweave Raiment
						moh(3, i(91777)),	-- Malevolent Gladiator's Felweave Trousers
					}),
					cl(WARRIOR, {
						moh(3, i(91783)),	-- Malevolent Gladiator's Plate Chestpiece
						moh(2, i(91785)),	-- Malevolent Gladiator's Plate Gauntlets
						moh(3, i(91787)),	-- Malevolent Gladiator's Plate Helm
						moh(3, i(91789)),	-- Malevolent Gladiator's Plate Legguards
						moh(2, i(91791)),	-- Malevolent Gladiator's Plate Shoulders
					}),
					n(BACK, {
						moh(1, i(91453)),	-- Malevolent Gladiator's Cape of Cruelty
						moh(1, i(91454)),	-- Malevolent Gladiator's Cape of Prowess
						moh(1, i(91764)),	-- Malevolent Gladiator's Cloak of Alacrity
						moh(1, i(91765)),	-- Malevolent Gladiator's Cloak of Prowess
						moh(1, i(91477)),	-- Malevolent Gladiator's Drape of Cruelty
						moh(1, i(91479)),	-- Malevolent Gladiator's Drape of Meditation
						moh(1, i(91478)),	-- Malevolent Gladiator's Drape of Prowess
					}),
					n(WRIST, {
						moh(1, i(91710)),	-- Malevolent Gladiator's Armbands of Meditation
						moh(1, i(91709)),	-- Malevolent Gladiator's Armbands of Prowess
						moh(1, i(91659)),	-- Malevolent Gladiator's Armplates of Alacrity
						moh(1, i(91658)),	-- Malevolent Gladiator's Armplates of Proficiency
						moh(1, i(91599)),	-- Malevolent Gladiator's Armwraps of Accuracy
						moh(1, i(91692)),	-- Malevolent Gladiator's Armwraps of Alacrity
						moh(1, i(91524)),	-- Malevolent Gladiator's Bindings of Meditation
						moh(1, i(91541)),	-- Malevolent Gladiator's Bindings of Prowess
						moh(1, i(91639)),	-- Malevolent Gladiator's Bracers of Meditation
						moh(1, i(91638)),	-- Malevolent Gladiator's Bracers of Prowess
						moh(1, i(91474)),	-- Malevolent Gladiator's Cuffs of Accuracy
						moh(1, i(91476)),	-- Malevolent Gladiator's Cuffs of Meditation
						moh(1, i(91475)),	-- Malevolent Gladiator's Cuffs of Prowess
						moh(1, i(91574)),	-- Malevolent Gladiator's Wristguards of Accuracy
						moh(1, i(91573)),	-- Malevolent Gladiator's Wristguards of Alacrity
					}),
					n(WAIST, {
						moh(1, i(91537)),	-- Malevolent Gladiator's Belt of Cruelty
						moh(1, i(91520)),	-- Malevolent Gladiator's Belt of Meditation
						moh(1, i(91630)),	-- Malevolent Gladiator's Clasp of Cruelty
						moh(1, i(91632)),	-- Malevolent Gladiator's Clasp of Meditation
						moh(1, i(91464)),	-- Malevolent Gladiator's Cord of Accuracy
						moh(1, i(91462)),	-- Malevolent Gladiator's Cord of Cruelty
						moh(1, i(91466)),	-- Malevolent Gladiator's Cord of Meditation
						moh(1, i(91650)),	-- Malevolent Gladiator's Girdle of Accuracy
						moh(1, i(91652)),	-- Malevolent Gladiator's Girdle of Prowess
						moh(1, i(91567)),	-- Malevolent Gladiator's Links of Accuracy
						moh(1, i(91565)),	-- Malevolent Gladiator's Links of Cruelty
						moh(1, i(91688)),	-- Malevolent Gladiator's Waistband of Accuracy
						moh(1, i(91595)),	-- Malevolent Gladiator's Waistband of Cruelty
						moh(1, i(91731)),	-- Malevolent Gladiator's Waistguard of Cruelty
						moh(1, i(91703)),	-- Malevolent Gladiator's Waistguard of Meditation
					}),
					n(FEET, {
						moh(2, i(91597)),	-- Malevolent Gladiator's Boots of Alacrity
						moh(2, i(91690)),	-- Malevolent Gladiator's Boots of Cruelty
						moh(2, i(91539)),	-- Malevolent Gladiator's Footguards of Alacrity (Leahter)
						moh(2, i(91705)),	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
						moh(2, i(91522)),	-- Malevolent Gladiator's Footguards of Meditation (Leather)
						moh(2, i(91707)),	-- Malevolent Gladiator's Footguards of Meditation (Mail)
						moh(2, i(91634)),	-- Malevolent Gladiator's Greaves of Alacrity
						moh(2, i(91636)),	-- Malevolent Gladiator's Greaves of Meditation
						moh(2, i(91571)),	-- Malevolent Gladiator's Sabatons of Alacrity
						moh(2, i(91569)),	-- Malevolent Gladiator's Sabatons of Cruelty
						moh(2, i(91470)),	-- Malevolent Gladiator's Treads of Alacrity
						moh(2, i(91468)),	-- Malevolent Gladiator's Treads of Cruelty
						moh(2, i(91472)),	-- Malevolent Gladiator's Treads of Meditation
						moh(2, i(91656)),	-- Malevolent Gladiator's Warboots of Alacrity
						moh(2, i(91654)),	-- Malevolent Gladiator's Warboots of Cruelty
					}),
					filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
						i(91492),	-- Malevolent Gladiator's Band of Accuracy
						i(91491),	-- Malevolent Gladiator's Band of Cruelty
						i(91493),	-- Malevolent Gladiator's Band of Meditation
						i(91459),	-- Malevolent Gladiator's Ring of Accuracy
						i(91458),	-- Malevolent Gladiator's Ring of Cruelty
						i(91770),	-- Malevolent Gladiator's Signet of Accuracy
						i(91769),	-- Malevolent Gladiator's Signet of Cruelty
					})),
					filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
						i(91767),	-- Malevolent Gladiator's Choker of Accuracy
						i(91766),	-- Malevolent Gladiator's Choker of Proficiency
						i(91455),	-- Malevolent Gladiator's Necklace of Proficiency
						i(91456),	-- Malevolent Gladiator's Necklace of Prowess
						i(91489),	-- Malevolent Gladiator's Pendant of Alacrity
						i(91488),	-- Malevolent Gladiator's Pendant of Cruelty
						i(91490),	-- Malevolent Gladiator's Pendant of Meditation
					})),
					filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
						i(91452),	-- Malevolent Gladiator's Badge of Conquest
						i(91753),	-- Malevolent Gladiator's Badge of Dominance
						i(91763),	-- Malevolent Gladiator's Badge of Victory
						i(91562),	-- Malevolent Gladiator's Emblem of Cruelty
						i(91564),	-- Malevolent Gladiator's Emblem of Meditation
						i(91563),	-- Malevolent Gladiator's Emblem of Tenacity
						i(91457),	-- Malevolent Gladiator's Insignia of Conquest
						i(91754),	-- Malevolent Gladiator's Insignia of Dominance
						i(91768),	-- Malevolent Gladiator's Insignia of Victory
						i(91682),	-- Malevolent Gladiator's Medallion of Cruelty (Alliance)
						i(91686),	-- Malevolent Gladiator's Medallion of Meditation (Alliance)
						i(91684),	-- Malevolent Gladiator's Medallion of Tenacity (Alliance)
						i(91683),	-- Malevolent Gladiator's Medallion of Cruelty (Horde)
						i(91687),	-- Malevolent Gladiator's Medallion of Meditation (Horde)
						i(91685),	-- Malevolent Gladiator's Medallion of Tenacity (Horde)
					})),
				},
			}),
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					n(PVP_GLADIATOR, {
						n(WEAPONS, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
							moh(80, iensemble(144246, {	-- Arsenal: Tyrannical Gladiator's Weapons (A)
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91129),	-- Tyrannical Gladiator's Barrier
							i(91133),	-- Tyrannical Gladiator's Battle Staff
							i(91406),	-- Tyrannical Gladiator's Bonecracker
							i(91093),	-- Tyrannical Gladiator's Cleaver
							i(91087),	-- Tyrannical Gladiator's Decapitator
							i(91127),	-- Tyrannical Gladiator's Endgame
							i(91207),	-- Tyrannical Gladiator's Energy Staff
							i(91203),	-- Tyrannical Gladiator's Gavel
							i(91091),	-- Tyrannical Gladiator's Greatsword
							i(91404),	-- Tyrannical Gladiator's Hacker
							i(91145),	-- Tyrannical Gladiator's Heavy Crossbow
							i(91398),	-- Tyrannical Gladiator's Mageblade
							i(91095),	-- Tyrannical Gladiator's Pummeler
							i(91097),	-- Tyrannical Gladiator's Quickblade
							i(91205),	-- Tyrannical Gladiator's Redoubt
							i(91396),	-- Tyrannical Gladiator's Render
							i(91141),	-- Tyrannical Gladiator's Reprieve
							i(91392),	-- Tyrannical Gladiator's Ripper
							i(91390),	-- Tyrannical Gladiator's Shanker
							i(91418),	-- Tyrannical Gladiator's Shield Wall
							i(91408),	-- Tyrannical Gladiator's Slicer
							i(91131),	-- Tyrannical Gladiator's Spellblade
							i(91182),	-- Tyrannical Gladiator's Staff
						})),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138683, {	-- Ensemble: Tyrannical Gladiator's Dreadplate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91147),	-- Tyrannical Gladiator's Dreadplate Chestpiece
							i(91149),	-- Tyrannical Gladiator's Dreadplate Gauntlets
							i(91151),	-- Tyrannical Gladiator's Dreadplate Helm
							i(91153),	-- Tyrannical Gladiator's Dreadplate Legguards
							i(91155),	-- Tyrannical Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138691, {	-- Ensemble: Tyrannical Gladiator's Dragonhide Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91157),	-- Tyrannical Gladiator's Dragonhide Gloves
							i(91159),	-- Tyrannical Gladiator's Dragonhide Helm
							i(91161),	-- Tyrannical Gladiator's Dragonhide Legguards
							i(91163),	-- Tyrannical Gladiator's Dragonhide Robes
							i(91165),	-- Tyrannical Gladiator's Dragonhide Spaulders
							i(91172),	-- Tyrannical Gladiator's Kodohide Gloves
							i(91174),	-- Tyrannical Gladiator's Kodohide Helm
							i(91176),	-- Tyrannical Gladiator's Kodohide Legguards
							i(91178),	-- Tyrannical Gladiator's Kodohide Robes
							i(91180),	-- Tyrannical Gladiator's Kodohide Spaulders
							i(91189),	-- Tyrannical Gladiator's Wyrmhide Gloves
							i(91191),	-- Tyrannical Gladiator's Wyrmhide Helm
							i(91193),	-- Tyrannical Gladiator's Wyrmhide Legguards
							i(91195),	-- Tyrannical Gladiator's Wyrmhide Robes
							i(91197),	-- Tyrannical Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138689, {	-- Ensemble: Tyrannical Gladiator's Chain Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91222),	-- Tyrannical Gladiator's Chain Armor
							i(91224),	-- Tyrannical Gladiator's Chain Gauntlets
							i(91226),	-- Tyrannical Gladiator's Chain Helm
							i(91228),	-- Tyrannical Gladiator's Chain Leggings
							i(91230),	-- Tyrannical Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138697, {	-- Ensemble: Tyrannical Gladiator's Silk Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91240),	-- Tyrannical Gladiator's Silk Amice
							i(91234),	-- Tyrannical Gladiator's Silk Cowl
							i(91232),	-- Tyrannical Gladiator's Silk Handguards
							i(91238),	-- Tyrannical Gladiator's Silk Robe
							i(91236),	-- Tyrannical Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(12, iensemble(138693, {	-- Ensemble: Tyrannical Gladiator's Ironskin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91257),	-- Tyrannical Gladiator's Copperskin Gloves
							i(91259),	-- Tyrannical Gladiator's Copperskin Helm
							i(91261),	-- Tyrannical Gladiator's Copperskin Legguards
							i(91263),	-- Tyrannical Gladiator's Copperskin Spaulders
							i(91265),	-- Tyrannical Gladiator's Copperskin Tunic
							i(91247),	-- Tyrannical Gladiator's Ironskin Gloves
							i(91249),	-- Tyrannical Gladiator's Ironskin Helm
							i(91251),	-- Tyrannical Gladiator's Ironskin Legguards
							i(91253),	-- Tyrannical Gladiator's Ironskin Spaulders
							i(91255),	-- Tyrannical Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138685, {	-- Ensemble: Tyrannical Gladiator's Scaled Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91287),	-- Tyrannical Gladiator's Ornamented Chestguard
							i(91289),	-- Tyrannical Gladiator's Ornamented Gloves
							i(91291),	-- Tyrannical Gladiator's Ornamented Headcover
							i(91293),	-- Tyrannical Gladiator's Ornamented Legplates
							i(91295),	-- Tyrannical Gladiator's Ornamented Spaulders
							i(91267),	-- Tyrannical Gladiator's Scaled Chestpiece
							i(91269),	-- Tyrannical Gladiator's Scaled Gauntlets
							i(91271),	-- Tyrannical Gladiator's Scaled Helm
							i(91273),	-- Tyrannical Gladiator's Scaled Legguards
							i(91275),	-- Tyrannical Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138699, {	-- Ensemble: Tyrannical Gladiator's Satin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91309),	-- Tyrannical Gladiator's Mooncloth Gloves
							i(91311),	-- Tyrannical Gladiator's Mooncloth Helm
							i(91313),	-- Tyrannical Gladiator's Mooncloth Leggings
							i(91317),	-- Tyrannical Gladiator's Mooncloth Mantle
							i(91315),	-- Tyrannical Gladiator's Mooncloth Robe
							i(91319),	-- Tyrannical Gladiator's Satin Gloves
							i(91321),	-- Tyrannical Gladiator's Satin Hood
							i(91323),	-- Tyrannical Gladiator's Satin Leggings
							i(91327),	-- Tyrannical Gladiator's Satin Mantle
							i(91325),	-- Tyrannical Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(12, iensemble(138695, {	-- Ensemble: Tyrannical Gladiator's Leather Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91342),	-- Tyrannical Gladiator's Leather Gloves
							i(91344),	-- Tyrannical Gladiator's Leather Helm
							i(91346),	-- Tyrannical Gladiator's Leather Legguards
							i(91348),	-- Tyrannical Gladiator's Leather Spaulders
							i(91340),	-- Tyrannical Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138687, {	-- Ensemble: Tyrannical Gladiator's Ringmail Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91368),	-- Tyrannical Gladiator's Linked Armor
							i(91370),	-- Tyrannical Gladiator's Linked Gauntlets
							i(91372),	-- Tyrannical Gladiator's Linked Helm
							i(91374),	-- Tyrannical Gladiator's Linked Leggings
							i(91376),	-- Tyrannical Gladiator's Linked Spaulders
							i(91380),	-- Tyrannical Gladiator's Mail Armor
							i(91382),	-- Tyrannical Gladiator's Mail Gauntlets
							i(91384),	-- Tyrannical Gladiator's Mail Helm
							i(91386),	-- Tyrannical Gladiator's Mail Leggings
							i(91388),	-- Tyrannical Gladiator's Mail Spaulders
							i(91358),	-- Tyrannical Gladiator's Ringmail Armor
							i(91360),	-- Tyrannical Gladiator's Ringmail Gauntlets
							i(91362),	-- Tyrannical Gladiator's Ringmail Helm
							i(91364),	-- Tyrannical Gladiator's Ringmail Leggings
							i(91366),	-- Tyrannical Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138701, {	-- Ensemble: Tyrannical Gladiator's Felweave Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91428),	-- Tyrannical Gladiator's Felweave Amice
							i(91422),	-- Tyrannical Gladiator's Felweave Cowl
							i(91420),	-- Tyrannical Gladiator's Felweave Handguards
							i(91426),	-- Tyrannical Gladiator's Felweave Raiment
							i(91424),	-- Tyrannical Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138681, {	-- Ensemble: Tyrannical Gladiator's Plate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(91430),	-- Tyrannical Gladiator's Plate Chestpiece
							i(91432),	-- Tyrannical Gladiator's Plate Gauntlets
							i(91434),	-- Tyrannical Gladiator's Plate Helm
							i(91436),	-- Tyrannical Gladiator's Plate Legguards
							i(91438),	-- Tyrannical Gladiator's Plate Shoulders
						}),
						n(BACK, {
							-- From Nalak
							i(91100),	-- Tyrannical Gladiator's Cape of Cruelty
							i(91101),	-- Tyrannical Gladiator's Cape of Prowess
							i(91411),	-- Tyrannical Gladiator's Cloak of Alacrity
							i(91412),	-- Tyrannical Gladiator's Cloak of Prowess
							i(91124),	-- Tyrannical Gladiator's Drape of Cruelty
							i(91126),	-- Tyrannical Gladiator's Drape of Meditation
							i(91125),	-- Tyrannical Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							-- From Nalak
							i(91357),	-- Tyrannical Gladiator's Armbands of Meditation
							i(91356),	-- Tyrannical Gladiator's Armbands of Prowess
							i(91306),	-- Tyrannical Gladiator's Armplates of Alacrity
							i(91305),	-- Tyrannical Gladiator's Armplates of Proficiency
							i(91246),	-- Tyrannical Gladiator's Armwraps of Accuracy
							i(91339),	-- Tyrannical Gladiator's Armwraps of Alacrity
							i(91171),	-- Tyrannical Gladiator's Bindings of Meditation
							i(91188),	-- Tyrannical Gladiator's Bindings of Prowess
							i(91286),	-- Tyrannical Gladiator's Bracers of Meditation
							i(91285),	-- Tyrannical Gladiator's Bracers of Prowess
							i(91121),	-- Tyrannical Gladiator's Cuffs of Accuracy
							i(91123),	-- Tyrannical Gladiator's Cuffs of Meditation
							i(91122),	-- Tyrannical Gladiator's Cuffs of Prowess
							i(91221),	-- Tyrannical Gladiator's Wristguards of Accuracy
							i(91220),	-- Tyrannical Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							-- From Nalak
							i(91184),	-- Tyrannical Gladiator's Belt of Cruelty
							i(91167),	-- Tyrannical Gladiator's Belt of Meditation
							i(91277),	-- Tyrannical Gladiator's Clasp of Cruelty
							i(91279),	-- Tyrannical Gladiator's Clasp of Meditation
							i(91111),	-- Tyrannical Gladiator's Cord of Accuracy
							i(91109),	-- Tyrannical Gladiator's Cord of Cruelty
							i(91113),	-- Tyrannical Gladiator's Cord of Meditation
							i(91297),	-- Tyrannical Gladiator's Girdle of Accuracy
							i(91299),	-- Tyrannical Gladiator's Girdle of Prowess
							i(91214),	-- Tyrannical Gladiator's Links of Accuracy
							i(91212),	-- Tyrannical Gladiator's Links of Cruelty
							i(91335),	-- Tyrannical Gladiator's Waistband of Accuracy
							i(91242),	-- Tyrannical Gladiator's Waistband of Cruelty
							i(91378),	-- Tyrannical Gladiator's Waistguard of Cruelty
							i(91350),	-- Tyrannical Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							-- From Nalak
							i(91244),	-- Tyrannical Gladiator's Boots of Alacrity
							i(91337),	-- Tyrannical Gladiator's Boots of Cruelty
							i(91186),	-- Tyrannical Gladiator's Footguards of Alacrity (Leather)
							i(91352),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
							i(91169),	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
							i(91354),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
							i(91281),	-- Tyrannical Gladiator's Greaves of Alacrity
							i(91283),	-- Tyrannical Gladiator's Greaves of Meditation
							i(91218),	-- Tyrannical Gladiator's Sabatons of Alacrity
							i(91216),	-- Tyrannical Gladiator's Sabatons of Cruelty
							i(91117),	-- Tyrannical Gladiator's Treads of Alacrity
							i(91115),	-- Tyrannical Gladiator's Treads of Cruelty
							i(91119),	-- Tyrannical Gladiator's Treads of Meditation
							i(91303),	-- Tyrannical Gladiator's Warboots of Alacrity
							i(91301),	-- Tyrannical Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, {
							-- From Nalak
							i(91414),	-- Tyrannical Gladiator's Choker of Accuracy
							i(91413),	-- Tyrannical Gladiator's Choker of Proficiency
							i(91102),	-- Tyrannical Gladiator's Necklace of Proficiency
							i(91103),	-- Tyrannical Gladiator's Necklace of Prowess
							i(91136),	-- Tyrannical Gladiator's Pendant of Alacrity
							i(91135),	-- Tyrannical Gladiator's Pendant of Cruelty
							i(91137),	-- Tyrannical Gladiator's Pendant of Meditation
						}),
						filter(FINGER_F, {
							-- From Nalak
							i(91139),	-- Tyrannical Gladiator's Band of Accuracy
							i(91138),	-- Tyrannical Gladiator's Band of Cruelty
							i(91140),	-- Tyrannical Gladiator's Band of Meditation
							i(91106),	-- Tyrannical Gladiator's Ring of Accuracy
							i(91105),	-- Tyrannical Gladiator's Ring of Cruelty
							i(91417),	-- Tyrannical Gladiator's Signet of Accuracy
							i(91416),	-- Tyrannical Gladiator's Signet of Cruelty
						}),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
							i(91099),	-- Tyrannical Gladiator's Badge of Conquest
							i(91400),	-- Tyrannical Gladiator's Badge of Dominance
							i(91410),	-- Tyrannical Gladiator's Badge of Victory
							i(91209),	-- Tyrannical Gladiator's Emblem of Cruelty
							i(91211),	-- Tyrannical Gladiator's Emblem of Meditation
							i(91210),	-- Tyrannical Gladiator's Emblem of Tenacity
							i(91104),	-- Tyrannical Gladiator's Insignia of Conquest
							i(91401),	-- Tyrannical Gladiator's Insignia of Dominance
							i(91415),	-- Tyrannical Gladiator's Insignia of Victory
							i(94386),	-- Tyrannical Gladiator's Medallion of Cruelty (A)
							i(94388),	-- Tyrannical Gladiator's Medallion of Meditation (A)
							i(94361),	-- Tyrannical Gladiator's Medallion of Tenacity (A)
						})),
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					n(PVP_GLADIATOR, {
						n(WEAPONS, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
							moh(80, iensemble(144245, {	-- Arsenal: Tyrannical Gladiator's Weapons (H)
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94501),	-- Tyrannical Gladiator's Barrier
							i(94313),	-- Tyrannical Gladiator's Battle Staff
							i(94322),	-- Tyrannical Gladiator's Bonecracker
							i(94312),	-- Tyrannical Gladiator's Cleaver
							i(94323),	-- Tyrannical Gladiator's Decapitator
							i(94502),	-- Tyrannical Gladiator's Endgame
							i(94320),	-- Tyrannical Gladiator's Energy Staff
							i(94302),	-- Tyrannical Gladiator's Gavel
							i(94311),	-- Tyrannical Gladiator's Greatsword
							i(94317),	-- Tyrannical Gladiator's Hacker
							i(94326),	-- Tyrannical Gladiator's Heavy Crossbow
							i(94310),	-- Tyrannical Gladiator's Mageblade
							i(94304),	-- Tyrannical Gladiator's Pummeler
							i(94325),	-- Tyrannical Gladiator's Quickblade
							i(94498),	-- Tyrannical Gladiator's Redoubt
							i(94321),	-- Tyrannical Gladiator's Render
							i(94499),	-- Tyrannical Gladiator's Reprieve
							i(94316),	-- Tyrannical Gladiator's Ripper
							i(94315),	-- Tyrannical Gladiator's Shanker
							i(94500),	-- Tyrannical Gladiator's Shield Wall
							i(94318),	-- Tyrannical Gladiator's Slicer
							i(94306),	-- Tyrannical Gladiator's Spellblade
							i(94307),	-- Tyrannical Gladiator's Staff
						})),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138684, {	-- Ensemble: Tyrannical Gladiator's Dreadplate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94392),	-- Tyrannical Gladiator's Dreadplate Chestpiece
							i(94364),	-- Tyrannical Gladiator's Dreadplate Gauntlets
							i(94429),	-- Tyrannical Gladiator's Dreadplate Helm
							i(94365),	-- Tyrannical Gladiator's Dreadplate Legguards
							i(94366),	-- Tyrannical Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138692, {	-- Ensemble: Tyrannical Gladiator's Dragonhide Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94455),	-- Tyrannical Gladiator's Dragonhide Gloves
							i(94367),	-- Tyrannical Gladiator's Dragonhide Helm
							i(94368),	-- Tyrannical Gladiator's Dragonhide Legguards
							i(94456),	-- Tyrannical Gladiator's Dragonhide Robes
							i(94457),	-- Tyrannical Gladiator's Dragonhide Spaulders
							i(94371),	-- Tyrannical Gladiator's Kodohide Gloves
							i(94492),	-- Tyrannical Gladiator's Kodohide Helm
							i(94477),	-- Tyrannical Gladiator's Kodohide Legguards
							i(94437),	-- Tyrannical Gladiator's Kodohide Robes
							i(94372),	-- Tyrannical Gladiator's Kodohide Spaulders
							i(94412),	-- Tyrannical Gladiator's Wyrmhide Gloves
							i(94347),	-- Tyrannical Gladiator's Wyrmhide Helm
							i(94483),	-- Tyrannical Gladiator's Wyrmhide Legguards
							i(94327),	-- Tyrannical Gladiator's Wyrmhide Robes
							i(94416),	-- Tyrannical Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138690, {	-- Ensemble: Tyrannical Gladiator's Chain Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94405),	-- Tyrannical Gladiator's Chain Armor
							i(94453),	-- Tyrannical Gladiator's Chain Gauntlets
							i(94406),	-- Tyrannical Gladiator's Chain Helm
							i(94384),	-- Tyrannical Gladiator's Chain Leggings
							i(94450),	-- Tyrannical Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138698, {	-- Ensemble: Tyrannical Gladiator's Silk Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94389),	-- Tyrannical Gladiator's Silk Amice
							i(94381),	-- Tyrannical Gladiator's Silk Cowl
							i(94451),	-- Tyrannical Gladiator's Silk Handguards
							i(94431),	-- Tyrannical Gladiator's Silk Robe
							i(94362),	-- Tyrannical Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(12, iensemble(138694, {	-- Ensemble: Tyrannical Gladiator's Ironskin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94340),	-- Tyrannical Gladiator's Copperskin Gloves
							i(94341),	-- Tyrannical Gladiator's Copperskin Helm
							i(94478),	-- Tyrannical Gladiator's Copperskin Legguards
							i(94493),	-- Tyrannical Gladiator's Copperskin Spaulders
							i(94479),	-- Tyrannical Gladiator's Copperskin Tunic
							i(94391),	-- Tyrannical Gladiator's Ironskin Gloves
							i(94428),	-- Tyrannical Gladiator's Ironskin Helm
							i(94370),	-- Tyrannical Gladiator's Ironskin Legguards
							i(94339),	-- Tyrannical Gladiator's Ironskin Spaulders
							i(94436),	-- Tyrannical Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138686, {	-- Ensemble: Tyrannical Gladiator's Scaled Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94345),	-- Tyrannical Gladiator's Ornamented Chestguard
							i(94438),	-- Tyrannical Gladiator's Ornamented Gloves
							i(94348),	-- Tyrannical Gladiator's Ornamented Headcover
							i(94484),	-- Tyrannical Gladiator's Ornamented Legplates
							i(94413),	-- Tyrannical Gladiator's Ornamented Spaulders
							i(94463),	-- Tyrannical Gladiator's Scaled Chestpiece
							i(94343),	-- Tyrannical Gladiator's Scaled Gauntlets
							i(94495),	-- Tyrannical Gladiator's Scaled Helm
							i(94496),	-- Tyrannical Gladiator's Scaled Legguards
							i(94460),	-- Tyrannical Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138700, {	-- Ensemble: Tyrannical Gladiator's Satin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94328),	-- Tyrannical Gladiator's Mooncloth Gloves
							i(94419),	-- Tyrannical Gladiator's Mooncloth Helm
							i(94420),	-- Tyrannical Gladiator's Mooncloth Leggings
							i(94466),	-- Tyrannical Gladiator's Mooncloth Mantle
							i(94397),	-- Tyrannical Gladiator's Mooncloth Robe
							i(94423),	-- Tyrannical Gladiator's Satin Gloves
							i(94467),	-- Tyrannical Gladiator's Satin Hood
							i(94334),	-- Tyrannical Gladiator's Satin Leggings
							i(94385),	-- Tyrannical Gladiator's Satin Mantle
							i(94335),	-- Tyrannical Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(12, iensemble(138696, {	-- Ensemble: Tyrannical Gladiator's Leather Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94377),	-- Tyrannical Gladiator's Leather Gloves
							i(94426),	-- Tyrannical Gladiator's Leather Helm
							i(94446),	-- Tyrannical Gladiator's Leather Legguards
							i(94447),	-- Tyrannical Gladiator's Leather Spaulders
							i(94443),	-- Tyrannical Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138688, {	-- Ensemble: Tyrannical Gladiator's Ringmail Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94475),	-- Tyrannical Gladiator's Linked Armor
							i(94458),	-- Tyrannical Gladiator's Linked Gauntlets
							i(94430),	-- Tyrannical Gladiator's Linked Helm
							i(94494),	-- Tyrannical Gladiator's Linked Leggings
							i(94342),	-- Tyrannical Gladiator's Linked Spaulders
							i(94459),	-- Tyrannical Gladiator's Mail Armor
							i(94408),	-- Tyrannical Gladiator's Mail Gauntlets
							i(94409),	-- Tyrannical Gladiator's Mail Helm
							i(94497),	-- Tyrannical Gladiator's Mail Leggings
							i(94350),	-- Tyrannical Gladiator's Mail Spaulders
							i(94433),	-- Tyrannical Gladiator's Ringmail Armor
							i(94490),	-- Tyrannical Gladiator's Ringmail Gauntlets
							i(94434),	-- Tyrannical Gladiator's Ringmail Helm
							i(94435),	-- Tyrannical Gladiator's Ringmail Leggings
							i(94369),	-- Tyrannical Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138702, {	-- Ensemble: Tyrannical Gladiator's Felweave Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94398),	-- Tyrannical Gladiator's Felweave Amice
							i(94442),	-- Tyrannical Gladiator's Felweave Cowl
							i(94441),	-- Tyrannical Gladiator's Felweave Handguards
							i(94375),	-- Tyrannical Gladiator's Felweave Raiment
							i(94471),	-- Tyrannical Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138682, {	-- Ensemble: Tyrannical Gladiator's Plate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(94444),	-- Tyrannical Gladiator's Plate Chestpiece
							i(94331),	-- Tyrannical Gladiator's Plate Gauntlets
							i(94332),	-- Tyrannical Gladiator's Plate Helm
							i(94448),	-- Tyrannical Gladiator's Plate Legguards
							i(94401),	-- Tyrannical Gladiator's Plate Shoulders
						}),
						n(BACK, {
							-- From Nalak
							i(94421),	-- Tyrannical Gladiator's Cape of Cruelty
							i(94355),	-- Tyrannical Gladiator's Cape of Prowess
							i(94485),	-- Tyrannical Gladiator's Cloak of Alacrity
							i(94486),	-- Tyrannical Gladiator's Cloak of Prowess
							i(94383),	-- Tyrannical Gladiator's Drape of Cruelty
							i(94472),	-- Tyrannical Gladiator's Drape of Meditation
							i(94488),	-- Tyrannical Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							-- From Nalak
							i(94337),	-- Tyrannical Gladiator's Armbands of Meditation
							i(94379),	-- Tyrannical Gladiator's Armbands of Prowess
							i(94487),	-- Tyrannical Gladiator's Armplates of Alacrity
							i(94418),	-- Tyrannical Gladiator's Armplates of Proficiency
							i(94427),	-- Tyrannical Gladiator's Armwraps of Accuracy
							i(94470),	-- Tyrannical Gladiator's Armwraps of Alacrity
							i(94407),	-- Tyrannical Gladiator's Bindings of Meditation
							i(94439),	-- Tyrannical Gladiator's Bindings of Prowess
							i(94481),	-- Tyrannical Gladiator's Bracers of Meditation
							i(94411),	-- Tyrannical Gladiator's Bracers of Prowess
							i(94403),	-- Tyrannical Gladiator's Cuffs of Accuracy
							i(94380),	-- Tyrannical Gladiator's Cuffs of Meditation
							i(94449),	-- Tyrannical Gladiator's Cuffs of Prowess
							i(94469),	-- Tyrannical Gladiator's Wristguards of Accuracy
							i(94404),	-- Tyrannical Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							-- From Nalak
							i(94410),	-- Tyrannical Gladiator's Belt of Cruelty
							i(94491),	-- Tyrannical Gladiator's Belt of Meditation
							i(94480),	-- Tyrannical Gladiator's Clasp of Cruelty
							i(94464),	-- Tyrannical Gladiator's Clasp of Meditation
							i(94376),	-- Tyrannical Gladiator's Cord of Accuracy
							i(94400),	-- Tyrannical Gladiator's Cord of Cruelty
							i(94425),	-- Tyrannical Gladiator's Cord of Meditation
							i(94353),	-- Tyrannical Gladiator's Girdle of Accuracy
							i(94440),	-- Tyrannical Gladiator's Girdle of Prowess
							i(94358),	-- Tyrannical Gladiator's Links of Accuracy
							i(94330),	-- Tyrannical Gladiator's Links of Cruelty
							i(94424),	-- Tyrannical Gladiator's Waistband of Accuracy
							i(94360),	-- Tyrannical Gladiator's Waistband of Cruelty
							i(94393),	-- Tyrannical Gladiator's Waistguard of Cruelty
							i(94382),	-- Tyrannical Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							-- From Nalak
							i(94432),	-- Tyrannical Gladiator's Boots of Alacrity
							i(94374),	-- Tyrannical Gladiator's Boots of Cruelty
							i(94344),	-- Tyrannical Gladiator's Footguards of Alacrity (Leather)
							i(94378),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
							i(94476),	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
							i(94336),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
							i(94351),	-- Tyrannical Gladiator's Greaves of Alacrity
							i(94352),	-- Tyrannical Gladiator's Greaves of Meditation
							i(94359),	-- Tyrannical Gladiator's Sabatons of Alacrity
							i(94445),	-- Tyrannical Gladiator's Sabatons of Cruelty
							i(94333),	-- Tyrannical Gladiator's Treads of Alacrity
							i(94402),	-- Tyrannical Gladiator's Treads of Cruelty
							i(94468),	-- Tyrannical Gladiator's Treads of Meditation
							i(94461),	-- Tyrannical Gladiator's Warboots of Alacrity
							i(94414),	-- Tyrannical Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, {
							-- From Nalak
							i(94354),	-- Tyrannical Gladiator's Choker of Accuracy
							i(94465),	-- Tyrannical Gladiator's Choker of Proficiency
							i(94394),	-- Tyrannical Gladiator's Necklace of Proficiency
							i(94395),	-- Tyrannical Gladiator's Necklace of Prowess
							i(94473),	-- Tyrannical Gladiator's Pendant of Alacrity
							i(94489),	-- Tyrannical Gladiator's Pendant of Cruelty
							i(94452),	-- Tyrannical Gladiator's Pendant of Meditation
						}),
						filter(FINGER_F, {
							-- From Nalak
							i(94363),	-- Tyrannical Gladiator's Band of Accuracy
							i(94390),	-- Tyrannical Gladiator's Band of Cruelty
							i(94474),	-- Tyrannical Gladiator's Band of Meditation
							i(94399),	-- Tyrannical Gladiator's Ring of Accuracy
							i(94357),	-- Tyrannical Gladiator's Ring of Cruelty
							i(94462),	-- Tyrannical Gladiator's Signet of Accuracy
							i(94417),	-- Tyrannical Gladiator's Signet of Cruelty
						}),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
							i(94373),	-- Tyrannical Gladiator's Badge of Conquest
							i(94346),	-- Tyrannical Gladiator's Badge of Dominance
							i(94349),	-- Tyrannical Gladiator's Badge of Victory
							i(94396),	-- Tyrannical Gladiator's Emblem of Cruelty
							i(94329),	-- Tyrannical Gladiator's Emblem of Meditation
							i(94422),	-- Tyrannical Gladiator's Emblem of Tenacity
							i(94356),	-- Tyrannical Gladiator's Insignia of Conquest
							i(94482),	-- Tyrannical Gladiator's Insignia of Dominance
							i(94415),	-- Tyrannical Gladiator's Insignia of Victory
							i(94454),	-- Tyrannical Gladiator's Medallion of Cruelty (H)
							i(94338),	-- Tyrannical Gladiator's Medallion of Meditation (H)
							i(94387),	-- Tyrannical Gladiator's Medallion of Tenacity (H)
						})),
					}),
				},
			}),
			n(PVP_ELITE, sharedData({ ["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 } }, {
				-- Original Sources are:
				-- n70101 Armsmaster Holinka in Valley of the Four Winds (Alliance)
				-- n70108 Roo Desvin in Area Kun-Lai Summit (Horde)
				n(WEAPONS, {
					i(91130),	-- Tyrannical Gladiator's Barrier
					i(91403),	-- Tyrannical Gladiator's Baton of Light
					i(91134),	-- Tyrannical Gladiator's Battle Staff
					i(91407),	-- Tyrannical Gladiator's Bonecracker
					i(91090),	-- Tyrannical Gladiator's Bonegrinder
					i(91094),	-- Tyrannical Gladiator's Cleaver
					i(91088),	-- Tyrannical Gladiator's Decapitator
					i(91128),	-- Tyrannical Gladiator's Endgame
					i(91208),	-- Tyrannical Gladiator's Energy Staff
					i(91395),	-- Tyrannical Gladiator's Fleshslicer
					i(91204),	-- Tyrannical Gladiator's Gavel
					i(91092),	-- Tyrannical Gladiator's Greatsword
					i(91405),	-- Tyrannical Gladiator's Hacker
					i(91146),	-- Tyrannical Gladiator's Heavy Crossbow
					i(91108),	-- Tyrannical Gladiator's Longbow
					i(91399),	-- Tyrannical Gladiator's Mageblade
					i(91308),	-- Tyrannical Gladiator's Pike
					i(91096),	-- Tyrannical Gladiator's Pummeler
					i(91098),	-- Tyrannical Gladiator's Quickblade
					i(91206),	-- Tyrannical Gladiator's Redoubt
					i(91397),	-- Tyrannical Gladiator's Render
					i(91142),	-- Tyrannical Gladiator's Reprieve
					i(91202),	-- Tyrannical Gladiator's Rifle
					i(91393),	-- Tyrannical Gladiator's Ripper
					i(91391),	-- Tyrannical Gladiator's Shanker
					i(91419),	-- Tyrannical Gladiator's Shield Wall
					i(91409),	-- Tyrannical Gladiator's Slicer
					i(91132),	-- Tyrannical Gladiator's Spellblade
					i(91183),	-- Tyrannical Gladiator's Staff
					i(91144),	-- Tyrannical Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(91148),	-- Tyrannical Gladiator's Dreadplate Chestpiece
					i(91150),	-- Tyrannical Gladiator's Dreadplate Gauntlets
					i(91152),	-- Tyrannical Gladiator's Dreadplate Helm
					i(91154),	-- Tyrannical Gladiator's Dreadplate Legguards
					i(91156),	-- Tyrannical Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					i(91158),	-- Tyrannical Gladiator's Dragonhide Gloves
					i(91160),	-- Tyrannical Gladiator's Dragonhide Helm
					i(91162),	-- Tyrannical Gladiator's Dragonhide Legguards
					i(91164),	-- Tyrannical Gladiator's Dragonhide Robes
					i(91166),	-- Tyrannical Gladiator's Dragonhide Spaulders
					i(91173),	-- Tyrannical Gladiator's Kodohide Gloves
					i(91175),	-- Tyrannical Gladiator's Kodohide Helm
					i(91177),	-- Tyrannical Gladiator's Kodohide Legguards
					i(91179),	-- Tyrannical Gladiator's Kodohide Robes
					i(91181),	-- Tyrannical Gladiator's Kodohide Spaulders
					i(91190),	-- Tyrannical Gladiator's Wyrmhide Gloves
					i(91192),	-- Tyrannical Gladiator's Wyrmhide Helm
					i(91194),	-- Tyrannical Gladiator's Wyrmhide Legguards
					i(91196),	-- Tyrannical Gladiator's Wyrmhide Robes
					i(91198),	-- Tyrannical Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					i(91223),	-- Tyrannical Gladiator's Chain Armor
					i(91225),	-- Tyrannical Gladiator's Chain Gauntlets
					i(91227),	-- Tyrannical Gladiator's Chain Helm
					i(91229),	-- Tyrannical Gladiator's Chain Leggings
					i(91231),	-- Tyrannical Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					i(91241),	-- Tyrannical Gladiator's Silk Amice
					i(91235),	-- Tyrannical Gladiator's Silk Cowl
					i(91233),	-- Tyrannical Gladiator's Silk Handguards
					i(91239),	-- Tyrannical Gladiator's Silk Robe
					i(91237),	-- Tyrannical Gladiator's Silk Trousers
				}),
				cl(MONK, {
					i(91258),	-- Tyrannical Gladiator's Copperskin Gloves
					i(91260),	-- Tyrannical Gladiator's Copperskin Helm
					i(91262),	-- Tyrannical Gladiator's Copperskin Legguards
					i(91264),	-- Tyrannical Gladiator's Copperskin Spaulders
					i(91266),	-- Tyrannical Gladiator's Copperskin Tunic
					i(91248),	-- Tyrannical Gladiator's Ironskin Gloves
					i(91250),	-- Tyrannical Gladiator's Ironskin Helm
					i(91252),	-- Tyrannical Gladiator's Ironskin Legguards
					i(91254),	-- Tyrannical Gladiator's Ironskin Spaulders
					i(91256),	-- Tyrannical Gladiator's Ironskin Tunic
				}),
				cl(PALADIN, {
					i(91288),	-- Tyrannical Gladiator's Ornamented Chestguard
					i(91290),	-- Tyrannical Gladiator's Ornamented Gloves
					i(91292),	-- Tyrannical Gladiator's Ornamented Headcover
					i(91294),	-- Tyrannical Gladiator's Ornamented Legplates
					i(91296),	-- Tyrannical Gladiator's Ornamented Spaulders
					i(91268),	-- Tyrannical Gladiator's Scaled Chestpiece
					i(91270),	-- Tyrannical Gladiator's Scaled Gauntlets
					i(91272),	-- Tyrannical Gladiator's Scaled Helm
					i(91274),	-- Tyrannical Gladiator's Scaled Legguards
					i(91276),	-- Tyrannical Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					i(91310),	-- Tyrannical Gladiator's Mooncloth Gloves
					i(91312),	-- Tyrannical Gladiator's Mooncloth Helm
					i(91314),	-- Tyrannical Gladiator's Mooncloth Leggings
					i(91318),	-- Tyrannical Gladiator's Mooncloth Mantle
					i(91316),	-- Tyrannical Gladiator's Mooncloth Robe
					i(91320),	-- Tyrannical Gladiator's Satin Gloves
					i(91322),	-- Tyrannical Gladiator's Satin Hood
					i(91324),	-- Tyrannical Gladiator's Satin Leggings
					i(91328),	-- Tyrannical Gladiator's Satin Mantle
					i(91326),	-- Tyrannical Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					i(91343),	-- Tyrannical Gladiator's Leather Gloves
					i(91345),	-- Tyrannical Gladiator's Leather Helm
					i(91347),	-- Tyrannical Gladiator's Leather Legguards
					i(91349),	-- Tyrannical Gladiator's Leather Spaulders
					i(91341),	-- Tyrannical Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					i(91369),	-- Tyrannical Gladiator's Linked Armor
					i(91371),	-- Tyrannical Gladiator's Linked Gauntlets
					i(91373),	-- Tyrannical Gladiator's Linked Helm
					i(91375),	-- Tyrannical Gladiator's Linked Leggings
					i(91377),	-- Tyrannical Gladiator's Linked Spaulders
					i(91381),	-- Tyrannical Gladiator's Mail Armor
					i(91383),	-- Tyrannical Gladiator's Mail Gauntlets
					i(91385),	-- Tyrannical Gladiator's Mail Helm
					i(91387),	-- Tyrannical Gladiator's Mail Leggings
					i(91389),	-- Tyrannical Gladiator's Mail Spaulders
					i(91359),	-- Tyrannical Gladiator's Ringmail Armor
					i(91361),	-- Tyrannical Gladiator's Ringmail Gauntlets
					i(91363),	-- Tyrannical Gladiator's Ringmail Helm
					i(91365),	-- Tyrannical Gladiator's Ringmail Leggings
					i(91367),	-- Tyrannical Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					i(91429),	-- Tyrannical Gladiator's Felweave Amice
					i(91423),	-- Tyrannical Gladiator's Felweave Cowl
					i(91421),	-- Tyrannical Gladiator's Felweave Handguards
					i(91427),	-- Tyrannical Gladiator's Felweave Raiment
					i(91425),	-- Tyrannical Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					i(91431),	-- Tyrannical Gladiator's Plate Chestpiece
					i(91433),	-- Tyrannical Gladiator's Plate Gauntlets
					i(91435),	-- Tyrannical Gladiator's Plate Helm
					i(91437),	-- Tyrannical Gladiator's Plate Legguards
					i(91439),	-- Tyrannical Gladiator's Plate Shoulders
				}),
				n(WAIST, {
					i(91185),	-- Tyrannical Gladiator's Belt of Cruelty
					i(91168),	-- Tyrannical Gladiator's Belt of Meditation
					i(91278),	-- Tyrannical Gladiator's Clasp of Cruelty
					i(91280),	-- Tyrannical Gladiator's Clasp of Meditation
					i(91112),	-- Tyrannical Gladiator's Cord of Accuracy
					i(91110),	-- Tyrannical Gladiator's Cord of Cruelty
					i(91114),	-- Tyrannical Gladiator's Cord of Meditation
					i(91298),	-- Tyrannical Gladiator's Girdle of Accuracy
					i(91300),	-- Tyrannical Gladiator's Girdle of Prowess
					i(91215),	-- Tyrannical Gladiator's Links of Accuracy
					i(91213),	-- Tyrannical Gladiator's Links of Cruelty
					i(91336),	-- Tyrannical Gladiator's Waistband of Accuracy
					i(91243),	-- Tyrannical Gladiator's Waistband of Cruelty
					i(91379),	-- Tyrannical Gladiator's Waistguard of Cruelty
					i(91351),	-- Tyrannical Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					i(91245),	-- Tyrannical Gladiator's Boots of Alacrity
					i(91338),	-- Tyrannical Gladiator's Boots of Cruelty
					i(91187),	-- Tyrannical Gladiator's Footguards of Alacrity (Leather)
					i(91353),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
					i(91170),	-- Tyrannical Gladiator's Footguards of Meditation (Leahter)
					i(91355),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
					i(91282),	-- Tyrannical Gladiator's Greaves of Alacrity
					i(91284),	-- Tyrannical Gladiator's Greaves of Meditation
					i(91219),	-- Tyrannical Gladiator's Sabatons of Alacrity
					i(91217),	-- Tyrannical Gladiator's Sabatons of Cruelty
					i(91118),	-- Tyrannical Gladiator's Treads of Alacrity
					i(91116),	-- Tyrannical Gladiator's Treads of Cruelty
					i(91120),	-- Tyrannical Gladiator's Treads of Meditation
					i(91304),	-- Tyrannical Gladiator's Warboots of Alacrity
					i(91302),	-- Tyrannical Gladiator's Warboots of Cruelty
				}),
				n(BACK, {
					i(98336),	-- Tyrannical Gladiator's Greatcloak
				}),
				filter(TABARDS, {
					i(98162),	-- Tyrannical Gladiator's Tabard
				}),
			})),
		}))),
		-- Wouter NOTE: temporarily tied this to SoO phase release for MoP Classic, but this will likely be different
		n(SEASON_GRIEVOUS, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
			n(ACHIEVEMENTS, {
				ach(11719, {["timeline"] = {ADDED_7_2_0}}),	-- It's Not Fashion Unless It Hurts (PvP Season 14)
			}),
			n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
				ach(8649),	-- Challenger: Mists of Pandaria Season 3/Season 14
				ach(8645, {	-- Duelist: Mists of Pandaria Season 3/Season 14
					elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
						["timeline"] = { ADDED_7_3_2 },
					})),
				}),
				ach(8644, {	-- Gladiator: Season 14 (Retail) // Gladiator: Season 14 (3v3) (Classic)
					i(104326),	-- Grievous Gladiator's Cloud Serpent
				}),
				ach(8485, {	-- Grievous Combatant (Alliance) Mists of Pandaria Season 3/Season 14
					["races"] = ALLIANCE_ONLY,
				}),
				ach(8484, {	-- Grievous Combatant (Horde) Mists of Pandaria Season 3/Season 14
					["races"] = HORDE_ONLY,
				}),
				ach(8643, {	-- Grievous Gladiator (Retail) // Grievous Gladiator: Season 14 (3v3) (Classic)
					title(253),	-- Grievous Gladiator <Name>
				}),
				ach(8705, {	-- Grievous Gladiator's Cloud Serpent
					["provider"] = { "i", 104326 },	-- Grievous Gladiator's Cloud Serpent
					["filterID"] = MOUNTS,
				}),
				ach(8654, {	-- Hero of the Alliance: Grievous
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(8657, {	-- Hero of the Horde: Grievous
					["races"] = HORDE_ONLY,
					["groups"] = {
						elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(8646),	-- Rival: Mists of Pandaria Season 3/Season 14
				-- #if ANYCLASSIC
				ach(61352, {	-- Gladiator: Season 14 (2v2)
					i(104326),	-- Grievous Gladiator's Cloud Serpent
				}),
				-- Gladiator 3v3 is above, as it exist in Retail
				ach(61360, {	-- Gladiator: Season 14 (5v5)
					i(104326),	-- Grievous Gladiator's Cloud Serpent
				}),
				ach(61356, {	-- Grievous Gladiator: Season 14 (2v2)
					title(253),	-- Grievous Gladiator <Name>
				}),
				ach(61364, {	-- Grievous Gladiator: Season 14 (5v5)
					title(253),	-- Grievous Gladiator <Name>
				}),
				ach(61417, {	-- Undisputed Gladiator: Season 14
					title(261),	-- Undisputed Gladiator <Name>
				}),
				-- #endif
			})),
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					n(PVP_HONOR, {
						n(WEAPONS, {
							moh(2, i(99794)),	-- Tyrannical Gladiator's Barrier
							moh(5, i(99796)),	-- Tyrannical Gladiator's Battle Staff
							moh(5, i(99941)),	-- Tyrannical Gladiator's Bonecracker
							moh(5, i(99769)),	-- Tyrannical Gladiator's Cleaver
							moh(5, i(99766)),	-- Tyrannical Gladiator's Decapitator
							moh(2, i(99793)),	-- Tyrannical Gladiator's Endgame
							moh(5, i(99837)),	-- Tyrannical Gladiator's Energy Staff
							moh(5, i(99835)),	-- Tyrannical Gladiator's Gavel
							moh(5, i(99768)),	-- Tyrannical Gladiator's Greatsword
							moh(5, i(99940)),	-- Tyrannical Gladiator's Hacker
							moh(5, i(99805)),	-- Tyrannical Gladiator's Heavy Crossbow
							moh(5, i(99936)),	-- Tyrannical Gladiator's Mageblade
							moh(5, i(99770)),	-- Tyrannical Gladiator's Pummeler
							moh(5, i(99771)),	-- Tyrannical Gladiator's Quickblade
							moh(2, i(99836)),	-- Tyrannical Gladiator's Redoubt
							moh(5, i(99935)),	-- Tyrannical Gladiator's Render
							moh(2, i(99803)),	-- Tyrannical Gladiator's Reprieve
							moh(5, i(99933)),	-- Tyrannical Gladiator's Ripper
							moh(5, i(99932)),	-- Tyrannical Gladiator's Shanker
							moh(2, i(99951)),	-- Tyrannical Gladiator's Shield Wall
							moh(5, i(99942)),	-- Tyrannical Gladiator's Slicer
							moh(5, i(99795)),	-- Tyrannical Gladiator's Spellblade
							moh(5, i(99824)),	-- Tyrannical Gladiator's Staff
						}),
						cl(DEATHKNIGHT, {
							moh(3, i(99806)),	-- Tyrannical Gladiator's Dreadplate Chestpiece
							moh(2, i(99807)),	-- Tyrannical Gladiator's Dreadplate Gauntlets
							moh(3, i(99808)),	-- Tyrannical Gladiator's Dreadplate Helm
							moh(3, i(99809)),	-- Tyrannical Gladiator's Dreadplate Legguards
							moh(2, i(99810)),	-- Tyrannical Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(2, i(99811)),	-- Tyrannical Gladiator's Dragonhide Gloves
							moh(3, i(99812)),	-- Tyrannical Gladiator's Dragonhide Helm
							moh(3, i(99813)),	-- Tyrannical Gladiator's Dragonhide Legguards
							moh(3, i(99814)),	-- Tyrannical Gladiator's Dragonhide Robes
							moh(2, i(99815)),	-- Tyrannical Gladiator's Dragonhide Spaulders
							moh(2, i(99819)),	-- Tyrannical Gladiator's Kodohide Gloves
							moh(3, i(99820)),	-- Tyrannical Gladiator's Kodohide Helm
							moh(3, i(99821)),	-- Tyrannical Gladiator's Kodohide Legguards
							moh(3, i(99822)),	-- Tyrannical Gladiator's Kodohide Robes
							moh(2, i(99823)),	-- Tyrannical Gladiator's Kodohide Spaulders
							moh(2, i(99828)),	-- Tyrannical Gladiator's Wyrmhide Gloves
							moh(3, i(99829)),	-- Tyrannical Gladiator's Wyrmhide Helm
							moh(3, i(99830)),	-- Tyrannical Gladiator's Wyrmhide Legguards
							moh(3, i(99831)),	-- Tyrannical Gladiator's Wyrmhide Robes
							moh(2, i(99832)),	-- Tyrannical Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(3, i(99847)),	-- Tyrannical Gladiator's Chain Armor
							moh(2, i(99848)),	-- Tyrannical Gladiator's Chain Gauntlets
							moh(3, i(99849)),	-- Tyrannical Gladiator's Chain Helm
							moh(3, i(99850)),	-- Tyrannical Gladiator's Chain Leggings
							moh(2, i(99851)),	-- Tyrannical Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(2, i(99856)),	-- Tyrannical Gladiator's Silk Amice
							moh(3, i(99853)),	-- Tyrannical Gladiator's Silk Cowl
							moh(2, i(99852)),	-- Tyrannical Gladiator's Silk Handguards
							moh(3, i(99855)),	-- Tyrannical Gladiator's Silk Robe
							moh(3, i(99854)),	-- Tyrannical Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(2, i(99865)),	-- Tyrannical Gladiator's Copperskin Gloves
							moh(3, i(99866)),	-- Tyrannical Gladiator's Copperskin Helm
							moh(3, i(99867)),	-- Tyrannical Gladiator's Copperskin Legguards
							moh(2, i(99868)),	-- Tyrannical Gladiator's Copperskin Spaulders
							moh(3, i(99869)),	-- Tyrannical Gladiator's Copperskin Tunic
							moh(2, i(99860)),	-- Tyrannical Gladiator's Ironskin Gloves
							moh(3, i(99861)),	-- Tyrannical Gladiator's Ironskin Helm
							moh(3, i(99862)),	-- Tyrannical Gladiator's Ironskin Legguards
							moh(2, i(99863)),	-- Tyrannical Gladiator's Ironskin Spaulders
							moh(3, i(99864)),	-- Tyrannical Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(3, i(99881)),	-- Tyrannical Gladiator's Ornamented Chestguard
							moh(2, i(99882)),	-- Tyrannical Gladiator's Ornamented Gloves
							moh(3, i(99883)),	-- Tyrannical Gladiator's Ornamented Headcover
							moh(3, i(99884)),	-- Tyrannical Gladiator's Ornamented Legplates
							moh(2, i(99885)),	-- Tyrannical Gladiator's Ornamented Spaulders
							moh(3, i(99870)),	-- Tyrannical Gladiator's Scaled Chestpiece
							moh(2, i(99871)),	-- Tyrannical Gladiator's Scaled Gauntlets
							moh(3, i(99872)),	-- Tyrannical Gladiator's Scaled Helm
							moh(3, i(99873)),	-- Tyrannical Gladiator's Scaled Legguards
							moh(2, i(99874)),	-- Tyrannical Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(2, i(99893)),	-- Tyrannical Gladiator's Mooncloth Gloves
							moh(3, i(99894)),	-- Tyrannical Gladiator's Mooncloth Helm
							moh(3, i(99895)),	-- Tyrannical Gladiator's Mooncloth Leggings
							moh(2, i(99897)),	-- Tyrannical Gladiator's Mooncloth Mantle
							moh(3, i(99896)),	-- Tyrannical Gladiator's Mooncloth Robe
							moh(2, i(99898)),	-- Tyrannical Gladiator's Satin Gloves
							moh(3, i(99899)),	-- Tyrannical Gladiator's Satin Hood
							moh(3, i(99900)),	-- Tyrannical Gladiator's Satin Leggings
							moh(2, i(99902)),	-- Tyrannical Gladiator's Satin Mantle
							moh(3, i(99901)),	-- Tyrannical Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(2, i(99907)),	-- Tyrannical Gladiator's Leather Gloves
							moh(3, i(99908)),	-- Tyrannical Gladiator's Leather Helm
							moh(3, i(99909)),	-- Tyrannical Gladiator's Leather Legguards
							moh(2, i(99910)),	-- Tyrannical Gladiator's Leather Spaulders
							moh(3, i(99906)),	-- Tyrannical Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(3, i(99921)),	-- Tyrannical Gladiator's Linked Armor
							moh(2, i(99922)),	-- Tyrannical Gladiator's Linked Gauntlets
							moh(3, i(99923)),	-- Tyrannical Gladiator's Linked Helm
							moh(3, i(99924)),	-- Tyrannical Gladiator's Linked Leggings
							moh(2, i(99925)),	-- Tyrannical Gladiator's Linked Spaulders
							moh(3, i(99927)),	-- Tyrannical Gladiator's Mail Armor
							moh(2, i(99928)),	-- Tyrannical Gladiator's Mail Gauntlets
							moh(3, i(99929)),	-- Tyrannical Gladiator's Mail Helm
							moh(3, i(99930)),	-- Tyrannical Gladiator's Mail Leggings
							moh(2, i(99931)),	-- Tyrannical Gladiator's Mail Spaulders
							moh(3, i(99916)),	-- Tyrannical Gladiator's Ringmail Armor
							moh(2, i(99917)),	-- Tyrannical Gladiator's Ringmail Gauntlets
							moh(3, i(99918)),	-- Tyrannical Gladiator's Ringmail Helm
							moh(3, i(99919)),	-- Tyrannical Gladiator's Ringmail Leggings
							moh(2, i(99920)),	-- Tyrannical Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(2, i(99956)),	-- Tyrannical Gladiator's Felweave Amice
							moh(3, i(99953)),	-- Tyrannical Gladiator's Felweave Cowl
							moh(2, i(99952)),	-- Tyrannical Gladiator's Felweave Handguards
							moh(3, i(99955)),	-- Tyrannical Gladiator's Felweave Raiment
							moh(3, i(99954)),	-- Tyrannical Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(3, i(99957)),	-- Tyrannical Gladiator's Plate Chestpiece
							moh(2, i(99958)),	-- Tyrannical Gladiator's Plate Gauntlets
							moh(3, i(99959)),	-- Tyrannical Gladiator's Plate Helm
							moh(3, i(99960)),	-- Tyrannical Gladiator's Plate Legguards
							moh(2, i(99961)),	-- Tyrannical Gladiator's Plate Shoulders
						}),
						n(BACK, {
							moh(1, i(99773)),	-- Tyrannical Gladiator's Cape of Cruelty
							moh(1, i(99774)),	-- Tyrannical Gladiator's Cape of Prowess
							moh(1, i(99944)),	-- Tyrannical Gladiator's Cloak of Alacrity
							moh(1, i(99945)),	-- Tyrannical Gladiator's Cloak of Prowess
							moh(1, i(99790)),	-- Tyrannical Gladiator's Drape of Cruelty
							moh(1, i(99792)),	-- Tyrannical Gladiator's Drape of Meditation
							moh(1, i(99791)),	-- Tyrannical Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							moh(1, i(99915)),	-- Tyrannical Gladiator's Armbands of Meditation
							moh(1, i(99914)),	-- Tyrannical Gladiator's Armbands of Prowess
							moh(1, i(99891)),	-- Tyrannical Gladiator's Armplates of Alacrity
							moh(1, i(99890)),	-- Tyrannical Gladiator's Armplates of Proficiency
							moh(1, i(99859)),	-- Tyrannical Gladiator's Armwraps of Accuracy
							moh(1, i(99905)),	-- Tyrannical Gladiator's Armwraps of Alacrity
							moh(1, i(99818)),	-- Tyrannical Gladiator's Bindings of Meditation
							moh(1, i(99827)),	-- Tyrannical Gladiator's Bindings of Prowess
							moh(1, i(99880)),	-- Tyrannical Gladiator's Bracers of Meditation
							moh(1, i(99879)),	-- Tyrannical Gladiator's Bracers of Prowess
							moh(1, i(99787)),	-- Tyrannical Gladiator's Cuffs of Accuracy
							moh(1, i(99789)),	-- Tyrannical Gladiator's Cuffs of Meditation
							moh(1, i(99788)),	-- Tyrannical Gladiator's Cuffs of Prowess
							moh(1, i(99846)),	-- Tyrannical Gladiator's Wristguards of Accuracy
							moh(1, i(99845)),	-- Tyrannical Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							moh(1, i(99825)),	-- Tyrannical Gladiator's Belt of Cruelty
							moh(1, i(99816)),	-- Tyrannical Gladiator's Belt of Meditation
							moh(1, i(99875)),	-- Tyrannical Gladiator's Clasp of Cruelty
							moh(1, i(99876)),	-- Tyrannical Gladiator's Clasp of Meditation
							moh(1, i(99782)),	-- Tyrannical Gladiator's Cord of Accuracy
							moh(1, i(99781)),	-- Tyrannical Gladiator's Cord of Cruelty
							moh(1, i(99783)),	-- Tyrannical Gladiator's Cord of Meditation
							moh(1, i(99886)),	-- Tyrannical Gladiator's Girdle of Accuracy
							moh(1, i(99887)),	-- Tyrannical Gladiator's Girdle of Prowess
							moh(1, i(99842)),	-- Tyrannical Gladiator's Links of Accuracy
							moh(1, i(99841)),	-- Tyrannical Gladiator's Links of Cruelty
							moh(1, i(99903)),	-- Tyrannical Gladiator's Waistband of Accuracy
							moh(1, i(99857)),	-- Tyrannical Gladiator's Waistband of Cruelty
							moh(1, i(99926)),	-- Tyrannical Gladiator's Waistguard of Cruelty
							moh(1, i(99911)),	-- Tyrannical Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							moh(2, i(99858)),	-- Tyrannical Gladiator's Boots of Alacrity
							moh(2, i(99904)),	-- Tyrannical Gladiator's Boots of Cruelty
							moh(2, i(99826)),	-- Tyrannical Gladiator's Footguards of Alacrity (Leahter)
							moh(2, i(99912)),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
							moh(2, i(99817)),	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
							moh(2, i(99913)),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
							moh(2, i(99877)),	-- Tyrannical Gladiator's Greaves of Alacrity
							moh(2, i(99878)),	-- Tyrannical Gladiator's Greaves of Meditation
							moh(2, i(99844)),	-- Tyrannical Gladiator's Sabatons of Alacrity
							moh(2, i(99843)),	-- Tyrannical Gladiator's Sabatons of Cruelty
							moh(2, i(99785)),	-- Tyrannical Gladiator's Treads of Alacrity
							moh(2, i(99784)),	-- Tyrannical Gladiator's Treads of Cruelty
							moh(2, i(99786)),	-- Tyrannical Gladiator's Treads of Meditation
							moh(2, i(99889)),	-- Tyrannical Gladiator's Warboots of Alacrity
							moh(2, i(99888)),	-- Tyrannical Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(99947),	-- Tyrannical Gladiator's Choker of Accuracy
							i(99946),	-- Tyrannical Gladiator's Choker of Proficiency
							i(99775),	-- Tyrannical Gladiator's Necklace of Proficiency
							i(99776),	-- Tyrannical Gladiator's Necklace of Prowess
							i(99798),	-- Tyrannical Gladiator's Pendant of Alacrity
							i(99797),	-- Tyrannical Gladiator's Pendant of Cruelty
							i(99799),	-- Tyrannical Gladiator's Pendant of Meditation
						})),
						filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(99801),	-- Tyrannical Gladiator's Band of Accuracy
							i(99800),	-- Tyrannical Gladiator's Band of Cruelty
							i(99802),	-- Tyrannical Gladiator's Band of Meditation
							i(99779),	-- Tyrannical Gladiator's Ring of Accuracy
							i(99778),	-- Tyrannical Gladiator's Ring of Cruelty
							i(99950),	-- Tyrannical Gladiator's Signet of Accuracy
							i(99949),	-- Tyrannical Gladiator's Signet of Cruelty
						})),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(99772),	-- Tyrannical Gladiator's Badge of Conquest
							i(99937),	-- Tyrannical Gladiator's Badge of Dominance
							i(99943),	-- Tyrannical Gladiator's Badge of Victory
							i(99838),	-- Tyrannical Gladiator's Emblem of Cruelty
							i(99840),	-- Tyrannical Gladiator's Emblem of Meditation
							i(99839),	-- Tyrannical Gladiator's Emblem of Tenacity
							i(99777),	-- Tyrannical Gladiator's Insignia of Conquest
							i(99938),	-- Tyrannical Gladiator's Insignia of Dominance
							i(99948),	-- Tyrannical Gladiator's Insignia of Victory
							i(100056),	-- Tyrannical Gladiator's Medallion of Cruelty (A)
							i(100058),	-- Tyrannical Gladiator's Medallion of Meditation (A)
							i(100031),	-- Tyrannical Gladiator's Medallion of Tenacity (A)
						})),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							moh(80, iensemble(144252, {	-- Arsenal: Grievous Gladiator's Weapons (A)
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100225),	-- Grievous Gladiator's Barrier
							i(100492),	-- Grievous Gladiator's Baton of Light
							i(100229),	-- Grievous Gladiator's Battle Staff
							i(100496),	-- Grievous Gladiator's Bonecracker
							i(100189),	-- Grievous Gladiator's Cleaver
							i(100183),	-- Grievous Gladiator's Decapitator
							i(100223),	-- Grievous Gladiator's Endgame
							i(100303),	-- Grievous Gladiator's Energy Staff
							i(100299),	-- Grievous Gladiator's Gavel
							i(100187),	-- Grievous Gladiator's Greatsword
							i(100494),	-- Grievous Gladiator's Hacker
							i(100203),	-- Grievous Gladiator's Longbow
							i(100488),	-- Grievous Gladiator's Mageblade
							i(100403),	-- Grievous Gladiator's Pike
							i(100191),	-- Grievous Gladiator's Pummeler
							i(100193),	-- Grievous Gladiator's Quickblade
							i(100301),	-- Grievous Gladiator's Redoubt
							i(100486),	-- Grievous Gladiator's Render
							i(100237),	-- Grievous Gladiator's Reprieve
							i(100297),	-- Grievous Gladiator's Rifle
							i(100482),	-- Grievous Gladiator's Ripper
							i(100480),	-- Grievous Gladiator's Shanker
							i(100508),	-- Grievous Gladiator's Shield Wall
							i(100498),	-- Grievous Gladiator's Slicer
							i(100227),	-- Grievous Gladiator's Spellblade
							i(100239),	-- Grievous Gladiator's Touch of Defeat
						})),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138661, {	-- Ensemble: Grievous Gladiator's Dreadplate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100243),	-- Grievous Gladiator's Dreadplate Chestpiece
							i(100245),	-- Grievous Gladiator's Dreadplate Gauntlets
							i(100247),	-- Grievous Gladiator's Dreadplate Helm
							i(100249),	-- Grievous Gladiator's Dreadplate Legguards
							i(100251),	-- Grievous Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138669, {	-- Ensemble: Grievous Gladiator's Dragonhide Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100253),	-- Grievous Gladiator's Dragonhide Gloves
							i(100255),	-- Grievous Gladiator's Dragonhide Helm
							i(100257),	-- Grievous Gladiator's Dragonhide Legguards
							i(100259),	-- Grievous Gladiator's Dragonhide Robes
							i(100261),	-- Grievous Gladiator's Dragonhide Spaulders
							i(100268),	-- Grievous Gladiator's Kodohide Gloves
							i(100270),	-- Grievous Gladiator's Kodohide Helm
							i(100272),	-- Grievous Gladiator's Kodohide Legguards
							i(100274),	-- Grievous Gladiator's Kodohide Robes
							i(100276),	-- Grievous Gladiator's Kodohide Spaulders
							i(100285),	-- Grievous Gladiator's Wyrmhide Gloves
							i(100287),	-- Grievous Gladiator's Wyrmhide Helm
							i(100289),	-- Grievous Gladiator's Wyrmhide Legguards
							i(100291),	-- Grievous Gladiator's Wyrmhide Robes
							i(100293),	-- Grievous Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138667, {	-- Ensemble: Grievous Gladiator's Chain Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100318),	-- Grievous Gladiator's Chain Armor
							i(100320),	-- Grievous Gladiator's Chain Gauntlets
							i(100322),	-- Grievous Gladiator's Chain Helm
							i(100324),	-- Grievous Gladiator's Chain Leggings
							i(100326),	-- Grievous Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138675, {	-- Ensemble: Grievous Gladiator's Silk Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100336),	-- Grievous Gladiator's Silk Amice
							i(100330),	-- Grievous Gladiator's Silk Cowl
							i(100328),	-- Grievous Gladiator's Silk Handguards
							i(100334),	-- Grievous Gladiator's Silk Robe
							i(100332),	-- Grievous Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(12, iensemble(138671, {	-- Ensemble: Grievous Gladiator's Ironskin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100353),	-- Grievous Gladiator's Copperskin Gloves
							i(100355),	-- Grievous Gladiator's Copperskin Helm
							i(100357),	-- Grievous Gladiator's Copperskin Legguards
							i(100359),	-- Grievous Gladiator's Copperskin Spaulders
							i(100361),	-- Grievous Gladiator's Copperskin Tunic
							i(100343),	-- Grievous Gladiator's Ironskin Gloves
							i(100345),	-- Grievous Gladiator's Ironskin Helm
							i(100347),	-- Grievous Gladiator's Ironskin Legguards
							i(100349),	-- Grievous Gladiator's Ironskin Spaulders
							i(100351),	-- Grievous Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138663, {	-- Ensemble: Grievous Gladiator's Scaled Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100383),	-- Grievous Gladiator's Ornamented Chestguard
							i(100385),	-- Grievous Gladiator's Ornamented Gloves
							i(100387),	-- Grievous Gladiator's Ornamented Headcover
							i(100389),	-- Grievous Gladiator's Ornamented Legplates
							i(100391),	-- Grievous Gladiator's Ornamented Spaulders
							i(100363),	-- Grievous Gladiator's Scaled Chestpiece
							i(100365),	-- Grievous Gladiator's Scaled Gauntlets
							i(100367),	-- Grievous Gladiator's Scaled Helm
							i(100369),	-- Grievous Gladiator's Scaled Legguards
							i(100371),	-- Grievous Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138677, {	-- Ensemble: Grievous Gladiator's Satin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100405),	-- Grievous Gladiator's Mooncloth Gloves
							i(100407),	-- Grievous Gladiator's Mooncloth Helm
							i(100409),	-- Grievous Gladiator's Mooncloth Leggings
							i(100413),	-- Grievous Gladiator's Mooncloth Mantle
							i(100411),	-- Grievous Gladiator's Mooncloth Robe
							i(100209),	-- Grievous Gladiator's Cord of Meditation	-- Priest Only
							i(100415),	-- Grievous Gladiator's Satin Gloves	-- Did not get via ally ensemble
							i(100417),	-- Grievous Gladiator's Satin Hood		-- Did not get via ally ensemble
							i(100419),	-- Grievous Gladiator's Satin Leggings	-- Did not get via ally ensemble
							i(100423),	-- Grievous Gladiator's Satin Mantle	-- Did not get via ally ensemble
							i(100421),	-- Grievous Gladiator's Satin Robe		-- Did not get via ally ensemble
						}),
						cl(ROGUE, {
							moh(12, iensemble(138673, {	-- Ensemble: Grievous Gladiator's Leather Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100432),	-- Grievous Gladiator's Leather Gloves
							i(100434),	-- Grievous Gladiator's Leather Helm
							i(100436),	-- Grievous Gladiator's Leather Legguards
							i(100438),	-- Grievous Gladiator's Leather Spaulders
							i(100430),	-- Grievous Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138665, {	-- Ensemble: Grievous Gladiator's Ringmail Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100458),	-- Grievous Gladiator's Linked Armor
							i(100460),	-- Grievous Gladiator's Linked Gauntlets
							i(100462),	-- Grievous Gladiator's Linked Helm
							i(100464),	-- Grievous Gladiator's Linked Leggings
							i(100466),	-- Grievous Gladiator's Linked Spaulders
							i(100470),	-- Grievous Gladiator's Mail Armor
							i(100472),	-- Grievous Gladiator's Mail Gauntlets
							i(100474),	-- Grievous Gladiator's Mail Helm
							i(100476),	-- Grievous Gladiator's Mail Leggings
							i(100478),	-- Grievous Gladiator's Mail Spaulders
							i(100448),	-- Grievous Gladiator's Ringmail Armor
							i(100450),	-- Grievous Gladiator's Ringmail Gauntlets
							i(100452),	-- Grievous Gladiator's Ringmail Helm
							i(100454),	-- Grievous Gladiator's Ringmail Leggings
							i(100456),	-- Grievous Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138679, {	-- Ensemble: Grievous Gladiator's Felweave Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100518),	-- Grievous Gladiator's Felweave Amice
							i(100512),	-- Grievous Gladiator's Felweave Cowl
							i(100510),	-- Grievous Gladiator's Felweave Handguards
							i(100516),	-- Grievous Gladiator's Felweave Raiment
							i(100514),	-- Grievous Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138659, {	-- Ensemble: Grievous Gladiator's Plate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100520),	-- Grievous Gladiator's Plate Chestpiece
							i(100522),	-- Grievous Gladiator's Plate Gauntlets
							i(100524),	-- Grievous Gladiator's Plate Helm
							i(100526),	-- Grievous Gladiator's Plate Legguards
							i(100528),	-- Grievous Gladiator's Plate Shoulders
						}),
						n(BACK, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100196),	-- Grievous Gladiator's Cape of Cruelty
							i(100197),	-- Grievous Gladiator's Cape of Prowess
							i(100501),	-- Grievous Gladiator's Cloak of Alacrity
							i(100502),	-- Grievous Gladiator's Cloak of Prowess
							i(100220),	-- Grievous Gladiator's Drape of Cruelty
							i(100222),	-- Grievous Gladiator's Drape of Meditation
							i(100221),	-- Grievous Gladiator's Drape of Prowess
						})),
						n(WRIST, {
							i(100447),	-- Grievous Gladiator's Armbands of Meditation
							i(100446),	-- Grievous Gladiator's Armbands of Prowess
							i(100402),	-- Grievous Gladiator's Armplates of Alacrity
							i(100401),	-- Grievous Gladiator's Armplates of Proficiency
							i(100342),	-- Grievous Gladiator's Armwraps of Accuracy
							i(100429),	-- Grievous Gladiator's Armwraps of Alacrity
							i(100267),	-- Grievous Gladiator's Bindings of Meditation
							i(100284),	-- Grievous Gladiator's Bindings of Prowess
							i(100382),	-- Grievous Gladiator's Bracers of Meditation
							i(100381),	-- Grievous Gladiator's Bracers of Prowess
							i(100217),	-- Grievous Gladiator's Cuffs of Accuracy
							i(100219),	-- Grievous Gladiator's Cuffs of Meditation
							i(100218),	-- Grievous Gladiator's Cuffs of Prowess
							i(100317),	-- Grievous Gladiator's Wristguards of Accuracy
							i(100316),	-- Grievous Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							i(100280),	-- Grievous Gladiator's Belt of Cruelty
							i(100263),	-- Grievous Gladiator's Belt of Meditation
							i(100373),	-- Grievous Gladiator's Clasp of Cruelty
							i(100375),	-- Grievous Gladiator's Clasp of Meditation
							i(100207, {	-- Grievous Gladiator's Cord of Accuracy
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Warlock Ensemble.",
								-- #endif
							}),
							i(100205, {	-- Grievous Gladiator's Cord of Cruelty
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Mage Ensemble.",
								-- #endif
							}),
							i(100209, {	-- Grievous Gladiator's Cord of Meditation
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Priest Ensemble.",
								-- #endif
							}),
							i(100393),	-- Grievous Gladiator's Girdle of Accuracy
							i(100395),	-- Grievous Gladiator's Girdle of Prowess
							i(100310),	-- Grievous Gladiator's Links of Accuracy
							i(100308),	-- Grievous Gladiator's Links of Cruelty
							i(100425),	-- Grievous Gladiator's Waistband of Accuracy
							i(100338),	-- Grievous Gladiator's Waistband of Cruelty
							i(100468),	-- Grievous Gladiator's Waistguard of Cruelty
							i(100440),	-- Grievous Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							i(100340),	-- Grievous Gladiator's Boots of Alacrity
							i(100427),	-- Grievous Gladiator's Boots of Cruelty
							i(100282),	-- Grievous Gladiator's Footguards of Alacrity (Leather)
							i(100442),	-- Grievous Gladiator's Footguards of Alacrity (Mail)
							i(100265),	-- Grievous Gladiator's Footguards of Meditation (Leather)
							i(100444),	-- Grievous Gladiator's Footguards of Meditation (Mail)
							i(100377),	-- Grievous Gladiator's Greaves of Alacrity
							i(100379),	-- Grievous Gladiator's Greaves of Meditation
							i(100314),	-- Grievous Gladiator's Sabatons of Alacrity
							i(100312),	-- Grievous Gladiator's Sabatons of Cruelty
							i(100213, {	-- Grievous Gladiator's Treads of Alacrity
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Warlock Ensemble.",
								-- #endif
							}),
							i(100211, {	-- Grievous Gladiator's Treads of Cruelty
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Mage Ensemble.",
								-- #endif
							}),
							i(100215, {	-- Grievous Gladiator's Treads of Meditation
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Priest Ensemble.",
								-- #endif
							}),
							i(100399),	-- Grievous Gladiator's Warboots of Alacrity
							i(100397),	-- Grievous Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100504),	-- Grievous Gladiator's Choker of Accuracy
							i(100503),	-- Grievous Gladiator's Choker of Proficiency
							i(100198),	-- Grievous Gladiator's Necklace of Proficiency
							i(100199),	-- Grievous Gladiator's Necklace of Prowess
							i(100232),	-- Grievous Gladiator's Pendant of Alacrity
							i(100231),	-- Grievous Gladiator's Pendant of Cruelty
							i(100233),	-- Grievous Gladiator's Pendant of Meditation
						})),
						filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100235),	-- Grievous Gladiator's Band of Accuracy
							i(100234),	-- Grievous Gladiator's Band of Cruelty
							i(100236),	-- Grievous Gladiator's Band of Meditation
							i(100202),	-- Grievous Gladiator's Ring of Accuracy
							i(100201),	-- Grievous Gladiator's Ring of Cruelty
							i(100507),	-- Grievous Gladiator's Signet of Accuracy
							i(100506),	-- Grievous Gladiator's Signet of Cruelty
						})),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100195),	-- Grievous Gladiator's Badge of Conquest
							i(100490),	-- Grievous Gladiator's Badge of Dominance
							i(100500),	-- Grievous Gladiator's Badge of Victory
							i(100305),	-- Grievous Gladiator's Emblem of Cruelty
							i(100307),	-- Grievous Gladiator's Emblem of Meditation
							i(100306),	-- Grievous Gladiator's Emblem of Tenacity
							i(100200),	-- Grievous Gladiator's Insignia of Conquest
							i(100491),	-- Grievous Gladiator's Insignia of Dominance
							i(100505),	-- Grievous Gladiator's Insignia of Victory
							i(100616),	-- Grievous Gladiator's Medallion of Cruelty (A)
							i(100618),	-- Grievous Gladiator's Medallion of Meditation (A)
							i(100591),	-- Grievous Gladiator's Medallion of Tenacity (A)
						})),
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					n(PVP_HONOR, {
						n(WEAPONS, {
							moh(2, i(100171)),	-- Tyrannical Gladiator's Barrier
							moh(5, i(99974)),	-- Tyrannical Gladiator's Battle Staff
							moh(5, i(99983)),	-- Tyrannical Gladiator's Bonecracker
							moh(5, i(99973)),	-- Tyrannical Gladiator's Cleaver
							moh(5, i(99984)),	-- Tyrannical Gladiator's Decapitator
							moh(2, i(100172)),	-- Tyrannical Gladiator's Endgame
							moh(5, i(99981)),	-- Tyrannical Gladiator's Energy Staff
							moh(5, i(99963)),	-- Tyrannical Gladiator's Gavel
							moh(5, i(99972)),	-- Tyrannical Gladiator's Greatsword
							moh(5, i(99978)),	-- Tyrannical Gladiator's Hacker
							moh(5, i(99987)),	-- Tyrannical Gladiator's Heavy Crossbow
							moh(5, i(99971)),	-- Tyrannical Gladiator's Mageblade
							moh(5, i(99965)),	-- Tyrannical Gladiator's Pummeler
							moh(5, i(99986)),	-- Tyrannical Gladiator's Quickblade
							moh(2, i(100168)),	-- Tyrannical Gladiator's Redoubt
							moh(5, i(99982)),	-- Tyrannical Gladiator's Render
							moh(2, i(100169)),	-- Tyrannical Gladiator's Reprieve
							moh(5, i(99977)),	-- Tyrannical Gladiator's Ripper
							moh(5, i(99976)),	-- Tyrannical Gladiator's Shanker
							moh(2, i(100170)),	-- Tyrannical Gladiator's Shield Wall
							moh(5, i(99979)),	-- Tyrannical Gladiator's Slicer
							moh(5, i(99967)),	-- Tyrannical Gladiator's Spellblade
							moh(5, i(99968)),	-- Tyrannical Gladiator's Staff
						}),
						cl(DEATHKNIGHT, {
							moh(3, i(100062)),	-- Tyrannical Gladiator's Dreadplate Chestpiece
							moh(2, i(100034)),	-- Tyrannical Gladiator's Dreadplate Gauntlets
							moh(3, i(100099)),	-- Tyrannical Gladiator's Dreadplate Helm
							moh(3, i(100035)),	-- Tyrannical Gladiator's Dreadplate Legguards
							moh(2, i(100036)),	-- Tyrannical Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(2, i(100125)),	-- Tyrannical Gladiator's Dragonhide Gloves
							moh(3, i(100037)),	-- Tyrannical Gladiator's Dragonhide Helm
							moh(3, i(100038)),	-- Tyrannical Gladiator's Dragonhide Legguards
							moh(3, i(100126)),	-- Tyrannical Gladiator's Dragonhide Robes
							moh(2, i(100127)),	-- Tyrannical Gladiator's Dragonhide Spaulders
							moh(2, i(100041)),	-- Tyrannical Gladiator's Kodohide Gloves
							moh(3, i(100162)),	-- Tyrannical Gladiator's Kodohide Helm
							moh(3, i(100147)),	-- Tyrannical Gladiator's Kodohide Legguards
							moh(3, i(100107)),	-- Tyrannical Gladiator's Kodohide Robes
							moh(2, i(100042)),	-- Tyrannical Gladiator's Kodohide Spaulders
							moh(2, i(100082)),	-- Tyrannical Gladiator's Wyrmhide Gloves
							moh(3, i(100017)),	-- Tyrannical Gladiator's Wyrmhide Helm
							moh(3, i(100153)),	-- Tyrannical Gladiator's Wyrmhide Legguards
							moh(3, i(99988)),	-- Tyrannical Gladiator's Wyrmhide Robes
							moh(2, i(100086)),	-- Tyrannical Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(3, i(100075)),	-- Tyrannical Gladiator's Chain Armor
							moh(2, i(100123)),	-- Tyrannical Gladiator's Chain Gauntlets
							moh(3, i(100076)),	-- Tyrannical Gladiator's Chain Helm
							moh(3, i(100054)),	-- Tyrannical Gladiator's Chain Leggings
							moh(2, i(100120)),	-- Tyrannical Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(2, i(100059)),	-- Tyrannical Gladiator's Silk Amice
							moh(3, i(100051)),	-- Tyrannical Gladiator's Silk Cowl
							moh(2, i(100121)),	-- Tyrannical Gladiator's Silk Handguards
							moh(3, i(100101)),	-- Tyrannical Gladiator's Silk Robe
							moh(3, i(100032)),	-- Tyrannical Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(2, i(100010)),	-- Tyrannical Gladiator's Copperskin Gloves
							moh(3, i(100011)),	-- Tyrannical Gladiator's Copperskin Helm
							moh(3, i(100148)),	-- Tyrannical Gladiator's Copperskin Legguards
							moh(2, i(100163)),	-- Tyrannical Gladiator's Copperskin Spaulders
							moh(3, i(100149)),	-- Tyrannical Gladiator's Copperskin Tunic
							moh(2, i(100061)),	-- Tyrannical Gladiator's Ironskin Gloves
							moh(3, i(100098)),	-- Tyrannical Gladiator's Ironskin Helm
							moh(3, i(100040)),	-- Tyrannical Gladiator's Ironskin Legguards
							moh(2, i(100009)),	-- Tyrannical Gladiator's Ironskin Spaulders
							moh(3, i(100106)),	-- Tyrannical Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(3, i(100015)),	-- Tyrannical Gladiator's Ornamented Chestguard
							moh(2, i(100108)),	-- Tyrannical Gladiator's Ornamented Gloves
							moh(3, i(100018)),	-- Tyrannical Gladiator's Ornamented Headcover
							moh(3, i(100154)),	-- Tyrannical Gladiator's Ornamented Legplates
							moh(2, i(100083)),	-- Tyrannical Gladiator's Ornamented Spaulders
							moh(3, i(100133)),	-- Tyrannical Gladiator's Scaled Chestpiece
							moh(2, i(100013)),	-- Tyrannical Gladiator's Scaled Gauntlets
							moh(3, i(100165)),	-- Tyrannical Gladiator's Scaled Helm
							moh(3, i(100166)),	-- Tyrannical Gladiator's Scaled Legguards
							moh(2, i(100130)),	-- Tyrannical Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(2, i(99989)),	-- Tyrannical Gladiator's Mooncloth Gloves
							moh(3, i(100089)),	-- Tyrannical Gladiator's Mooncloth Helm
							moh(3, i(100090)),	-- Tyrannical Gladiator's Mooncloth Leggings
							moh(2, i(100136)),	-- Tyrannical Gladiator's Mooncloth Mantle
							moh(3, i(100067)),	-- Tyrannical Gladiator's Mooncloth Robe
							moh(2, i(100093)),	-- Tyrannical Gladiator's Satin Gloves
							moh(3, i(100137)),	-- Tyrannical Gladiator's Satin Hood
							moh(3, i(99996)),	-- Tyrannical Gladiator's Satin Leggings
							moh(2, i(100055)),	-- Tyrannical Gladiator's Satin Mantle
							moh(3, i(99998)),	-- Tyrannical Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(2, i(100047)),	-- Tyrannical Gladiator's Leather Gloves
							moh(3, i(100096)),	-- Tyrannical Gladiator's Leather Helm
							moh(3, i(100116)),	-- Tyrannical Gladiator's Leather Legguards
							moh(2, i(100117)),	-- Tyrannical Gladiator's Leather Spaulders
							moh(3, i(100113)),	-- Tyrannical Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(3, i(100145)),	-- Tyrannical Gladiator's Linked Armor
							moh(2, i(100128)),	-- Tyrannical Gladiator's Linked Gauntlets
							moh(3, i(100100)),	-- Tyrannical Gladiator's Linked Helm
							moh(3, i(100164)),	-- Tyrannical Gladiator's Linked Leggings
							moh(2, i(100012)),	-- Tyrannical Gladiator's Linked Spaulders
							moh(3, i(100129)),	-- Tyrannical Gladiator's Mail Armor
							moh(2, i(100078)),	-- Tyrannical Gladiator's Mail Gauntlets
							moh(3, i(100079)),	-- Tyrannical Gladiator's Mail Helm
							moh(3, i(100167)),	-- Tyrannical Gladiator's Mail Leggings
							moh(2, i(100020)),	-- Tyrannical Gladiator's Mail Spaulders
							moh(3, i(100103)),	-- Tyrannical Gladiator's Ringmail Armor
							moh(2, i(100160)),	-- Tyrannical Gladiator's Ringmail Gauntlets
							moh(3, i(100104)),	-- Tyrannical Gladiator's Ringmail Helm
							moh(3, i(100105)),	-- Tyrannical Gladiator's Ringmail Leggings
							moh(2, i(100039)),	-- Tyrannical Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(2, i(100068)),	-- Tyrannical Gladiator's Felweave Amice
							moh(3, i(100112)),	-- Tyrannical Gladiator's Felweave Cowl
							moh(2, i(100111)),	-- Tyrannical Gladiator's Felweave Handguards
							moh(3, i(100045)),	-- Tyrannical Gladiator's Felweave Raiment
							moh(3, i(100141)),	-- Tyrannical Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(3, i(100114)),	-- Tyrannical Gladiator's Plate Chestpiece
							moh(2, i(99992)),	-- Tyrannical Gladiator's Plate Gauntlets
							moh(3, i(99993)),	-- Tyrannical Gladiator's Plate Helm
							moh(3, i(100118)),	-- Tyrannical Gladiator's Plate Legguards
							moh(2, i(100071)),	-- Tyrannical Gladiator's Plate Shoulders
						}),
						n(BACK, {
							moh(1, i(100091)),	-- Tyrannical Gladiator's Cape of Cruelty
							moh(1, i(100025)),	-- Tyrannical Gladiator's Cape of Prowess
							moh(1, i(100155)),	-- Tyrannical Gladiator's Cloak of Alacrity
							moh(1, i(100156)),	-- Tyrannical Gladiator's Cloak of Prowess
							moh(1, i(100053)),	-- Tyrannical Gladiator's Drape of Cruelty
							moh(1, i(100142)),	-- Tyrannical Gladiator's Drape of Meditation
							moh(1, i(100158)),	-- Tyrannical Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							moh(1, i(100004)),	-- Tyrannical Gladiator's Armbands of Meditation
							moh(1, i(100049)),	-- Tyrannical Gladiator's Armbands of Prowess
							moh(1, i(100157)),	-- Tyrannical Gladiator's Armplates of Alacrity
							moh(1, i(100088)),	-- Tyrannical Gladiator's Armplates of Proficiency
							moh(1, i(100097)),	-- Tyrannical Gladiator's Armwraps of Accuracy
							moh(1, i(100140)),	-- Tyrannical Gladiator's Armwraps of Alacrity
							moh(1, i(100077)),	-- Tyrannical Gladiator's Bindings of Meditation
							moh(1, i(100109)),	-- Tyrannical Gladiator's Bindings of Prowess
							moh(1, i(100151)),	-- Tyrannical Gladiator's Bracers of Meditation
							moh(1, i(100081)),	-- Tyrannical Gladiator's Bracers of Prowess
							moh(1, i(100073)),	-- Tyrannical Gladiator's Cuffs of Accuracy
							moh(1, i(100050)),	-- Tyrannical Gladiator's Cuffs of Meditation
							moh(1, i(100119)),	-- Tyrannical Gladiator's Cuffs of Prowess
							moh(1, i(100139)),	-- Tyrannical Gladiator's Wristguards of Accuracy
							moh(1, i(100074)),	-- Tyrannical Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							moh(1, i(100080)),	-- Tyrannical Gladiator's Belt of Cruelty
							moh(1, i(100161)),	-- Tyrannical Gladiator's Belt of Meditation
							moh(1, i(100150)),	-- Tyrannical Gladiator's Clasp of Cruelty
							moh(1, i(100134)),	-- Tyrannical Gladiator's Clasp of Meditation
							moh(1, i(100046)),	-- Tyrannical Gladiator's Cord of Accuracy
							moh(1, i(100070)),	-- Tyrannical Gladiator's Cord of Cruelty
							moh(1, i(100095)),	-- Tyrannical Gladiator's Cord of Meditation
							moh(1, i(100023)),	-- Tyrannical Gladiator's Girdle of Accuracy
							moh(1, i(100110)),	-- Tyrannical Gladiator's Girdle of Prowess
							moh(1, i(100028)),	-- Tyrannical Gladiator's Links of Accuracy
							moh(1, i(99991)),	-- Tyrannical Gladiator's Links of Cruelty
							moh(1, i(100094)),	-- Tyrannical Gladiator's Waistband of Accuracy
							moh(1, i(100030)),	-- Tyrannical Gladiator's Waistband of Cruelty
							moh(1, i(100063)),	-- Tyrannical Gladiator's Waistguard of Cruelty
							moh(1, i(100052)),	-- Tyrannical Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							moh(2, i(100102)),	-- Tyrannical Gladiator's Boots of Alacrity
							moh(2, i(100044)),	-- Tyrannical Gladiator's Boots of Cruelty
							moh(2, i(100014)),	-- Tyrannical Gladiator's Footguards of Alacrity (Leahter)
							moh(2, i(100048)),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
							moh(2, i(100146)),	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
							moh(2, i(100001)),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
							moh(2, i(100021)),	-- Tyrannical Gladiator's Greaves of Alacrity
							moh(2, i(100022)),	-- Tyrannical Gladiator's Greaves of Meditation
							moh(2, i(100029)),	-- Tyrannical Gladiator's Sabatons of Alacrity
							moh(2, i(100115)),	-- Tyrannical Gladiator's Sabatons of Cruelty
							moh(2, i(99994)),	-- Tyrannical Gladiator's Treads of Alacrity
							moh(2, i(100072)),	-- Tyrannical Gladiator's Treads of Cruelty
							moh(2, i(100138)),	-- Tyrannical Gladiator's Treads of Meditation
							moh(2, i(100131)),	-- Tyrannical Gladiator's Warboots of Alacrity
							moh(2, i(100084)),	-- Tyrannical Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100024),	-- Tyrannical Gladiator's Choker of Accuracy
							i(100135),	-- Tyrannical Gladiator's Choker of Proficiency
							i(100064),	-- Tyrannical Gladiator's Necklace of Proficiency
							i(100065),	-- Tyrannical Gladiator's Necklace of Prowess
							i(100143),	-- Tyrannical Gladiator's Pendant of Alacrity
							i(100159),	-- Tyrannical Gladiator's Pendant of Cruelty
							i(100122),	-- Tyrannical Gladiator's Pendant of Meditation
						})),
						filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100033),	-- Tyrannical Gladiator's Band of Accuracy
							i(100060),	-- Tyrannical Gladiator's Band of Cruelty
							i(100144),	-- Tyrannical Gladiator's Band of Meditation
							i(100069),	-- Tyrannical Gladiator's Ring of Accuracy
							i(100027),	-- Tyrannical Gladiator's Ring of Cruelty
							i(100132),	-- Tyrannical Gladiator's Signet of Accuracy
							i(100087),	-- Tyrannical Gladiator's Signet of Cruelty
						})),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100043),	-- Tyrannical Gladiator's Badge of Conquest
							i(100016),	-- Tyrannical Gladiator's Badge of Dominance
							i(100019),	-- Tyrannical Gladiator's Badge of Victory
							i(100066),	-- Tyrannical Gladiator's Emblem of Cruelty
							i(99990),	-- Tyrannical Gladiator's Emblem of Meditation
							i(100092),	-- Tyrannical Gladiator's Emblem of Tenacity
							i(100026),	-- Tyrannical Gladiator's Insignia of Conquest
							i(100152),	-- Tyrannical Gladiator's Insignia of Dominance
							i(100085),	-- Tyrannical Gladiator's Insignia of Victory
							i(100124),	-- Tyrannical Gladiator's Medallion of Cruelty (H)
							i(100006),	-- Tyrannical Gladiator's Medallion of Meditation (H)
							i(100057),	-- Tyrannical Gladiator's Medallion of Tenacity (H)
						})),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							moh(80, iensemble(144251, {	-- Arsenal: Grievous Gladiator's Weapons (H)
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100731),	-- Grievous Gladiator's Barrier
							i(100538),	-- Grievous Gladiator's Baton of Light
							i(100543),	-- Grievous Gladiator's Battle Staff
							i(100552),	-- Grievous Gladiator's Bonecracker
							i(100542),	-- Grievous Gladiator's Cleaver
							i(100553),	-- Grievous Gladiator's Decapitator
							i(100732),	-- Grievous Gladiator's Endgame
							i(100550),	-- Grievous Gladiator's Energy Staff
							i(100532),	-- Grievous Gladiator's Gavel
							i(100541),	-- Grievous Gladiator's Greatsword
							i(100547),	-- Grievous Gladiator's Hacker
							i(100533),	-- Grievous Gladiator's Longbow
							i(100540),	-- Grievous Gladiator's Mageblade
							i(100549),	-- Grievous Gladiator's Pike
							i(100534),	-- Grievous Gladiator's Pummeler
							i(100555),	-- Grievous Gladiator's Quickblade
							i(100728),	-- Grievous Gladiator's Redoubt
							i(100551),	-- Grievous Gladiator's Render
							i(100729),	-- Grievous Gladiator's Reprieve
							i(100539),	-- Grievous Gladiator's Rifle
							i(100546),	-- Grievous Gladiator's Ripper
							i(100545),	-- Grievous Gladiator's Shanker
							i(100730),	-- Grievous Gladiator's Shield Wall
							i(100548),	-- Grievous Gladiator's Slicer
						})),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138662, {	-- Ensemble: Grievous Gladiator's Dreadplate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100622),	-- Grievous Gladiator's Dreadplate Chestpiece
							i(100594),	-- Grievous Gladiator's Dreadplate Gauntlets
							i(100659),	-- Grievous Gladiator's Dreadplate Helm
							i(100595),	-- Grievous Gladiator's Dreadplate Legguards
							i(100596),	-- Grievous Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138670, {	-- Ensemble: Grievous Gladiator's Dragonhide Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100685),	-- Grievous Gladiator's Dragonhide Gloves
							i(100597),	-- Grievous Gladiator's Dragonhide Helm
							i(100598),	-- Grievous Gladiator's Dragonhide Legguards
							i(100686),	-- Grievous Gladiator's Dragonhide Robes
							i(100687),	-- Grievous Gladiator's Dragonhide Spaulders
							i(100601),	-- Grievous Gladiator's Kodohide Gloves
							i(100722),	-- Grievous Gladiator's Kodohide Helm
							i(100707),	-- Grievous Gladiator's Kodohide Legguards
							i(100667),	-- Grievous Gladiator's Kodohide Robes
							i(100602),	-- Grievous Gladiator's Kodohide Spaulders
							i(100642),	-- Grievous Gladiator's Wyrmhide Gloves
							i(100577),	-- Grievous Gladiator's Wyrmhide Helm
							i(100713),	-- Grievous Gladiator's Wyrmhide Legguards
							i(100557),	-- Grievous Gladiator's Wyrmhide Robes
							i(100646),	-- Grievous Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138668, {	-- Ensemble: Grievous Gladiator's Chain Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100635),	-- Grievous Gladiator's Chain Armor
							i(100683),	-- Grievous Gladiator's Chain Gauntlets
							i(100636),	-- Grievous Gladiator's Chain Helm
							i(100614),	-- Grievous Gladiator's Chain Leggings
							i(100680),	-- Grievous Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138676, {	-- Ensemble: Grievous Gladiator's Silk Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100619),	-- Grievous Gladiator's Silk Amice
							i(100611),	-- Grievous Gladiator's Silk Cowl
							i(100681),	-- Grievous Gladiator's Silk Handguards
							i(100661),	-- Grievous Gladiator's Silk Robe
							i(100592),	-- Grievous Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(12, iensemble(138672, {	-- Ensemble: Grievous Gladiator's Ironskin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100570),	-- Grievous Gladiator's Copperskin Gloves
							i(100571),	-- Grievous Gladiator's Copperskin Helm
							i(100708),	-- Grievous Gladiator's Copperskin Legguards
							i(100723),	-- Grievous Gladiator's Copperskin Spaulders
							i(100709),	-- Grievous Gladiator's Copperskin Tunic
							i(100621),	-- Grievous Gladiator's Ironskin Gloves
							i(100658),	-- Grievous Gladiator's Ironskin Helm
							i(100600),	-- Grievous Gladiator's Ironskin Legguards
							i(100569),	-- Grievous Gladiator's Ironskin Spaulders
							i(100666),	-- Grievous Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138664, {	-- Ensemble: Grievous Gladiator's Scaled Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100575),	-- Grievous Gladiator's Ornamented Chestguard
							i(100668),	-- Grievous Gladiator's Ornamented Gloves
							i(100578),	-- Grievous Gladiator's Ornamented Headcover
							i(100714),	-- Grievous Gladiator's Ornamented Legplates
							i(100643),	-- Grievous Gladiator's Ornamented Spaulders
							i(100693),	-- Grievous Gladiator's Scaled Chestpiece
							i(100573),	-- Grievous Gladiator's Scaled Gauntlets
							i(100725),	-- Grievous Gladiator's Scaled Helm
							i(100726),	-- Grievous Gladiator's Scaled Legguards
							i(100690),	-- Grievous Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138678, {	-- Ensemble: Grievous Gladiator's Satin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100558),	-- Grievous Gladiator's Mooncloth Gloves
							i(100649),	-- Grievous Gladiator's Mooncloth Helm
							i(100650),	-- Grievous Gladiator's Mooncloth Leggings
							i(100696),	-- Grievous Gladiator's Mooncloth Mantle
							i(100627),	-- Grievous Gladiator's Mooncloth Robe
							i(100653),	-- Grievous Gladiator's Satin Gloves
							i(100697),	-- Grievous Gladiator's Satin Hood
							i(100564),	-- Grievous Gladiator's Satin Leggings
							i(100615),	-- Grievous Gladiator's Satin Mantle
							i(100565),	-- Grievous Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(12, iensemble(138674, {	-- Ensemble: Grievous Gladiator's Leather Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100607),	-- Grievous Gladiator's Leather Gloves
							i(100656),	-- Grievous Gladiator's Leather Helm
							i(100676),	-- Grievous Gladiator's Leather Legguards
							i(100677),	-- Grievous Gladiator's Leather Spaulders
							i(100673),	-- Grievous Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138666, {	-- Ensemble: Grievous Gladiator's Ringmail Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100705),	-- Grievous Gladiator's Linked Armor
							i(100688),	-- Grievous Gladiator's Linked Gauntlets
							i(100660),	-- Grievous Gladiator's Linked Helm
							i(100724),	-- Grievous Gladiator's Linked Leggings
							i(100572),	-- Grievous Gladiator's Linked Spaulders
							i(100689),	-- Grievous Gladiator's Mail Armor
							i(100638),	-- Grievous Gladiator's Mail Gauntlets
							i(100639),	-- Grievous Gladiator's Mail Helm
							i(100727),	-- Grievous Gladiator's Mail Leggings
							i(100580),	-- Grievous Gladiator's Mail Spaulders
							i(100663),	-- Grievous Gladiator's Ringmail Armor
							i(100720),	-- Grievous Gladiator's Ringmail Gauntlets
							i(100664),	-- Grievous Gladiator's Ringmail Helm
							i(100665),	-- Grievous Gladiator's Ringmail Leggings
							i(100599),	-- Grievous Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(143826, {	-- Ensemble: Grievous Gladiator's Felweave Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100628),	-- Grievous Gladiator's Felweave Amice
							i(100672),	-- Grievous Gladiator's Felweave Cowl
							i(100671),	-- Grievous Gladiator's Felweave Handguards
							i(100605),	-- Grievous Gladiator's Felweave Raiment
							i(100701),	-- Grievous Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138660, {	-- Ensemble: Grievous Gladiator's Plate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							i(100674),	-- Grievous Gladiator's Plate Chestpiece
							i(100561),	-- Grievous Gladiator's Plate Gauntlets
							i(100562),	-- Grievous Gladiator's Plate Helm
							i(100678),	-- Grievous Gladiator's Plate Legguards
							i(100631),	-- Grievous Gladiator's Plate Shoulders
						}),
						n(BACK, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100651),	-- Grievous Gladiator's Cape of Cruelty
							i(100585),	-- Grievous Gladiator's Cape of Prowess
							i(100715),	-- Grievous Gladiator's Cloak of Alacrity
							i(100716),	-- Grievous Gladiator's Cloak of Prowess
							i(100613),	-- Grievous Gladiator's Drape of Cruelty
							i(100702),	-- Grievous Gladiator's Drape of Meditation
							i(100718),	-- Grievous Gladiator's Drape of Prowess
						})),
						n(WRIST, {
							i(100567),	-- Grievous Gladiator's Armbands of Meditation
							i(100609),	-- Grievous Gladiator's Armbands of Prowess
							i(100717),	-- Grievous Gladiator's Armplates of Alacrity
							i(100648),	-- Grievous Gladiator's Armplates of Proficiency
							i(100657),	-- Grievous Gladiator's Armwraps of Accuracy
							i(100700),	-- Grievous Gladiator's Armwraps of Alacrity
							i(100637),	-- Grievous Gladiator's Bindings of Meditation
							i(100669),	-- Grievous Gladiator's Bindings of Prowess
							i(100711),	-- Grievous Gladiator's Bracers of Meditation
							i(100641),	-- Grievous Gladiator's Bracers of Prowess
							i(100633),	-- Grievous Gladiator's Cuffs of Accuracy
							i(100610),	-- Grievous Gladiator's Cuffs of Meditation
							i(100679),	-- Grievous Gladiator's Cuffs of Prowess
							i(100699),	-- Grievous Gladiator's Wristguards of Accuracy
							i(100634),	-- Grievous Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							i(100640),	-- Grievous Gladiator's Belt of Cruelty
							i(100721),	-- Grievous Gladiator's Belt of Meditation
							i(100710),	-- Grievous Gladiator's Clasp of Cruelty
							i(100694),	-- Grievous Gladiator's Clasp of Meditation
							i(100606, {	-- Grievous Gladiator's Cord of Accuracy
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Warlock Ensemble.",
								-- #endif
							}),
							i(100630, {	-- Grievous Gladiator's Cord of Cruelty
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Mage Ensemble.",
								-- #endif
							}),
							i(100655, {	-- Grievous Gladiator's Cord of Meditation
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Priest Ensemble.",
								-- #endif
							}),
							i(100583),	-- Grievous Gladiator's Girdle of Accuracy
							i(100670),	-- Grievous Gladiator's Girdle of Prowess
							i(100588),	-- Grievous Gladiator's Links of Accuracy
							i(100560),	-- Grievous Gladiator's Links of Cruelty
							i(100654),	-- Grievous Gladiator's Waistband of Accuracy
							i(100590),	-- Grievous Gladiator's Waistband of Cruelty
							i(100623),	-- Grievous Gladiator's Waistguard of Cruelty
							i(100612),	-- Grievous Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							i(100662),	-- Grievous Gladiator's Boots of Alacrity
							i(100604),	-- Grievous Gladiator's Boots of Cruelty
							i(100574),	-- Grievous Gladiator's Footguards of Alacrity (Leather)
							i(100608),	-- Grievous Gladiator's Footguards of Alacrity (Mail)
							i(100706),	-- Grievous Gladiator's Footguards of Meditation (Leather)
							i(100566),	-- Grievous Gladiator's Footguards of Meditation (Mail)
							i(100581),	-- Grievous Gladiator's Greaves of Alacrity
							i(100582),	-- Grievous Gladiator's Greaves of Meditation
							i(100589),	-- Grievous Gladiator's Sabatons of Alacrity
							i(100675),	-- Grievous Gladiator's Sabatons of Cruelty
							i(100563, {	-- Grievous Gladiator's Treads of Alacrity
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Warlock Ensemble.",
								-- #endif
							}),
							i(100632, {	-- Grievous Gladiator's Treads of Cruelty
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Mage Ensemble.",
								-- #endif
							}),
							i(100698, {	-- Grievous Gladiator's Treads of Meditation
								-- #if AFTER 7.1.5
								["description"] = "This item is only obtainable via the Grievous Gladiator Priest Ensemble.",
								-- #endif
							}),
							i(100691),	-- Grievous Gladiator's Warboots of Alacrity
							i(100644),	-- Grievous Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100584),	-- Grievous Gladiator's Choker of Accuracy
							i(100695),	-- Grievous Gladiator's Choker of Proficiency
							i(100624),	-- Grievous Gladiator's Necklace of Proficiency
							i(100625),	-- Grievous Gladiator's Necklace of Prowess
							i(100703),	-- Grievous Gladiator's Pendant of Alacrity
							i(100719),	-- Grievous Gladiator's Pendant of Cruelty
							i(100682),	-- Grievous Gladiator's Pendant of Meditation
						})),
						filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100593),	-- Grievous Gladiator's Band of Accuracy
							i(100620),	-- Grievous Gladiator's Band of Cruelty
							i(100704),	-- Grievous Gladiator's Band of Meditation
							i(100629),	-- Grievous Gladiator's Ring of Accuracy
							i(100587),	-- Grievous Gladiator's Ring of Cruelty
							i(100692),	-- Grievous Gladiator's Signet of Accuracy
							i(100647),	-- Grievous Gladiator's Signet of Cruelty
						})),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
							i(100603),	-- Grievous Gladiator's Badge of Conquest
							i(100576),	-- Grievous Gladiator's Badge of Dominance
							i(100579),	-- Grievous Gladiator's Badge of Victory
							i(100626),	-- Grievous Gladiator's Emblem of Cruelty
							i(100559),	-- Grievous Gladiator's Emblem of Meditation
							i(100652),	-- Grievous Gladiator's Emblem of Tenacity
							i(100586),	-- Grievous Gladiator's Insignia of Conquest
							i(100712),	-- Grievous Gladiator's Insignia of Dominance
							i(100645),	-- Grievous Gladiator's Insignia of Victory
							i(100684),	-- Grievous Gladiator's Medallion of Cruelty (H)
							i(100568),	-- Grievous Gladiator's Medallion of Meditation (H)
							i(100617),	-- Grievous Gladiator's Medallion of Tenacity (H)
						})),
					}),
				},
			}),
			n(PVP_ELITE, bubbleDown({ ["timeline"] = { ADDED_5_4_0, REMOVED_5_4_7 }, }, {
				-- Original Sources are:
				-- n00000 Unknown in Valley of the Four Winds (Alliance)
				-- n00000 Unknown in Area Kun-Lai Summit (Horde)
				n(WEAPONS, {
					i(100226),	-- Grievous Gladiator's Barrier
					i(100493),	-- Grievous Gladiator's Baton of Light
					i(100230),	-- Grievous Gladiator's Battle Staff
					i(100497),	-- Grievous Gladiator's Bonecracker
					i(100190),	-- Grievous Gladiator's Cleaver
					i(100184),	-- Grievous Gladiator's Decapitator
					i(100224),	-- Grievous Gladiator's Endgame
					i(100304),	-- Grievous Gladiator's Energy Staff
					i(100300),	-- Grievous Gladiator's Gavel
					i(100188),	-- Grievous Gladiator's Greatsword
					i(100495),	-- Grievous Gladiator's Hacker
					i(100204),	-- Grievous Gladiator's Longbow
					i(100489),	-- Grievous Gladiator's Mageblade
					i(100404),	-- Grievous Gladiator's Pike
					i(100192),	-- Grievous Gladiator's Pummeler
					i(100194),	-- Grievous Gladiator's Quickblade
					i(100302),	-- Grievous Gladiator's Redoubt
					i(100487),	-- Grievous Gladiator's Render
					i(100238),	-- Grievous Gladiator's Reprieve
					i(100298),	-- Grievous Gladiator's Rifle
					i(100483),	-- Grievous Gladiator's Ripper
					i(100481),	-- Grievous Gladiator's Shanker
					i(100509),	-- Grievous Gladiator's Shield Wall
					i(100499),	-- Grievous Gladiator's Slicer
					i(100228),	-- Grievous Gladiator's Spellblade
					i(100240),	-- Grievous Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(100244),	-- Grievous Gladiator's Dreadplate Chestpiece
					i(100246),	-- Grievous Gladiator's Dreadplate Gauntlets
					i(100248),	-- Grievous Gladiator's Dreadplate Helm
					i(100250),	-- Grievous Gladiator's Dreadplate Legguards
					i(100252),	-- Grievous Gladiator's Dreadplate Shoulders
					i(100394),	-- Grievous Gladiator's Dreadplate Girdle
					i(100400),	-- Grievous Gladiator's Dreadplate Warboots
				}),
				cl(DRUID, {
					i(100254),	-- Grievous Gladiator's Dragonhide Gloves
					i(100256),	-- Grievous Gladiator's Dragonhide Helm
					i(100258),	-- Grievous Gladiator's Dragonhide Legguards
					i(100260),	-- Grievous Gladiator's Dragonhide Robes
					i(100262),	-- Grievous Gladiator's Dragonhide Spaulders
					i(100269),	-- Grievous Gladiator's Kodohide Gloves
					i(100271),	-- Grievous Gladiator's Kodohide Helm
					i(100273),	-- Grievous Gladiator's Kodohide Legguards
					i(100275),	-- Grievous Gladiator's Kodohide Robes
					i(100277),	-- Grievous Gladiator's Kodohide Spaulders
					i(100286),	-- Grievous Gladiator's Wyrmhide Gloves
					i(100288),	-- Grievous Gladiator's Wyrmhide Helm
					i(100290),	-- Grievous Gladiator's Wyrmhide Legguards
					i(100292),	-- Grievous Gladiator's Wyrmhide Robes
					i(100294),	-- Grievous Gladiator's Wyrmhide Spaulders
					i(102143),	-- Grievous Gladiator's Dragonhide Belt
					i(100264),	-- Grievous Gladiator's Kodohide Belt
					i(100281),	-- Grievous Gladiator's Wyrmhide Belt
					i(102142),	-- Grievous Gladiator's Dragonhide Footguards
					i(100266),	-- Grievous Gladiator's Kodohide Footguards
					i(100283),	-- Grievous Gladiator's Wyrmhide Footguards
				}),
				cl(HUNTER, {
					i(100319),	-- Grievous Gladiator's Chain Armor
					i(100321),	-- Grievous Gladiator's Chain Gauntlets
					i(100323),	-- Grievous Gladiator's Chain Helm
					i(100325),	-- Grievous Gladiator's Chain Leggings
					i(100327),	-- Grievous Gladiator's Chain Spaulders
					i(100309),	-- Grievous Gladiator's Chain Links
					i(100313),	-- Grievous Gladiator's Chain Sabatons
				}),
				cl(MAGE, {
					i(100337),	-- Grievous Gladiator's Silk Amice
					i(100331),	-- Grievous Gladiator's Silk Cowl
					i(100329),	-- Grievous Gladiator's Silk Handguards
					i(100335),	-- Grievous Gladiator's Silk Robe
					i(100333),	-- Grievous Gladiator's Silk Trousers
					i(100206),	-- Grievous Gladiator's Silk Cord
					i(100212),	-- Grievous Gladiator's Silk Treads
				}),
				cl(MONK, {
					i(100354),	-- Grievous Gladiator's Copperskin Gloves
					i(100356),	-- Grievous Gladiator's Copperskin Helm
					i(100358),	-- Grievous Gladiator's Copperskin Legguards
					i(100360),	-- Grievous Gladiator's Copperskin Spaulders
					i(100362),	-- Grievous Gladiator's Copperskin Tunic
					i(100344),	-- Grievous Gladiator's Ironskin Gloves
					i(100346),	-- Grievous Gladiator's Ironskin Helm
					i(100348),	-- Grievous Gladiator's Ironskin Legguards
					i(100350),	-- Grievous Gladiator's Ironskin Spaulders
					i(100352),	-- Grievous Gladiator's Ironskin Tunic
					i(102139),	-- Grievous Gladiator's Copperskin Waistband
					i(100339),	-- Grievous Gladiator's Ironskin Waistband
					i(102138),	-- Grievous Gladiator's Copperskin Boots
					i(100341),	-- Grievous Gladiator's Ironskin Boots
				}),
				cl(PALADIN, {
					i(100384),	-- Grievous Gladiator's Ornamented Chestguard
					i(100386),	-- Grievous Gladiator's Ornamented Gloves
					i(100388),	-- Grievous Gladiator's Ornamented Headcover
					i(100390),	-- Grievous Gladiator's Ornamented Legplates
					i(100392),	-- Grievous Gladiator's Ornamented Spaulders
					i(100364),	-- Grievous Gladiator's Scaled Chestpiece
					i(100366),	-- Grievous Gladiator's Scaled Gauntlets
					i(100368),	-- Grievous Gladiator's Scaled Helm
					i(100370),	-- Grievous Gladiator's Scaled Legguards
					i(100372),	-- Grievous Gladiator's Scaled Shoulders
					i(100376),	-- Grievous Gladiator's Ornamented Clasp
					i(100374),	-- Grievous Gladiator's Scaled Clasp
					i(100378),	-- Grievous Gladiator's Ornamented Greaves
					i(100380),	-- Grievous Gladiator's Scaled Greaves
				}),
				cl(PRIEST, {
					i(100406),	-- Grievous Gladiator's Mooncloth Gloves
					i(100408),	-- Grievous Gladiator's Mooncloth Helm
					i(100410),	-- Grievous Gladiator's Mooncloth Leggings
					i(100414),	-- Grievous Gladiator's Mooncloth Mantle
					i(100412),	-- Grievous Gladiator's Mooncloth Robe
					i(100416),	-- Grievous Gladiator's Satin Gloves
					i(100418),	-- Grievous Gladiator's Satin Hood
					i(100420),	-- Grievous Gladiator's Satin Leggings
					i(100424),	-- Grievous Gladiator's Satin Mantle
					i(100422),	-- Grievous Gladiator's Satin Robe
					i(100210),	-- Grievous Gladiator's Mooncloth Cord
					i(102141),	-- Grievous Gladiator's Satin Cord
					i(100216),	-- Grievous Gladiator's Mooncloth Treads
					i(102140),	-- Grievous Gladiator's Satin Treads
				}),
				cl(ROGUE, {
					i(100433),	-- Grievous Gladiator's Leather Gloves
					i(100435),	-- Grievous Gladiator's Leather Helm
					i(100437),	-- Grievous Gladiator's Leather Legguards
					i(100439),	-- Grievous Gladiator's Leather Spaulders
					i(100431),	-- Grievous Gladiator's Leather Tunic
					i(100426),	-- Grievous Gladiator's Leather Waistband
					i(100428),	-- Grievous Gladiator's Leather Boots
				}),
				cl(SHAMAN, {
					i(100459),	-- Grievous Gladiator's Linked Armor
					i(100461),	-- Grievous Gladiator's Linked Gauntlets
					i(100463),	-- Grievous Gladiator's Linked Helm
					i(100465),	-- Grievous Gladiator's Linked Leggings
					i(100467),	-- Grievous Gladiator's Linked Spaulders
					i(100471),	-- Grievous Gladiator's Mail Armor
					i(100473),	-- Grievous Gladiator's Mail Gauntlets
					i(100475),	-- Grievous Gladiator's Mail Helm
					i(100477),	-- Grievous Gladiator's Mail Leggings
					i(100479),	-- Grievous Gladiator's Mail Spaulders
					i(100449),	-- Grievous Gladiator's Ringmail Armor
					i(100451),	-- Grievous Gladiator's Ringmail Gauntlets
					i(100453),	-- Grievous Gladiator's Ringmail Helm
					i(100455),	-- Grievous Gladiator's Ringmail Leggings
					i(100457),	-- Grievous Gladiator's Ringmail Spaulders
					i(100311),	-- Grievous Gladiator's Linked Waistband
					i(100469),	-- Grievous Gladiator's Mail Waistguard
					i(100441),	-- Grievous Gladiator's Ringmail Waistguard
					i(100315),	-- Grievous Gladiator's Linked Sabatons
					i(100445),	-- Grievous Gladiator's Mail Footguards
					i(100443),	-- Grievous Gladiator's Ringmail Footguards
				}),
				cl(WARLOCK, {
					i(100519),	-- Grievous Gladiator's Felweave Amice
					i(100513),	-- Grievous Gladiator's Felweave Cowl
					i(100511),	-- Grievous Gladiator's Felweave Handguards
					i(100517),	-- Grievous Gladiator's Felweave Raiment
					i(100515),	-- Grievous Gladiator's Felweave Trousers
					i(100208),	-- Grievous Gladiator's Felweave Cord
					i(100214),	-- Grievous Gladiator's Felweave Treads
				}),
				cl(WARRIOR, {
					i(100521),	-- Grievous Gladiator's Plate Chestpiece
					i(100523),	-- Grievous Gladiator's Plate Gauntlets
					i(100525),	-- Grievous Gladiator's Plate Helm
					i(100527),	-- Grievous Gladiator's Plate Legguards
					i(100529),	-- Grievous Gladiator's Plate Shoulders
					i(100396),	-- Grievous Gladiator's Plate Girdle
					i(100398),	-- Grievous Gladiator's Plate Warboots
				}),
				n(BACK, {
					i(101698),	-- Grievous Gladiator's Greatcloak
				}),
				filter(TABARDS, {
					i(101697),	-- Grievous Gladiator's Tabard
				}),
			})),
		}))),
		-- Wouter NOTE: temporarily tied this to SoO phase release for MoP Classic, but this will likely be different
		n(SEASON_PRIDEFUL, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_7 } }, {
			n(ACHIEVEMENTS, {
				ach(11720, {["timeline"] = {ADDED_7_2_0}}),	-- Wear It With Pride (PvP Season 15)
			}),
			n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
				ach(8670),	-- Challenger: Mists of Pandaria Season 4/Season 15
				ach(8668, {	-- Duelist: Mists of Pandaria Season 4/Season 15
					elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
						["timeline"] = { ADDED_7_3_2 },
					})),
				}),
				ach(8667, {	-- Gladiator: Season 15 (Retail) // Gladiator: Season 15 (3v3) (Classic)
					i(104327),	-- Prideful Gladiator's Cloud Serpent
				}),
				ach(8658, {	-- Hero of the Alliance: Prideful
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(8659, {	-- Hero of the Horde: Prideful
					["races"] = HORDE_ONLY,
					["groups"] = {
						elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(8642, {	-- Prideful Combatant (Alliance) Mists of Pandaria Season 4/Season 15
					["races"] = ALLIANCE_ONLY,
				}),
				ach(8641, {	-- Prideful Combatant (Horde) Mists of Pandaria Season 4/Season 15
					["races"] = HORDE_ONLY,
				}),
				ach(8666, {	-- Prideful Gladiator (Retail) // Prideful Gladiator: Season 15 (3v3) (Classic)
					title(254),	-- Prideful Gladiator <Name>
				}),
				ach(8707, {	-- Prideful Gladiator's Cloud Serpent
					["provider"] = { "i", 104327 },	-- Prideful Gladiator's Cloud Serpent
					["filterID"] = MOUNTS,
				}),
				ach(8669),	-- Rival: Mists of Pandaria Season 4/Season 15
				-- #if ANYCLASSIC
				ach(61353, {	-- Gladiator: Season 15 (2v2)
					i(104327),	-- Prideful Gladiator's Cloud Serpent
				}),
				-- Gladiator 3v3 is above, as it exist in Retail
				ach(61361, {	-- Gladiator: Season 15 (5v5)
					i(104327),	-- Prideful Gladiator's Cloud Serpent
				}),
				ach(61357, {	-- Prideful Gladiator: Season 15 (2v2)
					title(254),	-- Prideful Gladiator <Name>
				}),
				ach(61365, {	-- Prideful Gladiator: Season 15 (5v5)
					title(254),	-- Prideful Gladiator <Name>
				}),
				ach(61418, {	-- Undisputed Gladiator: Season 15
					title(261),	-- Undisputed Gladiator <Name>
				}),
				-- #endif
			})),
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					n(PVP_HONOR, {
						n(WEAPONS, {
							moh(2, i(103167)),	-- Grievous Gladiator's Barrier
							moh(5, i(103310)),	-- Grievous Gladiator's Baton of Light
							moh(5, i(103169)),	-- Grievous Gladiator's Battle Staff
							moh(5, i(103312)),	-- Grievous Gladiator's Bonecracker
							moh(5, i(103142)),	-- Grievous Gladiator's Cleaver
							moh(5, i(103139)),	-- Grievous Gladiator's Decapitator
							moh(2, i(103166)),	-- Grievous Gladiator's Endgame
							moh(5, i(103209)),	-- Grievous Gladiator's Energy Staff
							moh(5, i(103207)),	-- Grievous Gladiator's Gavel
							moh(5, i(103141)),	-- Grievous Gladiator's Greatsword
							moh(5, i(103311)),	-- Grievous Gladiator's Hacker
							moh(5, i(103153)),	-- Grievous Gladiator's Longbow
							moh(5, i(103307)),	-- Grievous Gladiator's Mageblade
							moh(5, i(103264)),	-- Grievous Gladiator's Pike
							moh(5, i(103143)),	-- Grievous Gladiator's Pummeler
							moh(5, i(103144)),	-- Grievous Gladiator's Quickblade
							moh(2, i(103208)),	-- Grievous Gladiator's Redoubt
							moh(5, i(103306)),	-- Grievous Gladiator's Render
							moh(2, i(103176)),	-- Grievous Gladiator's Reprieve
							moh(2, i(103206)),	-- Grievous Gladiator's Rifle
							moh(5, i(103305)),	-- Grievous Gladiator's Ripper
							moh(5, i(103304)),	-- Grievous Gladiator's Shanker
							moh(2, i(103322)),	-- Grievous Gladiator's Shield Wall
							moh(5, i(103313)),	-- Grievous Gladiator's Slicer
							moh(5, i(103168)),	-- Grievous Gladiator's Spellblade
							moh(5, i(103177)),	-- Grievous Gladiator's Touch of Defeat
						}),
						cl(DEATHKNIGHT, {
							moh(3, i(103179)),	-- Grievous Gladiator's Dreadplate Chestpiece
							moh(2, i(103180)),	-- Grievous Gladiator's Dreadplate Gauntlets
							moh(3, i(103181)),	-- Grievous Gladiator's Dreadplate Helm
							moh(3, i(103182)),	-- Grievous Gladiator's Dreadplate Legguards
							moh(2, i(103183)),	-- Grievous Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(2, i(103184)),	-- Grievous Gladiator's Dragonhide Gloves
							moh(3, i(103185)),	-- Grievous Gladiator's Dragonhide Helm
							moh(3, i(103186)),	-- Grievous Gladiator's Dragonhide Legguards
							moh(3, i(103187)),	-- Grievous Gladiator's Dragonhide Robes
							moh(2, i(103188)),	-- Grievous Gladiator's Dragonhide Spaulders
							moh(2, i(103192)),	-- Grievous Gladiator's Kodohide Gloves
							moh(3, i(103193)),	-- Grievous Gladiator's Kodohide Helm
							moh(3, i(103194)),	-- Grievous Gladiator's Kodohide Legguards
							moh(3, i(103195)),	-- Grievous Gladiator's Kodohide Robes
							moh(2, i(103196)),	-- Grievous Gladiator's Kodohide Spaulders
							moh(2, i(103201)),	-- Grievous Gladiator's Wyrmhide Gloves
							moh(3, i(103202)),	-- Grievous Gladiator's Wyrmhide Helm
							moh(3, i(103203)),	-- Grievous Gladiator's Wyrmhide Legguards
							moh(3, i(103204)),	-- Grievous Gladiator's Wyrmhide Robes
							moh(2, i(103205)),	-- Grievous Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(3, i(103219)),	-- Grievous Gladiator's Chain Armor
							moh(2, i(103220)),	-- Grievous Gladiator's Chain Gauntlets
							moh(3, i(103221)),	-- Grievous Gladiator's Chain Helm
							moh(3, i(103222)),	-- Grievous Gladiator's Chain Leggings
							moh(2, i(103223)),	-- Grievous Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(2, i(103228)),	-- Grievous Gladiator's Silk Amice
							moh(3, i(103225)),	-- Grievous Gladiator's Silk Cowl
							moh(2, i(103224)),	-- Grievous Gladiator's Silk Handguards
							moh(3, i(103227)),	-- Grievous Gladiator's Silk Robe
							moh(3, i(103226)),	-- Grievous Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(2, i(103237)),	-- Grievous Gladiator's Copperskin Gloves
							moh(3, i(103238)),	-- Grievous Gladiator's Copperskin Helm
							moh(3, i(103239)),	-- Grievous Gladiator's Copperskin Legguards
							moh(2, i(103240)),	-- Grievous Gladiator's Copperskin Spaulders
							moh(3, i(103241)),	-- Grievous Gladiator's Copperskin Tunic
							moh(2, i(103232)),	-- Grievous Gladiator's Ironskin Gloves
							moh(3, i(103233)),	-- Grievous Gladiator's Ironskin Helm
							moh(3, i(103234)),	-- Grievous Gladiator's Ironskin Legguards
							moh(2, i(103235)),	-- Grievous Gladiator's Ironskin Spaulders
							moh(3, i(103236)),	-- Grievous Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(3, i(103253)),	-- Grievous Gladiator's Ornamented Chestguard
							moh(2, i(103254)),	-- Grievous Gladiator's Ornamented Gloves
							moh(3, i(103255)),	-- Grievous Gladiator's Ornamented Headcover
							moh(3, i(103256)),	-- Grievous Gladiator's Ornamented Legplates
							moh(2, i(103257)),	-- Grievous Gladiator's Ornamented Spaulders
							moh(3, i(103242)),	-- Grievous Gladiator's Scaled Chestpiece
							moh(2, i(103243)),	-- Grievous Gladiator's Scaled Gauntlets
							moh(3, i(103244)),	-- Grievous Gladiator's Scaled Helm
							moh(3, i(103245)),	-- Grievous Gladiator's Scaled Legguards
							moh(2, i(103246)),	-- Grievous Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(2, i(103265)),	-- Grievous Gladiator's Mooncloth Gloves
							moh(3, i(103266)),	-- Grievous Gladiator's Mooncloth Helm
							moh(3, i(103267)),	-- Grievous Gladiator's Mooncloth Leggings
							moh(2, i(103269)),	-- Grievous Gladiator's Mooncloth Mantle
							moh(3, i(103268)),	-- Grievous Gladiator's Mooncloth Robe
							moh(2, i(103270)),	-- Grievous Gladiator's Satin Gloves
							moh(3, i(103271)),	-- Grievous Gladiator's Satin Hood
							moh(3, i(103272)),	-- Grievous Gladiator's Satin Leggings
							moh(2, i(103274)),	-- Grievous Gladiator's Satin Mantle
							moh(3, i(103273)),	-- Grievous Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(2, i(103279)),	-- Grievous Gladiator's Leather Gloves
							moh(3, i(103280)),	-- Grievous Gladiator's Leather Helm
							moh(3, i(103281)),	-- Grievous Gladiator's Leather Legguards
							moh(2, i(103282)),	-- Grievous Gladiator's Leather Spaulders
							moh(3, i(103278)),	-- Grievous Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(3, i(103293)),	-- Grievous Gladiator's Linked Armor
							moh(2, i(103294)),	-- Grievous Gladiator's Linked Gauntlets
							moh(3, i(103295)),	-- Grievous Gladiator's Linked Helm
							moh(3, i(103296)),	-- Grievous Gladiator's Linked Leggings
							moh(2, i(103297)),	-- Grievous Gladiator's Linked Spaulders
							moh(3, i(103299)),	-- Grievous Gladiator's Mail Armor
							moh(2, i(103300)),	-- Grievous Gladiator's Mail Gauntlets
							moh(3, i(103301)),	-- Grievous Gladiator's Mail Helm
							moh(3, i(103302)),	-- Grievous Gladiator's Mail Leggings
							moh(2, i(103303)),	-- Grievous Gladiator's Mail Spaulders
							moh(3, i(103288)),	-- Grievous Gladiator's Ringmail Armor
							moh(2, i(103289)),	-- Grievous Gladiator's Ringmail Gauntlets
							moh(3, i(103290)),	-- Grievous Gladiator's Ringmail Helm
							moh(3, i(103291)),	-- Grievous Gladiator's Ringmail Leggings
							moh(2, i(103292)),	-- Grievous Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(2, i(103327)),	-- Grievous Gladiator's Felweave Amice
							moh(3, i(103324)),	-- Grievous Gladiator's Felweave Cowl
							moh(2, i(103323)),	-- Grievous Gladiator's Felweave Handguards
							moh(3, i(103326)),	-- Grievous Gladiator's Felweave Raiment
							moh(3, i(103325)),	-- Grievous Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(3, i(103328)),	-- Grievous Gladiator's Plate Chestpiece
							moh(2, i(103329)),	-- Grievous Gladiator's Plate Gauntlets
							moh(3, i(103330)),	-- Grievous Gladiator's Plate Helm
							moh(3, i(103331)),	-- Grievous Gladiator's Plate Legguards
							moh(2, i(103332)),	-- Grievous Gladiator's Plate Shoulders
						}),
						n(BACK, {
							moh(1, i(103146)),	-- Grievous Gladiator's Cape of Cruelty
							moh(1, i(103147)),	-- Grievous Gladiator's Cape of Prowess
							moh(1, i(103315)),	-- Grievous Gladiator's Cloak of Alacrity
							moh(1, i(103316)),	-- Grievous Gladiator's Cloak of Prowess
							moh(1, i(103163)),	-- Grievous Gladiator's Drape of Cruelty
							moh(1, i(103165)),	-- Grievous Gladiator's Drape of Meditation
							moh(1, i(103164)),	-- Grievous Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							moh(1, i(103287)),	-- Grievous Gladiator's Armbands of Meditation
							moh(1, i(103286)),	-- Grievous Gladiator's Armbands of Prowess
							moh(1, i(103263)),	-- Grievous Gladiator's Armplates of Alacrity
							moh(1, i(103262)),	-- Grievous Gladiator's Armplates of Proficiency
							moh(1, i(103231)),	-- Grievous Gladiator's Armwraps of Accuracy
							moh(1, i(103277)),	-- Grievous Gladiator's Armwraps of Alacrity
							moh(1, i(103191)),	-- Grievous Gladiator's Bindings of Meditation
							moh(1, i(103200)),	-- Grievous Gladiator's Bindings of Prowess
							moh(1, i(103252)),	-- Grievous Gladiator's Bracers of Meditation
							moh(1, i(103251)),	-- Grievous Gladiator's Bracers of Prowess
							moh(1, i(103160)),	-- Grievous Gladiator's Cuffs of Accuracy
							moh(1, i(103162)),	-- Grievous Gladiator's Cuffs of Meditation
							moh(1, i(103161)),	-- Grievous Gladiator's Cuffs of Prowess
							moh(1, i(100316)),	-- Grievous Gladiator's Wristguards of Accuracy
							moh(1, i(103218)),	-- Grievous Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							moh(1, i(103198)),	-- Grievous Gladiator's Belt of Cruelty
							moh(1, i(103189)),	-- Grievous Gladiator's Belt of Meditation
							moh(1, i(103247)),	-- Grievous Gladiator's Clasp of Cruelty
							moh(1, i(103248)),	-- Grievous Gladiator's Clasp of Meditation
							moh(1, i(103155)),	-- Grievous Gladiator's Cord of Accuracy
							moh(1, i(103154)),	-- Grievous Gladiator's Cord of Cruelty
							moh(1, i(103156)),	-- Grievous Gladiator's Cord of Meditation
							moh(1, i(103258)),	-- Grievous Gladiator's Girdle of Accuracy
							moh(1, i(103259)),	-- Grievous Gladiator's Girdle of Prowess
							moh(1, i(103214)),	-- Grievous Gladiator's Links of Accuracy
							moh(1, i(103213)),	-- Grievous Gladiator's Links of Cruelty
							moh(1, i(103275)),	-- Grievous Gladiator's Waistband of Accuracy
							moh(1, i(103229)),	-- Grievous Gladiator's Waistband of Cruelty
							moh(1, i(103298)),	-- Grievous Gladiator's Waistguard of Cruelty
							moh(1, i(103283)),	-- Grievous Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							moh(2, i(103230)),	-- Grievous Gladiator's Boots of Alacrity
							moh(2, i(103276)),	-- Grievous Gladiator's Boots of Cruelty
							moh(2, i(103199)),	-- Grievous Gladiator's Footguards of Alacrity (Leahter)
							moh(2, i(103284)),	-- Grievous Gladiator's Footguards of Alacrity (Mail)
							moh(2, i(103190)),	-- Grievous Gladiator's Footguards of Meditation (Leather)
							moh(2, i(103285)),	-- Grievous Gladiator's Footguards of Meditation (Mail)
							moh(2, i(103249)),	-- Grievous Gladiator's Greaves of Alacrity
							moh(2, i(103250)),	-- Grievous Gladiator's Greaves of Meditation
							moh(2, i(103216)),	-- Grievous Gladiator's Sabatons of Alacrity
							moh(2, i(103215)),	-- Grievous Gladiator's Sabatons of Cruelty
							moh(2, i(103158)),	-- Grievous Gladiator's Treads of Alacrity
							moh(2, i(103157)),	-- Grievous Gladiator's Treads of Cruelty
							moh(2, i(103159)),	-- Grievous Gladiator's Treads of Meditation
							moh(2, i(103261)),	-- Grievous Gladiator's Warboots of Alacrity
							moh(2, i(103260)),	-- Grievous Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
							i(103318),	-- Grievous Gladiator's Choker of Accuracy
							i(103317),	-- Grievous Gladiator's Choker of Proficiency
							i(103148),	-- Grievous Gladiator's Necklace of Proficiency
							i(103149),	-- Grievous Gladiator's Necklace of Prowess
							i(103171),	-- Grievous Gladiator's Pendant of Alacrity
							i(103170),	-- Grievous Gladiator's Pendant of Cruelty
							i(103172),	-- Grievous Gladiator's Pendant of Meditation
						})),
						filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
							i(103174),	-- Grievous Gladiator's Band of Accuracy
							i(103173),	-- Grievous Gladiator's Band of Cruelty
							i(103175),	-- Grievous Gladiator's Band of Meditation
							i(103152),	-- Grievous Gladiator's Ring of Accuracy
							i(103151),	-- Grievous Gladiator's Ring of Cruelty
							i(103321),	-- Grievous Gladiator's Signet of Accuracy
							i(103320),	-- Grievous Gladiator's Signet of Cruelty
						})),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
							i(103145),	-- Grievous Gladiator's Badge of Conquest
							i(103308),	-- Grievous Gladiator's Badge of Dominance
							i(103314),	-- Grievous Gladiator's Badge of Victory
							i(103210),	-- Grievous Gladiator's Emblem of Cruelty
							i(103212),	-- Grievous Gladiator's Emblem of Meditation
							i(103211),	-- Grievous Gladiator's Emblem of Tenacity
							i(103150),	-- Grievous Gladiator's Insignia of Conquest
							i(103309),	-- Grievous Gladiator's Insignia of Dominance
							i(103319),	-- Grievous Gladiator's Insignia of Victory
							i(103334),	-- Grievous Gladiator's Medallion of Cruelty (A)
							i(103335),	-- Grievous Gladiator's Medallion of Meditation (A)
							i(103333),	-- Grievous Gladiator's Medallion of Tenacity (A)
						})),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(144248, {	-- Arsenal: Prideful Gladiator's Weapons (A)
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102785)),	-- Prideful Gladiator's Barrier
							moh(5, i(102596)),	-- Prideful Gladiator's Baton of Light
							moh(5, i(102601)),	-- Prideful Gladiator's Battle Staff
							moh(5, i(102609)),	-- Prideful Gladiator's Bonecracker
							moh(5, i(102600)),	-- Prideful Gladiator's Cleaver
							moh(5, i(102610)),	-- Prideful Gladiator's Decapitator
							moh(2, i(102786)),	-- Prideful Gladiator's Endgame
							moh(5, i(102607)),	-- Prideful Gladiator's Energy Staff
							moh(5, i(102590)),	-- Prideful Gladiator's Gavel
							moh(5, i(102599)),	-- Prideful Gladiator's Greatsword
							moh(5, i(102604)),	-- Prideful Gladiator's Hacker
							moh(5, i(102591)),	-- Prideful Gladiator's Longbow
							moh(5, i(102598)),	-- Prideful Gladiator's Mageblade
							moh(5, i(102606)),	-- Prideful Gladiator's Pike
							moh(5, i(102592)),	-- Prideful Gladiator's Pummeler
							moh(5, i(102612)),	-- Prideful Gladiator's Quickblade
							moh(2, i(102782)),	-- Prideful Gladiator's Redoubt
							moh(5, i(102608)),	-- Prideful Gladiator's Render
							moh(2, i(102783)),	-- Prideful Gladiator's Reprieve
							moh(2, i(102597)),	-- Prideful Gladiator's Rifle
							moh(5, i(102603)),	-- Prideful Gladiator's Ripper
							moh(5, i(102602)),	-- Prideful Gladiator's Shanker
							moh(2, i(102784)),	-- Prideful Gladiator's Shield Wall
							moh(5, i(102605)),	-- Prideful Gladiator's Slicer
							moh(5, i(102594)),	-- Prideful Gladiator's Spellblade
							moh(5, i(102593)),	-- Prideful Gladiator's Touch of Defeat
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138639, {	-- Ensemble: Prideful Gladiator's Dreadplate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(102676)),	-- Prideful Gladiator's Dreadplate Chestpiece
							moh(2, i(102650)),	-- Prideful Gladiator's Dreadplate Gauntlets
							moh(3, i(102713)),	-- Prideful Gladiator's Dreadplate Helm
							moh(3, i(102651)),	-- Prideful Gladiator's Dreadplate Legguards
							moh(2, i(102652)),	-- Prideful Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138647, {	-- Ensemble: Prideful Gladiator's Dragonhide Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102739)),	-- Prideful Gladiator's Dragonhide Gloves
							moh(3, i(102653)),	-- Prideful Gladiator's Dragonhide Helm
							moh(3, i(102654)),	-- Prideful Gladiator's Dragonhide Legguards
							moh(3, i(102740)),	-- Prideful Gladiator's Dragonhide Robes
							moh(2, i(102741)),	-- Prideful Gladiator's Dragonhide Spaulders
							moh(2, i(102657)),	-- Prideful Gladiator's Kodohide Gloves
							moh(3, i(102776)),	-- Prideful Gladiator's Kodohide Helm
							moh(3, i(102761)),	-- Prideful Gladiator's Kodohide Legguards
							moh(3, i(102721)),	-- Prideful Gladiator's Kodohide Robes
							moh(2, i(102658)),	-- Prideful Gladiator's Kodohide Spaulders
							moh(2, i(102696)),	-- Prideful Gladiator's Wyrmhide Gloves
							moh(3, i(102634)),	-- Prideful Gladiator's Wyrmhide Helm
							moh(3, i(102767)),	-- Prideful Gladiator's Wyrmhide Legguards
							moh(3, i(102614)),	-- Prideful Gladiator's Wyrmhide Robes
							moh(2, i(102700)),	-- Prideful Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138645, {	-- Ensemble: Prideful Gladiator's Chain Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(102689)),	-- Prideful Gladiator's Chain Armor
							moh(2, i(102737)),	-- Prideful Gladiator's Chain Gauntlets
							moh(3, i(102690)),	-- Prideful Gladiator's Chain Helm
							moh(3, i(102670)),	-- Prideful Gladiator's Chain Leggings
							moh(2, i(102734)),	-- Prideful Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138653, {	-- Ensemble: Prideful Gladiator's Silk Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102673)),	-- Prideful Gladiator's Silk Amice
							moh(3, i(102667)),	-- Prideful Gladiator's Silk Cowl
							moh(2, i(102735)),	-- Prideful Gladiator's Silk Handguards
							moh(3, i(102715)),	-- Prideful Gladiator's Silk Robe
							moh(3, i(102648)),	-- Prideful Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(12, iensemble(138649, {	-- Ensemble: Prideful Gladiator's Ironskin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102627)),	-- Prideful Gladiator's Copperskin Gloves
							moh(3, i(102628)),	-- Prideful Gladiator's Copperskin Helm
							moh(3, i(102762)),	-- Prideful Gladiator's Copperskin Legguards
							moh(2, i(102777)),	-- Prideful Gladiator's Copperskin Spaulders
							moh(3, i(102763)),	-- Prideful Gladiator's Copperskin Tunic
							moh(2, i(102675)),	-- Prideful Gladiator's Ironskin Gloves
							moh(3, i(102712)),	-- Prideful Gladiator's Ironskin Helm
							moh(3, i(102656)),	-- Prideful Gladiator's Ironskin Legguards
							moh(2, i(102626)),	-- Prideful Gladiator's Ironskin Spaulders
							moh(3, i(102720)),	-- Prideful Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138641, {	-- Ensemble: Prideful Gladiator's Scaled Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(102632)),	-- Prideful Gladiator's Ornamented Chestguard
							moh(2, i(102722)),	-- Prideful Gladiator's Ornamented Gloves
							moh(3, i(102635)),	-- Prideful Gladiator's Ornamented Headcover
							moh(3, i(102768)),	-- Prideful Gladiator's Ornamented Legplates
							moh(2, i(102697)),	-- Prideful Gladiator's Ornamented Spaulders
							moh(3, i(102747)),	-- Prideful Gladiator's Scaled Chestpiece
							moh(2, i(102630)),	-- Prideful Gladiator's Scaled Gauntlets
							moh(3, i(102779)),	-- Prideful Gladiator's Scaled Helm
							moh(3, i(102780)),	-- Prideful Gladiator's Scaled Legguards
							moh(2, i(102744)),	-- Prideful Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138655, {	-- Ensemble: Prideful Gladiator's Satin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102615)),	-- Prideful Gladiator's Mooncloth Gloves
							moh(3, i(102703)),	-- Prideful Gladiator's Mooncloth Helm
							moh(3, i(102704)),	-- Prideful Gladiator's Mooncloth Leggings
							moh(2, i(102750)),	-- Prideful Gladiator's Mooncloth Mantle
							moh(3, i(102681)),	-- Prideful Gladiator's Mooncloth Robe
							moh(2, i(102707)),	-- Prideful Gladiator's Satin Gloves
							moh(3, i(102751)),	-- Prideful Gladiator's Satin Hood
							moh(3, i(102621)),	-- Prideful Gladiator's Satin Leggings
							moh(2, i(102671)),	-- Prideful Gladiator's Satin Mantle
							moh(3, i(102622)),	-- Prideful Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(12, iensemble(138651, {	-- Ensemble: Prideful Gladiator's Leather Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102727)),	-- Prideful Gladiator's Leather Gloves
							moh(3, i(102731)),	-- Prideful Gladiator's Leather Helm
							moh(3, i(102730)),	-- Prideful Gladiator's Leather Legguards
							moh(2, i(102710)),	-- Prideful Gladiator's Leather Spaulders
							moh(3, i(102663)),	-- Prideful Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138643, {	-- Ensemble: Prideful Gladiator's Ringmail Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(102759)),	-- Prideful Gladiator's Linked Armor
							moh(2, i(102742)),	-- Prideful Gladiator's Linked Gauntlets
							moh(3, i(102714)),	-- Prideful Gladiator's Linked Helm
							moh(3, i(102778)),	-- Prideful Gladiator's Linked Leggings
							moh(2, i(102629)),	-- Prideful Gladiator's Linked Spaulders
							moh(3, i(102743)),	-- Prideful Gladiator's Mail Armor
							moh(2, i(102692)),	-- Prideful Gladiator's Mail Gauntlets
							moh(3, i(102693)),	-- Prideful Gladiator's Mail Helm
							moh(3, i(102781)),	-- Prideful Gladiator's Mail Leggings
							moh(2, i(102637)),	-- Prideful Gladiator's Mail Spaulders
							moh(3, i(102717)),	-- Prideful Gladiator's Ringmail Armor
							moh(2, i(102774)),	-- Prideful Gladiator's Ringmail Gauntlets
							moh(3, i(102718)),	-- Prideful Gladiator's Ringmail Helm
							moh(3, i(102719)),	-- Prideful Gladiator's Ringmail Leggings
							moh(2, i(102655)),	-- Prideful Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138657, {	-- Ensemble: Prideful Gladiator's Felweave Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(102682)),	-- Prideful Gladiator's Felweave Amice
							moh(3, i(102726)),	-- Prideful Gladiator's Felweave Cowl
							moh(2, i(102725)),	-- Prideful Gladiator's Felweave Handguards
							moh(3, i(102661)),	-- Prideful Gladiator's Felweave Raiment
							moh(3, i(102755)),	-- Prideful Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138637, {	-- Ensemble: Prideful Gladiator's Plate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(102728)),	-- Prideful Gladiator's Plate Chestpiece
							moh(2, i(102618)),	-- Prideful Gladiator's Plate Gauntlets
							moh(3, i(102619)),	-- Prideful Gladiator's Plate Helm
							moh(3, i(102732)),	-- Prideful Gladiator's Plate Legguards
							moh(2, i(102685)),	-- Prideful Gladiator's Plate Shoulders
						}),
						n(BACK, {
							-- From Celestials/Vendor
							moh(1, i(102705)),	-- Prideful Gladiator's Cape of Cruelty
							moh(1, i(102642)),	-- Prideful Gladiator's Cape of Prowess
							moh(1, i(102769)),	-- Prideful Gladiator's Cloak of Alacrity
							moh(1, i(102770)),	-- Prideful Gladiator's Cloak of Prowess
							moh(1, i(102669)),	-- Prideful Gladiator's Drape of Cruelty
							moh(1, i(102756)),	-- Prideful Gladiator's Drape of Meditation
							moh(1, i(102772)),	-- Prideful Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							-- From Celestials/Vendor
							moh(1, i(102624)),	-- Prideful Gladiator's Armbands of Meditation
							moh(1, i(102665)),	-- Prideful Gladiator's Armbands of Prowess
							moh(1, i(102771)),	-- Prideful Gladiator's Armplates of Alacrity
							moh(1, i(102702)),	-- Prideful Gladiator's Armplates of Proficiency
							moh(1, i(102711)),	-- Prideful Gladiator's Armwraps of Accuracy
							moh(1, i(102754)),	-- Prideful Gladiator's Armwraps of Alacrity
							moh(1, i(102691)),	-- Prideful Gladiator's Bindings of Meditation
							moh(1, i(102723)),	-- Prideful Gladiator's Bindings of Prowess
							moh(1, i(102765)),	-- Prideful Gladiator's Bracers of Meditation
							moh(1, i(102695)),	-- Prideful Gladiator's Bracers of Prowess
							moh(1, i(102687)),	-- Prideful Gladiator's Cuffs of Accuracy
							moh(1, i(102666)),	-- Prideful Gladiator's Cuffs of Meditation
							moh(1, i(102733)),	-- Prideful Gladiator's Cuffs of Prowess
							moh(1, i(102753)),	-- Prideful Gladiator's Wristguards of Accuracy
							moh(1, i(102688)),	-- Prideful Gladiator's Wristguards of Alacrity (World Boss)
							moh(1, i(103217)),	-- Prideful Gladiator's Wristguards of Alacrity (Ensemble Diff Version)
						}),
						n(WAIST, {
							-- From Celestials/Vendor
							moh(1, i(102694)),	-- Prideful Gladiator's Belt of Cruelty
							moh(1, i(102775)),	-- Prideful Gladiator's Belt of Meditation
							moh(1, i(102764)),	-- Prideful Gladiator's Clasp of Cruelty
							moh(1, i(102748)),	-- Prideful Gladiator's Clasp of Meditation
							moh(1, i(102662)),	-- Prideful Gladiator's Cord of Accuracy
							moh(1, i(102684)),	-- Prideful Gladiator's Cord of Cruelty
							moh(1, i(102709)),	-- Prideful Gladiator's Cord of Meditation
							moh(1, i(102640)),	-- Prideful Gladiator's Girdle of Accuracy
							moh(1, i(102724)),	-- Prideful Gladiator's Girdle of Prowess
							moh(1, i(102645)),	-- Prideful Gladiator's Links of Accuracy
							moh(1, i(102617)),	-- Prideful Gladiator's Links of Cruelty
							moh(1, i(102708)),	-- Prideful Gladiator's Waistband of Accuracy
							moh(1, i(102647)),	-- Prideful Gladiator's Waistband of Cruelty
							moh(1, i(102677)),	-- Prideful Gladiator's Waistguard of Cruelty
							moh(1, i(102668)),	-- Prideful Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							-- From Celestials/Vendor
							moh(2, i(102716)),	-- Prideful Gladiator's Boots of Alacrity
							moh(2, i(102660)),	-- Prideful Gladiator's Boots of Cruelty
							moh(2, i(102631)),	-- Prideful Gladiator's Footguards of Alacrity (Leahter)
							moh(2, i(102664)),	-- Prideful Gladiator's Footguards of Alacrity (Mail)
							moh(2, i(102760)),	-- Prideful Gladiator's Footguards of Meditation (Leather)
							moh(2, i(102623)),	-- Prideful Gladiator's Footguards of Meditation (Mail)
							moh(2, i(102638)),	-- Prideful Gladiator's Greaves of Alacrity
							moh(2, i(102639)),	-- Prideful Gladiator's Greaves of Meditation
							moh(2, i(102646)),	-- Prideful Gladiator's Sabatons of Alacrity
							moh(2, i(102729)),	-- Prideful Gladiator's Sabatons of Cruelty
							moh(2, i(102620)),	-- Prideful Gladiator's Treads of Alacrity
							moh(2, i(102686)),	-- Prideful Gladiator's Treads of Cruelty
							moh(2, i(102752)),	-- Prideful Gladiator's Treads of Meditation
							moh(2, i(102745)),	-- Prideful Gladiator's Warboots of Alacrity
							moh(2, i(102698)),	-- Prideful Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, {
							-- From Celestials
							i(102641),	-- Prideful Gladiator's Choker of Accuracy
							i(102749),	-- Prideful Gladiator's Choker of Proficiency
							i(102678),	-- Prideful Gladiator's Necklace of Proficiency
							i(102679),	-- Prideful Gladiator's Necklace of Prowess
							i(102757),	-- Prideful Gladiator's Pendant of Alacrity
							i(102773),	-- Prideful Gladiator's Pendant of Cruelty
							i(102736),	-- Prideful Gladiator's Pendant of Meditation
						}),
						filter(FINGER_F, {
							-- From Celestials
							i(102649),	-- Prideful Gladiator's Band of Accuracy
							i(102674),	-- Prideful Gladiator's Band of Cruelty
							i(102758),	-- Prideful Gladiator's Band of Meditation
							i(102683),	-- Prideful Gladiator's Ring of Accuracy
							i(102644),	-- Prideful Gladiator's Ring of Cruelty
							i(102746),	-- Prideful Gladiator's Signet of Accuracy
							i(102701),	-- Prideful Gladiator's Signet of Cruelty
						}),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 } }, {
							i(102659),	-- Prideful Gladiator's Badge of Conquest
							i(102633),	-- Prideful Gladiator's Badge of Dominance
							i(102636),	-- Prideful Gladiator's Badge of Victory
							i(102680),	-- Prideful Gladiator's Emblem of Cruelty
							i(102616),	-- Prideful Gladiator's Emblem of Meditation
							i(102706),	-- Prideful Gladiator's Emblem of Tenacity
							i(102643),	-- Prideful Gladiator's Insignia of Conquest
							i(102766),	-- Prideful Gladiator's Insignia of Dominance
							i(102699),	-- Prideful Gladiator's Insignia of Victory
							i(102738),	-- Prideful Gladiator's Medallion of Cruelty (A)
							i(102625),	-- Prideful Gladiator's Medallion of Meditation (A)
							i(102672),	-- Prideful Gladiator's Medallion of Tenacity (A)
						})),
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					n(PVP_HONOR, {
						n(WEAPONS, {
							moh(2, i(102982)),	-- Grievous Gladiator's Barrier
							moh(5, i(102793)),	-- Grievous Gladiator's Baton of Light
							moh(5, i(102798)),	-- Grievous Gladiator's Battle Staff
							moh(5, i(102806)),	-- Grievous Gladiator's Bonecracker
							moh(5, i(102797)),	-- Grievous Gladiator's Cleaver
							moh(5, i(102807)),	-- Grievous Gladiator's Decapitator
							moh(2, i(102983)),	-- Grievous Gladiator's Endgame
							moh(5, i(102804)),	-- Grievous Gladiator's Energy Staff
							moh(5, i(102787)),	-- Grievous Gladiator's Gavel
							moh(5, i(102796)),	-- Grievous Gladiator's Greatsword
							moh(5, i(102801)),	-- Grievous Gladiator's Hacker
							moh(5, i(102788)),	-- Grievous Gladiator's Longbow
							moh(5, i(102795)),	-- Grievous Gladiator's Mageblade
							moh(5, i(102803)),	-- Grievous Gladiator's Pike
							moh(5, i(102789)),	-- Grievous Gladiator's Pummeler
							moh(5, i(102809)),	-- Grievous Gladiator's Quickblade
							moh(2, i(102979)),	-- Grievous Gladiator's Redoubt
							moh(5, i(102805)),	-- Grievous Gladiator's Render
							moh(2, i(102980)),	-- Grievous Gladiator's Reprieve
							moh(2, i(102794)),	-- Grievous Gladiator's Rifle
							moh(5, i(102800)),	-- Grievous Gladiator's Ripper
							moh(5, i(102799)),	-- Grievous Gladiator's Shanker
							moh(2, i(102981)),	-- Grievous Gladiator's Shield Wall
							moh(5, i(102802)),	-- Grievous Gladiator's Slicer
							moh(5, i(102791)),	-- Grievous Gladiator's Spellblade
							moh(5, i(102790)),	-- Grievous Gladiator's Touch of Defeat
						}),
						cl(DEATHKNIGHT, {
							moh(3, i(102873)),	-- Grievous Gladiator's Dreadplate Chestpiece
							moh(2, i(102847)),	-- Grievous Gladiator's Dreadplate Gauntlets
							moh(3, i(102910)),	-- Grievous Gladiator's Dreadplate Helm
							moh(3, i(102848)),	-- Grievous Gladiator's Dreadplate Legguards
							moh(2, i(102849)),	-- Grievous Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(2, i(102936)),	-- Grievous Gladiator's Dragonhide Gloves
							moh(3, i(102850)),	-- Grievous Gladiator's Dragonhide Helm
							moh(3, i(102851)),	-- Grievous Gladiator's Dragonhide Legguards
							moh(3, i(102937)),	-- Grievous Gladiator's Dragonhide Robes
							moh(2, i(102938)),	-- Grievous Gladiator's Dragonhide Spaulders
							moh(2, i(102854)),	-- Grievous Gladiator's Kodohide Gloves
							moh(3, i(102973)),	-- Grievous Gladiator's Kodohide Helm
							moh(3, i(102958)),	-- Grievous Gladiator's Kodohide Legguards
							moh(3, i(102918)),	-- Grievous Gladiator's Kodohide Robes
							moh(2, i(102855)),	-- Grievous Gladiator's Kodohide Spaulders
							moh(2, i(102893)),	-- Grievous Gladiator's Wyrmhide Gloves
							moh(3, i(102831)),	-- Grievous Gladiator's Wyrmhide Helm
							moh(3, i(102964)),	-- Grievous Gladiator's Wyrmhide Legguards
							moh(3, i(102811)),	-- Grievous Gladiator's Wyrmhide Robes
							moh(2, i(102897)),	-- Grievous Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(3, i(102886)),	-- Grievous Gladiator's Chain Armor
							moh(2, i(102934)),	-- Grievous Gladiator's Chain Gauntlets
							moh(3, i(102887)),	-- Grievous Gladiator's Chain Helm
							moh(3, i(102867)),	-- Grievous Gladiator's Chain Leggings
							moh(2, i(102931)),	-- Grievous Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(2, i(102870)),	-- Grievous Gladiator's Silk Amice
							moh(3, i(102864)),	-- Grievous Gladiator's Silk Cowl
							moh(2, i(102932)),	-- Grievous Gladiator's Silk Handguards
							moh(3, i(102912)),	-- Grievous Gladiator's Silk Robe
							moh(3, i(102845)),	-- Grievous Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(2, i(102824)),	-- Grievous Gladiator's Copperskin Gloves
							moh(3, i(102825)),	-- Grievous Gladiator's Copperskin Helm
							moh(3, i(102959)),	-- Grievous Gladiator's Copperskin Legguards
							moh(2, i(102974)),	-- Grievous Gladiator's Copperskin Spaulders
							moh(3, i(102960)),	-- Grievous Gladiator's Copperskin Tunic
							moh(2, i(102872)),	-- Grievous Gladiator's Ironskin Gloves
							moh(3, i(102909)),	-- Grievous Gladiator's Ironskin Helm
							moh(3, i(102853)),	-- Grievous Gladiator's Ironskin Legguards
							moh(2, i(102823)),	-- Grievous Gladiator's Ironskin Spaulders
							moh(3, i(102917)),	-- Grievous Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(3, i(102829)),	-- Grievous Gladiator's Ornamented Chestguard
							moh(2, i(102919)),	-- Grievous Gladiator's Ornamented Gloves
							moh(3, i(102832)),	-- Grievous Gladiator's Ornamented Headcover
							moh(3, i(102965)),	-- Grievous Gladiator's Ornamented Legplates
							moh(2, i(102894)),	-- Grievous Gladiator's Ornamented Spaulders
							moh(3, i(102944)),	-- Grievous Gladiator's Scaled Chestpiece
							moh(2, i(102827)),	-- Grievous Gladiator's Scaled Gauntlets
							moh(3, i(102976)),	-- Grievous Gladiator's Scaled Helm
							moh(3, i(102977)),	-- Grievous Gladiator's Scaled Legguards
							moh(2, i(102941)),	-- Grievous Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(2, i(102812)),	-- Grievous Gladiator's Mooncloth Gloves
							moh(3, i(102900)),	-- Grievous Gladiator's Mooncloth Helm
							moh(3, i(102901)),	-- Grievous Gladiator's Mooncloth Leggings
							moh(2, i(102947)),	-- Grievous Gladiator's Mooncloth Mantle
							moh(3, i(102878)),	-- Grievous Gladiator's Mooncloth Robe
							moh(2, i(102904)),	-- Grievous Gladiator's Satin Gloves
							moh(3, i(102948)),	-- Grievous Gladiator's Satin Hood
							moh(3, i(102818)),	-- Grievous Gladiator's Satin Leggings
							moh(2, i(102868)),	-- Grievous Gladiator's Satin Mantle
							moh(3, i(102819)),	-- Grievous Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(2, i(102860)),	-- Grievous Gladiator's Leather Gloves
							moh(3, i(102907)),	-- Grievous Gladiator's Leather Helm
							moh(3, i(102927)),	-- Grievous Gladiator's Leather Legguards
							moh(2, i(102928)),	-- Grievous Gladiator's Leather Spaulders
							moh(3, i(102924)),	-- Grievous Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(3, i(102956)),	-- Grievous Gladiator's Linked Armor
							moh(2, i(102939)),	-- Grievous Gladiator's Linked Gauntlets
							moh(3, i(102911)),	-- Grievous Gladiator's Linked Helm
							moh(3, i(102975)),	-- Grievous Gladiator's Linked Leggings
							moh(2, i(102826)),	-- Grievous Gladiator's Linked Spaulders
							moh(3, i(102940)),	-- Grievous Gladiator's Mail Armor
							moh(2, i(102889)),	-- Grievous Gladiator's Mail Gauntlets
							moh(3, i(102890)),	-- Grievous Gladiator's Mail Helm
							moh(3, i(102978)),	-- Grievous Gladiator's Mail Leggings
							moh(2, i(102834)),	-- Grievous Gladiator's Mail Spaulders
							moh(3, i(102914)),	-- Grievous Gladiator's Ringmail Armor
							moh(2, i(102971)),	-- Grievous Gladiator's Ringmail Gauntlets
							moh(3, i(102915)),	-- Grievous Gladiator's Ringmail Helm
							moh(3, i(102916)),	-- Grievous Gladiator's Ringmail Leggings
							moh(2, i(102852)),	-- Grievous Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(2, i(102879)),	-- Grievous Gladiator's Felweave Amice
							moh(3, i(102923)),	-- Grievous Gladiator's Felweave Cowl
							moh(2, i(102922)),	-- Grievous Gladiator's Felweave Handguards
							moh(3, i(102858)),	-- Grievous Gladiator's Felweave Raiment
							moh(3, i(102952)),	-- Grievous Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(3, i(102925)),	-- Grievous Gladiator's Plate Chestpiece
							moh(2, i(102815)),	-- Grievous Gladiator's Plate Gauntlets
							moh(3, i(102816)),	-- Grievous Gladiator's Plate Helm
							moh(3, i(102929)),	-- Grievous Gladiator's Plate Legguards
							moh(2, i(102882)),	-- Grievous Gladiator's Plate Shoulders
						}),
						n(BACK, {
							moh(1, i(102902)),	-- Grievous Gladiator's Cape of Cruelty
							moh(1, i(102839)),	-- Grievous Gladiator's Cape of Prowess
							moh(1, i(102966)),	-- Grievous Gladiator's Cloak of Alacrity
							moh(1, i(102967)),	-- Grievous Gladiator's Cloak of Prowess
							moh(1, i(102866)),	-- Grievous Gladiator's Drape of Cruelty
							moh(1, i(102953)),	-- Grievous Gladiator's Drape of Meditation
							moh(1, i(102969)),	-- Grievous Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							moh(1, i(102821)),	-- Grievous Gladiator's Armbands of Meditation
							moh(1, i(102862)),	-- Grievous Gladiator's Armbands of Prowess
							moh(1, i(102968)),	-- Grievous Gladiator's Armplates of Alacrity
							moh(1, i(102899)),	-- Grievous Gladiator's Armplates of Proficiency
							moh(1, i(102908)),	-- Grievous Gladiator's Armwraps of Accuracy
							moh(1, i(102951)),	-- Grievous Gladiator's Armwraps of Alacrity
							moh(1, i(102888)),	-- Grievous Gladiator's Bindings of Meditation
							moh(1, i(102920)),	-- Grievous Gladiator's Bindings of Prowess
							moh(1, i(102962)),	-- Grievous Gladiator's Bracers of Meditation
							moh(1, i(102892)),	-- Grievous Gladiator's Bracers of Prowess
							moh(1, i(102884)),	-- Grievous Gladiator's Cuffs of Accuracy
							moh(1, i(102863)),	-- Grievous Gladiator's Cuffs of Meditation
							moh(1, i(102930)),	-- Grievous Gladiator's Cuffs of Prowess
							moh(1, i(102950)),	-- Grievous Gladiator's Wristguards of Accuracy
							moh(1, i(102885)),	-- Grievous Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							moh(1, i(102891)),	-- Grievous Gladiator's Belt of Cruelty
							moh(1, i(102972)),	-- Grievous Gladiator's Belt of Meditation
							moh(1, i(102961)),	-- Grievous Gladiator's Clasp of Cruelty
							moh(1, i(102945)),	-- Grievous Gladiator's Clasp of Meditation
							moh(1, i(102859)),	-- Grievous Gladiator's Cord of Accuracy
							moh(1, i(102881)),	-- Grievous Gladiator's Cord of Cruelty
							moh(1, i(102906)),	-- Grievous Gladiator's Cord of Meditation
							moh(1, i(102837)),	-- Grievous Gladiator's Girdle of Accuracy
							moh(1, i(102921)),	-- Grievous Gladiator's Girdle of Prowess
							moh(1, i(102842)),	-- Grievous Gladiator's Links of Accuracy
							moh(1, i(102814)),	-- Grievous Gladiator's Links of Cruelty
							moh(1, i(102905)),	-- Grievous Gladiator's Waistband of Accuracy
							moh(1, i(102844)),	-- Grievous Gladiator's Waistband of Cruelty
							moh(1, i(102874)),	-- Grievous Gladiator's Waistguard of Cruelty
							moh(1, i(102865)),	-- Grievous Gladiator's Waistguard of Meditation
						}),
						n(FEET, {
							moh(2, i(102913)),	-- Grievous Gladiator's Boots of Alacrity
							moh(2, i(102857)),	-- Grievous Gladiator's Boots of Cruelty
							moh(2, i(102828)),	-- Grievous Gladiator's Footguards of Alacrity (Leahter)
							moh(2, i(102861)),	-- Grievous Gladiator's Footguards of Alacrity (Mail)
							moh(2, i(102957)),	-- Grievous Gladiator's Footguards of Meditation (Leather)
							moh(2, i(102820)),	-- Grievous Gladiator's Footguards of Meditation (Mail)
							moh(2, i(102835)),	-- Grievous Gladiator's Greaves of Alacrity
							moh(2, i(102836)),	-- Grievous Gladiator's Greaves of Meditation
							moh(2, i(102843)),	-- Grievous Gladiator's Sabatons of Alacrity
							moh(2, i(102926)),	-- Grievous Gladiator's Sabatons of Cruelty
							moh(2, i(102817)),	-- Grievous Gladiator's Treads of Alacrity
							moh(2, i(102883)),	-- Grievous Gladiator's Treads of Cruelty
							moh(2, i(102949)),	-- Grievous Gladiator's Treads of Meditation
							moh(2, i(102942)),	-- Grievous Gladiator's Warboots of Alacrity
							moh(2, i(102895)),	-- Grievous Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
							i(102838),	-- Grievous Gladiator's Choker of Accuracy
							i(102946),	-- Grievous Gladiator's Choker of Proficiency
							i(102875),	-- Grievous Gladiator's Necklace of Proficiency
							i(102876),	-- Grievous Gladiator's Necklace of Prowess
							i(102954),	-- Grievous Gladiator's Pendant of Alacrity
							i(102970),	-- Grievous Gladiator's Pendant of Cruelty
							i(102933),	-- Grievous Gladiator's Pendant of Meditation
						})),
						filter(FINGER_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
							i(102846),	-- Grievous Gladiator's Band of Accuracy
							i(102871),	-- Grievous Gladiator's Band of Cruelty
							i(102955),	-- Grievous Gladiator's Band of Meditation
							i(102880),	-- Grievous Gladiator's Ring of Accuracy
							i(102841),	-- Grievous Gladiator's Ring of Cruelty
							i(102943),	-- Grievous Gladiator's Signet of Accuracy
							i(102898),	-- Grievous Gladiator's Signet of Cruelty
						})),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 }, }, {
							i(102856),	-- Grievous Gladiator's Badge of Conquest
							i(102830),	-- Grievous Gladiator's Badge of Dominance
							i(102833),	-- Grievous Gladiator's Badge of Victory
							i(102877),	-- Grievous Gladiator's Emblem of Cruelty
							i(102813),	-- Grievous Gladiator's Emblem of Meditation
							i(102903),	-- Grievous Gladiator's Emblem of Tenacity
							i(102840),	-- Grievous Gladiator's Insignia of Conquest
							i(102963),	-- Grievous Gladiator's Insignia of Dominance
							i(102896),	-- Grievous Gladiator's Insignia of Victory
							i(102935),	-- Grievous Gladiator's Medallion of Cruelty (H)
							i(102822),	-- Grievous Gladiator's Medallion of Meditation (H)
							i(102869),	-- Grievous Gladiator's Medallion of Tenacity (H)
						})),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(144250, {	-- Arsenal: Prideful Gladiator's Weapons (H)
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103364)),	-- Prideful Gladiator's Barrier
							moh(5, i(103507)),	-- Prideful Gladiator's Baton of Light
							moh(5, i(103366)),	-- Prideful Gladiator's Battle Staff
							moh(5, i(103509)),	-- Prideful Gladiator's Bonecracker
							moh(5, i(103339)),	-- Prideful Gladiator's Cleaver
							moh(5, i(103336)),	-- Prideful Gladiator's Decapitator
							moh(2, i(103363)),	-- Prideful Gladiator's Endgame
							moh(5, i(103406)),	-- Prideful Gladiator's Energy Staff
							moh(5, i(103404)),	-- Prideful Gladiator's Gavel
							moh(5, i(103338)),	-- Prideful Gladiator's Greatsword
							moh(5, i(103508)),	-- Prideful Gladiator's Hacker
							moh(5, i(103350)),	-- Prideful Gladiator's Longbow
							moh(5, i(103504)),	-- Prideful Gladiator's Mageblade
							moh(5, i(103461)),	-- Prideful Gladiator's Pike
							moh(5, i(103340)),	-- Prideful Gladiator's Pummeler
							moh(5, i(103341)),	-- Prideful Gladiator's Quickblade
							moh(2, i(103405)),	-- Prideful Gladiator's Redoubt
							moh(5, i(103503)),	-- Prideful Gladiator's Render
							moh(2, i(103373)),	-- Prideful Gladiator's Reprieve
							moh(2, i(103403)),	-- Prideful Gladiator's Rifle
							moh(5, i(103502)),	-- Prideful Gladiator's Ripper
							moh(5, i(103501)),	-- Prideful Gladiator's Shanker
							moh(2, i(103519)),	-- Prideful Gladiator's Shield Wall
							moh(5, i(103510)),	-- Prideful Gladiator's Slicer
							moh(5, i(103365)),	-- Prideful Gladiator's Spellblade
							moh(5, i(103374)),	-- Prideful Gladiator's Touch of Defeat
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138640, {	-- Ensemble: Prideful Gladiator's Dreadplate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(103376)),	-- Prideful Gladiator's Dreadplate Chestpiece
							moh(2, i(103377)),	-- Prideful Gladiator's Dreadplate Gauntlets
							moh(3, i(103378)),	-- Prideful Gladiator's Dreadplate Helm
							moh(3, i(103379)),	-- Prideful Gladiator's Dreadplate Legguards
							moh(2, i(103380)),	-- Prideful Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138648, {	-- Ensemble: Prideful Gladiator's Dragonhide Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103381)),	-- Prideful Gladiator's Dragonhide Gloves
							moh(3, i(103382)),	-- Prideful Gladiator's Dragonhide Helm
							moh(3, i(103383)),	-- Prideful Gladiator's Dragonhide Legguards
							moh(3, i(103384)),	-- Prideful Gladiator's Dragonhide Robes
							moh(2, i(103385)),	-- Prideful Gladiator's Dragonhide Spaulders
							moh(2, i(103389)),	-- Prideful Gladiator's Kodohide Gloves
							moh(3, i(103390)),	-- Prideful Gladiator's Kodohide Helm
							moh(3, i(103391)),	-- Prideful Gladiator's Kodohide Legguards
							moh(3, i(103392)),	-- Prideful Gladiator's Kodohide Robes
							moh(2, i(103393)),	-- Prideful Gladiator's Kodohide Spaulders
							moh(2, i(103398)),	-- Prideful Gladiator's Wyrmhide Gloves
							moh(3, i(103399)),	-- Prideful Gladiator's Wyrmhide Helm
							moh(3, i(103400)),	-- Prideful Gladiator's Wyrmhide Legguards
							moh(3, i(103401)),	-- Prideful Gladiator's Wyrmhide Robes
							moh(2, i(103402)),	-- Prideful Gladiator's Wyrmhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138646, {	-- Ensemble: Prideful Gladiator's Chain Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(103416)),	-- Prideful Gladiator's Chain Armor
							moh(2, i(103417)),	-- Prideful Gladiator's Chain Gauntlets
							moh(3, i(103418)),	-- Prideful Gladiator's Chain Helm
							moh(3, i(103419)),	-- Prideful Gladiator's Chain Leggings
							moh(2, i(103420)),	-- Prideful Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138654, {	-- Ensemble: Prideful Gladiator's Silk Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103425)),	-- Prideful Gladiator's Silk Amice
							moh(3, i(103422)),	-- Prideful Gladiator's Silk Cowl
							moh(2, i(103421)),	-- Prideful Gladiator's Silk Handguards
							moh(3, i(103424)),	-- Prideful Gladiator's Silk Robe
							moh(3, i(103423)),	-- Prideful Gladiator's Silk Trousers
						}),
						cl(MONK, {
							moh(12, iensemble(138650, {	-- Ensemble: Prideful Gladiator's Ironskin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103434)),	-- Prideful Gladiator's Copperskin Gloves
							moh(3, i(103435)),	-- Prideful Gladiator's Copperskin Helm
							moh(3, i(103436)),	-- Prideful Gladiator's Copperskin Legguards
							moh(2, i(103437)),	-- Prideful Gladiator's Copperskin Spaulders
							moh(3, i(103438)),	-- Prideful Gladiator's Copperskin Tunic
							moh(2, i(103429)),	-- Prideful Gladiator's Ironskin Gloves
							moh(3, i(103430)),	-- Prideful Gladiator's Ironskin Helm
							moh(3, i(103431)),	-- Prideful Gladiator's Ironskin Legguards
							moh(2, i(103432)),	-- Prideful Gladiator's Ironskin Spaulders
							moh(3, i(103433)),	-- Prideful Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138642, {	-- Ensemble: Prideful Gladiator's Scaled Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(103450)),	-- Prideful Gladiator's Ornamented Chestguard
							moh(2, i(103451)),	-- Prideful Gladiator's Ornamented Gloves
							moh(3, i(103452)),	-- Prideful Gladiator's Ornamented Headcover
							moh(3, i(103453)),	-- Prideful Gladiator's Ornamented Legplates
							moh(2, i(103454)),	-- Prideful Gladiator's Ornamented Spaulders
							moh(3, i(103439)),	-- Prideful Gladiator's Scaled Chestpiece
							moh(2, i(103440)),	-- Prideful Gladiator's Scaled Gauntlets
							moh(3, i(103441)),	-- Prideful Gladiator's Scaled Helm
							moh(3, i(103442)),	-- Prideful Gladiator's Scaled Legguards
							moh(2, i(103443)),	-- Prideful Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138656, {	-- Ensemble: Prideful Gladiator's Satin Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103462)),	-- Prideful Gladiator's Mooncloth Gloves
							moh(3, i(103463)),	-- Prideful Gladiator's Mooncloth Helm
							moh(3, i(103464)),	-- Prideful Gladiator's Mooncloth Leggings
							moh(2, i(103466)),	-- Prideful Gladiator's Mooncloth Mantle
							moh(3, i(103465)),	-- Prideful Gladiator's Mooncloth Robe
							moh(2, i(103467)),	-- Prideful Gladiator's Satin Gloves
							moh(3, i(103468)),	-- Prideful Gladiator's Satin Hood
							moh(3, i(103469)),	-- Prideful Gladiator's Satin Leggings
							moh(2, i(103471)),	-- Prideful Gladiator's Satin Mantle
							moh(3, i(103470)),	-- Prideful Gladiator's Satin Robe
						}),
						cl(ROGUE, {
							moh(12, iensemble(138652, {	-- Ensemble: Prideful Gladiator's Leather Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103476)),	-- Prideful Gladiator's Leather Gloves
							moh(3, i(103477)),	-- Prideful Gladiator's Leather Helm
							moh(3, i(103478)),	-- Prideful Gladiator's Leather Legguards
							moh(2, i(103479)),	-- Prideful Gladiator's Leather Spaulders
							moh(3, i(103475)),	-- Prideful Gladiator's Leather Tunic
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138644, {	-- Ensemble: Prideful Gladiator's Ringmail Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(103490)),	-- Prideful Gladiator's Linked Armor
							moh(2, i(103491)),	-- Prideful Gladiator's Linked Gauntlets
							moh(3, i(103492)),	-- Prideful Gladiator's Linked Helm
							moh(3, i(103493)),	-- Prideful Gladiator's Linked Leggings
							moh(2, i(103494)),	-- Prideful Gladiator's Linked Spaulders
							moh(3, i(103496)),	-- Prideful Gladiator's Mail Armor
							moh(2, i(103497)),	-- Prideful Gladiator's Mail Gauntlets
							moh(3, i(103498)),	-- Prideful Gladiator's Mail Helm
							moh(3, i(103499)),	-- Prideful Gladiator's Mail Leggings
							moh(2, i(103500)),	-- Prideful Gladiator's Mail Spaulders
							moh(3, i(103485)),	-- Prideful Gladiator's Ringmail Armor
							moh(2, i(103486)),	-- Prideful Gladiator's Ringmail Gauntlets
							moh(3, i(103487)),	-- Prideful Gladiator's Ringmail Helm
							moh(3, i(103488)),	-- Prideful Gladiator's Ringmail Leggings
							moh(2, i(103489)),	-- Prideful Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138658, {	-- Ensemble: Prideful Gladiator's Felweave Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(103524)),	-- Prideful Gladiator's Felweave Amice
							moh(3, i(103521)),	-- Prideful Gladiator's Felweave Cowl
							moh(2, i(103520)),	-- Prideful Gladiator's Felweave Handguards
							moh(3, i(103523)),	-- Prideful Gladiator's Felweave Raiment
							moh(3, i(103522)),	-- Prideful Gladiator's Felweave Trousers
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138638, {	-- Ensemble: Prideful Gladiator's Plate Armor
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(3, i(103525)),	-- Prideful Gladiator's Plate Chestpiece
							moh(2, i(103526)),	-- Prideful Gladiator's Plate Gauntlets
							moh(3, i(103527)),	-- Prideful Gladiator's Plate Helm
							moh(3, i(103528)),	-- Prideful Gladiator's Plate Legguards
							moh(2, i(103529)),	-- Prideful Gladiator's Plate Shoulders
						}),
						n(BACK, {
							-- From Celestials/Vendor
							moh(1, i(103343)),	-- Prideful Gladiator's Cape of Cruelty
							moh(1, i(103344)),	-- Prideful Gladiator's Cape of Prowess
							moh(1, i(103512)),	-- Prideful Gladiator's Cloak of Alacrity
							moh(1, i(103513)),	-- Prideful Gladiator's Cloak of Prowess
							moh(1, i(103360)),	-- Prideful Gladiator's Drape of Cruelty
							moh(1, i(103362)),	-- Prideful Gladiator's Drape of Meditation
							moh(1, i(103361)),	-- Prideful Gladiator's Drape of Prowess
						}),
						n(WRIST, {
							-- From Celestials/Vendor
							moh(1, i(103484)),	-- Prideful Gladiator's Armbands of Meditation
							moh(1, i(103483)),	-- Prideful Gladiator's Armbands of Prowess
							moh(1, i(103460)),	-- Prideful Gladiator's Armplates of Alacrity
							moh(1, i(103459)),	-- Prideful Gladiator's Armplates of Proficiency
							moh(1, i(103428)),	-- Prideful Gladiator's Armwraps of Accuracy
							moh(1, i(103474)),	-- Prideful Gladiator's Armwraps of Alacrity
							moh(1, i(103388)),	-- Prideful Gladiator's Bindings of Meditation
							moh(1, i(103397)),	-- Prideful Gladiator's Bindings of Prowess
							moh(1, i(103449)),	-- Prideful Gladiator's Bracers of Meditation
							moh(1, i(103448)),	-- Prideful Gladiator's Bracers of Prowess
							moh(1, i(103357)),	-- Prideful Gladiator's Cuffs of Accuracy
							moh(1, i(103359)),	-- Prideful Gladiator's Cuffs of Meditation
							moh(1, i(103358)),	-- Prideful Gladiator's Cuffs of Prowess
							moh(1, i(103415)),	-- Prideful Gladiator's Wristguards of Accuracy
							moh(1, i(103414)),	-- Prideful Gladiator's Wristguards of Alacrity
						}),
						n(WAIST, {
							-- From Celestials/Vendor
							moh(1, i(103395)),	-- Prideful Gladiator's Belt of Cruelty
							moh(1, i(103386)),	-- Prideful Gladiator's Belt of Meditation
							moh(1, i(103444)),	-- Prideful Gladiator's Clasp of Cruelty
							moh(1, i(103445)),	-- Prideful Gladiator's Clasp of Meditation
							moh(1, i(103352)),	-- Prideful Gladiator's Cord of Accuracy
							moh(1, i(103351)),	-- Prideful Gladiator's Cord of Cruelty
							moh(1, i(103353)),	-- Prideful Gladiator's Cord of Meditation
							moh(1, i(103455)),	-- Prideful Gladiator's Girdle of Accuracy
							moh(1, i(103456)),	-- Prideful Gladiator's Girdle of Prowess
							moh(1, i(103411)),	-- Prideful Gladiator's Links of Accuracy
							moh(1, i(103410)),	-- Prideful Gladiator's Links of Cruelty
							moh(1, i(103472)),	-- Prideful Gladiator's Waistband of Accuracy
							moh(1, i(103426)),	-- Prideful Gladiator's Waistband of Cruelty
							moh(1, i(103495)),	-- Prideful Gladiator's Waistguard of Cruelty
							moh(1, i(103480)),	-- Prideful Gladiator's Waistguard of Meditation
							-- Vendor added in 7.2 only on horde side
							moh(1, i(147362)),	-- Prideful Gladiator's Cord of Prowess
						}),
						n(FEET, {
							-- From Celestials/Vendor
							moh(2, i(103427)),	-- Prideful Gladiator's Boots of Alacrity
							moh(2, i(103473)),	-- Prideful Gladiator's Boots of Cruelty
							moh(2, i(103396)),	-- Prideful Gladiator's Footguards of Alacrity (Leahter)
							moh(2, i(103481)),	-- Prideful Gladiator's Footguards of Alacrity (Mail)
							moh(2, i(103387)),	-- Prideful Gladiator's Footguards of Meditation (Leather)
							moh(2, i(103482)),	-- Prideful Gladiator's Footguards of Meditation (Mail)
							moh(2, i(103446)),	-- Prideful Gladiator's Greaves of Alacrity
							moh(2, i(103447)),	-- Prideful Gladiator's Greaves of Meditation
							moh(2, i(103413)),	-- Prideful Gladiator's Sabatons of Alacrity
							moh(2, i(103412)),	-- Prideful Gladiator's Sabatons of Cruelty
							moh(2, i(103355)),	-- Prideful Gladiator's Treads of Alacrity
							moh(2, i(103354)),	-- Prideful Gladiator's Treads of Cruelty
							moh(2, i(103356)),	-- Prideful Gladiator's Treads of Meditation
							moh(2, i(103458)),	-- Prideful Gladiator's Warboots of Alacrity
							moh(2, i(103457)),	-- Prideful Gladiator's Warboots of Cruelty
						}),
						filter(NECK_F, {
							-- From Celestials
							i(103515),	-- Prideful Gladiator's Choker of Accuracy
							i(103514),	-- Prideful Gladiator's Choker of Proficiency
							i(103345),	-- Prideful Gladiator's Necklace of Proficiency
							i(103346),	-- Prideful Gladiator's Necklace of Prowess
							i(103368),	-- Prideful Gladiator's Pendant of Alacrity
							i(103367),	-- Prideful Gladiator's Pendant of Cruelty
							i(103369),	-- Prideful Gladiator's Pendant of Meditation
						}),
						filter(FINGER_F, {
							-- From Celestials
							i(103371),	-- Prideful Gladiator's Band of Accuracy
							i(103370),	-- Prideful Gladiator's Band of Cruelty
							i(103372),	-- Prideful Gladiator's Band of Meditation
							i(103349),	-- Prideful Gladiator's Ring of Accuracy
							i(103348),	-- Prideful Gladiator's Ring of Cruelty
							i(103518),	-- Prideful Gladiator's Signet of Accuracy
							i(103517),	-- Prideful Gladiator's Signet of Cruelty
						}),
						filter(TRINKET_F, sharedData({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 } }, {
							i(103342),	-- Prideful Gladiator's Badge of Conquest
							i(103505),	-- Prideful Gladiator's Badge of Dominance
							i(103511),	-- Prideful Gladiator's Badge of Victory
							i(103407),	-- Prideful Gladiator's Emblem of Cruelty
							i(103409),	-- Prideful Gladiator's Emblem of Meditation
							i(103408),	-- Prideful Gladiator's Emblem of Tenacity
							i(103347),	-- Prideful Gladiator's Insignia of Conquest
							i(103506),	-- Prideful Gladiator's Insignia of Dominance
							i(103516),	-- Prideful Gladiator's Insignia of Victory
							i(103531),	-- Prideful Gladiator's Medallion of Cruelty (H)
							i(103532),	-- Prideful Gladiator's Medallion of Meditation (H)
							i(103530),	-- Prideful Gladiator's Medallion of Tenacity (H)
						})),
					}),
				},
			}),
			n(PVP_ELITE, bubbleDown({ ["timeline"] = { ADDED_5_4_7, REMOVED_6_0_2 } }, {
				-- Original Sources are:
				-- n73147 Ethan Natice in Valley of the Four Winds (Alliance)
				-- n73145 Acon Deathwielder in Area Kun-Lai Summit (Horde)
				n(WEAPONS, {
					i(102998),	-- Prideful Gladiator's Barrier
					i(103118),	-- Prideful Gladiator's Baton of Light
					i(103000),	-- Prideful Gladiator's Battle Staff
					i(103120),	-- Prideful Gladiator's Bonecracker
					i(102987),	-- Prideful Gladiator's Cleaver
					i(102984),	-- Prideful Gladiator's Decapitator
					i(102997),	-- Prideful Gladiator's Endgame
					i(103032),	-- Prideful Gladiator's Energy Staff
					i(103030),	-- Prideful Gladiator's Gavel
					i(102986),	-- Prideful Gladiator's Greatsword
					i(103119),	-- Prideful Gladiator's Hacker
					i(102990),	-- Prideful Gladiator's Longbow
					i(103117),	-- Prideful Gladiator's Mageblade
					i(103077),	-- Prideful Gladiator's Pike
					i(102988),	-- Prideful Gladiator's Pummeler
					i(102989),	-- Prideful Gladiator's Quickblade
					i(103031),	-- Prideful Gladiator's Redoubt
					i(103116),	-- Prideful Gladiator's Render
					i(103001),	-- Prideful Gladiator's Reprieve
					i(103029),	-- Prideful Gladiator's Rifle
					i(103115),	-- Prideful Gladiator's Ripper
					i(103114),	-- Prideful Gladiator's Shanker
					i(103122),	-- Prideful Gladiator's Shield Wall
					i(103121),	-- Prideful Gladiator's Slicer
					i(102999),	-- Prideful Gladiator's Spellblade
					i(103002),	-- Prideful Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(103004),	-- Prideful Gladiator's Dreadplate Chestpiece
					i(103005),	-- Prideful Gladiator's Dreadplate Gauntlets
					i(103006),	-- Prideful Gladiator's Dreadplate Helm
					i(103007),	-- Prideful Gladiator's Dreadplate Legguards
					i(103008),	-- Prideful Gladiator's Dreadplate Shoulders
					i(103073),	-- Prideful Gladiator's Dreadplate Girdle
					i(103076),	-- Prideful Gladiator's Dreadplate Warboots
				}),
				cl(DRUID, {
					i(103009),	-- Prideful Gladiator's Dragonhide Gloves
					i(103010),	-- Prideful Gladiator's Dragonhide Helm
					i(103011),	-- Prideful Gladiator's Dragonhide Legguards
					i(103012),	-- Prideful Gladiator's Dragonhide Robes
					i(103013),	-- Prideful Gladiator's Dragonhide Spaulders
					i(103016),	-- Prideful Gladiator's Kodohide Gloves
					i(103017),	-- Prideful Gladiator's Kodohide Helm
					i(103018),	-- Prideful Gladiator's Kodohide Legguards
					i(103019),	-- Prideful Gladiator's Kodohide Robes
					i(103020),	-- Prideful Gladiator's Kodohide Spaulders
					i(103024),	-- Prideful Gladiator's Wyrmhide Gloves
					i(103025),	-- Prideful Gladiator's Wyrmhide Helm
					i(103026),	-- Prideful Gladiator's Wyrmhide Legguards
					i(103027),	-- Prideful Gladiator's Wyrmhide Robes
					i(103028),	-- Prideful Gladiator's Wyrmhide Spaulders
					i(103138),	-- Prideful Gladiator's Dragonhide Belt
					i(103014),	-- Prideful Gladiator's Kodohide Belt
					i(103022),	-- Prideful Gladiator's Wyrmhide Belt
					i(103137),	-- Prideful Gladiator's Dragonhide Footguards
					i(103015),	-- Prideful Gladiator's Kodohide Footguards
					i(103023),	-- Prideful Gladiator's Wyrmhide Footguards
				}),
				cl(HUNTER, {
					i(103037),	-- Prideful Gladiator's Chain Armor
					i(103038),	-- Prideful Gladiator's Chain Gauntlets
					i(103039),	-- Prideful Gladiator's Chain Helm
					i(103040),	-- Prideful Gladiator's Chain Leggings
					i(103041),	-- Prideful Gladiator's Chain Spaulders
					i(103033),	-- Prideful Gladiator's Chain Links
					i(103035),	-- Prideful Gladiator's Chain Sabatons
				}),
				cl(MAGE, {
					i(103046),	-- Prideful Gladiator's Silk Amice
					i(103043),	-- Prideful Gladiator's Silk Cowl
					i(103042),	-- Prideful Gladiator's Silk Handguards
					i(103045),	-- Prideful Gladiator's Silk Robe
					i(103044),	-- Prideful Gladiator's Silk Trousers
					i(102991),	-- Prideful Gladiator's Silk Cord
					i(102994),	-- Prideful Gladiator's Silk Treads
				}),
				cl(MONK, {
					i(103054),	-- Prideful Gladiator's Copperskin Gloves
					i(103055),	-- Prideful Gladiator's Copperskin Helm
					i(103056),	-- Prideful Gladiator's Copperskin Legguards
					i(103057),	-- Prideful Gladiator's Copperskin Spaulders
					i(103058),	-- Prideful Gladiator's Copperskin Tunic
					i(103049),	-- Prideful Gladiator's Ironskin Gloves
					i(103050),	-- Prideful Gladiator's Ironskin Helm
					i(103051),	-- Prideful Gladiator's Ironskin Legguards
					i(103052),	-- Prideful Gladiator's Ironskin Spaulders
					i(103053),	-- Prideful Gladiator's Ironskin Tunic
					i(103134),	-- Prideful Gladiator's Copperskin Waistband
					i(103047),	-- Prideful Gladiator's Ironskin Waistband
					i(103133),	-- Prideful Gladiator's Copperskin Boots
					i(103048),	-- Prideful Gladiator's Ironskin Boots
				}),
				cl(PALADIN, {
					i(103068),	-- Prideful Gladiator's Ornamented Chestguard
					i(103069),	-- Prideful Gladiator's Ornamented Gloves
					i(103070),	-- Prideful Gladiator's Ornamented Headcover
					i(103071),	-- Prideful Gladiator's Ornamented Legplates
					i(103072),	-- Prideful Gladiator's Ornamented Spaulders
					i(103059),	-- Prideful Gladiator's Scaled Chestpiece
					i(103060),	-- Prideful Gladiator's Scaled Gauntlets
					i(103061),	-- Prideful Gladiator's Scaled Helm
					i(103062),	-- Prideful Gladiator's Scaled Legguards
					i(103063),	-- Prideful Gladiator's Scaled Shoulders
					i(103065),	-- Prideful Gladiator's Ornamented Clasp
					i(103064),	-- Prideful Gladiator's Scaled Clasp
					i(103066),	-- Prideful Gladiator's Ornamented Greaves
					i(103067),	-- Prideful Gladiator's Scaled Greaves
				}),
				cl(PRIEST, {
					i(103078),	-- Prideful Gladiator's Mooncloth Gloves
					i(103079),	-- Prideful Gladiator's Mooncloth Helm
					i(103080),	-- Prideful Gladiator's Mooncloth Leggings
					i(103082),	-- Prideful Gladiator's Mooncloth Mantle
					i(103081),	-- Prideful Gladiator's Mooncloth Robe
					i(103083),	-- Prideful Gladiator's Satin Gloves
					i(103084),	-- Prideful Gladiator's Satin Hood
					i(103085),	-- Prideful Gladiator's Satin Leggings
					i(103087),	-- Prideful Gladiator's Satin Mantle
					i(103086),	-- Prideful Gladiator's Satin Robe
					i(102993),	-- Prideful Gladiator's Mooncloth Cord
					i(103136),	-- Prideful Gladiator's Satin Cord
					i(102996),	-- Prideful Gladiator's Mooncloth Treads
					i(103135),	-- Prideful Gladiator's Satin Treads
				}),
				cl(ROGUE, {
					i(103091),	-- Prideful Gladiator's Leather Gloves
					i(103092),	-- Prideful Gladiator's Leather Helm
					i(103093),	-- Prideful Gladiator's Leather Legguards
					i(103094),	-- Prideful Gladiator's Leather Spaulders
					i(103090),	-- Prideful Gladiator's Leather Tunic
					i(103088),	-- Prideful Gladiator's Leather Waistband
					i(103089),	-- Prideful Gladiator's Leather Boots
				}),
				cl(SHAMAN, {
					i(103103),	-- Prideful Gladiator's Linked Armor
					i(103104),	-- Prideful Gladiator's Linked Gauntlets
					i(103105),	-- Prideful Gladiator's Linked Helm
					i(103106),	-- Prideful Gladiator's Linked Leggings
					i(103107),	-- Prideful Gladiator's Linked Spaulders
					i(103109),	-- Prideful Gladiator's Mail Armor
					i(103110),	-- Prideful Gladiator's Mail Gauntlets
					i(103111),	-- Prideful Gladiator's Mail Helm
					i(103112),	-- Prideful Gladiator's Mail Leggings
					i(103113),	-- Prideful Gladiator's Mail Spaulders
					i(103098),	-- Prideful Gladiator's Ringmail Armor
					i(103099),	-- Prideful Gladiator's Ringmail Gauntlets
					i(103100),	-- Prideful Gladiator's Ringmail Helm
					i(103101),	-- Prideful Gladiator's Ringmail Leggings
					i(103102),	-- Prideful Gladiator's Ringmail Spaulders
					i(103034),	-- Prideful Gladiator's Linked Waistband
					i(103108),	-- Prideful Gladiator's Mail Waistguard
					i(103095),	-- Prideful Gladiator's Ringmail Waistguard
					i(103036),	-- Prideful Gladiator's Linked Sabatons
					i(103097),	-- Prideful Gladiator's Mail Footguards
					i(103096),	-- Prideful Gladiator's Ringmail Footguards
				}),
				cl(WARLOCK, {
					i(103127),	-- Prideful Gladiator's Felweave Amice
					i(103124),	-- Prideful Gladiator's Felweave Cowl
					i(103123),	-- Prideful Gladiator's Felweave Handguards
					i(103126),	-- Prideful Gladiator's Felweave Raiment
					i(103125),	-- Prideful Gladiator's Felweave Trousers
					i(102992),	-- Prideful Gladiator's Felweave Cord
					i(102995),	-- Prideful Gladiator's Felweave Treads
				}),
				cl(WARRIOR, {
					i(103128),	-- Prideful Gladiator's Plate Chestpiece
					i(103129),	-- Prideful Gladiator's Plate Gauntlets
					i(103130),	-- Prideful Gladiator's Plate Helm
					i(103131),	-- Prideful Gladiator's Plate Legguards
					i(103132),	-- Prideful Gladiator's Plate Shoulders
					i(103074),	-- Prideful Gladiator's Plate Girdle
					i(103075),	-- Prideful Gladiator's Plate Warboots
				}),
				n(BACK, {
					i(103635),	-- Prideful Gladiator's Greatcloak
				}),
				filter(TABARDS, {
					i(103636),	-- Prideful Gladiator's Tabard
				}),
			})),
		}))),
	}))),
});

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
-- 	n(PVP, {
-- 		-- PvP Ensembles
-- 		q(45583),	-- Dreadful Gladiator's Chain Armor (Hunter)
-- 		q(45584),	-- Dreadful Gladiator's Dragonhide Armor (Druid)
-- 		q(45585),	-- Dreadful Gladiator's Dreadplate Armor (Death Knight)
-- 		q(45593),	-- Dreadful Gladiator's Felweave Armor (Warlock)
-- 		q(45594),	-- Dreadful Gladiator's Ironskin Armor (Monk)
-- 		q(45595),	-- Dreadful Gladiator's Leather Armor (Rogue)
-- 		q(45596),	-- Dreadful Gladiator's Plate (Warrior)
-- 		q(45597),	-- Dreadful Gladiator's Ringmail Armor (Shaman)
-- 		q(45598),	-- Dreadful Gladiator's Satin Armor (Priest)
-- 		q(45599),	-- Dreadful Gladiator's Scaled Armor (Paladin)
-- 		q(45600),	-- Dreadful Gladiator's Silk Armor (Mage)
-- 		q(45601),	-- Grievous Gladiator's Chain Armor (Hunter - Horde)
-- 		q(45602),	-- Grievous Gladiator's Chain Armor (Hunter - Alliance)
-- 		q(45603),	-- Grievous Gladiator's Dragonhide Armor (Druid - Horde)
-- 		q(45604),	-- Grievous Gladiator's Dreadplate Armor (Death Knight - Horde)
-- 		q(45605),	-- Grievous Gladiator's Felweave Armor (Warlock - Horde)
-- 		q(45607),	-- Grievous Gladiator's Ironskin Armor (Monk - Horde)
-- 		q(45608),	-- Grievous Gladiator's Leather Armor (Rogue - Horde)
-- 		q(45609),	-- Grievous Gladiator's Plate Armor (Warrior - Horde)
-- 		q(45610),	-- Grievous Gladiator's Ringmail Armor (Shaman - Horde)
-- 		q(45611),	-- Grievous Gladiator's Satin Armor (Priest - Horde)
-- 		q(45612),	-- Grievous Gladiator's Scaled Armor (Paladin - Horde)
-- 		q(45613),	-- Grievous Gladiator's Silk Armor (Mage - Horde)
-- 		q(45616),	-- Grievous Gladiator's Dreadplate Armor (Death Knight - Alliance)
-- 		q(45617),	-- Grievous Gladiator's Dragonhide Armor (Druid - Alliance)
-- 		q(45618),	-- Grievous Gladiator's Felweave Armor (Warlock - Alliance)
-- 		q(45619),	-- Grievous Gladiator's Ironskin Armor (Monk - Alliance)
-- 		q(45620),	-- Grievous Gladiator's Leather Armor (Rogue - Alliance)
-- 		q(45621),	-- Grievous Gladiator's Plate Armor (Warrior - Alliance)
-- 		q(45622),	-- Grievous Gladiator's Ringmail Armor (Shaman - Alliance)
-- 		q(45623),	-- Grievous Gladiator's Satin Armor (Priest - Alliance)
-- 		q(45624),	-- Grievous Gladiator's Scaled Armor (Paladin - Alliance)
-- 		q(45625),	-- Grievous Gladiator's Silk Armor (Mage - Alliance)
-- 		q(45884),	-- Prideful Gladiator's Chain Armor (Hunter - Alliance)
-- 		q(45885),	-- Prideful Gladiator's Dragonhide Armor (Druid - Alliance)
-- 		q(45886),	-- Prideful Gladiator's Dreadplate Armor (Death Knight - Alliance)
-- 		q(45887),	-- Prideful Gladiator's Felweave Armor (Warlock - Alliance)
-- 		q(45888),	-- Prideful Gladiator's Ironskin Armor (Monk - Alliance)
-- 		q(45889),	-- Prideful Gladiator's Leather Armor (Rogue - Alliance)
-- 		q(45891),	-- Prideful Gladiator's Plate Armor (Warrior - Alliance)
-- 		q(45892),	-- Prideful Gladiator's Ringmail Armor (Shaman - Alliance)
-- 		q(45893),	-- Prideful Gladiator's Satin Armor (Priest - Alliance)
-- 		q(45894),	-- Prideful Gladiator's Scaled Armor (Paladin - Alliance)
-- 		q(45895),	-- Prideful Gladiator's Silk Armor (Mage - Alliance)
-- 		q(45896),	-- Prideful Gladiator's Chain Armor (Hunter - Horde)
-- 		q(45897),	-- Prideful Gladiator's Dragonhide Armor (Druid - Horde)
-- 		q(45898),	-- Prideful Gladiator's Dreadplate Armor (Death Knight - Horde)
-- 		q(45899),	-- Prideful Gladiator's Felweave Armor (Warlock - Horde)
-- 		q(45900),	-- Prideful Gladiator's Ironskin Armor (Monk - Horde)
-- 		q(45901),	-- Prideful Gladiator's Plate Armor (Warrior - Horde)
-- 		q(45903),	-- Prideful Gladiator's Ringmail Armor (Shaman - Horde)
-- 		q(45907),	-- Prideful Gladiator's Satin Armor (Priest - Horde)
-- 		q(45911),	-- Prideful Gladiator's Scaled Armor (Paladin - Horde)
-- 		q(45912),	-- Prideful Gladiator's Silk Armor (Mage - Horde)
-- 		q(46315),	-- Prideful Gladiator's Leather Armor (Rogue - Horde)
-- 		q(45935),	-- Tyrannical Gladiator's Chain Armor (Hunter - Horde)
-- 		q(45936),	-- Tyrannical Gladiator's Dragonhide Armor (Druid - Horde)
-- 		q(45937),	-- Tyrannical Gladiator's Dreadplate Armor (Death Knight - Horde)
-- 		q(45938),	-- Tyrannical Gladiator's Felweave Armor (Warlock - Horde)
-- 		q(45939),	-- Tyrannical Gladiator's Satin Armor (Priest - Horde)
-- 		q(45940),	-- Tyrannical Gladiator's Ironskin Armor (Monk - Horde)
-- 		q(45942),	-- Tyrannical Gladiator's Leather Armor (Rogue - Horde)
-- 		q(45943),	-- Tyrannical Gladiator's Plate Armor (Warrior - Horde)
-- 		q(45944),	-- Tyrannical Gladiator's Ringmail Shaman (Shaman - Horde)
-- 		q(45945),	-- Tyrannical Gladiator's Scaled Armor (Paladin - Horde)
-- 		q(45946),	-- Tyrannical Gladiator's Silk Armor (Mage - Horde)
-- 		q(45947),	-- Tyrannical Gladiator's Chain Armor (Hunter - Alliance)
-- 		q(45948),	-- Tyrannical Gladiator's Dragonhide Armor (Druid - Alliance)
-- 		q(45949),	-- Tyrannical Gladiator's Dreadplate Armor (Death Knight - Alliance)
-- 		q(45950),	-- Tyrannical Gladiator's Felweave Armor (Warlock - Alliance)
-- 		q(45951),	-- Tyrannical Gladiator's Ironskin Armor (Monk - Alliance)
-- 		q(45952),	-- Tyrannical Gladiator's Leather Armor (Rogue - Alliance)
-- 		q(45953),	-- Tyrannical Gladiator's Plate Armor (Warrior - Alliance)
-- 		q(45954),	-- Tyrannical Gladiator's Ringmail Armor (Shaman - Alliance)
-- 		q(45955),	-- Tyrannical Gladiator's Satin Armor (Priest - Alliance)
-- 		q(45956),	-- Tyrannical Gladiator's Scaled Armor (Paladin - Alliance)
-- 		q(45957),	-- Tyrannical Gladiator's Silk Armor (Mage - Alliance)
-- 		q(45958),	-- Malevolent Gladiator's Silk Armor (Mage)
-- 		q(45959),	-- Malevolent Gladiator's Scaled Armor (Paladin)
-- 		q(45960),	-- Malevolent Gladiator's Plate Armor (Warrior)
-- 		q(45961),	-- Malevolent Gladiator's Ironskin Armor (Monk)
-- 		q(45962),	-- Malevolent Gladiator's Leather Armor (Rogue)
-- 		q(45963),	-- Malevolent Gladiator's Dragonhide Armor (Druid)
-- 		q(45964),	-- Malevolent Gladiator's Satin Armor (Priest)
-- 		q(45965),	-- Malevolent Gladiator's Felweave Armor (Warlock)
-- 		q(45966),	-- Malevolent Gladiator's Ringmail Armor (Shaman)
-- 		q(45967),	-- Malevolent Gladiator's Dreadplate Armor (Death Knight)
-- 		q(45968),	-- Malevolent Gladiator's Chain Armor (Hunter)

-- 		-- PvP Arsenals
-- 		q(46003),	-- Malevolent Gladiator's Arsenal (Alliance & Horde)
-- 		q(46005),	-- Tyrannical Gladiator's Arsenal (Alliance)
-- 		q(46004),	-- Tyrannical Gladiator's Weapons (Horde)
-- 		q(46007),	-- Prideful Gladiator's Arsenal (Alliance)
-- 		q(46009),	-- Prideful Gladiator's Weapons (Horde)
-- 		q(46019),	-- Grievous Gladiator's Arsenal (Alliance)
-- 		q(46018),	-- Grievous Gladiator's Weapons (Horde)
-- 	}),
-- })));
