-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(141, {	-- Salvage Yard (rank 1: 52, rank 2: 140, rank 3: 141)
					n(ACHIEVEMENTS, {
						ach(9468, {		-- Salvaging Pays Off
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111977) },		-- Salvage Yard, Level 3 [Blueprints]
						}),
					}),
					n(QUESTS, {
						q(37086, {	-- Salvaging the Situation
							["qg"] = 77378,	-- Hennick Helmsley
							["races"] = ALLIANCE_ONLY,
							["coords"] = {
								{ 46.4, 59.4, LUNARFALL },
								{ 50.4, 57.4, LUNARFALL },
								{ 51.4, 63.2, LUNARFALL },
							},
							["groups"] = {
								i(118471),	-- Salvaged Parts (QI!)
								i(118473),	-- Small Sack of Salvaged Goods (QI!)
							},
						}),
						q(37045, {	-- Salvaging the Situation
							["qg"] = 79857,	-- Lumba the Crusher
							["races"] = HORDE_ONLY,
							["coords"] = {
								{ 48.0, 32.4, FROSTWALL },
								{ 53.0, 41.4, FROSTWALL },
								{ 53.8, 36.4, FROSTWALL },
							},
							["groups"] = {
								i(118471),	-- Salvaged Parts (QI!)
								i(118473),	-- Small Sack of Salvaged Goods (QI!)
							},
						}),
					}),
					i(139594),	-- Salvage Crate
					i(114120, {	-- Big Crate of Salvage
						["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
						["groups"] = sharedData({ ["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 } },{
							-- Only adding items where Salvage Crates were realistically the only source
							i(36533),	-- Adorned Broadsword
							i(36603),	-- Archaic Longspear
							i(25285),	-- Bloodwood Wand
							i(36575),	-- Dragonflayer Hatchet
							i(55631),	-- Frayfeather Belt
							i(55568),	-- Frayfeather Bracers
							i(55595),	-- Frayfeather Gauntlets
							i(55586),	-- Frayfeather Greaves
							i(55604),	-- Frayfeather Helm
							i(55613),	-- Frayfeather Legguards
							i(55622),	-- Frayfeather Spaulders
							i(55577),	-- Frayfeather Vest
							i(36505),	-- Frosted Steel Mallet
							i(55775),	-- Galardell Cord
							i(55748),	-- Galardell Cowl
							i(55739),	-- Galardell Handwraps
							i(55757),	-- Galardell Leggings
							i(55721),	-- Galardell Robe
							i(55730),	-- Galardell Sandals
							i(55766),	-- Galardell Shoulderpads
							i(55712),	-- Galardell Wristwraps
							i(36631),	-- Horned Crossbow
							i(36547),	-- Jester's Stick
							i(25173),	-- Master's Bo Staff
							i(36519),	-- Moonlit Katana
							i(36561),	-- Mummified Paw
							i(55640),	-- Nighthaven Bindings
							i(55658),	-- Nighthaven Boots
							i(55685),	-- Nighthaven Britches
							i(55667),	-- Nighthaven Gloves
							i(55676),	-- Nighthaven Hood
							i(55649),	-- Nighthaven Jerkin
							i(55694),	-- Nighthaven Shoulders
							i(55703),	-- Nighthaven Waistband
							i(36701),	-- Pine Needle Staff
							i(55469),	-- Rustmaul Greatsword
							i(55460),	-- Rustmaul Sword
							i(55343),	-- Rustmaul Staff
							i(55451),	-- Rustmaul Staff
							i(55415),	-- Rustmaul Spear
							i(55397),	-- Rustmaul Hammer
							i(55388),	-- Rustmaul Mace
							i(55361),	-- Rustmaul Gun
							i(55352),	-- Rustmaul Knuckles
							i(55334),	-- Rustmaul Dagger
							i(55325),	-- Rustmaul Crossbow
							i(55307),	-- Rustmaul Bow
							i(55298),	-- Rustmaul Broadaxe
							i(55289),	-- Rustmaul Axe
							i(36589),	-- Segmenting Broadaxe
							i(36491),	-- Serrated Maul
							i(36659),	-- Shivery Wand
							i(120952, {	-- Slarkhide
								["timeline"] = { ADDED_6_1_0, REMOVED_7_0_3 },
							}),
							i(55316),	-- Sorrowmurk Cloak
							i(55379),	-- Sorrowmurk Crystal
							i(55370),	-- Sorrowmurk Scepter
							i(55442),	-- Sorrowmurk Spellblade
							i(55487),	-- Sorrowmurk Wand
							i(55505),	-- Steelgrill Breastplate
							i(55523),	-- Steelgrill Gauntlets
							i(55559),	-- Steelgrill Girdle
							i(55532),	-- Steelgrill Helm
							i(55541),	-- Steelgrill Legplates
							i(55550),	-- Steelgrill Pauldrons
							i(55514),	-- Steelgrill Sabatons
							i(55496),	-- Steelgrill Vambraces
							i(55433),	-- Steelgrill Shield
							i(36645),	-- Tuskarr Boomstick
							i(36477),	-- Twin-Edged Stiletto
							i(36673),	-- Wise Dagger
							i(36617),	-- Yielding Bow
						}),
					}),
					i(140590, {	-- Large Crate of Salvage
						cl(DEATHKNIGHT, {
							i(119478),	-- Heart-Lesion Blade
							i(119470),	-- Heart-Lesion Breastplate
							i(119472),	-- Heart-Lesion Gauntlets
							i(119476),	-- Heart-Lesion Girdle
							i(119469),	-- Heart-Lesion Greatsword
							i(119473),	-- Heart-Lesion Helm
							i(119474),	-- Heart-Lesion Legplates
							i(119475),	-- Heart-Lesion Pauldrons
							i(119499),	-- Heart-Lesion Runeblade
							i(119471),	-- Heart-Lesion Sabatons
							i(119477),	-- Heart-Lesion Vambraces
						}),
						cl(DRUID, {
							i(119513),	-- Springrain Belt
							i(119514),	-- Springrain Bracers
							i(119508),	-- Springrain Grips
							i(119509),	-- Springrain Headpiece
							i(119510),	-- Springrain Leggings
							i(119511),	-- Springrain Spaulders
							i(119525),	-- Springrain Spear
							i(119544),	-- Springrain Staff
							i(119512),	-- Springrain Stave
							i(119507),	-- Springrain Treads
							i(119506),	-- Springrain Tunic
						}),
						cl(HUNTER, {
							i(119557),	-- Trailseeker Belt
							i(119558),	-- Trailseeker Bracers
							i(119553),	-- Trailseeker Gauntlets
							i(119552),	-- Trailseeker Greaves
							i(119554),	-- Trailseeker Helm
							i(119555),	-- Trailseeker Legguards
							i(119559),	-- Trailseeker Shotgun
							i(119556),	-- Trailseeker Spaulders
							i(119551),	-- Trailseeker Vest
						}),
						cl(MAGE, {
							i(119572),	-- Mountainsage Cord
							i(119567),	-- Mountainsage Handwraps
							i(119568),	-- Mountainsage Hood
							i(119569),	-- Mountainsage Leggings
							i(119570),	-- Mountainsage Robe
							i(119566),	-- Mountainsage Sandals
							i(119571),	-- Mountainsage Shoulderpads
							i(119576),	-- Mountainsage Staff
							i(119574),	-- Mountainsage Wand
							i(119573),	-- Mountainsage Wristwraps
						}),
						cl(MONK, {
							i(119589),	-- Mistdancer Cord
							i(119590),	-- Mistdancer Cuffs
							i(119584),	-- Mistdancer Footpads
							i(119585),	-- Mistdancer Handguards
							i(119586),	-- Mistdancer Helm
							i(119587),	-- Mistdancer Legguards
							i(119588),	-- Mistdancer Pauldrons
							i(119581),	-- Mistdancer Spire
							i(119602),	-- Mistdancer Staff
							i(119605),	-- Mistdancer Sword
							i(119583),	-- Mistdancer Vest
						}),
						cl(PALADIN, {
							i(119613),	-- Sunsoul Battleplate
							i(119638),	-- Sunsoul Bulwark
							i(119615),	-- Sunsoul Gauntlets
							i(119619),	-- Sunsoul Girdle
							i(119616),	-- Sunsoul Helm
							i(119617),	-- Sunsoul Legplates
							i(119618),	-- Sunsoul Pauldrons
							i(119614),	-- Sunsoul Sabatons
							i(119635),	-- Sunsoul Scepter
							i(119636),	-- Sunsoul Shield
							i(119637),	-- Sunsoul Sword
							i(119620),	-- Sunsoul Vambraces
							i(119639),	-- Sunsoul Warmaul
						}),
						cl(PRIEST, {
							i(119689),	-- Communal Bindings
							i(119682),	-- Communal Boots
							i(119684),	-- Communal Cowl
							i(119683),	-- Communal Gloves
							i(119687),	-- Communal Mantle
							i(119685),	-- Communal Pants
							i(119686),	-- Communal Robe
							i(119688),	-- Communal Sash
							i(119680),	-- Communal Staff
							i(119690),	-- Communal Stave
							i(119665),	-- Communal Wand
						}),
						cl(ROGUE, {
							i(119704),	-- Lightdrinker Bindings
							i(119701),	-- Lightdrinker Britches
							i(119698),	-- Lightdrinker Boots
							i(119705),	-- Lightdrinker Dagger
							i(119699),	-- Lightdrinker Gloves
							i(119700),	-- Lightdrinker Hood
							i(119697),	-- Lightdrinker Jerkin
							i(119706),	-- Lightdrinker Shiv
							i(119702),	-- Lightdrinker Shoulders
							i(119707),	-- Lightdrinker Sword
							i(119703),	-- Lightdrinker Waistband
						}),
						cl(SHAMAN, {
							i(119725),	-- Streamtalker Aegis
							i(119728),	-- Streamtalker Armbands
							i(119727),	-- Streamtalker Belt
							i(119721),	-- Streamtalker Boots
							i(119719),	-- Streamtalker Claws
							i(119723),	-- Streamtalker Coif
							i(119722),	-- Streamtalker Gloves
							i(119724),	-- Streamtalker Legwraps
							i(119726),	-- Streamtalker Pauldrons
							i(119751),	-- Streamtalker Shield
							i(119745),	-- Streamtalker Slicers
							i(119729),	-- Streamtalker Talons
							i(119720),	-- Streamtalker Tunic
						}),
						cl(WARLOCK, {
							i(119762),	-- Felsoul Cowl
							i(119766),	-- Felsoul Cord
							i(119761),	-- Felsoul Handwraps
							i(119763),	-- Felsoul Leggings
							i(119764),	-- Felsoul Robe
							i(119760),	-- Felsoul Sandals
							i(119765),	-- Felsoul Shoulderpads
							i(119770),	-- Felsoul Staff
							i(119768),	-- Felsoul Wand
							i(119767),	-- Felsoul Wristwraps
						}),
						cl(WARRIOR, {
							i(119781),	-- Oathsworn Axe
							i(119772),	-- Oathsworn Breastplate
							i(119782),	-- Oathsworn Bulwark
							i(119774),	-- Oathsworn Gauntlets
							i(119778),	-- Oathsworn Girdle
							i(119771),	-- Oathsworn Greataxe
							i(119780),	-- Oathsworn Headchopper
							i(119775),	-- Oathsworn Helm
							i(119776),	-- Oathsworn Legplates
							i(119777),	-- Oathsworn Pauldrons
							i(119773),	-- Oathsworn Sabatons
							i(119779),	-- Oathsworn Vambraces
						}),
					}),
				}),
			}),
		})),
	})
);
