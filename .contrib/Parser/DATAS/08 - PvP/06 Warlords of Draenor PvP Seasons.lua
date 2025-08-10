-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	---- This gear is listed here to reduce the bloat.
	---- The actual sources include:
	---- arena win&lose, rbg win&lose, bg win&lose, arena skirmish win&lose, ashran boxes win&lose, 13 ashran quests & broken bones work orders
	---- for a total of 22 sources or a total of around
	---- 10000 Items.
	pvp(expansion(EXPANSION.WOD, {
		n(SEASON_PRIMAL, {
			un(REMOVED_FROM_GAME, i(111600)),	-- Bronze Strongbox
			un(REMOVED_FROM_GAME, i(111599)),	-- Silver Strongbox
			un(REMOVED_FROM_GAME, i(111598)),	-- Gold Strongbox
			n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_6_0_3, REMOVED_6_2_0 }, }, {
				ach(9242),	-- Challenger: Warlords of Draenor Season 1
				ach(9996, {	-- Defender of the Alliance: Warlords of Draenor Season 1
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(310, {	-- <Name> Defender of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10001, {	-- Defender of the Horde: Warlords of Draenor Season 1
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(313, {	-- <Name> Defender of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(9240, {	-- Duelist: Warlords of Draenor Season 1
					elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
						["timeline"] = { ADDED_7_3_2 },
					})),
				}),
				ach(9239, {	-- Gladiator: Warlords of Draenor Season 1
					i(128277),	-- Primal Gladiator's Felblood Gronnling
				}),
				ach(9997, {	-- Guardian of the Alliance: Warlords of Draenor Season 1
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(309, {	-- <Name> Guardian of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10000, {	-- Guardian of the Horde: Warlords of Draenor Season 1
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(312, {	-- <Name> Guardian of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(9230, {	-- Hero of the Alliance: Primal
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(9231, {	-- Hero of the Horde: Primal
					["races"] = HORDE_ONLY,
					["groups"] = {
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(9238, {	-- Primal Combatant (Alliance) Warlords of Draenor Season 1
					["races"] = ALLIANCE_ONLY,
				}),
				ach(9236, {	-- Primal Combatant (Horde) Warlords of Draenor Season 1
					["races"] = HORDE_ONLY,
				}),
				ach(9232, {	-- Primal Gladiator: Warlords of Draenor Season 1
					title(308),	-- Primal Gladiator <Name>
				}),
				ach(9229, {	-- Primal Gladiator's Felblood Gronnling
					["provider"] = { "i", 128277 },	-- Primal Gladiator's Felblood Gronnling
					["filterID"] = MOUNTS,
				}),
				ach(9241),	-- Rival: Warlords of Draenor Season 1
				ach(9995, {	-- Soldier of the Alliance: Warlords of Draenor Season 1
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(311, {	-- <Name> Soldier of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(9998, {	-- Soldier of the Horde: Warlords of Draenor Season 1
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(314, {	-- <Name> Soldier of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(11629, {["timeline"] = {ADDED_7_2_0}}),	-- Untamed Beauty (PvP Season 16)
			})),
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					n(PVP_ASPIRANT, {
						cl(DEATHKNIGHT, {
							un(REMOVED_FROM_GAME, i(115197)),	-- Primal Aspirant's Dreadplate Chestpiece (A)
							un(REMOVED_FROM_GAME, i(115198)),	-- Primal Aspirant's Dreadplate Gauntlets (A)
							un(REMOVED_FROM_GAME, i(115199)),	-- Primal Aspirant's Dreadplate Helm (A)
							un(REMOVED_FROM_GAME, i(115200)),	-- Primal Aspirant's Dreadplate Legguards (A)
							un(REMOVED_FROM_GAME, i(115201)),	-- Primal Aspirant's Dreadplate Shoulders (A)
						}),
						cl(DRUID, {
							un(REMOVED_FROM_GAME, i(115202)),	-- Primal Aspirant's Dragonhide Gloves (A)
							un(REMOVED_FROM_GAME, i(115203)),	-- Primal Aspirant's Dragonhide Helm (A)
							un(REMOVED_FROM_GAME, i(115204)),	-- Primal Aspirant's Dragonhide Legguards (A)
							un(REMOVED_FROM_GAME, i(115205)),	-- Primal Aspirant's Dragonhide Tunic (A)
							un(REMOVED_FROM_GAME, i(115206)),	-- Primal Aspirant's Dragonhide Spaulders (A)
						}),
						cl(HUNTER, {
							un(REMOVED_FROM_GAME, i(115207)),	-- Primal Aspirant's Chain Armor (A)
							un(REMOVED_FROM_GAME, i(115208)),	-- Primal Aspirant's Chain Gauntlets (A)
							un(REMOVED_FROM_GAME, i(115209)),	-- Primal Aspirant's Chain Helm (A)
							un(REMOVED_FROM_GAME, i(115210)),	-- Primal Aspirant's Chain Leggings (A)
							un(REMOVED_FROM_GAME, i(115211)),	-- Primal Aspirant's Chain Spaulders (A)
						}),
						cl(MAGE, {
							un(REMOVED_FROM_GAME, i(115220)),	-- Primal Aspirant's Silk Handguards (A)
							un(REMOVED_FROM_GAME, i(115221)),	-- Primal Aspirant's Silk Cowl (A)
							un(REMOVED_FROM_GAME, i(115222)),	-- Primal Aspirant's Silk Trousers (A)
							un(REMOVED_FROM_GAME, i(115223)),	-- Primal Aspirant's Silk Robe (A)
							un(REMOVED_FROM_GAME, i(115224)),	-- Primal Aspirant's Silk Amice (A)
						}),
						cl(MONK, {
							un(REMOVED_FROM_GAME, i(115228)),	-- Primal Aspirant's Ironskin Gloves (A)
							un(REMOVED_FROM_GAME, i(115229)),	-- Primal Aspirant's Ironskin Helm (A)
							un(REMOVED_FROM_GAME, i(115230)),	-- Primal Aspirant's Ironskin Legguards (A)
							un(REMOVED_FROM_GAME, i(115231)),	-- Primal Aspirant's Ironskin Spaulders (A)
							un(REMOVED_FROM_GAME, i(115232)),	-- Primal Aspirant's Ironskin Tunic (A)
						}),
						cl(PALADIN, {
							un(REMOVED_FROM_GAME, i(115233)),	-- Primal Aspirant's Scaled Chestpiece (A)
							un(REMOVED_FROM_GAME, i(115234)),	-- Primal Aspirant's Scaled Gauntlets (A)
							un(REMOVED_FROM_GAME, i(115235)),	-- Primal Aspirant's Scaled Helm (A)
							un(REMOVED_FROM_GAME, i(115236)),	-- Primal Aspirant's Scaled Legguards (A)
							un(REMOVED_FROM_GAME, i(115237)),	-- Primal Aspirant's Scaled Shoulders (A)
						}),
						cl(PRIEST, {
							un(REMOVED_FROM_GAME, i(115241)),	-- Primal Aspirant's Satin Gloves (A)
							un(REMOVED_FROM_GAME, i(115242)),	-- Primal Aspirant's Satin Hood (A)
							un(REMOVED_FROM_GAME, i(115243)),	-- Primal Aspirant's Satin Leggings (A)
							un(REMOVED_FROM_GAME, i(115244)),	-- Primal Aspirant's Satin Robe (A)
							un(REMOVED_FROM_GAME, i(115245)),	-- Primal Aspirant's Satin Mantle (A)
						}),
						cl(ROGUE, {
							un(REMOVED_FROM_GAME, i(115246)),	-- Primal Aspirant's Leather Tunic (A)
							un(REMOVED_FROM_GAME, i(115247)),	-- Primal Aspirant's Leather Gloves (A)
							un(REMOVED_FROM_GAME, i(115248)),	-- Primal Aspirant's Leather Helm (A)
							un(REMOVED_FROM_GAME, i(115249)),	-- Primal Aspirant's Leather Legguards (A)
							un(REMOVED_FROM_GAME, i(115250)),	-- Primal Aspirant's Leather Spaulders (A)
						}),
						cl(SHAMAN, {
							un(REMOVED_FROM_GAME, i(115251)),	-- Primal Aspirant's Ringmail Armor (A)
							un(REMOVED_FROM_GAME, i(115252)),	-- Primal Aspirant's Ringmail Gauntlets (A)
							un(REMOVED_FROM_GAME, i(115253)),	-- Primal Aspirant's Ringmail Helm (A)
							un(REMOVED_FROM_GAME, i(115254)),	-- Primal Aspirant's Ringmail Leggings (A)
							un(REMOVED_FROM_GAME, i(115255)),	-- Primal Aspirant's Ringmail Spaulders (A)
						}),
						cl(WARLOCK, {
							un(REMOVED_FROM_GAME, i(115258)),	-- Primal Aspirant's Felweave Handguards (A)
							un(REMOVED_FROM_GAME, i(115259)),	-- Primal Aspirant's Felweave Cowl (A)
							un(REMOVED_FROM_GAME, i(115260)),	-- Primal Aspirant's Felweave Trousers (A)
							un(REMOVED_FROM_GAME, i(115261)),	-- Primal Aspirant's Felweave Raiment (A)
							un(REMOVED_FROM_GAME, i(115262)),	-- Primal Aspirant's Felweave Amice (A)
						}),
						cl(WARRIOR, {
							un(REMOVED_FROM_GAME, i(115263)),	-- Primal Aspirant's Plate Chestpiece (A)
							un(REMOVED_FROM_GAME, i(115264)),	-- Primal Aspirant's Plate Gauntlets (A)
							un(REMOVED_FROM_GAME, i(115265)),	-- Primal Aspirant's Plate Helm (A)
							un(REMOVED_FROM_GAME, i(115266)),	-- Primal Aspirant's Plate Legguards (A)
							un(REMOVED_FROM_GAME, i(115267)),	-- Primal Aspirant's Plate Shoulders (A)
						}),
						n(BACK, {
							un(REMOVED_FROM_GAME, i(115268)),	-- Primal Aspirant's Cape of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115269)),	-- Primal Aspirant's Drape of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115270)),	-- Primal Aspirant's Drape of Meditation (A)
							un(REMOVED_FROM_GAME, i(115271)),	-- Primal Aspirant's Cloak of Cruelty (A)
						}),
						n(WRIST, {
							un(REMOVED_FROM_GAME, i(115196)),	-- Primal Aspirant's Cuffs of Prowess (A)
							un(REMOVED_FROM_GAME, i(115219)),	-- Primal Aspirant's Bindings of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115227)),	-- Primal Aspirant's Armbands of Prowess (A)
							un(REMOVED_FROM_GAME, i(115240)),	-- Primal Aspirant's Armplates of Cruelty (A)
						}),
						n(WAIST, {
							un(REMOVED_FROM_GAME, i(115194)),	-- Primal Aspirant's Cord of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115217)),	-- Primal Aspirant's Belt of Prowess (A)
							un(REMOVED_FROM_GAME, i(115225)),	-- Primal Aspirant's Waistguard of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115238)),	-- Primal Aspirant's Girdle of Cruelty (A)
						}),
						n(FEET, {
							un(REMOVED_FROM_GAME, i(115195)),	-- Primal Aspirant's Treads of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115218)),	-- Primal Aspirant's Boots of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115226)),	-- Primal Aspirant's Footguards of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115239)),	-- Primal Aspirant's Warboots of Cruelty (A)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(115191)),	-- Primal Aspirant's Necklace of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115212)),	-- Primal Aspirant's Pendant of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115256)),	-- Primal Aspirant's Choker of Cruelty (A)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(115192)),	-- Primal Aspirant's Ring of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115193)),	-- Primal Aspirant's Ring of Prowess (A)
							un(REMOVED_FROM_GAME, i(115213)),	-- Primal Aspirant's Band of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115214)),	-- Primal Aspirant's Band of Prowess (A)
							un(REMOVED_FROM_GAME, i(115215)),	-- Primal Aspirant's Band of Meditation (A)
							un(REMOVED_FROM_GAME, i(115216)),	-- Primal Aspirant's Band of Contemplation (A)
							un(REMOVED_FROM_GAME, i(115257)),	-- Primal Aspirant's Signet of Cruelty (A)
							un(REMOVED_FROM_GAME, i(127116)),	-- Primal Aspirant's Signet of Accuracy (A)
						}),
					}),
					n(PVP_COMBATANT, {
						n(WEAPONS, {
							moh(80, iensemble(138625, {	-- Arsenal: Primal Combatant's Weapons (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115083)),	-- Primal Combatant's Barrier (A)
							moh(5, i(120066)),	-- Primal Combatant's Baton of Light (A)
							moh(5, i(120068)),	-- Primal Combatant's Battle Staff (A)
							moh(5, i(120072)),	-- Primal Combatant's Bonecracker (A)
							moh(5, i(120075)),	-- Primal Combatant's Bonegrinder (A)
							moh(5, i(120053)),	-- Primal Combatant's Cleaver (A)
							moh(5, i(120074)),	-- Primal Combatant's Decapitator (A)
							moh(2, i(115075)),	-- Primal Combatant's Endgame (A)
							moh(5, i(120069)),	-- Primal Combatant's Energy Staff (A)
							moh(5, i(120064)),	-- Primal Combatant's Gavel (A)
							moh(5, i(120076)),	-- Primal Combatant's Greatsword (A)
							moh(5, i(120070)),	-- Primal Combatant's Hacker (A)
							moh(5, i(120058)),	-- Primal Combatant's Longbow (A)
							moh(5, i(120061)),	-- Primal Combatant's Pike (A)
							moh(5, i(120056)),	-- Primal Combatant's Pummeler (A)
							moh(5, i(120057)),	-- Primal Combatant's Quickblade (A)
							moh(2, i(115082)),	-- Primal Combatant's Redoubt (A)
							moh(5, i(120071)),	-- Primal Combatant's Render (A)
							moh(2, i(115076)),	-- Primal Combatant's Reprieve (A)
							moh(5, i(120060)),	-- Primal Combatant's Rifle (A)
							moh(5, i(120055)),	-- Primal Combatant's Ripper (A)
							moh(5, i(120054)),	-- Primal Combatant's Shanker (A)
							moh(2, i(115148)),	-- Primal Combatant's Shield Wall (A)
							moh(5, i(120073)),	-- Primal Combatant's Slicer (A)
							moh(5, i(120063)),	-- Primal Combatant's Spellblade (A)
							moh(5, i(120062)),	-- Primal Combatant's Staff (A)
							moh(5, i(120067)),	-- Primal Combatant's Touch of Defeat (A)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138613, {	-- Ensemble: Primal Combatant's Dreadplate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115049)),	-- Primal Combatant's Dreadplate Chestpiece (A)
							moh(2, i(115050)),	-- Primal Combatant's Dreadplate Gauntlets (A)
							moh(3, i(115051)),	-- Primal Combatant's Dreadplate Helm (A)
							moh(3, i(115052)),	-- Primal Combatant's Dreadplate Legguards (A)
							moh(2, i(115053)),	-- Primal Combatant's Dreadplate Shoulders (A)
						}),
						cl(DRUID, {
							moh(12, iensemble(138617, {	-- Ensemble: Primal Combatant's Dragonhide Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115054)),	-- Primal Combatant's Dragonhide Gloves (A)
							moh(3, i(115055)),	-- Primal Combatant's Dragonhide Helm (A)
							moh(3, i(115056)),	-- Primal Combatant's Dragonhide Legguards (A)
							moh(2, i(115058)),	-- Primal Combatant's Dragonhide Spaulders (A)
							moh(3, i(115057)),	-- Primal Combatant's Dragonhide Tunic (A)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138579, {	-- Ensemble: Primal Combatant's Chain Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115059)),	-- Primal Combatant's Chain Armor (A)
							moh(2, i(115060)),	-- Primal Combatant's Chain Gauntlets (A)
							moh(3, i(115061)),	-- Primal Combatant's Chain Helm (A)
							moh(3, i(115062)),	-- Primal Combatant's Chain Leggings (A)
							moh(2, i(115063)),	-- Primal Combatant's Chain Spaulders (A)
						}),
						cl(MAGE, {
							moh(12, iensemble(138581, {	-- Ensemble: Primal Combatant's Silk Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115094)),	-- Primal Combatant's Silk Amice (A)
							moh(3, i(115091)),	-- Primal Combatant's Silk Cowl (A)
							moh(2, i(115090)),	-- Primal Combatant's Silk Handguards (A)
							moh(3, i(115093)),	-- Primal Combatant's Silk Robe (A)
							moh(3, i(115092)),	-- Primal Combatant's Silk Trousers (A)
						}),
						cl(MONK, {
							moh(12, iensemble(138619, {	-- Ensemble: Primal Combatant's Ironskin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115101)),	-- Primal Combatant's Ironskin Gloves (A)
							moh(3, i(115102)),	-- Primal Combatant's Ironskin Helm (A)
							moh(3, i(115103)),	-- Primal Combatant's Ironskin Legguards (A)
							moh(2, i(115104)),	-- Primal Combatant's Ironskin Spaulders (A)
							moh(3, i(115105)),	-- Primal Combatant's Ironskin Tunic (A)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138615, {	-- Ensemble: Primal Combatant's Scaled Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115106)),	-- Primal Combatant's Scaled Chestpiece (A)
							moh(2, i(115107)),	-- Primal Combatant's Scaled Gauntlets (A)
							moh(3, i(115108)),	-- Primal Combatant's Scaled Helm (A)
							moh(3, i(115109)),	-- Primal Combatant's Scaled Legguards (A)
							moh(2, i(115110)),	-- Primal Combatant's Scaled Shoulders (A)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138583, {	-- Ensemble: Primal Combatant's Satin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115117)),	-- Primal Combatant's Satin Gloves (A)
							moh(3, i(115118)),	-- Primal Combatant's Satin Hood (A)
							moh(3, i(115119)),	-- Primal Combatant's Satin Leggings (A)
							moh(2, i(115121)),	-- Primal Combatant's Satin Mantle (A)
							moh(3, i(115120)),	-- Primal Combatant's Satin Robe (A)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138621, {	-- Ensemble: Primal Combatant's Leather Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115123)),	-- Primal Combatant's Leather Gloves (A)
							moh(3, i(115124)),	-- Primal Combatant's Leather Helm (A)
							moh(3, i(115125)),	-- Primal Combatant's Leather Legguards (A)
							moh(2, i(115126)),	-- Primal Combatant's Leather Spaulders (A)
							moh(3, i(115122)),	-- Primal Combatant's Leather Tunic (A)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138577, {	-- Ensemble: Primal Combatant's Ringmail Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115127)),	-- Primal Combatant's Ringmail Armor (A)
							moh(2, i(115128)),	-- Primal Combatant's Ringmail Gauntlets (A)
							moh(3, i(115129)),	-- Primal Combatant's Ringmail Helm (A)
							moh(3, i(115130)),	-- Primal Combatant's Ringmail Leggings (A)
							moh(2, i(115131)),	-- Primal Combatant's Ringmail Spaulders (A)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138585, {	-- Ensemble: Primal Combatant's Felweave Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115165)),	-- Primal Combatant's Felweave Amice (A)
							moh(3, i(115162)),	-- Primal Combatant's Felweave Cowl (A)
							moh(2, i(115161)),	-- Primal Combatant's Felweave Handguards (A)
							moh(3, i(115164)),	-- Primal Combatant's Felweave Raiment (A)
							moh(3, i(115163)),	-- Primal Combatant's Felweave Trousers (A)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138611, {	-- Ensemble: Primal Combatant's Plate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115166)),	-- Primal Combatant's Plate Chestpiece (A)
							moh(2, i(115167)),	-- Primal Combatant's Plate Gauntlets (A)
							moh(3, i(115168)),	-- Primal Combatant's Plate Helm (A)
							moh(3, i(115169)),	-- Primal Combatant's Plate Legguards (A)
							moh(2, i(115170)),	-- Primal Combatant's Plate Shoulders (A)
						}),
						n(HEAD, {
							moh(3, i(115039)),	-- Primal Combatant's Hood of Prowess (A)
							moh(3, i(115175)),	-- Primal Combatant's Helm (A)
							moh(3, i(115180)),	-- Primal Combatant's Helm (A)
							moh(3, i(115143)),	-- Primal Combatant's Plate Helmet (A)
						}),
						n(SHOULDER, {
							moh(2, i(115042)),	-- Primal Combatant's Amice of Prowess (A)
							moh(2, i(115177)),	-- Primal Combatant's Spaulders (A)
							moh(2, i(115182)),	-- Primal Combatant's Spaulders (A)
							moh(2, i(115145)),	-- Primal Combatant's Shoulderplates (A)
						}),
						n(BACK, {
							moh(1, i(115183)),	-- Primal Combatant's Cape of Cruelty (A)
							moh(1, i(115184)),	-- Primal Combatant's Cape of Prowess (A)
							moh(1, i(115189)),	-- Primal Combatant's Cloak of Cruelty (A)
							moh(1, i(115190)),	-- Primal Combatant's Cloak of Prowess (A)
							moh(1, i(115188)),	-- Primal Combatant's Drape of Contemplation (A)
							moh(1, i(115185)),	-- Primal Combatant's Drape of Cruelty (A)
							moh(1, i(115187)),	-- Primal Combatant's Drape of Meditation (A)
							moh(1, i(115186)),	-- Primal Combatant's Drape of Prowess (A)
						}),
						n(CHEST, {
							moh(3, i(115041)),	-- Primal Combatant's Robes of Prowess (A)
							moh(3, i(115173)),	-- Primal Combatant's Tunic (A)
							moh(3, i(115178)),	-- Primal Combatant's Armor (A)
							moh(3, i(115141)),	-- Primal Combatant's Plate Breastplate (A)
						}),
						n(WRIST, {
							moh(1, i(115048)),	-- Primal Combatant's Cuffs of Cruelty (A)
							moh(1, i(115047)),	-- Primal Combatant's Cuffs of Prowess (A)
							moh(1, i(115088)),	-- Primal Combatant's Bindings of Cruelty (A)
							moh(1, i(115089)),	-- Primal Combatant's Bindings of Prowess (A)
							moh(1, i(115100)),	-- Primal Combatant's Armbands of Cruelty (A)
							moh(1, i(115099)),	-- Primal Combatant's Armbands of Prowess (A)
							moh(1, i(115115)),	-- Primal Combatant's Armplates of Cruelty (A)
							moh(1, i(115116)),	-- Primal Combatant's Armplates of Prowess (A)
						}),
						n(HANDS, {
							moh(2, i(115038)),	-- Primal Combatant's Gloves of Prowess (A)
							moh(2, i(115174)),	-- Primal Combatant's Gloves (A)
							moh(2, i(115179)),	-- Primal Combatant's Gauntlets (A)
							moh(2, i(115142)),	-- Primal Combatant's Plate Gloves (A)
						}),
						n(WAIST, {
							moh(1, i(115043)),	-- Primal Combatant's Cord of Cruelty (A)
							moh(1, i(115044)),	-- Primal Combatant's Cord of Prowess (A)
							moh(1, i(115085)),	-- Primal Combatant's Belt of Cruelty (A)
							moh(1, i(115084)),	-- Primal Combatant's Belt of Prowess (A)
							moh(1, i(115095)),	-- Primal Combatant's Waistguard of Cruelty (A)
							moh(1, i(115096)),	-- Primal Combatant's Waistguard of Prowess (A)
							moh(1, i(115111)),	-- Primal Combatant's Girdle of Cruelty (A)
							moh(1, i(115112)),	-- Primal Combatant's Girdle of Prowess (A)
						}),
						n(LEGS, {
							moh(3, i(115040)),	-- Primal Combatant's Leggings of Prowess (A)
							moh(3, i(115176)),	-- Primal Combatant's Legguards (A)
							moh(3, i(115181)),	-- Primal Combatant's Leggings (A)
							moh(3, i(115144)),	-- Primal Combatant's Legplates (A)
						}),
						n(FEET, {
							moh(2, i(115045)),	-- Primal Combatant's Treads of Cruelty (A)
							moh(2, i(115046)),	-- Primal Combatant's Treads of Prowess (A)
							moh(2, i(115086)),	-- Primal Combatant's Boots of Cruelty (A)
							moh(2, i(115087)),	-- Primal Combatant's Boots of Prowess (A)
							moh(2, i(115097)),	-- Primal Combatant's Footguards of Cruelty (A)
							moh(2, i(115098)),	-- Primal Combatant's Footguards of Prowess (A)
							moh(2, i(115113)),	-- Primal Combatant's Warboots of Cruelty (A)
							moh(2, i(115114)),	-- Primal Combatant's Warboots of Prowess (A)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(115139)),	-- Primal Combatant's Choker of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115140)),	-- Primal Combatant's Choker of Prowess (A)
							un(REMOVED_FROM_GAME, i(115034)),	-- Primal Combatant's Necklace of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115035)),	-- Primal Combatant's Necklace of Prowess (A)
							un(REMOVED_FROM_GAME, i(115074)),	-- Primal Combatant's Pendant of Contemplation (A)
							un(REMOVED_FROM_GAME, i(115071)),	-- Primal Combatant's Pendant of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115073)),	-- Primal Combatant's Pendant of Meditation (A)
							un(REMOVED_FROM_GAME, i(115072)),	-- Primal Combatant's Pendant of Prowess (A)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(115081)),	-- Primal Combatant's Band of Contemplation (A)
							un(REMOVED_FROM_GAME, i(115077)),	-- Primal Combatant's Band of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115080)),	-- Primal Combatant's Band of Meditation (A)
							un(REMOVED_FROM_GAME, i(115078)),	-- Primal Combatant's Band of Prowess (A)
							un(REMOVED_FROM_GAME, i(115079)),	-- Primal Combatant's Band of Victory (A)
							un(REMOVED_FROM_GAME, i(115036)),	-- Primal Combatant's Ring of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115037)),	-- Primal Combatant's Ring of Prowess (A)
							un(REMOVED_FROM_GAME, i(115171)),	-- Primal Combatant's Ring of Triumph (A)
							un(REMOVED_FROM_GAME, i(115147)),	-- Primal Combatant's Signet of Accuracy (A)
							un(REMOVED_FROM_GAME, i(115146)),	-- Primal Combatant's Signet of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115172)),	-- Primal Combatant's Signet of Ruthlessness (A)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(115521)),	-- Primal Combatant's Badge of Adaptation (A)
							un(REMOVED_FROM_GAME, i(115149)),	-- Primal Combatant's Badge of Conquest (A)
							un(REMOVED_FROM_GAME, i(115154)),	-- Primal Combatant's Badge of Dominance (A)
							un(REMOVED_FROM_GAME, i(115159)),	-- Primal Combatant's Badge of Victory (A)
							un(REMOVED_FROM_GAME, i(115151)),	-- Primal Combatant's Emblem of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115153)),	-- Primal Combatant's Emblem of Meditation (A)
							un(REMOVED_FROM_GAME, i(115152)),	-- Primal Combatant's Emblem of Tenacity (A)
							un(REMOVED_FROM_GAME, i(115150)),	-- Primal Combatant's Insignia of Conquest (A)
							un(REMOVED_FROM_GAME, i(115155)),	-- Primal Combatant's Insignia of Dominance (A)
							un(REMOVED_FROM_GAME, i(115160)),	-- Primal Combatant's Insignia of Victory (A)
							un(REMOVED_FROM_GAME, i(122708)),	-- Primal Combatant's Medallion of Adaptation (A)
							un(REMOVED_FROM_GAME, i(115156)),	-- Primal Combatant's Medallion of Cruelty (A)
							un(REMOVED_FROM_GAME, i(115158)),	-- Primal Combatant's Medallion of Meditation (A)
							un(REMOVED_FROM_GAME, i(115157)),	-- Primal Combatant's Medallion of Tenacity (A)
						}),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(138631, {	-- Arsenal: Primal Gladiator's Weapons
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(5, i(115594)),	-- Primal Gladiator's Cleaver
							moh(5, i(115595)),	-- Primal Gladiator's Shanker
							moh(5, i(115596)),	-- Primal Gladiator's Ripper
							moh(5, i(115597)),	-- Primal Gladiator's Pummeler
							moh(5, i(115598)),	-- Primal Gladiator's Quickblade
							moh(5, i(115599)),	-- Primal Gladiator's Longbow
							moh(5, i(115601)),	-- Primal Gladiator's Rifle
							moh(5, i(115602)),	-- Primal Gladiator's Pike
							moh(5, i(115644)),	-- Primal Gladiator's Spellblade
							moh(5, i(115645)),	-- Primal Gladiator's Gavel
							moh(5, i(115646)),	-- Primal Gladiator's Mageblade
							moh(5, i(115647)),	-- Primal Gladiator's Baton of Light
							moh(5, i(115648)),	-- Primal Gladiator's Touch of Defeat
							moh(5, i(115649)),	-- Primal Gladiator's Battle Staff
							moh(5, i(115650)),	-- Primal Gladiator's Energy Staff
							moh(2, i(115659)),	-- Primal Gladiator's Endgame
							moh(2, i(115660)),	-- Primal Gladiator's Reprieve
							moh(2, i(115666)),	-- Primal Gladiator's Redoubt
							moh(2, i(115667)),	-- Primal Gladiator's Barrier
							moh(5, i(115725)),	-- Primal Gladiator's Hacker
							moh(5, i(115726)),	-- Primal Gladiator's Render
							moh(5, i(115727)),	-- Primal Gladiator's Bonecracker
							moh(5, i(115728)),	-- Primal Gladiator's Slicer
							moh(5, i(115729)),	-- Primal Gladiator's Decapitator
							moh(5, i(115730)),	-- Primal Gladiator's Bonegrinder
							moh(5, i(115731)),	-- Primal Gladiator's Greatsword
							moh(2, i(115748)),	-- Primal Gladiator's Shield Wall
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138557, {	-- Ensemble: Primal Gladiator's Dreadplate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115629)),	-- Primal Gladiator's Dreadplate Chestpiece
							moh(2, i(115630)),	-- Primal Gladiator's Dreadplate Gauntlets
							moh(3, i(115631)),	-- Primal Gladiator's Dreadplate Helm
							moh(3, i(115632)),	-- Primal Gladiator's Dreadplate Legguards
							moh(2, i(115633)),	-- Primal Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138565, {	-- Ensemble: Primal Gladiator's Dragonhide Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115634)),	-- Primal Gladiator's Dragonhide Gloves (A)
							moh(3, i(115635)),	-- Primal Gladiator's Dragonhide Helm (A)
							moh(3, i(115636)),	-- Primal Gladiator's Dragonhide Legguards (A)
							moh(3, i(115637)),	-- Primal Gladiator's Dragonhide Robes (A)
							moh(2, i(115638)),	-- Primal Gladiator's Dragonhide Spaulders (A)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138563, {	-- Ensemble: Primal Gladiator's Chain Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115639)),	-- Primal Gladiator's Chain Armor
							moh(2, i(115640)),	-- Primal Gladiator's Chain Gauntlets
							moh(3, i(115641)),	-- Primal Gladiator's Chain Helm
							moh(3, i(115642)),	-- Primal Gladiator's Chain Leggings
							moh(2, i(115643)),	-- Primal Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138571, {	-- Ensemble: Primal Gladiator's Silk Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115677)),	-- Primal Gladiator's Silk Handguards
							moh(3, i(115678)),	-- Primal Gladiator's Silk Cowl
							moh(3, i(115679)),	-- Primal Gladiator's Silk Trousers
							moh(3, i(115680)),	-- Primal Gladiator's Silk Robe
							moh(2, i(115681)),	-- Primal Gladiator's Silk Amice
						}),
						cl(MONK, {
							moh(12, iensemble(138567, {	-- Ensemble: Primal Gladiator's Ironskin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115691)),	-- Primal Gladiator's Ironskin Gloves
							moh(3, i(115692)),	-- Primal Gladiator's Ironskin Helm
							moh(3, i(115693)),	-- Primal Gladiator's Ironskin Legguards
							moh(2, i(115694)),	-- Primal Gladiator's Ironskin Spaulders
							moh(3, i(115695)),	-- Primal Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138559, {	-- Ensemble: Primal Gladiator's Scaled Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115696)),	-- Primal Gladiator's Scaled Chestpiece
							moh(2, i(115697)),	-- Primal Gladiator's Scaled Gauntlets
							moh(3, i(115698)),	-- Primal Gladiator's Scaled Helm
							moh(3, i(115699)),	-- Primal Gladiator's Scaled Legguards
							moh(2, i(115700)),	-- Primal Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138573, {	-- Ensemble: Primal Gladiator's Satin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115710)),	-- Primal Gladiator's Satin Gloves
							moh(3, i(115711)),	-- Primal Gladiator's Satin Hood
							moh(3, i(115712)),	-- Primal Gladiator's Satin Leggings
							moh(3, i(115713)),	-- Primal Gladiator's Satin Robe
							moh(2, i(115714)),	-- Primal Gladiator's Satin Mantle
						}),
						cl(ROGUE, {
							moh(12, iensemble(138569, {	-- Ensemble: Primal Gladiator's Leather Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115715)),	-- Primal Gladiator's Leather Tunic
							moh(2, i(115716)),	-- Primal Gladiator's Leather Gloves
							moh(3, i(115717)),	-- Primal Gladiator's Leather Helm
							moh(3, i(115718)),	-- Primal Gladiator's Leather Legguards
							moh(2, i(115719)),	-- Primal Gladiator's Leather Spaulders
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138561, {	-- Ensemble: Primal Gladiator's Ringmail Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115720)),	-- Primal Gladiator's Ringmail Armor
							moh(2, i(115721)),	-- Primal Gladiator's Ringmail Gauntlets
							moh(3, i(115722)),	-- Primal Gladiator's Ringmail Helm
							moh(3, i(115723)),	-- Primal Gladiator's Ringmail Leggings
							moh(2, i(115724)),	-- Primal Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138575, {	-- Ensemble: Primal Gladiator's Felweave Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(115761)),	-- Primal Gladiator's Felweave Handguards
							moh(3, i(115762)),	-- Primal Gladiator's Felweave Cowl
							moh(3, i(115763)),	-- Primal Gladiator's Felweave Trousers
							moh(3, i(115764)),	-- Primal Gladiator's Felweave Raiment
							moh(2, i(115765)),	-- Primal Gladiator's Felweave Amice
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138555, {	-- Ensemble: Primal Gladiator's Plate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(115766)),	-- Primal Gladiator's Plate Chestpiece
							moh(2, i(115767)),	-- Primal Gladiator's Plate Gauntlets
							moh(3, i(115768)),	-- Primal Gladiator's Plate Helm
							moh(3, i(115769)),	-- Primal Gladiator's Plate Legguards
							moh(2, i(115770)),	-- Primal Gladiator's Plate Shoulders
						}),
						n(HEAD, {
							moh(3, i(115743)),	-- Primal Gladiator's Plate Visor
							moh(3, i(115738)),	-- Primal Gladiator's Plate Helmet
							moh(3, i(115790)),	-- Primal Gladiator's Coif
							moh(3, i(115780)),	-- Primal Gladiator's Helm
							moh(3, i(115785)),	-- Primal Gladiator's Headcover
							moh(3, i(115775)),	-- Primal Gladiator's Helm
							moh(3, i(115616)),	-- Primal Gladiator's Cowl of Cruelty
							moh(3, i(115611)),	-- Primal Gladiator's Hood of Prowess
						}),
						n(SHOULDER, {
							moh(2, i(115614)),	-- Primal Gladiator's Amice of Prowess
							moh(2, i(115745)),	-- Primal Gladiator's Plate Pauldrons
							moh(2, i(115740)),	-- Primal Gladiator's Shoulderplates
							moh(2, i(115792)),	-- Primal Gladiator's Pauldrons
							moh(2, i(115782)),	-- Primal Gladiator's Spaulders
							moh(2, i(115787)),	-- Primal Gladiator's Pauldrons
							moh(2, i(115777)),	-- Primal Gladiator's Spaulders
							moh(2, i(115619)),	-- Primal Gladiator's Mantle of Cruelty
						}),
						n(CHEST, {
							moh(3, i(115613)),	-- Primal Gladiator's Robes of Prowess
							moh(3, i(115618)),	-- Primal Gladiator's Raiment of Cruelty
							moh(3, i(115783)),	-- Primal Gladiator's Chestguard
							moh(3, i(115773)),	-- Primal Gladiator's Tunic
							moh(3, i(115778)),	-- Primal Gladiator's Armor
							moh(3, i(115788)),	-- Primal Gladiator's Chestguard
							moh(3, i(115736)),	-- Primal Gladiator's Plate Breastplate
							moh(3, i(115741)),	-- Primal Gladiator's Plate Chestguard
						}),
						n(HANDS, {
							moh(2, i(115742)),	-- Primal Gladiator's Plate Grips
							moh(2, i(115737)),	-- Primal Gladiator's Plate Gloves
							moh(2, i(115789)),	-- Primal Gladiator's Gloves
							moh(2, i(115779)),	-- Primal Gladiator's Gauntlets
							moh(2, i(115784)),	-- Primal Gladiator's Grips
							moh(2, i(115774)),	-- Primal Gladiator's Gloves
							moh(2, i(115615)),	-- Primal Gladiator's Handguards of Cruelty
							moh(2, i(115610)),	-- Primal Gladiator's Gloves of Prowess
						}),
						n(LEGS, {
							moh(3, i(115612)),	-- Primal Gladiator's Leggings of Prowess
							moh(3, i(115744)),	-- Primal Gladiator's Plate Leggings
							moh(3, i(115739)),	-- Primal Gladiator's Legplates
							moh(3, i(115791)),	-- Primal Gladiator's Leggings
							moh(3, i(115781)),	-- Primal Gladiator's Leggings
							moh(3, i(115786)),	-- Primal Gladiator's Leggings
							moh(3, i(115776)),	-- Primal Gladiator's Legguards
							moh(3, i(115617)),	-- Primal Gladiator's Trousers of Cruelty
						}),
						n(BACK, {
							moh(1, i(115651)),	-- Primal Gladiator's Drape of Cruelty
							moh(1, i(115652)),	-- Primal Gladiator's Drape of Prowess
							moh(1, i(115653)),	-- Primal Gladiator's Drape of Meditation
							moh(1, i(115654)),	-- Primal Gladiator's Drape of Contemplation
							moh(1, i(115604)),	-- Primal Gladiator's Cape of Cruelty
							moh(1, i(115605)),	-- Primal Gladiator's Cape of Prowess
							moh(1, i(115732)),	-- Primal Gladiator's Cloak of Cruelty
							moh(1, i(115733)),	-- Primal Gladiator's Cloak of Prowess
							moh(1, i(120100)),	-- Primal Gladiator's Cloak of Endurance
						}),
						n(WRIST, {
							moh(1, i(115626)),	-- Primal Gladiator's Cuffs of Prowess
							moh(1, i(115627)),	-- Primal Gladiator's Cuffs of Cruelty
							moh(1, i(115628)),	-- Primal Gladiator's Cuffs of Victory
							moh(1, i(115707)),	-- Primal Gladiator's Armplates of Cruelty
							moh(1, i(115708)),	-- Primal Gladiator's Armplates of Prowess
							moh(1, i(115709)),	-- Primal Gladiator's Armplates of Victory
							moh(1, i(115688)),	-- Primal Gladiator's Armbands of Prowess
							moh(1, i(115689)),	-- Primal Gladiator's Armbands of Cruelty
							moh(1, i(115690)),	-- Primal Gladiator's Armbands of Victory
							moh(1, i(115674)),	-- Primal Gladiator's Bindings of Cruelty
							moh(1, i(115675)),	-- Primal Gladiator's Bindings of Prowess
							moh(1, i(115676)),	-- Primal Gladiator's Bindings of Victory
						}),
						n(WAIST, {
							moh(1, i(115682)),	-- Primal Gladiator's Waistguard of Cruelty
							moh(1, i(115683)),	-- Primal Gladiator's Waistguard of Prowess
							moh(1, i(115684)),	-- Primal Gladiator's Waistguard of Victory
							moh(1, i(115668)),	-- Primal Gladiator's Belt of Prowess
							moh(1, i(115669)),	-- Primal Gladiator's Belt of Cruelty
							moh(1, i(115670)),	-- Primal Gladiator's Belt of Victory
							moh(1, i(115701)),	-- Primal Gladiator's Girdle of Cruelty
							moh(1, i(115702)),	-- Primal Gladiator's Girdle of Prowess
							moh(1, i(115703)),	-- Primal Gladiator's Girdle of Victory
							moh(1, i(115620)),	-- Primal Gladiator's Cord of Cruelty
							moh(1, i(115621)),	-- Primal Gladiator's Cord of Prowess
							moh(1, i(115622)),	-- Primal Gladiator's Cord of Victory
						}),
						n(FEET, {
							moh(2, i(115623)),	-- Primal Gladiator's Treads of Cruelty
							moh(2, i(115624)),	-- Primal Gladiator's Treads of Prowess
							moh(2, i(115625)),	-- Primal Gladiator's Treads of Victory
							moh(2, i(115704)),	-- Primal Gladiator's Warboots of Cruelty
							moh(2, i(115705)),	-- Primal Gladiator's Warboots of Prowess
							moh(2, i(115706)),	-- Primal Gladiator's Warboots of Victory
							moh(2, i(115671)),	-- Primal Gladiator's Boots of Cruelty
							moh(2, i(115672)),	-- Primal Gladiator's Boots of Prowess
							moh(2, i(115673)),	-- Primal Gladiator's Boots of Victory
							moh(2, i(115685)),	-- Primal Gladiator's Footguards of Cruelty
							moh(2, i(115686)),	-- Primal Gladiator's Footguards of Prowess
							moh(2, i(115687)),	-- Primal Gladiator's Footguards of Victory
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(115606)),	-- Primal Gladiator's Necklace of Cruelty
							un(REMOVED_FROM_GAME, i(115607)),	-- Primal Gladiator's Necklace of Prowess
							un(REMOVED_FROM_GAME, i(115655)),	-- Primal Gladiator's Pendant of Cruelty
							un(REMOVED_FROM_GAME, i(115656)),	-- Primal Gladiator's Pendant of Prowess
							un(REMOVED_FROM_GAME, i(115657)),	-- Primal Gladiator's Pendant of Meditation
							un(REMOVED_FROM_GAME, i(115658)),	-- Primal Gladiator's Pendant of Contemplation
							un(REMOVED_FROM_GAME, i(115734)),	-- Primal Gladiator's Choker of Cruelty
							un(REMOVED_FROM_GAME, i(115735)),	-- Primal Gladiator's Choker of Prowess
							un(REMOVED_FROM_GAME, i(120108)),	-- Primal Gladiator's Choker of Endurance
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(115772)),	-- Primal Gladiator's Signet of Ruthlessness
							un(REMOVED_FROM_GAME, i(115771)),	-- Primal Gladiator's Ring of Triumph
							un(REMOVED_FROM_GAME, i(115747)),	-- Primal Gladiator's Signet of Accuracy
							un(REMOVED_FROM_GAME, i(115746)),	-- Primal Gladiator's Signet of Cruelty
							un(REMOVED_FROM_GAME, i(115665)),	-- Primal Gladiator's Band of Contemplation
							un(REMOVED_FROM_GAME, i(115664)),	-- Primal Gladiator's Band of Meditation
							un(REMOVED_FROM_GAME, i(115663)),	-- Primal Gladiator's Band of Victory
							un(REMOVED_FROM_GAME, i(115662)),	-- Primal Gladiator's Band of Prowess
							un(REMOVED_FROM_GAME, i(115608)),	-- Primal Gladiator's Ring of Cruelty
							un(REMOVED_FROM_GAME, i(115609)),	-- Primal Gladiator's Ring of Prowess
							un(REMOVED_FROM_GAME, i(115661)),	-- Primal Gladiator's Band of Cruelty
							un(REMOVED_FROM_GAME, i(120104)),	-- Primal Gladiator's Signet of Endurance
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(122706)),	-- Primal Gladiator's Medallion of Adaptation
							un(REMOVED_FROM_GAME, i(115749)),	-- Primal Gladiator's Badge of Conquest
							un(REMOVED_FROM_GAME, i(115750)),	-- Primal Gladiator's Insignia of Conquest
							un(REMOVED_FROM_GAME, i(115751)),	-- Primal Gladiator's Emblem of Cruelty
							un(REMOVED_FROM_GAME, i(115752)),	-- Primal Gladiator's Emblem of Tenacity
							un(REMOVED_FROM_GAME, i(115753)),	-- Primal Gladiator's Emblem of Meditation
							un(REMOVED_FROM_GAME, i(115754)),	-- Primal Gladiator's Badge of Dominance
							un(REMOVED_FROM_GAME, i(115496)),	-- Primal Gladiator's Badge of Adaptation
							un(REMOVED_FROM_GAME, i(115755)),	-- Primal Gladiator's Insignia of Dominance
							un(REMOVED_FROM_GAME, i(115756)),	-- Primal Gladiator's Medallion of Cruelty
							un(REMOVED_FROM_GAME, i(115757)),	-- Primal Gladiator's Medallion of Tenacity
							un(REMOVED_FROM_GAME, i(115758)),	-- Primal Gladiator's Medallion of Meditation
							un(REMOVED_FROM_GAME, i(115759)),	-- Primal Gladiator's Badge of Victory
							un(REMOVED_FROM_GAME, i(115760)),	-- Primal Gladiator's Insignia of Victory
						}),
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					n(PVP_ASPIRANT, {
						cl(DEATHKNIGHT, {
							un(REMOVED_FROM_GAME, i(119974)),	-- Primal Aspirant's Dreadplate Chestpiece (H)
							un(REMOVED_FROM_GAME, i(119975)),	-- Primal Aspirant's Dreadplate Gauntlets (H)
							un(REMOVED_FROM_GAME, i(119976)),	-- Primal Aspirant's Dreadplate Helm (H)
							un(REMOVED_FROM_GAME, i(119977)),	-- Primal Aspirant's Dreadplate Legguards (H)
							un(REMOVED_FROM_GAME, i(119978)),	-- Primal Aspirant's Dreadplate Shoulders (H)
						}),
						cl(DRUID, {
							un(REMOVED_FROM_GAME, i(119979)),	-- Primal Aspirant's Dragonhide Gloves (H)
							un(REMOVED_FROM_GAME, i(119980)),	-- Primal Aspirant's Dragonhide Helm (H)
							un(REMOVED_FROM_GAME, i(119981)),	-- Primal Aspirant's Dragonhide Legguards (H)
							un(REMOVED_FROM_GAME, i(119982)),	-- Primal Aspirant's Dragonhide Tunic (H)
							un(REMOVED_FROM_GAME, i(119983)),	-- Primal Aspirant's Dragonhide Spaulders (H)
						}),
						cl(HUNTER, {
							un(REMOVED_FROM_GAME, i(119984)),	-- Primal Aspirant's Chain Armor (H)
							un(REMOVED_FROM_GAME, i(119985)),	-- Primal Aspirant's Chain Gauntlets (H)
							un(REMOVED_FROM_GAME, i(119988)),	-- Primal Aspirant's Chain Spaulders (H)
							un(REMOVED_FROM_GAME, i(119987)),	-- Primal Aspirant's Chain Leggings (H)
							un(REMOVED_FROM_GAME, i(119986)),	-- Primal Aspirant's Chain Helm (H)
						}),
						cl(MAGE, {
							un(REMOVED_FROM_GAME, i(119997)),	-- Primal Aspirant's Silk Handguards (H)
							un(REMOVED_FROM_GAME, i(119998)),	-- Primal Aspirant's Silk Cowl (H)
							un(REMOVED_FROM_GAME, i(119999)),	-- Primal Aspirant's Silk Trousers (H)
							un(REMOVED_FROM_GAME, i(120000)),	-- Primal Aspirant's Silk Robe (H)
							un(REMOVED_FROM_GAME, i(120001)),	-- Primal Aspirant's Silk Amice (H)
						}),
						cl(MONK, {
							un(REMOVED_FROM_GAME, i(120005)),	-- Primal Aspirant's Ironskin Gloves (H)
							un(REMOVED_FROM_GAME, i(120006)),	-- Primal Aspirant's Ironskin Helm (H)
							un(REMOVED_FROM_GAME, i(120007)),	-- Primal Aspirant's Ironskin Legguards (H)
							un(REMOVED_FROM_GAME, i(120008)),	-- Primal Aspirant's Ironskin Spaulders (H)
							un(REMOVED_FROM_GAME, i(120009)),	-- Primal Aspirant's Ironskin Tunic (H)
						}),
						cl(PALADIN, {
							un(REMOVED_FROM_GAME, i(120010)),	-- Primal Aspirant's Scaled Chestpiece (H)
							un(REMOVED_FROM_GAME, i(120011)),	-- Primal Aspirant's Scaled Gauntlets (H)
							un(REMOVED_FROM_GAME, i(120012)),	-- Primal Aspirant's Scaled Helm (H)
							un(REMOVED_FROM_GAME, i(120013)),	-- Primal Aspirant's Scaled Legguards (H)
							un(REMOVED_FROM_GAME, i(120014)),	-- Primal Aspirant's Scaled Shoulders (H)
						}),
						cl(PRIEST, {
							un(REMOVED_FROM_GAME, i(120018)),	-- Primal Aspirant's Satin Gloves (H)
							un(REMOVED_FROM_GAME, i(120019)),	-- Primal Aspirant's Satin Hood (H)
							un(REMOVED_FROM_GAME, i(120020)),	-- Primal Aspirant's Satin Leggings (H)
							un(REMOVED_FROM_GAME, i(120021)),	-- Primal Aspirant's Satin Robe (H)
							un(REMOVED_FROM_GAME, i(120022)),	-- Primal Aspirant's Satin Mantle (H)
						}),
						cl(ROGUE, {
							un(REMOVED_FROM_GAME, i(120026)),	-- Primal Aspirant's Leather Legguards (H)
							un(REMOVED_FROM_GAME, i(120024)),	-- Primal Aspirant's Leather Gloves (H)
							un(REMOVED_FROM_GAME, i(120023)),	-- Primal Aspirant's Leather Tunic (H)
							un(REMOVED_FROM_GAME, i(120025)),	-- Primal Aspirant's Leather Helm (H)
							un(REMOVED_FROM_GAME, i(120027)),	-- Primal Aspirant's Leather Spaulders (H)
						}),
						cl(SHAMAN, {
							un(REMOVED_FROM_GAME, i(120028)),	-- Primal Aspirant's Ringmail Armor (H)
							un(REMOVED_FROM_GAME, i(120029)),	-- Primal Aspirant's Ringmail Gauntlets (H)
							un(REMOVED_FROM_GAME, i(120030)),	-- Primal Aspirant's Ringmail Helm (H)
							un(REMOVED_FROM_GAME, i(120031)),	-- Primal Aspirant's Ringmail Leggings (H)
							un(REMOVED_FROM_GAME, i(120032)),	-- Primal Aspirant's Ringmail Spaulders (H)
						}),
						cl(WARLOCK, {
							un(REMOVED_FROM_GAME, i(120035)),	-- Primal Aspirant's Felweave Handguards (H)
							un(REMOVED_FROM_GAME, i(120036)),	-- Primal Aspirant's Felweave Cowl (H)
							un(REMOVED_FROM_GAME, i(120037)),	-- Primal Aspirant's Felweave Trousers (H)
							un(REMOVED_FROM_GAME, i(120038)),	-- Primal Aspirant's Felweave Raiment (H)
							un(REMOVED_FROM_GAME, i(120039)),	-- Primal Aspirant's Felweave Amice (H)
						}),
						cl(WARRIOR, {
							un(REMOVED_FROM_GAME, i(120040)),	-- Primal Aspirant's Plate Chestpiece (H)
							un(REMOVED_FROM_GAME, i(120041)),	-- Primal Aspirant's Plate Gauntlets (H)
							un(REMOVED_FROM_GAME, i(120042)),	-- Primal Aspirant's Plate Helm (H)
							un(REMOVED_FROM_GAME, i(120043)),	-- Primal Aspirant's Plate Legguards (H)
							un(REMOVED_FROM_GAME, i(120044)),	-- Primal Aspirant's Plate Shoulders (H)
						}),
						n(BACK, {
							un(REMOVED_FROM_GAME, i(120045)),	-- Primal Aspirant's Cape of Cruelty (H)
							un(REMOVED_FROM_GAME, i(120046)),	-- Primal Aspirant's Drape of Cruelty (H)
							un(REMOVED_FROM_GAME, i(120047)),	-- Primal Aspirant's Drape of Meditation (H)
							un(REMOVED_FROM_GAME, i(120048)),	-- Primal Aspirant's Cloak of Cruelty (H)
						}),
						n(WRIST, {
							un(REMOVED_FROM_GAME, i(119973)),	-- Primal Aspirant's Cuffs of Prowess (H)
							un(REMOVED_FROM_GAME, i(119996)),	-- Primal Aspirant's Bindings of Cruelty (H)
							un(REMOVED_FROM_GAME, i(120004)),	-- Primal Aspirant's Armbands of Prowess (H)
							un(REMOVED_FROM_GAME, i(120017)),	-- Primal Aspirant's Armplates of Cruelty (H)
						}),
						n(WAIST, {
							un(REMOVED_FROM_GAME, i(119971)),	-- Primal Aspirant's Cord of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119994)),	-- Primal Aspirant's Belt of Prowess (H)
							un(REMOVED_FROM_GAME, i(120002)),	-- Primal Aspirant's Waistguard of Cruelty (H)
							un(REMOVED_FROM_GAME, i(120015)),	-- Primal Aspirant's Girdle of Cruelty (H)
						}),
						n(FEET, {
							un(REMOVED_FROM_GAME, i(120003)),	-- Primal Aspirant's Footguards of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119995)),	-- Primal Aspirant's Boots of Cruelty (H)
							un(REMOVED_FROM_GAME, i(120016)),	-- Primal Aspirant's Warboots of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119972)),	-- Primal Aspirant's Treads of Cruelty (H)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(119968)),	-- Primal Aspirant's Necklace of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119989)),	-- Primal Aspirant's Pendant of Cruelty (H)
							un(REMOVED_FROM_GAME, i(120033)),	-- Primal Aspirant's Choker of Cruelty (H)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(119969)),	-- Primal Aspirant's Ring of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119970)),	-- Primal Aspirant's Ring of Prowess (H)
							un(REMOVED_FROM_GAME, i(119990)),	-- Primal Aspirant's Band of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119991)),	-- Primal Aspirant's Band of Prowess (H)
							un(REMOVED_FROM_GAME, i(119992)),	-- Primal Aspirant's Band of Meditation (H)
							un(REMOVED_FROM_GAME, i(119993)),	-- Primal Aspirant's Band of Contemplation (H)
							un(REMOVED_FROM_GAME, i(120034)),	-- Primal Aspirant's Signet of Cruelty (H)
							un(REMOVED_FROM_GAME, i(127117)),	-- Primal Aspirant's Signet of Accuracy (H)
						}),
					}),
					n(PVP_COMBATANT, {
						n(WEAPONS, {
							moh(80, iensemble(138626, {	-- Arsenal: Primal Combatant's Weapons (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119866)),	-- Primal Combatant's Barrier (H)
							moh(5, i(115067)),	-- Primal Combatant's Baton of Light (H)
							moh(5, i(115069)),	-- Primal Combatant's Battle Staff (H)
							moh(5, i(115134)),	-- Primal Combatant's Bonecracker (H)
							moh(5, i(115137)),	-- Primal Combatant's Bonegrinder (H)
							moh(5, i(115024)),	-- Primal Combatant's Cleaver (H)
							moh(5, i(115136)),	-- Primal Combatant's Decapitator (H)
							moh(2, i(119858)),	-- Primal Combatant's Endgame (H)
							moh(5, i(115070)),	-- Primal Combatant's Energy Staff (H)
							moh(5, i(115065)),	-- Primal Combatant's Gavel (H)
							moh(5, i(115138)),	-- Primal Combatant's Greatsword (H)
							moh(5, i(115132)),	-- Primal Combatant's Hacker (H)
							moh(5, i(115029)),	-- Primal Combatant's Longbow (H)
							moh(5, i(115032)),	-- Primal Combatant's Pike (H)
							moh(5, i(115027)),	-- Primal Combatant's Pummeler (H)
							moh(5, i(115028)),	-- Primal Combatant's Quickblade (H)
							moh(2, i(119865)),	-- Primal Combatant's Redoubt (H)
							moh(5, i(115133)),	-- Primal Combatant's Render (H)
							moh(2, i(119859)),	-- Primal Combatant's Reprieve (H)
							moh(5, i(115031)),	-- Primal Combatant's Rifle (H)
							moh(5, i(115026)),	-- Primal Combatant's Ripper (H)
							moh(5, i(115025)),	-- Primal Combatant's Shanker (H)
							moh(2, i(119925)),	-- Primal Combatant's Shield Wall (H)
							moh(5, i(115135)),	-- Primal Combatant's Slicer (H)
							moh(5, i(115064)),	-- Primal Combatant's Spellblade (H)
							moh(5, i(115033)),	-- Primal Combatant's Staff (H)
							moh(5, i(115068)),	-- Primal Combatant's Touch of Defeat (H)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138614, {	-- Ensemble: Primal Combatant's Dreadplate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(119839)),	-- Primal Combatant's Dreadplate Chestpiece (H)
							moh(2, i(119840)),	-- Primal Combatant's Dreadplate Gauntlets (H)
							moh(3, i(119841)),	-- Primal Combatant's Dreadplate Helm (H)
							moh(3, i(119842)),	-- Primal Combatant's Dreadplate Legguards (H)
							moh(2, i(119843)),	-- Primal Combatant's Dreadplate Shoulders (H)
						}),
						cl(DRUID, {
							moh(12, iensemble(138618, {	-- Ensemble: Primal Combatant's Dragonhide Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119844)),	-- Primal Combatant's Dragonhide Gloves (H)
							moh(3, i(119845)),	-- Primal Combatant's Dragonhide Helm (H)
							moh(3, i(119846)),	-- Primal Combatant's Dragonhide Legguards (H)
							moh(3, i(119847)),	-- Primal Combatant's Dragonhide Robes (H)
							moh(2, i(119848)),	-- Primal Combatant's Dragonhide Spaulders (H)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138580, {	-- Ensemble: Primal Combatant's Chain Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(119849)),	-- Primal Combatant's Chain Armor (H)
							moh(2, i(119850)),	-- Primal Combatant's Chain Gauntlets (H)
							moh(3, i(119851)),	-- Primal Combatant's Chain Helm (H)
							moh(3, i(119852)),	-- Primal Combatant's Chain Leggings (H)
							moh(2, i(119853)),	-- Primal Combatant's Chain Spaulders (H)
						}),
						cl(MAGE, {
							moh(12, iensemble(138582, {	-- Ensemble: Primal Combatant's Silk Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119877)),	-- Primal Combatant's Silk Amice (H)
							moh(3, i(119874)),	-- Primal Combatant's Silk Cowl (H)
							moh(2, i(119873)),	-- Primal Combatant's Silk Handguards (H)
							moh(3, i(119876)),	-- Primal Combatant's Silk Robe (H)
							moh(3, i(119875)),	-- Primal Combatant's Silk Trousers (H)
						}),
						cl(MONK, {
							moh(12, iensemble(138620, {	-- Ensemble: Primal Combatant's Ironskin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119884)),	-- Primal Combatant's Ironskin Gloves (H)
							moh(3, i(119885)),	-- Primal Combatant's Ironskin Helm (H)
							moh(3, i(119886)),	-- Primal Combatant's Ironskin Legguards (H)
							moh(2, i(119887)),	-- Primal Combatant's Ironskin Spaulders (H)
							moh(3, i(119888)),	-- Primal Combatant's Ironskin Tunic (H)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138616, {	-- Ensemble: Primal Combatant's Scaled Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(119889)),	-- Primal Combatant's Scaled Chestpiece (H)
							moh(2, i(119890)),	-- Primal Combatant's Scaled Gauntlets (H)
							moh(3, i(119891)),	-- Primal Combatant's Scaled Helm (H)
							moh(3, i(119892)),	-- Primal Combatant's Scaled Legguards (H)
							moh(2, i(119893)),	-- Primal Combatant's Scaled Shoulders (H)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138584, {	-- Ensemble: Primal Combatant's Satin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119900)),	-- Primal Combatant's Satin Gloves (H)
							moh(3, i(119901)),	-- Primal Combatant's Satin Hood (H)
							moh(3, i(119902)),	-- Primal Combatant's Satin Leggings (H)
							moh(2, i(119904)),	-- Primal Combatant's Satin Mantle (H)
							moh(3, i(119903)),	-- Primal Combatant's Satin Robe (H)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138622, {	-- Ensemble: Primal Combatant's Leather Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119906)),	-- Primal Combatant's Leather Gloves (H)
							moh(3, i(119907)),	-- Primal Combatant's Leather Helm (H)
							moh(3, i(119908)),	-- Primal Combatant's Leather Legguards (H)
							moh(2, i(119909)),	-- Primal Combatant's Leather Spaulders (H)
							moh(3, i(119905)),	-- Primal Combatant's Leather Tunic (H)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138578, {	-- Ensemble: Primal Combatant's Ringmail Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(119910)),	-- Primal Combatant's Ringmail Armor (H)
							moh(2, i(119911)),	-- Primal Combatant's Ringmail Gauntlets (H)
							moh(3, i(119912)),	-- Primal Combatant's Ringmail Helm (H)
							moh(3, i(119913)),	-- Primal Combatant's Ringmail Leggings (H)
							moh(2, i(119915)),	-- Primal Combatant's Ringmail Spaulders (H)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138586, {	-- Ensemble: Primal Combatant's Felweave Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(119942)),	-- Primal Combatant's Felweave Amice (H)
							moh(3, i(119939)),	-- Primal Combatant's Felweave Cowl (H)
							moh(2, i(119938)),	-- Primal Combatant's Felweave Handguards (H)
							moh(3, i(119941)),	-- Primal Combatant's Felweave Raiment (H)
							moh(3, i(119940)),	-- Primal Combatant's Felweave Trousers (H)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138612, {	-- Ensemble: Primal Combatant's Plate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(119943)),	-- Primal Combatant's Plate Chestpiece (H)
							moh(2, i(119944)),	-- Primal Combatant's Plate Gauntlets (H)
							moh(3, i(119945)),	-- Primal Combatant's Plate Helm (H)
							moh(3, i(119946)),	-- Primal Combatant's Plate Legguards (H)
							moh(2, i(119947)),	-- Primal Combatant's Plate Shoulders (H)
						}),
						n(HEAD, {
							moh(3, i(119829)),	-- Primal Combatant's Hood of Prowess (H)
							moh(3, i(119952)),	-- Primal Combatant's Helm (H)
							moh(3, i(119957)),	-- Primal Combatant's Helm (H)
							moh(3, i(119920)),	-- Primal Combatant's Plate Helmet (H)
						}),
						n(SHOULDER, {
							moh(2, i(119832)),	-- Primal Combatant's Amice of Prowess (H)
							moh(2, i(119954)),	-- Primal Combatant's Spaulders (H)
							moh(2, i(119959)),	-- Primal Combatant's Spaulders (H)
							moh(2, i(119922)),	-- Primal Combatant's Shoulderplates (H)
						}),
						n(BACK, {
							moh(1, i(119960)),	-- Primal Combatant's Cape of Cruelty (H)
							moh(1, i(119961)),	-- Primal Combatant's Cape of Prowess (H)
							moh(1, i(119966)),	-- Primal Combatant's Cloak of Cruelty (H)
							moh(1, i(119967)),	-- Primal Combatant's Cloak of Prowess (H)
							moh(1, i(119965)),	-- Primal Combatant's Drape of Contemplation (H)
							moh(1, i(119962)),	-- Primal Combatant's Drape of Cruelty (H)
							moh(1, i(119964)),	-- Primal Combatant's Drape of Meditation (H)
							moh(1, i(119963)),	-- Primal Combatant's Drape of Prowess (H)
						}),
						n(CHEST, {
							moh(3, i(119831)),	-- Primal Combatant's Robes of Prowess (H)
							moh(3, i(119950)),	-- Primal Combatant's Tunic (H)
							moh(3, i(119955)),	-- Primal Combatant's Armor (H)
							moh(3, i(119918)),	-- Primal Combatant's Plate Breastplate (H)
						}),
						n(WRIST, {
							moh(1, i(119838)),	-- Primal Combatant's Cuffs of Cruelty (H)
							moh(1, i(119837)),	-- Primal Combatant's Cuffs of Prowess (H)
							moh(1, i(119871)),	-- Primal Combatant's Bindings of Cruelty (H)
							moh(1, i(119872)),	-- Primal Combatant's Bindings of Prowess (H)
							moh(1, i(119883)),	-- Primal Combatant's Armbands of Cruelty (H)
							moh(1, i(119882)),	-- Primal Combatant's Armbands of Prowess (H)
							moh(1, i(119898)),	-- Primal Combatant's Armplates of Cruelty (H)
							moh(1, i(119899)),	-- Primal Combatant's Armplates of Prowess (H)
						}),
						n(HANDS, {
							moh(2, i(119828)),	-- Primal Combatant's Gloves of Prowess (H)
							moh(2, i(119951)),	-- Primal Combatant's Gloves (H)
							moh(2, i(119956)),	-- Primal Combatant's Gauntlets (H)
							moh(2, i(119919)),	-- Primal Combatant's Plate Gloves (H)
						}),
						n(WAIST, {
							moh(1, i(119833)),	-- Primal Combatant's Cord of Cruelty (H)
							moh(1, i(119834)),	-- Primal Combatant's Cord of Prowess (H)
							moh(1, i(119868)),	-- Primal Combatant's Belt of Cruelty (H)
							moh(1, i(119867)),	-- Primal Combatant's Belt of Prowess (H)
							moh(1, i(119878)),	-- Primal Combatant's Waistguard of Cruelty (H)
							moh(1, i(119879)),	-- Primal Combatant's Waistguard of Prowess (H)
							moh(1, i(119894)),	-- Primal Combatant's Girdle of Cruelty (H)
							moh(1, i(119895)),	-- Primal Combatant's Girdle of Prowess (H)
						}),
						n(LEGS, {
							moh(3, i(119830)),	-- Primal Combatant's Leggings of Prowess (H)
							moh(3, i(119953)),	-- Primal Combatant's Legguards (H)
							moh(3, i(119958)),	-- Primal Combatant's Leggings (H)
							moh(3, i(119921)),	-- Primal Combatant's Legplates (H)
						}),
						n(FEET, {
							moh(2, i(119835)),	-- Primal Combatant's Treads of Cruelty (H)
							moh(2, i(119836)),	-- Primal Combatant's Treads of Prowess (H)
							moh(2, i(119869)),	-- Primal Combatant's Boots of Cruelty (H)
							moh(2, i(119870)),	-- Primal Combatant's Boots of Prowess (H)
							moh(2, i(119880)),	-- Primal Combatant's Footguards of Cruelty (H)
							moh(2, i(119881)),	-- Primal Combatant's Footguards of Prowess (H)
							moh(2, i(119896)),	-- Primal Combatant's Warboots of Cruelty (H)
							moh(2, i(119897)),	-- Primal Combatant's Warboots of Prowess (H)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(119916)),	-- Primal Combatant's Choker of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119917)),	-- Primal Combatant's Choker of Prowess (H)
							un(REMOVED_FROM_GAME, i(119824)),	-- Primal Combatant's Necklace of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119825)),	-- Primal Combatant's Necklace of Prowess (H)
							un(REMOVED_FROM_GAME, i(119857)),	-- Primal Combatant's Pendant of Contemplation (H)
							un(REMOVED_FROM_GAME, i(119854)),	-- Primal Combatant's Pendant of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119856)),	-- Primal Combatant's Pendant of Meditation (H)
							un(REMOVED_FROM_GAME, i(119855)),	-- Primal Combatant's Pendant of Prowess (H)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(119864)),	-- Primal Combatant's Band of Contemplation (H)
							un(REMOVED_FROM_GAME, i(119860)),	-- Primal Combatant's Band of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119863)),	-- Primal Combatant's Band of Meditation (H)
							un(REMOVED_FROM_GAME, i(119861)),	-- Primal Combatant's Band of Prowess (H)
							un(REMOVED_FROM_GAME, i(119862)),	-- Primal Combatant's Band of Victory (H)
							un(REMOVED_FROM_GAME, i(119826)),	-- Primal Combatant's Ring of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119827)),	-- Primal Combatant's Ring of Prowess (H)
							un(REMOVED_FROM_GAME, i(119948)),	-- Primal Combatant's Ring of Triumph (H)
							un(REMOVED_FROM_GAME, i(119924)),	-- Primal Combatant's Signet of Accuracy (H)
							un(REMOVED_FROM_GAME, i(119923)),	-- Primal Combatant's Signet of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119949)),	-- Primal Combatant's Signet of Ruthlessness (H)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(120049)),	-- Primal Combatant's Badge of Adaptation (H)
							un(REMOVED_FROM_GAME, i(119926)),	-- Primal Combatant's Badge of Conquest (H)
							un(REMOVED_FROM_GAME, i(119931)),	-- Primal Combatant's Badge of Dominance (H)
							un(REMOVED_FROM_GAME, i(119936)),	-- Primal Combatant's Badge of Victory (H)
							un(REMOVED_FROM_GAME, i(119928)),	-- Primal Combatant's Emblem of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119930)),	-- Primal Combatant's Emblem of Meditation (H)
							un(REMOVED_FROM_GAME, i(119929)),	-- Primal Combatant's Emblem of Tenacity (H)
							un(REMOVED_FROM_GAME, i(119927)),	-- Primal Combatant's Insignia of Conquest (H)
							un(REMOVED_FROM_GAME, i(119932)),	-- Primal Combatant's Insignia of Dominance (H)
							un(REMOVED_FROM_GAME, i(119937)),	-- Primal Combatant's Insignia of Victory (H)
							un(REMOVED_FROM_GAME, i(122709)),	-- Primal Combatant's Medallion of Adaptation (H)
							un(REMOVED_FROM_GAME, i(119933)),	-- Primal Combatant's Medallion of Cruelty (H)
							un(REMOVED_FROM_GAME, i(119935)),	-- Primal Combatant's Medallion of Meditation (H)
							un(REMOVED_FROM_GAME, i(119934)),	-- Primal Combatant's Medallion of Tenacity (H)
						}),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(138632, {	-- Arsenal: Primal Gladiator's Weapons
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(5, i(111067)),	-- Primal Gladiator's Cleaver
							moh(5, i(111068)),	-- Primal Gladiator's Shanker
							moh(5, i(111069)),	-- Primal Gladiator's Ripper
							moh(5, i(111070)),	-- Primal Gladiator's Pummeler
							moh(5, i(111071)),	-- Primal Gladiator's Quickblade
							moh(5, i(111072)),	-- Primal Gladiator's Longbow
							moh(5, i(111074)),	-- Primal Gladiator's Rifle
							moh(5, i(111075)),	-- Primal Gladiator's Pike
							moh(5, i(111117)),	-- Primal Gladiator's Spellblade
							moh(5, i(111118)),	-- Primal Gladiator's Gavel
							moh(5, i(111119)),	-- Primal Gladiator's Mageblade
							moh(5, i(111120)),	-- Primal Gladiator's Baton of Light
							moh(5, i(111121)),	-- Primal Gladiator's Touch of Defeat
							moh(5, i(111122)),	-- Primal Gladiator's Battle Staff
							moh(5, i(111123)),	-- Primal Gladiator's Energy Staff
							moh(2, i(111132)),	-- Primal Gladiator's Endgame
							moh(2, i(111133)),	-- Primal Gladiator's Reprieve
							moh(2, i(111139)),	-- Primal Gladiator's Redoubt
							moh(2, i(111140)),	-- Primal Gladiator's Barrier
							moh(5, i(111198)),	-- Primal Gladiator's Hacker
							moh(5, i(111199)),	-- Primal Gladiator's Render
							moh(5, i(111200)),	-- Primal Gladiator's Bonecracker
							moh(5, i(111201)),	-- Primal Gladiator's Slicer
							moh(5, i(111202)),	-- Primal Gladiator's Decapitator
							moh(5, i(111203)),	-- Primal Gladiator's Bonegrinder
							moh(5, i(111204)),	-- Primal Gladiator's Greatsword
							moh(2, i(111221)),	-- Primal Gladiator's Shield Wall
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138558, {	-- Ensemble: Primal Gladiator's Dreadplate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(111102)),	-- Primal Gladiator's Dreadplate Chestpiece
							moh(2, i(111103)),	-- Primal Gladiator's Dreadplate Gauntlets
							moh(3, i(111104)),	-- Primal Gladiator's Dreadplate Helm
							moh(3, i(111105)),	-- Primal Gladiator's Dreadplate Legguards
							moh(2, i(111106)),	-- Primal Gladiator's Dreadplate Shoulders
						}),
						cl(DRUID, {
							moh(12, iensemble(138566, {	-- Ensemble: Primal Gladiator's Dragonhide Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(111107)),	-- Primal Gladiator's Dragonhide Gloves
							moh(3, i(111108)),	-- Primal Gladiator's Dragonhide Helm
							moh(3, i(111109)),	-- Primal Gladiator's Dragonhide Legguards
							moh(3, i(111110)),	-- Primal Gladiator's Dragonhide Robes
							moh(2, i(111111)),	-- Primal Gladiator's Dragonhide Spaulders
						}),
						cl(HUNTER, {
							moh(12, iensemble(138564, {	-- Ensemble: Primal Gladiator's Chain Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(111112)),	-- Primal Gladiator's Chain Armor
							moh(2, i(111113)),	-- Primal Gladiator's Chain Gauntlets
							moh(3, i(111114)),	-- Primal Gladiator's Chain Helm
							moh(3, i(111115)),	-- Primal Gladiator's Chain Leggings
							moh(2, i(111116)),	-- Primal Gladiator's Chain Spaulders
						}),
						cl(MAGE, {
							moh(12, iensemble(138572, {	-- Ensemble: Primal Gladiator's Silk Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(111150)),	-- Primal Gladiator's Silk Handguards
							moh(3, i(111151)),	-- Primal Gladiator's Silk Cowl
							moh(3, i(111152)),	-- Primal Gladiator's Silk Trousers
							moh(3, i(111153)),	-- Primal Gladiator's Silk Robe
							moh(2, i(111154)),	-- Primal Gladiator's Silk Amice
						}),
						cl(MONK, {
							moh(12, iensemble(138568, {	-- Ensemble: Primal Gladiator's Ironskin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(111164)),	-- Primal Gladiator's Ironskin Gloves
							moh(3, i(111165)),	-- Primal Gladiator's Ironskin Helm
							moh(3, i(111166)),	-- Primal Gladiator's Ironskin Legguards
							moh(2, i(111167)),	-- Primal Gladiator's Ironskin Spaulders
							moh(3, i(111168)),	-- Primal Gladiator's Ironskin Tunic
						}),
						cl(PALADIN, {
							moh(12, iensemble(138560, {	-- Ensemble: Primal Gladiator's Scaled Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(111169)),	-- Primal Gladiator's Scaled Chestpiece
							moh(2, i(111170)),	-- Primal Gladiator's Scaled Gauntlets
							moh(3, i(111171)),	-- Primal Gladiator's Scaled Helm
							moh(3, i(111172)),	-- Primal Gladiator's Scaled Legguards
							moh(2, i(111173)),	-- Primal Gladiator's Scaled Shoulders
						}),
						cl(PRIEST, {
							moh(12, iensemble(138574, {	-- Ensemble: Primal Gladiator's Satin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(111183)),	-- Primal Gladiator's Satin Gloves
							moh(3, i(111184)),	-- Primal Gladiator's Satin Hood
							moh(3, i(111185)),	-- Primal Gladiator's Satin Leggings
							moh(3, i(111186)),	-- Primal Gladiator's Satin Robe
							moh(2, i(111187)),	-- Primal Gladiator's Satin Mantle
						}),
						cl(ROGUE, {
							moh(12, iensemble(138570, {	-- Ensemble: Primal Gladiator's Leather Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(111188)),	-- Primal Gladiator's Leather Tunic
							moh(2, i(111189)),	-- Primal Gladiator's Leather Gloves
							moh(3, i(111190)),	-- Primal Gladiator's Leather Helm
							moh(3, i(111191)),	-- Primal Gladiator's Leather Legguards
							moh(2, i(111192)),	-- Primal Gladiator's Leather Spaulders
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138562, {	-- Ensemble: Primal Gladiator's Ringmail Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(111193)),	-- Primal Gladiator's Ringmail Armor
							moh(2, i(111194)),	-- Primal Gladiator's Ringmail Gauntlets
							moh(3, i(111195)),	-- Primal Gladiator's Ringmail Helm
							moh(3, i(111196)),	-- Primal Gladiator's Ringmail Leggings
							moh(2, i(111197)),	-- Primal Gladiator's Ringmail Spaulders
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138576, {	-- Ensemble: Primal Gladiator's Felweave Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(111234)),	-- Primal Gladiator's Felweave Handguards
							moh(3, i(111235)),	-- Primal Gladiator's Felweave Cowl
							moh(3, i(111236)),	-- Primal Gladiator's Felweave Trousers
							moh(3, i(111237)),	-- Primal Gladiator's Felweave Raiment
							moh(2, i(111238)),	-- Primal Gladiator's Felweave Amice
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138556, {	-- Ensemble: Primal Gladiator's Plate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(111239)),	-- Primal Gladiator's Plate Chestpiece
							moh(2, i(111240)),	-- Primal Gladiator's Plate Gauntlets
							moh(3, i(111241)),	-- Primal Gladiator's Plate Helm
							moh(3, i(111242)),	-- Primal Gladiator's Plate Legguards
							moh(2, i(111243)),	-- Primal Gladiator's Plate Shoulders
						}),
						n(BACK, {
							moh(1, i(111205)),	-- Primal Gladiator's Cloak of Cruelty
							moh(1, i(111206)),	-- Primal Gladiator's Cloak of Prowess
							moh(1, i(120099)),	-- Primal Gladiator's Cloak of Endurance
							moh(1, i(111077)),	-- Primal Gladiator's Cape of Cruelty
							moh(1, i(111078)),	-- Primal Gladiator's Cape of Prowess
							moh(1, i(111124)),	-- Primal Gladiator's Drape of Cruelty
							moh(1, i(111125)),	-- Primal Gladiator's Drape of Prowess
							moh(1, i(111126)),	-- Primal Gladiator's Drape of Meditation
							moh(1, i(111127)),	-- Primal Gladiator's Drape of Contemplation
						}),
						n(HEAD, {
							moh(3, i(111216)),	-- Primal Gladiator's Plate Visor
							moh(3, i(111211)),	-- Primal Gladiator's Plate Helmet
							moh(3, i(111290)),	-- Primal Gladiator's Coif
							moh(3, i(111280)),	-- Primal Gladiator's Helm
							moh(3, i(111285)),	-- Primal Gladiator's Headcover
							moh(3, i(111275)),	-- Primal Gladiator's Helm
							moh(3, i(111089)),	-- Primal Gladiator's Cowl of Cruelty
							moh(3, i(111084)),	-- Primal Gladiator's Hood of Prowess
						}),
						n(SHOULDER, {
							moh(2, i(111218)),	-- Primal Gladiator's Plate Pauldrons
							moh(2, i(111213)),	-- Primal Gladiator's Shoulderplates
							moh(2, i(111292)),	-- Primal Gladiator's Pauldrons
							moh(2, i(111282)),	-- Primal Gladiator's Spaulders
							moh(2, i(111287)),	-- Primal Gladiator's Pauldrons
							moh(2, i(111277)),	-- Primal Gladiator's Spaulders
							moh(2, i(111092)),	-- Primal Gladiator's Mantle of Cruelty
							moh(2, i(111087)),	-- Primal Gladiator's Amice of Prowess
						}),
						n(CHEST, {
							moh(3, i(111214)),	-- Primal Gladiator's Plate Chestguard
							moh(3, i(111209)),	-- Primal Gladiator's Plate Breastplate
							moh(3, i(111288)),	-- Primal Gladiator's Chestguard
							moh(3, i(111278)),	-- Primal Gladiator's Armor
							moh(3, i(111283)),	-- Primal Gladiator's Chestguard
							moh(3, i(111273)),	-- Primal Gladiator's Tunic
							moh(3, i(111091)),	-- Primal Gladiator's Raiment of Cruelty
							moh(3, i(111086)),	-- Primal Gladiator's Robes of Prowess
						}),
						n(HANDS, {
							moh(2, i(111083)),	-- Primal Gladiator's Gloves of Prowess
							moh(2, i(111088)),	-- Primal Gladiator's Handguards of Cruelty
							moh(2, i(111274)),	-- Primal Gladiator's Gloves
							moh(2, i(111284)),	-- Primal Gladiator's Grips
							moh(2, i(111279)),	-- Primal Gladiator's Gauntlets
							moh(2, i(111289)),	-- Primal Gladiator's Gloves
							moh(2, i(111210)),	-- Primal Gladiator's Plate Gloves
							moh(2, i(111215)),	-- Primal Gladiator's Plate Grips
						}),
						n(WRIST, {
							moh(1, i(111180)),	-- Primal Gladiator's Armplates of Cruelty
							moh(1, i(111181)),	-- Primal Gladiator's Armplates of Prowess
							moh(1, i(111182)),	-- Primal Gladiator's Armplates of Victory
							moh(1, i(111161)),	-- Primal Gladiator's Armbands of Prowess
							moh(1, i(111162)),	-- Primal Gladiator's Armbands of Cruelty
							moh(1, i(111163)),	-- Primal Gladiator's Armbands of Victory
							moh(1, i(111147)),	-- Primal Gladiator's Bindings of Cruelty
							moh(1, i(111148)),	-- Primal Gladiator's Bindings of Prowess
							moh(1, i(111149)),	-- Primal Gladiator's Bindings of Victory
							moh(1, i(111099)),	-- Primal Gladiator's Cuffs of Prowess
							moh(1, i(111100)),	-- Primal Gladiator's Cuffs of Cruelty
							moh(1, i(111101)),	-- Primal Gladiator's Cuffs of Victory
						}),
						n(WAIST, {
							moh(1, i(111141)),	-- Primal Gladiator's Belt of Prowess
							moh(1, i(111142)),	-- Primal Gladiator's Belt of Cruelty
							moh(1, i(111143)),	-- Primal Gladiator's Belt of Victory
							moh(1, i(111093)),	-- Primal Gladiator's Cord of Cruelty
							moh(1, i(111094)),	-- Primal Gladiator's Cord of Prowess
							moh(1, i(111095)),	-- Primal Gladiator's Cord of Victory
							moh(1, i(111155)),	-- Primal Gladiator's Waistguard of Cruelty
							moh(1, i(111156)),	-- Primal Gladiator's Waistguard of Prowess
							moh(1, i(111157)),	-- Primal Gladiator's Waistguard of Victory
							moh(1, i(111174)),	-- Primal Gladiator's Girdle of Cruelty
							moh(1, i(111175)),	-- Primal Gladiator's Girdle of Prowess
							moh(1, i(111176)),	-- Primal Gladiator's Girdle of Victory
						}),
						n(LEGS, {
							moh(3, i(111276)),	-- Primal Gladiator's Legguards
							moh(3, i(111085)),	-- Primal Gladiator's Leggings of Prowess
							moh(3, i(111090)),	-- Primal Gladiator's Trousers of Cruelty
							moh(3, i(111286)),	-- Primal Gladiator's Leggings
							moh(3, i(111281)),	-- Primal Gladiator's Leggings
							moh(3, i(111291)),	-- Primal Gladiator's Leggings
							moh(3, i(111212)),	-- Primal Gladiator's Legplates
							moh(3, i(111217)),	-- Primal Gladiator's Plate Leggings
						}),
						n(FEET, {
							moh(2, i(111144)),	-- Primal Gladiator's Boots of Cruelty
							moh(2, i(111145)),	-- Primal Gladiator's Boots of Prowess
							moh(2, i(111146)),	-- Primal Gladiator's Boots of Victory
							moh(2, i(111096)),	-- Primal Gladiator's Treads of Cruelty
							moh(2, i(111097)),	-- Primal Gladiator's Treads of Prowess
							moh(2, i(111098)),	-- Primal Gladiator's Treads of Victory
							moh(2, i(111158)),	-- Primal Gladiator's Footguards of Cruelty
							moh(2, i(111159)),	-- Primal Gladiator's Footguards of Prowess
							moh(2, i(111160)),	-- Primal Gladiator's Footguards of Victory
							moh(2, i(111177)),	-- Primal Gladiator's Warboots of Cruelty
							moh(2, i(111178)),	-- Primal Gladiator's Warboots of Prowess
							moh(2, i(111179)),	-- Primal Gladiator's Warboots of Victory
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(111079)),	-- Primal Gladiator's Necklace of Cruelty
							un(REMOVED_FROM_GAME, i(111080)),	-- Primal Gladiator's Necklace of Prowess
							un(REMOVED_FROM_GAME, i(111128)),	-- Primal Gladiator's Pendant of Cruelty
							un(REMOVED_FROM_GAME, i(111129)),	-- Primal Gladiator's Pendant of Prowess
							un(REMOVED_FROM_GAME, i(111130)),	-- Primal Gladiator's Pendant of Meditation
							un(REMOVED_FROM_GAME, i(111131)),	-- Primal Gladiator's Pendant of Contemplation
							un(REMOVED_FROM_GAME, i(111207)),	-- Primal Gladiator's Choker of Cruelty
							un(REMOVED_FROM_GAME, i(111208)),	-- Primal Gladiator's Choker of Prowess
							un(REMOVED_FROM_GAME, i(120107)),	-- Primal Gladiator's Choker of Endurance
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(111081)),	-- Primal Gladiator's Ring of Cruelty
							un(REMOVED_FROM_GAME, i(111082)),	-- Primal Gladiator's Ring of Prowess
							un(REMOVED_FROM_GAME, i(111134)),	-- Primal Gladiator's Band of Cruelty
							un(REMOVED_FROM_GAME, i(111135)),	-- Primal Gladiator's Band of Prowess
							un(REMOVED_FROM_GAME, i(111136)),	-- Primal Gladiator's Band of Victory
							un(REMOVED_FROM_GAME, i(111137)),	-- Primal Gladiator's Band of Meditation
							un(REMOVED_FROM_GAME, i(111138)),	-- Primal Gladiator's Band of Contemplation
							un(REMOVED_FROM_GAME, i(111219)),	-- Primal Gladiator's Signet of Cruelty
							un(REMOVED_FROM_GAME, i(111220)),	-- Primal Gladiator's Signet of Accuracy
							un(REMOVED_FROM_GAME, i(111271)),	-- Primal Gladiator's Ring of Triumph
							un(REMOVED_FROM_GAME, i(120103)),	-- Primal Gladiator's Signet of Endurance
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(111272)),	-- Primal Gladiator's Signet of Ruthlessness
							un(REMOVED_FROM_GAME, i(111222)),	-- Primal Gladiator's Badge of Conquest
							un(REMOVED_FROM_GAME, i(111223)),	-- Primal Gladiator's Insignia of Conquest
							un(REMOVED_FROM_GAME, i(111224)),	-- Primal Gladiator's Emblem of Cruelty
							un(REMOVED_FROM_GAME, i(111225)),	-- Primal Gladiator's Emblem of Tenacity
							un(REMOVED_FROM_GAME, i(111226)),	-- Primal Gladiator's Emblem of Meditation
							un(REMOVED_FROM_GAME, i(111227)),	-- Primal Gladiator's Badge of Dominance
							un(REMOVED_FROM_GAME, i(111228)),	-- Primal Gladiator's Insignia of Dominance
							un(REMOVED_FROM_GAME, i(111229)),	-- Primal Gladiator's Medallion of Cruelty
							un(REMOVED_FROM_GAME, i(111230)),	-- Primal Gladiator's Medallion of Tenacity
							un(REMOVED_FROM_GAME, i(111231)),	-- Primal Gladiator's Medallion of Meditation
							un(REMOVED_FROM_GAME, i(111232)),	-- Primal Gladiator's Badge of Victory
							un(REMOVED_FROM_GAME, i(111233)),	-- Primal Gladiator's Insignia of Victory
							un(REMOVED_FROM_GAME, i(115495)),	-- Primal Gladiator's Badge of Adaptation
							un(REMOVED_FROM_GAME, i(122707)),	-- Primal Gladiator's Medallion of Adaptation
						}),
					}),
				},
			}),
			n(PVP_ELITE, {
				un(REMOVED_FROM_GAME, i(115979)),	-- Primal Gladiator's Greatcloak
				un(REMOVED_FROM_GAME, i(115972)),	-- Primal Gladiator's Tabard
				n(WEAPONS, {
					un(REMOVED_FROM_GAME, i(115948)),	-- Primal Gladiator's Ripper
					un(REMOVED_FROM_GAME, i(115949)),	-- Primal Gladiator's Render
					un(REMOVED_FROM_GAME, i(115818)),	-- Primal Gladiator's Bonegrinder
					un(REMOVED_FROM_GAME, i(115836)),	-- Primal Gladiator's Heavy Crossbow
					un(REMOVED_FROM_GAME, i(115817)),	-- Primal Gladiator's Decapitator
					un(REMOVED_FROM_GAME, i(115819)),	-- Primal Gladiator's Greatsword
					un(REMOVED_FROM_GAME, i(115820)),	-- Primal Gladiator's Cleaver
					un(REMOVED_FROM_GAME, i(115952)),	-- Primal Gladiator's Hacker
					un(REMOVED_FROM_GAME, i(115823)),	-- Primal Gladiator's Longbow
					un(REMOVED_FROM_GAME, i(115910)),	-- Primal Gladiator's Pike
					un(REMOVED_FROM_GAME, i(115862)),	-- Primal Gladiator's Rifle
					un(REMOVED_FROM_GAME, i(115832)),	-- Primal Gladiator's Spellblade
					un(REMOVED_FROM_GAME, i(115947)),	-- Primal Gladiator's Shanker
					un(REMOVED_FROM_GAME, i(115830)),	-- Primal Gladiator's Endgame
					un(REMOVED_FROM_GAME, i(115834)),	-- Primal Gladiator's Reprieve
					un(REMOVED_FROM_GAME, i(115822)),	-- Primal Gladiator's Quickblade
					un(REMOVED_FROM_GAME, i(115950)),	-- Primal Gladiator's Mageblade
					un(REMOVED_FROM_GAME, i(115954)),	-- Primal Gladiator's Slicer
					un(REMOVED_FROM_GAME, i(115833)),	-- Primal Gladiator's Battle Staff
					un(REMOVED_FROM_GAME, i(115865)),	-- Primal Gladiator's Energy Staff
					un(REMOVED_FROM_GAME, i(115821)),	-- Primal Gladiator's Pummeler
					un(REMOVED_FROM_GAME, i(115863)),	-- Primal Gladiator's Gavel
					un(REMOVED_FROM_GAME, i(115953)),	-- Primal Gladiator's Bonecracker
					un(REMOVED_FROM_GAME, i(115831)),	-- Primal Gladiator's Barrier
					un(REMOVED_FROM_GAME, i(115864)),	-- Primal Gladiator's Redoubt
					un(REMOVED_FROM_GAME, i(115955)),	-- Primal Gladiator's Shield Wall
					un(REMOVED_FROM_GAME, i(115835)),	-- Primal Gladiator's Touch of Defeat
					un(REMOVED_FROM_GAME, i(115951)),	-- Primal Gladiator's Baton of Light
				}),
				cl(DEATHKNIGHT, {
					un(REMOVED_FROM_GAME, i(115837)),	-- Primal Gladiator's Dreadplate Chestpiece
					un(REMOVED_FROM_GAME, i(115838)),	-- Primal Gladiator's Dreadplate Gauntlets
					un(REMOVED_FROM_GAME, i(115906)),	-- Primal Gladiator's Dreadplate Girdle
					un(REMOVED_FROM_GAME, i(115839)),	-- Primal Gladiator's Dreadplate Helm
					un(REMOVED_FROM_GAME, i(115840)),	-- Primal Gladiator's Dreadplate Legguards
					un(REMOVED_FROM_GAME, i(115841)),	-- Primal Gladiator's Dreadplate Shoulders
					un(REMOVED_FROM_GAME, i(115909)),	-- Primal Gladiator's Dreadplate Warboots
				}),
				cl(DRUID, {
					un(REMOVED_FROM_GAME, i(115971)),	-- Primal Gladiator's Dragonhide Belt
					un(REMOVED_FROM_GAME, i(115970)),	-- Primal Gladiator's Dragonhide Footguards
					un(REMOVED_FROM_GAME, i(115842)),	-- Primal Gladiator's Dragonhide Gloves
					un(REMOVED_FROM_GAME, i(115843)),	-- Primal Gladiator's Dragonhide Helm
					un(REMOVED_FROM_GAME, i(115844)),	-- Primal Gladiator's Dragonhide Legguards
					un(REMOVED_FROM_GAME, i(115845)),	-- Primal Gladiator's Dragonhide Robes
					un(REMOVED_FROM_GAME, i(115846)),	-- Primal Gladiator's Dragonhide Spaulders
					un(REMOVED_FROM_GAME, i(115847)),	-- Primal Gladiator's Kodohide Belt
					un(REMOVED_FROM_GAME, i(115848)),	-- Primal Gladiator's Kodohide Footguards
					un(REMOVED_FROM_GAME, i(115849)),	-- Primal Gladiator's Kodohide Gloves
					un(REMOVED_FROM_GAME, i(115850)),	-- Primal Gladiator's Kodohide Helm
					un(REMOVED_FROM_GAME, i(115851)),	-- Primal Gladiator's Kodohide Legguards
					un(REMOVED_FROM_GAME, i(115852)),	-- Primal Gladiator's Kodohide Robes
					un(REMOVED_FROM_GAME, i(115853)),	-- Primal Gladiator's Kodohide Spaulders
					un(REMOVED_FROM_GAME, i(115855)),	-- Primal Gladiator's Wyrmhide Belt
					un(REMOVED_FROM_GAME, i(115856)),	-- Primal Gladiator's Wyrmhide Footguards
					un(REMOVED_FROM_GAME, i(115857)),	-- Primal Gladiator's Wyrmhide Gloves
					un(REMOVED_FROM_GAME, i(115858)),	-- Primal Gladiator's Wyrmhide Helm
					un(REMOVED_FROM_GAME, i(115859)),	-- Primal Gladiator's Wyrmhide Legguards
					un(REMOVED_FROM_GAME, i(115860)),	-- Primal Gladiator's Wyrmhide Robes
					un(REMOVED_FROM_GAME, i(115861)),	-- Primal Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					un(REMOVED_FROM_GAME, i(115870)),	-- Primal Gladiator's Chain Armor
					un(REMOVED_FROM_GAME, i(115871)),	-- Primal Gladiator's Chain Gauntlets
					un(REMOVED_FROM_GAME, i(115872)),	-- Primal Gladiator's Chain Helm
					un(REMOVED_FROM_GAME, i(115873)),	-- Primal Gladiator's Chain Leggings
					un(REMOVED_FROM_GAME, i(115866)),	-- Primal Gladiator's Chain Links
					un(REMOVED_FROM_GAME, i(115868)),	-- Primal Gladiator's Chain Sabatons
					un(REMOVED_FROM_GAME, i(115874)),	-- Primal Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					un(REMOVED_FROM_GAME, i(115879)),	-- Primal Gladiator's Silk Amice
					un(REMOVED_FROM_GAME, i(115824)),	-- Primal Gladiator's Silk Cord
					un(REMOVED_FROM_GAME, i(115876)),	-- Primal Gladiator's Silk Cowl
					un(REMOVED_FROM_GAME, i(115875)),	-- Primal Gladiator's Silk Handguards
					un(REMOVED_FROM_GAME, i(115878)),	-- Primal Gladiator's Silk Robe
					un(REMOVED_FROM_GAME, i(115827)),	-- Primal Gladiator's Silk Treads
					un(REMOVED_FROM_GAME, i(115877)),	-- Primal Gladiator's Silk Trousers
				}),
				cl(MONK, {
					un(REMOVED_FROM_GAME, i(115966)),	-- Primal Gladiator's Copperskin Boots
					un(REMOVED_FROM_GAME, i(115887)),	-- Primal Gladiator's Copperskin Gloves
					un(REMOVED_FROM_GAME, i(115888)),	-- Primal Gladiator's Copperskin Helm
					un(REMOVED_FROM_GAME, i(115889)),	-- Primal Gladiator's Copperskin Legguards
					un(REMOVED_FROM_GAME, i(115890)),	-- Primal Gladiator's Copperskin Spaulders
					un(REMOVED_FROM_GAME, i(115891)),	-- Primal Gladiator's Copperskin Tunic
					un(REMOVED_FROM_GAME, i(115967)),	-- Primal Gladiator's Copperskin Waistband
					un(REMOVED_FROM_GAME, i(115881)),	-- Primal Gladiator's Ironskin Boots
					un(REMOVED_FROM_GAME, i(115882)),	-- Primal Gladiator's Ironskin Gloves
					un(REMOVED_FROM_GAME, i(115883)),	-- Primal Gladiator's Ironskin Helm
					un(REMOVED_FROM_GAME, i(115884)),	-- Primal Gladiator's Ironskin Legguards
					un(REMOVED_FROM_GAME, i(115885)),	-- Primal Gladiator's Ironskin Spaulders
					un(REMOVED_FROM_GAME, i(115886)),	-- Primal Gladiator's Ironskin Tunic
					un(REMOVED_FROM_GAME, i(115880)),	-- Primal Gladiator's Ironskin Waistband
				}),
				cl(PALADIN, {
					un(REMOVED_FROM_GAME, i(115901)),	-- Primal Gladiator's Ornamented Chestguard
					un(REMOVED_FROM_GAME, i(115898)),	-- Primal Gladiator's Ornamented Clasp
					un(REMOVED_FROM_GAME, i(115902)),	-- Primal Gladiator's Ornamented Gloves
					un(REMOVED_FROM_GAME, i(115899)),	-- Primal Gladiator's Ornamented Greaves
					un(REMOVED_FROM_GAME, i(115903)),	-- Primal Gladiator's Ornamented Headcover
					un(REMOVED_FROM_GAME, i(115904)),	-- Primal Gladiator's Ornamented Legplates
					un(REMOVED_FROM_GAME, i(115905)),	-- Primal Gladiator's Ornamented Spaulders
					un(REMOVED_FROM_GAME, i(115892)),	-- Primal Gladiator's Scaled Chestpiece
					un(REMOVED_FROM_GAME, i(115897)),	-- Primal Gladiator's Scaled Clasp
					un(REMOVED_FROM_GAME, i(115893)),	-- Primal Gladiator's Scaled Gauntlets
					un(REMOVED_FROM_GAME, i(115900)),	-- Primal Gladiator's Scaled Greaves
					un(REMOVED_FROM_GAME, i(115894)),	-- Primal Gladiator's Scaled Helm
					un(REMOVED_FROM_GAME, i(115895)),	-- Primal Gladiator's Scaled Legguards
					un(REMOVED_FROM_GAME, i(115896)),	-- Primal Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					un(REMOVED_FROM_GAME, i(115826)),	-- Primal Gladiator's Mooncloth Cord
					un(REMOVED_FROM_GAME, i(115911)),	-- Primal Gladiator's Mooncloth Gloves
					un(REMOVED_FROM_GAME, i(115912)),	-- Primal Gladiator's Mooncloth Hood
					un(REMOVED_FROM_GAME, i(115913)),	-- Primal Gladiator's Mooncloth Leggings
					un(REMOVED_FROM_GAME, i(115915)),	-- Primal Gladiator's Mooncloth Mantle
					un(REMOVED_FROM_GAME, i(115914)),	-- Primal Gladiator's Mooncloth Robe
					un(REMOVED_FROM_GAME, i(115829)),	-- Primal Gladiator's Mooncloth Treads
					un(REMOVED_FROM_GAME, i(115969)),	-- Primal Gladiator's Satin Cord
					un(REMOVED_FROM_GAME, i(115916)),	-- Primal Gladiator's Satin Gloves
					un(REMOVED_FROM_GAME, i(115917)),	-- Primal Gladiator's Satin Hood
					un(REMOVED_FROM_GAME, i(115918)),	-- Primal Gladiator's Satin Leggings
					un(REMOVED_FROM_GAME, i(115920)),	-- Primal Gladiator's Satin Mantle
					un(REMOVED_FROM_GAME, i(115919)),	-- Primal Gladiator's Satin Robe
					un(REMOVED_FROM_GAME, i(115968)),	-- Primal Gladiator's Satin Treads
				}),
				cl(ROGUE, {
					un(REMOVED_FROM_GAME, i(115922)),	-- Primal Gladiator's Leather Boots
					un(REMOVED_FROM_GAME, i(115924)),	-- Primal Gladiator's Leather Gloves
					un(REMOVED_FROM_GAME, i(115925)),	-- Primal Gladiator's Leather Helm
					un(REMOVED_FROM_GAME, i(115926)),	-- Primal Gladiator's Leather Legguards
					un(REMOVED_FROM_GAME, i(115927)),	-- Primal Gladiator's Leather Spaulders
					un(REMOVED_FROM_GAME, i(115923)),	-- Primal Gladiator's Leather Tunic
					un(REMOVED_FROM_GAME, i(115921)),	-- Primal Gladiator's Leather Waistband
				}),
				cl(SHAMAN, {
					un(REMOVED_FROM_GAME, i(115942)),	-- Primal Gladiator's Mail Armor
					un(REMOVED_FROM_GAME, i(115930)),	-- Primal Gladiator's Mail Footguards
					un(REMOVED_FROM_GAME, i(115943)),	-- Primal Gladiator's Mail Gauntlets
					un(REMOVED_FROM_GAME, i(115944)),	-- Primal Gladiator's Mail Helm
					un(REMOVED_FROM_GAME, i(115945)),	-- Primal Gladiator's Mail Leggings
					un(REMOVED_FROM_GAME, i(115946)),	-- Primal Gladiator's Mail Spaulders
					un(REMOVED_FROM_GAME, i(115941)),	-- Primal Gladiator's Mail Waistguard
					un(REMOVED_FROM_GAME, i(115936)),	-- Primal Gladiator's Linked Armor
					un(REMOVED_FROM_GAME, i(115937)),	-- Primal Gladiator's Linked Gauntlets
					un(REMOVED_FROM_GAME, i(115938)),	-- Primal Gladiator's Linked Helm
					un(REMOVED_FROM_GAME, i(115939)),	-- Primal Gladiator's Linked Leggings
					un(REMOVED_FROM_GAME, i(115869)),	-- Primal Gladiator's Linked Sabatons
					un(REMOVED_FROM_GAME, i(115940)),	-- Primal Gladiator's Linked Spaulders
					un(REMOVED_FROM_GAME, i(115867)),	-- Primal Gladiator's Linked Waistband
					un(REMOVED_FROM_GAME, i(115931)),	-- Primal Gladiator's Ringmail Armor
					un(REMOVED_FROM_GAME, i(115929)),	-- Primal Gladiator's Ringmail Foodguards
					un(REMOVED_FROM_GAME, i(115932)),	-- Primal Gladiator's Ringmail Gauntlets
					un(REMOVED_FROM_GAME, i(115933)),	-- Primal Gladiator's Ringmail Helm
					un(REMOVED_FROM_GAME, i(115934)),	-- Primal Gladiator's Ringmail Leggings
					un(REMOVED_FROM_GAME, i(115935)),	-- Primal Gladiator's Ringmail Spaulders
					un(REMOVED_FROM_GAME, i(115928)),	-- Primal Gladiator's Ringmail Waistguard
				}),
				cl(WARLOCK, {
					un(REMOVED_FROM_GAME, i(115960)),	-- Primal Gladiator's Felweave Amice
					un(REMOVED_FROM_GAME, i(115825)),	-- Primal Gladiator's Felweave Cord
					un(REMOVED_FROM_GAME, i(115957)),	-- Primal Gladiator's Felweave Cowl
					un(REMOVED_FROM_GAME, i(115956)),	-- Primal Gladiator's Felweave Handguards
					un(REMOVED_FROM_GAME, i(115959)),	-- Primal Gladiator's Felweave Rainment
					un(REMOVED_FROM_GAME, i(115828)),	-- Primal Gladiator's Felweave Treads
					un(REMOVED_FROM_GAME, i(115958)),	-- Primal Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					un(REMOVED_FROM_GAME, i(115961)),	-- Primal Gladiator's Plate Chestpiece
					un(REMOVED_FROM_GAME, i(115962)),	-- Primal Gladiator's Plate Gauntlets
					un(REMOVED_FROM_GAME, i(115907)),	-- Primal Gladiator's Plate Girdle
					un(REMOVED_FROM_GAME, i(115963)),	-- Primal Gladiator's Plate Helm
					un(REMOVED_FROM_GAME, i(115964)),	-- Primal Gladiator's Plate Legguards
					un(REMOVED_FROM_GAME, i(115965)),	-- Primal Gladiator's Plate Shoulders
					un(REMOVED_FROM_GAME, i(115908)),	-- Primal Gladiator's Plate Warboots
				}),
			}),
		}),
		n(SEASON_WILD, {
			un(REMOVED_FROM_GAME, i(120356)),	-- Bronze Strongbox
			un(REMOVED_FROM_GAME, i(120355)),	-- Silver Strongbox
			un(REMOVED_FROM_GAME, i(120354)),	-- Gold Strongbox
			n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_6_2_0, REMOVED_6_2_2 }, }, {
				ach(10101),	-- Challenger: Warlords of Draenor Season 2
				ach(10106, {	-- Defender of the Alliance: Warlords of Draenor Season 2
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(310, {	-- <Name> Defender of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10107, {	-- Defender of the Horde: Warlords of Draenor Season 2
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(313, {	-- <Name> Defender of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10099, {	-- Duelist: Warlords of Draenor Season 2
					elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
						["timeline"] = { ADDED_7_3_2 },
					})),
				}),
				ach(10098, {	-- Gladiator: Warlords of Draenor Season 2
					i(128281),	-- Wild Gladiator's Felblood Gronnling
				}),
				ach(10108, {	-- Guardian of the Alliance: Warlords of Draenor Season 2
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(309, {	-- <Name> Guardian of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10109, {	-- Guardian of the Horde: Warlords of Draenor Season 2
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(312, {	-- <Name> Guardian of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10102, {	-- Hero of the Alliance: Wild
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(10103, {	-- Hero of the Horde: Wild
					["races"] = HORDE_ONLY,
					["groups"] = {
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(10100),	-- Rival: Warlords of Draenor Season 2
				ach(10104, {	-- Soldier of the Alliance: Warlords of Draenor Season 2
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(311, {	-- <Name> Soldier of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10105, {	-- Soldier of the Horde: Warlords of Draenor Season 2
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(314, {	-- <Name> Soldier of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10093, {	-- Wild Combatant (Alliance) Warlords of Draenor Season 2
					["races"] = ALLIANCE_ONLY,
				}),
				ach(10092, {	-- Wild Combatant (Horde) Warlords of Draenor Season 2
					["races"] = HORDE_ONLY,
				}),
				ach(10096, {	-- Wild Gladiator: Warlords of Draenor Season 2
					title(315),	-- Wild Gladiator <Name>
				}),
				ach(10137, {	-- Wild Gladiator's Felblood Gronnling
					["provider"] = { "i", 128281 },	-- Wild Gladiator's Felblood Gronnling
					["filterID"] = MOUNTS,
				}),
				ach(11721, {["timeline"] = {ADDED_7_2_0}}),	-- Wild Style (PvP Season 17)
			})),
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					n(PVP_ASPIRANT, {
						cl(DEATHKNIGHT, {
							un(REMOVED_FROM_GAME, i(125070)),	-- Wild Aspirant's Dreadplate Chestpiece (A)
							un(REMOVED_FROM_GAME, i(125071)),	-- Wild Aspirant's Dreadplate Gauntlets (A)
							un(REMOVED_FROM_GAME, i(125072)),	-- Wild Aspirant's Dreadplate Helm (A)
							un(REMOVED_FROM_GAME, i(125073)),	-- Wild Aspirant's Dreadplate Legguards (A)
							un(REMOVED_FROM_GAME, i(125074)),	-- Wild Aspirant's Dreadplate Shoulders (A)
						}),
						cl(DRUID, {
							un(REMOVED_FROM_GAME, i(125075)),	-- Wild Aspirant's Dragonhide Gloves (A)
							un(REMOVED_FROM_GAME, i(125076)),	-- Wild Aspirant's Dragonhide Helm (A)
							un(REMOVED_FROM_GAME, i(125077)),	-- Wild Aspirant's Dragonhide Legguards (A)
							un(REMOVED_FROM_GAME, i(125078)),	-- Wild Aspirant's Dragonhide Tunic (A)
							un(REMOVED_FROM_GAME, i(125079)),	-- Wild Aspirant's Dragonhide Spaulders (A)
						}),
						cl(HUNTER, {
							un(REMOVED_FROM_GAME, i(125080)),	-- Wild Aspirant's Chain Armor (A)
							un(REMOVED_FROM_GAME, i(125081)),	-- Wild Aspirant's Chain Gauntlets (A)
							un(REMOVED_FROM_GAME, i(125082)),	-- Wild Aspirant's Chain Helm (A)
							un(REMOVED_FROM_GAME, i(125083)),	-- Wild Aspirant's Chain Leggings (A)
							un(REMOVED_FROM_GAME, i(125084)),	-- Wild Aspirant's Chain Spaulders (A)
						}),
						cl(MAGE, {
							un(REMOVED_FROM_GAME, i(125096)),	-- Wild Aspirant's Silk Handguards (A)
							un(REMOVED_FROM_GAME, i(125097)),	-- Wild Aspirant's Silk Cowl (A)
							un(REMOVED_FROM_GAME, i(125098)),	-- Wild Aspirant's Silk Trousers (A)
							un(REMOVED_FROM_GAME, i(125099)),	-- Wild Aspirant's Silk Robe (A)
							un(REMOVED_FROM_GAME, i(125100)),	-- Wild Aspirant's Silk Amice (A)
						}),
						cl(MONK, {
							un(REMOVED_FROM_GAME, i(125104)),	-- Wild Aspirant's Ironskin Gloves (A)
							un(REMOVED_FROM_GAME, i(125105)),	-- Wild Aspirant's Ironskin Helm (A)
							un(REMOVED_FROM_GAME, i(125106)),	-- Wild Aspirant's Ironskin Legguards (A)
							un(REMOVED_FROM_GAME, i(125107)),	-- Wild Aspirant's Ironskin Spaulders (A)
							un(REMOVED_FROM_GAME, i(125108)),	-- Wild Aspirant's Ironskin Tunic (A)
						}),
						cl(PALADIN, {
							un(REMOVED_FROM_GAME, i(125109)),	-- Wild Aspirant's Scaled Chestpiece (A)
							un(REMOVED_FROM_GAME, i(125110)),	-- Wild Aspirant's Scaled Gauntlets (A)
							un(REMOVED_FROM_GAME, i(125111)),	-- Wild Aspirant's Scaled Helm (A)
							un(REMOVED_FROM_GAME, i(125112)),	-- Wild Aspirant's Scaled Legguards (A)
							un(REMOVED_FROM_GAME, i(125113)),	-- Wild Aspirant's Scaled Shoulders (A)
						}),
						cl(PRIEST, {
							un(REMOVED_FROM_GAME, i(125117)),	-- Wild Aspirant's Satin Gloves (A)
							un(REMOVED_FROM_GAME, i(125118)),	-- Wild Aspirant's Satin Hood (A)
							un(REMOVED_FROM_GAME, i(125119)),	-- Wild Aspirant's Satin Leggings (A)
							un(REMOVED_FROM_GAME, i(125120)),	-- Wild Aspirant's Satin Robe (A)
							un(REMOVED_FROM_GAME, i(125121)),	-- Wild Aspirant's Satin Mantle (A)
						}),
						cl(ROGUE, {
							un(REMOVED_FROM_GAME, i(125122)),	-- Wild Aspirant's Leather Tunic (A)
							un(REMOVED_FROM_GAME, i(125123)),	-- Wild Aspirant's Leather Gloves (A)
							un(REMOVED_FROM_GAME, i(125124)),	-- Wild Aspirant's Leather Helm (A)
							un(REMOVED_FROM_GAME, i(125125)),	-- Wild Aspirant's Leather Legguards (A)
							un(REMOVED_FROM_GAME, i(125126)),	-- Wild Aspirant's Leather Spaulders (A)
						}),
						cl(SHAMAN, {
							un(REMOVED_FROM_GAME, i(125127)),	-- Wild Aspirant's Ringmail Armor (A)
							un(REMOVED_FROM_GAME, i(125128)),	-- Wild Aspirant's Ringmail Gauntlets (A)
							un(REMOVED_FROM_GAME, i(125129)),	-- Wild Aspirant's Ringmail Helm (A)
							un(REMOVED_FROM_GAME, i(125130)),	-- Wild Aspirant's Ringmail Leggings (A)
							un(REMOVED_FROM_GAME, i(125131)),	-- Wild Aspirant's Ringmail Spaulders (A)
						}),
						cl(WARLOCK, {
							un(REMOVED_FROM_GAME, i(125144)),	-- Wild Aspirant's Felweave Handguards (A)
							un(REMOVED_FROM_GAME, i(125145)),	-- Wild Aspirant's Felweave Cowl (A)
							un(REMOVED_FROM_GAME, i(125146)),	-- Wild Aspirant's Felweave Trousers (A)
							un(REMOVED_FROM_GAME, i(125147)),	-- Wild Aspirant's Felweave Raiment (A)
							un(REMOVED_FROM_GAME, i(125148)),	-- Wild Aspirant's Felweave Amice (A)
						}),
						cl(WARRIOR, {
							un(REMOVED_FROM_GAME, i(125149)),	-- Wild Aspirant's Plate Chestpiece (A)
							un(REMOVED_FROM_GAME, i(125150)),	-- Wild Aspirant's Plate Gauntlets (A)
							un(REMOVED_FROM_GAME, i(125151)),	-- Wild Aspirant's Plate Helm (A)
							un(REMOVED_FROM_GAME, i(125152)),	-- Wild Aspirant's Plate Legguards (A)
							un(REMOVED_FROM_GAME, i(125153)),	-- Wild Aspirant's Plate Shoulders (A)
						}),
						n(BACK, {
							un(REMOVED_FROM_GAME, i(125063)),	-- Wild Aspirant's Cape of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125085)),	-- Wild Aspirant's Drape of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125086)),	-- Wild Aspirant's Drape of Meditation (A)
							un(REMOVED_FROM_GAME, i(125132)),	-- Wild Aspirant's Cloak of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125135)),	-- Wild Aspirant's Cloak of Endurance (A)
						}),
						n(WRIST, {
							un(REMOVED_FROM_GAME, i(125069)),	-- Wild Aspirant's Cuffs of Prowess (A)
							un(REMOVED_FROM_GAME, i(125095)),	-- Wild Aspirant's Bindings of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125103)),	-- Wild Aspirant's Armbands of Prowess (A)
							un(REMOVED_FROM_GAME, i(125116)),	-- Wild Aspirant's Armplates of Cruelty (A)
						}),
						n(WAIST, {
							un(REMOVED_FROM_GAME, i(125067)),	-- Wild Aspirant's Cord of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125093)),	-- Wild Aspirant's Belt of Prowess (A)
							un(REMOVED_FROM_GAME, i(125101)),	-- Wild Aspirant's Waistguard of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125114)),	-- Wild Aspirant's Girdle of Cruelty (A)
						}),
						n(FEET, {
							un(REMOVED_FROM_GAME, i(125068)),	-- Wild Aspirant's Treads of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125094)),	-- Wild Aspirant's Boots of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125102)),	-- Wild Aspirant's Footguards of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125115)),	-- Wild Aspirant's Warboots of Cruelty (A)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(125087)),	-- Wild Aspirant's Pendant of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125064)),	-- Wild Aspirant's Necklace of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125136)),	-- Wild Aspirant's Choker of Endurance (A)
							un(REMOVED_FROM_GAME, i(125133)),	-- Wild Aspirant's Choker of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125088)),	-- Wild Aspirant's Pendant of Meditation (A)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(125091)),	-- Wild Aspirant's Band of Meditation (A)
							un(REMOVED_FROM_GAME, i(125090)),	-- Wild Aspirant's Band of Prowess (A)
							un(REMOVED_FROM_GAME, i(125092)),	-- Wild Aspirant's Band of Contemplation (A)
							un(REMOVED_FROM_GAME, i(125134)),	-- Wild Aspirant's Signet of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125137)),	-- Wild Aspirant's Signet of Dedication (A)
							un(REMOVED_FROM_GAME, i(125138)),	-- Wild Aspirant's Signet of Endurance (A)
							un(REMOVED_FROM_GAME, i(125065)),	-- Wild Aspirant's Ring of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125066)),	-- Wild Aspirant's Ring of Prowess (A)
							un(REMOVED_FROM_GAME, i(125089)),	-- Wild Aspirant's Band of Cruelty (A)
							un(REMOVED_FROM_GAME, i(127118)),	-- Wild Aspirant's Signet of Accuracy (A)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(125140)),	-- Wild Aspirant's Accolade of Dominance (A)
							un(REMOVED_FROM_GAME, i(125142)),	-- Wild Aspirant's Accolade of Meditation (A)
							un(REMOVED_FROM_GAME, i(125141)),	-- Wild Aspirant's Accolade of Victory (A)
							un(REMOVED_FROM_GAME, i(125139)),	-- Wild Aspirant's Accolade of Conquest (A)
							un(REMOVED_FROM_GAME, i(125143)),	-- Wild Aspirant's Accolade of Endurance (A)
						}),
					}),
					n(PVP_COMBATANT, {
						n(WEAPONS, {
							moh(80, iensemble(138630, {	-- Arsenal: Wild Combatant's Weapons (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124951)),	-- Wild Combatant's Barrier (A)
							moh(5, i(124931)),	-- Wild Combatant's Baton of Light (A)
							moh(5, i(124933)),	-- Wild Combatant's Battle Staff (A)
							moh(5, i(125017)),	-- Wild Combatant's Bonecracker (A)
							moh(5, i(125020)),	-- Wild Combatant's Bonegrinder (A)
							moh(5, i(127381)),	-- Wild Combatant's Chopper (A)
							moh(5, i(124885)),	-- Wild Combatant's Cleaver (A)
							moh(5, i(125019)),	-- Wild Combatant's Decapitator (A)
							moh(2, i(124943)),	-- Wild Combatant's Endgame (A)
							moh(5, i(124934)),	-- Wild Combatant's Energy Staff (A)
							moh(5, i(124929)),	-- Wild Combatant's Gavel (A)
							moh(5, i(125021)),	-- Wild Combatant's Greatsword (A)
							moh(5, i(125015)),	-- Wild Combatant's Hacker (A)
							moh(5, i(124891)),	-- Wild Combatant's Heavy Crossbow (A)
							moh(5, i(124890)),	-- Wild Combatant's Longbow (A)
							moh(5, i(124930)),	-- Wild Combatant's Mageblade (A)
							moh(5, i(124893)),	-- Wild Combatant's Pike (A)
							moh(5, i(124888)),	-- Wild Combatant's Pummeler (A)
							moh(5, i(124889)),	-- Wild Combatant's Quickblade (A)
							moh(2, i(124950)),	-- Wild Combatant's Redoubt (A)
							moh(5, i(125016)),	-- Wild Combatant's Render (A)
							moh(2, i(124944)),	-- Wild Combatant's Reprieve (A)
							moh(5, i(124892)),	-- Wild Combatant's Rifle (A)
							moh(5, i(124887)),	-- Wild Combatant's Ripper (A)
							moh(5, i(124886)),	-- Wild Combatant's Shanker (A)
							moh(2, i(125029)),	-- Wild Combatant's Shield Wall (A)
							moh(5, i(125018)),	-- Wild Combatant's Slicer (A)
							moh(5, i(124928)),	-- Wild Combatant's Spellblade (A)
							moh(5, i(124894)),	-- Wild Combatant's Staff (A)
							moh(5, i(124932)),	-- Wild Combatant's Touch of Defeat (A)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138601, {	-- Ensemble: Wild Combatant's Dreadplate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124913)),	-- Wild Combatant's Dreadplate Chestpiece (A)
							moh(2, i(124914)),	-- Wild Combatant's Dreadplate Gauntlets (A)
							moh(3, i(124915)),	-- Wild Combatant's Dreadplate Helm (A)
							moh(3, i(124916)),	-- Wild Combatant's Dreadplate Legguards (A)
							moh(2, i(124917)),	-- Wild Combatant's Dreadplate Shoulders (A)
							i(124997),	-- Wild Combatant's Plate Helmet (A)
							i(124999),	-- Wild Combatant's Shoulderplates (A)
							i(124995),	-- Wild Combatant's Plate Breastplate (A)
							i(124996),	-- Wild Combatant's Plate Gloves (A)
							i(124998),	-- Wild Combatant's Legplates (A)
						}),
						cl(DRUID, {
							moh(12, iensemble(138605, {	-- Ensemble: Wild Combatant's Dragonhide Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124918)),	-- Wild Combatant's Dragonhide Gloves (A)
							moh(3, i(124919)),	-- Wild Combatant's Dragonhide Helm (A)
							moh(3, i(124920)),	-- Wild Combatant's Dragonhide Legguards (A)
							moh(3, i(124921)),	-- Wild Combatant's Dragonhide Tunic (A)
							moh(2, i(124922)),	-- Wild Combatant's Dragonhide Spaulders (A)
							i(124961),	-- Wild Combatant's Legguards (A)
							i(124959),	-- Wild Combatant's Gloves (A)
							i(124958),	-- Wild Combatant's Armor (A)
							i(124962),	-- Wild Combatant's Spaulders (A)
							i(124960),	-- Wild Combatant's Helm (A)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138547, {	-- Ensemble: Wild Combatant's Chain Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124923)),	-- Wild Combatant's Chain Armor (A)
							moh(2, i(124924)),	-- Wild Combatant's Chain Gauntlets (A)
							moh(3, i(124925)),	-- Wild Combatant's Chain Helm (A)
							moh(3, i(124926)),	-- Wild Combatant's Chain Leggings (A)
							moh(2, i(124927)),	-- Wild Combatant's Chain Spaulders (A)
							i(124977),	-- Wild Combatant's Leggings (A)
							i(124975),	-- Wild Combatant's Gauntlets (A)
							i(124974),	-- Wild Combatant's Tunic (A)
							i(124978),	-- Wild Combatant's Spaulders (A)
							i(124976),	-- Wild Combatant's Helm (A)
						}),
						cl(MAGE, {
							moh(12, iensemble(138549, {	-- Ensemble: Wild Combatant's Silk Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124967)),	-- Wild Combatant's Silk Amice (A)
							moh(3, i(124964)),	-- Wild Combatant's Silk Cowl (A)
							moh(2, i(124963)),	-- Wild Combatant's Silk Handguards (A)
							moh(3, i(124966)),	-- Wild Combatant's Silk Robe (A)
							moh(3, i(124965)),	-- Wild Combatant's Silk Trousers (A)
							i(124909),	-- Wild Combatant's Hood of Prowess (A)
							i(124912),	-- Wild Combatant's Amice of Prowess (A)
							i(124911),	-- Wild Combatant's Robes of Prowess (A)
							i(124908),	-- Wild Combatant's Gloves of Prowess (A)
							i(124910),	-- Wild Combatant's Leggings of Prowess (A)
						}),
						cl(MONK, {
							moh(12, iensemble(138607, {	-- Ensemble: Wild Combatant's Ironskin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124979)),	-- Wild Combatant's Ironskin Gloves (A)
							moh(3, i(124980)),	-- Wild Combatant's Ironskin Helm (A)
							moh(3, i(124981)),	-- Wild Combatant's Ironskin Legguards (A)
							moh(2, i(124982)),	-- Wild Combatant's Ironskin Spaulders (A)
							moh(3, i(124983)),	-- Wild Combatant's Ironskin Tunic (A)
							i(124961),	-- Wild Combatant's Legguards (A)
							i(124959),	-- Wild Combatant's Gloves (A)
							i(124958),	-- Wild Combatant's Armor (A)
							i(124962),	-- Wild Combatant's Spaulders (A)
							i(124960),	-- Wild Combatant's Helm (A)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138603, {	-- Ensemble: Wild Combatant's Scaled Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124984)),	-- Wild Combatant's Scaled Chestpiece (A)
							moh(2, i(124985)),	-- Wild Combatant's Scaled Gauntlets (A)
							moh(3, i(124986)),	-- Wild Combatant's Scaled Helm (A)
							moh(3, i(124987)),	-- Wild Combatant's Scaled Legguards (A)
							moh(2, i(124988)),	-- Wild Combatant's Scaled Shoulders (A)
							i(124997),	-- Wild Combatant's Plate Helmet (A)
							i(124999),	-- Wild Combatant's Shoulderplates (A)
							i(124995),	-- Wild Combatant's Plate Breastplate (A)
							i(124996),	-- Wild Combatant's Plate Gloves (A)
							i(124998),	-- Wild Combatant's Legplates (A)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138551, {	-- Ensemble: Wild Combatant's Satin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125000)),	-- Wild Combatant's Satin Gloves (A)
							moh(3, i(125001)),	-- Wild Combatant's Satin Hood (A)
							moh(3, i(125002)),	-- Wild Combatant's Satin Leggings (A)
							moh(2, i(125003)),	-- Wild Combatant's Satin Mantle (A)
							moh(3, i(125004)),	-- Wild Combatant's Satin Robe (A)
							i(124909),	-- Wild Combatant's Hood of Prowess (A)
							i(124912),	-- Wild Combatant's Amice of Prowess (A)
							i(124911),	-- Wild Combatant's Robes of Prowess (A)
							i(124908),	-- Wild Combatant's Gloves of Prowess (A)
							i(124910),	-- Wild Combatant's Leggings of Prowess (A)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138609, {	-- Ensemble: Wild Combatant's Leather Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125006)),	-- Wild Combatant's Leather Gloves (A)
							moh(3, i(125007)),	-- Wild Combatant's Leather Helm (A)
							moh(3, i(125008)),	-- Wild Combatant's Leather Legguards (A)
							moh(2, i(125009)),	-- Wild Combatant's Leather Spaulders (A)
							moh(3, i(125005)),	-- Wild Combatant's Leather Tunic (A)
							i(124961),	-- Wild Combatant's Legguards (A)
							i(124959),	-- Wild Combatant's Gloves (A)
							i(124958),	-- Wild Combatant's Armor (A)
							i(124962),	-- Wild Combatant's Spaulders (A)
							i(124960),	-- Wild Combatant's Helm (A)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138545, {	-- Ensemble: Wild Combatant's Ringmail Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125010)),	-- Wild Combatant's Ringmail Armor (A)
							moh(2, i(125011)),	-- Wild Combatant's Ringmail Gauntlets (A)
							moh(3, i(125012)),	-- Wild Combatant's Ringmail Helm (A)
							moh(3, i(125013)),	-- Wild Combatant's Ringmail Leggings (A)
							moh(2, i(125014)),	-- Wild Combatant's Ringmail Spaulders (A)
							i(124977),	-- Wild Combatant's Leggings (A)
							i(124975),	-- Wild Combatant's Gauntlets (A)
							i(124974),	-- Wild Combatant's Tunic (A)
							i(124978),	-- Wild Combatant's Spaulders (A)
							i(124976),	-- Wild Combatant's Helm (A)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138553, {	-- Ensemble: Wild Combatant's Felweave Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125057)),	-- Wild Combatant's Felweave Amice (A)
							moh(3, i(125054)),	-- Wild Combatant's Felweave Cowl (A)
							moh(2, i(125053)),	-- Wild Combatant's Felweave Handguards (A)
							moh(3, i(125056)),	-- Wild Combatant's Felweave Raiment (A)
							moh(3, i(125055)),	-- Wild Combatant's Felweave Trousers (A)
							i(124909),	-- Wild Combatant's Hood of Prowess (A)
							i(124912),	-- Wild Combatant's Amice of Prowess (A)
							i(124911),	-- Wild Combatant's Robes of Prowess (A)
							i(124908),	-- Wild Combatant's Gloves of Prowess (A)
							i(124910),	-- Wild Combatant's Leggings of Prowess (A)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138599, {	-- Ensemble: Wild Combatant's Plate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125058)),	-- Wild Combatant's Plate Chestpiece (A)
							moh(2, i(125059)),	-- Wild Combatant's Plate Gauntlets (A)
							moh(3, i(125060)),	-- Wild Combatant's Plate Helm (A)
							moh(3, i(125061)),	-- Wild Combatant's Plate Legguards (A)
							moh(2, i(125062)),	-- Wild Combatant's Plate Shoulders (A)
							i(124997),	-- Wild Combatant's Plate Helmet (A)
							i(124999),	-- Wild Combatant's Shoulderplates (A)
							i(124995),	-- Wild Combatant's Plate Breastplate (A)
							i(124996),	-- Wild Combatant's Plate Gloves (A)
							i(124998),	-- Wild Combatant's Legplates (A)
						}),
						n(BACK, {
							moh(1, i(124895)),	-- Wild Combatant's Cape of Cruelty (A)
							moh(1, i(124896)),	-- Wild Combatant's Cape of Prowess (A)
							moh(1, i(125022)),	-- Wild Combatant's Cloak of Cruelty (A)
							moh(1, i(125049)),	-- Wild Combatant's Cloak of Endurance (A)
							moh(1, i(125023)),	-- Wild Combatant's Cloak of Prowess (A)
							moh(1, i(124938)),	-- Wild Combatant's Drape of Contemplation (A)
							moh(1, i(124935)),	-- Wild Combatant's Drape of Cruelty (A)
							moh(1, i(124937)),	-- Wild Combatant's Drape of Meditation (A)
							moh(1, i(124936)),	-- Wild Combatant's Drape of Prowess (A)
						}),
						n(WRIST, {
							moh(1, i(124907)),	-- Wild Combatant's Cuffs of Cruelty (A)
							moh(1, i(124906)),	-- Wild Combatant's Cuffs of Prowess (A)
							moh(1, i(124956)),	-- Wild Combatant's Bindings of Cruelty (A)
							moh(1, i(124957)),	-- Wild Combatant's Bindings of Prowess (A)
							moh(1, i(124973)),	-- Wild Combatant's Armbands of Cruelty (A)
							moh(1, i(124972)),	-- Wild Combatant's Armbands of Prowess (A)
							moh(1, i(124993)),	-- Wild Combatant's Armplates of Cruelty (A)
							moh(1, i(124994)),	-- Wild Combatant's Armplates of Prowess (A)
						}),
						n(WAIST, {
							moh(1, i(124902)),	-- Wild Combatant's Cord of Cruelty (A)
							moh(1, i(124903)),	-- Wild Combatant's Cord of Prowess (A)
							moh(1, i(124953)),	-- Wild Combatant's Belt of Cruelty (A)
							moh(1, i(124952)),	-- Wild Combatant's Belt of Prowess (A)
							moh(1, i(124968)),	-- Wild Combatant's Waistguard of Cruelty (A)
							moh(1, i(124969)),	-- Wild Combatant's Waistguard of Prowess (A)
							moh(1, i(124989)),	-- Wild Combatant's Girdle of Cruelty (A)
							moh(1, i(124990)),	-- Wild Combatant's Girdle of Prowess (A)
						}),
						n(FEET, {
							moh(2, i(124904)),	-- Wild Combatant's Treads of Cruelty (A)
							moh(2, i(124905)),	-- Wild Combatant's Treads of Prowess (A)
							moh(2, i(124954)),	-- Wild Combatant's Boots of Cruelty (A)
							moh(2, i(124955)),	-- Wild Combatant's Boots of Prowess (A)
							moh(2, i(124970)),	-- Wild Combatant's Footguards of Cruelty (A)
							moh(2, i(124971)),	-- Wild Combatant's Footguards of Prowess (A)
							moh(2, i(124991)),	-- Wild Combatant's Warboots of Cruelty (A)
							moh(2, i(124992)),	-- Wild Combatant's Warboots of Prowess (A)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(125024)),	-- Wild Combatant's Choker of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125050)),	-- Wild Combatant's Choker of Prowess (A)
							un(REMOVED_FROM_GAME, i(125025)),	-- Wild Combatant's Choker of Endurance (A)
							un(REMOVED_FROM_GAME, i(124897)),	-- Wild Combatant's Necklace of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124898)),	-- Wild Combatant's Necklace of Prowess (A)
							un(REMOVED_FROM_GAME, i(124942)),	-- Wild Combatant's Pendant of Contemplation (A)
							un(REMOVED_FROM_GAME, i(124939)),	-- Wild Combatant's Pendant of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124941)),	-- Wild Combatant's Pendant of Meditation (A)
							un(REMOVED_FROM_GAME, i(124940)),	-- Wild Combatant's Pendant of Prowess (A)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(124949)),	-- Wild Combatant's Band of Contemplation (A)
							un(REMOVED_FROM_GAME, i(124945)),	-- Wild Combatant's Band of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124948)),	-- Wild Combatant's Band of Meditation (A)
							un(REMOVED_FROM_GAME, i(124946)),	-- Wild Combatant's Band of Prowess (A)
							un(REMOVED_FROM_GAME, i(124947)),	-- Wild Combatant's Band of Victory (A)
							un(REMOVED_FROM_GAME, i(124899)),	-- Wild Combatant's Ring of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124900)),	-- Wild Combatant's Ring of Prowess (A)
							un(REMOVED_FROM_GAME, i(124901)),	-- Wild Combatant's Ring of Triumph (A)
							un(REMOVED_FROM_GAME, i(125027)),	-- Wild Combatant's Signet of Accuracy (A)
							un(REMOVED_FROM_GAME, i(125026)),	-- Wild Combatant's Signet of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125051)),	-- Wild Combatant's Signet of Ruthlessness (A)
							un(REMOVED_FROM_GAME, i(125052)),	-- Wild Combatant's Signet of Dedication (A)
							un(REMOVED_FROM_GAME, i(125028)),	-- Wild Combatant's Signet of Endurance (A)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(125043)),	-- Wild Combatant's Badge of Adaptation (A)
							un(REMOVED_FROM_GAME, i(125030)),	-- Wild Combatant's Badge of Conquest (A)
							un(REMOVED_FROM_GAME, i(125035)),	-- Wild Combatant's Badge of Dominance (A)
							un(REMOVED_FROM_GAME, i(125041)),	-- Wild Combatant's Badge of Victory (A)
							un(REMOVED_FROM_GAME, i(125032)),	-- Wild Combatant's Emblem of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125034)),	-- Wild Combatant's Emblem of Meditation (A)
							un(REMOVED_FROM_GAME, i(125033)),	-- Wild Combatant's Emblem of Tenacity (A)
							un(REMOVED_FROM_GAME, i(125031)),	-- Wild Combatant's Insignia of Conquest (A)
							un(REMOVED_FROM_GAME, i(125036)),	-- Wild Combatant's Insignia of Dominance (A)
							un(REMOVED_FROM_GAME, i(125042)),	-- Wild Combatant's Insignia of Victory (A)
							un(REMOVED_FROM_GAME, i(125038)),	-- Wild Combatant's Medallion of Adaptation (A)
							un(REMOVED_FROM_GAME, i(125037)),	-- Wild Combatant's Medallion of Cruelty (A)
							un(REMOVED_FROM_GAME, i(125040)),	-- Wild Combatant's Medallion of Meditation (A)
							un(REMOVED_FROM_GAME, i(125039)),	-- Wild Combatant's Medallion of Tenacity (A)
						}),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(138633, {	-- Arsenal: Wild Gladiator's Weapons (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(5, i(124675)),	-- Wild Gladiator's Cleaver
							moh(5, i(124676)),	-- Wild Gladiator's Shanker
							moh(5, i(124677)),	-- Wild Gladiator's Ripper
							moh(5, i(124678)),	-- Wild Gladiator's Pummeler
							moh(5, i(124679)),	-- Wild Gladiator's Quickblade
							moh(5, i(124680)),	-- Wild Gladiator's Longbow
							moh(5, i(124681)),	-- Wild Gladiator's Heavy Crossbow
							moh(5, i(124682)),	-- Wild Gladiator's Rifle
							moh(5, i(124683)),	-- Wild Gladiator's Pike
							moh(5, i(124684)),	-- Wild Gladiator's Staff
							moh(5, i(124726)),	-- Wild Gladiator's Spellblade
							moh(5, i(124727)),	-- Wild Gladiator's Gavel
							moh(5, i(124728)),	-- Wild Gladiator's Mageblade
							moh(5, i(124729)),	-- Wild Gladiator's Baton of Light
							moh(2, i(124730)),	-- Wild Gladiator's Touch of Defeat
							moh(5, i(124731)),	-- Wild Gladiator's Battle Staff
							moh(5, i(124732)),	-- Wild Gladiator's Energy Staff
							moh(2, i(124741)),	-- Wild Gladiator's Endgame
							moh(2, i(124742)),	-- Wild Gladiator's Reprieve
							moh(2, i(124748)),	-- Wild Gladiator's Redoubt
							moh(2, i(124749)),	-- Wild Gladiator's Barrier
							moh(5, i(124837)),	-- Wild Gladiator's Hacker
							moh(5, i(124838)),	-- Wild Gladiator's Render
							moh(5, i(124839)),	-- Wild Gladiator's Bonecracker
							moh(5, i(124840)),	-- Wild Gladiator's Slicer
							moh(5, i(124841)),	-- Wild Gladiator's Decapitator
							moh(5, i(124842)),	-- Wild Gladiator's Bonegrinder
							moh(5, i(124843)),	-- Wild Gladiator's Greatsword
							moh(5, i(124851)),	-- Wild Gladiator's Shield Wall
							moh(5, i(129934)),	-- Wild Gladiator's Runeaxe
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138515, {	-- Ensemble: Wild Gladiator's Dreadplate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124711)),	-- Wild Gladiator's Dreadplate Chestpiece (A)
							moh(2, i(124712)),	-- Wild Gladiator's Dreadplate Gauntlets (A)
							moh(3, i(124713)),	-- Wild Gladiator's Dreadplate Helm (A)
							moh(3, i(124714)),	-- Wild Gladiator's Dreadplate Legguards (A)
							moh(2, i(124715)),	-- Wild Gladiator's Dreadplate Shoulders (A)
						}),
						cl(DRUID, {
							moh(12, iensemble(138523, {	-- Ensemble: Wild Gladiator's Dragonhide Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124716)),	-- Wild Gladiator's Dragonhide Gloves (A)
							moh(3, i(124717)),	-- Wild Gladiator's Dragonhide Helm (A)
							moh(3, i(124718)),	-- Wild Gladiator's Dragonhide Legguards (A)
							moh(3, i(124719)),	-- Wild Gladiator's Dragonhide Robes (A)
							moh(2, i(124720)),	-- Wild Gladiator's Dragonhide Spaulders (A)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138521, {	-- Ensemble: Wild Gladiator's Chain Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124721)),	-- Wild Gladiator's Chain Armor (A)
							moh(2, i(124722)),	-- Wild Gladiator's Chain Gauntlets (A)
							moh(3, i(124723)),	-- Wild Gladiator's Chain Helm (A)
							moh(3, i(124724)),	-- Wild Gladiator's Chain Leggings (A)
							moh(2, i(124725)),	-- Wild Gladiator's Chain Spaulders (A)
						}),
						cl(MAGE, {
							moh(12, iensemble(138529, {	-- Ensemble: Wild Gladiator's Silk Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124773)),	-- Wild Gladiator's Silk Amice (A)
							moh(3, i(124770)),	-- Wild Gladiator's Silk Cowl (A)
							moh(2, i(124769)),	-- Wild Gladiator's Silk Handguards (A)
							moh(3, i(124772)),	-- Wild Gladiator's Silk Robe (A)
							moh(3, i(124771)),	-- Wild Gladiator's Silk Trousers (A)
						}),
						cl(MONK, {
							moh(12, iensemble(138525, {	-- Ensemble: Wild Gladiator's Ironskin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124793)),	-- Wild Gladiator's Ironskin Gloves (A)
							moh(3, i(124794)),	-- Wild Gladiator's Ironskin Helm (A)
							moh(3, i(124795)),	-- Wild Gladiator's Ironskin Legguards (A)
							moh(2, i(124796)),	-- Wild Gladiator's Ironskin Spaulders (A)
							moh(3, i(124797)),	-- Wild Gladiator's Ironskin Tunic (A)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138517, {	-- Ensemble: Wild Gladiator's Scaled Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124798)),	-- Wild Gladiator's Scaled Chestpiece (A)
							moh(2, i(124799)),	-- Wild Gladiator's Scaled Gauntlets (A)
							moh(3, i(124800)),	-- Wild Gladiator's Scaled Helm (A)
							moh(3, i(124801)),	-- Wild Gladiator's Scaled Legguards (A)
							moh(2, i(124802)),	-- Wild Gladiator's Scaled Shoulders (A)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138531, {	-- Ensemble: Wild Gladiator's Satin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124822)),	-- Wild Gladiator's Satin Gloves (A)
							moh(3, i(124823)),	-- Wild Gladiator's Satin Hood (A)
							moh(3, i(124824)),	-- Wild Gladiator's Satin Leggings (A)
							moh(2, i(124826)),	-- Wild Gladiator's Satin Mantle (A)
							moh(3, i(124825)),	-- Wild Gladiator's Satin Robe (A)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138527, {	-- Ensemble: Wild Gladiator's Leather Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124828)),	-- Wild Gladiator's Leather Gloves (A)
							moh(3, i(124829)),	-- Wild Gladiator's Leather Helm (A)
							moh(3, i(124830)),	-- Wild Gladiator's Leather Legguards (A)
							moh(2, i(124831)),	-- Wild Gladiator's Leather Spaulders (A)
							moh(3, i(124827)),	-- Wild Gladiator's Leather Tunic (A)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138519, {	-- Ensemble: Wild Gladiator's Ringmail Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124832)),	-- Wild Gladiator's Ringmail Armor (A)
							moh(2, i(124833)),	-- Wild Gladiator's Ringmail Gauntlets (A)
							moh(3, i(124834)),	-- Wild Gladiator's Ringmail Helm (A)
							moh(3, i(139014)),	-- Wild Gladiator's Ringmail Kilt (A)
							moh(2, i(124836)),	-- Wild Gladiator's Ringmail Spaulders (A)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138533, {	-- Ensemble: Wild Gladiator's Felweave Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(124879)),	-- Wild Gladiator's Felweave Amice (A)
							moh(3, i(124876)),	-- Wild Gladiator's Felweave Cowl (A)
							moh(2, i(124875)),	-- Wild Gladiator's Felweave Handguards (A)
							moh(3, i(124878)),	-- Wild Gladiator's Felweave Raiment (A)
							moh(3, i(124877)),	-- Wild Gladiator's Felweave Trousers (A)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138513, {	-- Ensemble: Wild Gladiator's Plate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(124880)),	-- Wild Gladiator's Plate Chestpiece (A)
							moh(2, i(124881)),	-- Wild Gladiator's Plate Gauntlets (A)
							moh(3, i(124882)),	-- Wild Gladiator's Plate Helm (A)
							moh(3, i(124883)),	-- Wild Gladiator's Plate Legguards (A)
							moh(2, i(124884)),	-- Wild Gladiator's Plate Shoulders (A)
						}),
						n(HEAD, {
							moh(3, i(124702)),	-- Wild Gladiator's Hood of Prowess (A)
							moh(3, i(124785)),	-- Wild Gladiator's Helm (A)
							moh(3, i(124761)),	-- Wild Gladiator's Helm (leather) (A)
							moh(3, i(124814)),	-- Wild Gladiator's Plate Helmet (A)
							moh(3, i(124707)),	-- Wild Gladiator's Hood of Crruelty (A)
							moh(3, i(124766)),	-- Wild Gladiator's Headdcover (A)
							moh(3, i(124819)),	-- Wild Gladiator's Plate Visor (A)
							moh(3, i(124790)),	-- Wild Gladiator's Coif (A)
						}),
						n(SHOULDER, {
							moh(2, i(124705)),	-- Wild Gladiator's Amice of Prowess (A)
							moh(2, i(124763)),	-- Wild Gladiator's Spaulders (Leather) (A)
							moh(2, i(124787)),	-- Wild Gladiator's Spaulders (Mail) (A)
							moh(2, i(124816)),	-- Wild Gladiator's Shoulderplates (A)
							moh(2, i(124710)),	-- Wild Gladiator's Mantle of Cruelty (A)
							moh(2, i(124768)),	-- Wild Gladiator's Pauldrons (A)
							moh(2, i(124792)),	-- Wild Gladiator's Pauldrons (Mail) (A)
							moh(2, i(124821)),	-- Wild Gladiator's Plate Pauldrons (A)
						}),
						n(BACK, {
							moh(1, i(124685)),	-- Wild Gladiator's Cape of Cruelty (A)
							moh(1, i(124686)),	-- Wild Gladiator's Cape of Prowess (A)
							moh(1, i(124844)),	-- Wild Gladiator's Cloak of Cruelty (A)
							moh(1, i(124852)),	-- Wild Gladiator's Cloak of Endurance (A)
							moh(1, i(124845)),	-- Wild Gladiator's Cloak of Prowess (A)
							moh(1, i(124736)),	-- Wild Gladiator's Drape of Contemplation (A)
							moh(1, i(124733)),	-- Wild Gladiator's Drape of Cruelty (A)
							moh(1, i(124735)),	-- Wild Gladiator's Drape of Meditation (A)
							moh(1, i(124734)),	-- Wild Gladiator's Drape of Prowess (A)
						}),
						n(CHEST, {
							moh(3, i(124704)),	-- Wild Gladiator's Robes of Prowess (A)
							moh(3, i(124759)),	-- Wild Gladiator's Tunic (Leahter) (A)
							moh(3, i(124783)),	-- Wild Gladiator's Armor (A)
							moh(3, i(124812)),	-- Wild Gladiator's Plate Breastplate (A)
							moh(3, i(124709)),	-- Wild Gladiator's Rainment of Cruelty(A)
							moh(3, i(124764)),	-- Wild Gladiator's Chestguard (Leather) (A)
							moh(3, i(124788)),	-- Wild Gladiator's Chestguard (Mail) (A)
							moh(3, i(124817)),	-- Wild Gladiator's Plate Chestguard (A)
						}),
						n(WRIST, {
							moh(1, i(124699)),	-- Wild Gladiator's Cuffs of Cruelty (A)
							moh(1, i(124698)),	-- Wild Gladiator's Cuffs of Prowess (A)
							moh(1, i(124756)),	-- Wild Gladiator's Bindings of Cruelty (A)
							moh(1, i(124757)),	-- Wild Gladiator's Bindings of Prowess (A)
							moh(1, i(124781)),	-- Wild Gladiator's Armbands of Cruelty (A)
							moh(1, i(124780)),	-- Wild Gladiator's Armbands of Prowess (A)
							moh(1, i(124809)),	-- Wild Gladiator's Armplates of Cruelty (A)
							moh(1, i(124810)),	-- Wild Gladiator's Armplates of Prowess (A)
							moh(1, i(124811)),	-- Wild Gladiator's Armplates of Victory (A)
							moh(1, i(124782)),	-- Wild Gladiator's Armbands of Victory (A)
							moh(1, i(139015)),	-- Wild Gladiator's Armbands of Alacrity (A)
							moh(1, i(124758)),	-- Wild Gladiator's Bindings of Victory (A)
							moh(1, i(124700)),	-- Wild Gladiator's Cuffs of Victory (A)
						}),
						n(HANDS, {
							moh(2, i(124701)),	-- Wild Gladiator's Gloves of Prowess (A)
							moh(2, i(124760)),	-- Wild Gladiator's Gloves (A)
							moh(2, i(124784)),	-- Wild Gladiator's Gauntlets (A)
							moh(2, i(124813)),	-- Wild Gladiator's Plate Gloves (A)
							moh(2, i(124706)),	-- Wild Gladiator's Handguards of Cruelty (A)
							moh(2, i(124789)),	-- Wild Gladiator's Gloves (mail) (A)
							moh(2, i(124818)),	-- Wild Gladiator's Plate Grips (A)
							moh(2, i(124765)),	-- Wild Gladiator's Grips (leather) (A)
						}),
						n(WAIST, {
							moh(1, i(124692)),	-- Wild Gladiator's Cord of Cruelty (A)
							moh(1, i(124693)),	-- Wild Gladiator's Cord of Prowess (A)
							moh(1, i(124751)),	-- Wild Gladiator's Belt of Cruelty (A)
							moh(1, i(124750)),	-- Wild Gladiator's Belt of Prowess (A)
							moh(1, i(124774)),	-- Wild Gladiator's Waistguard of Cruelty (A)
							moh(1, i(124775)),	-- Wild Gladiator's Waistguard of Prowess (A)
							moh(1, i(124803)),	-- Wild Gladiator's Girdle of Cruelty (A)
							moh(1, i(124804)),	-- Wild Gladiator's Girdle of Prowess (A)
							moh(1, i(124805)),	-- Wild Gladiator's Girdle of Victory (A)
							moh(1, i(124776)),	-- Wild Gladiator's Waistguard of Victory (A)
							moh(1, i(124752)),	-- Wild Gladiator's Belt of Victory (A)
							moh(1, i(124694)),	-- Wild Gladiator's Cord of Victory (A)
						}),
						n(LEGS, {
							moh(3, i(124703)),	-- Wild Gladiator's Leggings of Prowess (A)
							moh(3, i(124762)),	-- Wild Gladiator's Legguards (A)
							moh(3, i(124791)),	-- Wild Gladiator's Leggings (A)
							moh(3, i(124820)),	-- Wild Gladiator's Plate Leggings (A)
							moh(3, i(124708)),	-- Wild Gladiator's Trousers of Cruelty (A)
							moh(3, i(124786)),	-- Wild Gladiator's Leggings (Mail) (A)
							moh(3, i(124767)),	-- Wild Gladiator's Leggings (A)
							moh(3, i(124815)),	-- Wild Gladiator's Legplates (A)
						}),
						n(FEET, {
							moh(2, i(124753)),	-- Wild Gladiator's Boots of Cruelty (A)
							moh(2, i(124755)),	-- Wild Gladiator's Boots of Victory (A)
							moh(2, i(124754)),	-- Wild Gladiator's Boots of Prowess (A)
							moh(2, i(124777)),	-- Wild Gladiator's Footguards of Cruelty (A)
							moh(2, i(124778)),	-- Wild Gladiator's Footguards of Prowess (A)
							moh(2, i(124779)),	-- Wild Gladiator's Footguards of Victory (A)
							moh(2, i(124806)),	-- Wild Gladiator's Warboots of Cruelty (A)
							moh(2, i(124807)),	-- Wild Gladiator's Warboots of Prowess (A)
							moh(2, i(124808)),	-- Wild Gladiator's Warboots of Victory (A)
							moh(2, i(124695)),	-- Wild Gladiator's Treads of Cruelty (A)
							moh(2, i(124696)),	-- Wild Gladiator's Treads of Prowess (A)
							moh(2, i(124697)),	-- Wild Gladiator's Treads of Victory (A)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(124846)),	-- Wild Gladiator's Choker of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124847)),	-- Wild Gladiator's Choker of Prowess (A)
							un(REMOVED_FROM_GAME, i(124853)),	-- Wild Gladiator's Choker of Endurance (A)
							un(REMOVED_FROM_GAME, i(124687)),	-- Wild Gladiator's Necklace of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124688)),	-- Wild Gladiator's Necklace of Prowess (A)
							un(REMOVED_FROM_GAME, i(124740)),	-- Wild Gladiator's Pendant of Contemplation (A)
							un(REMOVED_FROM_GAME, i(124737)),	-- Wild Gladiator's Pendant of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124739)),	-- Wild Gladiator's Pendant of Meditation (A)
							un(REMOVED_FROM_GAME, i(124738)),	-- Wild Gladiator's Pendant of Prowess (A)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(124747)),	-- Wild Gladiator's Band of Contemplation (A)
							un(REMOVED_FROM_GAME, i(124743)),	-- Wild Gladiator's Band of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124746)),	-- Wild Gladiator's Band of Meditation (A)
							un(REMOVED_FROM_GAME, i(124744)),	-- Wild Gladiator's Band of Prowess (A)
							un(REMOVED_FROM_GAME, i(124745)),	-- Wild Gladiator's Band of Victory (A)
							un(REMOVED_FROM_GAME, i(124689)),	-- Wild Gladiator's Ring of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124690)),	-- Wild Gladiator's Ring of Prowess (A)
							un(REMOVED_FROM_GAME, i(124691)),	-- Wild Gladiator's Ring of Triumph (A)
							un(REMOVED_FROM_GAME, i(124849)),	-- Wild Gladiator's Signet of Accuracy (A)
							un(REMOVED_FROM_GAME, i(124848)),	-- Wild Gladiator's Signet of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124850)),	-- Wild Gladiator's Signet of Ruthlessness (A)
							un(REMOVED_FROM_GAME, i(124854)),	-- Wild Gladiator's Signet of Dedication (A)
							un(REMOVED_FROM_GAME, i(124855)),	-- Wild Gladiator's Signet of Endurance (A)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(124869)),	-- Wild Gladiator's Badge of Adaptation (A)
							un(REMOVED_FROM_GAME, i(124856)),	-- Wild Gladiator's Badge of Conquest (A)
							un(REMOVED_FROM_GAME, i(124861)),	-- Wild Gladiator's Badge of Dominance (A)
							un(REMOVED_FROM_GAME, i(124867)),	-- Wild Gladiator's Badge of Victory (A)
							un(REMOVED_FROM_GAME, i(124858)),	-- Wild Gladiator's Emblem of Cruelty (A)
							un(REMOVED_FROM_GAME, i(124860)),	-- Wild Gladiator's Emblem of Meditation (A)
							un(REMOVED_FROM_GAME, i(124859)),	-- Wild Gladiator's Emblem of Tenacity (A)
							un(REMOVED_FROM_GAME, i(124857)),	-- Wild Gladiator's Insignia of Conquest (A)
							un(REMOVED_FROM_GAME, i(124862)),	-- Wild Gladiator's Insignia of Dominance (A)
							un(REMOVED_FROM_GAME, i(124868)),	-- Wild Gladiator's Insignia of Victory (A)
							un(REMOVED_FROM_GAME, i(124863)),	-- Wild Gladiator's Medallion of Cruelty (A)
							un(REMOVED_FROM_GAME, i(127123)),	-- Wild Gladiator's Medallion of Adaptation (A)
							un(REMOVED_FROM_GAME, i(124866)),	-- Wild Gladiator's Medallion of Meditation (A)
							un(REMOVED_FROM_GAME, i(124865)),	-- Wild Gladiator's Medallion of Tenacity (A)
						}),
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					n(PVP_ASPIRANT, {
						cl(DEATHKNIGHT, {
							un(REMOVED_FROM_GAME, i(125547)),	-- Wild Aspirant's Dreadplate Chestpiece (H)
							un(REMOVED_FROM_GAME, i(125548)),	-- Wild Aspirant's Dreadplate Gauntlets (H)
							un(REMOVED_FROM_GAME, i(125549)),	-- Wild Aspirant's Dreadplate Helm (H)
							un(REMOVED_FROM_GAME, i(125550)),	-- Wild Aspirant's Dreadplate Legguards (H)
							un(REMOVED_FROM_GAME, i(125551)),	-- Wild Aspirant's Dreadplate Shoulders (H)
						}),
						cl(DRUID, {
							un(REMOVED_FROM_GAME, i(125552)),	-- Wild Aspirant's Dragonhide Gloves (H)
							un(REMOVED_FROM_GAME, i(125553)),	-- Wild Aspirant's Dragonhide Helm (H)
							un(REMOVED_FROM_GAME, i(125554)),	-- Wild Aspirant's Dragonhide Legguards (H)
							un(REMOVED_FROM_GAME, i(125555)),	-- Wild Aspirant's Dragonhide Tunic (H)
							un(REMOVED_FROM_GAME, i(125556)),	-- Wild Aspirant's Dragonhide Spaulders (H)
						}),
						cl(HUNTER, {
							un(REMOVED_FROM_GAME, i(125557)),	-- Wild Aspirant's Chain Armor (H)
							un(REMOVED_FROM_GAME, i(125558)),	-- Wild Aspirant's Chain Gauntlets (H)
							un(REMOVED_FROM_GAME, i(125559)),	-- Wild Aspirant's Chain Helm (H)
							un(REMOVED_FROM_GAME, i(125560)),	-- Wild Aspirant's Chain Leggings (H)
							un(REMOVED_FROM_GAME, i(125561)),	-- Wild Aspirant's Chain Spaulders (H)
						}),
						cl(MAGE, {
							un(REMOVED_FROM_GAME, i(125573)),	-- Wild Aspirant's Silk Handguards (H)
							un(REMOVED_FROM_GAME, i(125574)),	-- Wild Aspirant's Silk Cowl (H)
							un(REMOVED_FROM_GAME, i(125575)),	-- Wild Aspirant's Silk Trousers (H)
							un(REMOVED_FROM_GAME, i(125576)),	-- Wild Aspirant's Silk Robe (H)
							un(REMOVED_FROM_GAME, i(125577)),	-- Wild Aspirant's Silk Amice (H)
						}),
						cl(MONK, {
							un(REMOVED_FROM_GAME, i(125581)),	-- Wild Aspirant's Ironskin Gloves (H)
							un(REMOVED_FROM_GAME, i(125582)),	-- Wild Aspirant's Ironskin Helm (H)
							un(REMOVED_FROM_GAME, i(125583)),	-- Wild Aspirant's Ironskin Legguards (H)
							un(REMOVED_FROM_GAME, i(125584)),	-- Wild Aspirant's Ironskin Spaulders (H)
							un(REMOVED_FROM_GAME, i(125585)),	-- Wild Aspirant's Ironskin Tunic (H)
						}),
						cl(PALADIN, {
							un(REMOVED_FROM_GAME, i(125586)),	-- Wild Aspirant's Scaled Chestpiece (H)
							un(REMOVED_FROM_GAME, i(125587)),	-- Wild Aspirant's Scaled Gauntlets (H)
							un(REMOVED_FROM_GAME, i(125588)),	-- Wild Aspirant's Scaled Helm (H)
							un(REMOVED_FROM_GAME, i(125589)),	-- Wild Aspirant's Scaled Legguards (H)
							un(REMOVED_FROM_GAME, i(125590)),	-- Wild Aspirant's Scaled Shoulders (H)
						}),
						cl(PRIEST, {
							un(REMOVED_FROM_GAME, i(125594)),	-- Wild Aspirant's Satin Gloves (H)
							un(REMOVED_FROM_GAME, i(125595)),	-- Wild Aspirant's Satin Hood (H)
							un(REMOVED_FROM_GAME, i(125596)),	-- Wild Aspirant's Satin Leggings (H)
							un(REMOVED_FROM_GAME, i(125597)),	-- Wild Aspirant's Satin Robe (H)
							un(REMOVED_FROM_GAME, i(125598)),	-- Wild Aspirant's Satin Mantle (H)
						}),
						cl(ROGUE, {
							un(REMOVED_FROM_GAME, i(125600)),	-- Wild Aspirant's Leather Gloves (H)
							un(REMOVED_FROM_GAME, i(125603)),	-- Wild Aspirant's Leather Spaulders (H)
							un(REMOVED_FROM_GAME, i(125601)),	-- Wild Aspirant's Leather Helm (H)
							un(REMOVED_FROM_GAME, i(125602)),	-- Wild Aspirant's Leather Legguards (H)
							un(REMOVED_FROM_GAME, i(125599)),	-- Wild Aspirant's Leather Tunic (H)
						}),
						cl(SHAMAN, {
							un(REMOVED_FROM_GAME, i(125604)),	-- Wild Aspirant's Ringmail Armor (H)
							un(REMOVED_FROM_GAME, i(125605)),	-- Wild Aspirant's Ringmail Gauntlets (H)
							un(REMOVED_FROM_GAME, i(125606)),	-- Wild Aspirant's Ringmail Helm (H)
							un(REMOVED_FROM_GAME, i(125607)),	-- Wild Aspirant's Ringmail Leggings (H)
							un(REMOVED_FROM_GAME, i(125608)),	-- Wild Aspirant's Ringmail Spaulders (H)
						}),
						cl(WARLOCK, {
							un(REMOVED_FROM_GAME, i(125621)),	-- Wild Aspirant's Felweave Handguards (H)
							un(REMOVED_FROM_GAME, i(125622)),	-- Wild Aspirant's Felweave Cowl (H)
							un(REMOVED_FROM_GAME, i(125623)),	-- Wild Aspirant's Felweave Trousers (H)
							un(REMOVED_FROM_GAME, i(125624)),	-- Wild Aspirant's Felweave Raiment (H)
							un(REMOVED_FROM_GAME, i(125625)),	-- Wild Aspirant's Felweave Amice (H)
						}),
						cl(WARRIOR, {
							un(REMOVED_FROM_GAME, i(125626)),	-- Wild Aspirant's Plate Chestpiece (H)
							un(REMOVED_FROM_GAME, i(125627)),	-- Wild Aspirant's Plate Gauntlets (H)
							un(REMOVED_FROM_GAME, i(125628)),	-- Wild Aspirant's Plate Helm (H)
							un(REMOVED_FROM_GAME, i(125629)),	-- Wild Aspirant's Plate Legguards (H)
							un(REMOVED_FROM_GAME, i(125630)),	-- Wild Aspirant's Plate Shoulders (H)
						}),
						n(BACK, {
							un(REMOVED_FROM_GAME, i(125540)),	-- Wild Aspirant's Cape of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125562)),	-- Wild Aspirant's Drape of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125563)),	-- Wild Aspirant's Drape of Meditation (H)
							un(REMOVED_FROM_GAME, i(125609)),	-- Wild Aspirant's Cloak of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125612)),	-- Wild Aspirant's Cloak of Endurance (H)
						}),
						n(WRIST, {
							un(REMOVED_FROM_GAME, i(125546)),	-- Wild Aspirant's Cuffs of Prowess (H)
							un(REMOVED_FROM_GAME, i(125572)),	-- Wild Aspirant's Bindings of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125580)),	-- Wild Aspirant's Armbands of Prowess (H)
							un(REMOVED_FROM_GAME, i(125593)),	-- Wild Aspirant's Armplates of Cruelty (H)
						}),
						n(WAIST, {
							un(REMOVED_FROM_GAME, i(125544)),	-- Wild Aspirant's Cord of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125570)),	-- Wild Aspirant's Belt of Prowess (H)
							un(REMOVED_FROM_GAME, i(125578)),	-- Wild Aspirant's Waistguard of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125591)),	-- Wild Aspirant's Girdle of Cruelty (H)
						}),
						n(FEET, {
							un(REMOVED_FROM_GAME, i(125545)),	-- Wild Aspirant's Treads of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125571)),	-- Wild Aspirant's Boots of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125579)),	-- Wild Aspirant's Footguards of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125592)),	-- Wild Aspirant's Warboots of Cruelty (H)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(125613)),	-- Wild Aspirant's Choker of Endurance (H)
							un(REMOVED_FROM_GAME, i(125565)),	-- Wild Aspirant's Pendant of Meditation (H)
							un(REMOVED_FROM_GAME, i(125610)),	-- Wild Aspirant's Choker of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125541)),	-- Wild Aspirant's Necklace of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125564)),	-- Wild Aspirant's Pendant of Cruelty (H)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(125615)),	-- Wild Aspirant's Signet of Endurance (H)
							un(REMOVED_FROM_GAME, i(125614)),	-- Wild Aspirant's Signet of Dedication (H)
							un(REMOVED_FROM_GAME, i(125611)),	-- Wild Aspirant's Signet of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125566)),	-- Wild Aspirant's Band of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125567)),	-- Wild Aspirant's Band of Prowess (H)
							un(REMOVED_FROM_GAME, i(125568)),	-- Wild Aspirant's Band of Meditation (H)
							un(REMOVED_FROM_GAME, i(125569)),	-- Wild Aspirant's Band of Contemplation (H)
							un(REMOVED_FROM_GAME, i(125542)),	-- Wild Aspirant's Ring of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125543)),	-- Wild Aspirant's Ring of Prowess (H)
							un(REMOVED_FROM_GAME, i(127119)),	-- Wild Aspirant's Signet of Accuracy (H)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(125618)),	-- Wild Aspirant's Accolade of Victory (H)
							un(REMOVED_FROM_GAME, i(125616)),	-- Wild Aspirant's Accolade of Conquest (H)
							un(REMOVED_FROM_GAME, i(125619)),	-- Wild Aspirant's Accolade of Meditation (H)
							un(REMOVED_FROM_GAME, i(125617)),	-- Wild Aspirant's Accolade of Dominance (H)
							un(REMOVED_FROM_GAME, i(125620)),	-- Wild Aspirant's Accolade of Endurance (H)
						}),
					}),
					n(PVP_COMBATANT, {
						n(WEAPONS, {
							moh(80, iensemble(138629, {	-- Arsenal: Wild Combatant's Weapons (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125428)),	-- Wild Combatant's Barrier (H)
							moh(5, i(125408)),	-- Wild Combatant's Baton of Light (H)
							moh(5, i(125410)),	-- Wild Combatant's Battle Staff (H)
							moh(5, i(125494)),	-- Wild Combatant's Bonecracker (H)
							moh(5, i(125497)),	-- Wild Combatant's Bonegrinder (H)
							moh(5, i(127380)),	-- Wild Combatant's Chopper (H)
							moh(5, i(125362)),	-- Wild Combatant's Cleaver (H)
							moh(5, i(125496)),	-- Wild Combatant's Decapitator (H)
							moh(2, i(125420)),	-- Wild Combatant's Endgame (H)
							moh(5, i(125411)),	-- Wild Combatant's Energy Staff (H)
							moh(5, i(125406)),	-- Wild Combatant's Gavel (H)
							moh(5, i(125498)),	-- Wild Combatant's Greatsword (H)
							moh(5, i(125492)),	-- Wild Combatant's Hacker (H)
							moh(5, i(125368)),	-- Wild Combatant's Heavy Crossbow (H)
							moh(5, i(125367)),	-- Wild Combatant's Longbow (H)
							moh(5, i(125407)),	-- Wild Combatant's Mageblade (H)
							moh(5, i(125370)),	-- Wild Combatant's Pike (H)
							moh(5, i(125365)),	-- Wild Combatant's Pummeler (H)
							moh(5, i(125366)),	-- Wild Combatant's Quickblade (H)
							moh(2, i(125427)),	-- Wild Combatant's Redoubt (H)
							moh(5, i(125493)),	-- Wild Combatant's Render (H)
							moh(2, i(125421)),	-- Wild Combatant's Reprieve (H)
							moh(5, i(125369)),	-- Wild Combatant's Rifle (H)
							moh(5, i(125364)),	-- Wild Combatant's Ripper (H)
							moh(5, i(125363)),	-- Wild Combatant's Shanker (H)
							moh(2, i(125506)),	-- Wild Combatant's Shield Wall (H)
							moh(5, i(125495)),	-- Wild Combatant's Slicer (H)
							moh(5, i(125405)),	-- Wild Combatant's Spellblade (H)
							moh(5, i(125371)),	-- Wild Combatant's Staff (H)
							moh(5, i(125409)),	-- Wild Combatant's Touch of Defeat (H)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138602, {	-- Ensemble: Wild Combatant's Dreadplate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125390)),	-- Wild Combatant's Dreadplate Chestpiece (H)
							moh(2, i(125391)),	-- Wild Combatant's Dreadplate Gauntlets (H)
							moh(3, i(125392)),	-- Wild Combatant's Dreadplate Helm (H)
							moh(3, i(125393)),	-- Wild Combatant's Dreadplate Legguards (H)
							moh(2, i(125394)),	-- Wild Combatant's Dreadplate Shoulders (H)
							i(125474),	-- Wild Combatant's Plate Helmet (H)
							i(125476),	-- Wild Combatant's Shoulderplates (H)
							i(125472),	-- Wild Combatant's Plate Breastplate (H)
							i(125473),	-- Wild Combatant's Plate Gloves (H)
							i(125475),	-- Wild Combatant's Legplates (H)
						}),
						cl(DRUID, {
							moh(12, iensemble(138606, {	-- Ensemble: Wild Combatant's Dragonhide Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125395)),	-- Wild Combatant's Dragonhide Gloves (H)
							moh(3, i(125396)),	-- Wild Combatant's Dragonhide Helm (H)
							moh(3, i(125397)),	-- Wild Combatant's Dragonhide Legguards (H)
							moh(3, i(125398)),	-- Wild Combatant's Dragonhide Robes (H)
							moh(2, i(125399)),	-- Wild Combatant's Dragonhide Spaulders (H)
							i(125437),	-- Wild Combatant's Helm (H)
							i(125439),	-- Wild Combatant's Spaulders (H)
							i(125435),	-- Wild Combatant's Tunic (H)
							i(125436),	-- Wild Combatant's Gloves (H)
							i(125438),	-- Wild Combatant's Legguards (H)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138548, {	-- Ensemble: Wild Combatant's Chain Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125400)),	-- Wild Combatant's Chain Armor (H)
							moh(2, i(125401)),	-- Wild Combatant's Chain Gauntlets (H)
							moh(3, i(125402)),	-- Wild Combatant's Chain Helm (H)
							moh(3, i(125403)),	-- Wild Combatant's Chain Leggings (H)
							moh(2, i(125404)),	-- Wild Combatant's Chain Spaulders (H)
							i(125453),	-- Wild Combatant's Helm (H)
							i(125455),	-- Wild Combatant's Spaulders (H)
							i(125451),	-- Wild Combatant's Armor (H)
							i(125452),	-- Wild Combatant's Gauntlets (H)
							i(125454),	-- Wild Combatant's Leggings (H)
						}),
						cl(MAGE, {
							moh(12, iensemble(138550, {	-- Ensemble: Wild Combatant's Silk Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125444)),	-- Wild Combatant's Silk Amice (H)
							moh(3, i(125441)),	-- Wild Combatant's Silk Cowl (H)
							moh(2, i(125440)),	-- Wild Combatant's Silk Handguards (H)
							moh(3, i(125443)),	-- Wild Combatant's Silk Robe (H)
							moh(3, i(125442)),	-- Wild Combatant's Silk Trousers (H)
							i(125386),	-- Wild Combatant's Hood of Prowess (H)
							i(125389),	-- Wild Combatant's Amice of Prowess (H)
							i(125388),	-- Wild Combatant's Robes of Prowess (H)
							i(125385),	-- Wild Combatant's Gloves of Prowess (H)
							i(125387),	-- Wild Combatant's Leggings of Prowess (H)
						}),
						cl(MONK, {
							moh(12, iensemble(138608, {	-- Ensemble: Wild Combatant's Ironskin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125456)),	-- Wild Combatant's Ironskin Gloves (H)
							moh(3, i(125457)),	-- Wild Combatant's Ironskin Helm (H)
							moh(3, i(125458)),	-- Wild Combatant's Ironskin Legguards (H)
							moh(2, i(125459)),	-- Wild Combatant's Ironskin Spaulders (H)
							moh(3, i(125460)),	-- Wild Combatant's Ironskin Tunic (H)
							i(125437),	-- Wild Combatant's Helm (H)
							i(125439),	-- Wild Combatant's Spaulders (H)
							i(125435),	-- Wild Combatant's Tunic (H)
							i(125436),	-- Wild Combatant's Gloves (H)
							i(125438),	-- Wild Combatant's Legguards (H)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138604, {	-- Ensemble: Wild Combatant's Scaled Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125461)),	-- Wild Combatant's Scaled Chestpiece (H)
							moh(2, i(125462)),	-- Wild Combatant's Scaled Gauntlets (H)
							moh(3, i(125463)),	-- Wild Combatant's Scaled Helm (H)
							moh(3, i(125464)),	-- Wild Combatant's Scaled Legguards (H)
							moh(2, i(125465)),	-- Wild Combatant's Scaled Shoulders (H)
							i(125474),	-- Wild Combatant's Plate Helmet (H)
							i(125476),	-- Wild Combatant's Shoulderplates (H)
							i(125472),	-- Wild Combatant's Plate Breastplate (H)
							i(125473),	-- Wild Combatant's Plate Gloves (H)
							i(125475),	-- Wild Combatant's Legplates (H)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138552, {	-- Ensemble: Wild Combatant's Satin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125477)),	-- Wild Combatant's Satin Gloves (H)
							moh(3, i(125478)),	-- Wild Combatant's Satin Hood (H)
							moh(3, i(125479)),	-- Wild Combatant's Satin Leggings (H)
							moh(2, i(125481)),	-- Wild Combatant's Satin Mantle (H)
							moh(3, i(125480)),	-- Wild Combatant's Satin Robe (H)
							i(125386),	-- Wild Combatant's Hood of Prowess (H)
							i(125389),	-- Wild Combatant's Amice of Prowess (H)
							i(125388),	-- Wild Combatant's Robes of Prowess (H)
							i(125385),	-- Wild Combatant's Gloves of Prowess (H)
							i(125387),	-- Wild Combatant's Leggings of Prowess (H)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138610, {	-- Ensemble: Wild Combatant's Leather Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125483)),	-- Wild Combatant's Leather Gloves (H)
							moh(3, i(125484)),	-- Wild Combatant's Leather Helm (H)
							moh(3, i(125485)),	-- Wild Combatant's Leather Legguards (H)
							moh(2, i(125486)),	-- Wild Combatant's Leather Spaulders (H)
							moh(3, i(125482)),	-- Wild Combatant's Leather Tunic (H)
							i(125437),	-- Wild Combatant's Helm (H)
							i(125439),	-- Wild Combatant's Spaulders (H)
							i(125435),	-- Wild Combatant's Tunic (H)
							i(125436),	-- Wild Combatant's Gloves (H)
							i(125438),	-- Wild Combatant's Legguards (H)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138546, {	-- Ensemble: Wild Combatant's Ringmail Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125487)),	-- Wild Combatant's Ringmail Armor (H)
							moh(2, i(125488)),	-- Wild Combatant's Ringmail Gauntlets (H)
							moh(3, i(125489)),	-- Wild Combatant's Ringmail Helm (H)
							moh(3, i(125490)),	-- Wild Combatant's Ringmail Leggings (H)
							moh(2, i(125491)),	-- Wild Combatant's Ringmail Spaulders (H)
							i(125453),	-- Wild Combatant's Helm (H)
							i(125455),	-- Wild Combatant's Spaulders (H)
							i(125451),	-- Wild Combatant's Armor (H)
							i(125452),	-- Wild Combatant's Gauntlets (H)
							i(125454),	-- Wild Combatant's Leggings (H)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138554, {	-- Ensemble: Wild Combatant's Felweave Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125534)),	-- Wild Combatant's Felweave Amice (H)
							moh(3, i(125531)),	-- Wild Combatant's Felweave Cowl (H)
							moh(2, i(125530)),	-- Wild Combatant's Felweave Handguards (H)
							moh(3, i(125533)),	-- Wild Combatant's Felweave Raiment (H)
							moh(3, i(125532)),	-- Wild Combatant's Felweave Trousers (H)
							i(125386),	-- Wild Combatant's Hood of Prowess (H)
							i(125389),	-- Wild Combatant's Amice of Prowess (H)
							i(125388),	-- Wild Combatant's Robes of Prowess (H)
							i(125385),	-- Wild Combatant's Gloves of Prowess (H)
							i(125387),	-- Wild Combatant's Leggings of Prowess (H)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138600, {	-- Ensemble: Wild Combatant's Plate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125535)),	-- Wild Combatant's Plate Chestpiece (H)
							moh(2, i(125536)),	-- Wild Combatant's Plate Gauntlets (H)
							moh(3, i(125537)),	-- Wild Combatant's Plate Helm (H)
							moh(3, i(125538)),	-- Wild Combatant's Plate Legguards (H)
							moh(2, i(125539)),	-- Wild Combatant's Plate Shoulders (H)
							i(125474),	-- Wild Combatant's Plate Helmet (H)
							i(125476),	-- Wild Combatant's Shoulderplates (H)
							i(125472),	-- Wild Combatant's Plate Breastplate (H)
							i(125473),	-- Wild Combatant's Plate Gloves (H)
							i(125475),	-- Wild Combatant's Legplates (H)
						}),
						n(BACK, {
							moh(1, i(125372)),	-- Wild Combatant's Cape of Cruelty (H)
							moh(1, i(125373)),	-- Wild Combatant's Cape of Prowess (H)
							moh(1, i(125499)),	-- Wild Combatant's Cloak of Cruelty (H)
							moh(1, i(125526)),	-- Wild Combatant's Cloak of Endurance (H)
							moh(1, i(125500)),	-- Wild Combatant's Cloak of Prowess (H)
							moh(1, i(125415)),	-- Wild Combatant's Drape of Contemplation (H)
							moh(1, i(125412)),	-- Wild Combatant's Drape of Cruelty (H)
							moh(1, i(125414)),	-- Wild Combatant's Drape of Meditation (H)
							moh(1, i(125413)),	-- Wild Combatant's Drape of Prowess (H)
						}),
						n(WRIST, {
							moh(1, i(125384)),	-- Wild Combatant's Cuffs of Cruelty (H)
							moh(1, i(125383)),	-- Wild Combatant's Cuffs of Prowess (H)
							moh(1, i(125433)),	-- Wild Combatant's Bindings of Cruelty (H)
							moh(1, i(125434)),	-- Wild Combatant's Bindings of Prowess (H)
							moh(1, i(125450)),	-- Wild Combatant's Armbands of Cruelty (H)
							moh(1, i(125449)),	-- Wild Combatant's Armbands of Prowess (H)
							moh(1, i(125470)),	-- Wild Combatant's Armplates of Cruelty (H)
							moh(1, i(125471)),	-- Wild Combatant's Armplates of Prowess (H)
						}),
						n(WAIST, {
							moh(1, i(125379)),	-- Wild Combatant's Cord of Cruelty (H)
							moh(1, i(125380)),	-- Wild Combatant's Cord of Prowess (H)
							moh(1, i(125430)),	-- Wild Combatant's Belt of Cruelty (H)
							moh(1, i(125429)),	-- Wild Combatant's Belt of Prowess (H)
							moh(1, i(125445)),	-- Wild Combatant's Waistguard of Cruelty (H)
							moh(1, i(125446)),	-- Wild Combatant's Waistguard of Prowess (H)
							moh(1, i(125466)),	-- Wild Combatant's Girdle of Cruelty (H)
							moh(1, i(125467)),	-- Wild Combatant's Girdle of Prowess (H)
						}),
						n(FEET, {
							moh(2, i(125381)),	-- Wild Combatant's Treads of Cruelty (H)
							moh(2, i(125382)),	-- Wild Combatant's Treads of Prowess (H)
							moh(2, i(125431)),	-- Wild Combatant's Boots of Cruelty (H)
							moh(2, i(125432)),	-- Wild Combatant's Boots of Prowess (H)
							moh(2, i(125447)),	-- Wild Combatant's Footguards of Cruelty (H)
							moh(2, i(125448)),	-- Wild Combatant's Footguards of Prowess (H)
							moh(2, i(125468)),	-- Wild Combatant's Warboots of Cruelty (H)
							moh(2, i(125469)),	-- Wild Combatant's Warboots of Prowess (H)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(125501)),	-- Wild Combatant's Choker of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125502)),	-- Wild Combatant's Choker of Prowess (H)
							un(REMOVED_FROM_GAME, i(125527)),	-- Wild Combatant's Choker of Endurance (H)
							un(REMOVED_FROM_GAME, i(125374)),	-- Wild Combatant's Necklace of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125375)),	-- Wild Combatant's Necklace of Prowess (H)
							un(REMOVED_FROM_GAME, i(125419)),	-- Wild Combatant's Pendant of Contemplation (H)
							un(REMOVED_FROM_GAME, i(125416)),	-- Wild Combatant's Pendant of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125418)),	-- Wild Combatant's Pendant of Meditation (H)
							un(REMOVED_FROM_GAME, i(125417)),	-- Wild Combatant's Pendant of Prowess (H)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(125426)),	-- Wild Combatant's Band of Contemplation (H)
							un(REMOVED_FROM_GAME, i(125422)),	-- Wild Combatant's Band of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125425)),	-- Wild Combatant's Band of Meditation (H)
							un(REMOVED_FROM_GAME, i(125423)),	-- Wild Combatant's Band of Prowess (H)
							un(REMOVED_FROM_GAME, i(125424)),	-- Wild Combatant's Band of Victory (H)
							un(REMOVED_FROM_GAME, i(125376)),	-- Wild Combatant's Ring of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125377)),	-- Wild Combatant's Ring of Prowess (H)
							un(REMOVED_FROM_GAME, i(125378)),	-- Wild Combatant's Ring of Triumph (H)
							un(REMOVED_FROM_GAME, i(125504)),	-- Wild Combatant's Signet of Accuracy (H)
							un(REMOVED_FROM_GAME, i(125503)),	-- Wild Combatant's Signet of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125505)),	-- Wild Combatant's Signet of Ruthlessness (H)
							un(REMOVED_FROM_GAME, i(125528)),	-- Wild Combatant's Signet of Dedication (H)
							un(REMOVED_FROM_GAME, i(125529)),	-- Wild Combatant's Signet of Endurance (H)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(125520)),	-- Wild Combatant's Badge of Adaptation (H)
							un(REMOVED_FROM_GAME, i(125507)),	-- Wild Combatant's Badge of Conquest (H)
							un(REMOVED_FROM_GAME, i(125512)),	-- Wild Combatant's Badge of Dominance (H)
							un(REMOVED_FROM_GAME, i(125518)),	-- Wild Combatant's Badge of Victory (H)
							un(REMOVED_FROM_GAME, i(125509)),	-- Wild Combatant's Emblem of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125511)),	-- Wild Combatant's Emblem of Meditation (H)
							un(REMOVED_FROM_GAME, i(125510)),	-- Wild Combatant's Emblem of Tenacity (H)
							un(REMOVED_FROM_GAME, i(125508)),	-- Wild Combatant's Insignia of Conquest (H)
							un(REMOVED_FROM_GAME, i(125513)),	-- Wild Combatant's Insignia of Dominance (H)
							un(REMOVED_FROM_GAME, i(125519)),	-- Wild Combatant's Insignia of Victory (H)
							un(REMOVED_FROM_GAME, i(125515)),	-- Wild Combatant's Medallion of Adaptation (H)
							un(REMOVED_FROM_GAME, i(125514)),	-- Wild Combatant's Medallion of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125517)),	-- Wild Combatant's Medallion of Meditation (H)
							un(REMOVED_FROM_GAME, i(125516)),	-- Wild Combatant's Medallion of Tenacity (H)
						}),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(138634, {	-- Arsenal: Wild Gladiator's Weapons (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125228)),	-- Wild Gladiator's Barrier (H)
							moh(5, i(125208)),	-- Wild Gladiator's Baton of Light (H)
							moh(5, i(125210)),	-- Wild Gladiator's Battle Staff (H)
							moh(5, i(125318)),	-- Wild Gladiator's Bonecracker (H)
							moh(5, i(125321)),	-- Wild Gladiator's Bonegrinder (H)
							moh(5, i(125154)),	-- Wild Gladiator's Cleaver (H)
							moh(5, i(125320)),	-- Wild Gladiator's Decapitator (H)
							moh(2, i(125220)),	-- Wild Gladiator's Endgame (H)
							moh(5, i(125211)),	-- Wild Gladiator's Energy Staff (H)
							moh(5, i(125206)),	-- Wild Gladiator's Gavel (H)
							moh(5, i(125322)),	-- Wild Gladiator's Greatsword (H)
							moh(5, i(125316)),	-- Wild Gladiator's Hacker (H)
							moh(5, i(125160)),	-- Wild Gladiator's Heavy Crossbow(H)
							moh(5, i(125159)),	-- Wild Gladiator's Longbow (H)
							moh(5, i(125207)),	-- Wild Gladiator's Mageblade (H)
							moh(5, i(125162)),	-- Wild Gladiator's Pike (H)
							moh(5, i(125157)),	-- Wild Gladiator's Pummeler (H)
							moh(5, i(125158)),	-- Wild Gladiator's Quickblade (H)
							moh(2, i(125227)),	-- Wild Gladiator's Redoubt (H)
							moh(5, i(125317)),	-- Wild Gladiator's Render (H)
							moh(2, i(125221)),	-- Wild Gladiator's Reprieve (H)
							moh(5, i(125161)),	-- Wild Gladiator's Rifle (H)
							moh(5, i(125156)),	-- Wild Gladiator's Ripper (H)
							moh(5, i(129935)),	-- Wild Gladiator's Runeaxe (H)
							moh(5, i(125155)),	-- Wild Gladiator's Shanker (H)
							moh(2, i(125330)),	-- Wild Gladiator's Shield Wall (H)
							moh(5, i(125319)),	-- Wild Gladiator's Slicer (H)
							moh(5, i(125205)),	-- Wild Gladiator's Spellblade (H)
							moh(5, i(125163)),	-- Wild Gladiator's Staff (H)
							moh(5, i(125209)),	-- Wild Gladiator's Touch of Defeat (H)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138516, {	-- Ensemble: Wild Gladiator's Dreadplate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125190)),	-- Wild Gladiator's Dreadplate Chestpiece (H)
							moh(2, i(125191)),	-- Wild Gladiator's Dreadplate Gauntlets (H)
							moh(3, i(125192)),	-- Wild Gladiator's Dreadplate Helm (H)
							moh(3, i(125193)),	-- Wild Gladiator's Dreadplate Legguards (H)
							moh(2, i(125194)),	-- Wild Gladiator's Dreadplate Shoulders (H)
						}),
						cl(DRUID, {
							moh(12, iensemble(138524, {	-- Ensemble: Wild Gladiator's Dragonhide Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125195)),	-- Wild Gladiator's Dragonhide Gloves (H)
							moh(3, i(125196)),	-- Wild Gladiator's Dragonhide Helm (H)
							moh(3, i(125197)),	-- Wild Gladiator's Dragonhide Legguards (H)
							moh(3, i(125198)),	-- Wild Gladiator's Dragonhide Robes (H)
							moh(2, i(125199)),	-- Wild Gladiator's Dragonhide Spaulders (H)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138522, {	-- Ensemble: Wild Gladiator's Chain Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125200)),	-- Wild Gladiator's Chain Armor (H)
							moh(2, i(125201)),	-- Wild Gladiator's Chain Gauntlets (H)
							moh(3, i(125202)),	-- Wild Gladiator's Chain Helm (H)
							moh(3, i(125203)),	-- Wild Gladiator's Chain Leggings (H)
							moh(2, i(125204)),	-- Wild Gladiator's Chain Spaulders (H)
						}),
						cl(MAGE, {
							moh(12, iensemble(138530, {	-- Ensemble: Wild Gladiator's Silk Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125252)),	-- Wild Gladiator's Silk Amice (H)
							moh(3, i(125249)),	-- Wild Gladiator's Silk Cowl (H)
							moh(2, i(125248)),	-- Wild Gladiator's Silk Handguards (H)
							moh(3, i(125251)),	-- Wild Gladiator's Silk Robe (H)
							moh(3, i(125250)),	-- Wild Gladiator's Silk Trousers (H)
						}),
						cl(MONK, {
							moh(12, iensemble(138526, {	-- Ensemble: Wild Gladiator's Ironskin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125272)),	-- Wild Gladiator's Ironskin Gloves (H)
							moh(3, i(125273)),	-- Wild Gladiator's Ironskin Helm (H)
							moh(3, i(125274)),	-- Wild Gladiator's Ironskin Legguards (H)
							moh(2, i(125275)),	-- Wild Gladiator's Ironskin Spaulders (H)
							moh(3, i(125276)),	-- Wild Gladiator's Ironskin Tunic (H)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138518, {	-- Ensemble: Wild Gladiator's Scaled Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125277)),	-- Wild Gladiator's Scaled Chestpiece (H)
							moh(2, i(125278)),	-- Wild Gladiator's Scaled Gauntlets (H)
							moh(3, i(125279)),	-- Wild Gladiator's Scaled Helm (H)
							moh(3, i(125280)),	-- Wild Gladiator's Scaled Legguards (H)
							moh(2, i(125281)),	-- Wild Gladiator's Scaled Shoulders (H)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138532, {	-- Ensemble: Wild Gladiator's Satin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125301)),	-- Wild Gladiator's Satin Gloves (H)
							moh(3, i(125302)),	-- Wild Gladiator's Satin Hood (H)
							moh(3, i(125303)),	-- Wild Gladiator's Satin Leggings (H)
							moh(2, i(125305)),	-- Wild Gladiator's Satin Mantle (H)
							moh(3, i(125304)),	-- Wild Gladiator's Satin Robe (H)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138528, {	-- Ensemble: Wild Gladiator's Leather Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125307)),	-- Wild Gladiator's Leather Gloves (H)
							moh(3, i(125308)),	-- Wild Gladiator's Leather Helm (H)
							moh(3, i(125309)),	-- Wild Gladiator's Leather Legguards (H)
							moh(2, i(125310)),	-- Wild Gladiator's Leather Spaulders (H)
							moh(3, i(125306)),	-- Wild Gladiator's Leather Tunic (H)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138520, {	-- Ensemble: Wild Gladiator's Ringmail Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125311)),	-- Wild Gladiator's Ringmail Armor (H)
							moh(2, i(125312)),	-- Wild Gladiator's Ringmail Gauntlets (H)
							moh(3, i(125313)),	-- Wild Gladiator's Ringmail Helm (H)
							moh(3, i(125314)),	-- Wild Gladiator's Ringmail Leggings (H)
							moh(2, i(125315)),	-- Wild Gladiator's Ringmail Spaulders (H)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138534, {	-- Ensemble: Wild Gladiator's Felweave Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125356)),	-- Wild Gladiator's Felweave Amice (H)
							moh(3, i(125353)),	-- Wild Gladiator's Felweave Cowl (H)
							moh(2, i(125352)),	-- Wild Gladiator's Felweave Handguards (H)
							moh(3, i(125355)),	-- Wild Gladiator's Felweave Raiment (H)
							moh(3, i(125354)),	-- Wild Gladiator's Felweave Trousers (H)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138514, {	-- Ensemble: Wild Gladiator's Plate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125357)),	-- Wild Gladiator's Plate Chestpiece (H)
							moh(2, i(125358)),	-- Wild Gladiator's Plate Gauntlets (H)
							moh(3, i(125359)),	-- Wild Gladiator's Plate Helm (H)
							moh(3, i(125360)),	-- Wild Gladiator's Plate Legguards (H)
							moh(2, i(125361)),	-- Wild Gladiator's Plate Shoulders (H)
						}),
						n(HEAD, {
							moh(3, i(125181)),	-- Wild Gladiator's Hood of Prowess (H)
							moh(3, i(125240)),	-- Wild Gladiator's Helm (H)
							moh(3, i(125264)),	-- Wild Gladiator's Helm (H)
							moh(3, i(125293)),	-- Wild Gladiator's Plate Helmet (H)
							moh(3, i(125186)),	-- Wild Gladiator's Hood of Crruelty (H)
							moh(3, i(125245)),	-- Wild Gladiator's Headdcover (H)
							moh(3, i(125298)),	-- Wild Gladiator's Plate Visor (H)
							moh(3, i(125269)),	-- Wild Gladiator's Coif (H)
						}),
						n(SHOULDER, {
							moh(2, i(125184)),	-- Wild Gladiator's Amice of Prowess (H)
							moh(2, i(125242)),	-- Wild Gladiator's Spaulders (Leather) (H)
							moh(2, i(125266)),	-- Wild Gladiator's Spaulders (Mail) (H)
							moh(2, i(125295)),	-- Wild Gladiator's Shoulderplates (H)
							moh(2, i(125189)),	-- Wild Gladiator's Mantle of Cruelty (H)
							moh(2, i(125247)),	-- Wild Gladiator's Pauldrons (H)
							moh(2, i(125271)),	-- Wild Gladiator's Pauldrons (Mail) (H)
							moh(2, i(125300)),	-- Wild Gladiator's Plate Pauldrons (H)
						}),
						n(BACK, {
							moh(1, i(125164)),	-- Wild Gladiator's Cape of Cruelty (H)
							moh(1, i(125165)),	-- Wild Gladiator's Cape of Prowess (H)
							moh(1, i(125323)),	-- Wild Gladiator's Cloak of Cruelty (H)
							moh(1, i(125331)),	-- Wild Gladiator's Cloak of Endurance (H)
							moh(1, i(125324)),	-- Wild Gladiator's Cloak of Prowess (H)
							moh(1, i(125215)),	-- Wild Gladiator's Drape of Contemplation (H)
							moh(1, i(125212)),	-- Wild Gladiator's Drape of Cruelty (H)
							moh(1, i(125214)),	-- Wild Gladiator's Drape of Meditation (H)
							moh(1, i(125213)),	-- Wild Gladiator's Drape of Prowess (H)
						}),
						n(CHEST, {
							moh(3, i(125183)),	-- Wild Gladiator's Robes of Prowess (H)
							moh(3, i(125238)),	-- Wild Gladiator's Tunic (Leahter) (H)
							moh(3, i(125262)),	-- Wild Gladiator's Armor (H)
							moh(3, i(125291)),	-- Wild Gladiator's Plate Breastplate (H)
							moh(3, i(125188)),	-- Wild Gladiator's Rainment of Cruelty(H)
							moh(3, i(125243)),	-- Wild Gladiator's Chestguard (Leather) (H)
							moh(3, i(125267)),	-- Wild Gladiator's Chestguard (Mail) (H)
							moh(3, i(125296)),	-- Wild Gladiator's Plate Chestguard (H)
						}),
						n(WRIST, {
							moh(1, i(125178)),	-- Wild Gladiator's Cuffs of Cruelty (H)
							moh(1, i(125177)),	-- Wild Gladiator's Cuffs of Prowess (H)
							moh(1, i(125235)),	-- Wild Gladiator's Bindings of Cruelty (H)
							moh(1, i(125236)),	-- Wild Gladiator's Bindings of Prowess (H)
							moh(1, i(125260)),	-- Wild Gladiator's Armbands of Cruelty (H)
							moh(1, i(125259)),	-- Wild Gladiator's Armbands of Prowess (H)
							moh(1, i(125288)),	-- Wild Gladiator's Armplates of Cruelty (H)
							moh(1, i(125289)),	-- Wild Gladiator's Armplates of Prowess (H)
							moh(1, i(125290)),	-- Wild Gladiator's Armplates of Victory (H)
							moh(1, i(125261)),	-- Wild Gladiator's Armbands of Victory (H)
							moh(1, i(139016)),	-- Wild Gladiator's Armbands of Alacrity (H)
							moh(1, i(125237)),	-- Wild Gladiator's Bindings of Victory (H)
							moh(1, i(125179)),	-- Wild Gladiator's Cuffs of Victory (H)
						}),
						n(HANDS, {
							moh(2, i(125180)),	-- Wild Gladiator's Gloves of Prowess (H)
							moh(2, i(125239)),	-- Wild Gladiator's Gloves (H)
							moh(2, i(125263)),	-- Wild Gladiator's Gauntlets (H)
							moh(2, i(125292)),	-- Wild Gladiator's Plate Gloves (H)
							moh(2, i(125185)),	-- Wild Gladiator's Handguards of Cruelty (H)
							moh(2, i(125244)),	-- Wild Gladiator's Grips (H)
							moh(2, i(125297)),	-- Wild Gladiator's Plate Grips (H)
							moh(2, i(125268)),	-- Wild Gladiator's Gloves (Mail) (H)
						}),
						n(WAIST, {
							moh(1, i(125171)),	-- Wild Gladiator's Cord of Cruelty (H)
							moh(1, i(125172)),	-- Wild Gladiator's Cord of Prowess (H)
							moh(1, i(125230)),	-- Wild Gladiator's Belt of Cruelty (H)
							moh(1, i(125229)),	-- Wild Gladiator's Belt of Prowess (H)
							moh(1, i(125253)),	-- Wild Gladiator's Waistguard of Cruelty (H)
							moh(1, i(125254)),	-- Wild Gladiator's Waistguard of Prowess (H)
							moh(1, i(125282)),	-- Wild Gladiator's Girdle of Cruelty (H)
							moh(1, i(125283)),	-- Wild Gladiator's Girdle of Prowess (H)
							moh(1, i(125284)),	-- Wild Gladiator's Girdle of Victory (H)
							moh(1, i(125255)),	-- Wild Gladiator's Waistguard of Victory (H)
							moh(1, i(125231)),	-- Wild Gladiator's Belt of Victory (H)
							moh(1, i(125173)),	-- Wild Gladiator's Cord of Victory (H)
						}),
						n(LEGS, {
							moh(3, i(125182)),	-- Wild Gladiator's Leggings of Prowess (H)
							moh(3, i(125241)),	-- Wild Gladiator's Legguards (H)
							moh(3, i(125246)),	-- Wild Gladiator's Leggings (H)
							moh(3, i(125299)),	-- Wild Gladiator's Plate Leggings (H)
							moh(3, i(125187)),	-- Wild Gladiator's Trousers of Cruelty (H)
							moh(3, i(125265)),	-- Wild Gladiator's Leggings (Mail) (H)
							moh(3, i(125270)),	-- Wild Gladiator's Leggings (H)
							moh(3, i(125294)),	-- Wild Gladiator's Legplates (H)
						}),
						n(FEET, {
							moh(2, i(125232)),	-- Wild Gladiator's Boots of Cruelty (H)
							moh(2, i(125234)),	-- Wild Gladiator's Boots of Victory (H)
							moh(2, i(125233)),	-- Wild Gladiator's Boots of Prowess (H)
							moh(2, i(125256)),	-- Wild Gladiator's Footguards of Cruelty (H)
							moh(2, i(125257)),	-- Wild Gladiator's Footguards of Prowess (H)
							moh(2, i(125258)),	-- Wild Gladiator's Footguards of Victory (H)
							moh(2, i(125285)),	-- Wild Gladiator's Warboots of Cruelty (H)
							moh(2, i(125286)),	-- Wild Gladiator's Warboots of Prowess (H)
							moh(2, i(125287)),	-- Wild Gladiator's Warboots of Victory (H)
							moh(2, i(125174)),	-- Wild Gladiator's Treads of Cruelty (H)
							moh(2, i(125175)),	-- Wild Gladiator's Treads of Prowess (H)
							moh(2, i(125176)),	-- Wild Gladiator's Treads of Victory (H)
						}),
						n(NECK, {
							un(REMOVED_FROM_GAME, i(125325)),	-- Wild Gladiator's Choker of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125326)),	-- Wild Gladiator's Choker of Prowess (H)
							un(REMOVED_FROM_GAME, i(125332)),	-- Wild Gladiator's Choker of Endurance (H)
							un(REMOVED_FROM_GAME, i(125166)),	-- Wild Gladiator's Necklace of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125167)),	-- Wild Gladiator's Necklace of Prowess (H)
							un(REMOVED_FROM_GAME, i(125219)),	-- Wild Gladiator's Pendant of Contemplation (H)
							un(REMOVED_FROM_GAME, i(125216)),	-- Wild Gladiator's Pendant of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125218)),	-- Wild Gladiator's Pendant of Meditation (H)
							un(REMOVED_FROM_GAME, i(125217)),	-- Wild Gladiator's Pendant of Prowess (H)
						}),
						n(FINGER, {
							un(REMOVED_FROM_GAME, i(125226)),	-- Wild Gladiator's Band of Contemplation (H)
							un(REMOVED_FROM_GAME, i(125222)),	-- Wild Gladiator's Band of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125225)),	-- Wild Gladiator's Band of Meditation (H)
							un(REMOVED_FROM_GAME, i(125223)),	-- Wild Gladiator's Band of Prowess (H)
							un(REMOVED_FROM_GAME, i(125224)),	-- Wild Gladiator's Band of Victory (H)
							un(REMOVED_FROM_GAME, i(125168)),	-- Wild Gladiator's Ring of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125169)),	-- Wild Gladiator's Ring of Prowess (H)
							un(REMOVED_FROM_GAME, i(125170)),	-- Wild Gladiator's Ring of Triumph (H)
							un(REMOVED_FROM_GAME, i(125328)),	-- Wild Gladiator's Signet of Accuracy (H)
							un(REMOVED_FROM_GAME, i(125327)),	-- Wild Gladiator's Signet of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125329)),	-- Wild Gladiator's Signet of Ruthlessness (H)
							un(REMOVED_FROM_GAME, i(125333)),	-- Wild Gladiator's Signet of Dedication (H)
							un(REMOVED_FROM_GAME, i(125334)),	-- Wild Gladiator's Signet of Endurance (H)
						}),
						n(TRINKET, {
							un(REMOVED_FROM_GAME, i(125346)),	-- Wild Gladiator's Badge of Adaptation (H)
							un(REMOVED_FROM_GAME, i(125335)),	-- Wild Gladiator's Badge of Conquest (H)
							un(REMOVED_FROM_GAME, i(125340)),	-- Wild Gladiator's Badge of Dominance (H)
							un(REMOVED_FROM_GAME, i(125344)),	-- Wild Gladiator's Badge of Victory (H)
							un(REMOVED_FROM_GAME, i(125337)),	-- Wild Gladiator's Emblem of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125339)),	-- Wild Gladiator's Emblem of Meditation (H)
							un(REMOVED_FROM_GAME, i(125338)),	-- Wild Gladiator's Emblem of Tenacity (H)
							un(REMOVED_FROM_GAME, i(125336)),	-- Wild Gladiator's Insignia of Conquest (H)
							un(REMOVED_FROM_GAME, i(125341)),	-- Wild Gladiator's Insignia of Dominance (H)
							un(REMOVED_FROM_GAME, i(125345)),	-- Wild Gladiator's Insignia of Victory (H)
							un(REMOVED_FROM_GAME, i(127124)),	-- Wild Gladiator's Medallion of Cruelty (H)
							un(REMOVED_FROM_GAME, i(125343)),	-- Wild Gladiator's Medallion of Meditation (H)
							un(REMOVED_FROM_GAME, i(125342)),	-- Wild Gladiator's Medallion of Tenacity (H)
							un(REMOVED_FROM_GAME, i(124864)),	-- Wild Gladiator's Medallion of Adaptation (H)
						}),
					}),
				},
			}),
			n(PVP_ELITE, {
				un(REMOVED_FROM_GAME, i(127375)),	-- Wild Gladiator's Greatcloak A
				un(REMOVED_FROM_GAME, i(127366)),	-- Wild Gladiator's Tabard A
				un(REMOVED_FROM_GAME, i(127374)),	-- Wild Gladiator's Greatcloak H
				un(REMOVED_FROM_GAME, i(127365)),	-- Wild Gladiator's Tabard H
				n(WEAPONS, {
					un(REMOVED_FROM_GAME, i(125762)),	-- Wild Gladiator's Ripper
					un(REMOVED_FROM_GAME, i(125763)),	-- Wild Gladiator's Render
					un(REMOVED_FROM_GAME, i(125632)),	-- Wild Gladiator's Bonegrinder
					un(REMOVED_FROM_GAME, i(125650)),	-- Wild Gladiator's Heavy Crossbow
					un(REMOVED_FROM_GAME, i(125631)),	-- Wild Gladiator's Decapi
					un(REMOVED_FROM_GAME, i(125633)),	-- Wild Gladiator's Greatsword
					un(REMOVED_FROM_GAME, i(125634)),	-- Wild Gladiator's Cleaver
					un(REMOVED_FROM_GAME, i(125766)),	-- Wild Gladiator's Hacker
					un(REMOVED_FROM_GAME, i(129936)),	-- Wild Gladiator's Runeaxe
					un(REMOVED_FROM_GAME, i(125637)),	-- Wild Gladiator's Longbow
					un(REMOVED_FROM_GAME, i(125724)),	-- Wild Gladiator's Pike
					un(REMOVED_FROM_GAME, i(125676)),	-- Wild Gladiator's Rifle
					un(REMOVED_FROM_GAME, i(125646)),	-- Wild Gladiator's Spellblade
					un(REMOVED_FROM_GAME, i(125761)),	-- Wild Gladiator's Shanker
					un(REMOVED_FROM_GAME, i(125644)),	-- Wild Gladiator's Endgame
					un(REMOVED_FROM_GAME, i(125648)),	-- Wild Gladiator's Reprieve
					un(REMOVED_FROM_GAME, i(125636)),	-- Wild Gladiator's Quickblade
					un(REMOVED_FROM_GAME, i(125764)),	-- Wild Gladiator's Mageblade
					un(REMOVED_FROM_GAME, i(125768)),	-- Wild Gladiator's Slicer
					un(REMOVED_FROM_GAME, i(125647)),	-- Wild Gladiator's Battle Staff
					un(REMOVED_FROM_GAME, i(125668)),	-- Wild Gladiator's Staff
					un(REMOVED_FROM_GAME, i(125679)),	-- Wild Gladiator's Energy Staff
					un(REMOVED_FROM_GAME, i(125635)),	-- Wild Gladiator's Pummeler
					un(REMOVED_FROM_GAME, i(125677)),	-- Wild Gladiator's Gavel
					un(REMOVED_FROM_GAME, i(125767)),	-- Wild Gladiator's Bonecracker
					un(REMOVED_FROM_GAME, i(125645)),	-- Wild Gladiator's Barrier
					un(REMOVED_FROM_GAME, i(125678)),	-- Wild Gladiator's Redoubt
					un(REMOVED_FROM_GAME, i(125769)),	-- Wild Gladiator's Shield Wall
					un(REMOVED_FROM_GAME, i(125649)),	-- Wild Gladiator's Touch of Defeat
					un(REMOVED_FROM_GAME, i(125765)),	-- Wild Gladiator's Baton of Light
				}),
				cl(DEATHKNIGHT, {
					un(REMOVED_FROM_GAME, i(125651)),	-- Wild Gladiator's Dreadplate Chestpiece
					un(REMOVED_FROM_GAME, i(125652)),	-- Wild Gladiator's Dreadplate Gauntlets
					un(REMOVED_FROM_GAME, i(125720)),	-- Wild Gladiator's Dreadplate Girdle
					un(REMOVED_FROM_GAME, i(125653)),	-- Wild Gladiator's Dreadplate Helm
					un(REMOVED_FROM_GAME, i(125654)),	-- Wild Gladiator's Dreadplate Legguards
					un(REMOVED_FROM_GAME, i(125655)),	-- Wild Gladiator's Dreadplate Shoulders
					un(REMOVED_FROM_GAME, i(125723)),	-- Wild Gladiator's Dreadplate Warboots
				}),
				cl(DRUID, {
					un(REMOVED_FROM_GAME, i(125785)),	-- Wild Gladiator's Dragonhide Belt
					un(REMOVED_FROM_GAME, i(125784)),	-- Wild Gladiator's Dragonhide Footguards
					un(REMOVED_FROM_GAME, i(125656)),	-- Wild Gladiator's Dragonhide Gloves
					un(REMOVED_FROM_GAME, i(125657)),	-- Wild Gladiator's Dragonhide Helm
					un(REMOVED_FROM_GAME, i(125658)),	-- Wild Gladiator's Dragonhide Legguards
					un(REMOVED_FROM_GAME, i(125659)),	-- Wild Gladiator's Dragonhide Robes
					un(REMOVED_FROM_GAME, i(125660)),	-- Wild Gladiator's Dragonhide Spaulders
					un(REMOVED_FROM_GAME, i(125661)),	-- Wild Gladiator's Kodohide Belt
					un(REMOVED_FROM_GAME, i(125662)),	-- Wild Gladiator's Kodohide Footguards
					un(REMOVED_FROM_GAME, i(125663)),	-- Wild Gladiator's Kodohide Gloves
					un(REMOVED_FROM_GAME, i(125664)),	-- Wild Gladiator's Kodohide Helm
					un(REMOVED_FROM_GAME, i(125665)),	-- Wild Gladiator's Kodohide Legguards
					un(REMOVED_FROM_GAME, i(125666)),	-- Wild Gladiator's Kodohide Robes
					un(REMOVED_FROM_GAME, i(125667)),	-- Wild Gladiator's Kodohide Spaulders
					un(REMOVED_FROM_GAME, i(125669)),	-- Wild Gladiator's Wyrmhide Belt
					un(REMOVED_FROM_GAME, i(125670)),	-- Wild Gladiator's Wyrmhide Footguards
					un(REMOVED_FROM_GAME, i(125671)),	-- Wild Gladiator's Wyrmhide Gloves
					un(REMOVED_FROM_GAME, i(125672)),	-- Wild Gladiator's Wyrmhide Helm
					un(REMOVED_FROM_GAME, i(125673)),	-- Wild Gladiator's Wyrmhide Legguards
					un(REMOVED_FROM_GAME, i(125674)),	-- Wild Gladiator's Wyrmhide Robes
					un(REMOVED_FROM_GAME, i(125675)),	-- Wild Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					un(REMOVED_FROM_GAME, i(125684)),	-- Wild Gladiator's Chain Armor
					un(REMOVED_FROM_GAME, i(125685)),	-- Wild Gladiator's Chain Gauntlets
					un(REMOVED_FROM_GAME, i(125686)),	-- Wild Gladiator's Chain Helm
					un(REMOVED_FROM_GAME, i(125687)),	-- Wild Gladiator's Chain Leggings
					un(REMOVED_FROM_GAME, i(125688)),	-- Wild Gladiator's Chain Spaulders
					un(REMOVED_FROM_GAME, i(125680)),	-- Wild Gladiator's Chain Links
					un(REMOVED_FROM_GAME, i(125682)),	-- Wild Gladiator's Chain Sabatons
				}),
				cl(MAGE, {
					un(REMOVED_FROM_GAME, i(125693)),	-- Wild Gladiator's Silk Amice
					un(REMOVED_FROM_GAME, i(125638)),	-- Wild Gladiator's Silk Cord
					un(REMOVED_FROM_GAME, i(125690)),	-- Wild Gladiator's Silk Cowl
					un(REMOVED_FROM_GAME, i(125689)),	-- Wild Gladiator's Silk Handguards
					un(REMOVED_FROM_GAME, i(125692)),	-- Wild Gladiator's Silk Robe
					un(REMOVED_FROM_GAME, i(125641)),	-- Wild Gladiator's Silk Treads
					un(REMOVED_FROM_GAME, i(125691)),	-- Wild Gladiator's Silk Trousers
				}),
				cl(MONK, {
					un(REMOVED_FROM_GAME, i(125780)),	-- Wild Gladiator's Copperskin Boots
					un(REMOVED_FROM_GAME, i(125701)),	-- Wild Gladiator's Copperskin Gloves
					un(REMOVED_FROM_GAME, i(125702)),	-- Wild Gladiator's Copperskin Helm
					un(REMOVED_FROM_GAME, i(125703)),	-- Wild Gladiator's Copperskin Legguards
					un(REMOVED_FROM_GAME, i(125704)),	-- Wild Gladiator's Copperskin Spaulders
					un(REMOVED_FROM_GAME, i(125705)),	-- Wild Gladiator's Copperskin Tunic
					un(REMOVED_FROM_GAME, i(125781)),	-- Wild Gladiator's Copperskin Waistband
					un(REMOVED_FROM_GAME, i(125695)),	-- Wild Gladiator's Ironskin Boots
					un(REMOVED_FROM_GAME, i(125696)),	-- Wild Gladiator's Ironskin Gloves
					un(REMOVED_FROM_GAME, i(125697)),	-- Wild Gladiator's Ironskin Helm
					un(REMOVED_FROM_GAME, i(125698)),	-- Wild Gladiator's Ironskin Legguards
					un(REMOVED_FROM_GAME, i(125699)),	-- Wild Gladiator's Ironskin Spaulders
					un(REMOVED_FROM_GAME, i(125700)),	-- Wild Gladiator's Ironskin Tunic
					un(REMOVED_FROM_GAME, i(125694)),	-- Wild Gladiator's Ironskin Waistband
				}),
				cl(PALADIN, {
					un(REMOVED_FROM_GAME, i(125715)),	-- Wild Gladiator's Ornamented Chestguard
					un(REMOVED_FROM_GAME, i(125712)),	-- Wild Gladiator's Ornamented Clasp
					un(REMOVED_FROM_GAME, i(125716)),	-- Wild Gladiator's Ornamented Gloves
					un(REMOVED_FROM_GAME, i(125713)),	-- Wild Gladiator's Ornamented Greaves
					un(REMOVED_FROM_GAME, i(125717)),	-- Wild Gladiator's Ornamented Headcover
					un(REMOVED_FROM_GAME, i(125718)),	-- Wild Gladiator's Ornamented Legplates
					un(REMOVED_FROM_GAME, i(125719)),	-- Wild Gladiator's Ornamented Spaulders
					un(REMOVED_FROM_GAME, i(125706)),	-- Wild Gladiator's Scaled Chestpiece
					un(REMOVED_FROM_GAME, i(125711)),	-- Wild Gladiator's Scaled Clasp
					un(REMOVED_FROM_GAME, i(125707)),	-- Wild Gladiator's Scaled Gauntlets
					un(REMOVED_FROM_GAME, i(125714)),	-- Wild Gladiator's Scaled Greaves
					un(REMOVED_FROM_GAME, i(125708)),	-- Wild Gladiator's Scaled Helm
					un(REMOVED_FROM_GAME, i(125709)),	-- Wild Gladiator's Scaled Legguards
					un(REMOVED_FROM_GAME, i(125710)),	-- Wild Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					un(REMOVED_FROM_GAME, i(125640)),	-- Wild Gladiator's Mooncloth Cord
					un(REMOVED_FROM_GAME, i(125725)),	-- Wild Gladiator's Mooncloth Gloves
					un(REMOVED_FROM_GAME, i(125726)),	-- Wild Gladiator's Mooncloth Hood
					un(REMOVED_FROM_GAME, i(125727)),	-- Wild Gladiator's Mooncloth Leggings
					un(REMOVED_FROM_GAME, i(125729)),	-- Wild Gladiator's Mooncloth Mantle
					un(REMOVED_FROM_GAME, i(125728)),	-- Wild Gladiator's Mooncloth Robe
					un(REMOVED_FROM_GAME, i(125643)),	-- Wild Gladiator's Mooncloth Treads
					un(REMOVED_FROM_GAME, i(125783)),	-- Wild Gladiator's Satin Cord
					un(REMOVED_FROM_GAME, i(125730)),	-- Wild Gladiator's Satin Gloves
					un(REMOVED_FROM_GAME, i(125731)),	-- Wild Gladiator's Satin Hood
					un(REMOVED_FROM_GAME, i(125732)),	-- Wild Gladiator's Satin Leggings
					un(REMOVED_FROM_GAME, i(125734)),	-- Wild Gladiator's Satin Mantle
					un(REMOVED_FROM_GAME, i(125733)),	-- Wild Gladiator's Satin Robe
					un(REMOVED_FROM_GAME, i(125782)),	-- Wild Gladiator's Satin Treads
				}),
				cl(ROGUE, {
					un(REMOVED_FROM_GAME, i(125736)),	-- Wild Gladiator's Leather Boots
					un(REMOVED_FROM_GAME, i(125738)),	-- Wild Gladiator's Leather Gloves
					un(REMOVED_FROM_GAME, i(125739)),	-- Wild Gladiator's Leather Helm
					un(REMOVED_FROM_GAME, i(125740)),	-- Wild Gladiator's Leather Legguards
					un(REMOVED_FROM_GAME, i(125741)),	-- Wild Gladiator's Leather Spaulders
					un(REMOVED_FROM_GAME, i(125737)),	-- Wild Gladiator's Leather Tunic
					un(REMOVED_FROM_GAME, i(125735)),	-- Wild Gladiator's Leather Waistband
				}),
				cl(SHAMAN, {
					un(REMOVED_FROM_GAME, i(125750)),	-- Wild Gladiator's Linked Armor
					un(REMOVED_FROM_GAME, i(125751)),	-- Wild Gladiator's Linked Gauntlets
					un(REMOVED_FROM_GAME, i(125752)),	-- Wild Gladiator's Linked Helm
					un(REMOVED_FROM_GAME, i(125753)),	-- Wild Gladiator's Linked Leggings
					un(REMOVED_FROM_GAME, i(125683)),	-- Wild Gladiator's Linked Sabatons
					un(REMOVED_FROM_GAME, i(125754)),	-- Wild Gladiator's Linked Spaulders
					un(REMOVED_FROM_GAME, i(125756)),	-- Wild Gladiator's Mail Armor
					un(REMOVED_FROM_GAME, i(125744)),	-- Wild Gladiator's Mail Footguards
					un(REMOVED_FROM_GAME, i(125757)),	-- Wild Gladiator's Mail Gauntlets
					un(REMOVED_FROM_GAME, i(125758)),	-- Wild Gladiator's Mail Helm
					un(REMOVED_FROM_GAME, i(125759)),	-- Wild Gladiator's Mail Leggings
					un(REMOVED_FROM_GAME, i(125760)),	-- Wild Gladiator's Mail Spaulders
					un(REMOVED_FROM_GAME, i(125755)),	-- Wild Gladiator's Mail Waistguard
					un(REMOVED_FROM_GAME, i(125681)),	-- Wild Gladiator's Mail Waistband
					un(REMOVED_FROM_GAME, i(125745)),	-- Wild Gladiator's Ringmail Armor
					un(REMOVED_FROM_GAME, i(125743)),	-- Wild Gladiator's Ringmail Footguards
					un(REMOVED_FROM_GAME, i(125746)),	-- Wild Gladiator's Ringmail Gauntlets
					un(REMOVED_FROM_GAME, i(125747)),	-- Wild Gladiator's Ringmail Helm
					un(REMOVED_FROM_GAME, i(125748)),	-- Wild Gladiator's Ringmail Leggings
					un(REMOVED_FROM_GAME, i(125749)),	-- Wild Gladiator's Ringmail Spaulders
					un(REMOVED_FROM_GAME, i(125742)),	-- Wild Gladiator's Ringmail Waistguard
				}),
				cl(WARLOCK, {
					un(REMOVED_FROM_GAME, i(125774)),	-- Wild Gladiator's Felweave Amice
					un(REMOVED_FROM_GAME, i(125639)),	-- Wild Gladiator's Felweave Cord
					un(REMOVED_FROM_GAME, i(125771)),	-- Wild Gladiator's Felweave Cowl
					un(REMOVED_FROM_GAME, i(125770)),	-- Wild Gladiator's Felweave Handguards
					un(REMOVED_FROM_GAME, i(125773)),	-- Wild Gladiator's Felweave Rainment
					un(REMOVED_FROM_GAME, i(125642)),	-- Wild Gladiator's Felweave Treads
					un(REMOVED_FROM_GAME, i(125772)),	-- Wild Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					un(REMOVED_FROM_GAME, i(125775)),	-- Wild Gladiator's Plate Chestpiece
					un(REMOVED_FROM_GAME, i(125776)),	-- Wild Gladiator's Plate Gauntlets
					un(REMOVED_FROM_GAME, i(125721)),	-- Wild Gladiator's Plate Girdle
					un(REMOVED_FROM_GAME, i(125777)),	-- Wild Gladiator's Plate Helm
					un(REMOVED_FROM_GAME, i(125778)),	-- Wild Gladiator's Plate Legguards
					un(REMOVED_FROM_GAME, i(125779)),	-- Wild Gladiator's Plate Shoulders
					un(REMOVED_FROM_GAME, i(125722)),	-- Wild Gladiator's Plate Warboots
				}),
			}),
		}),
		n(SEASON_WARMONGERING, {
			un(REMOVED_FROM_GAME, i(120356)),	-- Bronze Strongbox
			un(REMOVED_FROM_GAME, i(120355)),	-- Silver Strongbox
			un(REMOVED_FROM_GAME, i(120354)),	-- Gold Strongbox
			n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_6_2_2, REMOVED_7_0_3 }, }, {
				ach(10113),	-- Challenger: Warlords of Draenor Season 3
				ach(10118, {	-- Defender of the Alliance: Warlords of Draenor Season 3
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(310, {	-- <Name> Defender of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10119, {	-- Defender of the Horde: Warlords of Draenor Season 3
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(313, {	-- <Name> Defender of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10111, {	-- Duelist: Warlords of Draenor Season 3
					elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
						["timeline"] = { ADDED_7_3_2 },
					})),
				}),
				ach(10110, {	-- Gladiator: Warlords of Draenor Season 3
					i(128282),	-- Warmongering Gladiator's Felblood Gronnling (MOUNT!)
				}),
				ach(10116, {	-- Guardian of the Alliance: Warlords of Draenor Season 3
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(309, {	-- <Name> Guardian of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10117, {	-- Guardian of the Horde: Warlords of Draenor Season 3
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(312, {	-- <Name> Guardian of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10114, {	-- Hero of the Alliance: Warmongering
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(10115, {	-- Hero of the Horde: Warmongering
					["races"] = HORDE_ONLY,
					["groups"] = {
						elitepvp(i(120287, {	-- Enchanter's Illusion - Primal Victory (ILLUSION!)
							["timeline"] = { ADDED_7_3_2 },
						})),
					},
				}),
				ach(10112),	-- Rival: Warlords of Draenor Season 3
				ach(10120, {	-- Soldier of the Alliance: Warlords of Draenor Season 3
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						title(311, {	-- <Name> Soldier of the Alliance
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10121, {	-- Soldier of the Horde: Warlords of Draenor Season 3
					["races"] = HORDE_ONLY,
					["groups"] = {
						title(314, {	-- <Name> Soldier of the Horde
							["races"] = HORDE_ONLY,
							-- #if AFTER 8.0.1
							["collectible"] = false,	-- Blizzard....
							-- #endif
						}),
					},
				}),
				ach(10095, {	-- Warmongering Combatant (Alliance) Warlords of Draenor Season 3
					["races"] = ALLIANCE_ONLY,
				}),
				ach(10094, {	-- Warmongering Combatant (Horde) Warlords of Draenor Season 3
					["races"] = HORDE_ONLY,
				}),
				ach(10097, {	-- Warmongering Gladiator: Warlords of Draenor Season 3
					title(316),	-- Warmongering Gladiator <Name>
				}),
				ach(10146, {	-- Wild Gladiator's Felblood Gronnling
					["provider"] = { "i", 128282 },	-- Wild Gladiator's Felblood Gronnling
					["filterID"] = MOUNTS,
				}),
				ach(11722, {["timeline"] = {ADDED_7_2_0}}),	-- War-Mog-ering (PvP Season 18)
			})),
			n(FACTION_HEADER_ALLIANCE, {
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					n(PVP_ASPIRANT, {
						cl(DEATHKNIGHT, {
							i(126184),	-- Warmongering Aspirant's Dreadplate Chestpiece (A)
							i(126185),	-- Warmongering Aspirant's Dreadplate Gauntlets (A)
							i(126186),	-- Warmongering Aspirant's Dreadplate Helm (A)
							i(126187),	-- Warmongering Aspirant's Dreadplate Legguards (A)
							i(126188),	-- Warmongering Aspirant's Dreadplate Shoulders (A)
						}),
						cl(DRUID, {
							i(126189),	-- Warmongering Aspirant's Dragonhide Gloves (A)
							i(126190),	-- Warmongering Aspirant's Dragonhide Helm (A)
							i(126191),	-- Warmongering Aspirant's Dragonhide Legguards (A)
							i(126193),	-- Warmongering Aspirant's Dragonhide Spaulders (A)
							i(126192),	-- Warmongering Aspirant's Dragonhide Tunic (A)
						}),
						cl(HUNTER, {
							i(126194),	-- Warmongering Aspirant's Chain Armor (A)
							i(126195),	-- Warmongering Aspirant's Chain Gauntlets (A)
							i(126196),	-- Warmongering Aspirant's Chain Helm (A)
							i(126197),	-- Warmongering Aspirant's Chain Leggings (A)
							i(126198),	-- Warmongering Aspirant's Chain Spaulders (A)
						}),
						cl(MAGE, {
							i(126214),	-- Warmongering Aspirant's Silk Amice (A)
							i(126211),	-- Warmongering Aspirant's Silk Cowl (A)
							i(126210),	-- Warmongering Aspirant's Silk Handguards (A)
							i(126213),	-- Warmongering Aspirant's Silk Robe (A)
							i(126212),	-- Warmongering Aspirant's Silk Trousers (A)
						}),
						cl(MONK, {
							i(126218),	-- Warmongering Aspirant's Ironskin Gloves (A)
							i(126219),	-- Warmongering Aspirant's Ironskin Helm (A)
							i(126220),	-- Warmongering Aspirant's Ironskin Legguards (A)
							i(126221),	-- Warmongering Aspirant's Ironskin Spaulders (A)
							i(126222),	-- Warmongering Aspirant's Ironskin Tunic (A)
						}),
						cl(PALADIN, {
							i(126223),	-- Warmongering Aspirant's Scaled Chestpiece (A)
							i(126224),	-- Warmongering Aspirant's Scaled Gauntlets (A)
							i(126225),	-- Warmongering Aspirant's Scaled Helm (A)
							i(126226),	-- Warmongering Aspirant's Scaled Legguards (A)
							i(126227),	-- Warmongering Aspirant's Scaled Shoulders (A)
						}),
						cl(PRIEST, {
							i(126231),	-- Warmongering Aspirant's Satin Gloves (A)
							i(126232),	-- Warmongering Aspirant's Satin Hood (A)
							i(126233),	-- Warmongering Aspirant's Satin Leggings (A)
							i(126235),	-- Warmongering Aspirant's Satin Mantle (A)
							i(126234),	-- Warmongering Aspirant's Satin Robe (A)
						}),
						cl(ROGUE, {
							i(126237),	-- Warmongering Aspirant's Leather Gloves (A)
							i(126238),	-- Warmongering Aspirant's Leather Helm (A)
							i(126239),	-- Warmongering Aspirant's Leather Legguards (A)
							i(126240),	-- Warmongering Aspirant's Leather Spaulders (A)
							i(126236),	-- Warmongering Aspirant's Leather Tunic (A)
						}),
						cl(SHAMAN, {
							i(126241),	-- Warmongering Aspirant's Ringmail Armor (A)
							i(126242),	-- Warmongering Aspirant's Ringmail Gauntlets (A)
							i(126243),	-- Warmongering Aspirant's Ringmail Helm (A)
							i(126244),	-- Warmongering Aspirant's Ringmail Leggings (A)
							i(126245),	-- Warmongering Aspirant's Ringmail Spaulders (A)
						}),
						cl(WARLOCK, {
							i(126262),	-- Warmongering Aspirant's Felweave Amice (A)
							i(126259),	-- Warmongering Aspirant's Felweave Cowl (A)
							i(126258),	-- Warmongering Aspirant's Felweave Handguards (A)
							i(126261),	-- Warmongering Aspirant's Felweave Raiment (A)
							i(126260),	-- Warmongering Aspirant's Felweave Trousers (A)
						}),
						cl(WARRIOR, {
							i(126263),	-- Warmongering Aspirant's Plate Chestpiece (A)
							i(126264),	-- Warmongering Aspirant's Plate Gauntlets (A)
							i(126265),	-- Warmongering Aspirant's Plate Helm (A)
							i(126266),	-- Warmongering Aspirant's Plate Legguards (A)
							i(126267),	-- Warmongering Aspirant's Plate Shoulders (A)
						}),
						n(BACK, {
							i(126177),	-- Warmongering Aspirant's Cape of Cruelty (A)
							i(126246),	-- Warmongering Aspirant's Cloak of Cruelty (A)
							i(126249),	-- Warmongering Aspirant's Cloak of Endurance (A)
							i(126199),	-- Warmongering Aspirant's Drape of Cruelty (A)
							i(126200),	-- Warmongering Aspirant's Drape of Meditation (A)
						}),
						n(WRIST, {
							i(126217),	-- Warmongering Aspirant's Armbands of Prowess (A)
							i(126230),	-- Warmongering Aspirant's Armplates of Cruelty (A)
							i(126209),	-- Warmongering Aspirant's Bindings of Cruelty (A)
							i(126183),	-- Warmongering Aspirant's Cuffs of Prowess (A)
						}),
						n(WAIST, {
							i(126207),	-- Warmongering Aspirant's Belt of Prowess (A)
							i(126181),	-- Warmongering Aspirant's Cord of Cruelty (A)
							i(126228),	-- Warmongering Aspirant's Girdle of Cruelty (A)
							i(126215),	-- Warmongering Aspirant's Waistguard of Cruelty (A)
						}),
						n(FEET, {
							i(126208),	-- Warmongering Aspirant's Boots of Cruelty (A)
							i(126216),	-- Warmongering Aspirant's Footguards of Cruelty (A)
							i(126182),	-- Warmongering Aspirant's Treads of Cruelty (A)
							i(126229),	-- Warmongering Aspirant's Warboots of Cruelty (A)
						}),
						n(NECK, {
							i(126247),	-- Warmongering Aspirant's Choker of Cruelty (A)
							i(126250),	-- Warmongering Aspirant's Choker of Endurance (A)
							i(126178),	-- Warmongering Aspirant's Necklace of Cruelty (A)
							i(126201),	-- Warmongering Aspirant's Pendant of Cruelty (A)
							i(126202),	-- Warmongering Aspirant's Pendant of Meditation (A)
						}),
						n(FINGER, {
							i(126206),	-- Warmongering Aspirant's Band of Contemplation (A)
							i(126203),	-- Warmongering Aspirant's Band of Cruelty (A)
							i(126205),	-- Warmongering Aspirant's Band of Meditation (A)
							i(126204),	-- Warmongering Aspirant's Band of Prowess (A)
							i(126179),	-- Warmongering Aspirant's Ring of Cruelty (A)
							i(126180),	-- Warmongering Aspirant's Ring of Prowess (A)
							i(127120),	-- Warmongering Aspirant's Signet of Accuracy (A)
							i(126248),	-- Warmongering Aspirant's Signet of Cruelty (A)
							i(126251),	-- Warmongering Aspirant's Signet of Dedication (A)
							i(126252),	-- Warmongering Aspirant's Signet of Endurance (A)
						}),
						n(TRINKET, {
							i(126253),	-- Warmongering Aspirant's Accolade of Conquest (A)
							i(126254),	-- Warmongering Aspirant's Accolade of Dominance (A)
							i(126257),	-- Warmongering Aspirant's Accolade of Endurance (A)
							i(126256),	-- Warmongering Aspirant's Accolade of Meditation (A)
							i(126255),	-- Warmongering Aspirant's Accolade of Victory (A)
						}),
					}),
					n(PVP_COMBATANT, {
						n(WEAPONS, {
							moh(80, iensemble(138628, {	-- Arsenal: Warmongering Combatant's Weapons (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126065)),	-- Warmongering Combatant's Barrier (A)
							moh(5, i(126045)),	-- Warmongering Combatant's Baton of Light (A)
							moh(5, i(126047)),	-- Warmongering Combatant's Battle Staff (A)
							moh(5, i(126131)),	-- Warmongering Combatant's Bonecracker (A)
							moh(5, i(126134)),	-- Warmongering Combatant's Bonegrinder (A)
							moh(5, i(127379)),	-- Warmongering Combatant's Chopper (A)
							moh(5, i(125999)),	-- Warmongering Combatant's Cleaver (A)
							moh(5, i(126133)),	-- Warmongering Combatant's Decapitator (A)
							moh(2, i(126057)),	-- Warmongering Combatant's Endgame (A)
							moh(5, i(126048)),	-- Warmongering Combatant's Energy Staff (A)
							moh(5, i(126043)),	-- Warmongering Combatant's Gavel (A)
							moh(5, i(126135)),	-- Warmongering Combatant's Greatsword (A)
							moh(5, i(126129)),	-- Warmongering Combatant's Hacker (A)
							moh(5, i(126005)),	-- Warmongering Combatant's Heavy Crossbow (A)
							moh(5, i(126004)),	-- Warmongering Combatant's Longbow (A)
							moh(5, i(126044)),	-- Warmongering Combatant's Mageblade (A)
							moh(5, i(126007)),	-- Warmongering Combatant's Pike (A)
							moh(5, i(126002)),	-- Warmongering Combatant's Pummeler (A)
							moh(5, i(126003)),	-- Warmongering Combatant's Quickblade (A)
							moh(2, i(126064)),	-- Warmongering Combatant's Redoubt (A)
							moh(5, i(126130)),	-- Warmongering Combatant's Render (A)
							moh(2, i(126058)),	-- Warmongering Combatant's Reprieve (A)
							moh(5, i(126006)),	-- Warmongering Combatant's Rifle (A)
							moh(5, i(126001)),	-- Warmongering Combatant's Ripper (A)
							moh(5, i(126000)),	-- Warmongering Combatant's Shanker (A)
							moh(2, i(126143)),	-- Warmongering Combatant's Shield Wall (A)
							moh(5, i(126132)),	-- Warmongering Combatant's Slicer (A)
							moh(5, i(126042)),	-- Warmongering Combatant's Spellblade (A)
							moh(5, i(126008)),	-- Warmongering Combatant's Staff (A)
							moh(5, i(126046)),	-- Warmongering Combatant's Touch of Defeat (A)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138589, {	-- Ensemble: Warmongering Combatant's Dreadplate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126027)),	-- Warmongering Combatant's Dreadplate Chestpiece (A)
							moh(2, i(126028)),	-- Warmongering Combatant's Dreadplate Gauntlets (A)
							moh(3, i(126029)),	-- Warmongering Combatant's Dreadplate Helm (A)
							moh(3, i(126030)),	-- Warmongering Combatant's Dreadplate Legguards (A)
							moh(2, i(126031)),	-- Warmongering Combatant's Dreadplate Shoulders (A)
							i(126112),	-- Warmongering Combatant's Legplates (A)
							i(126110),	-- Warmongering Combatant's Plate Gloves (A)
							i(126109),	-- Warmongering Combatant's Plate Breastplate (A)
							i(126113),	-- Warmongering Combatant's Shoulderplates (A)
							i(126111),	-- Warmongering Combatant's Plate Helmet (A)
						}),
						cl(DRUID, {
							moh(12, iensemble(138593, {	-- Ensemble: Warmongering Combatant's Dragonhide Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126032)),	-- Warmongering Combatant's Dragonhide Gloves (A)
							moh(3, i(126033)),	-- Warmongering Combatant's Dragonhide Helm (A)
							moh(3, i(126034)),	-- Warmongering Combatant's Dragonhide Legguards (A)
							moh(2, i(126036)),	-- Warmongering Combatant's Dragonhide Spaulders (A)
							moh(3, i(126035)),	-- Warmongering Combatant's Dragonhide Tunic (A)
							i(126074),	-- Warmongering Combatant's Helm (A)
							i(126076),	-- Warmongering Combatant's Spaulders (A)
							i(126072),	-- Warmongering Combatant's Tunic (A)
							i(126073),	-- Warmongering Combatant's Gloves (A)
							i(126075),	-- Warmongering Combatant's Legguards (A)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138537, {	-- Ensemble: Warmongering Combatant's Chain Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126037)),	-- Warmongering Combatant's Chain Armor (A)
							moh(2, i(126038)),	-- Warmongering Combatant's Chain Gauntlets (A)
							moh(3, i(126039)),	-- Warmongering Combatant's Chain Helm (A)
							moh(3, i(126040)),	-- Warmongering Combatant's Chain Leggings (A)
							moh(2, i(126041)),	-- Warmongering Combatant's Chain Spaulders (A)
							i(126091),	-- Warmongering Combatant's Leggings (A)
							i(126089),	-- Warmongering Combatant's Gauntlets (A)
							i(126088),	-- Warmongering Combatant's Armor (A)
							i(126092),	-- Warmongering Combatant's Spaulders (A)
							i(126090),	-- Warmongering Combatant's Helm (A)
						}),
						cl(MAGE, {
							moh(12, iensemble(138539, {	-- Ensemble: Warmongering Combatant's Silk Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126081)),	-- Warmongering Combatant's Silk Amice (A)
							moh(2, i(126078)),	-- Warmongering Combatant's Silk Cowl (A)
							moh(2, i(126077)),	-- Warmongering Combatant's Silk Handguards (A)
							moh(3, i(126080)),	-- Warmongering Combatant's Silk Robe (A)
							moh(3, i(126079)),	-- Warmongering Combatant's Silk Trousers (A)
							i(126023),	-- Warmongering Combatant's Hood of Prowess (A)
							i(126026),	-- Warmongering Combatant's Amice of Prowess (A)
							i(126025),	-- Warmongering Combatant's Robes of Prowess (A)
							i(126022),	-- Warmongering Combatant's Gloves of Prowess (A)
							i(126024),	-- Warmongering Combatant's Leggings of Prowess (A)
						}),
						cl(MONK, {
							moh(12, iensemble(138595, {	-- Ensemble: Warmongering Combatant's Ironskin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126093)),	-- Warmongering Combatant's Ironskin Gloves (A)
							moh(3, i(126094)),	-- Warmongering Combatant's Ironskin Helm (A)
							moh(3, i(126095)),	-- Warmongering Combatant's Ironskin Legguards (A)
							moh(2, i(126096)),	-- Warmongering Combatant's Ironskin Spaulders (A)
							moh(3, i(126097)),	-- Warmongering Combatant's Ironskin Tunic (A)
							i(126074),	-- Warmongering Combatant's Helm (A)
							i(126076),	-- Warmongering Combatant's Spaulders (A)
							i(126072),	-- Warmongering Combatant's Tunic (A)
							i(126073),	-- Warmongering Combatant's Gloves (A)
							i(126075),	-- Warmongering Combatant's Legguards (A)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138591, {	-- Ensemble: Warmongering Combatant's Scaled Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126098)),	-- Warmongering Combatant's Scaled Chestpiece (A)
							moh(2, i(126099)),	-- Warmongering Combatant's Scaled Gauntlets (A)
							moh(3, i(126100)),	-- Warmongering Combatant's Scaled Helm (A)
							moh(3, i(126101)),	-- Warmongering Combatant's Scaled Legguards (A)
							moh(2, i(126102)),	-- Warmongering Combatant's Scaled Shoulders (A)
							i(126112),	-- Warmongering Combatant's Legplates (A)
							i(126110),	-- Warmongering Combatant's Plate Gloves (A)
							i(126109),	-- Warmongering Combatant's Plate Breastplate (A)
							i(126113),	-- Warmongering Combatant's Shoulderplates (A)
							i(126111),	-- Warmongering Combatant's Plate Helmet (A)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138541, {	-- Ensemble: Warmongering Combatant's Satin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126114)),	-- Warmongering Combatant's Satin Gloves (A)
							moh(3, i(126115)),	-- Warmongering Combatant's Satin Hood (A)
							moh(3, i(126116)),	-- Warmongering Combatant's Satin Leggings (A)
							moh(2, i(126118)),	-- Warmongering Combatant's Satin Mantle (A)
							moh(3, i(126117)),	-- Warmongering Combatant's Satin Robe (A)
							i(126023),	-- Warmongering Combatant's Hood of Prowess (A)
							i(126026),	-- Warmongering Combatant's Amice of Prowess (A)
							i(126025),	-- Warmongering Combatant's Robes of Prowess (A)
							i(126022),	-- Warmongering Combatant's Gloves of Prowess (A)
							i(126024),	-- Warmongering Combatant's Leggings of Prowess (A)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138597, {	-- Ensemble: Warmongering Combatant's Leather Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126120)),	-- Warmongering Combatant's Leather Gloves (A)
							moh(3, i(126121)),	-- Warmongering Combatant's Leather Helm (A)
							moh(3, i(126122)),	-- Warmongering Combatant's Leather Legguards (A)
							moh(2, i(126123)),	-- Warmongering Combatant's Leather Spaulders (A)
							moh(3, i(126119)),	-- Warmongering Combatant's Leather Tunic (A)
							i(126074),	-- Warmongering Combatant's Helm (A)
							i(126076),	-- Warmongering Combatant's Spaulders (A)
							i(126072),	-- Warmongering Combatant's Tunic (A)
							i(126073),	-- Warmongering Combatant's Gloves (A)
							i(126075),	-- Warmongering Combatant's Legguards (A)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138535, {	-- Ensemble: Warmongering Combatant's Ringmail Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126124)),	-- Warmongering Combatant's Ringmail Armor (A)
							moh(2, i(126128)),	-- Warmongering Combatant's Ringmail Spaulders (A)
							moh(3, i(126127)),	-- Warmongering Combatant's Ringmail Leggings (A)
							moh(3, i(126126)),	-- Warmongering Combatant's Ringmail Helm (A)
							moh(2, i(126125)),	-- Warmongering Combatant's Ringmail Gauntlets (A)
							i(126091),	-- Warmongering Combatant's Leggings (A)
							i(126089),	-- Warmongering Combatant's Gauntlets (A)
							i(126088),	-- Warmongering Combatant's Armor (A)
							i(126092),	-- Warmongering Combatant's Spaulders (A)
							i(126090),	-- Warmongering Combatant's Helm (A)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138543, {	-- Ensemble: Warmongering Combatant's Felweave Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126171)),	-- Warmongering Combatant's Felweave Amice (A)
							moh(2, i(126168)),	-- Warmongering Combatant's Felweave Cowl (A)
							moh(3, i(126167)),	-- Warmongering Combatant's Felweave Handguards (A)
							moh(2, i(126170)),	-- Warmongering Combatant's Felweave Raiment (A)
							moh(3, i(126169)),	-- Warmongering Combatant's Felweave Trousers (A)
							i(126023),	-- Warmongering Combatant's Hood of Prowess (A)
							i(126026),	-- Warmongering Combatant's Amice of Prowess (A)
							i(126025),	-- Warmongering Combatant's Robes of Prowess (A)
							i(126022),	-- Warmongering Combatant's Gloves of Prowess (A)
							i(126024),	-- Warmongering Combatant's Leggings of Prowess (A)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138587, {	-- Ensemble: Warmongering Combatant's Plate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126172)),	-- Warmongering Combatant's Plate Chestpiece (A)
							moh(2, i(126173)),	-- Warmongering Combatant's Plate Gauntlets (A)
							moh(3, i(126174)),	-- Warmongering Combatant's Plate Helm (A)
							moh(3, i(126175)),	-- Warmongering Combatant's Plate Legguards (A)
							moh(2, i(126176)),	-- Warmongering Combatant's Plate Shoulders (A)
							i(126112),	-- Warmongering Combatant's Legplates (A)
							i(126110),	-- Warmongering Combatant's Plate Gloves (A)
							i(126109),	-- Warmongering Combatant's Plate Breastplate (A)
							i(126113),	-- Warmongering Combatant's Shoulderplates (A)
							i(126111),	-- Warmongering Combatant's Plate Helmet (A)
						}),
						n(BACK, {
							moh(1, i(126009)),	-- Warmongering Combatant's Cape of Cruelty (A)
							moh(1, i(126010)),	-- Warmongering Combatant's Cape of Prowess (A)
							moh(1, i(126136)),	-- Warmongering Combatant's Cloak of Cruelty (A)
							moh(1, i(126163)),	-- Warmongering Combatant's Cloak of Endurance (A)
							moh(1, i(126137)),	-- Warmongering Combatant's Cloak of Prowess (A)
							moh(1, i(126052)),	-- Warmongering Combatant's Drape of Contemplation (A)
							moh(1, i(126049)),	-- Warmongering Combatant's Drape of Cruelty (A)
							moh(1, i(126051)),	-- Warmongering Combatant's Drape of Meditation (A)
							moh(1, i(126050)),	-- Warmongering Combatant's Drape of Prowess (A)
						}),
						n(WRIST, {
							moh(1, i(126021)),	-- Warmongering Combatant's Cuffs of Cruelty (A)
							moh(1, i(126020)),	-- Warmongering Combatant's Cuffs of Prowess (A)
							moh(1, i(126070)),	-- Warmongering Combatant's Bindings of Cruelty (A)
							moh(1, i(126071)),	-- Warmongering Combatant's Bindings of Prowess (A)
							moh(1, i(126087)),	-- Warmongering Combatant's Armbands of Cruelty (A)
							moh(1, i(126086)),	-- Warmongering Combatant's Armbands of Prowess (A)
							moh(1, i(126107)),	-- Warmongering Combatant's Armplates of Cruelty (A)
							moh(1, i(126108)),	-- Warmongering Combatant's Armplates of Prowess (A)
						}),
						n(WAIST, {
							moh(1, i(126016)),	-- Warmongering Combatant's Cord of Cruelty (A)
							moh(1, i(126017)),	-- Warmongering Combatant's Cord of Prowess (A)
							moh(1, i(126067)),	-- Warmongering Combatant's Belt of Cruelty (A)
							moh(1, i(126066)),	-- Warmongering Combatant's Belt of Prowess (A)
							moh(1, i(126082)),	-- Warmongering Combatant's Waistguard of Cruelty (A)
							moh(1, i(126083)),	-- Warmongering Combatant's Waistguard of Prowess (A)
							moh(1, i(126103)),	-- Warmongering Combatant's Girdle of Cruelty (A)
							moh(1, i(126104)),	-- Warmongering Combatant's Girdle of Prowess (A)
						}),
						n(FEET, {
							moh(2, i(126018)),	-- Warmongering Combatant's Treads of Cruelty (A)
							moh(2, i(126019)),	-- Warmongering Combatant's Treads of Prowess (A)
							moh(2, i(126068)),	-- Warmongering Combatant's Boots of Cruelty (A)
							moh(2, i(126069)),	-- Warmongering Combatant's Boots of Prowess (A)
							moh(2, i(126084)),	-- Warmongering Combatant's Footguards of Cruelty (A)
							moh(2, i(126085)),	-- Warmongering Combatant's Footguards of Prowess (A)
							moh(2, i(126105)),	-- Warmongering Combatant's Warboots of Cruelty (A)
							moh(2, i(126106)),	-- Warmongering Combatant's Warboots of Prowess (A)
						}),
						n(NECK, {
							i(126138),	-- Warmongering Combatant's Choker of Cruelty (A)
							i(126164),	-- Warmongering Combatant's Choker of Endurance (A)
							i(126139),	-- Warmongering Combatant's Choker of Prowess (A)
							i(126011),	-- Warmongering Combatant's Necklace of Cruelty (A)
							i(126012),	-- Warmongering Combatant's Necklace of Prowess (A)
							i(126056),	-- Warmongering Combatant's Pendant of Contemplation (A)
							i(126053),	-- Warmongering Combatant's Pendant of Cruelty (A)
							i(126055),	-- Warmongering Combatant's Pendant of Meditation (A)
							i(126054),	-- Warmongering Combatant's Pendant of Prowess (A)
						}),
						n(FINGER, {
							i(126063),	-- Warmongering Combatant's Band of Contemplation (A)
							i(126059),	-- Warmongering Combatant's Band of Cruelty (A)
							i(126062),	-- Warmongering Combatant's Band of Meditation (A)
							i(126060),	-- Warmongering Combatant's Band of Prowess (A)
							i(126061),	-- Warmongering Combatant's Band of Victory (A)
							i(126013),	-- Warmongering Combatant's Ring of Cruelty (A)
							i(126014),	-- Warmongering Combatant's Ring of Prowess (A)
							i(126015),	-- Warmongering Combatant's Ring of Triumph (A)
							i(126141),	-- Warmongering Combatant's Signet of Accuracy (A)
							i(126140),	-- Warmongering Combatant's Signet of Cruelty (A)
							i(126165),	-- Warmongering Combatant's Signet of Dedication (A)
							i(126166),	-- Warmongering Combatant's Signet of Endurance (A)
							i(126142),	-- Warmongering Combatant's Signet of Ruthlessness (A)
						}),
						n(TRINKET, {
							i(126158),	-- Warmongering Combatant's Accolade of Conquest (A)
							i(126159),	-- Warmongering Combatant's Accolade of Dominance (A)
							i(126162),	-- Warmongering Combatant's Accolade of Endurance (A)
							i(126161),	-- Warmongering Combatant's Accolade of Meditation (A)
							i(126160),	-- Warmongering Combatant's Accolade of Victory (A)
							i(126157),	-- Warmongering Combatant's Badge of Adaptation (A)
							i(126144),	-- Warmongering Combatant's Badge of Conquest (A)
							i(126149),	-- Warmongering Combatant's Badge of Dominance (A)
							i(126155),	-- Warmongering Combatant's Badge of Victory (A)
							i(126146),	-- Warmongering Combatant's Emblem of Cruelty (A)
							i(126148),	-- Warmongering Combatant's Emblem of Meditation (A)
							i(126147),	-- Warmongering Combatant's Emblem of Tenacity (A)
							i(126145),	-- Warmongering Combatant's Insignia of Conquest (A)
							i(126150),	-- Warmongering Combatant's Insignia of Dominance (A)
							i(126156),	-- Warmongering Combatant's Insignia of Victory (A)
							i(126152),	-- Warmongering Combatant's Medallion of Adaptation (A)
							i(126151),	-- Warmongering Combatant's Medallion of Cruelty (A)
							i(126154),	-- Warmongering Combatant's Medallion of Meditation (A)
							i(126153),	-- Warmongering Combatant's Medallion of Tenacity (A)
						}),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(138635, {	-- Arsenal: Warmongering Gladiator's Weapons (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125863)),	-- Warmongering Gladiator's Barrier (A)
							moh(5, i(125843)),	-- Warmongering Gladiator's Baton of Light (A)
							moh(5, i(125845)),	-- Warmongering Combatant's Battle Staff (A)
							moh(5, i(125953)),	-- Warmongering Gladiator's Bonecracker (A)
							moh(5, i(125956)),	-- Warmongering Gladiator's Bonegrinder (A)
							moh(5, i(125789)),	-- Warmongering Gladiator's Cleaver (A)
							moh(5, i(125955)),	-- Warmongering Gladiator's Decapitator (A)
							moh(2, i(125855)),	-- Warmongering Gladiator's Endgame (A)
							moh(5, i(125846)),	-- Warmongering Gladiator's Energy Staff (A)
							moh(5, i(125841)),	-- Warmongering Gladiator's Gavel (A)
							moh(5, i(125957)),	-- Warmongering Gladiator's Greatsword (A)
							moh(5, i(125951)),	-- Warmongering Gladiator's Hacker (A)
							moh(5, i(125795)),	-- Warmongering Gladiator's Heavy Crossbow (A)
							moh(5, i(125794)),	-- Warmongering Gladiator's Longbow (A)
							moh(5, i(125842)),	-- Warmongering Gladiator's Mageblade (A)
							moh(5, i(125797)),	-- Warmongering Gladiator's Pike (A)
							moh(5, i(125792)),	-- Warmongering Gladiator's Pummeler (A)
							moh(5, i(125793)),	-- Warmongering Gladiator's Quickblade (A)
							moh(2, i(125862)),	-- Warmongering Gladiator's Redoubt (A)
							moh(5, i(125952)),	-- Warmongering Gladiator's Render (A)
							moh(2, i(125856)),	-- Warmongering Gladiator's Reprieve (A)
							moh(5, i(125796)),	-- Warmongering Gladiator's Rifle (A)
							moh(5, i(125791)),	-- Warmongering Gladiator's Ripper (A)
							moh(5, i(125790)),	-- Warmongering Gladiator's Shanker (A)
							moh(2, i(125965)),	-- Warmongering Gladiator's Shield Wall (A)
							moh(5, i(125954)),	-- Warmongering Gladiator's Slicer (A)
							moh(5, i(125840)),	-- Warmongering Gladiator's Spellblade (A)
							moh(5, i(125798)),	-- Warmongering Gladiator's Staff (A)
							moh(5, i(125844)),	-- Warmongering Gladiator's Touch of Defeat (A)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138493, {	-- Ensemble: Warmongering Gladiator's Dreadplate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125825)),	-- Warmongering Gladiator's Dreadplate Chestpiece (A)
							moh(2, i(125826)),	-- Warmongering Gladiator's Dreadplate Gauntlets (A)
							moh(3, i(125827)),	-- Warmongering Gladiator's Dreadplate Helm (A)
							moh(3, i(125828)),	-- Warmongering Gladiator's Dreadplate Legguards (A)
							moh(2, i(125829)),	-- Warmongering Gladiator's Dreadplate Shoulders (A)
						}),
						cl(DRUID, {
							moh(12, iensemble(138501, {	-- Ensemble: Warmongering Gladiator's Dragonhide Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125830)),	-- Warmongering Gladiator's Dragonhide Gloves (A)
							moh(3, i(125831)),	-- Warmongering Gladiator's Dragonhide Helm (A)
							moh(3, i(125832)),	-- Warmongering Gladiator's Dragonhide Legguards (A)
							moh(3, i(125833)),	-- Warmongering Gladiator's Dragonhide Robes (A)
							moh(2, i(125834)),	-- Warmongering Gladiator's Dragonhide Spaulders (A)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138499, {	-- Ensemble: Warmongering Gladiator's Chain Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125835)),	-- Warmongering Gladiator's Chain Armor (A)
							moh(2, i(125836)),	-- Warmongering Gladiator's Chain Gauntlets (A)
							moh(3, i(125837)),	-- Warmongering Gladiator's Chain Helm (A)
							moh(3, i(125838)),	-- Warmongering Gladiator's Chain Leggings (A)
							moh(2, i(125839)),	-- Warmongering Gladiator's Chain Spaulders (A)
						}),
						cl(MAGE, {
							moh(12, iensemble(138507, {	-- Ensemble: Warmongering Gladiator's Silk Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125887)),	-- Warmongering Gladiator's Silk Amice (A)
							moh(2, i(125884)),	-- Warmongering Gladiator's Silk Cowl (A)
							moh(2, i(125883)),	-- Warmongering Gladiator's Silk Handguards (A)
							moh(3, i(125886)),	-- Warmongering Gladiator's Silk Robe (A)
							moh(3, i(125885)),	-- Warmongering Gladiator's Silk Trousers (A)
						}),
						cl(MONK, {
							moh(12, iensemble(138503, {	-- Ensemble: Warmongering Gladiator's Ironskin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125907)),	-- Warmongering Gladiator's Ironskin Gloves (A)
							moh(3, i(125908)),	-- Warmongering Gladiator's Ironskin Helm (A)
							moh(3, i(125909)),	-- Warmongering Gladiator's Ironskin Legguards (A)
							moh(2, i(125910)),	-- Warmongering Gladiator's Ironskin Spaulders (A)
							moh(3, i(125911)),	-- Warmongering Gladiator's Ironskin Tunic (A)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138495, {	-- Ensemble: Warmongering Gladiator's Scaled Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125912)),	-- Warmongering Gladiator's Scaled Chestpiece (A)
							moh(2, i(125913)),	-- Warmongering Gladiator's Scaled Gauntlets (A)
							moh(3, i(125914)),	-- Warmongering Gladiator's Scaled Helm (A)
							moh(3, i(125915)),	-- Warmongering Gladiator's Scaled Legguards (A)
							moh(2, i(125916)),	-- Warmongering Gladiator's Scaled Shoulders (A)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138509, {	-- Ensemble: Warmongering Gladiator's Satin Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125936)),	-- Warmongering Gladiator's Satin Gloves (A)
							moh(3, i(125937)),	-- Warmongering Gladiator's Satin Hood (A)
							moh(3, i(125938)),	-- Warmongering Gladiator's Satin Leggings (A)
							moh(2, i(125940)),	-- Warmongering Gladiator's Satin Mantle (A)
							moh(3, i(125939)),	-- Warmongering Gladiator's Satin Robe (A)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138505, {	-- Ensemble: Warmongering Gladiator's Leather Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(125942)),	-- Warmongering Gladiator's Leather Gloves (A)
							moh(3, i(125943)),	-- Warmongering Gladiator's Leather Helm (A)
							moh(3, i(125944)),	-- Warmongering Gladiator's Leather Legguards (A)
							moh(2, i(125945)),	-- Warmongering Gladiator's Leather Spaulders (A)
							moh(3, i(125941)),	-- Warmongering Gladiator's Leather Tunic (A)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138497, {	-- Ensemble: Warmongering Gladiator's Ringmail Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125946)),	-- Warmongering Gladiator's Ringmail Armor (A)
							moh(2, i(125947)),	-- Warmongering Gladiator's Ringmail Gauntlets (A)
							moh(3, i(125948)),	-- Warmongering Gladiator's Ringmail Helm (A)
							moh(3, i(125949)),	-- Warmongering Gladiator's Ringmail Kilt (A)
							moh(2, i(125950)),	-- Warmongering Gladiator's Ringmail Spaulders (A)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138511, {	-- Ensemble: Warmongering Gladiator's Felweave Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125993)),	-- Warmongering Gladiator's Felweave Amice (A)
							moh(2, i(125990)),	-- Warmongering Gladiator's Felweave Cowl (A)
							moh(3, i(125989)),	-- Warmongering Gladiator's Felweave Handguards (A)
							moh(2, i(125992)),	-- Warmongering Gladiator's Felweave Raiment (A)
							moh(3, i(125991)),	-- Warmongering Gladiator's Felweave Trousers (A)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138491, {	-- Ensemble: Warmongering Gladiator's Plate Armor (A)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(125994)),	-- Warmongering Gladiator's Plate Chestpiece (A)
							moh(2, i(125995)),	-- Warmongering Gladiator's Plate Gauntlets (A)
							moh(3, i(125996)),	-- Warmongering Gladiator's Plate Helm (A)
							moh(3, i(125997)),	-- Warmongering Gladiator's Plate Legguards (A)
							moh(2, i(125998)),	-- Warmongering Gladiator's Plate Shoulders (A)
						}),
						n(HEAD, {
							moh(3, i(125821)),	-- Warmongering Gladiator's Cowl of Cruelty (A)
							moh(3, i(125816)),	-- Warmongering Gladiator's Hood of Prowess (A)
							moh(3, i(125880)),	-- Warmongering Gladiator's Headcover (A)
							moh(3, i(125875)),	-- Warmongering Gladiator's Helm (A)
							moh(3, i(125904)),	-- Warmongering Gladiator's Coif (A)
							moh(3, i(125899)),	-- Warmongering Gladiator's Helm (A)
							moh(3, i(125928)),	-- Warmongering Gladiator's Plate Helmet (A)
							moh(3, i(125933)),	-- Warmongering Gladiator's Plate Visor (A)
						}),
						n(SHOULDER, {
							moh(2, i(125819)),	-- Warmongering Gladiator's Amice of Prowess (A)
							moh(2, i(125824)),	-- Warmongering Gladiator's Mantle of Cruelty (A)
							moh(2, i(125882)),	-- Warmongering Gladiator's Pauldrons (A)
							moh(2, i(125877)),	-- Warmongering Gladiator's Spaulders (A)
							moh(2, i(125906)),	-- Warmongering Gladiator's Pauldrons (A)
							moh(2, i(125901)),	-- Warmongering Gladiator's Spaulders (A)
							moh(2, i(125935)),	-- Warmongering Gladiator's Plate Pauldrons (A)
							moh(2, i(125930)),	-- Warmongering Gladiator's Shoulderplates (A)
						}),
						n(BACK, {
							moh(1, i(125799)),	-- Warmongering Gladiator's Cape of Cruelty (A)
							moh(1, i(125800)),	-- Warmongering Gladiator's Cape of Prowess (A)
							moh(1, i(125958)),	-- Warmongering Gladiator's Cloak of Cruelty (A)
							moh(1, i(125966)),	-- Warmongering Gladiator's Cloak of Endurance (A)
							moh(1, i(125959)),	-- Warmongering Gladiator's Cloak of Prowess (A)
							moh(1, i(125850)),	-- Warmongering Gladiator's Drape of Contemplation (A)
							moh(1, i(125847)),	-- Warmongering Gladiator's Drape of Cruelty (A)
							moh(1, i(125849)),	-- Warmongering Gladiator's Drape of Meditation (A)
							moh(1, i(125848)),	-- Warmongering Gladiator's Drape of Prowess (A)
						}),
						n(CHEST, {
							moh(3, i(125823)),	-- Warmongering Gladiator's Raiment of Cruelty (A)
							moh(3, i(125818)),	-- Warmongering Gladiator's Robes of Prowess (A)
							moh(3, i(125878)),	-- Warmongering Gladiator's Chestguard (A)
							moh(3, i(125873)),	-- Warmongering Gladiator's Tunic (A)
							moh(3, i(125897)),	-- Warmongering Gladiator's Armor (A)
							moh(3, i(125902)),	-- Warmongering Gladiator's Chestguard (A)
							moh(3, i(125926)),	-- Warmongering Gladiator's Plate Breastplate (A)
							moh(3, i(125931)),	-- Warmongering Gladiator's Plate Chestguard (A)
						}),
						n(WRIST, {
							moh(1, i(125813)),	-- Warmongering Gladiator's Cuffs of Cruelty (A)
							moh(1, i(125812)),	-- Warmongering Gladiator's Cuffs of Prowess (A)
							moh(1, i(125814)),	-- Warmongering Gladiator's Cuffs of Victory (A)
							moh(1, i(125870)),	-- Warmongering Gladiator's Bindings of Cruelty (A)
							moh(1, i(125871)),	-- Warmongering Gladiator's Bindings of Prowess (A)
							moh(1, i(125872)),	-- Warmongering Gladiator's Bindings of Victory (A)
							moh(1, i(139031)),	-- Warmongering Gladiator's Armbands of Alacrity (A)
							moh(1, i(125895)),	-- Warmongering Gladiator's Armbands of Cruelty (A)
							moh(1, i(125894)),	-- Warmongering Gladiator's Armbands of Prowess (A)
							moh(1, i(125896)),	-- Warmongering Gladiator's Armbands of Victory (A)
							moh(1, i(125923)),	-- Warmongering Gladiator's Armplates of Cruelty (A)
							moh(1, i(125924)),	-- Warmongering Gladiator's Armplates of Prowess (A)
							moh(1, i(125925)),	-- Warmongering Gladiator's Armplates of Victory (A)
						}),
						n(HANDS, {
							moh(2, i(125815)),	-- Warmongering Gladiator's Gloves of Prowess (A)
							moh(2, i(125820)),	-- Warmongering Gladiator's Handguards of Cruelty (A)
							moh(2, i(125874)),	-- Warmongering Gladiator's Gloves (A)
							moh(2, i(125879)),	-- Warmongering Gladiator's Grips (A)
							moh(2, i(125898)),	-- Warmongering Gladiator's Gauntlets (A)
							moh(2, i(125903)),	-- Warmongering Gladiator's Gloves (A)
							moh(2, i(125927)),	-- Warmongering Gladiator's Plate Gloves (A)
							moh(2, i(125932)),	-- Warmongering Gladiator's Plate Grips (A)
						}),
						n(WAIST, {
							moh(1, i(125806)),	-- Warmongering Gladiator's Cord of Cruelty (A)
							moh(1, i(125807)),	-- Warmongering Gladiator's Cord of Prowess (A)
							moh(1, i(125808)),	-- Warmongering Gladiator's Cord of Victory (A)
							moh(1, i(125865)),	-- Warmongering Gladiator's Belt of Cruelty (A)
							moh(1, i(125864)),	-- Warmongering Gladiator's Belt of Prowess (A)
							moh(1, i(125866)),	-- Warmongering Gladiator's Belt of Victory (A)
							moh(1, i(125888)),	-- Warmongering Gladiator's Waistguard of Cruelty (A)
							moh(1, i(125889)),	-- Warmongering Gladiator's Waistguard of Prowess (A)
							moh(1, i(125890)),	-- Warmongering Gladiator's Waistguard of Victory (A)
							moh(1, i(125917)),	-- Warmongering Gladiator's Girdle of Cruelty (A)
							moh(1, i(125918)),	-- Warmongering Gladiator's Girdle of Prowess (A)
							moh(1, i(125919)),	-- Warmongering Gladiator's Girdle of Victory (A)
						}),
						n(LEGS, {
							moh(3, i(125817)),	-- Warmongering Gladiator's Leggings of Prowess (A)
							moh(3, i(125822)),	-- Warmongering Gladiator's Trousers of Cruelty (A)
							moh(3, i(125881)),	-- Warmongering Gladiator's Leggings (A)
							moh(3, i(125876)),	-- Warmongering Gladiator's Legguards (A)
							moh(3, i(125900)),	-- Warmongering Gladiator's Leggings (A)
							moh(3, i(125905)),	-- Warmongering Gladiator's Leggings (A)
							moh(3, i(125929)),	-- Warmongering Gladiator's Legplates (A)
							moh(3, i(125934)),	-- Warmongering Gladiator's Plate Leggings (A)
						}),
						n(FEET, {
							moh(2, i(125809)),	-- Warmongering Gladiator's Treads of Cruelty (A)
							moh(2, i(125810)),	-- Warmongering Gladiator's Treads of Prowess (A)
							moh(2, i(125811)),	-- Warmongering Gladiator's Treads of Victory (A)
							moh(2, i(125867)),	-- Warmongering Gladiator's Boots of Cruelty (A)
							moh(2, i(125868)),	-- Warmongering Gladiator's Boots of Prowess (A)
							moh(2, i(125869)),	-- Warmongering Gladiator's Boots of Victory (A)
							moh(2, i(125891)),	-- Warmongering Gladiator's Footguards of Cruelty (A)
							moh(2, i(125892)),	-- Warmongering Gladiator's Footguards of Prowess (A)
							moh(2, i(125893)),	-- Warmongering Gladiator's Footguards of Victory (A)
							moh(2, i(125920)),	-- Warmongering Gladiator's Warboots of Cruelty (A)
							moh(2, i(125921)),	-- Warmongering Gladiator's Warboots of Prowess (A)
							moh(2, i(125922)),	-- Warmongering Gladiator's Warboots of Victory (A)
						}),
						n(NECK, {
							i(125960),	-- Warmongering Gladiator's Choker of Cruelty (A)
							i(125967),	-- Warmongering Gladiator's Choker of Endurance (A)
							i(125961),	-- Warmongering Gladiator's Choker of Prowess (A)
							i(125801),	-- Warmongering Gladiator's Necklace of Cruelty (A)
							i(125802),	-- Warmongering Gladiator's Necklace of Prowess (A)
							i(125854),	-- Warmongering Gladiator's Pendant of Contemplation (A)
							i(125851),	-- Warmongering Gladiator's Pendant of Cruelty (A)
							i(125853),	-- Warmongering Gladiator's Pendant of Meditation (A)
							i(125852),	-- Warmongering Gladiator's Pendant of Prowess (A)
						}),
						n(FINGER, {
							i(125861),	-- Warmongering Gladiator's Band of Contemplation (A)
							i(125857),	-- Warmongering Gladiator's Band of Cruelty (A)
							i(125860),	-- Warmongering Gladiator's Band of Meditation (A)
							i(125858),	-- Warmongering Gladiator's Band of Prowess (A)
							i(125859),	-- Warmongering Gladiator's Band of Victory (A)
							i(125803),	-- Warmongering Gladiator's Ring of Cruelty (A)
							i(125804),	-- Warmongering Gladiator's Ring of Prowess (A)
							i(125805),	-- Warmongering Gladiator's Ring of Triumph (A)
							i(125963),	-- Warmongering Gladiator's Signet of Accuracy (A)
							i(125962),	-- Warmongering Gladiator's Signet of Cruelty (A)
							i(125968),	-- Warmongering Gladiator's Signet of Dedication (A)
							i(125969),	-- Warmongering Gladiator's Signet of Endurance (A)
							i(125964),	-- Warmongering Gladiator's Signet of Ruthlessness (A)
						}),
						n(TRINKET, {
							i(125984),	-- Warmongering Gladiator's Accolade of Conquest (A)
							i(125985),	-- Warmongering Gladiator's Accolade of Dominance (A)
							i(125988),	-- Warmongering Gladiator's Accolade of Endurance (A)
							i(125987),	-- Warmongering Gladiator's Accolade of Meditation (A)
							i(125986),	-- Warmongering Gladiator's Accolade of Victory (A)
							i(125983),	-- Warmongering Gladiator's Badge of Adaptation (A)
							i(125970),	-- Warmongering Gladiator's Badge of Conquest (A)
							i(125975),	-- Warmongering Gladiator's Badge of Dominance (A)
							i(125981),	-- Warmongering Gladiator's Badge of Victory (A)
							i(125972),	-- Warmongering Gladiator's Emblem of Cruelty (A)
							i(125974),	-- Warmongering Gladiator's Emblem of Meditation (A)
							i(125973),	-- Warmongering Gladiator's Emblem of Tenacity (A)
							i(125971),	-- Warmongering Gladiator's Insignia of Conquest (A)
							i(125976),	-- Warmongering Gladiator's Insignia of Dominance (A)
							i(125982),	-- Warmongering Gladiator's Insignia of Victory (A)
							i(127125),	-- Warmongering Gladiator's Medallion of Adaptation (A)
							i(125977),	-- Warmongering Gladiator's Medallion of Cruelty (A)
							i(125980),	-- Warmongering Gladiator's Medallion of Meditation (A)
							i(125979),	-- Warmongering Gladiator's Medallion of Tenacity (A)
						}),
					}),
				},
			}),
			n(FACTION_HEADER_HORDE, {
				["races"] = HORDE_ONLY,
				["groups"] = {
					n(PVP_ASPIRANT, {
						cl(DEATHKNIGHT, {
							i(126661),	-- Warmongering Aspirant's Dreadplate Chestpiece (H)
							i(126662),	-- Warmongering Aspirant's Dreadplate Gauntlets (H)
							i(126663),	-- Warmongering Aspirant's Dreadplate Helm (H)
							i(126664),	-- Warmongering Aspirant's Dreadplate Legguards (H)
							i(126665),	-- Warmongering Aspirant's Dreadplate Shoulders (H)
						}),
						cl(DRUID, {
							i(126666),	-- Warmongering Aspirant's Dragonhide Gloves (H)
							i(126667),	-- Warmongering Aspirant's Dragonhide Helm (H)
							i(126668),	-- Warmongering Aspirant's Dragonhide Legguards (H)
							i(126670),	-- Warmongering Aspirant's Dragonhide Spaulders (H)
							i(126669),	-- Warmongering Aspirant's Dragonhide Tunic (H)
						}),
						cl(HUNTER, {
							i(126671),	-- Warmongering Aspirant's Chain Armor (H)
							i(126672),	-- Warmongering Aspirant's Chain Gauntlets (H)
							i(126673),	-- Warmongering Aspirant's Chain Helm (H)
							i(126674),	-- Warmongering Aspirant's Chain Leggings (H)
							i(126675),	-- Warmongering Aspirant's Chain Spaulders (H)
						}),
						cl(MAGE, {
							i(126691),	-- Warmongering Aspirant's Silk Amice (H)
							i(126688),	-- Warmongering Aspirant's Silk Cowl (H)
							i(126687),	-- Warmongering Aspirant's Silk Handguards (H)
							i(126690),	-- Warmongering Aspirant's Silk Robe (H)
							i(126689),	-- Warmongering Aspirant's Silk Trousers (H)
						}),
						cl(MONK, {
							i(126695),	-- Warmongering Aspirant's Ironskin Gloves (H)
							i(126696),	-- Warmongering Aspirant's Ironskin Helm (H)
							i(126697),	-- Warmongering Aspirant's Ironskin Legguards (H)
							i(126698),	-- Warmongering Aspirant's Ironskin Spaulders (H)
							i(126699),	-- Warmongering Aspirant's Ironskin Tunic (H)
						}),
						cl(PALADIN, {
							i(126700),	-- Warmongering Aspirant's Scaled Chestpiece (H)
							i(126701),	-- Warmongering Aspirant's Scaled Gauntlets (H)
							i(126702),	-- Warmongering Aspirant's Scaled Helm (H)
							i(126703),	-- Warmongering Aspirant's Scaled Legguards (H)
							i(126704),	-- Warmongering Aspirant's Scaled Shoulders (H)
						}),
						cl(PRIEST, {
							i(126708),	-- Warmongering Aspirant's Satin Gloves (H)
							i(126709),	-- Warmongering Aspirant's Satin Hood (H)
							i(126710),	-- Warmongering Aspirant's Satin Leggings (H)
							i(126712),	-- Warmongering Aspirant's Satin Mantle (H)
							i(126711),	-- Warmongering Aspirant's Satin Robe (H)
						}),
						cl(ROGUE, {
							i(126714),	-- Warmongering Aspirant's Leather Gloves (H)
							i(126715),	-- Warmongering Aspirant's Leather Helm (H)
							i(126716),	-- Warmongering Aspirant's Leather Legguards (H)
							i(126717),	-- Warmongering Aspirant's Leather Spaulders (H)
							i(126713),	-- Warmongering Aspirant's Leather Tunic (H)
						}),
						cl(SHAMAN, {
							i(126718),	-- Warmongering Aspirant's Ringmail Armor (H)
							i(126719),	-- Warmongering Aspirant's Ringmail Gauntlets (H)
							i(126720),	-- Warmongering Aspirant's Ringmail Helm (H)
							i(126721),	-- Warmongering Aspirant's Ringmail Leggings (H)
							i(126722),	-- Warmongering Aspirant's Ringmail Spaulders (H)
						}),
						cl(WARLOCK, {
							i(126739),	-- Warmongering Aspirant's Felweave Amice (H)
							i(126736),	-- Warmongering Aspirant's Felweave Cowl (H)
							i(126735),	-- Warmongering Aspirant's Felweave Handguards (H)
							i(126738),	-- Warmongering Aspirant's Felweave Raiment (H)
							i(126737),	-- Warmongering Aspirant's Felweave Trousers (H)
						}),
						cl(WARRIOR, {
							i(126740),	-- Warmongering Aspirant's Plate Chestpiece (H)
							i(126741),	-- Warmongering Aspirant's Plate Gauntlets (H)
							i(126742),	-- Warmongering Aspirant's Plate Helm (H)
							i(126743),	-- Warmongering Aspirant's Plate Legguards (H)
							i(126744),	-- Warmongering Aspirant's Plate Shoulders (H)
						}),
						n(BACK, {
							i(126654),	-- Warmongering Aspirant's Cape of Cruelty (H)
							i(126723),	-- Warmongering Aspirant's Cloak of Cruelty (H)
							i(126726),	-- Warmongering Aspirant's Cloak of Endurance (H)
							i(126676),	-- Warmongering Aspirant's Drape of Cruelty (H)
							i(126677),	-- Warmongering Aspirant's Drape of Meditation (H)
						}),
						n(WRIST, {
							i(126694),	-- Warmongering Aspirant's Armbands of Prowess (H)
							i(126707),	-- Warmongering Aspirant's Armplates of Cruelty (H)
							i(126686),	-- Warmongering Aspirant's Bindings of Cruelty (H)
							i(126660),	-- Warmongering Aspirant's Cuffs of Prowess (H)
						}),
						n(WAIST, {
							i(126684),	-- Warmongering Aspirant's Belt of Prowess (H)
							i(126658),	-- Warmongering Aspirant's Cord of Cruelty (H)
							i(126705),	-- Warmongering Aspirant's Girdle of Cruelty (H)
							i(126692),	-- Warmongering Aspirant's Waistguard of Cruelty (H)
						}),
						n(FEET, {
							i(126685),	-- Warmongering Aspirant's Boots of Cruelty (H)
							i(126693),	-- Warmongering Aspirant's Footguards of Cruelty (H)
							i(126659),	-- Warmongering Aspirant's Treads of Cruelty (H)
							i(126706),	-- Warmongering Aspirant's Warboots of Cruelty (H)
						}),
						n(NECK, {
							i(126724),	-- Warmongering Aspirant's Choker of Cruelty (H)
							i(126727),	-- Warmongering Aspirant's Choker of Endurance (H)
							i(126655),	-- Warmongering Aspirant's Necklace of Cruelty (H)
							i(126678),	-- Warmongering Aspirant's Pendant of Cruelty (H)
							i(126679),	-- Warmongering Aspirant's Pendant of Meditation (H)
						}),
						n(FINGER, {
							i(126683),	-- Warmongering Aspirant's Band of Contemplation (H)
							i(126680),	-- Warmongering Aspirant's Band of Cruelty (H)
							i(126682),	-- Warmongering Aspirant's Band of Meditation (H)
							i(126681),	-- Warmongering Aspirant's Band of Prowess (H)
							i(126656),	-- Warmongering Aspirant's Ring of Cruelty (H)
							i(126657),	-- Warmongering Aspirant's Ring of Prowess (H)
							i(127121),	-- Warmongering Aspirant's Signet of Accuracy (H)
							i(126725),	-- Warmongering Aspirant's Signet of Cruelty (H)
							i(126728),	-- Warmongering Aspirant's Signet of Dedication (H)
							i(126729),	-- Warmongering Aspirant's Signet of Endurance (H)
						}),
						n(TRINKET, {
							i(126730),	-- Warmongering Aspirant's Accolade of Conquest (H)
							i(126731),	-- Warmongering Aspirant's Accolade of Dominance (H)
							i(126734),	-- Warmongering Aspirant's Accolade of Endurance (H)
							i(126733),	-- Warmongering Aspirant's Accolade of Meditation (H)
							i(126732),	-- Warmongering Aspirant's Accolade of Victory (H)
						}),
					}),
					n(PVP_COMBATANT, {
						n(WEAPONS, {
							moh(80, iensemble(138627, {	-- Arsenal: Warmongering Combatant's Weapons (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126542)),	-- Warmongering Combatant's Barrier (H)
							moh(5, i(126522)),	-- Warmongering Combatant's Baton of Light (H)
							moh(5, i(126524)),	-- Warmongering Combatant's Battle Staff (H)
							moh(5, i(126608)),	-- Warmongering Combatant's Bonecracker (H)
							moh(5, i(126611)),	-- Warmongering Combatant's Bonegrinder (H)
							moh(5, i(127378)),	-- Warmongering Combatant's Chopper (H)
							moh(5, i(126476)),	-- Warmongering Combatant's Cleaver (H)
							moh(5, i(126610)),	-- Warmongering Combatant's Decapitator (H)
							moh(2, i(126534)),	-- Warmongering Combatant's Endgame (H)
							moh(5, i(126525)),	-- Warmongering Combatant's Energy Staff (H)
							moh(5, i(126520)),	-- Warmongering Combatant's Gavel (H)
							moh(5, i(126612)),	-- Warmongering Combatant's Greatsword (H)
							moh(5, i(126606)),	-- Warmongering Combatant's Hacker (H)
							moh(5, i(126482)),	-- Warmongering Combatant's Heavy Crossbow (H)
							moh(5, i(126481)),	-- Warmongering Combatant's Longbow (H)
							moh(5, i(126521)),	-- Warmongering Combatant's Mageblade (H)
							moh(5, i(126484)),	-- Warmongering Combatant's Pike (H)
							moh(5, i(126479)),	-- Warmongering Combatant's Pummeler (H)
							moh(5, i(126480)),	-- Warmongering Combatant's Quickblade (H)
							moh(2, i(126541)),	-- Warmongering Combatant's Redoubt (H)
							moh(5, i(126607)),	-- Warmongering Combatant's Render (H)
							moh(2, i(126535)),	-- Warmongering Combatant's Reprieve (H)
							moh(5, i(126483)),	-- Warmongering Combatant's Rifle (H)
							moh(5, i(126478)),	-- Warmongering Combatant's Ripper (H)
							moh(5, i(126477)),	-- Warmongering Combatant's Shanker (H)
							moh(2, i(126620)),	-- Warmongering Combatant's Shield Wall (H)
							moh(5, i(126609)),	-- Warmongering Combatant's Slicer (H)
							moh(5, i(126519)),	-- Warmongering Combatant's Spellblade (H)
							moh(5, i(126485)),	-- Warmongering Combatant's Staff (H)
							moh(5, i(126523)),	-- Warmongering Combatant's Touch of Defeat (H)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138590, {	-- Ensemble: Warmongering Combatant's Dreadplate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126504)),	-- Warmongering Combatant's Dreadplate Chestpiece (H)
							moh(2, i(126505)),	-- Warmongering Combatant's Dreadplate Gauntlets (H)
							moh(3, i(126506)),	-- Warmongering Combatant's Dreadplate Helm (H)
							moh(3, i(126507)),	-- Warmongering Combatant's Dreadplate Legguards (H)
							moh(2, i(126508)),	-- Warmongering Combatant's Dreadplate Shoulders (H)
							i(126589),	--  Warmongering Combatant's Legplates (H)
							i(126587),	--  Warmongering Combatant's Plate Gloves (H)
							i(126586),	--  Warmongering Combatant's Plate Breastplate (H)
							i(126590),	--  Warmongering Combatant's Shoulderplates (H)
							i(126588),	--  Warmongering Combatant's Plate Helmet (H)
						}),
						cl(DRUID, {
							moh(12, iensemble(138594, {	-- Ensemble: Warmongering Combatant's Dragonhide Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126509)),	-- Warmongering Combatant's Dragonhide Gloves (H)
							moh(3, i(126510)),	-- Warmongering Combatant's Dragonhide Helm (H)
							moh(3, i(126511)),	-- Warmongering Combatant's Dragonhide Legguards (H)
							moh(2, i(126513)),	-- Warmongering Combatant's Dragonhide Spaulders (H)
							moh(3, i(126512)),	-- Warmongering Combatant's Dragonhide Tunic (H)
							i(126551),	--  Warmongering Combatant's Helm (H)
							i(126553),	--  Warmongering Combatant's Spaulders (H)
							i(126549),	--  Warmongering Combatant's Tunic (H)
							i(126550),	--  Warmongering Combatant's Gloves (H)
							i(126552),	--  Warmongering Combatant's Legguards (H)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138538, {	-- Ensemble: Warmongering Combatant's Chain Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126514)),	-- Warmongering Combatant's Chain Armor (H)
							moh(2, i(126515)),	-- Warmongering Combatant's Chain Gauntlets (H)
							moh(3, i(126516)),	-- Warmongering Combatant's Chain Helm (H)
							moh(3, i(126517)),	-- Warmongering Combatant's Chain Leggings (H)
							moh(2, i(126518)),	-- Warmongering Combatant's Chain Spaulders (H)
							i(126568),	--  Warmongering Combatant's Leggings (H)
							i(126566),	--  Warmongering Combatant's Gauntlets (H)
							i(126565),	--  Warmongering Combatant's Armor (H)
							i(126569),	--  Warmongering Combatant's Spaulders (H)
							i(126567),	--  Warmongering Combatant's Helm (H)
						}),
						cl(MAGE, {
							moh(12, iensemble(138540, {	-- Ensemble: Warmongering Combatant's Silk Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126558)),	-- Warmongering Combatant's Silk Amice (H)
							moh(3, i(126555)),	-- Warmongering Combatant's Silk Cowl (H)
							moh(2, i(126554)),	-- Warmongering Combatant's Silk Handguards (H)
							moh(3, i(126557)),	-- Warmongering Combatant's Silk Robe (H)
							moh(3, i(126556)),	-- Warmongering Combatant's Silk Trousers (H)
							i(126500),	--  Warmongering Combatant's Hood of Prowess (H)
							i(126503),	--  Warmongering Combatant's Amice of Prowess (H)
							i(126502),	--  Warmongering Combatant's Robes of Prowess (H)
							i(126499),	--  Warmongering Combatant's Gloves of Prowess (H)
							i(126501),	--  Warmongering Combatant's Leggings of Prowess (H)
						}),
						cl(MONK, {
							moh(12, iensemble(138596, {	-- Ensemble: Warmongering Combatant's Ironskin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126570)),	-- Warmongering Combatant's Ironskin Gloves (H)
							moh(3, i(126571)),	-- Warmongering Combatant's Ironskin Helm (H)
							moh(3, i(126572)),	-- Warmongering Combatant's Ironskin Legguards (H)
							moh(2, i(126573)),	-- Warmongering Combatant's Ironskin Spaulders (H)
							moh(3, i(126574)),	-- Warmongering Combatant's Ironskin Tunic (H)
							i(126551),	--  Warmongering Combatant's Helm (H)
							i(126553),	--  Warmongering Combatant's Spaulders (H)
							i(126549),	--  Warmongering Combatant's Tunic (H)
							i(126550),	--  Warmongering Combatant's Gloves (H)
							i(126552),	--  Warmongering Combatant's Legguards (H)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138592, {	-- Ensemble: Warmongering Combatant's Scaled Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126575)),	-- Warmongering Combatant's Scaled Chestpiece (H)
							moh(2, i(126576)),	-- Warmongering Combatant's Scaled Gauntlets (H)
							moh(3, i(126577)),	-- Warmongering Combatant's Scaled Helm (H)
							moh(3, i(126578)),	-- Warmongering Combatant's Scaled Legguards (H)
							moh(2, i(126579)),	-- Warmongering Combatant's Scaled Shoulders (H)
							i(126589),	--  Warmongering Combatant's Legplates (H)
							i(126587),	--  Warmongering Combatant's Plate Gloves (H)
							i(126586),	--  Warmongering Combatant's Plate Breastplate (H)
							i(126590),	--  Warmongering Combatant's Shoulderplates (H)
							i(126588),	--  Warmongering Combatant's Plate Helmet (H)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138542, {	-- Ensemble: Warmongering Combatant's Satin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126591)),	-- Warmongering Combatant's Satin Gloves (H)
							moh(3, i(126592)),	-- Warmongering Combatant's Satin Hood (H)
							moh(3, i(126593)),	-- Warmongering Combatant's Satin Leggings (H)
							moh(2, i(126595)),	-- Warmongering Combatant's Satin Mantle (H)
							moh(3, i(126594)),	-- Warmongering Combatant's Satin Robe (H)
							i(126500),	--  Warmongering Combatant's Hood of Prowess (H)
							i(126503),	--  Warmongering Combatant's Amice of Prowess (H)
							i(126502),	--  Warmongering Combatant's Robes of Prowess (H)
							i(126499),	--  Warmongering Combatant's Gloves of Prowess (H)
							i(126501),	--  Warmongering Combatant's Leggings of Prowess (H)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138598, {	-- Ensemble: Warmongering Combatant's Leather Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126597)),	-- Warmongering Combatant's Leather Gloves (H)
							moh(3, i(126598)),	-- Warmongering Combatant's Leather Helm (H)
							moh(3, i(126599)),	-- Warmongering Combatant's Leather Legguards (H)
							moh(2, i(126600)),	-- Warmongering Combatant's Leather Spaulders (H)
							moh(3, i(126596)),	-- Warmongering Combatant's Leather Tunic (H)
							i(126551),	--  Warmongering Combatant's Helm (H)
							i(126553),	--  Warmongering Combatant's Spaulders (H)
							i(126549),	--  Warmongering Combatant's Tunic (H)
							i(126550),	--  Warmongering Combatant's Gloves (H)
							i(126552),	--  Warmongering Combatant's Legguards (H)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138536, {	-- Ensemble: Warmongering Combatant's Ringmail Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126601)),	-- Warmongering Combatant's Ringmail Armor (H)
							moh(2, i(126602)),	-- Warmongering Combatant's Ringmail Gauntlets (H)
							moh(3, i(126603)),	-- Warmongering Combatant's Ringmail Helm (H)
							moh(3, i(126604)),	-- Warmongering Combatant's Ringmail Leggings (H)
							moh(2, i(126605)),	-- Warmongering Combatant's Ringmail Spaulders (H)
							i(126568),	--  Warmongering Combatant's Leggings (H)
							i(126566),	--  Warmongering Combatant's Gauntlets (H)
							i(126565),	--  Warmongering Combatant's Armor (H)
							i(126569),	--  Warmongering Combatant's Spaulders (H)
							i(126567),	--  Warmongering Combatant's Helm (H)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138544, {	-- Ensemble: Warmongering Combatant's Felweave Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126648)),	-- Warmongering Combatant's Felweave Amice (H)
							moh(3, i(126645)),	-- Warmongering Combatant's Felweave Cowl (H)
							moh(2, i(126644)),	-- Warmongering Combatant's Felweave Handguards (H)
							moh(3, i(126647)),	-- Warmongering Combatant's Felweave Raiment (H)
							moh(3, i(126646)),	-- Warmongering Combatant's Felweave Trousers (H)
							i(126500),	--  Warmongering Combatant's Hood of Prowess (H)
							i(126503),	--  Warmongering Combatant's Amice of Prowess (H)
							i(126502),	--  Warmongering Combatant's Robes of Prowess (H)
							i(126499),	--  Warmongering Combatant's Gloves of Prowess (H)
							i(126501),	--  Warmongering Combatant's Leggings of Prowess (H)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138588, {	-- Ensemble: Warmongering Combatant's Plate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126649)),	-- Warmongering Combatant's Plate Chestpiece (H)
							moh(2, i(126650)),	-- Warmongering Combatant's Plate Gauntlets (H)
							moh(3, i(126651)),	-- Warmongering Combatant's Plate Helm (H)
							moh(3, i(126652)),	-- Warmongering Combatant's Plate Legguards (H)
							moh(2, i(126653)),	-- Warmongering Combatant's Plate Shoulders (H)
							i(126589),	--  Warmongering Combatant's Legplates (H)
							i(126587),	--  Warmongering Combatant's Plate Gloves (H)
							i(126586),	--  Warmongering Combatant's Plate Breastplate (H)
							i(126590),	--  Warmongering Combatant's Shoulderplates (H)
							i(126588),	--  Warmongering Combatant's Plate Helmet (H)
						}),
						n(BACK, {
							moh(1, i(126486)),	-- Warmongering Combatant's Cape of Cruelty (H)
							moh(1, i(126487)),	-- Warmongering Combatant's Cape of Prowess (H)
							moh(1, i(126613)),	-- Warmongering Combatant's Cloak of Cruelty (H)
							moh(1, i(126640)),	-- Warmongering Combatant's Cloak of Endurance (H)
							moh(1, i(126614)),	-- Warmongering Combatant's Cloak of Prowess (H)
							moh(1, i(126529)),	-- Warmongering Combatant's Drape of Contemplation (H)
							moh(1, i(126526)),	-- Warmongering Combatant's Drape of Cruelty (H)
							moh(1, i(126528)),	-- Warmongering Combatant's Drape of Meditation (H)
							moh(1, i(126527)),	-- Warmongering Combatant's Drape of Prowess (H)
						}),
						n(WRIST, {
							moh(1, i(126498)),	-- Warmongering Combatant's Cuffs of Cruelty (H)
							moh(1, i(126497)),	-- Warmongering Combatant's Cuffs of Prowess (H)
							moh(1, i(126547)),	-- Warmongering Combatant's Bindings of Cruelty (H)
							moh(1, i(126548)),	-- Warmongering Combatant's Bindings of Prowess (H)
							moh(1, i(126564)),	-- Warmongering Combatant's Armbands of Cruelty (H)
							moh(1, i(126563)),	-- Warmongering Combatant's Armbands of Prowess (H)
							moh(1, i(126584)),	-- Warmongering Combatant's Armplates of Cruelty (H)
							moh(1, i(126585)),	-- Warmongering Combatant's Armplates of Prowess (H)
						}),
						n(WAIST, {
							moh(1, i(126493)),	-- Warmongering Combatant's Cord of Cruelty (H)
							moh(1, i(126494)),	-- Warmongering Combatant's Cord of Prowess (H)
							moh(1, i(126544)),	-- Warmongering Combatant's Belt of Cruelty (H)
							moh(1, i(126543)),	-- Warmongering Combatant's Belt of Prowess (H)
							moh(1, i(126559)),	-- Warmongering Combatant's Waistguard of Cruelty (H)
							moh(1, i(126560)),	-- Warmongering Combatant's Waistguard of Prowess (H)
							moh(1, i(126580)),	-- Warmongering Combatant's Girdle of Cruelty (H)
							moh(1, i(126581)),	-- Warmongering Combatant's Girdle of Prowess (H)
						}),
						n(FEET, {
							moh(2, i(126495)),	-- Warmongering Combatant's Treads of Cruelty (H)
							moh(2, i(126496)),	-- Warmongering Combatant's Treads of Prowess (H)
							moh(2, i(126545)),	-- Warmongering Combatant's Boots of Cruelty (H)
							moh(2, i(126546)),	-- Warmongering Combatant's Boots of Prowess (H)
							moh(2, i(126561)),	-- Warmongering Combatant's Footguards of Cruelty (H)
							moh(2, i(126562)),	-- Warmongering Combatant's Footguards of Prowess (H)
							moh(2, i(126582)),	-- Warmongering Combatant's Warboots of Cruelty (H)
							moh(2, i(126583)),	-- Warmongering Combatant's Warboots of Prowess (H)
						}),
						n(NECK, {
							i(126615),	-- Warmongering Combatant's Choker of Cruelty (H)
							i(126641),	-- Warmongering Combatant's Choker of Endurance (H)
							i(126616),	-- Warmongering Combatant's Choker of Prowess (H)
							i(126488),	-- Warmongering Combatant's Necklace of Cruelty (H)
							i(126489),	-- Warmongering Combatant's Necklace of Prowess (H)
							i(126533),	-- Warmongering Combatant's Pendant of Contemplation (H)
							i(126530),	-- Warmongering Combatant's Pendant of Cruelty (H)
							i(126532),	-- Warmongering Combatant's Pendant of Meditation (H)
							i(126531),	-- Warmongering Combatant's Pendant of Prowess (H)
						}),
						n(FINGER, {
							i(126540),	-- Warmongering Combatant's Band of Contemplation (H)
							i(126536),	-- Warmongering Combatant's Band of Cruelty (H)
							i(126539),	-- Warmongering Combatant's Band of Meditation (H)
							i(126537),	-- Warmongering Combatant's Band of Prowess (H)
							i(126538),	-- Warmongering Combatant's Band of Victory (H)
							i(126490),	-- Warmongering Combatant's Ring of Cruelty (H)
							i(126491),	-- Warmongering Combatant's Ring of Prowess (H)
							i(126492),	-- Warmongering Combatant's Ring of Triumph (H)
							i(126618),	-- Warmongering Combatant's Signet of Accuracy (H)
							i(126617),	-- Warmongering Combatant's Signet of Cruelty (H)
							i(126642),	-- Warmongering Combatant's Signet of Dedication (H)
							i(126643),	-- Warmongering Combatant's Signet of Endurance (H)
							i(126619),	-- Warmongering Combatant's Signet of Ruthlessness (H)
						}),
						n(TRINKET, {
							i(126635),	-- Warmongering Combatant's Accolade of Conquest (H)
							i(126636),	-- Warmongering Combatant's Accolade of Dominance (H)
							i(126639),	-- Warmongering Combatant's Accolade of Endurance (H)
							i(126638),	-- Warmongering Combatant's Accolade of Meditation (H)
							i(126637),	-- Warmongering Combatant's Accolade of Victory (H)
							i(126634),	-- Warmongering Combatant's Badge of Adaptation (H)
							i(126621),	-- Warmongering Combatant's Badge of Conquest (H)
							i(126626),	-- Warmongering Combatant's Badge of Dominance (H)
							i(126632),	-- Warmongering Combatant's Badge of Victory (H)
							i(126623),	-- Warmongering Combatant's Emblem of Cruelty (H)
							i(126625),	-- Warmongering Combatant's Emblem of Meditation (H)
							i(126624),	-- Warmongering Combatant's Emblem of Tenacity (H)
							i(126622),	-- Warmongering Combatant's Insignia of Conquest (H)
							i(126627),	-- Warmongering Combatant's Insignia of Dominance (H)
							i(126633),	-- Warmongering Combatant's Insignia of Victory (H)
							i(126629),	-- Warmongering Combatant's Medallion of Adaptation (H)
							i(126628),	-- Warmongering Combatant's Medallion of Cruelty (H)
							i(126631),	-- Warmongering Combatant's Medallion of Meditation (H)
							i(126630),	-- Warmongering Combatant's Medallion of Tenacity (H)
						}),
					}),
					n(PVP_GLADIATOR, {
						n(WEAPONS, {
							moh(80, iensemble(138636, {	-- Arsenal: Warmongering Gladiator's Weapons (H)
								["timeline"] = { ADDED_7_1_5 },
							})),
							moh(2, i(126342)),	-- Warmongering Gladiator's Barrier (H)
							moh(5, i(126322)),	-- Warmongering Gladiator's Baton of Light (H)
							moh(5, i(126324)),	-- Warmongering Gladiator's Battle Staff (H)
							moh(5, i(126432)),	-- Warmongering Gladiator's Bonecracker (H)
							moh(5, i(126435)),	-- Warmongering Gladiator's Bonegrinder (H)
							moh(5, i(126268)),	-- Warmongering Gladiator's Cleaver (H)
							moh(5, i(126434)),	-- Warmongering Gladiator's Decapitator (H)
							moh(2, i(126334)),	-- Warmongering Gladiator's Endgame (H)
							moh(5, i(126325)),	-- Warmongering Gladiator's Energy Staff (H)
							moh(5, i(126320)),	-- Warmongering Gladiator's Gavel (H)
							moh(5, i(126436)),	-- Warmongering Gladiator's Greatsword (H)
							moh(5, i(126430)),	-- Warmongering Gladiator's Hacker (H)
							moh(5, i(126274)),	-- Warmongering Gladiator's Heavy Crossbow (H)
							moh(5, i(126273)),	-- Warmongering Gladiator's Longbow (H)
							moh(5, i(126321)),	-- Warmongering Gladiator's Mageblade (H)
							moh(5, i(126276)),	-- Warmongering Gladiator's Pike (H)
							moh(5, i(126271)),	-- Warmongering Gladiator's Pummeler (H)
							moh(5, i(126272)),	-- Warmongering Gladiator's Quickblade (H)
							moh(2, i(126341)),	-- Warmongering Gladiator's Redoubt (H)
							moh(5, i(126431)),	-- Warmongering Gladiator's Render (H)
							moh(2, i(126335)),	-- Warmongering Gladiator's Reprieve (H)
							moh(5, i(126275)),	-- Warmongering Gladiator's Rifle (H)
							moh(5, i(126270)),	-- Warmongering Gladiator's Ripper (H)
							moh(5, i(126269)),	-- Warmongering Gladiator's Shanker (H)
							moh(2, i(126444)),	-- Warmongering Gladiator's Shield Wall (H)
							moh(5, i(126433)),	-- Warmongering Gladiator's Slicer (H)
							moh(5, i(126319)),	-- Warmongering Gladiator's Spellblade (H)
							moh(5, i(126277)),	-- Warmongering Gladiator's Staff (H)
							moh(5, i(126323)),	-- Warmongering Gladiator's Touch of Defeat (H)
						}),
						cl(DEATHKNIGHT, {
							moh(12, iensemble(138494, {	-- Ensemble: Warmongering Gladiator's Dreadplate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126306)),	-- Warmongering Gladiator's Dreadplate Helm (H)
							moh(2, i(126308)),	-- Warmongering Gladiator's Dreadplate Shoulders (H)
							moh(3, i(126304)),	-- Warmongering Gladiator's Dreadplate Chestpiece (H)
							moh(2, i(126305)),	-- Warmongering Gladiator's Dreadplate Gauntlets (H)
							moh(3, i(126307)),	-- Warmongering Gladiator's Dreadplate Legguards (H)
						}),
						cl(DRUID, {
							moh(12, iensemble(138502, {	-- Ensemble: Warmongering Gladiator's Dragonhide Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126309)),	-- Warmongering Gladiator's Dragonhide Gloves (H)
							moh(3, i(126310)),	-- Warmongering Gladiator's Dragonhide Helm (H)
							moh(3, i(126311)),	-- Warmongering Gladiator's Dragonhide Legguards (H)
							moh(3, i(126312)),	-- Warmongering Gladiator's Dragonhide Robes (H)
							moh(2, i(126313)),	-- Warmongering Gladiator's Dragonhide Spaulders (H)
						}),
						cl(HUNTER, {
							moh(12, iensemble(138500, {	-- Ensemble: Warmongering Gladiator's Chain Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126314)),	-- Warmongering Gladiator's Chain Armor (H)
							moh(2, i(126315)),	-- Warmongering Gladiator's Chain Gauntlets (H)
							moh(3, i(126316)),	-- Warmongering Gladiator's Chain Helm (H)
							moh(3, i(126317)),	-- Warmongering Gladiator's Chain Leggings (H)
							moh(2, i(126318)),	-- Warmongering Gladiator's Chain Spaulders (H)
						}),
						cl(MAGE, {
							moh(12, iensemble(138508, {	-- Ensemble: Warmongering Gladiator's Silk Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126366)),	-- Warmongering Gladiator's Silk Amice (H)
							moh(3, i(126363)),	-- Warmongering Gladiator's Silk Cowl (H)
							moh(2, i(126362)),	-- Warmongering Gladiator's Silk Handguards (H)
							moh(3, i(126365)),	-- Warmongering Gladiator's Silk Robe (H)
							moh(3, i(126364)),	-- Warmongering Gladiator's Silk Trousers (H)
						}),
						cl(MONK, {
							moh(12, iensemble(138504, {	-- Ensemble: Warmongering Gladiator's Ironskin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126386)),	-- Warmongering Gladiator's Ironskin Gloves (H)
							moh(3, i(126387)),	-- Warmongering Gladiator's Ironskin Helm (H)
							moh(3, i(126388)),	-- Warmongering Gladiator's Ironskin Legguards (H)
							moh(2, i(126389)),	-- Warmongering Gladiator's Ironskin Spaulders (H)
							moh(3, i(126390)),	-- Warmongering Gladiator's Ironskin Tunic (H)
						}),
						cl(PALADIN, {
							moh(12, iensemble(138496, {	-- Ensemble: Warmongering Gladiator's Scaled Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126391)),	-- Warmongering Gladiator's Scaled Chestpiece (H)
							moh(2, i(126392)),	-- Warmongering Gladiator's Scaled Gauntlets (H)
							moh(3, i(126393)),	-- Warmongering Gladiator's Scaled Helm (H)
							moh(3, i(126394)),	-- Warmongering Gladiator's Scaled Legguards (H)
							moh(2, i(126395)),	-- Warmongering Gladiator's Scaled Shoulders (H)
						}),
						cl(PRIEST, {
							moh(12, iensemble(138510, {	-- Ensemble: Warmongering Gladiator's Satin Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126415)),	-- Warmongering Gladiator's Satin Gloves (H)
							moh(3, i(126416)),	-- Warmongering Gladiator's Satin Hood (H)
							moh(3, i(126417)),	-- Warmongering Gladiator's Satin Leggings (H)
							moh(2, i(126419)),	-- Warmongering Gladiator's Satin Mantle (H)
							moh(3, i(126418)),	-- Warmongering Gladiator's Satin Robe (H)
						}),
						cl(ROGUE, {
							moh(12, iensemble(138506, {	-- Ensemble: Warmongering Gladiator's Leather Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(2, i(126421)),	-- Warmongering Gladiator's Leather Gloves (H)
							moh(3, i(126422)),	-- Warmongering Gladiator's Leather Helm (H)
							moh(3, i(126423)),	-- Warmongering Gladiator's Leather Legguards (H)
							moh(2, i(126424)),	-- Warmongering Gladiator's Leather Spaulders (H)
							moh(3, i(126420)),	-- Warmongering Gladiator's Leather Tunic (H)
						}),
						cl(SHAMAN, {
							moh(12, iensemble(138498, {	-- Ensemble: Warmongering Gladiator's Ringmail Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126425)),	-- Warmongering Gladiator's Ringmail Armor (H)
							moh(2, i(126426)),	-- Warmongering Gladiator's Ringmail Gauntlets (H)
							moh(3, i(126427)),	-- Warmongering Gladiator's Ringmail Helm (H)
							moh(3, i(126428)),	-- Warmongering Gladiator's Ringmail Kilt (H)
							moh(2, i(126429)),	-- Warmongering Gladiator's Ringmail Spaulders (H)
						}),
						cl(WARLOCK, {
							moh(12, iensemble(138512, {	-- Ensemble: Warmongering Gladiator's Felweave Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126470)),	-- Warmongering Gladiator's Felweave Amice (H)
							moh(2, i(126467)),	-- Warmongering Gladiator's Felweave Cowl (H)
							moh(2, i(126466)),	-- Warmongering Gladiator's Felweave Handguards (H)
							moh(3, i(126469)),	-- Warmongering Gladiator's Felweave Raiment (H)
							moh(3, i(126468)),	-- Warmongering Gladiator's Felweave Trousers (H)
						}),
						cl(WARRIOR, {
							moh(12, iensemble(138492, {	-- Ensemble: Warmongering Gladiator's Plate Armor (H)
								["timeline"] = { ADDED_7_0_3 },
							})),
							moh(3, i(126471)),	-- Warmongering Gladiator's Plate Chestpiece (H)
							moh(2, i(126472)),	-- Warmongering Gladiator's Plate Gauntlets (H)
							moh(3, i(126407)),	-- Warmongering Gladiator's Plate Helmet (H)
							moh(3, i(126474)),	-- Warmongering Gladiator's Plate Legguards (H)
							moh(2, i(126475)),	-- Warmongering Gladiator's Plate Shoulders (H)
						}),
						n(HEAD, {
							moh(3, i(126300)),	-- Warmongering Gladiator's Cowl of Cruelty (H)
							moh(3, i(126295)),	-- Warmongering Gladiator's Hood of Prowess (H)
							moh(3, i(126359)),	-- Warmongering Gladiator's Headcover (H)
							moh(3, i(126354)),	-- Warmongering Gladiator's Helm (H)
							moh(3, i(126383)),	-- Warmongering Gladiator's Coif (H)
							moh(3, i(126378)),	-- Warmongering Gladiator's Helm (H)
							moh(3, i(126473)),	-- Warmongering Gladiator's Plate Helmet (H)
							moh(3, i(126412)),	-- Warmongering Gladiator's Plate Visor (H)
						}),
						n(SHOULDER, {
							moh(2, i(126298)),	-- Warmongering Gladiator's Amice of Prowess (H)
							moh(2, i(126303)),	-- Warmongering Gladiator's Mantle of Cruelty (H)
							moh(2, i(126361)),	-- Warmongering Gladiator's Pauldrons (H)
							moh(2, i(126356)),	-- Warmongering Gladiator's Spaulders (H)
							moh(2, i(126385)),	-- Warmongering Gladiator's Pauldrons (H)
							moh(2, i(126380)),	-- Warmongering Gladiator's Spaulders (H)
							moh(2, i(126414)),	-- Warmongering Gladiator's Plate Pauldrons (H)
							moh(2, i(126409)),	-- Warmongering Gladiator's Shoulderplates (H)
						}),
						n(BACK, {
							moh(1, i(126278)),	-- Warmongering Gladiator's Cape of Cruelty (H)
							moh(1, i(126279)),	-- Warmongering Gladiator's Cape of Prowess (H)
							moh(1, i(126437)),	-- Warmongering Gladiator's Cloak of Cruelty (H)
							moh(1, i(126445)),	-- Warmongering Gladiator's Cloak of Endurance (H)
							moh(1, i(126438)),	-- Warmongering Gladiator's Cloak of Prowess (H)
							moh(1, i(126329)),	-- Warmongering Gladiator's Drape of Contemplation (H)
							moh(1, i(126326)),	-- Warmongering Gladiator's Drape of Cruelty (H)
							moh(1, i(126328)),	-- Warmongering Gladiator's Drape of Meditation (H)
							moh(1, i(126327)),	-- Warmongering Gladiator's Drape of Prowess (H)
						}),
						n(CHEST, {
							moh(3, i(126302)),	-- Warmongering Gladiator's Raiment of Cruelty (H)
							moh(3, i(126297)),	-- Warmongering Gladiator's Robes of Prowess (H)
							moh(3, i(126357)),	-- Warmongering Gladiator's Chestguard (H)
							moh(3, i(126352)),	-- Warmongering Gladiator's Tunic (H)
							moh(3, i(126376)),	-- Warmongering Gladiator's Armor (H)
							moh(3, i(126381)),	-- Warmongering Gladiator's Chestguard (H)
							moh(3, i(126405)),	-- Warmongering Gladiator's Plate Breastplate (H)
							moh(3, i(126410)),	-- Warmongering Gladiator's Plate Chestguard (H)
						}),
						n(WRIST, {
							moh(1, i(126292)),	-- Warmongering Gladiator's Cuffs of Cruelty (H)
							moh(1, i(126291)),	-- Warmongering Gladiator's Cuffs of Prowess (H)
							moh(1, i(126293)),	-- Warmongering Gladiator's Cuffs of Victory (H)
							moh(1, i(126349)),	-- Warmongering Gladiator's Bindings of Cruelty (H)
							moh(1, i(126350)),	-- Warmongering Gladiator's Bindings of Prowess (H)
							moh(1, i(126351)),	-- Warmongering Gladiator's Bindings of Victory (H)
							moh(1, i(139030)),	-- Warmongering Gladiator's Armbands of Alacrity (H)
							moh(1, i(126374)),	-- Warmongering Gladiator's Armbands of Cruelty (H)
							moh(1, i(126373)),	-- Warmongering Gladiator's Armbands of Prowess (H)
							moh(1, i(126375)),	-- Warmongering Gladiator's Armbands of Victory (H)
							moh(1, i(126402)),	-- Warmongering Gladiator's Armplates of Cruelty (H)
							moh(1, i(126403)),	-- Warmongering Gladiator's Armplates of Prowess (H)
							moh(1, i(126404)),	-- Warmongering Gladiator's Armplates of Victory (H)
						}),
						n(HANDS, {
							moh(2, i(126294)),	-- Warmongering Gladiator's Gloves of Prowess (H)
							moh(2, i(126299)),	-- Warmongering Gladiator's Handguards of Cruelty (H)
							moh(2, i(126353)),	-- Warmongering Gladiator's Gloves (H)
							moh(2, i(126358)),	-- Warmongering Gladiator's Grips (H)
							moh(2, i(126377)),	-- Warmongering Gladiator's Gauntlets (H)
							moh(2, i(126382)),	-- Warmongering Gladiator's Gloves (H)
							moh(2, i(126406)),	-- Warmongering Gladiator's Plate Gloves (H)
							moh(2, i(126411)),	-- Warmongering Gladiator's Plate Grips (H)
						}),
						n(WAIST, {
							moh(1, i(126285)),	-- Warmongering Gladiator's Cord of Cruelty (H)
							moh(1, i(126286)),	-- Warmongering Gladiator's Cord of Prowess (H)
							moh(1, i(126287)),	-- Warmongering Gladiator's Cord of Victory (H)
							moh(1, i(126344)),	-- Warmongering Gladiator's Belt of Cruelty (H)
							moh(1, i(126343)),	-- Warmongering Gladiator's Belt of Prowess (H)
							moh(1, i(126345)),	-- Warmongering Gladiator's Belt of Victory (H)
							moh(1, i(126367)),	-- Warmongering Gladiator's Waistguard of Cruelty (H)
							moh(1, i(126368)),	-- Warmongering Gladiator's Waistguard of Prowess (H)
							moh(1, i(126369)),	-- Warmongering Gladiator's Waistguard of Victory (H)
							moh(1, i(126396)),	-- Warmongering Gladiator's Girdle of Cruelty (H)
							moh(1, i(126397)),	-- Warmongering Gladiator's Girdle of Prowess (H)
							moh(1, i(126398)),	-- Warmongering Gladiator's Girdle of Victory (H)
						}),
						n(LEGS, {
							moh(3, i(126296)),	-- Warmongering Gladiator's Leggings of Prowess (H)
							moh(3, i(126301)),	-- Warmongering Gladiator's Trousers of Cruelty (H)
							moh(3, i(126360)),	-- Warmongering Gladiator's Leggings (H)
							moh(3, i(126355)),	-- Warmongering Gladiator's Legguards (H)
							moh(3, i(126379)),	-- Warmongering Gladiator's Leggings (H)
							moh(3, i(126384)),	-- Warmongering Gladiator's Leggings (H)
							moh(3, i(126408)),	-- Warmongering Gladiator's Legplates (H)
							moh(3, i(126413)),	-- Warmongering Gladiator's Plate Leggings (H)
						}),
						n(FEET, {
							moh(2, i(126288)),	-- Warmongering Gladiator's Treads of Cruelty (H)
							moh(2, i(126289)),	-- Warmongering Gladiator's Treads of Prowess (H)
							moh(2, i(126290)),	-- Warmongering Gladiator's Treads of Victory (H)
							moh(2, i(126346)),	-- Warmongering Gladiator's Boots of Cruelty (H)
							moh(2, i(126347)),	-- Warmongering Gladiator's Boots of Prowess (H)
							moh(2, i(126348)),	-- Warmongering Gladiator's Boots of Victory (H)
							moh(2, i(126370)),	-- Warmongering Gladiator's Footguards of Cruelty (H)
							moh(2, i(126371)),	-- Warmongering Gladiator's Footguards of Prowess (H)
							moh(2, i(126372)),	-- Warmongering Gladiator's Footguards of Victory (H)
							moh(2, i(126399)),	-- Warmongering Gladiator's Warboots of Cruelty (H)
							moh(2, i(126400)),	-- Warmongering Gladiator's Warboots of Prowess (H)
							moh(2, i(126401)),	-- Warmongering Gladiator's Warboots of Victory (H)
						}),
						n(NECK, {
							i(126439),	-- Warmongering Gladiator's Choker of Cruelty (H)
							i(126446),	-- Warmongering Gladiator's Choker of Endurance (H)
							i(126440),	-- Warmongering Gladiator's Choker of Prowess (H)
							i(126280),	-- Warmongering Gladiator's Necklace of Cruelty (H)
							i(126281),	-- Warmongering Gladiator's Necklace of Prowess (H)
							i(126333),	-- Warmongering Gladiator's Pendant of Contemplation (H)
							i(126330),	-- Warmongering Gladiator's Pendant of Cruelty (H)
							i(126332),	-- Warmongering Gladiator's Pendant of Meditation (H)
							i(126331),	-- Warmongering Gladiator's Pendant of Prowess (H)
						}),
						n(FINGER, {
							i(126340),	-- Warmongering Gladiator's Band of Contemplation (H)
							i(126336),	-- Warmongering Gladiator's Band of Cruelty (H)
							i(126339),	-- Warmongering Gladiator's Band of Meditation (H)
							i(126337),	-- Warmongering Gladiator's Band of Prowess (H)
							i(126338),	-- Warmongering Gladiator's Band of Victory (H)
							i(126282),	-- Warmongering Gladiator's Ring of Cruelty (H)
							i(126283),	-- Warmongering Gladiator's Ring of Prowess (H)
							i(126284),	-- Warmongering Gladiator's Ring of Triumph (H)
							i(126442),	-- Warmongering Gladiator's Signet of Accuracy (H)
							i(126441),	-- Warmongering Gladiator's Signet of Cruelty (H)
							i(126447),	-- Warmongering Gladiator's Signet of Dedication (H)
							i(126448),	-- Warmongering Gladiator's Signet of Endurance (H)
							i(126443),	-- Warmongering Gladiator's Signet of Ruthlessness (H)
						}),
						n(TRINKET, {
							i(126461),	-- Warmongering Gladiator's Accolade of Conquest (H)
							i(126462),	-- Warmongering Gladiator's Accolade of Dominance (H)
							i(126465),	-- Warmongering Gladiator's Accolade of Endurance (H)
							i(126464),	-- Warmongering Gladiator's Accolade of Meditation (H)
							i(126463),	-- Warmongering Gladiator's Accolade of Victory (H)
							i(126460),	-- Warmongering Gladiator's Badge of Adaptation (H)
							i(126449),	-- Warmongering Gladiator's Badge of Conquest (H)
							i(126454),	-- Warmongering Gladiator's Badge of Dominance (H)
							i(126458),	-- Warmongering Gladiator's Badge of Victory (H)
							i(126451),	-- Warmongering Gladiator's Emblem of Cruelty (H)
							i(126453),	-- Warmongering Gladiator's Emblem of Meditation (H)
							i(126452),	-- Warmongering Gladiator's Emblem of Tenacity (H)
							i(126450),	-- Warmongering Gladiator's Insignia of Conquest (H)
							i(126455),	-- Warmongering Gladiator's Insignia of Dominance (H)
							i(126459),	-- Warmongering Gladiator's Insignia of Victory (H)
							i(125978),	-- Warmongering Gladiator's Medallion of Adaptation (H)
							i(127126),	-- Warmongering Gladiator's Medallion of Cruelty (H)
							i(126457),	-- Warmongering Gladiator's Medallion of Meditation (H)
							i(126456),	-- Warmongering Gladiator's Medallion of Tenacity (H)
						}),
					}),
				},
			}),
			n(PVP_ELITE, {
				un(REMOVED_FROM_GAME, i(127376)),	-- Warmongering Gladiator's Greatcloak (H)
				un(REMOVED_FROM_GAME, i(127371)),	-- Warmongering Gladiator's Tabard (H)
				un(REMOVED_FROM_GAME, i(127377)),	-- Warmongering Gladiator's Greatcloak (A)
				un(REMOVED_FROM_GAME, i(127369)),	-- Warmongering Gladiator's Tabard (A)
				n(WEAPONS, {
					un(REMOVED_FROM_GAME, i(126876)),	-- Warmongering Gladiator's Ripper
					un(REMOVED_FROM_GAME, i(126877)),	-- Warmongering Gladiator's Render
					un(REMOVED_FROM_GAME, i(126746)),	-- Warmongering Gladiator's Bonegrinder
					un(REMOVED_FROM_GAME, i(126764)),	-- Warmongering Gladiator's Heavy Crossbow
					un(REMOVED_FROM_GAME, i(126745)),	-- Warmongering Gladiator's Decapi
					un(REMOVED_FROM_GAME, i(126747)),	-- Warmongering Gladiator's Greatsword
					un(REMOVED_FROM_GAME, i(126748)),	-- Warmongering Gladiator's Cleaver
					un(REMOVED_FROM_GAME, i(126880)),	-- Warmongering Gladiator's Hacker
					un(REMOVED_FROM_GAME, i(133584)),	-- Warmongering Gladiator's Runeaxe
					un(REMOVED_FROM_GAME, i(126751)),	-- Warmongering Gladiator's Longbow
					un(REMOVED_FROM_GAME, i(126838)),	-- Warmongering Gladiator's Pike
					un(REMOVED_FROM_GAME, i(126790)),	-- Warmongering Gladiator's Rifle
					un(REMOVED_FROM_GAME, i(126760)),	-- Warmongering Gladiator's Spellblade
					un(REMOVED_FROM_GAME, i(126875)),	-- Warmongering Gladiator's SHanker
					un(REMOVED_FROM_GAME, i(126758)),	-- Warmongering Gladiator's Endgame
					un(REMOVED_FROM_GAME, i(126762)),	-- Warmongering Gladiator's Reprieve
					un(REMOVED_FROM_GAME, i(126750)),	-- Warmongering Gladiator's Quickblade
					un(REMOVED_FROM_GAME, i(126878)),	-- Warmongering Gladiator's Mageblade
					un(REMOVED_FROM_GAME, i(126882)),	-- Warmongering Gladiator's Slicer
					un(REMOVED_FROM_GAME, i(126761)),	-- Warmongering Gladiator's Battle Staff
					un(REMOVED_FROM_GAME, i(126782)),	-- Warmongering Gladiator's Staff
					un(REMOVED_FROM_GAME, i(126793)),	-- Warmongering Gladiator's Energy Staff
					un(REMOVED_FROM_GAME, i(126749)),	-- Warmongering Gladiator's Pummeler
					un(REMOVED_FROM_GAME, i(126791)),	-- Warmongering Gladiator's Gavel
					un(REMOVED_FROM_GAME, i(126881)),	-- Warmongering Gladiator's Bonecracker
					un(REMOVED_FROM_GAME, i(126759)),	-- Warmongering Gladiator's Barrier
					un(REMOVED_FROM_GAME, i(126792)),	-- Warmongering Gladiator's Redoubt
					un(REMOVED_FROM_GAME, i(126883)),	-- Warmongering Gladiator's Shield Wall
					un(REMOVED_FROM_GAME, i(126763)),	-- Warmongering Gladiator's Touch of Defeat
					un(REMOVED_FROM_GAME, i(126879)),	-- Warmongering Gladiator's Baton of Light
				}),
				cl(DEATHKNIGHT, {
					un(REMOVED_FROM_GAME, i(126765)),	-- Warmongering Gladiator's Dreadplate Chestpiece
					un(REMOVED_FROM_GAME, i(126766)),	-- Warmongering Gladiator's Dreadplate Gauntlets
					un(REMOVED_FROM_GAME, i(126767)),	-- Warmongering Gladiator's Dreadplate Helm
					un(REMOVED_FROM_GAME, i(126768)),	-- Warmongering Gladiator's Dreadplate Legguards
					un(REMOVED_FROM_GAME, i(126769)),	-- Warmongering Gladiator's Dreadplate Shoulders
					un(REMOVED_FROM_GAME, i(126834)),	-- Warmongering Gladiator's Dreadplate Girdle
					un(REMOVED_FROM_GAME, i(126837)),	-- Warmongering Gladiator's Dreadplate Warboots
				}),
				cl(DRUID, {
					un(REMOVED_FROM_GAME, i(126899)),	-- Warmongering Gladiator's Dragonhide Belt
					un(REMOVED_FROM_GAME, i(126898)),	-- Warmongering Gladiator's Dragonhide Footguards
					un(REMOVED_FROM_GAME, i(126770)),	-- Warmongering Gladiator's Dragonhide Gloves
					un(REMOVED_FROM_GAME, i(126771)),	-- Warmongering Gladiator's Dragonhide Helm
					un(REMOVED_FROM_GAME, i(126772)),	-- Warmongering Gladiator's Dragonhide Legguards
					un(REMOVED_FROM_GAME, i(126773)),	-- Warmongering Gladiator's Dragonhide Robes
					un(REMOVED_FROM_GAME, i(126774)),	-- Warmongering Gladiator's Dragonhide Spaulders
					un(REMOVED_FROM_GAME, i(126775)),	-- Warmongering Gladiator's Kodohide Belt
					un(REMOVED_FROM_GAME, i(126776)),	-- Warmongering Gladiator's Kodohide Footguards
					un(REMOVED_FROM_GAME, i(126777)),	-- Warmongering Gladiator's Kodohide Gloves
					un(REMOVED_FROM_GAME, i(126778)),	-- Warmongering Gladiator's Kodohide Helm
					un(REMOVED_FROM_GAME, i(126779)),	-- Warmongering Gladiator's Kodohide Legguards
					un(REMOVED_FROM_GAME, i(126780)),	-- Warmongering Gladiator's Kodohide Robes
					un(REMOVED_FROM_GAME, i(126781)),	-- Warmongering Gladiator's Kodohide Spaulders
					un(REMOVED_FROM_GAME, i(126783)),	-- Warmongering Gladiator's Wyrmhide Belt
					un(REMOVED_FROM_GAME, i(126784)),	-- Warmongering Gladiator's Wyrmhide Footguards
					un(REMOVED_FROM_GAME, i(126785)),	-- Warmongering Gladiator's Wyrmhide Gloves
					un(REMOVED_FROM_GAME, i(126786)),	-- Warmongering Gladiator's Wyrmhide Helm
					un(REMOVED_FROM_GAME, i(126787)),	-- Warmongering Gladiator's Wyrmhide Legguards
					un(REMOVED_FROM_GAME, i(126788)),	-- Warmongering Gladiator's Wyrmhide Robes
					un(REMOVED_FROM_GAME, i(126789)),	-- Warmongering Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					un(REMOVED_FROM_GAME, i(126798)),	-- Warmongering Gladiator's Chain Armor
					un(REMOVED_FROM_GAME, i(126799)),	-- Warmongering Gladiator's Chain Gauntlets
					un(REMOVED_FROM_GAME, i(126800)),	-- Warmongering Gladiator's Chain Helm
					un(REMOVED_FROM_GAME, i(126801)),	-- Warmongering Gladiator's Chain Leggings
					un(REMOVED_FROM_GAME, i(126794)),	-- Warmongering Gladiator's Chain Links
					un(REMOVED_FROM_GAME, i(126796)),	-- Warmongering Gladiator's Chain Sabatons
					un(REMOVED_FROM_GAME, i(126802)),	-- Warmongering Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					un(REMOVED_FROM_GAME, i(126807)),	-- Warmongering Gladiator's Silk Amice
					un(REMOVED_FROM_GAME, i(126752)),	-- Warmongering Gladiator's Silk Cord
					un(REMOVED_FROM_GAME, i(126804)),	-- Warmongering Gladiator's Silk Cowl
					un(REMOVED_FROM_GAME, i(126803)),	-- Warmongering Gladiator's Silk Handguards
					un(REMOVED_FROM_GAME, i(126806)),	-- Warmongering Gladiator's Silk Robe
					un(REMOVED_FROM_GAME, i(126755)),	-- Warmongering Gladiator's Silk Treads
					un(REMOVED_FROM_GAME, i(126805)),	-- Warmongering Gladiator's Silk Trousers
				}),
				cl(MONK, {
					un(REMOVED_FROM_GAME, i(126809)),	-- Warmongering Gladiator's Ironskin Boots
					un(REMOVED_FROM_GAME, i(126810)),	-- Warmongering Gladiator's Ironskin Gloves
					un(REMOVED_FROM_GAME, i(126811)),	-- Warmongering Gladiator's Ironskin Helm
					un(REMOVED_FROM_GAME, i(126812)),	-- Warmongering Gladiator's Ironskin Legguards
					un(REMOVED_FROM_GAME, i(126813)),	-- Warmongering Gladiator's Ironskin Spaulders
					un(REMOVED_FROM_GAME, i(126814)),	-- Warmongering Gladiator's Ironskin Tunic
					un(REMOVED_FROM_GAME, i(126808)),	-- Warmongering Gladiator's Ironskin Waistband
					un(REMOVED_FROM_GAME, i(126894)),	-- Warmongering Gladiator's Copperskin Boots
					un(REMOVED_FROM_GAME, i(126815)),	-- Warmongering Gladiator's Copperskin Gloves
					un(REMOVED_FROM_GAME, i(126816)),	-- Warmongering Gladiator's Copperskin Helm
					un(REMOVED_FROM_GAME, i(126817)),	-- Warmongering Gladiator's Copperskin Legguards
					un(REMOVED_FROM_GAME, i(126818)),	-- Warmongering Gladiator's Copperskin Spaulders
					un(REMOVED_FROM_GAME, i(126819)),	-- Warmongering Gladiator's Copperskin Tunic
					un(REMOVED_FROM_GAME, i(126895)),	-- Warmongering Gladiator's Copperskin Waistband
				}),
				cl(PALADIN, {
					un(REMOVED_FROM_GAME, i(126826)),	-- Warmongering Gladiator's Ornamented Clasp
					un(REMOVED_FROM_GAME, i(126827)),	-- Warmongering Gladiator's Ornamented Greaves
					un(REMOVED_FROM_GAME, i(126829)),	-- Warmongering Gladiator's Ornamented Chestguard
					un(REMOVED_FROM_GAME, i(126830)),	-- Warmongering Gladiator's Ornamented Gloves
					un(REMOVED_FROM_GAME, i(126831)),	-- Warmongering Gladiator's Ornamented Headcover
					un(REMOVED_FROM_GAME, i(126832)),	-- Warmongering Gladiator's Ornamented LegPlates
					un(REMOVED_FROM_GAME, i(126833)),	-- Warmongering Gladiator's Ornamented Spaulders
					un(REMOVED_FROM_GAME, i(126820)),	-- Warmongering Gladiator's Scaled Chestpiece
					un(REMOVED_FROM_GAME, i(126821)),	-- Warmongering Gladiator's Scaled Gauntlets
					un(REMOVED_FROM_GAME, i(126822)),	-- Warmongering Gladiator's Scaled Helm
					un(REMOVED_FROM_GAME, i(126823)),	-- Warmongering Gladiator's Scaled Legguards
					un(REMOVED_FROM_GAME, i(126824)),	-- Warmongering Gladiator's Scaled Shoulders
					un(REMOVED_FROM_GAME, i(126825)),	-- Warmongering Gladiator's Scaled Clasp
					un(REMOVED_FROM_GAME, i(126828)),	-- Warmongering Gladiator's Scaled Greaves
				}),
				cl(PRIEST, {
					un(REMOVED_FROM_GAME, i(126754)),	-- Warmongering Gladiator's Mooncloth Cord
					un(REMOVED_FROM_GAME, i(126839)),	-- Warmongering Gladiator's Mooncloth Gloves
					un(REMOVED_FROM_GAME, i(126840)),	-- Warmongering Gladiator's Mooncloth Hood
					un(REMOVED_FROM_GAME, i(126841)),	-- Warmongering Gladiator's Mooncloth Leggings
					un(REMOVED_FROM_GAME, i(126843)),	-- Warmongering Gladiator's Mooncloth Mantle
					un(REMOVED_FROM_GAME, i(126842)),	-- Warmongering Gladiator's Mooncloth Robe
					un(REMOVED_FROM_GAME, i(126757)),	-- Warmongering Gladiator's Mooncloth Treads
					un(REMOVED_FROM_GAME, i(126897)),	-- Warmongering Gladiator's Satin Cord
					un(REMOVED_FROM_GAME, i(126844)),	-- Warmongering Gladiator's Satin Gloves
					un(REMOVED_FROM_GAME, i(126845)),	-- Warmongering Gladiator's Satin Hood
					un(REMOVED_FROM_GAME, i(126846)),	-- Warmongering Gladiator's Satin Leggings
					un(REMOVED_FROM_GAME, i(126848)),	-- Warmongering Gladiator's Satin Mantle
					un(REMOVED_FROM_GAME, i(126847)),	-- Warmongering Gladiator's Satin Robe
					un(REMOVED_FROM_GAME, i(126896)),	-- Warmongering Gladiator's Satin Treads
				}),
				cl(ROGUE, {
					un(REMOVED_FROM_GAME, i(126850)),	-- Warmongering Gladiator's Leather Boots
					un(REMOVED_FROM_GAME, i(126852)),	-- Warmongering Gladiator's Leather Gloves
					un(REMOVED_FROM_GAME, i(126853)),	-- Warmongering Gladiator's Leather Helm
					un(REMOVED_FROM_GAME, i(126854)),	-- Warmongering Gladiator's Leather Legguards
					un(REMOVED_FROM_GAME, i(126855)),	-- Warmongering Gladiator's Leather Spaulders
					un(REMOVED_FROM_GAME, i(126851)),	-- Warmongering Gladiator's Leather Tunic
					un(REMOVED_FROM_GAME, i(126849)),	-- Warmongering Gladiator's Leather Waistband
				}),
				cl(SHAMAN, {
					un(REMOVED_FROM_GAME, i(126864)),	-- Warmongering Gladiator's Linked Armor
					un(REMOVED_FROM_GAME, i(126865)),	-- Warmongering Gladiator's Linked Gauntlets
					un(REMOVED_FROM_GAME, i(126866)),	-- Warmongering Gladiator's Linked Helm
					un(REMOVED_FROM_GAME, i(126867)),	-- Warmongering Gladiator's Linked Leggings
					un(REMOVED_FROM_GAME, i(126797)),	-- Warmongering Gladiator's Linked Sabatons
					un(REMOVED_FROM_GAME, i(126868)),	-- Warmongering Gladiator's Linked Spaulders
					un(REMOVED_FROM_GAME, i(126795)),	-- Warmongering Gladiator's Linked Waistband
					un(REMOVED_FROM_GAME, i(126870)),	-- Warmongering Gladiator's Mail Armor
					un(REMOVED_FROM_GAME, i(126858)),	-- Warmongering Gladiator's Mail Footguards
					un(REMOVED_FROM_GAME, i(126871)),	-- Warmongering Gladiator's Mail Gauntlets
					un(REMOVED_FROM_GAME, i(126872)),	-- Warmongering Gladiator's Mail Helm
					un(REMOVED_FROM_GAME, i(126873)),	-- Warmongering Gladiator's Mail Leggings
					un(REMOVED_FROM_GAME, i(126874)),	-- Warmongering Gladiator's Mail Spaulders
					un(REMOVED_FROM_GAME, i(126869)),	-- Warmongering Gladiator's Mail Waistguard
					un(REMOVED_FROM_GAME, i(126859)),	-- Warmongering Gladiator's Ringmail Armor
					un(REMOVED_FROM_GAME, i(126857)),	-- Warmongering Gladiator's Ringmail Footguards
					un(REMOVED_FROM_GAME, i(126860)),	-- Warmongering Gladiator's Ringmail Gauntlets
					un(REMOVED_FROM_GAME, i(126861)),	-- Warmongering Gladiator's Ringmail Helm
					un(REMOVED_FROM_GAME, i(126862)),	-- Warmongering Gladiator's Ringmail Leggings
					un(REMOVED_FROM_GAME, i(126863)),	-- Warmongering Gladiator's Ringmail Spaulders
					un(REMOVED_FROM_GAME, i(126856)),	-- Warmongering Gladiator's Ringmail Waistguard
				}),
				cl(WARLOCK, {
					un(REMOVED_FROM_GAME, i(126888)),	-- Warmongering Gladiator's Felweave Amice
					un(REMOVED_FROM_GAME, i(126753)),	-- Warmongering Gladiator's Felweave Cord
					un(REMOVED_FROM_GAME, i(126885)),	-- Warmongering Gladiator's Felweave Cowl
					un(REMOVED_FROM_GAME, i(126884)),	-- Warmongering Gladiator's Felweave Handguards
					un(REMOVED_FROM_GAME, i(126887)),	-- Warmongering Gladiator's Felweave Rainment
					un(REMOVED_FROM_GAME, i(126756)),	-- Warmongering Gladiator's Felweave Treads
					un(REMOVED_FROM_GAME, i(126886)),	-- Warmongering Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					un(REMOVED_FROM_GAME, i(126835)),	-- Warmongering Gladiator's Plate Girdle
					un(REMOVED_FROM_GAME, i(126836)),	-- Warmongering Gladiator's Plate Warboots
					un(REMOVED_FROM_GAME, i(126889)),	-- Warmongering Gladiator's Plate Chestpiece
					un(REMOVED_FROM_GAME, i(126890)),	-- Warmongering Gladiator's Plate Gauntlets
					un(REMOVED_FROM_GAME, i(126891)),	-- Warmongering Gladiator's Plate Helm
					un(REMOVED_FROM_GAME, i(126892)),	-- Warmongering Gladiator's Plate Legguards
					un(REMOVED_FROM_GAME, i(126893)),	-- Warmongering Gladiator's Plate Shoulders
				}),
			}),
		}),
	})),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
	n(PVP, {
		-- PvP Ensembles
		q(42975),	-- Wild Combatant's Chain Armor (Hunter - Alliance)
		q(42992),	-- Wild Combatant's Chain Armor (Hunter - Horde)
		q(42993),	-- Wild Combatant's Ringmail Armor (Shaman - Alliance)
		q(42994),	-- Wild Combatant's Ringmail Armor (Shaman - Horde)
		q(43004),	-- Wild Combatant's Dreadplate Armor (Death Knight - Alliance)
		q(43005),	-- Wild Combatant's Dreadplate Armor (Death Knight - Horde)
		q(43006),	-- Wild Combatant's Scaled Armor (Paladin - Alliance)
		q(43008),	-- Wild Combatant's Scaled Armor (Paladin - Horde)
		q(43009),	-- Wild Combatant's Plate Armor (Warrior - Alliance)
		q(43010),	-- Wild Combatant's Plate Armor (Warrior - Horde)
		q(43011),	-- Wild Combatant's Leather Armor (Rogue - Alliance)
		q(43012),	-- Wild Combatant's Leather Armor (Rogue - Horde)
		q(43017),	-- Wild Combatant's Dragonhide Armor (Druid - Alliance)
		q(43018),	-- Wild Combatant's Dragonhide Armor (Druid - Horde)
		q(43019),	-- Wild Combatant's Ironskin Armor (Monk - Alliance)
		q(43020),	-- Wild Combatant's Ironskin Armor (Monk - Horde)
		q(43021),	-- Wild Combatant's Silk Armor (Mage - Alliance)
		q(43022),	-- Wild Combatant's Silk Armor (Mage - Horde)
		q(43023),	-- Wild Combatant's Satin Armor (Priest - Alliance)
		q(43024),	-- Wild Combatant's Satin Armor (Priest - Horde)
		q(43025),	-- Wild Combatant's Felweave Armor (Warlock - Alliance)
		q(43026),	-- Wild Combatant's Felweave Armor (Warlock - Horde)
		q(43028),	-- Warmongering Combatant's Chain Armor (Hunter - Alliance)
		q(43029),	-- Warmongering Combatant's Chain Armor (Hunter - Horde)
		q(43030),	-- Warmongering Combatant's Ringmail Armor (Shaman - Alliance)
		q(43031),	-- Warmongering Combatant's Ringmail Armor (Shaman - Horde)
		q(43032),	-- Warmongering Combatant's Dragonhide Armor (Druid - Alliance)
		q(43033),	-- Warmongering Combatant's Dragonhide Armor (Druid - Horde)
		q(43034),	-- Warmongering Combatant's Leather Armor (Rogue - Alliance)
		q(43035),	-- Warmongering Combatant's Leather Armor (Rogue - Horde)
		q(43036),	-- Warmongering Combatant's Ironskin Armor (Monk - Alliance)
		q(43037),	-- Warmongering Combatant's Ironskin Armor (Monk - Horde)
		q(43038),	-- Warmongering Combatant's Dreadplate Armor (Death Knight - Alliance)
		q(43039),	-- Warmongering Combatant's Dreadplate Armor (Death Knight - Horde)
		q(43041),	-- Warmongering Combatant's Scaled Armor (Paladin - Alliance)
		q(43042),	-- Warmongering Combatant's Scaled Armor (Paladin - Horde)
		q(43043),	-- Warmongering Combatant's Plate Armor (Warrior - Alliance)
		q(43044),	-- Warmongering Combatant's Plate Armor (Warrior - Horde)
		q(43045),	-- Warmongering Combatant's Satin Armor (Priest - Alliance)
		q(43046),	-- Warmongering Combatant's Satin Armor (Priest - Horde)
		q(43047),	-- Warmongering Combatant's Silk Armor (Mage - Alliance)
		q(43048),	-- Warmongering Combatant's Silk Armor (Mage - Horde)
		q(43049),	-- Warmongering Combatant's Felweave Armor (Warlock - Alliance)
		q(43050),	-- Warmongering Combatant's Felweave Armor (Warlock - Horde)
		q(43073),	-- Primal Combatant's Chain Armor (Hunter - Alliance)
		q(43074),	-- Primal Combatant's Chain Armor (Hunter - Horde)
		q(43075),	-- Primal Combatant's Ringmail Armor (Shaman - Alliance)
		q(43076),	-- Primal Combatant's Ringmail Armor (Shaman - Horde)
		q(43077),	-- Primal Combatant's Dragonhide Armor (Druid - Alliance)
		q(43078),	-- Primal Combatant's Dragonhide Armor (Druid - Horde)
		q(43080),	-- Primal Combatant's Leather Armor (Rogue - Horde)
		q(43081),	-- Primal Combatant's Leather Armor (Rogue - Alliance)
		q(43082),	-- Primal Combatant's Ironskin Armor (Monk - Alliance)
		q(43083),	-- Primal Combatant's Ironskin Armor (Monk - Horde)
		q(43084),	-- Primal Combatant's Dreadplate Armor (Death Knight - Alliance)
		q(43085),	-- Primal Combatant's Dreadplate Armor (Death Knight - Horde)
		q(43086),	-- Primal Combatant's Scaled Armor (Paladin - Alliance)
		q(43087),	-- Primal Combatant's Scaled Armor (Paladin - Horde)
		q(43088),	-- Primal Combatant's Plate Armor (Warrior - Alliance)
		q(43089),	-- Primal Combatant's Plate Armor (Warrior - Horde)
		q(43092),	-- Primal Combatant's Felweave Armor (Warlock - Alliance)
		q(43093),	-- Primal Combatant's Felweave Armor (Warlock - Horde)
		q(43094),	-- Primal Combatant's Satin Armor (Priest - Alliance)
		q(43095),	-- Primal Combatant's Satin Armor (Priest - Horde)
		q(43096),	-- Primal Combatant's Silk Armor (Mage - Alliance)
		q(43097),	-- Primal Combatant's Silk Armor (Mage - Horde)
		q(43102),	-- Wild Gladiator's Chain Armor (Hunter - Alliance)
		q(43103),	-- Wild Gladiator's Chain Armor (Hunter - Horde)
		q(43104),	-- Wild Gladiator's Ringmail Armor (Shaman - Alliance)
		q(43105),	-- Wild Gladiator's Ringmail Armor (Shaman - Horde)
		q(43107),	-- Wild Gladiator's Dragonhide Armor (Druid - Alliance)
		q(43108),	-- Wild Gladiator's Dragonhide Armor (Druid - Horde)
		q(43109),	-- Wild Gladiator's Leather Armor (Rogue - Alliance)
		q(43110),	-- Wild Gladiator's Leather Armor (Rogue - Horde)
		q(43112),	-- Wild Gladiator's Ironskin Armor (Monk - Alliance)
		q(43113),	-- Wild Gladiator's Ironskin Armor (Monk - Horde)
		q(43114),	-- Wild Gladiator's Dreadplate Armor (Death Knight - Alliance)
		q(43115),	-- Wild Gladiator's Dreadplate Armor (Death Knight - Horde)
		q(43116),	-- Wild Gladiator's Plate Armor (Warrior - Alliance)
		q(43117),	-- Wild Gladiator's Plate Armor (Warrior - Horde)
		q(43118),	-- Wild Gladiator's Scaled Paladin (Paladin - Alliance)
		q(43119),	-- Wild Gladiator's Scaled Armor (Paladin - Horde)
		q(43122),	-- Wild Gladiator's Felweave Armor (Warlock - Alliance)
		q(43123),	-- Wild Gladiator's Felweave Armor (Warlock - Horde)
		q(43124),	-- Wild Gladiator's Satin Armor (Priest - Alliance)
		q(43125),	-- Wild Gladiator's Satin Armor (Priest - Horde)
		q(43126),	-- Wild Gladiator's Silk Armor (Mage - Alliance)
		q(43127),	-- Wild Gladiator's Silk Armor (Mage - Horde)
		q(43136),	-- Warmongering Gladiator's Chain Armor (Hunter - Alliance)
		q(43137),	-- Warmongering Gladiator's Chain Armor (Hunter - Horde)
		q(43138),	-- Warmongering Gladiator's Ringmail Armor (Shaman - Alliance)
		q(43139),	-- Warmongering Gladiator's Ringmail Armor (Shaman - Horde)
		q(43154),	-- Warmongering Gladiator's Dragonhide Armor (Druid - Alliance)
		q(43155),	-- Warmongering Gladiator's Dragonhide Armor (Druid - Horde)
		q(43156),	-- Warmongering Gladiator's Dreadplate Armor (Death Knight - Alliance)
		q(43157),	-- Warmongering Gladiator's Dreadplate Armor (Death Knight - Horde)
		q(43160),	-- Warmongering Gladiator's Felweave Armor (Warlock - Alliance)
		q(43161),	-- Warmongering Gladiator's Felweave Armor (Warlock - Horde)
		q(43163),	-- Warmongering Gladiator's Ironskin Armor (Monk - Alliance)
		q(43164),	-- Warmongering Gladiator's Ironskin Armor (Monk - Horde)
		q(43165),	-- Warmongering Gladiator's Leather Armor (Rogue - Alliance)
		q(43166),	-- Warmongering Gladiator's Leather Armor (Rogue - Horde)
		q(43167),	-- Warmongering Gladiator's Plate Armor (Warrior - Alliance)
		q(43168),	-- Warmongering Gladiator's Plate Armor (Warrior - Horde)
		q(43169),	-- Warmongering Gladiator's Satin Armor (Priest - Alliance)
		q(43170),	-- Warmongering Gladiator's Satin Armor (Priest - Horde)
		q(43171),	-- Warmongering Gladiator's Scaled Armor (Paladin - Alliance)
		q(43172),	-- Warmongering Gladiator's Scaled Armor (Paladin - Horde)
		q(43173),	-- Warmongering Gladiator's Silk Armor (Mage - Alliance)
		q(43174),	-- Warmongering Gladiator's Silk Armor (Mage - Horde)
		q(43197),	-- Primal Gladiator's Chain Armor (Hunter - Alliance)
		q(43198),	-- Primal Gladiator's Chain Armor (Hunter - Horde)
		q(43199),	-- Primal Gladiator's Dragonhide Armor (Druid - Alliance)
		q(43200),	-- Primal Gladiator's Dragonhide Armor (Druid - Horde)
		q(43201),	-- Primal Gladiator's Dreadplate Armor (Death Knight - Alliance)
		q(43202),	-- Primal Gladiator's Dreadplate Armor (Death Knight - Horde)
		q(43203),	-- Primal Gladiator's Felweave Armor (Warlock - Alliance)
		q(43204),	-- Primal Gladiator's Felweave Armor (Warlock - Horde)
		q(43209),	-- Primal Gladiator's Ironskin Armor (Monk - Alliance)
		q(43210),	-- Primal Gladiator's Ironskin Armor (Monk - Horde)
		q(43211),	-- Primal Gladiator's Leather Armor (Rogue - Alliance)
		q(43212),	-- Primal Gladiator's Leather Armor (Rogue - Horde)
		q(43213),	-- Primal Gladiator's Plate Armor (Warrior - Alliance)
		q(43214),	-- Primal Gladiator's Plate Armor (Warrior - Horde)
		q(43216),	-- Primal Gladiator's Ringmail Armor (Shaman - Alliance)
		q(43217),	-- Primal Gladiator's Ringmail Armor (Shaman - Horde)
		q(43218),	-- Primal Gladiator's Satin Armor (Priest - Alliance)
		q(43219),	-- Primal Gladiator's Satin Armor (Priest - Horde)
		q(43220),	-- Primal Gladiator's Scaled Armor (Paladin - Alliance)
		q(43221),	-- Primal Gladiator's Scaled Armor (Paladin - Horde)
		q(43222),	-- Primal Gladiator's Silk Armor (Mage - Alliance)
		q(43223),	-- Primal Gladiator's Silk Armor (Mage - Horde)

		-- PvP Arsenals
		q(43235),	-- Arsenal: Primal Combatant's Weapons (Alliance)
		q(43236),	-- Arsenal: Primal Combatant's Weapons (Horde)
		q(43224),	-- Arsenal: Primal Gladiator's Weapons (Alliance)
		q(43225),	-- Arsenal: Primal Gladiator's Weapons (Horde)
		q(43231),	-- Arsenal: Warmongering Combatant's Weapons (Alliance)
		q(43232),	-- Arsenal: Warmongering Combatant's Weapons (Horde)
		q(43229),	-- Arsenal: Warmongering Gladiator's Weapons (Alliance)
		q(43230),	-- Arsenal: Warmongering Gladiator's Weapons (Horde)
		q(43233),	-- Arsenal: Wild Combatant's Weapons (Alliance)
		q(43234),	-- Arsenal: Wild Combatant's Weapons (Horde)
		q(43226),	-- Arsenal: Wild Gladiator's Weapons (Alliance)
		q(43227),	-- Arsenal: Wild Gladiator's Weapons (Horde)
	}),
})));
