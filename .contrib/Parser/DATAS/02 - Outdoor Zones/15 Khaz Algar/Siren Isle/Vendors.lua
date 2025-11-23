---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(SIREN_ISLE, {
		n(VENDORS, {
			n(236045, {	-- Ailenda Hedgemyr
				["coord"] = { 70.8, 40.2, SIREN_ISLE },
				["groups"] = {
					fbiron(350, i(233925)),	-- Arathi Knight's Shoulderguard
					fbiron(350, i(233922)),	-- Arathi Knight's Headguard
					fbiron(350, i(233924)),	-- Arathi Champion's Shoulderguard
					fbiron(350, i(233921)),	-- Arathi Champion's Headguard
					fbiron(350, i(233923)),	-- Arathi Footman's Shoulderguard
					fbiron(350, i(233920)),	-- Arathi Footman's Headguard
					fbiron(350, i(233812)),	-- Arathi Youngling's Training Sword
					fbiron(3000, iensemble(234517)),	-- Ensemble: Adventurous Lamplighter's Attire
					fbiron(3000, iensemble(234518)),	-- Ensemble: Sacred Wayfarer's Attire
					fbiron(750, i(233486)),	-- Hallowfall Supply Cache (TOY!)
					fbiron(350, i(233823)),	-- Mereldar Smithing Mallet
					fbiron(200, i(235412)),	-- Mereldar Smithing Mallet
					fbiron(200, i(233835)),	-- Priory Tongs
					fbiron(350, i(233919)),	-- Sacredite Expedionary Hood
					fbiron(350, i(233918)),	-- Sacredite Scholar's Hood
					fbiron(200, i(233828)),	-- Sacredite's Ceremonial Brush
					fbiron(350, i(233917)),	-- Sacredite's Ceremonial Cowl
					fbiron(350, i(233836)),	-- Sacredite's Facet Gouge
				},
			}),
			n(232295, {	-- Almyr Sunhart
				["coord"] = { 70.6, 38.6, SIREN_ISLE },
				["groups"] = {
					i(234287),	-- Radiant Focus
					i(234527),	-- Sacredite's Ledger
					i(234466),	-- Tattered Arathi Prayer Scroll
				},
			}),
			n(228074, {	-- Angorla
				["coord"] = { 71.2, 44.0, SIREN_ISLE },
				["groups"] = {
					fbiron(50, i(228638, {	-- Stormbringer's Runed Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
					fbiron(50, i(228639, {	-- Fathomdweller's Runed Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
					fbiron(50, i(228640, {	-- Windsinger's Runed Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
				},
			}),
			n(231536, {	-- Apprentice Tanmar <Sacredite Gemwright>
				["coords"] = {
					{ 72.0, 43.0, SIREN_ISLE },
					{ 70.8, 40.6, SIREN_ISLE },
				},
				["groups"] = {
					fbiron(50, i(228642, {	-- Storm Sewer's Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
					fbiron(50, i(228643, {	-- Old Salt's Bardic Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
					fbiron(50, i(228644, {	-- Mariner's Hallowed Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
				},
			}),
			n(228093, {	-- Argarom
				["coord"] = { 67.3, 41.7, SIREN_ISLE },
				["groups"] = {
					n(ARMOR, {
						filter(CLOAKS, {
							fbiron(105, i(229019)),	-- Earthen Deckhand's Cape
							fbiron(105, i(229027)),	-- Earthen Islander's Shawl
							fbiron(105, i(229036)),	-- Earthen Landlubber's Drape
							fbiron(105, i(229010)),	-- Earthen Scallywag's Cloak
						}),
						filter(CLOTH, {
							fbiron(140, i(229017)),	-- Earthen Scallywag's Cord
							fbiron(175, i(229014)),	-- Earthen Scallywag's Cowl
							fbiron(105, i(229018)),	-- Earthen Scallywag's Cuffs
							fbiron(140, i(229013)),	-- Earthen Scallywag's Handwraps
							fbiron(175, i(229015)),	-- Earthen Scallywag's Leggings
							fbiron(140, i(229016)),	-- Earthen Scallywag's Mantle
							fbiron(140, i(229012)),	-- Earthen Scallywag's Sandals
							fbiron(175, i(229011)),	-- Earthen Scallywag's Vestment
						}),
						filter(FINGER_F, {
							fbiron(105, i(229051)),	-- Scurvy Sailor's Ring
							fbiron(105, i(229050)),	-- Seafarer's Wandering Signet
						}),
						filter(LEATHER, {
							fbiron(105, i(229026)),	-- Earthen Deckhand's Bindings
							fbiron(175, i(229023)),	-- Earthen Deckhand's Breeches
							fbiron(175, i(229045)),	-- Earthen Deckhand's Cap
							fbiron(140, i(229022)),	-- Earthen Deckhand's Grips
							fbiron(140, i(229025)),	-- Earthen Deckhand's Sash
							fbiron(140, i(229024)),	-- Earthen Deckhand's Shoulderpads
							fbiron(175, i(229020)),	-- Earthen Deckhand's Vest
							fbiron(140, i(229021)),	-- Earthen Deckhand's Waders
						}),
						filter(MAIL, {
							fbiron(105, i(229035)),	-- Earthen Islander's Bracers
							fbiron(175, i(229028)),	-- Earthen Islander's Chainmail
							fbiron(140, i(229034)),	-- Earthen Islander's Cinch
							fbiron(175, i(229031)),	-- Earthen Islander's Coif
							fbiron(175, i(229032)),	-- Earthen Islander's Greaves
							fbiron(140, i(229030)),	-- Earthen Islander's Grips
							fbiron(140, i(229033)),	-- Earthen Islander's Shoulderguards
							fbiron(140, i(229029)),	-- Earthen Islander's Striders
						}),
						filter(NECK_F, {
							fbiron(105, i(229053)),	-- Conch Collector's Locket
							fbiron(105, i(229052)),	-- Moneyed Mariner's Pendant
						}),
						filter(PLATE, {
							fbiron(105, i(229044)),	-- Earthen Landlubber's Armplates
							fbiron(175, i(229037)),	-- Earthen Landlubber's Breastplate
							fbiron(140, i(229039)),	-- Earthen Landlubber's Gauntlets
							fbiron(140, i(229043)),	-- Earthen Landlubber's Girdle
							fbiron(175, i(229040)),	-- Earthen Landlubber's Helm
							fbiron(175, i(229041)),	-- Earthen Landlubber's Legguards
							fbiron(140, i(229042)),	-- Earthen Landlubber's Mantle
							fbiron(140, i(229038)),	-- Earthen Landlubber's Sabatons
						}),
						filter(TRINKET_F, {
							fbiron(140, i(231116)),	-- Cursed Pirate Skull
							fbiron(140, i(231117)),	-- Darktide Wavebender's Orb
							fbiron(140, i(231118)),	-- Runecaster's Stormbound Rune
							fbiron(140, i(230945)),	-- Wayward Vrykul's Lantern
						}),
					}),
					n(WEAPONS, {
						fbiron(350, i(229190)),	-- Earthen Deckhand's Blunderbuss
						fbiron(175, i(229175)),	-- Earthen Deckhand's Bulwark
						fbiron(175, i(229167)),	-- Earthen Deckhand's Cleaver
						fbiron(175, i(229179)),	-- Earthen Deckhand's Cudgel
						fbiron(175, i(229182)),	-- Earthen Deckhand's Dagger
						fbiron(350, i(229172)),	-- Earthen Deckhand's Halberd
						fbiron(175, i(229184)),	-- Earthen Deckhand's Knuckles
						fbiron(350, i(229187)),	-- Earthen Deckhand's Rod
						fbiron(175, i(229185)),	-- Earthen Deckhand's Warglaive
						fbiron(175, i(229168)),	-- Earthen Landlubber's Axe
						fbiron(350, i(229191)),	-- Earthen Landlubber's Crossbow
						fbiron(350, i(229177)),	-- Earthen Landlubber's Greataxe
						fbiron(350, i(229176)),	-- Earthen Landlubber's Greatsword
						fbiron(350, i(229180)),	-- Earthen Landlubber's Hammer
						fbiron(175, i(229183)),	-- Earthen Landlubber's Knife
						fbiron(350, i(229171)),	-- Earthen Landlubber's Polearm
						fbiron(175, i(229174)),	-- Earthen Landlubber's Shield
						fbiron(175, i(229169)),	-- Earthen Landlubber's Sword
						fbiron(350, i(229189)),	-- Earthen Scallywag's Bow
						fbiron(175, i(229178)),	-- Earthen Scallywag's Gavel
						fbiron(350, i(229186)),	-- Earthen Scallywag's Greatstaff
						fbiron(175, i(229188)),	-- Earthen Scallywag's Implement
						fbiron(175, i(229192)),	-- Earthen Scallywag's Kris
						fbiron(175, i(229170)),	-- Earthen Scallywag's Saber
						fbiron(350, i(229173)),	-- Earthen Scallywag's Spear
					}),
				},
			}),
			n(228099, {	-- Blinky Greasefingers
				["description"] = "You must have the Prismatic Snapdragon Mount before this dialog option can appear.",
				-- ["lockCriteria"] = {1, "questID", 86485 },	-- TODO: probably a spellID will be better?
				["coord"] = { 69.2, 45.8, SIREN_ISLE },
				["groups"] = {
					i(233497),	-- Kaja'Cola-Braised Snapdragon Treat (CI!)
				},
			}),
			n(231997, {	-- Didi the Wrench
				["coord"] = { 71.2, 45.6, SIREN_ISLE },
				["groups"] = {
					fbiron(50, i(228634, {	-- Thunderlord's Crackling Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
					fbiron(50, i(228635, {	-- Squall Sailor's Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),
					fbiron(50, i(228636, {	-- Undersea Overseer's Citrine
						["description"] = "You may have to acquire the gem as Bonus Objective Reward once before it appears on the vendor.",
					})),

				},
			}),
			n(228103, {	-- Flori
				["coord"] = { 67.4, 40.0, SIREN_ISLE },
				["groups"] = {
					i(234526),	-- Archivist's Codex
				},
			}),
			n(235407, {	-- Hooded Purveyor
				["coord"] = { 67.9, 39.3, SIREN_ISLE },
				["groups"] = {
					fbiron(750, i(235015)),	-- Awakened Supply Crate (TOY!)
					fbiron(500, i(224165)),	-- Dornogal Tabard
					fbiron(500, i(224168)),	-- Earthen Expedition Tabard
					fbiron(500, i(233978)),	-- Earthen Soot-Stained Workpack
					fbiron(3000, iensemble(234524)),	-- Ensemble: Awakened Ambassador's Uniform
					fbiron(500, i(224167)),	-- Gundargaz Tabard
					fbiron(500, i(233980)),	-- Noble's Forgegrounds Worksack
					fbiron(350, i(235297)),	-- Smuggled Councilor's Chalice
					fbiron(200, i(233829)),	-- Smuggled Councilor's Chalice
					fbiron(350, i(235298)),	-- Smuggled Forgegrounds Hammer
					fbiron(200, i(233824)),	-- Smuggled Forgegrounds Hammer
					fbiron(350, i(235299)),	-- Smuggled Meadery Pitcher
					fbiron(200, i(233822)),	-- Smuggled Meadery Pitcher
					fbiron(500, i(233979)),	-- Stonebound Worker's Backpack
					fbiron(500, i(233981)),	-- Underground Machinist Toolbag
				},
			}),
			n(227814, {	-- Sally Boltwrench
				["coord"] = { 69.0, 47.5, SIREN_ISLE },
				["groups"] = {
					fbiron(10, i(230728)),	-- Experimental Go-Pack
				},
			}),
			n(228390, {	-- Snizzle Fumblecrank
				["coord"] = { 69.0, 46.4, SIREN_ISLE },
				["groups"] = {
					i(234282),	-- Decorative Yard Flamingo (TODO: unsure at what point it pop here)
				},
			}),
			n(234390, {	-- Soweezi
				["coord"] = { 70.0, 48.4, SIREN_ISLE },
				["groups"] = {
					fbiron(2000, iensemble(234519)),	-- Ensemble: Paradise Beach Loungewear
					fbiron(4500, iensemble(221543)),	-- Ensemble: Pink Tropical
					fbiron(4500, iensemble(222960)),	-- Ensemble: Pink Tropical Swimwear
					fbiron(2000, iensemble(234521)),	-- Ensemble: Rusty Bruiser's Outfit
					fbiron(2000, iensemble(234523)),	-- Ensemble: Salvage Rig Garments
					fbiron(2000, iensemble(234522)),	-- Ensemble: Southsea Cruise Loungewear
					fbiron(1500, iensemble(234520)),	-- Ensemble: Sun-Soaked Clothing
					fbiron(750, i(234395)),	-- Skitterbite (PET!)
					fbiron(750, i(234473)),	-- Soweezi's Comfy Lawn Chair (TOY!)
					fbiron(10000, i(233058)),	-- Soweezi's Vintage Waveshredder (MOUNT!)
					fbiron(350, i(234229)),	-- Technique: Glyph of the Gilded Pistol Shot (RECIPE!)
					fbiron(1000, i(220655)),	-- Water Blaster P.K. (COSMETIC!)
				},
			}),
			n(233259, {	-- Taljori
				["coord"] = { 65.7, 41.7, SIREN_ISLE },
				["groups"] = {
					fbiron(350, i(233810)),	-- Barnacle Breaker's Falchion
					fbiron(350, i(233912)),	-- Bilge Rat Pirate Hat
					fbiron(350, i(233911)),	-- Bloodstained Rat Cap
					fbiron(350, i(233961)),	-- Bloodstained War Buckler
					fbiron(350, i(233807)),	-- Bloodwake Hullrender
					fbiron(350, i(233857)),	-- Bloodwake Sailpiercer
					fbiron(350, i(233806)),	-- Burly Vrykul's Greatsword
					fbiron(350, i(233817)),	-- Crackling Wavelord's Trident
					fbiron(350, i(233816)),	-- Enchantress Scrying Rod
					fbiron(3000, iensemble(234536)),	-- Ensemble: Bilgeswabby's Garb
					fbiron(3000, iensemble(234514)),	-- Ensemble: Bloodscout Outfit
					fbiron(3000, iensemble(234515)),	-- Ensemble: Hydraflayer Regalia
					fbiron(3000, iensemble(234537)),	-- Ensemble: Pilfered Mariner's Garb
					fbiron(3000, iensemble(234513)),	-- Ensemble: Rune Scribe's Vestments
					fbiron(3000, iensemble(234538)),	-- Ensemble: Salt-Stained Garb
					fbiron(3000, iensemble(234516)),	-- Ensemble: Tidecrasher Armor
					fbiron(350, i(233856)),	-- Hydraflayer's Longbow
					fbiron(350, i(233903)),	-- Knife Juggler's Bicorne
					fbiron(350, i(233963)),	-- Myrmidon's Pearlwall
					fbiron(350, i(233809)),	-- Myrmidon's Wave Slasher
					fbiron(350, i(233830)),	-- Pincer of the Tidestalker
					fbiron(350, i(233845)),	-- Quilted Long-Sleeved Sea Tunic
					fbiron(350, i(233844)),	-- Quilted Sea Vest
					fbiron(350, i(233892)),	-- Quilted Waist Wrap
					fbiron(500, i(234414)),	-- Runescribe's Ritual Tunic
					fbiron(350, i(233819)),	-- Stormtouched Blacksmith's Gavel
					fbiron(350, i(233902)),	-- Tattered Rat Hat
					fbiron(350, i(234230)),	-- Technique: Glyph of the Twilight Pistol Shot (RECIPE!)
					fbiron(350, i(233982)),	-- Tideflayer's Wave Piercer
					fbiron(350, i(233832)),	-- Tidestalker's Gutter
					fbiron(350, i(233818)),	-- Vrykul Blacksmith's Gavel
					fbiron(350, i(233805)),	-- Vrykul Pyromancer's Wand
					-- Gems
					fbiron(50, i(228646, {	-- Legendary Skipper's Citrine
						["description"] = "You may have to acquire the gem from the World Quest once before it appears on the vendor.",
					})),
					fbiron(50, i(228647, {	-- Seabed Leviathan's Citrine
						["description"] = "You may have to acquire the gem from the World Quest once before it appears on the vendor.",
					})),
					fbiron(50, i(228648, {	-- Roaring War-Queen's Citrine
						["description"] = "You may have to acquire the gem from the World Quest once before it appears on the vendor.",
					})),
				},
			}),
		}),
	}),
}));
