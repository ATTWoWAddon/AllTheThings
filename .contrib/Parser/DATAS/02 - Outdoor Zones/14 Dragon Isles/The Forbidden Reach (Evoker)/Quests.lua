---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	m(THE_FORBIDDEN_REACH_DRACTHYR, bubbleDownSelf({ ["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE } }, {
		n(QUESTS, {
			header(HEADERS.Achievement, 15325, {	-- Dracthyr, Awaken
				------ Chapter 1 ------
				q(64864),	-- Awaken, Dracthyr
				q(64863, {	-- Arcane Guardians
					["sourceQuests"] = { 64864 },	-- Awaken, Dracthyr
					["provider"] = { "n", 181596 },	-- Dervishian
					["coord"] = { 33.0, 80.7, 2109 },
				}),
				q(64865, {	-- Gear Up
					["sourceQuests"] = { 64864 },	-- Awaken, Dracthyr
					["provider"] = { "n", 181056 },	-- Scalecommander Azurathel
					["coord"] = { 32.9, 81.5, 2109 },
					["groups"] = {
						i(193481),	-- Emblazoned Ruby Staff
						o(370528, {	-- Crate of Warscale Armor
							["coord"] = { 38.7, 51.6, 2109},
							["groups"] = {
								i(187853),	-- Crate of Warscales (QI!)
							},
						}),
						o(370526, {	-- Rations
							["coord"] = { 34.4, 61.6, 2109 },
							["groups"] = {
								i(187855),	-- Decayed Rations (QI!)
							},
						}),
						o(370527, {	-- Weapon Rack
							["coord"] = { 44.9, 66.2, 2109 },
							["groups"] = {
								i(187852),	-- Stack of Weapons (QI!)
							},
						}),
					},
				}),
				q(64866, {	-- Into the Cauldron
					["sourceQuests"] = {
						64863,	-- Arcane Guardians
						64865,	-- Gear Up
					},
					["provider"] = { "n", 181594 },	-- Scalecommander Azurathel
					["coord"] = { 46.5, 57.1, 2109 },
					["groups"] = {
						i(194422),	-- Crimson Dracthyr's Drape
					},
				}),
				q(64871, {	-- The Dragon at the Door
					["sourceQuests"] = { 64866 },	-- Into the Cauldron
					["provider"] = { "n", 186883 },	-- Scalecommander Cindrethresh
					["coord"] = { 62.3, 36.5, 2109 },
					["groups"] = {
						i(193914),	-- Crystalline Lapis
					},
				}),
				------ Chapter 2 ------
				q(65615, {	-- Arcane Intrusion
					["sourceQuests"] = { 64871 },	-- The Dragon at the Door
					["provider"] = { "n", 182251 },	-- Scalecommander Azurathel
					["coord"] = { 44.1, 61.4, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191807),	-- Crimson Dracthyr Battlegear Helm
					},
				}),
				q(64872, {	-- The Fire Within
					["sourceQuests"] = { 64871 },	-- The Dragon at the Door
					["provider"] = { "n", 184269 },	-- Scalecommander Cindrethresh
					["coord"] = { 44.4, 61.5, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(64873, {	-- Stretch Your Wings
					["sourceQuests"] = {
						65615,	-- Arcane Intrusion
						64872,	-- The Fire Within
					},
					["provider"] = { "n", 181054 },	-- Scalecommander Emberthal
					["coord"] = { 44.5, 61.1, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(195044),	-- Try Again (QI!)
					},
				}),
				q(65036, {	-- Train Like We Fight
					["sourceQuests"] = { 64873 },	-- Stretch Your Wings
					["provider"] = { "n", 192889 },	-- Dervishian
					["coord"] = { 44.7, 57.6, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				------ Chapter 3 ------
				q(65060, {	-- Caldera of the Menders
					["sourceQuests"] = { 65036 },	-- Train Like We Fight
					["provider"] = { "n", 181054 },	-- Scalecommander Emberthal
					["coord"] = { 44.2, 61.2, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(65063, {	-- Into the Hive
					["sourceQuests"] = { 65060 },	-- Caldera of the Menders
					["provider"] = { "n", 184214 },	-- Scalecommander Cindrethresh
					["coord"] = { 18.8, 15.8, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191805),	-- Crimson Dracthyr Battlegear Hauberk
					},
				}),
				q(65073, {	-- A Toxic Problem
					["sourceQuests"] = { 65063 },	-- Into the Hive
					["provider"] = { "n", 184163 },	-- Scalecommander Viridia
					["coord"] = { 20.1, 19.1, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(187948),	-- Toxin Gland (QI!)
					},
				}),
				q(65074, {	-- Easy Prey
					["sourceQuests"] = { 65063 },	-- Into the Hive
					["provider"] = { "n", 184214 },	-- Scalecommander Cindrethresh
					["coord"] = { 20.2, 19.0, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191810),	-- Crimson Dracthyr Battlegear Belt
					},
				}),
				q(65307, {	-- Mercy First
					["sourceQuests"] = {
						65073,	-- A Toxic Problem
						65074,	-- Easy Prey
					},
					["provider"] = { "n", 184163 },	-- Scalecommander Viridia
					["coord"] = { 20.1, 19.1, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191806),	-- Crimson Dracthyr Battlegear Grips
					},
				}),
				q(66324, {	-- Never Forgotten
					["sourceQuests"] = { 65307 },	-- Mercy First
					["provider"] = { "n", 184163 },	-- Scalecommander Viridia
					["coord"] = { 20.1, 19.1, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(194109),	-- Verdant Dracthyr's Band
						i(191729),	-- Toxin Antidote
						i(191730),	-- Horn Signet of Tenezeth (QI!)
						i(191731),	-- Horn Signet of Rethenash (QI!)
						i(191732),	-- Horn Signet of Katrinasa (QI!)
						i(191733),	-- Report: Infestation (QI!)
						i(191752),	-- Horn Signet (QI!)
					},
				}),
				q(65075, {	-- The Healing Wings
					["sourceQuests"] = { 66324 },	-- Never Forgotten
					["provider"] = { "n", 184163 },	-- Scalecommander Viridia
					["coord"] = { 20.1, 19.1, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191812),	-- Crimson Dracthyr Battlegear Treads
					},
				}),
				------ Chapter 4 ------
				q(72263, {	-- Cavalry Has Its Place
					["sourceQuests"] = { 65075 },	-- The Healing Wings
					["provider"] = { "n", 198429 },	-- Treysh
					["coord"] = { 45.3, 61.3, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(201720),	-- Bronze Vorquin (MOUNT!)
						i(201702),	-- Crimson Vorquin (MOUNT!)
						i(201719),	-- Obsidian Vorquin (MOUNT!)
						i(201704),	-- Sapphire Vorquin (MOUNT!)
						i(201724),	-- Dracthyr Token of Cavalry Excellence
					},
				}),
				q(65045, {	-- Stormsunder Crater
					["sourceQuests"] = { 65075 },	-- The Healing Wings
					["provider"] = { "n", 181054 },	-- Scalecommander Emberthal
					["coord"] = { 44.2, 61.2, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(65050, {	-- Conjured Army
					["sourceQuests"] = { 65045 },	-- Stormsunder Crater
					["provider"] = { "n", 182274 },	-- Scalecommander Azurathel
					["coord"] = { 70.4, 64.4, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(65049, {	-- Tangle with the Tarasek
					["sourceQuests"] = { 65045 },	-- Stormsunder Crater
					["provider"] = { "n", 182274 },	-- Scalecommander Azurathel
					["coord"] = { 70.4, 64.4, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191811),	-- Crimson Dracthyr Battlegear Bracers
					},
				}),
				q(65046, {	-- The Primalists
					["sourceQuests"] = { 65045 },	-- Stormsunder Crater
					["provider"] = { "n", 186210 },	-- Dervishian
					["coord"] = { 70.4, 64.6, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(65052, {	-- The Ebon Scales
					["sourceQuests"] = {
						65050,	-- Conjured Army
						65049,	-- Tangle with the Tarasek
						65046,	-- The Primalists
					},
					["provider"] = { "n", 182275 },	-- Scalecommander Azurathel
					["coord"] = { 79.6, 62.3, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(194333),	-- Ekrazathal's Colored Fang
					},
				}),
				q(65057, {	-- Rally to Emberthal
					["sourceQuests"] = { 65052 },	-- The Ebon Scales
					["qgs"] = {
						182275,	-- Scalecommander Sarkareth
						182297,	-- Scalecommander Sarkareth	(as of 11.0.7; 2/24/2025)
					},
					["coord"] = { 81.2, 54.0, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				------ Chapter 5 ------
				q(65701, {	-- Preservation or Devastation
					["sourceQuests"] = { 65057 },	-- Rally to Emberthal
					["provider"] = { "n", 182258 },	-- Scalecommander Emberthal
					["coord"] = { 44.8, 57.7, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191808),	-- Crimson Dracthyr Battlegear Leggings
					},
				}),
				q(65084, {	-- The Froststone Vault
					["sourceQuests"] = { 65701 },	-- Preservation or Devastation
					["provider"] = { "n", 182258 },	-- Scalecommander Emberthal
					["coord"] = { 44.8, 57.7, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(65087, {	-- The Prize Inside
					["sourceQuests"] = { 65084 },	-- The Froststone Vault
					["provider"] = { "n", 184308 },	-- Scalecommander Sarkareth
					["coord"] = { 56.7, 28.2, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(194335),	-- Emerald Tear Necklace
					},
				}),
				------ Chapter 6 ------
				q(65097, {	-- Run!
					["sourceQuests"] = { 65087 },	-- The Prize Inside
					["provider"] = { "n", 182441 },	-- Scalecommander Emberthal
					["coord"] = { 54.1, 32.3, THE_FORBIDDEN_REACH_DRACTHYR },
				}),
				q(65098, {	-- The Consequence of Courage
					["sourceQuests"] = { 65097 },	-- Run!
					["provider"] = { "n", 182601 },	-- Wrathion
					["coord"] = { 47.1, 35.5, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(191809),	-- Crimson Dracthyr Battlegear Monnion
					},
				}),
				q(65100, {	-- Final Orders
					["sourceQuests"] = { 65098 },	-- The Consequence of Courage
					["qgs"] = {
						182441,	-- Scalecommander Emberthal
						191780,	-- Scalecommander Emberthal (as of 11.0.7; 2/24/2025)
					},
					["coord"] = { 41.7, 44.5, THE_FORBIDDEN_REACH_DRACTHYR },
					["groups"] = {
						i(193916),	-- Dragonkin Signet Ring
					},
				}),
				------ Chapter 6 ------
				------ Alliance ------
				q(65286, {	-- Draconic Connections
					["sourceQuests"] = { 65100 },	-- Final Orders
					["provider"] = { "n", 189322 },	-- Wrathion
					["coord"] = { 32.2, 49.6, ELWYNN_FOREST },
					["races"] = { DRACTHYR_ALLIANCE },
					["classes"] = { EVOKER },
				}),
				q(66513, {	-- Ground Leave [A]
					["sourceQuests"] = { 65286 },	-- Draconic Connections
					["provider"] = { "n", 189324 },	-- Scalecommander Azurathel
					["coord"] = { 32.2, 49.6, ELWYNN_FOREST },
					["races"] = { DRACTHYR_ALLIANCE },
					["classes"] = { EVOKER },
				}),
				q(65101, {	-- An Iconic, Draconic, Look [A]
					["sourceQuests"] = { 66577 },	-- Alexstrasza's Invitation [A]
					["provider"] = { "n", 189569 },	-- Wrathion
					["coord"] = { 82.6, 24.0, STORMWIND_CITY },
					["races"] = { DRACTHYR_ALLIANCE },
					["classes"] = { EVOKER },
					["groups"] = {
						i(194675),	-- Gilded Dracthyr's Tabard
					},
				}),
				------ Horde ------
				q(66237, {	-- Spiritual Allies
					["sourceQuests"] = { 65100 },	-- Final Orders
					["provider"] = { "n", 189386 },	-- Spiritwalker Ebonhorn
					["coord"] = { 45.6, 12.9, DUROTAR },
					["races"] = { DRACTHYR_HORDE },
				}),
				q(66534, {	-- Ground Leave [H]
					["sourceQuests"] = { 66237 },	-- Spiritual Allies
					["provider"] = { "n", 189389 },	-- Scalecommander Cindrethresh
					["coord"] = { 45.6, 12.9, DUROTAR },
					["races"] = { DRACTHYR_HORDE },
				}),
				q(65613, {	-- An Iconic, Draconic, Look [H]
					["sourceQuests"] = { 65437 },	-- Aspectral Invitation [H]
					["provider"] = { "n", 190239 },	-- Ebyssian
					["coord"] = { 44.1, 38.0, ORGRIMMAR },
					["races"] = { DRACTHYR_HORDE },
					["groups"] = {
						i(202197),	-- Emboldened Dracthyr's Tabard
					},
				}),
			}),
			------ To'no ------
			q(65065, {	-- The Tuskarr
				["sourceQuests"] = { 66324 },	-- Never Forgotten
				["provider"] = { "n", 184164 },	-- Explorer Ko'nali
				["coord"] = { 15.6, 60.0, THE_FORBIDDEN_REACH_DRACTHYR },
				["isBreadcrumb"] = true,
			}),
			q(65071, {	-- Halp!
				["sourceQuests"] = { 65065 },	-- The Tuskarr
				["provider"] = { "n", 184166 },	-- To'no
				["coord"] = { 33.5, 33.3, THE_FORBIDDEN_REACH_DRACTHYR },
			}),
		}),
	})),
})));
