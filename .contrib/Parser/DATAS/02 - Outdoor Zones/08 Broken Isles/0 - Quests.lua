---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		n(QUESTS, {
			["groups"] = {
				n(ACHIEVEMENTS, {	-- Achievements
					ach(11427, {	-- No Shellfish Endeavor (automated)
						i(143660),	-- Mrgrglhjorn (TOY!)
					}),
					ach(10877, {	-- Pillars of Creation
						crit(31588, {	-- Aegis of Aggramar
							["sourceQuest"] = 43349,	-- The Aegis of Aggramar
						}),
						crit(31589, {	-- Tidestone of Golganneth
							["sourceQuest"] = 42213,	-- Eye of Azshara: The Tidestone of Golganneth
						}),
						crit(36177, {	-- Eye of Aman'Thul
							["sourceQuest"] = 45420,	-- The Nighthold: The Eye of Aman'Thul
						}),
						crit(31590, {	-- Hammer of Khaz'goroth
							["sourceQuest"] = 42454,	-- The Hammer of Khaz'goroth
						}),
						crit(31591, {	-- Tears of Elune
							["sourceQuest"] = 40890,	-- The Tears of Elune
						}),
					}),
					ach(11186, {	-- Tehd & Marius' Excellent Adventure
						crit(32400, {		-- Azsuna
							["_quests"] = {
								42367,	-- Arkethrax
							},
						}),
						crit(32401, {		-- Azsuna
							["_quests"] = {
								42069,	-- Felwing
							},
						}),
						crit(32402, {		-- Azsuna
							["_quests"] = {
								38352,	-- Kazrok
							},
						}),
						crit(32403, {		-- Azsuna
							["_quests"] = {
								38212,	-- Brogozog
							},
						}),
						crit(32404),		-- Val'sharah
						crit(32405),		-- Highmountain
						crit(32406),		-- Stormheim
					}),
					ach(11189),		-- Variety is the Spice of Life
				}),
				header(HEADERS.Spell, 41341, {	-- Balance of Power
					["description"] = "The only known requirement to start this questline is the completion of your class campaign.",
					["maps"] = CLASS_HALL_MAPS,
					["groups"] = {
						q(43496, {	-- The Power Within
							["provider"] = { "n", 110768 },	-- Image of Kalec
							["description"] = "This quest is available if you *have* completed the quests at Azurewing Repose in Azsuna.",
							["classes"] = exclude(MAGE, ALL_CLASSES),
						}),
						q(43501, {	-- The Power Within
							["provider"] = { "n", 110768 },	-- Image of Kalec
							["description"] = "This quest is available if you *have not* completed the quests at Azurewing Repose in Azsuna.",
							["classes"] = exclude(MAGE, ALL_CLASSES),
						}),
						q(43503, {	-- The Power Within
							["provider"] = { "n", 108247 },	-- Image of Kalec
							["description"] = "This quest is available if you *have* completed the quests at Azurewing Repose in Azsuna.",
							["classes"] = { MAGE },
						}),
						q(43505, {	-- The Power Within
							["provider"] = { "n", 108247 },	-- Image of Kalec
							["altQuests"] = { 43503 },	-- The Power Within (this is the only version that doesn't autocomplete with the others when you turn one in)
							["description"] = "This quest is available if you have *not* completed the quests at Azurewing Repose in Azsuna.",
							["classes"] = { MAGE },
						}),
						q(40668, {	-- Eye of Azshara: The Heart of Zin-Azshari
							["provider"] = { "n", 100482 },	-- Senegos
							["sourceQuests"] = { 43496, 43501, 43503, 43505 },	-- The Power Within (4 versions)
							["coord"] = { 48.0, 25.7, AZSUNA },
							["maps"] = { 713 },	-- Eye of Azshara
						}),
						q(43514, {	-- A Vainglorious Past
							["provider"] = { "n", 100482 },	-- Senegos
							["sourceQuests"] = { 40668 },	-- Eye of Azshara: The Heart of Zin-Azshari
							["coord"] = { 48.0, 25.7, AZSUNA },
						}),
						q(43517, {	-- Darkheart Thicket: Fallen Power
							["provider"] = { "n", 100482 },	-- Senegos
							["sourceQuests"] = { 40668 },	-- Eye of Azshara: The Heart of Zin-Azshari
							["coord"] = { 48.0, 25.7, AZSUNA },
							["maps"] = { 733, },	-- Darkheart Thicket
						}),
						q(43518, {	-- Tempering Darkness
							["provider"] = { "n", 110773 },	-- Archmage Kalec <Kirin Tor>
							["sourceQuests"] = { 40668 },	-- Eye of Azshara: The Heart of Zin-Azshari
							["coord"] = { 48.0, 25.7, AZSUNA },
						}),
						q(43519, {	-- Lucid Strength
							["provider"] = { "n", 110773 },	-- Archmage Kalec <Kirin Tor>
							["sourceQuests"] = {
								43514,	-- A Vainglorious Past
								43517,	-- Darkheart Thicket: Fallen Power
								43518,	-- Tempering Darkness
							},
							["coord"] = { 48.0, 25.7, AZSUNA },
						}),
						q(43581, {	-- The Wisdom of Patience
							["provider"] = { "n", 100482 },	-- Senegos
							["sourceQuests"] = { 43519 },	-- Lucid Strength
							["coord"] = { 48.0, 25.7, AZSUNA },
							["u"] = REMOVED_FROM_GAME,
							-- NOTE: This quest was removed when Emerald Nightmare opened
						}),
						q(43520, {	-- The Emerald Nightmare: In Nightmares
							["provider"] = { "n", 110773 },	-- Archmage Kalec <Kirin Tor>
							["sourceQuests"] = {
								43519,	-- Lucid Strength
								43581,	-- The Wisdom of Patience
							},
							["coord"] = { 48.0, 25.7, AZSUNA },
							["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, },	-- The Emerald Nightmare
						}),
						q(43521, {	-- The Emerald Nightmare: Essence of Power
							["provider"] = { "n", 100482 },	-- Senegos
							["sourceQuests"] = {
								43519,	-- Lucid Strength
								43581,	-- The Wisdom of Patience
							},
							["coord"] = { 48.0, 25.7, AZSUNA },
							["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, },	-- The Emerald Nightmare
						}),
						q(43522, {	-- Essential Consumption
							["provider"] = { "n", 100482 },	-- Senegos
							["sourceQuests"] = { 43520 },	-- The Emerald Nightmare: Essence of Power
							["coord"] = { 48.0, 25.7, AZSUNA },
							["maps"] = { SURAMAR },
						}),
						q(43523, {	-- Repaid Debt
							["provider"] = { "n", 110773 },	-- Archmage Kalec
							["sourceQuests"] = { 43522 },	-- Essential Consumption
							["description"] = "This quest is available if you *have* completed the Moonguard Stronghold quests in Suramar.",
						}),
						q(43527, {	-- Saving the Guard
							["provider"] = { "n", 110773 },	-- Archmage Kalec
							["sourceQuests"] = { 43522 },	-- Essential Consumption
							["coord"] = { 48.1, 25.6, AZSUNA },
							["description"] = "This quest is available if you have *not* completed the Moonguard Stronghold quests in Suramar.",
						}),
						q(43937),	-- Seeking Refuge (Saving the Guard gives credit for this; not sure if it is obtainable on its own anymore)
						q(43938),	-- Focusing Our Efforts (Saving the Guard gives credit for this; not sure if it is obtainable on its own anymore)
						q(40673, {	-- Lost Knowledge
							["provider"] = { "n", 101083 },	-- Thalrenus Rivertree
							["sourceQuests"] = { 43527 },	-- Saving the Guard
							["coord"] = { 37.8, 47.3, SURAMAR },
						}),
						q(43525, {	-- Vault of the Wardens: Borrowing Without Asking
							["provider"] = { "n", 101083 },	-- Thalrenus Rivertree
							["sourceQuests"] = { 40673 },	-- Lost Knowledge
							["coord"] = { 37.8, 47.3, SURAMAR },
							["maps"] = { 710, 711, 712, },	-- Vault of the Wardens
						}),
						q(40675, {	-- The Arcway: Rite of the Captain
							["provider"] = { "n", 101080 },	-- Syrana Starweaver
							["sourceQuests"] = { 40673 },	-- Lost Knowledge
							["coord"] = { 37.9, 47.3, SURAMAR },
							["maps"] = { 749 },	-- The Arcway
						}),
						q(43524, {	-- Court of Stars: Literary Perfection
							["provider"] = { "n", 101082 },	-- Lothrius Mooncaller
							["sourceQuests"] = { 40673 },	-- Lost Knowledge
							["coord"] = { 37.9, 47.4, SURAMAR },
							["maps"] = { 761, 762, 763 },	-- Court of Stars
						}),
						q(40678, {	-- Twisted Power
							["provider"] = { "n", 101080 },	-- Syrana Starweaver
							["sourceQuests"] = {
								43524,	-- Court of Stars: Literary Perfection
								40675,	-- The Arcway: Rite of the Captain
								43525,	-- Vault of the Wardens: Borrowing Without Asking
							},
							["coord"] = { 37.9, 47.3, SURAMAR },
						}),
						q(43526, {	-- A True Test
							["provider"] = { "n", 101080 },	-- Syrana Starweaver
							["sourceQuests"] = { 40678 },	-- Twisted Power
							["coord"] = { 37.9, 47.3, SURAMAR },
						}),
						q(40603, {	-- Seeking the Valkyra
							["provider"] = { "n", 111826 },	-- Archmage Kalec
							["sourceQuests"] = { 43526 },	-- A True Test
							["coord"] = { 37.8, 47.4, SURAMAR },
							["maps"] = { STORMHEIM },
						}),
						q(40608, {	-- The Mark
							["provider"] = { "n", 100738 },	-- Ashildir
							["sourceQuest"] = 40603,	-- Seeking the Valkyra
							["coord"] = { 62.7, 68.1, STORMHEIM },
						}),
						q(40613, {	-- Maw of Souls: Retrieving the Svalnguard
							["provider"] = { "n", 100738 },	-- Ashildir
							["sourceQuest"] = 40608,	-- The Mark
							["coord"] = { 62.7, 68.1, STORMHEIM },
							["maps"] = { 706, 707, 708 },	-- Maw of Souls
						}),
						q(40614, {	-- A Feast Fit for Odyn
							["provider"] = { "n", 100738 },	-- Ashildir
							["sourceQuest"] = 40613,	-- Maw of Souls: Retrieving the Svalnguard
							["coord"] = { 62.7, 68.1, STORMHEIM },
							["maps"] = { AZSUNA, HIGHMOUNTAIN },
						}),
						q(40672, {	-- Neltharion's Lair: Presentation is Key
							["provider"] = { "n", 100738 },	-- Ashildir
							["sourceQuest"] = 40613,	-- Maw of Souls: Retrieving the Svalnguard
							["coord"] = { 62.7, 68.1, STORMHEIM },
							["maps"] = { 731 },	-- Neltharion's Lair
						}),
						q(40615, {	-- Halls of Valor: Odyn's Blessing
							["provider"] = { "n", 100738 },	-- Ashildir
							["sourceQuests"] = {
								40614,	-- A Feast Fit for Odyn
								40672,	-- Neltharion's Lair: Presentation is Key
							},
							["coord"] = { 62.7, 68.1, STORMHEIM },
							["maps"] = { 703, 704, 705 },	-- Halls of Valor
						}),
						q(43898, {	-- Preparing to Move
							["provider"] = { "n", 111814 },	-- Archmage Kalec
							["sourceQuest"] = 40615,	-- Halls of Valor: Odyn's Blessing
							["coord"] = { 62.5, 68.2, STORMHEIM },
							["maps"] = { SURAMAR },
						}),
						q(43528, {	-- Planning the Assault
							["provider"] = { "n", 111814 },	-- Archmage Kalec
							["sourceQuest"] = 43898,	-- Preparing to Move
							["coord"] = { 62.5, 68.2, STORMHEIM },
							["maps"] = { SURAMAR },
							["u"] = REMOVED_FROM_GAME,
							-- NOTE: This quest was removed when The Nighthold opened
						}),
						q(43530, {	-- The Nighthold: Delusions of Grandeur
							["provider"] = { "n", 101083 },	-- Thalrenus Rivertree
							["sourceQuests"] = {
								43898,	-- Preparing to Move
								43528,	-- Planning the Assault
							},
							["coord"] = { 37.8, 47.3, SURAMAR },
							["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },	-- The Nighthold
						}),
						q(43531, {	-- The Nighthold: Into the Nighthold
							["provider"] = { "n", 111826 },	-- Archmage Kalec
							["sourceQuest"] = 43898,	-- Preparing to Move
							["coord"] = { 37.8, 47.4, SURAMAR },
							["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },	-- The Nighthold
						}),
						q(43532, {	-- The Nighthold: Darkness Calls
							["provider"] = { "n", 111826 },	-- Archmage Kalec
							["sourceQuest"] = 43898,	-- Preparing to Move
							["coord"] = { 37.8, 47.4, SURAMAR },
							["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },	-- The Nighthold
						}),
						q(43533, {	-- Balance of Power
							["provider"] = { "n", 111826 },	-- Archmage Kalec
							["sourceQuests"] = {
								43530,	-- The Nighthold: Delusions of Grandeur
								43531,	-- Into the Nighthold
								43532,	-- The Nighthold: Darkness Calls
							},
							["coord"] = { 37.8, 47.4, SURAMAR },
							["groups"] = {
								cl(WARRIOR, {
									["classes"] = { WARRIOR },
									["groups"] = {
										artifact(805),
										artifact(669),
										artifact(164),
									},
								}),
								cl(PALADIN, {
									["classes"] = { PALADIN },
									["groups"] = {
										artifact(16),
										artifact(545),
										artifact(856),
									},
								}),
								cl(HUNTER, {
									["classes"] = { HUNTER },
									["groups"] = {
										artifact(219),
										artifact(462),
										artifact(481),
									},
								}),
								cl(ROGUE, {
									["classes"] = { ROGUE },
									["groups"] = {
										artifact(237),
										artifact(765),
										artifact(71),
									},
								}),
								cl(PRIEST, {
									["classes"] = { PRIEST },
									["groups"] = {
										artifact(735),
										artifact(753),
										artifact(255),
									},
								}),
								cl(DEATHKNIGHT, {
									["classes"] = { DEATHKNIGHT },
									["groups"] = {
										artifact(368),
										artifact(371),
										artifact(403),
									},
								}),
								cl(SHAMAN, {
									["classes"] = { SHAMAN },
									["groups"] = {
										artifact(310),
										artifact(682),
										artifact(781),
									},
								}),
								cl(MAGE, {
									["classes"] = { MAGE },
									["groups"] = {
										artifact(184),
										artifact(499),
										artifact(134),
									},
								}),
								cl(WARLOCK, {
									["classes"] = { WARLOCK },
									["groups"] = {
										artifact(198),
										artifact(329),
										artifact(818),
									},
								}),
								cl(MONK, {
									["classes"] = { MONK },
									["groups"] = {
										artifact(517),
										artifact(348),
										artifact(525),
									},
								}),
								cl(DRUID, {
									["classes"] = { DRUID },
									["groups"] = {
										artifact(419),
										artifact(54),
										artifact(434),
										artifact(277),
									},
								}),
								cl(DEMONHUNTER, {
									["classes"] = { DEMONHUNTER },
									["groups"] = {
										artifact(36),
										artifact(563),
									},
								}),
							},
						}),
					},
				}),
				n(113857, {	-- Light's Heart
					["icon"] = 236415,
					["lore"] = "Light's Heart is the sentience core of the naaru prime Xe'ra sent as a last resort by High Exarch Turalyon who battles on Argus, to be handed to Prophet Velen. It fell from the Felstorm along the coast of Suramar, in the Broken Isles.\n\nThe Order of the Silver Hand witnessed the event and informed Archmage Khadgar, who then tasked order leaders with recovering it before the Burning Legion did. It has since been kept safe in a class order hall.\n\nUnlocked by the Tear of Elune, Xe'ra communicates through it with the order leader in order to provide insight into the history of Illidan Stormrage. She revealed that Light's Heart was to serve as the vessel for Illidan Stormrage's rebirth. After Illidan's soul was put into a prism to keep it safe, it was brought to Light's Heart where the prism was \"seemingly consumed\". Light's Heart, with Illidan's soul inside, is then brought to Khadgar with instructions to call forth the vessel's power when Gul'dan attempts to summon Sargeras, thus releasing Illidan's soul into his body before Sargeras can possess his empty shell.",
					["maps"] = CLASS_HALL_MAPS,
					["groups"] = {
						q(44009, {	-- A Falling Star (non-Paladin)
							["provider"] = { "n", 90417 },	-- Archmage Khadgar
							["coord"] = { 28.9, 48.4, LEGION_DALARAN },
							["description"] = "The prerequisite for this quest is recruiting your class's first two champions, doing your first short mission, and recruiting your first troops.",	-- i also sent out my first 1-hour mission after the 2-minute one, not sure if that's required.  not sure whether paladin's requirements are different, so i didn't add the description to their version of the quest.
							["classes"] = exclude(PALADIN, ALL_CLASSES),
						}),
						q(44257, {	-- A Falling Star (Paladin)
							["provider"] = { "n", 90417 },	-- Archmage Khadgar
							["sourceQuests"] = { 42866 },	-- A Sign From The Sky
							["coord"] = { 28.9, 48.4, LEGION_DALARAN },
							["classes"] = { PALADIN },
						}),
						q(44004, {	-- Bringer of the Light
							["provider"] = { "n", 112130 },	-- Archmage Khadgar
							["sourceQuests"] = {
								44009,	-- A Falling Star (non-Paladin version)
								44257,	-- A Falling Star (Paladin version)
							},
							["coord"] = { 27.5, 35.8, AEGWYNNS_GALLERY },
							["description"] = "This quest sends you to a scenario involving The Exodar and Prophet Velen. Before you kill the final boss, make sure to do everything contained within!",
							["maps"] = { 775, 776 },	-- Scenario: In Defense of the Exodar
							["groups"] = {
								i(140614),	-- Amice of Steadfast Allies
								i(140610),	-- Wristwraps of the Grieving Prophet
								i(140615),	-- Felstalking Shoulders
								i(140613),	-- Bracers of Lost Lineage
								i(140616),	-- Annihilator's Mantle
								i(140612),	-- Bracers of the Fallen
								i(140617),	-- Rakeesh's Pauldron
								i(140611),	-- Fel Commander's Vambraces
								n(110486, {	-- Huk'roth the Huntmaster
									["altQuests"] = { 44004 },	-- Bringer of the Light
									["questID"] = 43480,
									["groups"] = {
										i(140533),	-- Huntmaster's Injector
									},
								}),
								q(43705, {	-- Nobundo's Last Stand
									["provider"] = { "n", 110695 },	-- Farseer Nobundo
									["altQuests"] = { 44004 },	-- Bringer of the Light
									["description"] = "This quest can only be completed during the \"In Defense of the Exodar\" scenario. If you want to complete this optional quest, you MUST pick it up before completing the Step 2 objectives (Portals and Terrified Citizens) or else it will not be available!",
									["groups"] = {
										i(140608),	-- Boots of the Broken
										i(140604),	-- Britches of Elemental Protection
										i(140606),	-- Earth-Crushing Sabatons
										i(140602),	-- Earth-Plate Legguards
										i(140605),	-- Earthmender's Pantaloons
										i(140607),	-- Elementally Infused Boots
										i(140603),	-- Nobundo's Earthshaper Kilt
										i(140609),	-- Slippers of the Earthen Healer
									},
								}),
								q(43483),	-- Fel Annihilation, unavailable afterwards
							},
						}),
						q(44153, {	-- Light's Charge
							["provider"] = { "n", 90417 },	-- Archmage Khadgar
							["sourceQuest"] = 44004,	-- Bringer of the Light
							["coord"] = { 28.7, 48.5, LEGION_DALARAN },
						}),
						q(44337, {	-- Goddess Watch Over You
							["provider"] = { "n", 113686 },	-- Archmage Khadgar
							["sourceQuest"] = 44153,	-- Light's Charge
							["description"] = "There are two versions of this quest: One for players that have already finished the quest chain to recover the Tears of Elune and one for those that haven't yet.\n\nThis one is for players that have.",
						}),
						q(44338, {	-- Goddess Watch Over You
							["provider"] = { "n", 113686 },	-- Archmage Khadgar
							["sourceQuest"] = 44153,	-- Light's Charge
							["description"] = "There are two versions of this quest: One for players that have already finished the quest chain to recover the Tears of Elune and one for those that haven't yet.\n\nThis one is for players that haven't.",
						}),
						q(44448, {	-- In the House of Light and Shadow
							["provider"] = { "n", 90417 },	-- Archmage Khadgar
							["sourceQuests"] = {
								40890,	-- The Tears of Elune (actually required to complete Goddess Watch Over You)
								44337,	-- Goddess Watch Over You (if you completed Val'sharah)
								44338,	-- Goddess Watch Over You (if you didn't complete Val'sharah)
							},
							["coord"] = { 28.9, 48.4, LEGION_DALARAN },
							["groups"] = { i(141351) },	-- Tear of Elune (QI!)
						}),
						q(44464, {	-- Awakenings
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 44448,	-- In the House of Light and Shadow
						}),
						q(44466, {	-- An Unclear Path
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 44464,	-- Awakenings
						}),
						q(44479, {	-- Ravencrest's Legacy
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 44466,	-- An Unclear Path
							["description"] = "This quest sends you to a scenario involving Kur'talos Ravencrest, Illidan Stormrage, and the ill-fated Moonguard. Before you kill the final boss, make sure to do everything contained within!",
							["maps"] = { 793 },		-- Scenario: Black Rook Hold
							["groups"] = {
								q(44414, {	-- Felspawns of Lothros
									["qgs"] = {
										113361,	-- Captain Jarod Shadowsong
										113829,	-- Captain Jarod Shadowsong
									},
									["altQuests"] = { 44479 },	-- Ravencrest's Legacy
									["sourceQuest"] = 44479,	-- Ravencrest's Legacy
									["description"] = "This quest can only be completed while in the Ravencrest's Legacy scenario.",
								}),
								q(44415, {	-- The Red Axe
									["qgs"] = {
										113361,	-- Captain Jarod Shadowsong
										113829,	-- Captain Jarod Shadowsong
									},
									["altQuests"] = { 44479 },	-- Ravencrest's Legacy
									["sourceQuest"] = 44414,	-- Felspawns of Lothros
									["description"] = "This quest can only be completed while in the Ravencrest's Legacy scenario.",
								}),
								q(44416, {	-- Hunter of Night
									["provider"] = { "n", 113355 },	-- Broxigar the Red
									["altQuests"] = { 44479 },	-- Ravencrest's Legacy
									["sourceQuest"] = 44415,	-- The Red Axe
									["description"] = "This quest can only be completed while in the Ravencrest's Legacy scenario.",
									["groups"] = {
										i(139932),	-- Belt of Shadowsong
										i(140002),	-- Broxigar's Girdle
										i(139902),	-- Defiler's Cord
										i(139962),	-- Pit Lord's Chain
										i(121802),	-- Ring of the Displaced Mage
									},
								}),
								i(139994),	-- Breastplate of the Guard
								i(139903),	-- Felblaze Handwraps
								i(139942),	-- Felspawn Gloves
								i(139954),	-- Moon Guard Robes
								i(139984),	-- Ravencrest Chainmail
								i(139920),	-- Robes of Elune
								i(139995),	-- Siegebreaker's Gauntlets
								i(139963),	-- Skyguard Grips
							},
						}),
						q(44480, {	-- In My Father's House
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 44479,	-- Ravencrest's Legacy
						}),
						q(44496, {	-- Destiny Unfulfilled
							["sourceQuest"] = 44480,	-- In My Father's House
							["description"] = "There are three versions of this quest: One for Demon Hunters, one for players that have defeated Illidan in the Black Temple, and one for players that haven't.\n\nThis one is for players that haven't killed him.",
							["groups"] = {
								i(121745),	-- Helm of the Betrayed
								i(139909),	-- Illidari High Lord's Cowl
								i(140005),	-- Impenetrable Faceplate
								i(139946),	-- Purified Vision of Sargeras
							},
						}),
						q(44497, {	-- Destiny Unfulfilled
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 44480,	-- In My Father's House
							["description"] = "There are three versions of this quest: One for Demon Hunters, one for players that have defeated Illidan in the Black Temple, and one for players that haven't.\n\nThis one is for Hunters and Demon Hunters only.",
							["classes"] = { HUNTER, DEMONHUNTER },
							["groups"] = {
								i(121745),	-- Helm of the Betrayed
								i(139909),	-- Illidari High Lord's Cowl
								i(140005),	-- Impenetrable Faceplate
								i(139946),	-- Purified Vision of Sargeras
							},
						}),
						q(44481, {	-- Destiny Unfulfilled
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 44480,	-- In My Father's House
							["description"] = "There are three versions of this quest: One for Demon Hunters, one for players that have defeated Illidan in the Black Temple, and one for players that haven't.\n\nThis one is for players that have defeated him.",
							["groups"] = {
								i(121745),	-- Helm of the Betrayed
								i(139909),	-- Illidari High Lord's Cowl
								i(140005),	-- Impenetrable Faceplate
								i(139946),	-- Purified Vision of Sargeras
							},
						}),
						q(45174, {	-- The Hunt for Illidan Stormrage
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuests"] = { 44496, 44497, 44481 },	-- Destiny Unfulfilled (any of the three)
						}),
						q(45175, {	-- Soul Prism of the Illidari
							["provider"] = { "n", 89398 },	-- Allari the Souleater <Illidari>
							["sourceQuest"] = 45174,	-- The Hunt for Illidan Stormrage
							["groups"] = {
								i(139930),	-- Belt of the Netherwalker
								i(139978),	-- Boots of the Illidari Crusade
								i(139933),	-- Footpads of the Illidari Crusade
								i(140000),	-- Girdle of the Nethertouched
								i(139900),	-- Nethertether Cord
								i(139960),	-- Netherwrested Chain Belt
								i(140014),	-- Sabatons of the Illidari Crusade
								i(139921),	-- Slippers of the Illidari Crusade
							},
						}),
						q(45176, {	-- Trial of Valor: The Once and Future Lord of Shadows
							["provider"] = { "n", 89398 },	-- Allari the Souleater <Illidari>
							["sourceQuest"] = 45175,	-- Soul Prism of the Illidari
							["maps"] = { 703, 704, 705 },	-- Halls of Valor
							["groups"] = {
								i(143661),	-- Soul Prism of the Illidari (QI!)
								i(139988),	-- Blazing Purpose Mantle
								i(140021),	-- Crusader's Inferno Pauldrons
								i(139941),	-- Gloves of the Shadow's Return
								i(139964),	-- Grips of Death's Grasp
								i(139904),	-- Handwraps of Soulwringing
								i(139958),	-- Inferno's March Shoulderpads
								i(139928),	-- Netherworld's March Amice
								i(139996),	-- The Soulbinder's Gauntlets
							},
						}),
						q(45177, {	-- The Nighthold
							["provider"] = { "n", 113857 },	-- Light's Heart
							["sourceQuest"] = 45176,	-- Trial of Valor: The Once and Future Lord of Shadows
							["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },	-- The Nighthold
						}),
					},
				}),
				header(HEADERS.Item, 135479, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } }, {	-- Lost Mail
					o(247797, {	-- Lost Mail
						["maps"] = {
							LEGION_DALARAN, LEGION_THE_UNDERBELLY, AEGWYNNS_GALLERY,
						},
						["groups"] = {
							i(134859),	-- Lost Mail
						},
					}),
					q(41368, {	-- Lost Mail
						["provider"] = { "i", 134859 },	-- Lost Mail
						["description"] = "To get this quest, you must find a small envelope near a mailbox in Broken Isles Dalaran.  It can spawn in multiple places and has a long respawn timer.  If you don't want to wait, you can try to find Lost Mail for sale on the Auction House.",
					}),
					q(41411, {	-- Lost Mail
						["provider"] = { "i", 135479 },	-- Lost Mail
						["description"] = "If you don't want to camp out to start the questline, you can try to find Lost Mail for sale on the Auction House.  (Players who complete the questline will get a piece of mail that can be traded or sold.)",
					}),
					q(46278, {	-- Return to Sender
						["provider"] = { "n", 103976 },	-- The Postmaster
						["sourceQuests"] = { 41368, 41411 },	-- Lost Mail
						["coord"] = { 33.0, 31.7, LEGION_DALARAN },
						["description"] = "After turning in the Lost Mail to Madam Goya in the Underbelly, you'll receive a letter from the Postmaster instructing you to report for duty!  Use the Mail Tube at the coordinates provided to head down to the mail room.",
					}),
					q(41397, {	-- A Huge Package
						["provider"] = { "n", 103976 },	-- The Postmaster
						["sourceQuests"] = { 46278 },	-- Return to Sender
						["coord"] = { 38.6, 40.8, LEGION_DALARAN },
					}),
					q(41367, {	-- Priority Delivery
						["provider"] = { "n", 103976 },	-- The Postmaster
						["sourceQuests"] = { 41397 },	-- A Huge Package
						["coord"] = { 38.6, 40.8, LEGION_DALARAN },
						["maps"] = { 701 },	-- Icecrown Citadel (scenario version)
						["groups"] = {
							i(134857),	-- Invincible's Reins (QI!)
						},
					}),
					q(41394, {	-- Service with a Smile
						["provider"] = { "n", 52562 },	-- Johnny Awesome
						["sourceQuests"] = { 41367 },	-- Priority Delivery
						["coord"] = { 68.6, 73.1, FERALAS },
						["groups"] = {
							i(135464),	-- Bulging Sack of Gold (QI!)
							i(135463),	-- Invincible's Reins (QI!)
						},
					}),
					q(41395, {	-- Due Reward
						["provider"] = { "n", 52562 },	-- Johnny Awesome
						["sourceQuests"] = { 41394 },	-- Service with a Smile
						["coord"] = { 68.6, 73.1, FERALAS },
					}),
					q(50247, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 } }, {	-- The Mail Must Flow
						["provider"] = { "n", 103976 },	-- The Postmaster
						["sourceQuests"] = { 41395 },	-- Due Reward
						["description"] = "After you finish performing menial tasks for Johnny Awesome, you'll receive another letter from the Postmaster requesting your presence in the mail room.",
						["groups"] = {
							ach(12416),	-- The Total Package
						},
					})),
					ach(12431, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 } }, {	-- Post Haste
						["sourceQuests"] = { 50247 },	-- The Mail Must Flow
						["description"] = "Once you've done the last quest, you can speak to the Postmaster again to offer more assistance sorting letters.",
						["groups"] = {
							i(156721),	-- Mailemental (PET!)
							i(156836, {	-- Bulging Package
								i(156833),	-- Katy's Stampwhistle (TOY!)
								i(135479),	-- Lost Mail
							}),
						},
					})),
					ach(12439, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 } }, {	-- Priority Mail
						["sourceQuests"] = { 50247 },	-- The Mail Must Flow
						["description"] = "Once you've done the last quest, you can speak to the Postmaster again to offer more assistance sorting letters.",
						["groups"] = {
							title(372),	-- Postmaster <Name>
						},
					})),
				})),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		n(QUESTS, {
			q(43511),	-- Kalec Arrives - triggered when turning in "The Power Within" at Azurewing Repose (starting Balance of Power)
			q(43775),	-- Kalec Arrives - triggered when completing Seeking the Valkyra (40603) in the Balance of Power questline
			q(40627),	-- Triggers after looting heart for Halls of Valor: Odyn's Blessing (40615) in the Balance of Power questline
			q(43529),	-- Triggered when turning in Preparing to Move (43898) in the Balance of Power questline
		}),
	}),
})));