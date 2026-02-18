-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {
	n(SEASON_ASTRAL, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
			ach(41048, {	-- Astral Weapons of Conquest
				i(232616, {	-- Astral Gladiator's Coin Pouch
					i(232600, {	-- Astral Gladiator's Weapon Token
						--[[ Might need another sym
						["sym"] = {
							{"select", "npcID", 219222 },	-- Lalandi <Conquest Quartermaster>
							{"pop"},
							{"where", "headerID", WEAPONS},
							{"pop"}
						},
						--]]
					}),
				}),
			}),
			ach(42042, {	-- Astral Combatant
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(42043, {	-- Astral Combatant
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(42036, {	-- Astral Gladiator: The War Within Season 3
				title(633),	-- Astral Gladiator <Name>
			}),
			ach(42039),	-- Astral Gladiator's Fel Bat
			ach(41028),	-- Combatant I: The War Within Season 3
			ach(41029),	-- Combatant II: The War Within Season 3
			ach(41030),	-- Challenger I: The War Within Season 3
			ach(41031),	-- Challenger II: The War Within Season 3
			ach(41026, {	-- Duelist: The War Within Season 3
				i(244234),	-- Astral Gladiator's Prestigious Cloak
			}),
			ach(41027, {	-- Elite: The War Within Season 3
				i(232908),	-- Astral Gladiator's Tabard
			}),
			ach(41049, {	-- Gladiator: The War Within Season 3
				i(232617),	-- Astral Gladiator's Fel Bat (MOUNT!)
			}),
			ach(41024),	-- Rival I: The War Within Season 3
			ach(41025, {	-- Rival II: The War Within Season 3
				ill(7641),	-- Arcane
			}),
			-- RBG
			ach(42035, {	-- Astral Marshal: The War Within Season 3
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(635),	-- Astral Marshal <Name>
				},
			}),
			ach(42034, {	-- Astral Warlord: The War Within Season 3
				["races"] = HORDE_ONLY,
				["groups"] = {
					title(632),	-- Astral Warlord <Name>
				},
			}),
			ach(42038, {	-- Hero of the Alliance: Astral
				["races"]= ALLIANCE_ONLY,
			}),
			ach(42037, {	-- Hero of the Horde: Astral
				["races"]= HORDE_ONLY,
			}),
			ach(42024, {	-- Strategist: The War Within Season 3
				i(242636),	-- Astral Legend's Pennant (TOY!)
				title(539, {	-- Strategist <Name>
					["collectible"] = false,
				}),
			}),
			-- Solo
			ach(42023, {	-- Legend: The War Within Season 3
				i(242636),	-- Astral Legend's Pennant (TOY!)
			}),
			ach(42044),	-- Battle Mender: The War Within Season 3
			ach(42033, {	-- Astral Legend: The War Within Season 3
				title(634),	-- Astral Legend <Name>
			}),
			-- Fashion
			ach(42800, { ["timeline"] = { ADDED_11_2_0_SEASONSTART } }),	-- Astral Attire
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
			i(243157, {	-- Vicious Void Creeper [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(243159, {	-- Vicious Void Creeper [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, {
			n(219213, {	-- Gilderann <War Mode Quartermaster>
				["coord"] = { 55.2, 76.8, DORNOGAL },
				["groups"] = sharedData({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
					-- #if AFTER MID
					moh(80, iensemble(251247)),	-- Arsenal: Astral Warmonger's Weapons
					moh(12, iensemble(251243)),	-- Ensemble: Astral Warmonger's Cloth Armor
					moh(12, iensemble(251244)),	-- Ensemble: Astral Warmonger's Leather Armor
					moh(12, iensemble(251245)),	-- Ensemble: Astral Warmonger's Mail Armor
					moh(12, iensemble(251246)),	-- Ensemble: Astral Warmonger's Plate Armor
					-- #endif
					filter(BACK_F, sharedDataSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
						bloody(525, i(230695)),	-- Astral Warmonger's Cape
						bloody(525, i(230697)),	-- Astral Warmonger's Cloak
						bloody(525, i(230698)),	-- Astral Warmonger's Drape
						bloody(525, i(230696)),	-- Astral Warmonger's Shawl
					})),
					filter(CLOTH, sharedDataSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
						bloody(525, i(230669)),	-- Astral Warmonger's Bindings
						bloody(700, i(230668)),	-- Astral Warmonger's Cord
						bloody(875, i(230663)),	-- Astral Warmonger's Garb
						bloody(700, i(230665)),	-- Astral Warmonger's Gloves
						bloody(700, i(230670)),	-- Astral Warmonger's Mantle
						bloody(875, i(230666)),	-- Astral Warmonger's Mask
						bloody(875, i(230667)),	-- Astral Warmonger's Pants
						bloody(700, i(230664)),	-- Astral Warmonger's Slippers
					})),
					filter(LEATHER, sharedDataSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
						bloody(700, i(230675)),	-- Astral Warmonger's Belt
						bloody(700, i(230671)),	-- Astral Warmonger's Boots
						bloody(875, i(230674)),	-- Astral Warmonger's Breeches
						bloody(700, i(230672)),	-- Astral Warmonger's Handwraps
						bloody(875, i(230673)),	-- Astral Warmonger's Hood
						bloody(875, i(230677)),	-- Astral Warmonger's Jerkin
						bloody(700, i(230678)),	-- Astral Warmonger's Shoulderguard
						bloody(525, i(230676)),	-- Astral Warmonger's Wraps
					})),
					filter(MAIL, sharedDataSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
						bloody(525, i(230694)),	-- Astral Warmonger's Armguards
						bloody(875, i(230687)),	-- Astral Warmonger's Chestguard
						bloody(700, i(230693)),	-- Astral Warmonger's Cinch
						bloody(700, i(230692)),	-- Astral Warmonger's Epaulets
						bloody(700, i(230688)),	-- Astral Warmonger's Greaves
						bloody(700, i(230689)),	-- Astral Warmonger's Grips
						bloody(875, i(230690)),	-- Astral Warmonger's Helm
						bloody(875, i(230691)),	-- Astral Warmonger's Leggings
					})),
					filter(PLATE, sharedDataSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
						bloody(525, i(230686)),	-- Astral Warmonger's Bracers
						bloody(700, i(230685)),	-- Astral Warmonger's Clasp
						bloody(875, i(230680)),	-- Astral Warmonger's Cuirass
						bloody(875, i(230679)),	-- Astral Warmonger's Faceplate
						bloody(700, i(230682)),	-- Astral Warmonger's Gauntlets
						bloody(875, i(230683)),	-- Astral Warmonger's Legguards
						bloody(700, i(230681)),	-- Astral Warmonger's Sabatons
						bloody(700, i(230684)),	-- Astral Warmonger's Spaulders
					})),
					n(WEAPONS, sharedDataSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
						bloody(525, i(230712)),	-- Astral Warmonger's Aegis
						bloody(875, i(230699)),	-- Astral Warmonger's Battleaxe
						bloody(1750, i(230706)),	-- Astral Warmonger's Battlestaff
						bloody(1750, i(230708)),	-- Astral Warmonger's Broadsword
						bloody(875, i(230701)),	-- Astral Warmonger's Carver
						bloody(1225, i(230709)),	-- Astral Warmonger's Club
						bloody(875, i(230717)),	-- Astral Warmonger's Crusher
						bloody(875, i(230711)),	-- Astral Warmonger's Cudgel
						bloody(1225, i(230719)),	-- Astral Warmonger's Dagger
						bloody(875, i(230720)),	-- Astral Warmonger's Dirk
						bloody(1750, i(230702)),	-- Astral Warmonger's Flameshot
						bloody(1750, i(230707)),	-- Astral Warmonger's Greatsword
						bloody(875, i(230710)),	-- Astral Warmonger's Hammer
						bloody(1225, i(230700)),	-- Astral Warmonger's Hatchet
						bloody(1750, i(230713)),	-- Astral Warmonger's Impaler
						bloody(525, i(230704)),	-- Astral Warmonger's Lantern
						bloody(875, i(230716)),	-- Astral Warmonger's Mace
						bloody(1750, i(230714)),	-- Astral Warmonger's Spear
						bloody(1750, i(230705)),	-- Astral Warmonger's Spire
						bloody(1225, i(230718)),	-- Astral Warmonger's Scepter
						bloody(875, i(230703)),	-- Astral Warmonger's Twinblade
						bloody(1225, i(230715)),	-- Astral Warmonger's Wand
					})),
				}),
			}),
		}),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH, ADDED_12_0_X_LAUNCH } }, {
			n(219217, {	-- Velerd <Honor Quartermaster>
				["coord"] = { 55.0, 76.5, DORNOGAL },
				["groups"] = sharedData({
					["timeline"] = { ADDED_12_0_X_LAUNCH },
				}, {
					moh(80, iensemble(232870)),	-- Arsenal: Astral Aspirant's Weapons
					moh(12, iensemble(232808)),	-- Ensemble: Astral Aspirant's Cloth Armor
					moh(12, iensemble(232809)),	-- Ensemble: Astral Aspirant's Leather Armor
					moh(12, iensemble(232810)),	-- Ensemble: Astral Aspirant's Mail Armor
					moh(12, iensemble(232811)),	-- Ensemble: Astral Aspirant's Plate Armor
				}),
			}),
			n(219217, {	-- Velerd <Honor Quartermaster>
				["coord"] = { 55.0, 76.5, DORNOGAL },
				["groups"] = bubbleDownFiltered({
					["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
				},FILTERFUNC_itemID,{
					filter(BACK_F, {
						honor(525, i(230365)),	-- Astral Aspirant's Cape
						honor(525, i(230364)),	-- Astral Aspirant's Cloak
						honor(525, i(230363)),	-- Astral Aspirant's Drape
						honor(525, i(230366)),	-- Astral Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(230345)),	-- Astral Aspirant's Silk Belt
						honor(525, i(230348)),	-- Astral Aspirant's Silk Bindings
						honor(700, i(230313)),	-- Astral Aspirant's Silk Cord
						honor(875, i(230333)),	-- Astral Aspirant's Silk Cover
						honor(700, i(230326)),	-- Astral Aspirant's Silk Footwraps
						honor(700, i(230299)),	-- Astral Aspirant's Silk Gloves
						honor(700, i(230331)),	-- Astral Aspirant's Silk Handwraps
						honor(875, i(230301)),	-- Astral Aspirant's Silk Hood
						honor(875, i(230305)),	-- Astral Aspirant's Silk Leggings
						honor(875, i(230337)),	-- Astral Aspirant's Silk Legwraps
						honor(700, i(230310)),	-- Astral Aspirant's Silk Mantle
						honor(875, i(230289)),	-- Astral Aspirant's Silk Robe
						honor(700, i(230342)),	-- Astral Aspirant's Silk Shawl
						honor(875, i(230321)),	-- Astral Aspirant's Silk Shirt
						honor(700, i(230294)),	-- Astral Aspirant's Silk Treads
						honor(525, i(230316)),	-- Astral Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(230358)),	-- Astral Aspirant's Band
						honor(525, i(230357)),	-- Astral Aspirant's Ring
						honor(525, i(230359)),	-- Astral Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(230351)),	-- Astral Aspirant's Leather Armguards
						honor(700, i(230315)),	-- Astral Aspirant's Leather Belt
						honor(700, i(230296)),	-- Astral Aspirant's Leather Boots
						honor(875, i(230307)),	-- Astral Aspirant's Leather Breeches
						honor(700, i(230347)),	-- Astral Aspirant's Leather Cord
						honor(700, i(230328)),	-- Astral Aspirant's Leather Footpads
						honor(700, i(230297)),	-- Astral Aspirant's Leather Gloves
						honor(700, i(230329)),	-- Astral Aspirant's Leather Grips
						honor(875, i(230303)),	-- Astral Aspirant's Leather Helm
						honor(875, i(230339)),	-- Astral Aspirant's Leather Leggings
						honor(700, i(230340)),	-- Astral Aspirant's Leather Mantle
						honor(875, i(230335)),	-- Astral Aspirant's Leather Mask
						honor(700, i(230308)),	-- Astral Aspirant's Leather Spaulders
						honor(875, i(230324)),	-- Astral Aspirant's Leather Tunic
						honor(875, i(230292)),	-- Astral Aspirant's Leather Vest
						honor(525, i(230319)),	-- Astral Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(875, i(230323)),	-- Astral Aspirant's Armored Tunic
						honor(875, i(230291)),	-- Astral Aspirant's Armored Vest
						honor(700, i(230314)),	-- Astral Aspirant's Chain Belt
						honor(525, i(230350)),	-- Astral Aspirant's Chain Bracer
						honor(700, i(230346)),	-- Astral Aspirant's Chain Clasp
						honor(700, i(230300)),	-- Astral Aspirant's Chain Gauntlets
						honor(700, i(230332)),	-- Astral Aspirant's Chain Handguards
						honor(875, i(230334)),	-- Astral Aspirant's Chain Headguard
						honor(875, i(230302)),	-- Astral Aspirant's Chain Helm
						honor(875, i(230306)),	-- Astral Aspirant's Chain Leggings
						honor(700, i(230295)),	-- Astral Aspirant's Chain Sabatons
						honor(700, i(230343)),	-- Astral Aspirant's Chain Shoulderguards
						honor(700, i(230311)),	-- Astral Aspirant's Chain Spaulders
						honor(700, i(230327)),	-- Astral Aspirant's Chain Stompers
						honor(875, i(230338)),	-- Astral Aspirant's Chain Wargreaves
						honor(525, i(230318)),	-- Astral Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(230361)),	-- Astral Aspirant's Choker
						honor(525, i(230360)),	-- Astral Aspirant's Necklace
						honor(525, i(230362)),	-- Astral Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(875, i(230290)),	-- Astral Aspirant's Chestplate
						honor(525, i(230349)),	-- Astral Aspirant's Plate Armguards
						honor(875, i(230322)),	-- Astral Aspirant's Plate Armor
						honor(525, i(230317)),	-- Astral Aspirant's Plate Cuffs
						honor(700, i(230298)),	-- Astral Aspirant's Plate Gauntlets
						honor(700, i(230312)),	-- Astral Aspirant's Plate Girdle
						honor(700, i(230344)),	-- Astral Aspirant's Plate Greatbelt
						honor(700, i(230330)),	-- Astral Aspirant's Plate Handguards
						honor(875, i(230320)),	-- Astral Aspirant's Plate Headguard
						honor(875, i(230288)),	-- Astral Aspirant's Plate Helm
						honor(875, i(230304)),	-- Astral Aspirant's Plate Legguards
						honor(700, i(230341)),	-- Astral Aspirant's Plate Pauldrons
						honor(700, i(230309)),	-- Astral Aspirant's Plate Shoulders
						honor(700, i(230325)),	-- Astral Aspirant's Plate Stompers
						honor(700, i(230293)),	-- Astral Aspirant's Plate Warboots
						honor(875, i(230336)),	-- Astral Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(230352)),	-- Astral Aspirant's Badge of Ferocity
						honor(700, i(230355)),	-- Astral Aspirant's Emblem
						honor(700, i(230354)),	-- Astral Aspirant's Insignia of Alacrity
						honor(525, i(230353)),	-- Astral Aspirant's Medallion
						honor(525, i(230356)),	-- Astral Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(230367)),	-- Astral Aspirant's Battleaxe
						honor(525, i(230373)),	-- Astral Aspirant's Censer
						honor(875, i(230381)),	-- Astral Aspirant's Chopper
						honor(875, i(230368)),	-- Astral Aspirant's Dagger
						honor(1750, i(230372)),	-- Astral Aspirant's Greatsword
						honor(1750, i(230378)),	-- Astral Aspirant's Halberd
						-- honor(875, i(229508)),	-- Astral Aspirant's Hammer // Bad itemid
						honor(1225, i(230380)),	-- Astral Aspirant's Knife
						honor(875, i(230369)),	-- Astral Aspirant's Mace
						honor(875, i(230379)),	-- Astral Aspirant's Morningstar
						honor(1750, i(230370)),	-- Astral Aspirant's Polearm
						honor(1750, i(230377)),	-- Astral Aspirant's Rifle
						honor(1225, i(230375)),	-- Astral Aspirant's Scepter
						honor(525, i(230376)),	-- Astral Aspirant's Shield
						honor(1750, i(230371)),	-- Astral Aspirant's Staff
						honor(1225, i(230382)),	-- Astral Aspirant's Wand
						honor(875, i(230374)),	-- Astral Aspirant's Warglaive
					}),
				}),
			})
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH, ADDED_12_0_X_LAUNCH } }, {
			n(219222, {	-- Lalandi <Conquest Quartermaster>
				["coord"] = { 55.1, 76.2, DORNOGAL },
				["ItemAppearanceModifierID"] = 159,
				["groups"] = sharedData({
					["cost"] = { { "i", MOH, 12 } },
					["timeline"] = { ADDED_12_0_X_LAUNCH },
				}, {
					iensemble(232871, {	-- Arsenal: Astral Gladiator's Weapons
						["cost"] = { { "i", MOH, 80 } },
					}),
					iensemble(232812, {	-- Ensemble: Astral Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(232813, {	-- Ensemble: Astral Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(232814, {	-- Ensemble: Astral Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(232815, {	-- Ensemble: Astral Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(232816, {	-- Ensemble: Astral Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(232817, {	-- Ensemble: Astral Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(232818, {	-- Ensemble: Astral Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(232819, {	-- Ensemble: Astral Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(232820, {	-- Ensemble: Astral Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(232821, {	-- Ensemble: Astral Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(232822, {	-- Ensemble: Astral Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(232823, {	-- Ensemble: Astral Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(232824, {	-- Ensemble: Astral Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
			n(219222, {	-- Lalandi <Conquest Quartermaster>
				["coord"] = { 55.1, 76.2, DORNOGAL },
				["ItemAppearanceModifierID"] = 159,
				["groups"] = bubbleDownFiltered({
					["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
				},FILTERFUNC_itemID,{
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(525, i(230591)),	-- Astral Gladiator's Cloak
							conquest(525, i(230592)),	-- Astral Gladiator's Drape
							conquest(525, i(230593)),	-- Astral Gladiator's Shawl
							conquest(875, i(230575)),	-- Astral Gladiator's Chestguard
							conquest(875, i(230576)),	-- Astral Gladiator's Chestplate
							conquest(700, i(230579)),	-- Astral Gladiator's Plate Gauntlets
							conquest(700, i(230587)),	-- Astral Gladiator's Plate Girdle
							conquest(700, i(230588)),	-- Astral Gladiator's Plate Greatbelt
							conquest(700, i(230580)),	-- Astral Gladiator's Plate Handguards
							conquest(875, i(230581)),	-- Astral Gladiator's Plate Helm
							conquest(875, i(230582)),	-- Astral Gladiator's Plate Helmet
							conquest(875, i(230583)),	-- Astral Gladiator's Plate Legguards
							conquest(700, i(230586)),	-- Astral Gladiator's Plate Pauldrons
							conquest(700, i(230585)),	-- Astral Gladiator's Plate Shoulders
							conquest(700, i(230578)),	-- Astral Gladiator's Plate Stompers
							conquest(525, i(230590)),	-- Astral Gladiator's Plate Vambraces
							conquest(700, i(230577)),	-- Astral Gladiator's Plate Warboots
							conquest(875, i(230584)),	-- Astral Gladiator's Plate Wargreaves
							conquest(525, i(230589)),	-- Astral Gladiator's Plate Wristguards
						}),
						cl(DEMONHUNTER, {
							conquest(525, i(230476)),	-- Astral Gladiator's Cloak
							conquest(525, i(230477)),	-- Astral Gladiator's Drape
							conquest(525, i(230478)),	-- Astral Gladiator's Shawl
							conquest(700, i(230472)),	-- Astral Gladiator's Leather Belt
							conquest(875, i(230468)),	-- Astral Gladiator's Leather Breeches
							conquest(700, i(230462)),	-- Astral Gladiator's Leather Boots
							conquest(700, i(230464)),	-- Astral Gladiator's Leather Gloves
							conquest(700, i(230465)),	-- Astral Gladiator's Leather Grips
							conquest(875, i(230466)),	-- Astral Gladiator's Leather Helm
							conquest(875, i(230461)),	-- Astral Gladiator's Leather Jerkin
							conquest(875, i(230469)),	-- Astral Gladiator's Leather Legwraps
							conquest(875, i(230467)),	-- Astral Gladiator's Leather Mask
							conquest(700, i(230471)),	-- Astral Gladiator's Leather Shoulderpads
							conquest(700, i(230470)),	-- Astral Gladiator's Leather Spaulders
							conquest(700, i(230473)),	-- Astral Gladiator's Leather Strap
							conquest(700, i(230463)),	-- Astral Gladiator's Leather Treads
							conquest(875, i(230460)),	-- Astral Gladiator's Leather Vest
							conquest(525, i(230475)),	-- Astral Gladiator's Leather Wristguards
							conquest(525, i(230474)),	-- Astral Gladiator's Leather Wristwraps
						}),
						cl(DRUID, {
							conquest(525, i(230457)),	-- Astral Gladiator's Cloak
							conquest(525, i(230458)),	-- Astral Gladiator's Drape
							conquest(525, i(230459)),	-- Astral Gladiator's Shawl
							conquest(700, i(230453)),	-- Astral Gladiator's Leather Belt
							conquest(700, i(230443)),	-- Astral Gladiator's Leather Boots
							conquest(875, i(230449)),	-- Astral Gladiator's Leather Breeches
							conquest(700, i(230445)),	-- Astral Gladiator's Leather Gloves
							conquest(700, i(230446)),	-- Astral Gladiator's Leather Grips
							conquest(875, i(230447)),	-- Astral Gladiator's Leather Helm
							conquest(875, i(230450)),	-- Astral Gladiator's Leather Legwraps
							conquest(875, i(230448)),	-- Astral Gladiator's Leather Mask
							conquest(700, i(230452)),	-- Astral Gladiator's Leather Shoulderpads
							conquest(700, i(230451)),	-- Astral Gladiator's Leather Spaulders
							conquest(700, i(230454)),	-- Astral Gladiator's Leather Strap
							conquest(700, i(230444)),	-- Astral Gladiator's Leather Treads
							conquest(875, i(230441)),	-- Astral Gladiator's Leather Vest
							conquest(875, i(230442)),	-- Astral Gladiator's Leather Vestments
							conquest(525, i(230455)),	-- Astral Gladiator's Leather Wristwraps
							conquest(525, i(230456)),	-- Astral Gladiator's Leather Wristguards
						}),
						cl(EVOKER, {
							conquest(525, i(230533)),	-- Astral Gladiator's Cloak
							conquest(525, i(230534)),	-- Astral Gladiator's Drape
							conquest(525, i(230535)),	-- Astral Gladiator's Shawl
							conquest(875, i(230517)),	-- Astral Gladiator's Armored Scales
							conquest(875, i(230518)),	-- Astral Gladiator's Scaleguard
							conquest(700, i(230529)),	-- Astral Gladiator's Chain Belt
							conquest(700, i(230520)),	-- Astral Gladiator's Chain Boots
							conquest(525, i(230532)),	-- Astral Gladiator's Chain Bracers
							conquest(875, i(230526)),	-- Astral Gladiator's Chain Breeches
							conquest(875, i(230524)),	-- Astral Gladiator's Chain Faceguard
							conquest(700, i(230521)),	-- Astral Gladiator's Chain Gauntlets
							conquest(700, i(230530)),	-- Astral Gladiator's Chain Girdle
							conquest(700, i(230522)),	-- Astral Gladiator's Chain Handguards
							conquest(875, i(230523)),	-- Astral Gladiator's Chain Helm
							conquest(875, i(230525)),	-- Astral Gladiator's Chain Leggings
							conquest(700, i(230527)),	-- Astral Gladiator's Chain Monnion
							conquest(700, i(230519)),	-- Astral Gladiator's Chain Sabatons
							conquest(700, i(230528)),	-- Astral Gladiator's Chain Shoulderguard
							conquest(525, i(230531)),	-- Astral Gladiator's Chain Wristguards
						}),
						cl(HUNTER, {
							conquest(525, i(230553)),	-- Astral Gladiator's Cloak
							conquest(525, i(230554)),	-- Astral Gladiator's Drape
							conquest(525, i(230555)),	-- Astral Gladiator's Shawl
							conquest(700, i(230548)),	-- Astral Gladiator's Chain Belt
							conquest(700, i(230539)),	-- Astral Gladiator's Chain Boots
							conquest(525, i(230552)),	-- Astral Gladiator's Chain Bracers
							conquest(875, i(230545)),	-- Astral Gladiator's Chain Breeches
							conquest(875, i(230543)),	-- Astral Gladiator's Chain Faceguard
							conquest(700, i(230540)),	-- Astral Gladiator's Chain Gauntlets
							conquest(700, i(230550)),	-- Astral Gladiator's Chain Girdle
							conquest(700, i(230541)),	-- Astral Gladiator's Chain Handguards
							conquest(875, i(230542)),	-- Astral Gladiator's Chain Helm
							conquest(875, i(230544)),	-- Astral Gladiator's Chain Leggings
							conquest(700, i(230546)),	-- Astral Gladiator's Chain Monnion
							conquest(700, i(230538)),	-- Astral Gladiator's Chain Sabatons
							conquest(700, i(230547)),	-- Astral Gladiator's Chain Shoulderguard
							conquest(875, i(230537)),	-- Astral Gladiator's Chain Tunic
							conquest(875, i(230536)),	-- Astral Gladiator's Chain Vest
							conquest(525, i(230551)),	-- Astral Gladiator's Chain Wristguards
						}),
						cl(MAGE, {
							conquest(525, i(230399)),	-- Astral Gladiator's Cloak
							conquest(525, i(230400)),	-- Astral Gladiator's Drape
							conquest(525, i(230401)),	-- Astral Gladiator's Shawl
							conquest(700, i(230394)),	-- Astral Gladiator's Silk Amice
							conquest(525, i(230398)),	-- Astral Gladiator's Silk Armbands
							conquest(700, i(230396)),	-- Astral Gladiator's Silk Belt
							conquest(875, i(230390)),	-- Astral Gladiator's Silk Cap
							conquest(700, i(230395)),	-- Astral Gladiator's Silk Cord
							conquest(700, i(230387)),	-- Astral Gladiator's Silk Gloves
							conquest(875, i(230384)),	-- Astral Gladiator's Silk Gown
							conquest(700, i(230388)),	-- Astral Gladiator's Silk Handwraps
							conquest(875, i(230389)),	-- Astral Gladiator's Silk Hat
							conquest(875, i(230391)),	-- Astral Gladiator's Silk Leggings
							conquest(700, i(230393)),	-- Astral Gladiator's Silk Mantle
							conquest(875, i(230383)),	-- Astral Gladiator's Silk Robe
							conquest(700, i(230385)),	-- Astral Gladiator's Silk Slippers
							conquest(700, i(230386)),	-- Astral Gladiator's Silk Treads
							conquest(875, i(230392)),	-- Astral Gladiator's Silk Trousers
							conquest(525, i(230397)),	-- Astral Gladiator's Silk Wristwraps
						}),
						cl(MONK, {
							conquest(525, i(230495)),	-- Astral Gladiator's Cloak
							conquest(525, i(230496)),	-- Astral Gladiator's Drape
							conquest(525, i(230497)),	-- Astral Gladiator's Shawl
							conquest(700, i(230491)),	-- Astral Gladiator's Leather Belt
							conquest(700, i(230481)),	-- Astral Gladiator's Leather Boots
							conquest(875, i(230487)),	-- Astral Gladiator's Leather Breeches
							conquest(700, i(230483)),	-- Astral Gladiator's Leather Gloves
							conquest(700, i(230484)),	-- Astral Gladiator's Leather Grips
							conquest(875, i(230485)),	-- Astral Gladiator's Leather Helm
							conquest(875, i(230480)),	-- Astral Gladiator's Leather Jerkin
							conquest(875, i(230488)),	-- Astral Gladiator's Leather Legwraps
							conquest(875, i(230486)),	-- Astral Gladiator's Leather Mask
							conquest(700, i(230490)),	-- Astral Gladiator's Leather Shoulderpads
							conquest(700, i(230489)),	-- Astral Gladiator's Leather Spaulders
							conquest(700, i(230492)),	-- Astral Gladiator's Leather Strap
							conquest(700, i(230482)),	-- Astral Gladiator's Leather Treads
							conquest(875, i(230479)),	-- Astral Gladiator's Leather Vest
							conquest(525, i(230494)),	-- Astral Gladiator's Leather Wristguards
							conquest(525, i(230493)),	-- Astral Gladiator's Leather Wristwraps
						}),
						cl(PALADIN, {
							conquest(525, i(230610)),	-- Astral Gladiator's Cloak
							conquest(525, i(230611)),	-- Astral Gladiator's Drape
							conquest(525, i(230612)),	-- Astral Gladiator's Shawl
							conquest(875, i(230594)),	-- Astral Gladiator's Chestguard
							conquest(875, i(230595)),	-- Astral Gladiator's Chestplate
							conquest(700, i(230598)),	-- Astral Gladiator's Plate Gauntlets
							conquest(700, i(230606)),	-- Astral Gladiator's Plate Girdle
							conquest(700, i(230607)),	-- Astral Gladiator's Plate Greatbelt
							conquest(700, i(230599)),	-- Astral Gladiator's Plate Handguards
							conquest(875, i(230600)),	-- Astral Gladiator's Plate Helm
							conquest(875, i(230601)),	-- Astral Gladiator's Plate Helmet
							conquest(875, i(230602)),	-- Astral Gladiator's Plate Legguards
							conquest(700, i(230604)),	-- Astral Gladiator's Plate Shoulders
							conquest(700, i(230605)),	-- Astral Gladiator's Plate Pauldrons
							conquest(700, i(230597)),	-- Astral Gladiator's Plate Stompers
							conquest(875, i(230603)),	-- Astral Gladiator's Plate Tasses
							conquest(525, i(230609)),	-- Astral Gladiator's Plate Vambraces
							conquest(700, i(230596)),	-- Astral Gladiator's Plate Warboots
							conquest(525, i(230608)),	-- Astral Gladiator's Plate Wristguards
						}),
						cl(PRIEST, {
							conquest(525, i(230418)),	-- Astral Gladiator's Cloak
							conquest(525, i(230419)),	-- Astral Gladiator's Drape
							conquest(525, i(230420)),	-- Astral Gladiator's Shawl
							conquest(700, i(230413)),	-- Astral Gladiator's Silk Amice
							conquest(525, i(230417)),	-- Astral Gladiator's Silk Armbands
							conquest(700, i(230415)),	-- Astral Gladiator's Silk Belt
							conquest(700, i(230414)),	-- Astral Gladiator's Silk Cord
							conquest(700, i(230406)),	-- Astral Gladiator's Silk Gloves
							conquest(875, i(230409)),	-- Astral Gladiator's Silk Guise
							conquest(700, i(230407)),	-- Astral Gladiator's Silk Handwraps
							conquest(875, i(230408)),	-- Astral Gladiator's Silk Hood
							conquest(875, i(230410)),	-- Astral Gladiator's Silk Leggings
							conquest(700, i(230412)),	-- Astral Gladiator's Silk Mantle
							conquest(875, i(230402)),	-- Astral Gladiator's Silk Robes
							conquest(700, i(230404)),	-- Astral Gladiator's Silk Slippers
							conquest(700, i(230405)),	-- Astral Gladiator's Silk Treads
							conquest(875, i(230411)),	-- Astral Gladiator's Silk Trousers
							conquest(875, i(230403)),	-- Astral Gladiator's Silk Vestments
							conquest(525, i(230416)),	-- Astral Gladiator's Silk Wristwraps
						}),
						cl(ROGUE, {
							conquest(525, i(230514)),	-- Astral Gladiator's Cloak
							conquest(525, i(230515)),	-- Astral Gladiator's Drape
							conquest(525, i(230516)),	-- Astral Gladiator's Shawl
							conquest(700, i(230510)),	-- Astral Gladiator's Leather Belt
							conquest(700, i(230500)),	-- Astral Gladiator's Leather Boots
							conquest(875, i(230506)),	-- Astral Gladiator's Leather Breeches
							conquest(700, i(230502)),	-- Astral Gladiator's Leather Gloves
							conquest(700, i(230503)),	-- Astral Gladiator's Leather Grips
							conquest(875, i(230504)),	-- Astral Gladiator's Leather Helm
							conquest(875, i(230499)),	-- Astral Gladiator's Leather Jerkin
							conquest(875, i(230507)),	-- Astral Gladiator's Leather Legwraps
							conquest(875, i(230505)),	-- Astral Gladiator's Leather Mask
							conquest(700, i(230509)),	-- Astral Gladiator's Leather Shoulderpads
							conquest(700, i(230508)),	-- Astral Gladiator's Leather Spaulders
							conquest(700, i(230511)),	-- Astral Gladiator's Leather Strap
							conquest(700, i(230501)),	-- Astral Gladiator's Leather Treads
							conquest(875, i(230498)),	-- Astral Gladiator's Leather Vest
							conquest(525, i(230513)),	-- Astral Gladiator's Leather Wristguards
							conquest(525, i(230512)),	-- Astral Gladiator's Leather Wristwraps
						}),
						cl(SHAMAN, {
							conquest(525, i(230572)),	-- Astral Gladiator's Cloak
							conquest(525, i(230573)),	-- Astral Gladiator's Drape
							conquest(525, i(230574)),	-- Astral Gladiator's Shawl
							conquest(700, i(230568)),	-- Astral Gladiator's Chain Belt
							conquest(700, i(230559)),	-- Astral Gladiator's Chain Boots
							conquest(525, i(230571)),	-- Astral Gladiator's Chain Bracers
							conquest(875, i(230565)),	-- Astral Gladiator's Chain Breeches
							conquest(875, i(230563)),	-- Astral Gladiator's Chain Faceguard
							conquest(700, i(230560)),	-- Astral Gladiator's Chain Gauntlets
							conquest(700, i(230569)),	-- Astral Gladiator's Chain Girdle
							conquest(700, i(230561)),	-- Astral Gladiator's Chain Handguards
							conquest(875, i(230562)),	-- Astral Gladiator's Chain Helm
							conquest(875, i(230564)),	-- Astral Gladiator's Chain Leggings
							conquest(700, i(230566)),	-- Astral Gladiator's Chain Monnion
							conquest(700, i(230558)),	-- Astral Gladiator's Chain Sabatons
							conquest(700, i(230567)),	-- Astral Gladiator's Chain Shoulderguard
							conquest(875, i(230557)),	-- Astral Gladiator's Chain Tunic
							conquest(875, i(230556)),	-- Astral Gladiator's Chain Vest
							conquest(525, i(230570)),	-- Astral Gladiator's Chain Wristguards
						}),
						cl(WARLOCK, {
							conquest(525, i(230438)),	-- Astral Gladiator's Cloak
							conquest(525, i(230439)),	-- Astral Gladiator's Drape
							conquest(525, i(230440)),	-- Astral Gladiator's Shawl
							conquest(700, i(230433)),	-- Astral Gladiator's Silk Amice
							conquest(525, i(230437)),	-- Astral Gladiator's Silk Armbands
							conquest(700, i(230435)),	-- Astral Gladiator's Silk Belt
							conquest(700, i(230434)),	-- Astral Gladiator's Silk Cord
							conquest(700, i(230426)),	-- Astral Gladiator's Silk Gloves
							conquest(875, i(230429)),	-- Astral Gladiator's Silk Guise
							conquest(700, i(230427)),	-- Astral Gladiator's Silk Handwraps
							conquest(875, i(230428)),	-- Astral Gladiator's Silk Hood
							conquest(875, i(230430)),	-- Astral Gladiator's Silk Leggings
							conquest(700, i(230432)),	-- Astral Gladiator's Silk Mantle
							conquest(875, i(230421)),	-- Astral Gladiator's Silk Raiment
							conquest(700, i(230423)),	-- Astral Gladiator's Silk Slippers
							conquest(700, i(230424)),	-- Astral Gladiator's Silk Treads
							conquest(875, i(230431)),	-- Astral Gladiator's Silk Trousers
							conquest(875, i(230422)),	-- Astral Gladiator's Silk Vestments
							conquest(525, i(230436)),	-- Astral Gladiator's Silk Wristwraps
						}),
						cl(WARRIOR, {
							conquest(525, i(230629)),	-- Astral Gladiator's Cloak
							conquest(525, i(230630)),	-- Astral Gladiator's Drape
							conquest(525, i(230631)),	-- Astral Gladiator's Shawl
							conquest(875, i(230613)),	-- Astral Gladiator's Chestguard
							conquest(875, i(230614)),	-- Astral Gladiator's Chestplate
							conquest(700, i(230617)),	-- Astral Gladiator's Plate Gauntlets
							conquest(700, i(230625)),	-- Astral Gladiator's Plate Girdle
							conquest(700, i(230626)),	-- Astral Gladiator's Plate Greatbelt
							conquest(700, i(230618)),	-- Astral Gladiator's Plate Handguards
							conquest(875, i(230619)),	-- Astral Gladiator's Plate Helm
							conquest(875, i(230620)),	-- Astral Gladiator's Plate Helmet
							conquest(875, i(230621)),	-- Astral Gladiator's Plate Legguards
							conquest(700, i(230624)),	-- Astral Gladiator's Plate Pauldrons
							conquest(700, i(230623)),	-- Astral Gladiator's Plate Shoulders
							conquest(700, i(230616)),	-- Astral Gladiator's Plate Stompers
							conquest(525, i(230628)),	-- Astral Gladiator's Plate Vambraces
							conquest(700, i(230615)),	-- Astral Gladiator's Plate Warboots
							conquest(875, i(230622)),	-- Astral Gladiator's Plate Wargreaves
							conquest(525, i(230627)),	-- Astral Gladiator's Plate Wristguards
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(230633)),	-- Astral Gladiator's Band
						conquest(525, i(230632)),	-- Astral Gladiator's Ring
						conquest(525, i(230634)),	-- Astral Gladiator's Signet
					}),
					filter(MISC, {
						i(254308, {	-- Conqueror's Astral Lacquer
							["cost"] = { { "c", CONQUEST, 700 } },
							["timeline"] = { ADDED_11_2_5, REMOVED_12_0_X_LAUNCH },
						}),
						i(254307, {	-- Conqueror's Astral Varnish
							["cost"] = { { "c", CONQUEST, 875 } },
							["timeline"] = { ADDED_11_2_5, REMOVED_12_0_X_LAUNCH },
						}),
					}),
					filter(NECK_F, {
						conquest(525, i(230637)),	-- Astral Gladiator's Amulet
						conquest(525, i(230635)),	-- Astral Gladiator's Necklace
						conquest(525, i(230636)),	-- Astral Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(230638)),	-- Astral Gladiator's Badge of Ferocity
						conquest(700, i(230640)),	-- Astral Gladiator's Emblem
						conquest(700, i(230639)),	-- Astral Gladiator's Insignia of Alacrity
						conquest(525, i(230641)),	-- Astral Gladiator's Medallion
						conquest(525, i(230642)),	-- Astral Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(1750, i(230658)),	-- Astral Gladiator's Greatsword
						conquest(1750, i(230648)),	-- Astral Gladiator's Bow
						conquest(1750, i(230655)),	-- Astral Gladiator's Crossbow
						conquest(1750, i(230659)),	-- Astral Gladiator's Pulverizer
						conquest(1750, i(230646)),	-- Astral Gladiator's Spear
						conquest(1750, i(230662)),	-- Astral Gladiator's Battlestaff
						conquest(1750, i(230647)),	-- Astral Gladiator's Staff
						conquest(1750, i(230656)),	-- Astral Gladiator's Greatstaff
						conquest(875, i(230643)),	-- Astral Gladiator's Splitter
						conquest(875, i(230652)),	-- Astral Gladiator's Axe
						conquest(875, i(230644)),	-- Astral Gladiator's Dagger
						conquest(1225, i(230653)),	-- Astral Gladiator's Cinquedea
						conquest(875, i(230654)),	-- Astral Gladiator's Claws
						conquest(1225, i(248341)),	-- Astral Gladiator's Mace
						conquest(1225, i(230649)),	-- Astral Gladiator's Scepter
						conquest(875, i(230661)),	-- Astral Gladiator's Skewer
						conquest(875, i(230660)),	-- Astral Gladiator's Sword
						conquest(875, i(230645)),	-- Astral Gladiator's Warglaive
						conquest(525, i(248340)),	-- Astral Gladiator's Focus
						conquest(525, i(230650)),	-- Astral Gladiator's Censer
						conquest(525, i(230651)),	-- Astral Gladiator's Shield
						conquest(525, i(230657)),	-- Astral Gladiator's Bulwark
					}),
					i(230722, {	-- Astral Equipment Chest
						["timeline"] = { ADDED_11_2_5, REMOVED_12_0_X_LAUNCH },
					}),
				}),
			}),
			o(456208, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {	-- The Catalyst
				["coord"] = { 50.0, 54.2, DORNOGAL },
				["modelScale"] = 4,
				["catalystID"] = 11,	-- ItemBonus.Value_0 TWW:S3
				["groups"] = bubbleDown({ ["modID"] = 14 }, {
					cl(DEATHKNIGHT, {
						i(237623),	-- Hollow Sentinel's Wingdrape
						i(237624),	-- Hollow Sentinel's Stonecuffs
						i(237625),	-- Hollow Sentinel's Greatbelt
						i(237626),	-- Hollow Senintel's Perches
						i(237627),	-- Hollow Sentinel's Stonekilt
						i(237628),	-- Hollow Sentinel's Stonemask
						i(237629),	-- Hollow Sentinel's Gauntlets
						i(237630),	-- Hollow Sentinel's Greatboots
						i(237631),	-- Hollow Sentinel's Breastplate
					}),
					cl(DEMONHUNTER, {
						i(237686),	-- Charhound's Vicious Felcover
						i(237687),	-- Charhound's Vicious Restraints
						i(237688),	-- Charhound's Vicious Huntbelt
						i(237689),	-- Charhound's Vicious Hornguards
						i(237690),	-- Charhound's Vicious Hidecoat
						i(237691),	-- Charhound's Vicious Scalp
						i(237692),	-- Charhound's Vicious Felclaws
						i(237693),	-- Charhound's Vicious Flametabi
						i(237694),	-- Charhound's Vicious Bindings
					}),
					cl(DRUID, {
						i(237677),	-- Plumage of the Mother Eagle
						i(237678),	-- Bands of the Mother Eagle
						i(237679),	-- Dreamsash of the Mother Eagle
						i(237680),	-- Ritual Pauldrons of the Mother Eagle
						i(237681),	-- Breeches of the Mother Eagle
						i(237682),	-- Skymane of the Mother Eagle
						i(237683),	-- Wings of the Mother Eagle
						i(237684),	-- Feathered Boots of the Mother Eagle
						i(237685),	-- Vest of the Mother Eagle
					}),
					cl(EVOKER, {
						i(237650),	-- Spellweaver's Immaculate Runecloak
						i(237651),	-- Spellweaver's Immaculate Cuffs
						i(237652),	-- Spellweaver's Immaculate Crystal Cord
						i(237653),	-- Spellweaver's Immaculate Pauldrons
						i(237654),	-- Spellweaver's Immaculate Runeslacks
						i(237655),	-- Spellweaver's Immaculate Focus
						i(237656),	-- Spellweaver's Immaculate Scaleguards
						i(237657),	-- Spellweaver's Immaculate Talons
						i(237658),	-- Spellweaver's Immaculate Crestward
					}),
					cl(HUNTER, {
						i(237641),	-- Midnight Herald's Shroud
						i(237642),	-- Midnight Herald's Wristguards
						i(237643),	-- Midnight Herald's Clasp
						i(237644),	-- Midnight Herald's Shadowguards
						i(237645),	-- Midnight Herald's Petticoat
						i(237646),	-- Midnight Herald's Cowl
						i(237647),	-- Midnight Herald's Gloves
						i(237648),	-- Midnight Herald's Jackboots
						i(237649),	-- Midnight Herald's Hauberk
					}),
					cl(MAGE, {
						i(237713),	-- Augur's Ephemeral Brilliance
						i(237714),	-- Augur's Ephemeral Bindings
						i(237715),	-- Augur's Ephemeral Quillsash
						i(237716),	-- Augur's Ephemeral Orbs of Power
						i(237717),	-- Augur's Ephemeral Trousers
						i(237718),	-- Augur's Ephemeral Wide-Brim
						i(237719),	-- Augur's Ephemeral Mitts
						i(237720),	-- Augur's Ephemeral Slippers
						i(237721),	-- Augur's Ephemeral Habiliments
					}),
					cl(MONK, {
						i(237668),	-- Breeze of Fallen Storms
						i(237669),	-- Demigaunts of Fallen Storms
						i(237670),	-- Thunderbund of Fallen Storms
						i(237671),	-- Glyphs of Fallen Storms
						i(237672),	-- Legwraps of Fallen Storms
						i(237673),	-- Half-Mask of Fallen Storms
						i(237674),	-- Grasp of Fallen Storms
						i(237675),	-- Footpads of Fallen Storms
						i(237676),	-- Gi of Fallen Storms
					}),
					cl(PALADIN, {
						i(237614),	-- Gilded Cloak of the Lucent Battalion
						i(237615),	-- Vambraces of the Lucent Battalion
						i(237616),	-- Seal of the Lucent Battalion
						i(237617),	-- Chargers of the Lucent Battalion
						i(237618),	-- Cuisses of the Lucent Battalion
						i(237619),	-- Lightmane of the Lucent Battalion
						i(237620),	-- Protectors of the Lucent Battalion
						i(237621),	-- Stompers of the Lucent Battalion
						i(237622),	-- Cuirass of the Lucent Battalion
					}),
					cl(PRIEST, {
						i(237704),	-- Dying Star's Memory
						i(237705),	-- Dying Star's Bangles
						i(237706),	-- Dying Star's Waistlight
						i(237707),	-- Dying Star's Pyrelights
						i(237708),	-- Dying Star's Leggings
						i(237709),	-- Dying Star's Veil
						i(237710),	-- Dying Star's Caress
						i(237711),	-- Dying Star's Soles
						i(237712),	-- Dying Star's Cassock
					}),
					cl(ROGUE, {
						i(237659),	-- Cape of the Sudden Eclipse
						i(237660),	-- Armbands of the Sudden Eclipse
						i(237661),	-- Strap of the Sudden Eclipse
						i(237662),	-- Smokemantle of the Sudden Eclipse
						i(237663),	-- Pants of the Sudden Eclipse
						i(237664),	-- Hood of the Sudden Eclipse
						i(237665),	-- Deathgrips of the Sudden Eclipse
						i(237666),	-- Bladed Boots of the Sudden Eclipse
						i(237667),	-- Tactical Vest of the Sudden Eclipse
					}),
					cl(SHAMAN, {
						i(237632),	-- Shawl of Channeled Fury
						i(237633),	-- Bracers of Channeled Fury
						i(237634),	-- Fauld of Channeled Fury
						i(237635),	-- Fangs of Channeled Fury
						i(237636),	-- Tassets of Channeled Fury
						i(237637),	-- Aspect of Channeled Fury
						i(237638),	-- Claws of Channeled Fury
						i(237639),	-- Boots of Channeled Fury
						i(237640),	-- Furs of Channeled Fury
					}),
					cl(WARLOCK, {
						i(237695),	-- Inquisitor's All-Seeing Madness
						i(237696),	-- Inquisitor's Bracelets of Madness
						i(237697),	-- Inquisitor's Tome of Madness
						i(237698),	-- Inquisitor's Gaze of Madness
						i(237699),	-- Inquisitor's Leggings of Madness
						i(237700),	-- Inquisitor's Portal to Madness
						i(237701),	-- Inquisitor's Clutches of Madness
						i(237702),	-- Inquisitor's Treads of Madness
						i(237703),	-- Inquisitor's Robes of Madness
					}),
					cl(WARRIOR, {
						i(237605),	-- Living Weapon's Cape
						i(237606),	-- Living Weapon's Manacles
						i(237607),	-- Living Weapon's Chain
						i(237608),	-- Living Weapon's Ramparts
						i(237609),	-- Living Weapon's Legguards
						i(237610),	-- Living Weapon's Faceshield
						i(237611),	-- Living Weapon's Crushers
						i(237612),	-- Living Weapon's Sabatons
						i(237613),	-- Living Weapon's Bulwark
					}),
					-- Elite catalyst gear is not obtainable this season
				}),
			})),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH, ADDED_12_0_X_LAUNCH }, ["bonusID"] = 7532 }, {
			n(CLASSES, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH } }, {
				cl(DEATHKNIGHT, {
					i(230591),	-- Astral Gladiator's Cloak
					i(230575),	-- Astral Gladiator's Chestguard
					i(230579),	-- Astral Gladiator's Plate Gauntlets
					i(230587),	-- Astral Gladiator's Plate Girdle
					i(230581),	-- Astral Gladiator's Plate Helm
					i(230583),	-- Astral Gladiator's Plate Legguards
					i(230585),	-- Astral Gladiator's Plate Shoulders
					i(230577),	-- Astral Gladiator's Plate Warboots
					i(230589),	-- Astral Gladiator's Plate Wristguards
				}),
				cl(DEMONHUNTER, {
					i(230476),	-- Astral Gladiator's Cloak
					i(230472),	-- Astral Gladiator's Leather Belt
					i(230468),	-- Astral Gladiator's Leather Breeches
					i(230462),	-- Astral Gladiator's Leather Boots
					i(230464),	-- Astral Gladiator's Leather Gloves
					i(230466),	-- Astral Gladiator's Leather Helm
					i(230470),	-- Astral Gladiator's Leather Spaulders
					i(230460),	-- Astral Gladiator's Leather Vest
					i(230474),	-- Astral Gladiator's Leather Wristwraps
				}),
				cl(DRUID, {
					i(230457),	-- Astral Gladiator's Cloak
					i(230453),	-- Astral Gladiator's Leather Belt
					i(230443),	-- Astral Gladiator's Leather Boots
					i(230449),	-- Astral Gladiator's Leather Breeches
					i(230445),	-- Astral Gladiator's Leather Gloves
					i(230447),	-- Astral Gladiator's Leather Helm
					i(230451),	-- Astral Gladiator's Leather Spaulders
					i(230441),	-- Astral Gladiator's Leather Vest
					i(230455),	-- Astral Gladiator's Leather Wristwraps
				}),
				cl(EVOKER, {
					i(230533),	-- Astral Gladiator's Cloak
					i(230517),	-- Astral Gladiator's Armored Scales
					i(230529),	-- Astral Gladiator's Chain Belt
					i(230521),	-- Astral Gladiator's Chain Gauntlets
					i(230523),	-- Astral Gladiator's Chain Helm
					i(230525),	-- Astral Gladiator's Chain Leggings
					i(230527),	-- Astral Gladiator's Chain Monnion
					i(230519),	-- Astral Gladiator's Chain Sabatons
					i(230531),	-- Astral Gladiator's Chain Wristguards
				}),
				cl(HUNTER, {
					i(230553),	-- Astral Gladiator's Cloak
					i(230548),	-- Astral Gladiator's Chain Belt
					i(230540),	-- Astral Gladiator's Chain Gauntlets
					i(230542),	-- Astral Gladiator's Chain Helm
					i(230544),	-- Astral Gladiator's Chain Leggings
					i(230546),	-- Astral Gladiator's Chain Monnion
					i(230538),	-- Astral Gladiator's Chain Sabatons
					i(230536),	-- Astral Gladiator's Chain Vest
					i(230551),	-- Astral Gladiator's Chain Wristguards
				}),
				cl(MAGE, {
					i(230399),	-- Astral Gladiator's Cloak
					i(230395),	-- Astral Gladiator's Silk Cord
					i(230387),	-- Astral Gladiator's Silk Gloves
					i(230389),	-- Astral Gladiator's Silk Hat
					i(230391),	-- Astral Gladiator's Silk Leggings
					i(230393),	-- Astral Gladiator's Silk Mantle
					i(230383),	-- Astral Gladiator's Silk Robe
					i(230385),	-- Astral Gladiator's Silk Slippers
					i(230397),	-- Astral Gladiator's Silk Wristwraps
				}),
				cl(MONK, {
					i(230495),	-- Astral Gladiator's Cloak
					i(230491),	-- Astral Gladiator's Leather Belt
					i(230481),	-- Astral Gladiator's Leather Boots
					i(230487),	-- Astral Gladiator's Leather Breeches
					i(230483),	-- Astral Gladiator's Leather Gloves
					i(230485),	-- Astral Gladiator's Leather Helm
					i(230489),	-- Astral Gladiator's Leather Spaulders
					i(230479),	-- Astral Gladiator's Leather Vest
					i(230493),	-- Astral Gladiator's Leather Wristwraps
				}),
				cl(PALADIN, {
					i(230610),	-- Astral Gladiator's Cloak
					i(230594),	-- Astral Gladiator's Chestguard
					i(230598),	-- Astral Gladiator's Plate Gauntlets
					i(230606),	-- Astral Gladiator's Plate Girdle
					i(230600),	-- Astral Gladiator's Plate Helm
					i(230602),	-- Astral Gladiator's Plate Legguards
					i(230604),	-- Astral Gladiator's Plate Shoulders
					i(230596),	-- Astral Gladiator's Plate Warboots
					i(230608),	-- Astral Gladiator's Plate Wristguards
				}),
				cl(PRIEST, {
					i(230418),	-- Astral Gladiator's Cloak
					i(230414),	-- Astral Gladiator's Silk Cord
					i(230406),	-- Astral Gladiator's Silk Gloves
					i(230408),	-- Astral Gladiator's Silk Hood
					i(230410),	-- Astral Gladiator's Silk Leggings
					i(230412),	-- Astral Gladiator's Silk Mantle
					i(230402),	-- Astral Gladiator's Silk Robes
					i(230404),	-- Astral Gladiator's Silk Slippers
					i(230416),	-- Astral Gladiator's Silk Wristwraps
				}),
				cl(ROGUE, {
					i(230514),	-- Astral Gladiator's Cloak
					i(230510),	-- Astral Gladiator's Leather Belt
					i(230500),	-- Astral Gladiator's Leather Boots
					i(230506),	-- Astral Gladiator's Leather Breeches
					i(230502),	-- Astral Gladiator's Leather Gloves
					i(230504),	-- Astral Gladiator's Leather Helm
					i(230508),	-- Astral Gladiator's Leather Spaulders
					i(230498),	-- Astral Gladiator's Leather Vest
					i(230512),	-- Astral Gladiator's Leather Wristwraps
				}),
				cl(SHAMAN, {
					i(230572),	-- Astral Gladiator's Cloak
					i(230568),	-- Astral Gladiator's Chain Belt
					i(230560),	-- Astral Gladiator's Chain Gauntlets
					i(230562),	-- Astral Gladiator's Chain Helm
					i(230564),	-- Astral Gladiator's Chain Leggings
					i(230566),	-- Astral Gladiator's Chain Monnion
					i(230558),	-- Astral Gladiator's Chain Sabatons
					i(230556),	-- Astral Gladiator's Chain Vest
					i(230570),	-- Astral Gladiator's Chain Wristguards
				}),
				cl(WARLOCK, {
					i(230438),	-- Astral Gladiator's Cloak
					i(230434),	-- Astral Gladiator's Silk Cord
					i(230426),	-- Astral Gladiator's Silk Gloves
					i(230428),	-- Astral Gladiator's Silk Hood
					i(230430),	-- Astral Gladiator's Silk Leggings
					i(230432),	-- Astral Gladiator's Silk Mantle
					i(230421),	-- Astral Gladiator's Silk Raiment
					i(230423),	-- Astral Gladiator's Silk Slippers
					i(230436),	-- Astral Gladiator's Silk Wristwraps
				}),
				cl(WARRIOR, {
					i(230629),	-- Astral Gladiator's Cloak
					i(230613),	-- Astral Gladiator's Chestguard
					i(230617),	-- Astral Gladiator's Plate Gauntlets
					i(230625),	-- Astral Gladiator's Plate Girdle
					i(230619),	-- Astral Gladiator's Plate Helm
					i(230621),	-- Astral Gladiator's Plate Legguards
					i(230623),	-- Astral Gladiator's Plate Shoulders
					i(230615),	-- Astral Gladiator's Plate Warboots
					i(230627),	-- Astral Gladiator's Plate Wristguards
				}),
			})),
			n(219216, {	-- Rogurn <Elite Conquest Quartermaster>
				["coord"] = { 59.8, 69.3, DORNOGAL },
				["groups"] = sharedData({
					["cost"] = { { "i", MOH, 12 } },
					["u"] = ELITE_PVP_REQUIREMENT,
					["timeline"] = { ADDED_12_0_X_LAUNCH },
				}, {
					iensemble(232872, {	-- Arsenal: Elite Astral Gladiator's Weapons
						["cost"] = { { "i", MOH, 80 } },
					}),
					iensemble(232825, {	-- Ensemble: Elite Astral Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(232826, {	-- Ensemble: Elite Astral Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(232827, {	-- Ensemble: Elite Astral Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(232828, {	-- Ensemble: Elite Astral Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(232829, {	-- Ensemble: Elite Astral Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(232830, {	-- Ensemble: Elite Astral Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(232831, {	-- Ensemble: Elite Astral Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(232832, {	-- Ensemble: Elite Astral Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(232833, {	-- Ensemble: Elite Astral Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(232834, {	-- Ensemble: Elite Astral Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(232835, {	-- Ensemble: Elite Astral Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(232836, {	-- Ensemble: Elite Astral Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(232837, {	-- Ensemble: Elite Astral Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
			n(219216, {	-- Rogurn <Elite Conquest Quartermaster>
				["coord"] = { 59.8, 69.3, DORNOGAL },
				["groups"] = bubbleDownFiltered({
					["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
				},FILTERFUNC_itemID,{
					honor(100, i(232908, {	-- Astral Gladiator's Tabard
						["sourceAchievements"] = { 41027 },	-- Elite: The War Within Season 3
					})),
					moh(5, i(248364)),	-- Astral Gladiator's Axe
					moh(10, i(248349)),	-- Astral Gladiator's Battlestaff
					moh(10, i(248356)),	-- Astral Gladiator's Bow
					moh(5, i(248367)),	-- Astral Gladiator's Censer
					moh(5, i(248365)),	-- Astral Gladiator's Cinquedea
					moh(5, i(248355)),	-- Astral Gladiator's Claws
					moh(10, i(248350)),	-- Astral Gladiator's Crossbow
					moh(5, i(248343)),	-- Astral Gladiator's Dagger
					moh(5, i(248352)),	-- Astral Gladiator's Focus
					moh(10, i(248348)),	-- Astral Gladiator's Greatsword
					moh(5, i(248366)),	-- Astral Gladiator's Mace
					moh(10, i(248358)),	-- Astral Gladiator's Pulverizer
					moh(5, i(248351)),	-- Astral Gladiator's Scepter
					moh(5, i(248353)),	-- Astral Gladiator's Shield
					moh(10, i(248346)),	-- Astral Gladiator's Spear
					moh(10, i(248347)),	-- Astral Gladiator's Staff
					moh(5, i(248359)),	-- Astral Gladiator's Sword
					moh(5, i(248345)),	-- Astral Gladiator's Warglaive
				}),
			}),
		})),
		n(REWARDS, {
			i(230284, {	-- Artisan's Consortium Pamphlet (QS!/QI!)
				["timeline"] = { ADDED_11_2_0_SEASONSTART, REMOVED_12_0_X_LAUNCH },
				["description"] = "Rewarded within the first few wins in queued PvP Content.",
			}),
		}),
	}),
}))));
