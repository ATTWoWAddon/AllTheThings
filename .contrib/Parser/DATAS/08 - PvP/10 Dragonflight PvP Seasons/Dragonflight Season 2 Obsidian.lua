-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	n(SEASON_OBSIDIAN, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
			ach(17727, {	-- Obsidian Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(17728, {	-- Obsidian Combatant [H]
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(17799),		-- Combatant I: Dragonflight Season 2
			ach(17800),		-- Combatant II: Dragonflight Season 2
			ach(17797),		-- Challenger I: Dragonflight Season 2
			ach(17798),		-- Challenger II: Dragonflight Season 2
			ach(17795),		-- Rival I: Dragonflight Season 2
			ach(17796),		-- Rival II: Dragonflight Season 2
			ach(17794, {	-- Duelist: Dragonflight Season 2
				ill(6836),	-- Shadow Flame (ILLUSION!)
				i(205361),	-- Obsidian Gladiator's Prestigious Cloak
			}),
			ach(17831),		-- Elite: Dragonflight Season 2
			ach(17740, {	-- Gladiator: Dragonflight Season 2
				i(205233),	-- Obsidian Gladiator's Slitherdrake (MOUNT!)
				i(205865),	-- Winding Slitherdrake: Embodiment of the Obsidian Gladiator (MM!)
			}),
			ach(17778),		-- Obsidian Gladiator's Drake
			ach(17764, {	-- Obsidian Gladiator: Dragonflight Season 2
				title(499),	-- Obsidian Gladiator <Name>
			}),
			-- RBG
			ach(17768, {	-- Hero of the Alliance: Obsidian
				["races"] = ALLIANCE_ONLY,
			}),
			ach(17772, {	-- Hero of the Horde: Obsidian
				["races"] = HORDE_ONLY,
			}),
			-- Solo
			ach(17801, {	-- Legend: Dragonflight Season 2
				i(206267),	-- Obsidian Legend's Pennant (TOY!)
			}),
			ach(17767, {	-- Obsidian Legend: Dragonflight Season 2
				title(500),	-- Obsidian Legend <Name>
			}),
			-- Fashion
			ach(18249),		-- Obsidian Tie Event
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
			i(205246, {	-- Vicious War Snail [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(205245, {	-- Vicious War Snail [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, {
			n(197553, {	-- Fieldmaster Emberath
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = sharedData({ ["timeline"] = { ADDED_10_2_0 } }, {
					-- #if AFTER TWW
					moh(5, iensemble(211172)),	-- Arsenal: Scalewarden's Axe
					moh(5, iensemble(211176)),	-- Arsenal: Scalewarden's Club
					moh(5, iensemble(211175)),	-- Arsenal: Scalewarden's Mace
					moh(5, iensemble(211177)),	-- Arsenal: Scalewarden's Shortsword
					moh(5, iensemble(211169)),	-- Arsenal: Scalewarden's Greatsword
					moh(5, iensemble(211165)),	-- Arsenal: Scalewarden's Gun
					moh(5, iensemble(211174)),	-- Arsenal: Scalewarden's Dagger
					moh(5, iensemble(211167)),	-- Arsenal: Scalewarden's Offhand
					moh(5, iensemble(211170)),	-- Arsenal: Scalewarden's Polearm
					moh(5, iensemble(211171)),	-- Arsenal: Scalewarden's Shield
					moh(5, iensemble(211168)),	-- Arsenal: Scalewarden's Stave
					moh(5, iensemble(211166)),	-- Arsenal: Scalewarden's Wand
					moh(5, iensemble(211173)),	-- Arsenal: Scalewarden's Warglaive
					moh(12, iensemble(211141)),	-- Ensemble: Scalewarden's Cloth Armor
					moh(12, iensemble(211139)),	-- Ensemble: Scalewarden's Leather Armor
					moh(12, iensemble(211136)),	-- Ensemble: Scalewarden's Mail Armor
					moh(12, iensemble(211134)),	-- Ensemble: Scalewarden's Plate Armo
					-- #endif
				}),
			}),
			n(196191, {	-- Malicia
				["coord"] = { 43.4, 42.5, VALDRAKKEN },
				["g"] = bubbleDown({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {
					filter(BACK_F, {
						bloody(200, i(206241)),	-- Scalewarden's Drape
						bloody(200, i(206240)),	-- Scalewarden's Cloak
						bloody(200, i(206239)),	-- Scalewarden's Shawl
						bloody(200, i(206238)),	-- Scalewarden's Cape
					}),
					filter(CLOTH, {
						bloody(350, i(206213)),	-- Scalewarden's Cloth Mantle
						bloody(200, i(206212)),	-- Scalewarden's Cloth Bindings
						bloody(200, i(206210)),	-- Scalewarden's Cloth Cord
						bloody(500, i(206209)),	-- Scalewarden's Cloth Pants
						bloody(500, i(206208)),	-- Scalewarden's Crown
						bloody(350, i(206207)),	-- Scalewarden's Cloth Gloves
						bloody(350, i(206206)),	-- Scalewarden's Cloth Slippers
						bloody(500, i(206205)),	-- Scalewarden's Cloth Garb
					}),
					filter(LEATHER, {
						bloody(350, i(206221)),	-- Scalewarden's Leather Shoulderguard
						bloody(500, i(206220)),	-- Scalewarden's Leather Jerkin
						bloody(200, i(206219)),	-- Scalewarden's Leather Wraps
						bloody(200, i(206218)),	-- Scalewarden's Leather Belt
						bloody(500, i(206217)),	-- Scalewarden's Leather Breeches
						bloody(500, i(206216)),	-- Scalewarden's Hood
						bloody(350, i(206215)),	-- Scalewarden's Leather Handwraps
						bloody(350, i(206214)),	-- Scalewarden's Leather Boots
					}),
					filter(MAIL, {
						bloody(200, i(206237)),	-- Scalewarden's Chain Armguards
						bloody(200, i(206236)),	-- Scalewarden's Chain Cinch
						bloody(350, i(206235)),	-- Scalewarden's Chain Epaulets
						bloody(500, i(206234)),	-- Scalewarden's Chain Leggings
						bloody(500, i(206233)),	-- Scalewarden's Helm
						bloody(350, i(206232)),	-- Scalewarden's Chain Grips
						bloody(350, i(206231)),	-- Scalewarden's Chain Greaves
						bloody(500, i(206230)),	-- Scalewarden's Chain Armor
					}),
					filter(PLATE, {
						bloody(200, i(206229)),	-- Scalewarden's Plate Bracers
						bloody(200, i(206228)),	-- Scalewarden's Plate Clasp
						bloody(350, i(206227)),	-- Scalewarden's Plate Spaulders
						bloody(500, i(206226)),	-- Scalewarden's Plate Legguards
						bloody(350, i(206225)),	-- Scalewarden's Plate Gauntlets
						bloody(350, i(206224)),	-- Scalewarden's Plate Sabatons
						bloody(500, i(206223)),	-- Scalewarden's Plate Cuirass
						bloody(500, i(206222)),	-- Scalewarden's Faceplate
					}),
					n(WEAPONS, {
						bloody(400, i(206830)),	-- Scalewarden's Dirk
						bloody(500, i(206820)),	-- Scalewarden's Dagger
						bloody(400, i(206265)),	-- Scalewarden's Sabre
						bloody(500, i(206263)),	-- Scalewarden's Scepter
						bloody(400, i(206262)),	-- Scalewarden's Crusher
						bloody(400, i(206261)),	-- Scalewarden's Mace
						bloody(500, i(206260)),	-- Scalewarden's Wand
						bloody(800, i(206259)),	-- Scalewarden's Spear
						bloody(800, i(206258)),	-- Scalewarden's Impaler
						bloody(300, i(206257)),	-- Scalewarden's Aegis
						bloody(400, i(206256)),	-- Scalewarden's Cudgel
						bloody(400, i(206255)),	-- Scalewarden's Hammer
						bloody(500, i(206254)),	-- Scalewarden's Club
						bloody(800, i(206253)),	-- Scalewarden's Broadsword
						bloody(800, i(206252)),	-- Scalewarden's Greatsword
						bloody(800, i(206251)),	-- Scalewarden's Battlestaff
						bloody(800, i(206250)),	-- Scalewarden's Spire
						bloody(300, i(206249)),	-- Scalewarden's Flame
						bloody(400, i(206248)),	-- Scalewarden's Shortsword
						bloody(500, i(206247)),	-- Scalewarden's Spellblade
						bloody(400, i(206246)),	-- Scalewarden's Twinblade
						bloody(800, i(206245)),	-- Scalewarden's Handcannon
						bloody(400, i(206244)),	-- Scalewarden's Carver
						bloody(500, i(206243)),	-- Scalewarden's Hatchet
						bloody(400, i(206242)),	-- Scalewarden's Battleaxe
					}),
				}),
			}),
			n(213989, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Warkeeper Gresh
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = {
					-- #if BEFORE TWW
					bloody(500, iensemble(211172)),		-- Arsenal: Scalewarden's Axe
					bloody(500, iensemble(211176)),		-- Arsenal: Scalewarden's Club
					bloody(500, iensemble(211175)),		-- Arsenal: Scalewarden's Mace
					bloody(500, iensemble(211177)),		-- Arsenal: Scalewarden's Shortsword
					bloody(800, iensemble(211169)),		-- Arsenal: Scalewarden's Greatsword
					bloody(500, iensemble(211165)),		-- Arsenal: Scalewarden's Gun
					bloody(500, iensemble(211174)),		-- Arsenal: Scalewarden's Dagger
					bloody(300, iensemble(211167)),		-- Arsenal: Scalewarden's Offhand
					bloody(800, iensemble(211170)),		-- Arsenal: Scalewarden's Polearm
					bloody(300, iensemble(211171)),		-- Arsenal: Scalewarden's Shield
					bloody(800, iensemble(211168)),		-- Arsenal: Scalewarden's Stave
					bloody(500, iensemble(211166)),		-- Arsenal: Scalewarden's Wand
					bloody(500, iensemble(211173)),		-- Arsenal: Scalewarden's Warglaive
					bloody(3000, iensemble(211141)),	-- Ensemble: Scalewarden's Cloth Armor
					bloody(3000, iensemble(211139)),	-- Ensemble: Scalewarden's Leather Armor
					bloody(3000, iensemble(211136)),	-- Ensemble: Scalewarden's Mail Armor
					bloody(3000, iensemble(211134)),	-- Ensemble: Scalewarden's Plate Armo
					-- #endif
				},
			})),
		}),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0, ADDED_11_0_5 } }, {
			n(199601, {	-- Seltherex
				["coord"] = { 44.7, 37.0, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_11_0_5 },
				}, {
					iensemble(230981, {	-- Arsenal: Obsidian Aspirant's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(230951, {	-- Ensemble: Obsidian Aspirant's Cloth Armor
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(230952, {	-- Ensemble: Obsidian Aspirant's Leather Armor
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(230953, {	-- Ensemble: Obsidian Aspirant's Mail Armor
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(230954, {	-- Ensemble: Obsidian Aspirant's Plate Armor
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(199601, {	-- Seltherex
				["coord"] = { 44.7, 37.0, VALDRAKKEN },
				["g"] = bubbleDownFiltered({
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				},FILTERFUNC_itemID,{
					filter(BACK_F, {
						honor(525, i(205791)),	-- Obsidian Aspirant's Cape
						honor(525, i(205789)),	-- Obsidian Aspirant's Cloak
						honor(525, i(205790)),	-- Obsidian Aspirant's Drape
						honor(525, i(205792)),	-- Obsidian Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(205771)),	-- Obsidian Aspirant's Silk Belt
						honor(525, i(205774)),	-- Obsidian Aspirant's Silk Bindings
						honor(700, i(205739)),	-- Obsidian Aspirant's Silk Cord
						honor(875, i(205759)),	-- Obsidian Aspirant's Silk Cover
						honor(700, i(205752)),	-- Obsidian Aspirant's Silk Footwraps
						honor(700, i(205725)),	-- Obsidian Aspirant's Silk Gloves
						honor(700, i(205757)),	-- Obsidian Aspirant's Silk Handwraps
						honor(875, i(205727)),	-- Obsidian Aspirant's Silk Hood
						honor(875, i(205731)),	-- Obsidian Aspirant's Silk Leggings
						honor(875, i(205763)),	-- Obsidian Aspirant's Silk Legwraps
						honor(700, i(205736)),	-- Obsidian Aspirant's Silk Mantle
						honor(875, i(205715)),	-- Obsidian Aspirant's Silk Robe
						honor(700, i(205768)),	-- Obsidian Aspirant's Silk Shawl
						honor(700, i(205720)),	-- Obsidian Aspirant's Silk Treads
						honor(875, i(205747)),	-- Obsidian Aspirant's Silk Vestments
						honor(525, i(205742)),	-- Obsidian Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(205784)),	-- Obsidian Aspirant's Band
						honor(525, i(205783)),	-- Obsidian Aspirant's Ring
						honor(525, i(205785)),	-- Obsidian Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(205777)),	-- Obsidian Aspirant's Leather Armguards
						honor(700, i(205741)),	-- Obsidian Aspirant's Leather Belt
						honor(700, i(205722)),	-- Obsidian Aspirant's Leather Boots
						honor(875, i(205733)),	-- Obsidian Aspirant's Leather Breeches
						honor(700, i(205773)),	-- Obsidian Aspirant's Leather Cord
						honor(700, i(205754)),	-- Obsidian Aspirant's Leather Footpads
						honor(700, i(205723)),	-- Obsidian Aspirant's Leather Gloves
						honor(700, i(205755)),	-- Obsidian Aspirant's Leather Grips
						honor(875, i(205729)),	-- Obsidian Aspirant's Leather Helm
						honor(875, i(205765)),	-- Obsidian Aspirant's Leather Leggings
						honor(700, i(205766)),	-- Obsidian Aspirant's Leather Mantle
						honor(875, i(205761)),	-- Obsidian Aspirant's Leather Mask
						honor(700, i(205734)),	-- Obsidian Aspirant's Leather Spaulders
						honor(875, i(205750)),	-- Obsidian Aspirant's Leather Tunic
						honor(875, i(205718)),	-- Obsidian Aspirant's Leather Vest
						honor(525, i(205745)),	-- Obsidian Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(700, i(205740)),	-- Obsidian Aspirant's Chain Belt
						honor(525, i(205776)),	-- Obsidian Aspirant's Chain Bracer
						honor(700, i(205772)),	-- Obsidian Aspirant's Chain Clasp
						honor(700, i(205726)),	-- Obsidian Aspirant's Chain Gauntlets
						honor(700, i(205758)),	-- Obsidian Aspirant's Chain Handguards
						honor(875, i(205760)),	-- Obsidian Aspirant's Chain Headguard
						honor(875, i(205728)),	-- Obsidian Aspirant's Chain Helm
						honor(875, i(205732)),	-- Obsidian Aspirant's Chain Leggings
						honor(700, i(205721)),	-- Obsidian Aspirant's Chain Sabatons
						honor(700, i(205769)),	-- Obsidian Aspirant's Chain Shoulderguards
						honor(700, i(205737)),	-- Obsidian Aspirant's Chain Spaulders
						honor(700, i(205753)),	-- Obsidian Aspirant's Chain Stompers
						honor(875, i(205749)),	-- Obsidian Aspirant's Chain Tunic
						honor(875, i(205717)),	-- Obsidian Aspirant's Chain Vest
						honor(875, i(205764)),	-- Obsidian Aspirant's Chain Wargreaves
						honor(525, i(205744)),	-- Obsidian Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(205787)),	-- Obsidian Aspirant's Choker
						honor(525, i(205786)),	-- Obsidian Aspirant's Necklace
						honor(525, i(205788)),	-- Obsidian Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(525, i(205775)),	-- Obsidian Aspirant's Plate Armguards
						honor(875, i(205748)),	-- Obsidian Aspirant's Plate Armor
						honor(875, i(205716)),	-- Obsidian Aspirant's Plate Chestplate
						honor(525, i(205743)),	-- Obsidian Aspirant's Plate Cuffs
						honor(700, i(205724)),	-- Obsidian Aspirant's Plate Gauntlets
						honor(700, i(205738)),	-- Obsidian Aspirant's Plate Girdle
						honor(700, i(205770)),	-- Obsidian Aspirant's Plate Greatbelt
						honor(700, i(205756)),	-- Obsidian Aspirant's Plate Handguards
						honor(875, i(205746)),	-- Obsidian Aspirant's Plate Headguard
						honor(875, i(205714)),	-- Obsidian Aspirant's Plate Helm
						honor(875, i(205730)),	-- Obsidian Aspirant's Plate Legguards
						honor(700, i(205767)),	-- Obsidian Aspirant's Plate Pauldrons
						honor(700, i(205735)),	-- Obsidian Aspirant's Plate Shoulders
						honor(700, i(205751)),	-- Obsidian Aspirant's Plate Stompers
						honor(700, i(205719)),	-- Obsidian Aspirant's Plate Warboots
						honor(875, i(205762)),	-- Obsidian Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(205778)),	-- Obsidian Aspirant's Badge of Ferocity
						honor(700, i(205781)),	-- Obsidian Aspirant's Emblem
						honor(700, i(205780)),	-- Obsidian Aspirant's Insignia of Alacrity
						honor(525, i(205779)),	-- Obsidian Aspirant's Medallion
						honor(525, i(205782)),	-- Obsidian Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(205879)),	-- Obsidian Aspirant's Battleaxe
						honor(875, i(205896)),	-- Obsidian Aspirant's Blade
						honor(875, i(205880)),	-- Obsidian Aspirant's Dagger
						honor(1325, i(205887)),	-- Obsidian Aspirant's Gavel
						honor(1750, i(205884)),	-- Obsidian Aspirant's Greatsword
						honor(875, i(205892)),	-- Obsidian Aspirant's Hammer
						honor(1325, i(205893)),	-- Obsidian Aspirant's Knife
						honor(1750, i(205891)),	-- Obsidian Aspirant's Longspear
						honor(875, i(205881)),	-- Obsidian Aspirant's Mace
						honor(1750, i(205882)),	-- Obsidian Aspirant's Polearm
						honor(1750, i(205895)),	-- Obsidian Aspirant's Pulverizer
						honor(1750, i(205890)),	-- Obsidian Aspirant's Recurve
						honor(875, i(205889)),	-- Obsidian Aspirant's Ripper
						honor(425, i(205888)),	-- Obsidian Aspirant's Shield
						honor(1750, i(205883)),	-- Obsidian Aspirant's Staff
						honor(875, i(205894)),	-- Obsidian Aspirant's Sword
						honor(425, i(205885)),	-- Obsidian Aspirant's Torch
						honor(875, i(205886)),	-- Obsidian Aspirant's Warglaive
					}),
				}),
			}),
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0, ADDED_11_0_5 } }, {
			n(199599, {	-- Calderax
				["coord"] = { 44.3, 36.6, VALDRAKKEN },
				["ItemAppearanceModifierID"] = 159,
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_11_0_5 },
				}, {
					iensemble(230982, {	-- Arsenal: Obsidian Gladiator's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(230955, {	-- Ensemble: Obsidian Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(230956, {	-- Ensemble: Obsidian Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(230957, {	-- Ensemble: Obsidian Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(230958, {	-- Ensemble: Obsidian Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(230959, {	-- Ensemble: Obsidian Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(230960, {	-- Ensemble: Obsidian Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(230961, {	-- Ensemble: Obsidian Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(230962, {	-- Ensemble: Obsidian Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(230963, {	-- Ensemble: Obsidian Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(230964, {	-- Ensemble: Obsidian Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(230965, {	-- Ensemble: Obsidian Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(230966, {	-- Ensemble: Obsidian Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(230967, {	-- Ensemble: Obsidian Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
			n(199599, {	-- Calderax
				["coord"] = { 44.3, 36.6, VALDRAKKEN },
				["ItemAppearanceModifierID"] = 159,
				["g"] = bubbleDownFiltered({
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				},FILTERFUNC_itemID,{
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(525, i(205673)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205674)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205675)),	-- Obsidian Gladiator's Shawl
							conquest(875, i(205473)),	-- Obsidian Gladiator's Plate Chestguard
							conquest(875, i(205474)),	-- Obsidian Gladiator's Plate Chestplate
							conquest(700, i(205477)),	-- Obsidian Gladiator's Plate Gauntlets
							conquest(700, i(205485)),	-- Obsidian Gladiator's Plate Girdle
							conquest(700, i(205486)),	-- Obsidian Gladiator's Plate Greatbelt
							conquest(700, i(205478)),	-- Obsidian Gladiator's Plate Handguards
							conquest(875, i(205479)),	-- Obsidian Gladiator's Plate Helm
							conquest(875, i(205480)),	-- Obsidian Gladiator's Plate Helmet
							conquest(875, i(205481)),	-- Obsidian Gladiator's Plate Legguards
							conquest(700, i(205484)),	-- Obsidian Gladiator's Plate Pauldrons
							conquest(700, i(205483)),	-- Obsidian Gladiator's Plate Shoulders
							conquest(700, i(205476)),	-- Obsidian Gladiator's Plate Stompers
							conquest(525, i(205488)),	-- Obsidian Gladiator's Plate Vambraces
							conquest(700, i(205475)),	-- Obsidian Gladiator's Plate Warboots
							conquest(875, i(205482)),	-- Obsidian Gladiator's Plate Wargreaves
							conquest(525, i(205487)),	-- Obsidian Gladiator's Plate Wristguards
						}),
						cl(DEMONHUNTER, {
							conquest(525, i(205655)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205656)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205657)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205533)),	-- Obsidian Gladiator's Leather Belt
							conquest(700, i(205523)),	-- Obsidian Gladiator's Leather Boots
							conquest(875, i(205529)),	-- Obsidian Gladiator's Leather Breeches
							conquest(700, i(205525)),	-- Obsidian Gladiator's Leather Gloves
							conquest(700, i(205526)),	-- Obsidian Gladiator's Leather Grips
							conquest(875, i(205527)),	-- Obsidian Gladiator's Leather Helm
							conquest(875, i(205522)),	-- Obsidian Gladiator's Leather Jerkin
							conquest(875, i(205530)),	-- Obsidian Gladiator's Leather Legwraps
							conquest(875, i(205528)),	-- Obsidian Gladiator's Leather Mask
							conquest(700, i(205532)),	-- Obsidian Gladiator's Leather Shoulderpads
							conquest(700, i(205531)),	-- Obsidian Gladiator's Leather Spaulders
							conquest(700, i(205534)),	-- Obsidian Gladiator's Leather Strap
							conquest(700, i(205524)),	-- Obsidian Gladiator's Leather Treads
							conquest(875, i(205521)),	-- Obsidian Gladiator's Leather Vest
							conquest(525, i(205536)),	-- Obsidian Gladiator's Leather Wristguards
							conquest(525, i(205535)),	-- Obsidian Gladiator's Leather Wristwraps
						}),
						cl(DRUID, {
							conquest(525, i(205658)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205659)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205660)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205549)),	-- Obsidian Gladiator's Leather Belt
							conquest(700, i(205539)),	-- Obsidian Gladiator's Leather Boots
							conquest(875, i(205545)),	-- Obsidian Gladiator's Leather Breeches
							conquest(700, i(205541)),	-- Obsidian Gladiator's Leather Gloves
							conquest(700, i(205542)),	-- Obsidian Gladiator's Leather Grips
							conquest(875, i(205543)),	-- Obsidian Gladiator's Leather Helm
							conquest(875, i(205538)),	-- Obsidian Gladiator's Leather Jerkin
							conquest(875, i(205546)),	-- Obsidian Gladiator's Leather Legwraps
							conquest(875, i(205544)),	-- Obsidian Gladiator's Leather Mask
							conquest(700, i(205548)),	-- Obsidian Gladiator's Leather Shoulderpads
							conquest(700, i(205547)),	-- Obsidian Gladiator's Leather Spaulders
							conquest(700, i(205550)),	-- Obsidian Gladiator's Leather Strap
							conquest(700, i(205540)),	-- Obsidian Gladiator's Leather Treads
							conquest(875, i(205537)),	-- Obsidian Gladiator's Leather Vest
							conquest(525, i(205552)),	-- Obsidian Gladiator's Leather Wristguards
							conquest(525, i(205551)),	-- Obsidian Gladiator's Leather Wristwraps
						}),
						cl(EVOKER, {
							conquest(525, i(205407)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205408)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205409)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205403)),	-- Obsidian Gladiator's Chain Belt
							conquest(700, i(205394)),	-- Obsidian Gladiator's Chain Boots
							conquest(525, i(205406)),	-- Obsidian Gladiator's Chain Bracers
							conquest(875, i(205400)),	-- Obsidian Gladiator's Chain Breeches
							conquest(875, i(205398)),	-- Obsidian Gladiator's Chain Faceguard
							conquest(700, i(205395)),	-- Obsidian Gladiator's Chain Gauntlets
							conquest(700, i(205404)),	-- Obsidian Gladiator's Chain Girdle
							conquest(700, i(205396)),	-- Obsidian Gladiator's Chain Handguards
							conquest(875, i(205397)),	-- Obsidian Gladiator's Chain Helm
							conquest(875, i(205399)),	-- Obsidian Gladiator's Chain Leggings
							conquest(700, i(205401)),	-- Obsidian Gladiator's Chain Monnion
							conquest(700, i(205393)),	-- Obsidian Gladiator's Chain Sabatons
							conquest(700, i(205402)),	-- Obsidian Gladiator's Chain Shoulderguard
							conquest(875, i(205392)),	-- Obsidian Gladiator's Chain Tunic
							conquest(875, i(205391)),	-- Obsidian Gladiator's Chain Vest
							conquest(525, i(205405)),	-- Obsidian Gladiator's Chain Wristguards
						}),
						cl(HUNTER, {
							conquest(525, i(205667)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205668)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205669)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205597)),	-- Obsidian Gladiator's Chain Belt
							conquest(700, i(205588)),	-- Obsidian Gladiator's Chain Boots
							conquest(525, i(205600)),	-- Obsidian Gladiator's Chain Bracers
							conquest(875, i(205594)),	-- Obsidian Gladiator's Chain Breeches
							conquest(875, i(205592)),	-- Obsidian Gladiator's Chain Faceguard
							conquest(700, i(205589)),	-- Obsidian Gladiator's Chain Gauntlets
							conquest(700, i(205598)),	-- Obsidian Gladiator's Chain Girdle
							conquest(700, i(205590)),	-- Obsidian Gladiator's Chain Handguards
							conquest(875, i(205591)),	-- Obsidian Gladiator's Chain Helm
							conquest(875, i(205593)),	-- Obsidian Gladiator's Chain Leggings
							conquest(700, i(205595)),	-- Obsidian Gladiator's Chain Monnion
							conquest(700, i(205587)),	-- Obsidian Gladiator's Chain Sabatons
							conquest(700, i(205596)),	-- Obsidian Gladiator's Chain Shoulderguard
							conquest(875, i(205586)),	-- Obsidian Gladiator's Chain Tunic
							conquest(875, i(205585)),	-- Obsidian Gladiator's Chain Vest
							conquest(525, i(205599)),	-- Obsidian Gladiator's Chain Wristguards
						}),
						cl(MAGE, {
							conquest(525, i(205446)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205447)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205448)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205386)),	-- Obsidian Gladiator's Silk Amice
							conquest(525, i(205390)),	-- Obsidian Gladiator's Silk Armbands
							conquest(700, i(205388)),	-- Obsidian Gladiator's Silk Belt
							conquest(875, i(205376)),	-- Obsidian Gladiator's Silk Blouse
							conquest(700, i(205387)),	-- Obsidian Gladiator's Silk Cord
							conquest(700, i(205379)),	-- Obsidian Gladiator's Silk Gloves
							conquest(875, i(205382)),	-- Obsidian Gladiator's Silk Guise
							conquest(700, i(205380)),	-- Obsidian Gladiator's Silk Handwraps
							conquest(875, i(205381)),	-- Obsidian Gladiator's Silk Hood
							conquest(875, i(205383)),	-- Obsidian Gladiator's Silk Leggings
							conquest(700, i(205385)),	-- Obsidian Gladiator's Silk Mantle
							conquest(700, i(205377)),	-- Obsidian Gladiator's Silk Slippers
							conquest(700, i(205378)),	-- Obsidian Gladiator's Silk Treads
							conquest(875, i(205384)),	-- Obsidian Gladiator's Silk Trousers
							conquest(875, i(205375)),	-- Obsidian Gladiator's Silk Tunic
							conquest(525, i(205389)),	-- Obsidian Gladiator's Silk Wristwraps
						}),
						cl(MONK, {
							conquest(525, i(205661)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205662)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205663)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205565)),	-- Obsidian Gladiator's Leather Belt
							conquest(700, i(205555)),	-- Obsidian Gladiator's Leather Boots
							conquest(875, i(205561)),	-- Obsidian Gladiator's Leather Breeches
							conquest(700, i(205557)),	-- Obsidian Gladiator's Leather Gloves
							conquest(700, i(205558)),	-- Obsidian Gladiator's Leather Grips
							conquest(875, i(205559)),	-- Obsidian Gladiator's Leather Helm
							conquest(875, i(205554)),	-- Obsidian Gladiator's Leather Jerkin
							conquest(875, i(205562)),	-- Obsidian Gladiator's Leather Legwraps
							conquest(875, i(205560)),	-- Obsidian Gladiator's Leather Mask
							conquest(700, i(205564)),	-- Obsidian Gladiator's Leather Shoulderpads
							conquest(700, i(205563)),	-- Obsidian Gladiator's Leather Spaulders
							conquest(700, i(205566)),	-- Obsidian Gladiator's Leather Strap
							conquest(700, i(205556)),	-- Obsidian Gladiator's Leather Treads
							conquest(875, i(205553)),	-- Obsidian Gladiator's Leather Vest
							conquest(525, i(205568)),	-- Obsidian Gladiator's Leather Wristguards
							conquest(525, i(205567)),	-- Obsidian Gladiator's Leather Wristwraps
						}),
						cl(PALADIN, {
							conquest(525, i(205676)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205677)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205678)),	-- Obsidian Gladiator's Shawl
							conquest(875, i(205616)),	-- Obsidian Gladiator's Plate Plastron
							conquest(875, i(205617)),	-- Obsidian Gladiator's Plate Chestplate
							conquest(700, i(205620)),	-- Obsidian Gladiator's Plate Gauntlets
							conquest(700, i(205628)),	-- Obsidian Gladiator's Plate Girdle
							conquest(700, i(205629)),	-- Obsidian Gladiator's Plate Greatbelt
							conquest(700, i(205621)),	-- Obsidian Gladiator's Plate Handguards
							conquest(875, i(205622)),	-- Obsidian Gladiator's Plate Helm
							conquest(875, i(205623)),	-- Obsidian Gladiator's Plate Helmet
							conquest(875, i(205624)),	-- Obsidian Gladiator's Plate Legguards
							conquest(700, i(205627)),	-- Obsidian Gladiator's Plate Pauldrons
							conquest(700, i(205626)),	-- Obsidian Gladiator's Plate Shoulders
							conquest(700, i(205619)),	-- Obsidian Gladiator's Plate Stompers
							conquest(525, i(205631)),	-- Obsidian Gladiator's Plate Vambraces
							conquest(700, i(205618)),	-- Obsidian Gladiator's Plate Warboots
							conquest(875, i(205625)),	-- Obsidian Gladiator's Plate Tasses
							conquest(525, i(205630)),	-- Obsidian Gladiator's Plate Wristguards
						}),
						cl(PRIEST, {
							conquest(525, i(205649)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205650)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205651)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205500)),	-- Obsidian Gladiator's Silk Amice
							conquest(525, i(205504)),	-- Obsidian Gladiator's Silk Armbands
							conquest(700, i(205502)),	-- Obsidian Gladiator's Silk Belt
							conquest(875, i(205490)),	-- Obsidian Gladiator's Silk Blouse
							conquest(700, i(205501)),	-- Obsidian Gladiator's Silk Cord
							conquest(700, i(205493)),	-- Obsidian Gladiator's Silk Gloves
							conquest(875, i(205496)),	-- Obsidian Gladiator's Silk Guise
							conquest(700, i(205494)),	-- Obsidian Gladiator's Silk Handwraps
							conquest(875, i(205495)),	-- Obsidian Gladiator's Silk Hood
							conquest(875, i(205497)),	-- Obsidian Gladiator's Silk Leggings
							conquest(700, i(205499)),	-- Obsidian Gladiator's Silk Mantle
							conquest(700, i(205491)),	-- Obsidian Gladiator's Silk Slippers
							conquest(700, i(205492)),	-- Obsidian Gladiator's Silk Treads
							conquest(875, i(205498)),	-- Obsidian Gladiator's Silk Trousers
							conquest(875, i(205489)),	-- Obsidian Gladiator's Silk Tunic
							conquest(525, i(205503)),	-- Obsidian Gladiator's Silk Wristwraps
						}),
						cl(ROGUE, {
							conquest(525, i(205664)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205665)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205666)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205581)),	-- Obsidian Gladiator's Leather Belt
							conquest(700, i(205571)),	-- Obsidian Gladiator's Leather Boots
							conquest(875, i(205577)),	-- Obsidian Gladiator's Leather Breeches
							conquest(700, i(205573)),	-- Obsidian Gladiator's Leather Gloves
							conquest(700, i(205574)),	-- Obsidian Gladiator's Leather Grips
							conquest(875, i(205575)),	-- Obsidian Gladiator's Leather Helm
							conquest(875, i(205570)),	-- Obsidian Gladiator's Leather Jerkin
							conquest(875, i(205578)),	-- Obsidian Gladiator's Leather Legwraps
							conquest(875, i(205576)),	-- Obsidian Gladiator's Leather Mask
							conquest(700, i(205580)),	-- Obsidian Gladiator's Leather Shoulderpads
							conquest(700, i(205579)),	-- Obsidian Gladiator's Leather Spaulders
							conquest(700, i(205582)),	-- Obsidian Gladiator's Leather Strap
							conquest(700, i(205572)),	-- Obsidian Gladiator's Leather Treads
							conquest(875, i(205569)),	-- Obsidian Gladiator's Leather Vest
							conquest(525, i(205584)),	-- Obsidian Gladiator's Leather Wristguards
							conquest(525, i(205583)),	-- Obsidian Gladiator's Leather Wristwraps
						}),
						cl(SHAMAN, {
							conquest(525, i(205670)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205671)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205672)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205613)),	-- Obsidian Gladiator's Chain Belt
							conquest(700, i(205604)),	-- Obsidian Gladiator's Chain Boots
							conquest(525, i(205648)),	-- Obsidian Gladiator's Chain Bracers
							conquest(875, i(205610)),	-- Obsidian Gladiator's Chain Breeches
							conquest(875, i(205608)),	-- Obsidian Gladiator's Chain Faceguard
							conquest(700, i(205605)),	-- Obsidian Gladiator's Chain Gauntlets
							conquest(700, i(205614)),	-- Obsidian Gladiator's Chain Girdle
							conquest(700, i(205606)),	-- Obsidian Gladiator's Chain Handguards
							conquest(875, i(205607)),	-- Obsidian Gladiator's Chain Helm
							conquest(875, i(205609)),	-- Obsidian Gladiator's Chain Leggings
							conquest(700, i(205611)),	-- Obsidian Gladiator's Chain Monnion
							conquest(700, i(205603)),	-- Obsidian Gladiator's Chain Sabatons
							conquest(700, i(205612)),	-- Obsidian Gladiator's Chain Shoulderguard
							conquest(875, i(205602)),	-- Obsidian Gladiator's Chain Tunic
							conquest(875, i(205601)),	-- Obsidian Gladiator's Chain Vest
							conquest(525, i(205615)),	-- Obsidian Gladiator's Chain Wristguards
						}),
						cl(WARLOCK, {
							conquest(525, i(205652)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205653)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205654)),	-- Obsidian Gladiator's Shawl
							conquest(700, i(205516)),	-- Obsidian Gladiator's Silk Amice
							conquest(525, i(205520)),	-- Obsidian Gladiator's Silk Armbands
							conquest(700, i(205518)),	-- Obsidian Gladiator's Silk Belt
							conquest(700, i(205517)),	-- Obsidian Gladiator's Silk Cord
							conquest(700, i(205509)),	-- Obsidian Gladiator's Silk Gloves
							conquest(875, i(205512)),	-- Obsidian Gladiator's Silk Guise
							conquest(700, i(205510)),	-- Obsidian Gladiator's Silk Handwraps
							conquest(875, i(205511)),	-- Obsidian Gladiator's Silk Hood
							conquest(875, i(205513)),	-- Obsidian Gladiator's Silk Leggings
							conquest(700, i(205515)),	-- Obsidian Gladiator's Silk Mantle
							conquest(875, i(205505)),	-- Obsidian Gladiator's Silk Robe
							conquest(700, i(205507)),	-- Obsidian Gladiator's Silk Slippers
							conquest(700, i(205508)),	-- Obsidian Gladiator's Silk Treads
							conquest(875, i(205514)),	-- Obsidian Gladiator's Silk Trousers
							conquest(875, i(205506)),	-- Obsidian Gladiator's Silk Vestments
							conquest(525, i(205519)),	-- Obsidian Gladiator's Silk Wristwraps
						}),
						cl(WARRIOR, {
							conquest(525, i(205679)),	-- Obsidian Gladiator's Cloak
							conquest(525, i(205680)),	-- Obsidian Gladiator's Drape
							conquest(525, i(205681)),	-- Obsidian Gladiator's Shawl
							conquest(875, i(205632)),	-- Obsidian Gladiator's Plate Chestguard
							conquest(875, i(205633)),	-- Obsidian Gladiator's Plate Chestplate
							conquest(700, i(205636)),	-- Obsidian Gladiator's Plate Gauntlets
							conquest(700, i(205644)),	-- Obsidian Gladiator's Plate Girdle
							conquest(700, i(205645)),	-- Obsidian Gladiator's Plate Greatbelt
							conquest(700, i(205637)),	-- Obsidian Gladiator's Plate Handguards
							conquest(875, i(205638)),	-- Obsidian Gladiator's Plate Helm
							conquest(875, i(205639)),	-- Obsidian Gladiator's Plate Helmet
							conquest(875, i(205640)),	-- Obsidian Gladiator's Plate Legguards
							conquest(700, i(205643)),	-- Obsidian Gladiator's Plate Pauldrons
							conquest(700, i(205642)),	-- Obsidian Gladiator's Plate Shoulders
							conquest(700, i(205635)),	-- Obsidian Gladiator's Plate Stompers
							conquest(525, i(205647)),	-- Obsidian Gladiator's Plate Vambraces
							conquest(700, i(205634)),	-- Obsidian Gladiator's Plate Warboots
							conquest(875, i(205641)),	-- Obsidian Gladiator's Plate Wargreaves
							conquest(525, i(205646)),	-- Obsidian Gladiator's Plate Wristguards
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(205703)),	-- Obsidian Gladiator's Band
						conquest(525, i(205702)),	-- Obsidian Gladiator's Ring
						conquest(525, i(205704)),	-- Obsidian Gladiator's Signet
					}),
					filter(NECK_F, {
						conquest(525, i(205707)),	-- Obsidian Gladiator's Amulet
						conquest(525, i(205705)),	-- Obsidian Gladiator's Necklace
						conquest(525, i(205706)),	-- Obsidian Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(205708)),	-- Obsidian Gladiator's Badge of Ferocity
						conquest(700, i(205710)),	-- Obsidian Gladiator's Emblem
						conquest(700, i(205709)),	-- Obsidian Gladiator's Insignia of Alacrity
						conquest(525, i(205711)),	-- Obsidian Gladiator's Medallion
						conquest(525, i(205712)),	-- Obsidian Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(900, i(205924)),	-- Obsidian Gladiator's Axe
						conquest(1800, i(205929)),	-- Obsidian Gladiator's Bow
						conquest(900, i(205928)),	-- Obsidian Gladiator's Claws
						conquest(900, i(205915)),	-- Obsidian Gladiator's Dagger
						conquest(1800, i(206671)),	-- Obsidian Gladiator's Halberd
						conquest(1350, i(205925)),	-- Obsidian Gladiator's Knife
						conquest(900, i(205926)),	-- Obsidian Gladiator's Mace
						conquest(1800, i(205927)),	-- Obsidian Gladiator's Polearm
						conquest(1800, i(205919)),	-- Obsidian Gladiator's Rifle
						conquest(450, i(205922)),	-- Obsidian Gladiator's Rod
						conquest(1350, i(205921)),	-- Obsidian Gladiator's Scepter
						conquest(450, i(205923)),	-- Obsidian Gladiator's Shield
						conquest(1800, i(205917)),	-- Obsidian Gladiator's Spear
						conquest(900, i(205914)),	-- Obsidian Gladiator's Splitter
						conquest(1800, i(205918)),	-- Obsidian Gladiator's Staff
						conquest(1350, i(205930)),	-- Obsidian Gladiator's Talons
						conquest(900, i(205916)),	-- Obsidian Gladiator's Warglaive
					}),
				}),
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }, ["bonusID"] = 7532 }, {
			n(CLASSES, {
				cl(DEATHKNIGHT, {
					i(205673),	-- Obsidian Gladiator's Cloak
					i(205674),	-- Obsidian Gladiator's Drape
					i(205675),	-- Obsidian Gladiator's Shawl
					i(205473),	-- Obsidian Gladiator's Plate Chestguard
					i(205474),	-- Obsidian Gladiator's Plate Chestplate
					i(205477),	-- Obsidian Gladiator's Plate Gauntlets
					i(205485),	-- Obsidian Gladiator's Plate Girdle
					i(205486),	-- Obsidian Gladiator's Plate Greatbelt
					i(205478),	-- Obsidian Gladiator's Plate Handguards
					i(205479),	-- Obsidian Gladiator's Plate Helm
					i(205480),	-- Obsidian Gladiator's Plate Helmet
					i(205481),	-- Obsidian Gladiator's Plate Legguards
					i(205484),	-- Obsidian Gladiator's Plate Pauldrons
					i(205483),	-- Obsidian Gladiator's Plate Shoulders
					i(205476),	-- Obsidian Gladiator's Plate Stompers
					i(205488),	-- Obsidian Gladiator's Plate Vambraces
					i(205475),	-- Obsidian Gladiator's Plate Warboots
					i(205482),	-- Obsidian Gladiator's Plate Wargreaves
					i(205487),	-- Obsidian Gladiator's Plate Wristguards
				}),
				cl(DEMONHUNTER, {
					i(205655),	-- Obsidian Gladiator's Cloak
					i(205656),	-- Obsidian Gladiator's Drape
					i(205533),	-- Obsidian Gladiator's Leather Belt
					i(205523),	-- Obsidian Gladiator's Leather Boots
					i(205529),	-- Obsidian Gladiator's Leather Breeches
					i(205525),	-- Obsidian Gladiator's Leather Gloves
					i(205526),	-- Obsidian Gladiator's Leather Grips
					i(205527),	-- Obsidian Gladiator's Leather Helm
					i(205522),	-- Obsidian Gladiator's Leather Jerkin
					i(205530),	-- Obsidian Gladiator's Leather Legwraps
					i(205528),	-- Obsidian Gladiator's Leather Mask
					i(205532),	-- Obsidian Gladiator's Leather Shoulderpads
					i(205531),	-- Obsidian Gladiator's Leather Spaulders
					i(205534),	-- Obsidian Gladiator's Leather Strap
					i(205524),	-- Obsidian Gladiator's Leather Treads
					i(205521),	-- Obsidian Gladiator's Leather Vest
					i(205536),	-- Obsidian Gladiator's Leather Wristguards
					i(205535),	-- Obsidian Gladiator's Leather Wristwraps
					i(205657),	-- Obsidian Gladiator's Shawl
				}),
				cl(DRUID, {
					i(205658),	-- Obsidian Gladiator's Cloak
					i(205659),	-- Obsidian Gladiator's Drape
					i(205549),	-- Obsidian Gladiator's Leather Belt
					i(205539),	-- Obsidian Gladiator's Leather Boots
					i(205545),	-- Obsidian Gladiator's Leather Breeches
					i(205541),	-- Obsidian Gladiator's Leather Gloves
					i(205542),	-- Obsidian Gladiator's Leather Grips
					i(205543),	-- Obsidian Gladiator's Leather Helm
					i(205538),	-- Obsidian Gladiator's Leather Jerkin
					i(205546),	-- Obsidian Gladiator's Leather Legwraps
					i(205544),	-- Obsidian Gladiator's Leather Mask
					i(205548),	-- Obsidian Gladiator's Leather Shoulderpads
					i(205547),	-- Obsidian Gladiator's Leather Spaulders
					i(205550),	-- Obsidian Gladiator's Leather Strap
					i(205540),	-- Obsidian Gladiator's Leather Treads
					i(205537),	-- Obsidian Gladiator's Leather Vest
					i(205552),	-- Obsidian Gladiator's Leather Wristguards
					i(205551),	-- Obsidian Gladiator's Leather Wristwraps
					i(205660),	-- Obsidian Gladiator's Shawl
				}),
				cl(EVOKER, {
					i(205407),	-- Obsidian Gladiator's Cloak
					i(205408),	-- Obsidian Gladiator's Drape
					i(205409),	-- Obsidian Gladiator's Shawl
					i(205403),	-- Obsidian Gladiator's Chain Belt
					i(205394),	-- Obsidian Gladiator's Chain Boots
					i(205406),	-- Obsidian Gladiator's Chain Bracers
					i(205400),	-- Obsidian Gladiator's Chain Breeches
					i(205398),	-- Obsidian Gladiator's Chain Faceguard
					i(205395),	-- Obsidian Gladiator's Chain Gauntlets
					i(205404),	-- Obsidian Gladiator's Chain Girdle
					i(205396),	-- Obsidian Gladiator's Chain Handguards
					i(205397),	-- Obsidian Gladiator's Chain Helm
					i(205399),	-- Obsidian Gladiator's Chain Leggings
					i(205401),	-- Obsidian Gladiator's Chain Monnion
					i(205393),	-- Obsidian Gladiator's Chain Sabatons
					i(205402),	-- Obsidian Gladiator's Chain Shoulderguard
					i(205392),	-- Obsidian Gladiator's Chain Tunic
					i(205391),	-- Obsidian Gladiator's Chain Vest
					i(205405),	-- Obsidian Gladiator's Chain Wristguards
				}),
				cl(HUNTER, {
					i(205597),	-- Obsidian Gladiator's Chain Belt
					i(205588),	-- Obsidian Gladiator's Chain Boots
					i(205600),	-- Obsidian Gladiator's Chain Bracers
					i(205594),	-- Obsidian Gladiator's Chain Breeches
					i(205592),	-- Obsidian Gladiator's Chain Faceguard
					i(205589),	-- Obsidian Gladiator's Chain Gauntlets
					i(205598),	-- Obsidian Gladiator's Chain Girdle
					i(205590),	-- Obsidian Gladiator's Chain Handguards
					i(205591),	-- Obsidian Gladiator's Chain Helm
					i(205593),	-- Obsidian Gladiator's Chain Leggings
					i(205595),	-- Obsidian Gladiator's Chain Monnion
					i(205587),	-- Obsidian Gladiator's Chain Sabatons
					i(205596),	-- Obsidian Gladiator's Chain Shoulderguard
					i(205586),	-- Obsidian Gladiator's Chain Tunic
					i(205585),	-- Obsidian Gladiator's Chain Vest
					i(205599),	-- Obsidian Gladiator's Chain Wristguards
					i(205667),	-- Obsidian Gladiator's Cloak
					i(205668),	-- Obsidian Gladiator's Drape
					i(205669),	-- Obsidian Gladiator's Shawl
				}),
				cl(MAGE, {
					i(205446),	-- Obsidian Gladiator's Cloak
					i(205447),	-- Obsidian Gladiator's Drape
					i(205448),	-- Obsidian Gladiator's Shawl
					i(205386),	-- Obsidian Gladiator's Silk Amice
					i(205390),	-- Obsidian Gladiator's Silk Armbands
					i(205388),	-- Obsidian Gladiator's Silk Belt
					i(205376),	-- Obsidian Gladiator's Silk Blouse
					i(205387),	-- Obsidian Gladiator's Silk Cord
					i(205379),	-- Obsidian Gladiator's Silk Gloves
					i(205382),	-- Obsidian Gladiator's Silk Guise
					i(205380),	-- Obsidian Gladiator's Silk Handwraps
					i(205381),	-- Obsidian Gladiator's Silk Hood
					i(205383),	-- Obsidian Gladiator's Silk Leggings
					i(205385),	-- Obsidian Gladiator's Silk Mantle
					i(205377),	-- Obsidian Gladiator's Silk Slippers
					i(205378),	-- Obsidian Gladiator's Silk Treads
					i(205384),	-- Obsidian Gladiator's Silk Trousers
					i(205375),	-- Obsidian Gladiator's Silk Tunic
					i(205389),	-- Obsidian Gladiator's Silk Wristwraps
				}),
				cl(MONK, {
					i(205661),	-- Obsidian Gladiator's Cloak
					i(205662),	-- Obsidian Gladiator's Drape
					i(205565),	-- Obsidian Gladiator's Leather Belt
					i(205555),	-- Obsidian Gladiator's Leather Boots
					i(205561),	-- Obsidian Gladiator's Leather Breeches
					i(205557),	-- Obsidian Gladiator's Leather Gloves
					i(205558),	-- Obsidian Gladiator's Leather Grips
					i(205559),	-- Obsidian Gladiator's Leather Helm
					i(205554),	-- Obsidian Gladiator's Leather Jerkin
					i(205562),	-- Obsidian Gladiator's Leather Legwraps
					i(205560),	-- Obsidian Gladiator's Leather Mask
					i(205564),	-- Obsidian Gladiator's Leather Shoulderpads
					i(205563),	-- Obsidian Gladiator's Leather Spaulders
					i(205566),	-- Obsidian Gladiator's Leather Strap
					i(205556),	-- Obsidian Gladiator's Leather Treads
					i(205553),	-- Obsidian Gladiator's Leather Vest
					i(205568),	-- Obsidian Gladiator's Leather Wristguards
					i(205567),	-- Obsidian Gladiator's Leather Wristwraps
					i(205663),	-- Obsidian Gladiator's Shawl
				}),
				cl(PALADIN, {
					i(205676),	-- Obsidian Gladiator's Cloak
					i(205677),	-- Obsidian Gladiator's Drape
					i(205616),	-- Obsidian Gladiator's Plate Plastron
					i(205617),	-- Obsidian Gladiator's Plate Chestplate
					i(205620),	-- Obsidian Gladiator's Plate Gauntlets
					i(205628),	-- Obsidian Gladiator's Plate Girdle
					i(205629),	-- Obsidian Gladiator's Plate Greatbelt
					i(205621),	-- Obsidian Gladiator's Plate Handguards
					i(205622),	-- Obsidian Gladiator's Plate Helm
					i(205623),	-- Obsidian Gladiator's Plate Helmet
					i(205624),	-- Obsidian Gladiator's Plate Legguards
					i(205627),	-- Obsidian Gladiator's Plate Pauldrons
					i(205626),	-- Obsidian Gladiator's Plate Shoulders
					i(205619),	-- Obsidian Gladiator's Plate Stompers
					i(205631),	-- Obsidian Gladiator's Plate Vambraces
					i(205618),	-- Obsidian Gladiator's Plate Warboots
					i(205625),	-- Obsidian Gladiator's Plate Tasses
					i(205630),	-- Obsidian Gladiator's Plate Wristguards
					i(205678),	-- Obsidian Gladiator's Shawl
				}),
				cl(PRIEST, {
					i(205649),	-- Obsidian Gladiator's Cloak
					i(205650),	-- Obsidian Gladiator's Drape
					i(205651),	-- Obsidian Gladiator's Shawl
					i(205500),	-- Obsidian Gladiator's Silk Amice
					i(205504),	-- Obsidian Gladiator's Silk Armbands
					i(205502),	-- Obsidian Gladiator's Silk Belt
					i(205490),	-- Obsidian Gladiator's Silk Blouse
					i(205501),	-- Obsidian Gladiator's Silk Cord
					i(205493),	-- Obsidian Gladiator's Silk Gloves
					i(205496),	-- Obsidian Gladiator's Silk Guise
					i(205494),	-- Obsidian Gladiator's Silk Handwraps
					i(205495),	-- Obsidian Gladiator's Silk Hood
					i(205497),	-- Obsidian Gladiator's Silk Leggings
					i(205499),	-- Obsidian Gladiator's Silk Mantle
					i(205491),	-- Obsidian Gladiator's Silk Slippers
					i(205492),	-- Obsidian Gladiator's Silk Treads
					i(205498),	-- Obsidian Gladiator's Silk Trousers
					i(205489),	-- Obsidian Gladiator's Silk Tunic
					i(205503),	-- Obsidian Gladiator's Silk Wristwraps
				}),
				cl(ROGUE, {
					i(205664),	-- Obsidian Gladiator's Cloak
					i(205665),	-- Obsidian Gladiator's Drape
					i(205581),	-- Obsidian Gladiator's Leather Belt
					i(205571),	-- Obsidian Gladiator's Leather Boots
					i(205577),	-- Obsidian Gladiator's Leather Breeches
					i(205573),	-- Obsidian Gladiator's Leather Gloves
					i(205574),	-- Obsidian Gladiator's Leather Grips
					i(205575),	-- Obsidian Gladiator's Leather Helm
					i(205570),	-- Obsidian Gladiator's Leather Jerkin
					i(205578),	-- Obsidian Gladiator's Leather Legwraps
					i(205576),	-- Obsidian Gladiator's Leather Mask
					i(205580),	-- Obsidian Gladiator's Leather Shoulderpads
					i(205579),	-- Obsidian Gladiator's Leather Spaulders
					i(205582),	-- Obsidian Gladiator's Leather Strap
					i(205572),	-- Obsidian Gladiator's Leather Treads
					i(205569),	-- Obsidian Gladiator's Leather Vest
					i(205584),	-- Obsidian Gladiator's Leather Wristguards
					i(205583),	-- Obsidian Gladiator's Leather Wristwraps
					i(205666),	-- Obsidian Gladiator's Shawl
				}),
				cl(SHAMAN, {
					i(205613),	-- Obsidian Gladiator's Chain Belt
					i(205604),	-- Obsidian Gladiator's Chain Boots
					i(205648),	-- Obsidian Gladiator's Chain Bracers
					i(205610),	-- Obsidian Gladiator's Chain Breeches
					i(205608),	-- Obsidian Gladiator's Chain Faceguard
					i(205605),	-- Obsidian Gladiator's Chain Gauntlets
					i(205614),	-- Obsidian Gladiator's Chain Girdle
					i(205606),	-- Obsidian Gladiator's Chain Handguards
					i(205607),	-- Obsidian Gladiator's Chain Helm
					i(205609),	-- Obsidian Gladiator's Chain Leggings
					i(205611),	-- Obsidian Gladiator's Chain Monnion
					i(205603),	-- Obsidian Gladiator's Chain Sabatons
					i(205612),	-- Obsidian Gladiator's Chain Shoulderguard
					i(205602),	-- Obsidian Gladiator's Chain Tunic
					i(205601),	-- Obsidian Gladiator's Chain Vest
					i(205615),	-- Obsidian Gladiator's Chain Wristguards
					i(205670),	-- Obsidian Gladiator's Cloak
					i(205671),	-- Obsidian Gladiator's Drape
					i(205672),	-- Obsidian Gladiator's Shawl
				}),
				cl(WARLOCK, {
					i(205652),	-- Obsidian Gladiator's Cloak
					i(205653),	-- Obsidian Gladiator's Drape
					i(205654),	-- Obsidian Gladiator's Shawl
					i(205516),	-- Obsidian Gladiator's Silk Amice
					i(205520),	-- Obsidian Gladiator's Silk Armbands
					i(205518),	-- Obsidian Gladiator's Silk Belt
					i(205517),	-- Obsidian Gladiator's Silk Cord
					i(205509),	-- Obsidian Gladiator's Silk Gloves
					i(205512),	-- Obsidian Gladiator's Silk Guise
					i(205510),	-- Obsidian Gladiator's Silk Handwraps
					i(205511),	-- Obsidian Gladiator's Silk Hood
					i(205513),	-- Obsidian Gladiator's Silk Leggings
					i(205515),	-- Obsidian Gladiator's Silk Mantle
					i(205505),	-- Obsidian Gladiator's Silk Robe
					i(205507),	-- Obsidian Gladiator's Silk Slippers
					i(205508),	-- Obsidian Gladiator's Silk Treads
					i(205514),	-- Obsidian Gladiator's Silk Trousers
					i(205506),	-- Obsidian Gladiator's Silk Vestments
					i(205519),	-- Obsidian Gladiator's Silk Wristwraps
				}),
				cl(WARRIOR, {
					i(205679),	-- Obsidian Gladiator's Cloak
					i(205680),	-- Obsidian Gladiator's Drape
					i(205632),	-- Obsidian Gladiator's Plate Chestguard
					i(205633),	-- Obsidian Gladiator's Plate Chestplate
					i(205636),	-- Obsidian Gladiator's Plate Gauntlets
					i(205644),	-- Obsidian Gladiator's Plate Girdle
					i(205645),	-- Obsidian Gladiator's Plate Greatbelt
					i(205637),	-- Obsidian Gladiator's Plate Handguards
					i(205638),	-- Obsidian Gladiator's Plate Helm
					i(205639),	-- Obsidian Gladiator's Plate Helmet
					i(205640),	-- Obsidian Gladiator's Plate Legguards
					i(205643),	-- Obsidian Gladiator's Plate Pauldrons
					i(205642),	-- Obsidian Gladiator's Plate Shoulders
					i(205635),	-- Obsidian Gladiator's Plate Stompers
					i(205647),	-- Obsidian Gladiator's Plate Vambraces
					i(205634),	-- Obsidian Gladiator's Plate Warboots
					i(205641),	-- Obsidian Gladiator's Plate Wargreaves
					i(205646),	-- Obsidian Gladiator's Plate Wristguards
					i(205681),	-- Obsidian Gladiator's Shawl
				}),
			}),
			n(199720, {	-- Glamora
				["coord"] = { 45.9, 38.7, VALDRAKKEN },
				["g"] = {
					honor(100, i(205362, {	-- Obsidian Gladiator's Tabard
						["sourceAchievements"] = { 17831 },	-- Elite: Dragonflight Season 2
						["timeline"] = { ADDED_10_1_5, REMOVED_10_2_0 },
						["bonusID"] = 0,
					})),
					moh(5, i(206044)),	-- Obsidian Gladiator's Axe
					moh(10, i(206154)),	-- Obsidian Gladiator's Bow
					moh(5, i(206153)),	-- Obsidian Gladiator's Claws
					moh(5, i(206137)),	-- Obsidian Gladiator's Dagger
					moh(5, i(206150)),	-- Obsidian Gladiator's Mace
					moh(10, i(206147)),	-- Obsidian Gladiator's Polearm
					moh(10, i(206149)),	-- Obsidian Gladiator's Rifle
					moh(5, i(206151)),	-- Obsidian Gladiator's Rod
					moh(5, i(206152)),	-- Obsidian Gladiator's Shield
					moh(10, i(206148)),	-- Obsidian Gladiator's Staff
					moh(5, i(206146)),	-- Obsidian Gladiator's Warglaive
				},
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			n(199720, {	-- Glamora
				["coord"] = { 45.9, 38.7, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["u"] = ELITE_PVP_REQUIREMENT,
				}, {
					iensemble(230983, {	-- Arsenal: Elite Obsidian Gladiator's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(230968, {	-- Ensemble: Elite Obsidian Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(230969, {	-- Ensemble: Elite Obsidian Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(230970, {	-- Ensemble: Elite Obsidian Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(230971, {	-- Ensemble: Elite Obsidian Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(230972, {	-- Ensemble: Elite Obsidian Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(230973, {	-- Ensemble: Elite Obsidian Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(230974, {	-- Ensemble: Elite Obsidian Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(230975, {	-- Ensemble: Elite Obsidian Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(230976, {	-- Ensemble: Elite Obsidian Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(230977, {	-- Ensemble: Elite Obsidian Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(230978, {	-- Ensemble: Elite Obsidian Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(230979, {	-- Ensemble: Elite Obsidian Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(230980, {	-- Ensemble: Elite Obsidian Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
		})),
		filter(RECIPES, {
			-- #if AFTER 10.2.0
			n(209377, {	-- Zaeka Steelbender
				["timeline"] = { ADDED_10_2_0 },
				["coord"] = { 44.8, 42.6, VALDRAKKEN },
				["g"] = sharedData({ ["cost"] = {{"i", MOH, 3}} }, {
			-- #endif
					i(204146),	-- Design: Obsidian Combatant's Jeweled Amulet (RECIPE!)
					i(204147),	-- Design: Obsidian Combatant's Jeweled Signet (RECIPE!)
					i(204157),	-- Pattern: Obsidian Combatant's Adamant Chainmail (RECIPE!)
					i(204156),	-- Pattern: Obsidian Combatant's Adamant Cowl (RECIPE!)
					i(204162),	-- Pattern: Obsidian Combatant's Adamant Cuffs (RECIPE!)
					i(204159),	-- Pattern: Obsidian Combatant's Adamant Epaulets (RECIPE!)
					i(204161),	-- Pattern: Obsidian Combatant's Adamant Gauntlets (RECIPE!)
					i(204163),	-- Pattern: Obsidian Combatant's Adamant Girdle (RECIPE!)
					i(204158),	-- Pattern: Obsidian Combatant's Adamant Leggings (RECIPE!)
					i(204160),	-- Pattern: Obsidian Combatant's Adamant Treads (RECIPE!)
					i(204155),	-- Pattern: Obsidian Combatant's Resilient Belt (RECIPE!)
					i(204152),	-- Pattern: Obsidian Combatant's Resilient Boots (RECIPE!)
					i(204149),	-- Pattern: Obsidian Combatant's Resilient Chestpiece (RECIPE!)
					i(204153),	-- Pattern: Obsidian Combatant's Resilient Gloves (RECIPE!)
					i(204148),	-- Pattern: Obsidian Combatant's Resilient Mask (RECIPE!)
					i(204151),	-- Pattern: Obsidian Combatant's Resilient Shoulderpads (RECIPE!)
					i(204150),	-- Pattern: Obsidian Combatant's Resilient Trousers (RECIPE!)
					i(204154),	-- Pattern: Obsidian Combatant's Resilient Wristwraps (RECIPE!)
					i(204129),	-- Pattern: Obsidian Combatant's Wildercloth Bands (RECIPE!)
					i(204130),	-- Pattern: Obsidian Combatant's Wildercloth Cloak (RECIPE!)
					i(204131),	-- Pattern: Obsidian Combatant's Wildercloth Gloves (RECIPE!)
					i(204132),	-- Pattern: Obsidian Combatant's Wildercloth Hood (RECIPE!)
					i(204133),	-- Pattern: Obsidian Combatant's Wildercloth Leggings (RECIPE!)
					i(204134),	-- Pattern: Obsidian Combatant's Wildercloth Sash (RECIPE!)
					i(204135),	-- Pattern: Obsidian Combatant's Wildercloth Shoulderpads (RECIPE!)
					i(204136),	-- Pattern: Obsidian Combatant's Wildercloth Treads (RECIPE!)
					i(204137),	-- Pattern: Obsidian Combatant's Wildercloth Tunic (RECIPE!)
					i(204144),	-- Plans: Obsidian Combatant's Draconium Armguards (RECIPE!)
					i(204139),	-- Plans: Obsidian Combatant's Draconium Breastplate (RECIPE!)
					i(204142),	-- Plans: Obsidian Combatant's Draconium Gauntlets (RECIPE!)
					i(204140),	-- Plans: Obsidian Combatant's Draconium Greaves (RECIPE!)
					i(204138),	-- Plans: Obsidian Combatant's Draconium Helm (RECIPE!)
					i(204141),	-- Plans: Obsidian Combatant's Draconium Pauldrons (RECIPE!)
					i(204143),	-- Plans: Obsidian Combatant's Draconium Sabatons (RECIPE!)
					i(204145),	-- Plans: Obsidian Combatant's Draconium Waistguard (RECIPE!)
					i(205282),	-- Schematic: Obsidian Combatant's Cloth Goggles (RECIPE!)
					i(205283),	-- Schematic: Obsidian Combatant's Leather Goggles (RECIPE!)
					i(205284),	-- Schematic: Obsidian Combatant's Mail Goggles (RECIPE!)
					i(205285),	-- Schematic: Obsidian Combatant's Plate Goggles (RECIPE!)
			-- #if AFTER 10.2.0
					i(204169),	-- Technique: Obsidian Combatant's Emblem (RECIPE!)
					i(204168),	-- Technique: Obsidian Combatant's Insignia of Alacrity (RECIPE!)
					i(204167),	-- Technique: Obsidian Combatant's Medallion (RECIPE!)
				}),
			}),
			-- #endif
			n(197553, {	-- Fieldmaster Emberath
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", 190450, 3}},	-- 3x Awakened Ire
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				}, {
					i(204169),	-- Technique: Obsidian Combatant's Emblem (RECIPE!)
					i(204168),	-- Technique: Obsidian Combatant's Insignia of Alacrity (RECIPE!)
					i(204167),	-- Technique: Obsidian Combatant's Medallion (RECIPE!)
				}),
			}),
		}),
	}),
}))));