-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
-- #if MOP
local CUTTING_EDGE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. MOP_PHASE_ONE_MOGUSHAN_VAULTS .. [[;
		t.rwp = 50200;
	end
end]];
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_ONE_MOGUSHAN_VAULTS, inst(317, {	-- Mogu'shan Vaults
		["coord"] = { 59.6, 39.1, KUN_LAI_SUMMIT },
		["maps"] = {
			471,	-- Dais of Conquerors
			472,	-- The Repository
			473,	-- Forge of the Endless
		},
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(6458, {	-- Guardians of Mogu'shan
					crit(19110, {	-- The Stone Guard
						["_encounter"] = { 679, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19111, {	-- Feng the Accursed
						["_encounter"] = { 689, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19112, {	-- Gara'jal the Spiritbinder
						["_encounter"] = { 682, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6844, {	-- The Vault of Mysteries
					crit(19113, {	-- The Spirit Kings
						["_encounter"] = { 687, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19767, {	-- Elegon
						["_encounter"] = { 726, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
					crit(19115, {	-- Will of the Emperor
						["_encounter"] = { 677, DIFFICULTY.LEGACY_RAID.MULTI.ALL },
					}),
				}),
				ach(6668),	-- Mogu'shan Vaults Guild Run
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.ALL, {
				-- #if AFTER 6.0.1
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
				-- #endif
				["groups"] = {
					n(ZONE_DROPS, {
						i(86238),	-- Pattern: Chestguard of Nemeses (RECIPE!)
						i(86272),	-- Pattern: Fists of Lightning (RECIPE!)
						i(86279),	-- Pattern: Liferuned Leather Gloves (RECIPE!)
						i(86280),	-- Pattern: Murderer's Gloves (RECIPE!)
						i(86281),	-- Pattern: Nightfire Robe (RECIPE!)
						i(86283),	-- Pattern: Raiment of Blood and Bone (RECIPE!)
						i(86284),	-- Pattern: Raven Lord's Gloves (RECIPE!)
						i(86297),	-- Pattern: Stormbreaker Chestguard (RECIPE!)
						i(86379),	-- Pattern: Robe of Eternal Rule (RECIPE!)
						i(86380),	-- Pattern: Imperial Silk Gloves (RECIPE!)
						i(86381),	-- Pattern: Legacy of the Emperor (RECIPE!)
						i(86382),	-- Pattern: Touch of the Light (RECIPE!)
						i(87408),	-- Plans: Unyielding Bloodplate (RECIPE!)
						i(87409),	-- Plans: Gauntlets of Battle Command (RECIPE!)
						i(87410),	-- Plans: Ornate Battleplate of the Master (RECIPE!)
						i(87411),	-- Plans: Bloodforged Warfists (RECIPE!)
						i(87412),	-- Plans: Chestplate of Limitless Faith (RECIPE!)
						i(87413),	-- Plans: Gauntlets of Unbound Devotion (RECIPE!)
					}),
					e(679, {	-- The Stone Guard
						["crs"] = {
							60047,	-- Amethyst Guardian
							60051,	-- Cobalt Guardian
							60043,	-- Jade Guardian
							59915,	-- Jasper Guardian
						},
						["groups"] = {
							i(167047, {	-- Stoneclaw (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(689, {	-- Feng the Accursed
						["crs"] = { 60009 },	-- Feng the Accursed
					}),
					e(682, {	-- Gara'jal the Spiritbinder
						["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						["groups"] = {
							i(167048, {	-- Wayward Spirit (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(687, {	-- The Spirit Kings
						["crs"] = {
							60708,	-- Meng the Demented
							60709,	-- Qiang the Merciless
							60710,	-- Subetai the Swift
							60701,	-- Zian of the Endless Shadow
						},
						["groups"] = {

						},
					}),
					e(726, {	-- Elegon
						["crs"] = { 60410 },	-- Elegon
						["groups"] = {
							i(167049, {	-- Comet (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
						},
					}),
					e(677, {	-- Will of the Emperor
						["crs"] = {
							60400,	-- Jan-xi <Emperor's Open Hand>
							60399,	-- Qin-xi <Emperor's Closed Fist>
						},
						["groups"] = {
							i(167050, {	-- Baoh-Xi (PET!)
								["timeline"] = { ADDED_8_1_5 },
							}),
							i(138804, {	-- Illusion: Colossus (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.FINDER, {
				-- #if AFTER 6.0.1
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
				-- #endif
				["ignoreBonus"] = true,
				["groups"] =
				-- #if ANYCLASSIC
				bubbleDown({ ["timeline"] = { CREATED_5_5_0 }, },
				-- #endif
				{
					i(89804, {	-- Cache of Mogu Riches (Original)
						["description"] = "Contains 28g 50s.\n\nThis item and other consolation items like it created many riots on the WoW Forums and continued to do so until they added the updated bags in 5.2.0.",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					}),
					i(89858, {	-- Cache of Mogu Riches (Original)
						["description"] = "Contains 28g 50s.\n\nThis item and other consolation items like it created many riots on the WoW Forums and continued to do so until they added the updated bags in 5.2.0.",
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
					}),
					i(95618, {	-- Cache of Mogu Riches
						["description"] = "This item is awarded as a consolation prize to players who do not win loot after defeating a boss encounter in the Raid Finder mode of Mogu'shan Vaults.",
						["timeline"] = { ADDED_5_2_0, REMOVED_8_0_1 },
						["sym"] = {MOP_SYM_PETS},
						["groups"] = {
							-- Belts
							i(86884),	-- Belt of Embodied Terror
							i(86900),	-- Binder's Chain of Unending Summer
							i(86895),	-- Healer's Belt of Final Winter
							i(86896),	-- Invoker's Belt of Final Winter
							i(86902),	-- Mender's Girdle of Endless Spring
							i(86904),	-- Patroller's Girdle of Endless Spring
							i(86903),	-- Protector's Girdle of Endless Spring
							i(86901),	-- Ranger's Chain of Unending Summer
							i(86897),	-- Sorcerer's Belt of Final Winter
							i(86899),	-- Stalker's Cord of Eternal Autumn
							i(86898),	-- Weaver's Cord of Eternal Autumn
							-- Bracers
							i(86850),	-- Darting Damselfly Cuffs
							i(86844),	-- Gleaming Moth Cuffs
							i(86846),	-- Inlaid Cricket Bracers
							i(86847),	-- Jagged Hornet Bracers
							i(86842),	-- Luminescent Firefly Wristguards
							i(86845),	-- Pearlescent Butterfly Wristbands
							i(86849),	-- Plated Locust Bracers
							i(86848),	-- Serrated Wasp Bracers
							i(86841),	-- Shining Cicada Bracers
							i(86843),	-- Smooth Beetle Wristbands
							-- Trinkets
							i(86772),	-- Jade Bandit Figurine
							i(86771),	-- Jade Charioteer Figurine
							i(86774),	-- Jade Courtesan Figurine
							i(86773),	-- Jade Magistrate Figurine
							i(86775),	-- Jade Warlord Figurine
						},
					}),
					header(HEADERS.Achievement, 6458, {	-- Guardians of Mogu'shan
						e(679, {	-- The Stone Guard
							["crs"] = {
								60047,	-- Amethyst Guardian
								60051,	-- Cobalt Guardian
								60043,	-- Jade Guardian
								59915,	-- Jasper Guardian
							},
							["groups"] = {
								i(86739),	-- Beads of the Mogu'shi
								i(86748),	-- Cape of Three Lanterns
								i(89966),	-- Claws of Amethyst
								i(86741),	-- Dagger of the Seven Stars
								i(86744),	-- Heavenly Jade Greatboots
								i(86747),	-- Jade Dust Leggings
								i(86742),	-- Jasper Clawfeet
								i(89965),	-- Ruby-Linked Girdle
								i(86745),	-- Sixteen-Fanged Crown
								i(86793),	-- Star-Stealer Waistguard
								i(86746),	-- Stonebound Cinch
								i(89964),	-- Stonefang Chestguard
								i(86743),	-- Stoneflesh Leggings
								i(86740),	-- Stonemaw Armguards
							},
						}),
						e(689, {	-- Feng the Accursed
							["crs"] = { 60009 },	-- Feng the Accursed
							["groups"] = {
								i(86754),	-- Amulet of Seven Curses
								i(86782),	-- Arrow Breaking Windcloak
								i(86751),	-- Bracers of Six Oxen
								i(86755),	-- Chain of Shadow
								i(86753),	-- Cloak of Peacock Feathers
								i(89426),	-- Fan of Fiery Winds
								i(89967),	-- Feng's Seal of Binding
								i(89968),	-- Feng's Ring of Dreams
								i(86757),	-- Hood of Cursed Dreams
								i(86758),	-- Imperial Ghostbinder's Robes
								i(86756),	-- Legplates of Sagacious Shadows
								i(86752),	-- Nullification Greathelm
								i(86750),	-- Tomb Raider's Girdle
								i(86749),	-- Wildfire Worldwalkers
							},
						}),
						e(682, {	-- Gara'jal the Spiritbinder
							["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
							["groups"] = {
								i(86766),	-- Bindings of Ancient Spirits
								i(89969),	-- Bonded Soul Bracers
								i(86767),	-- Circuit of the Frail Soul
								i(86764),	-- Eye of the Ancient Spirit
								i(86761),	-- Fetters of Death
								i(86762),	-- Gara'kal, Fist of the Spiritbinder
								i(86769),	-- Leggings of Imprisoned Will
								i(86763),	-- Netherrealm Shoulderpads
								i(86765),	-- Sandals of the Severed Soul
								i(86770),	-- Shadowsummoner Spaulders
								i(86760),	-- Sollerets of Spirit Splitting
								i(86759),	-- Soulgrasp Choker
								i(86768),	-- Spaulders of the Divided Mind
							},
						}),
					}),
					header(HEADERS.Achievement, 6844, {	-- The Vault of Mysteries
						e(687, {	-- The Spirit Kings
							["crs"] = {
								60708,	-- Meng the Demented
								60709,	-- Qiang the Merciless
								60710,	-- Subetai the Swift
								60701,	-- Zian of the Endless Shadow
							},
							["groups"] = {
								i(86776),	-- Amulet of the Hidden Kings
								i(86786),	-- Bracers of Dark Thoughts
								i(89970),	-- Bracers of Violent Meditation
								i(86779),	-- Breastplate of the Kings' Guard
								i(86785),	-- Girdle of Delirious Visions
								i(86788),	-- Hood of Blind Eyes
								i(86784),	-- Meng's Treads of Insanity
								i(89971),	-- Mindshard Drape
								i(86777),	-- Screaming Tiger, Qiang's Unbreakable Polearm
								i(86780),	-- Shoulderguards of the Unflanked
								i(86778),	-- Steelskin, Qiang's Impervious Shield
								i(86781),	-- Subetai's Pillaging Leggings
								i(86787),	-- Undying Shadow Grips
								i(86783),	-- Zian's Choker of Coalesced Shadow
							},
						}),
						e(726, {	-- Elegon
							["crs"] = { 60410 },	-- Elegon
							["groups"] = {
								i(89972),	-- Band of Bursting Novas
								i(86791),	-- Bottle of Infinite Stars
								i(86795),	-- Chestguard of Total Annihilation
								i(89974),	-- Crown of Keening Stars
								i(86789),	-- Elegion, the Fanged Crescent
								i(89973),	-- Galaxyfire Girdle
								i(86792),	-- Light of the Cosmos
								i(86798),	-- Orbital Belt
								i(86797),	-- Phasewalker Striders
								i(86800),	-- Shoulders of Empyreal Focus
								i(86794),	-- Starcrusher Gauntlets
								i(86799),	-- Starshatter
								i(86796),	-- Torch of the Celestial Spark
								i(86790),	-- Vial of Dragon's Blood
							},
						}),
						e(677, {	-- Will of the Emperor
							["crs"] = {
								60400,	-- Jan-xi <Emperor's Open Hand>
								60399,	-- Qin-xi <Emperor's Closed Fist>
							},
							["groups"] = {
								i(89976),	-- Chestguard of Eternal Vigilance
								i(86804),	-- Crown of Opportunistic Strikes
								i(89975),	-- Dreadeye Gaze
								i(89977),	-- Enameled Grips of Solemnity
								i(86801),	-- Fang Kung, Spark of Titans
								i(87826),	-- Grips of Terra Cotta
								i(86809),	-- Hood of Focused Energy
								i(86803),	-- Jang-xi's Devastating Legplates
								i(86802),	-- Lei Shen's Final Orders
								i(86808),	-- Magnetized Leggings
								i(86805),	-- Qin-xi's Polarizing Seal
								i(86807),	-- Spaulders of the Emperor's Rage
								i(86806),	-- Tihan, Scepter of the Sleeping Emperor
								i(86810),	-- Worldwaker Cabochon
							},
						}),
					}),
				}
				-- #if ANYCLASSIC
				)
				-- #endif
				,
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				n(ACHIEVEMENTS, {
					ach(7933),	-- And... It's Good!
				}),
				n(ZONE_DROPS, {
					i(86042),	-- Jade Charioteer Figurine
					i(86043),	-- Jade Bandit Figurine
					i(86044),	-- Jade Magistrate Figurine
					i(86045),	-- Jade Courtesan Figurine
					i(86046),	-- Jade Warlord Figurine
				}),
				e(679, {	-- The Stone Guard
					["crs"] = {
						60047,	-- Amethyst Guardian
						60051,	-- Cobalt Guardian
						60043,	-- Jade Guardian
						59915,	-- Jasper Guardian
					},
					["groups"] = {
						ach(6823),	-- Must Love Dogs
					},
				}),
				e(689, {	-- Feng the Accursed
					["crs"] = { 60009 },	-- Feng the Accursed
					["groups"] = {
						ach(6674, {	-- Anything You Can Do, I Can Do Better...
							crit(19501),	-- Epicenter
							crit(19502),	-- Lightning Fists
							crit(19504),	-- Wildfire Spark
							crit(19506),	-- Arcane Velocity
							crit(19507),	-- Arcane Resonance
						}),
					},
				}),
				e(682, {	-- Gara'jal the Spiritbinder
					["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
					["groups"] = {
						ach(7056),	-- Sorry, Were You Looking for This?
					},
				}),
				e(687, {	-- The Spirit Kings
					["crs"] = {
						60708,	-- Meng the Demented
						60709,	-- Qiang the Merciless
						60710,	-- Subetai the Swift
						60701,	-- Zian of the Endless Shadow
					},
					["groups"] = {
						ach(6687),	-- Getting Hot In Here
					},
				}),
				e(726, {	-- Elegon
					["crs"] = { 60410 },	-- Elegon
					["groups"] = {
						ach(6686),	-- Straight Six
						i(87777),	-- Astral Cloud Serpent (MOUNT!)
					},
				}),
				e(677, {	-- Will of the Emperor
					["crs"] = {
						60400,	-- Jan-xi <Emperor's Open Hand>
						60399,	-- Qin-xi <Emperor's Closed Fist>
					},
					["groups"] = {
						ach(6455),	-- Show Me Your Moves!
						ach(6954, {	-- Ahead of the Curve: Will of the Emperor
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
							-- #endif
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				["ignoreBonus"] = true,
				["groups"] = {
					e(679, {	-- The Stone Guard
						["crs"] = {
							60047,	-- Amethyst Guardian
							60051,	-- Cobalt Guardian
							60043,	-- Jade Guardian
							59915,	-- Jasper Guardian
						},
						["groups"] = {
							i(85922),	-- Beads of the Mogu'shi
							i(85979),	-- Cape of Three Lanterns
							i(89768),	-- Claws of Amethyst
							i(85924),	-- Dagger of the Seven Stars
							i(85975),	-- Heavenly Jade Greatboots
							i(85978),	-- Jade Dust Leggings
							i(85925),	-- Jasper Clawfeet
							i(89767),	-- Ruby-Linked Girdle
							i(85976),	-- Sixteen-Fanged Crown
							i(86134),	-- Star-Stealer Waistguard
							i(85977),	-- Stonebound Cinch
							i(89766),	-- Stonefang Chestguard
							i(85926),	-- Stoneflesh Leggings
							i(85923),	-- Stonemaw Armguards
						},
					}),
					e(689, {	-- Feng the Accursed
						["crs"] = { 60009 },	-- Feng the Accursed
						["groups"] = {
							i(85986),	-- Amulet of Seven Curses
							i(86082),	-- Arrow Breaking Windcloak
							i(85983),	-- Bracers of Six Oxen
							i(85987),	-- Chain of Shadow
							i(85985),	-- Cloak of Peacock Feathers
							i(89424),	-- Fan of Fiery Winds
							i(89802),	-- Feng's Seal of Binding
							i(89803),	-- Feng's Ring of Dreams
							i(85989),	-- Hood of Cursed Dreams
							i(85990),	-- Imperial Ghostbinder's Robes
							i(85988),	-- Legplates of Sagacious Shadows
							i(85984),	-- Nullification Greathelm
							i(85982),	-- Tomb Raider's Girdle
							i(85980),	-- Wildfire Worldwalkers
						},
					}),
					e(682, {	-- Gara'jal the Spiritbinder
						["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						["groups"] = {
							i(86027),	-- Bindings of Ancient Spirits
							i(89817),	-- Bonded Soul Bracers
							i(86038),	-- Circuit of the Frail Soul
							i(85996),	-- Eye of the Ancient Spirit
							i(85993),	-- Fetters of Death
							i(85994),	-- Gara'kal, Fist of the Spiritbinder
							i(86040),	-- Leggings of Imprisoned Will
							i(85995),	-- Netherrealm Shoulderpads
							i(85997),	-- Sandals of the Severed Soul
							i(86041),	-- Shadowsummoner Spaulders
							i(85992),	-- Sollerets of Spirit Splitting
							i(85991),	-- Soulgrasp Choker
							i(86039),	-- Spaulders of the Divided Mind
						},
					}),
					e(687, {	-- The Spirit Kings
						["crs"] = {
							60708,	-- Meng the Demented
							60709,	-- Qiang the Merciless
							60710,	-- Subetai the Swift
							60701,	-- Zian of the Endless Shadow
						},
						["groups"] = {
							i(86047),	-- Amulet of the Hidden Kings
							i(86127),	-- Bracers of Dark Thoughts
							i(89818),	-- Bracers of Violent Meditation
							i(86076),	-- Breastplate of the Kings' Guard
							i(86086),	-- Girdle of Delirious Visions
							i(86129),	-- Hood of Blind Eyes
							i(86084),	-- Meng's Treads of Insanity
							i(89819),	-- Mindshard Drape
							i(86071),	-- Screaming Tiger, Qiang's Unbreakable Polearm
							i(86080),	-- Shoulderguards of the Unflanked
							i(86075),	-- Steelskin, Qiang's Impervious Shield
							i(86081),	-- Subetai's Pillaging Leggings
							i(86128),	-- Undying Shadow Grips
							i(86083),	-- Zian's Choker of Coalesced Shadow
						},
					}),
					e(726, {	-- Elegon
						["crs"] = { 60410 },	-- Elegon
						["groups"] = {
							i(89824),	-- Band of Bursting Novas
							i(86132),	-- Bottle of Infinite Stars
							i(86136),	-- Chestguard of Total Annihilation
							i(89821),	-- Crown of Keening Stars
							i(86130),	-- Elegion, the Fanged Crescent
							i(89822),	-- Galaxyfire Girdle
							i(86133),	-- Light of the Cosmos
							i(86139),	-- Orbital Belt
							i(86138),	-- Phasewalker Striders
							i(86141),	-- Shoulders of Empyreal Focus
							i(86135),	-- Starcrusher Gauntlets
							i(86140),	-- Starshatter
							i(86137),	-- Torch of the Celestial Spark
							i(86131),	-- Vial of Dragon's Blood
						},
					}),
					e(677, {	-- Will of the Emperor
						["crs"] = {
							60400,	-- Jan-xi <Emperor's Open Hand>
							60399,	-- Qin-xi <Emperor's Closed Fist>
						},
						["groups"] = {
							i(89823),	-- Chestguard of Eternal Vigilance
							i(86146),	-- Crown of Opportunistic Strikes
							i(89820),	-- Dreadeye Gaze
							i(89825),	-- Enameled Grips of Solemnity
							i(86142),	-- Fang Kung, Spark of Titans
							i(87827),	-- Grips of Terra Cotta
							i(86151),	-- Hood of Focused Energy
							i(86145),	-- Jang-xi's Devastating Legplates
							i(86144),	-- Lei Shen's Final Orders
							i(86150),	-- Magnetized Leggings
							i(86147),	-- Qin-xi's Polarizing Seal
							i(86149),	-- Spaulders of the Emperor's Rage
							i(86148),	-- Tihan, Scepter of the Sleeping Emperor
							i(86152),	-- Worldwaker Cabochon
						},
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				["ignoreBonus"] = true,
				["groups"] = {
					e(679, {	-- The Stone Guard
						["crs"] = {
							60047,	-- Amethyst Guardian
							60051,	-- Cobalt Guardian
							60043,	-- Jade Guardian
							59915,	-- Jasper Guardian
						},
						["groups"] = {
							ach(6719),	-- Heroic: Stone Guard
							i(87016),	-- Beads of the Mogu'shi
							i(87018),	-- Cape of Three Lanterns
							i(89931),	-- Claws of Amethyst
							i(87012),	-- Dagger of the Seven Stars
							i(87021),	-- Heavenly Jade Greatboots
							i(87017),	-- Jade Dust Leggings
							i(87015),	-- Jasper Clawfeet
							i(89930),	-- Ruby-Linked Girdle
							i(87020),	-- Sixteen-Fanged Crown
							i(87060),	-- Star-Stealer Waistguard
							i(87019),	-- Stonebound Cinch
							i(89929),	-- Stonefang Chestguard
							i(87013),	-- Stoneflesh Leggings
							i(87014),	-- Stonemaw Armguards
						},
					}),
					e(689, {	-- Feng the Accursed
						["crs"] = { 60009 },	-- Feng the Accursed
						["groups"] = {
							ach(6720),	-- Heroic: Feng the Accursed
							i(87028),	-- Amulet of Seven Curses
							i(87044),	-- Arrow Breaking Windcloak
							i(87025),	-- Bracers of Six Oxen
							i(87030),	-- Chain of Shadow
							i(87026),	-- Cloak of Peacock Feathers
							i(89425),	-- Fan of Fiery Winds
							i(89932),	-- Feng's Seal of Binding
							i(89933),	-- Feng's Ring of Dreams
							i(87029),	-- Hood of Cursed Dreams
							i(87027),	-- Imperial Ghostbinder's Robes
							i(87031),	-- Legplates of Sagacious Shadows
							i(87024),	-- Nullification Greathelm
							i(87022),	-- Tomb Raider's Girdle
							i(87023),	-- Wildfire Worldwalkers
						},
					}),
					e(682, {	-- Gara'jal the Spiritbinder
						["crs"] = { 60143 },	-- Gara'jal the Spiritbinder
						["groups"] = {
							ach(6721),	-- Heroic: Gara'jal the Spiritbinder
							i(87043),	-- Bindings of Ancient Spirits
							i(89934),	-- Bonded Soul Bracers
							i(87040),	-- Circuit of the Frail Soul
							i(87039),	-- Eye of the Ancient Spirit
							i(87034),	-- Fetters of Death
							i(87032),	-- Gara'kal, Fist of the Spiritbinder
							i(87042),	-- Leggings of Imprisoned Will
							i(87033),	-- Netherrealm Shoulderpads
							i(87037),	-- Sandals of the Severed Soul
							i(87038),	-- Shadowsummoner Spaulders
							i(87035),	-- Sollerets of Spirit Splitting
							i(87036),	-- Soulgrasp Choker
							i(87041),	-- Spaulders of the Divided Mind
						},
					}),
					e(687, {	-- The Spirit Kings
						["crs"] = {
							60708,	-- Meng the Demented
							60709,	-- Qiang the Merciless
							60710,	-- Subetai the Swift
							60701,	-- Zian of the Endless Shadow
						},
						["groups"] = {
							ach(6722),	-- Heroic: Four Kings
							i(87045),	-- Amulet of the Hidden Kings
							i(87054),	-- Bracers of Dark Thoughts
							i(89935),	-- Bracers of Violent Meditation
							i(87048),	-- Breastplate of the Kings' Guard
							i(87056),	-- Girdle of Delirious Visions
							i(87051),	-- Hood of Blind Eyes
							i(87055),	-- Meng's Treads of Insanity
							i(89936),	-- Mindshard Drape
							i(87046),	-- Screaming Tiger, Qiang's Unbreakable Polearm
							i(87049),	-- Shoulderguards of the Unflanked
							i(87050),	-- Steelskin, Qiang's Impervious Shield
							i(87047),	-- Subetai's Pillaging Leggings
							i(87052),	-- Undying Shadow Grips
							i(87053),	-- Zian's Choker of Coalesced Shadow
						},
					}),
					e(726, {	-- Elegon
						["crs"] = { 60410 },	-- Elegon
						["groups"] = {
							ach(6723),	-- Heroic: Elegon
							i(89937),	-- Band of Bursting Novas
							i(87057),	-- Bottle of Infinite Stars
							i(87058),	-- Chestguard of Total Annihilation
							i(89939),	-- Crown of Keening Stars
							i(87062),	-- Elegion, the Fanged Crescent
							i(89938),	-- Galaxyfire Girdle
							i(87065),	-- Light of the Cosmos
							i(87064),	-- Orbital Belt
							i(87067),	-- Phasewalker Striders
							i(87068),	-- Shoulders of Empyreal Focus
							i(87059),	-- Starcrusher Gauntlets
							i(87061),	-- Starshatter
							i(87066),	-- Torch of the Celestial Spark
							i(87063),	-- Vial of Dragon's Blood
						},
					}),
					e(677, {	-- Will of the Emperor
						["crs"] = {
							60400,	-- Jan-xi <Emperor's Open Hand>
							60399,	-- Qin-xi <Emperor's Closed Fist>
						},
						["groups"] = {
							ach(6724, {	-- Heroic: Will of the Emperor
								title(204),	-- , Delver of the Vaults
							}),
							ach(7485, {	-- Cutting Edge: Will of the Emperor
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
								-- #if MOP
								["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
								-- #endif
							}),
							ach(6675),	-- Heroic: Will of the Emperor Guild Run
							ach(6680, {	-- Realm First! Will of the Emperor
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
								-- #if MOP
								["OnUpdate"] = CUTTING_EDGE_ONUPDATE;
								-- #endif
							}),
							i(89941),	-- Chestguard of Eternal Vigilance
							i(87070),	-- Crown of Opportunistic Strikes
							i(89940),	-- Dreadeye Gaze
							i(89942),	-- Enameled Grips of Solemnity
							i(87069),	-- Fang Kung, Spark of Titans
							i(87825),	-- Grips of Terra Cotta
							i(87073),	-- Hood of Focused Energy
							i(87071),	-- Jang-xi's Devastating Legplates
							i(87072),	-- Lei Shen's Final Orders
							i(87077),	-- Magnetized Leggings
							i(87075),	-- Qin-xi's Polarizing Seal
							i(87078),	-- Spaulders of the Emperor's Rage
							i(87074),	-- Tihan, Scepter of the Sleeping Emperor
							i(87076),	-- Worldwaker Cabochon
						},
					}),
				},
			}),
		},
	})),
})));
