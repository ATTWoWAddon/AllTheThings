---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		n(QUESTS, {
			header(HEADERS.Achievement, 15394, {	-- Ohn'a'Roll
				------ Chapter 1 ------
				q(65795, {	-- Next Steppes
					["sourceQuests"] = { 65794 },	-- A Change of Care
					["provider"] = { "n", 193377 },	-- Alexstrasza the Life-Binder
					["coord"] = { 61.6, 68.6, THE_WAKING_SHORES },
				}),
				q(65779, {	-- Into the Plains
					["sourceQuests"] = {
						65795,	-- Next Steppes
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 185878 },	-- Ambassador Taurasza
					["coord"] = { 48.3, 88.7, THE_WAKING_SHORES },
					["groups"] = {
						i(192469),	-- Vibrant Life Bloom
					},
				}),
				q(65780, {	-- Proving Oneself
					["sourceQuests"] = { 65779 },	-- Into the Plains
					["provider"] = { "n", 185882 },	-- Scout Tomul
					["coord"] = { 77.7, 23.9, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197680),	-- Centaur Cavalry Saber
						i(197706),	-- Eaglestrike Pike
						i(197698),	-- Mystic's Windblade
						i(197701),	-- Ohn'ahran Greatsword
						i(197697),	-- Ohn'ir Ritual Scepter
						i(197905),	-- Salamanther Slicer
						i(197692),	-- Shikaar Fishing Bow
						i(197695),	-- Tuskchopper
					},
				}),
				q(65783, {	-- Welcome at Our Fire
					["sourceQuests"] = { 65780 },	-- Proving Oneself
					["provider"] = { "n", 185882 },	-- Scout Tomul
					["coord"] = { 78.6, 25.4, OHNAHRAN_PLAINS },
				}),
				q(70174, {	-- The Shikaar
					["sourceQuests"] = { 65783 },	-- Welcome at Our Fire
					["provider"] = { "n", 185882 },	-- Scout Tomul
					["coord"] = { 85.3, 25.4, OHNAHRAN_PLAINS },
				}),
				q(65801, {	-- Making Introductions
					["sourceQuests"] = { 70174 },	-- The Shikaar
					["provider"] = { "n", 181217 },	-- Sansok Khan
					["coord"] = { 85.7, 25.3, OHNAHRAN_PLAINS },
				}),
				q(65802, {	-- Supplies for the Journey
					["sourceQuests"] = { 70174 },	-- The Shikaar
					["provider"] = { "n", 181217 },	-- Sansok Khan
					["coord"] = { 85.7, 25.3, OHNAHRAN_PLAINS },
					["groups"] = {
						o(377119, {	-- Basket of Dried Fish
							["coord"] = { 84.3, 27.2, OHNAHRAN_PLAINS },
							["groups"] = { i(192810) },	-- Basket of Dried Fish (QI!)
						}),
						o(376085, {	-- Bundle of Pelts
							["coord"] = { 86.1, 25.3, OHNAHRAN_PLAINS },
							["groups"] = { i(191054) },	-- Bundle of Pelts (QI!)
						}),
						o(376083, {	-- Crate of Horseshoes
							["coord"] = { 84.4, 24.9, OHNAHRAN_PLAINS },
							["groups"] = { i(191048) },	-- Crate of Horseshoes (QI!)
						}),
						o(377122, {	-- Medicinal Feralbloom
							["coords"] = {
								{ 83.4, 25.9, OHNAHRAN_PLAINS },
								{ 83.7, 23.4, OHNAHRAN_PLAINS },
								{ 83.7, 25.1, OHNAHRAN_PLAINS },
								{ 84.3, 25.8, OHNAHRAN_PLAINS },
								{ 84.6, 27.1, OHNAHRAN_PLAINS },
								{ 84.8, 22.7, OHNAHRAN_PLAINS },
								{ 84.9, 22.3, OHNAHRAN_PLAINS },
								{ 85.2, 23.9, OHNAHRAN_PLAINS },
								{ 85.4, 24.6, OHNAHRAN_PLAINS },
								{ 85.5, 26.8, OHNAHRAN_PLAINS },
								{ 86.4, 26.3, OHNAHRAN_PLAINS },
								{ 86.5, 25.3, OHNAHRAN_PLAINS },
								{ 86.5, 26.3, OHNAHRAN_PLAINS },
								{ 86.8, 26.7, OHNAHRAN_PLAINS },
							},
							["groups"] = { i(192812) },	-- Feralbloom Pod (QI!)
						}),
						o(377120, {	-- Weapon Rack
							["coord"] = { 84.5, 23.1, OHNAHRAN_PLAINS },
							["groups"] = { i(192811) },	-- Shikaar Weaponry (QI!)
						}),
						i(191055),	-- Camp Provisions (QI!)
						--
						i(197657),	-- Nokhud Reaver Waistguard
						i(197658),	-- Ohn'ir Initiate Sash
						i(197659),	-- Shikaar Scount Buckle
						i(197660),	-- Teerai Watcher Belt
					},
				}),
				q(65803, {	-- Toward the City
					["sourceQuests"] = {
						65801,	-- Making Introductions
						65802,	-- Supplies for the Journey
					},
					["provider"] = { "n", 185882 },	-- Scout Tomul
					["coord"] = { 84.7, 22.9, OHNAHRAN_PLAINS },
				}),
				q(65804, {	-- For Food and Rivalry
					["sourceQuests"] = { 65803 },	-- Toward the City
					["provider"] = { "n", 185882 },	-- Scout Tomul
					["coord"] = { 75.7, 31.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191100),	-- Fresh Game Meat (QI!)
					},
				}),
				q(70185, {	-- Mysterious Beast
					["sourceQuests"] = { 65803 },	-- Toward the City
					["provider"] = { "o", 379321 },	-- Mysterious Paw Print
					["coord"] = { 76.7, 31.9, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197674),	-- Drakefire Shield
						i(197675),	-- Code of the Maruuk
						i(198517),	-- Pelt of Konkhular (QI!)
					},
				}),
				q(65940, {	-- By Broken Road
					["sourceQuests"] = {
						65804,	-- For Food and Rivalry
						70185,	-- Mysterious Beast
					},
					["provider"] = { "n", 185882 },	-- Scout Tomul
					["coord"] = { 75.7, 31.7, OHNAHRAN_PLAINS },
				}),
				q(65805, {	-- Connection To Ohn'ahra
					["sourceQuests"] = { 65940 },	-- By Broken Road
					["provider"] = { "n", 184595 },	-- Ohn Seshteng
					["coord"] = { 70.0, 38.0, OHNAHRAN_PLAINS },
					["groups"] = {
						o(376152, { -- River Reeds
							["coords"] = {
								{ 68.4, 41.1, OHNAHRAN_PLAINS },
								{ 68.8, 39.4, OHNAHRAN_PLAINS },
								{ 69.4, 37.9, OHNAHRAN_PLAINS },
								{ 70.1, 39.1, OHNAHRAN_PLAINS },
								{ 70.1, 41.6, OHNAHRAN_PLAINS },
								{ 70.2, 37.0, OHNAHRAN_PLAINS },
								{ 70.3, 35.7, OHNAHRAN_PLAINS },
								{ 70.4, 39.7, OHNAHRAN_PLAINS },
								{ 70.5, 37.7, OHNAHRAN_PLAINS },
								{ 70.5, 39.6, OHNAHRAN_PLAINS },
							},
							["groups"] = { i(191101) },	-- River Reeds (QI!)
						}),
						i(191103),	-- Salamanther Heart (QI!)
						i(191102),	-- Fowl Tailfeathers (QI!)
					},
				}),
				q(66848, {	-- Omens on the Wind
					["sourceQuests"] = { 65805 },	-- Connection To Ohn'ahra
					["provider"] = { "n", 184595 },	-- Ohn Seshteng
					["coord"] = { 70.0, 38.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197637),	-- Nokhud Reaver Stompers
						i(197686),	-- Ohn'ir Initiate Slippers
						i(197687),	-- Shikaar Scount Sabatons
						i(197688),	-- Teerai Watcher Moccasins
					},
				}),
				q(65806, {	-- Maruukai
					["sourceQuests"] = { 66848 },	-- Omens on the Wind
					["provider"] = { "n", 181217 },	-- Sansok Khan
					["coord"] = { 70.0, 38.0, OHNAHRAN_PLAINS },
				}),
				------ Chapter 2 ------
				q(66018, {	-- Clan Nokhud
					["sourceQuests"] = { 65806 },	-- Maruukai
					["provider"] = { "n", 191283 },	-- Sansok Khan
					["coord"] = { 61.4, 39.5, OHNAHRAN_PLAINS },
				}),
				q(66021, {	-- Unwelcome Outsider
					["sourceQuests"] = { 66018 },	-- Clan Nokhud
					["provider"] = { "n", 186940 },	-- Guard Bahir
					["coord"] = { 60.3, 40.7, OHNAHRAN_PLAINS },
				}),
				q(66017, {	-- Clan Ohn'ir
					["sourceQuests"] = { 65806 },	-- Maruukai
					["provider"] = { "n", 191283 },	-- Sansok Khan
					["coord"] = { 61.4, 39.5, OHNAHRAN_PLAINS },
				}),
				q(66020, {	-- Omens and Incense
					["sourceQuests"] = { 66017 },	-- Clan Ohn'ir
					["provider"] = { "n", 191595 },	-- Ohn Seshteng
					["coord"] = { 63.0, 33.6, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191160),	-- Sweetsuckle Bloom
					},
				}),
				q(66016, {	-- Clan Teerai
					["sourceQuests"] = { 65806 },	-- Maruukai
					["provider"] = { "n", 191283 },	-- Sansok Khan
					["coord"] = { 61.4, 39.5, OHNAHRAN_PLAINS },
				}),
				q(66019, {	-- Honoring Our Ancestors
					["sourceQuests"] = { 66016 },	-- Clan Teerai
					["provider"] = { "n", 186941 },	-- Qariin Dotur
					["coord"] = { 59.1, 37.6, OHNAHRAN_PLAINS },
					["groups"] = {
						i(194964),	-- Recipe: Thrice-Spiced Mammoth Kabob (RECIPE!)
					},
				}),
				q(66969, {	-- Clans of the Plains
					["sourceQuests"] = {
						66020,	-- Omens and Incense
						66019,	-- Honoring Our Ancestors
						66021,	-- Unwelcome Outsider
					},
					["provider"] = { "n", 192724 },	-- Aru
					["coord"] = { 62.4, 41.6, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197906),	-- Teerai Locket
						i(197671),	-- Shikaar Chain
						i(197907),	-- Ohn'ir Pendant
						i(197670),	-- Nokhud Choker
					},
				}),
				q(66948, {	-- The Emissary's Arrival
					["sourceQuests"] = { 66969 },	-- Clans of the Plains
					["provider"] = { "n", 194927 },	-- Gemisath
					["coord"] = { 61.0, 40.4, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197639),	-- Nokhud Reaver Chestplate
						i(197638),	-- Ohn'ir Initiate Vestments
						i(197640),	-- Shikaar Scout Hauberk
						i(197641),	-- Teerai Watcher Vest
					},
				}),
				q(66022, {	-- The Khanam Matra
					["sourceQuests"] = { 66948 },	-- The Emissary's Arrival
					["provider"] = { "n", 194927 },	-- Gemisath
					["coord"] = { 61.0, 40.4, OHNAHRAN_PLAINS },
				}),
				q(66023, {	-- Trucebreakers
					["sourceQuests"] = { 66022 },	-- The Khanam Matra
					["provider"] = { "n", 186942 },	-- Khansguard Akato
					["coord"] = { 60.3, 38.0, OHNAHRAN_PLAINS },
				}),
				q(66024, {	-- Covering Their Tails
					["sourceQuests"] = { 66022 },	-- The Khanam Matra
					["provider"] = { "n", 191485 },	-- Scout Tomul
					["coord"] = { 59.5, 38.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197685),	-- Nokhud Reaver Skullguard
						i(197646),	-- Ohn'ir Initiate Hood
						i(197647),	-- Shikaar Scout Helm
						i(197648),	-- Teerai Watcher Hood
						i(197405),	-- Renewed Proto-Drake: Maned Tail (MM!)
					},
				}),
				q(66025, {	-- The Nokhud Threat
					["sourceQuests"] = {
						66023,	-- Trucebreakers
						66024,	-- Covering Their Tails
					},
					["provider"] = { "n", 181198 },	-- Khanam Matra Sarest
					["coord"] = { 60.3,38.0, OHNAHRAN_PLAINS },
				}),
				------ Chapter 3 ------
				q(66201, {	-- Hooves of War
					["sourceQuests"] = { 66025 },	-- The Nokhud Threat
					["provider"] = { "n", 181198 },	-- Khanam Matra Sarest
					["coord"] = { 60.0, 37.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(192472),	-- Khanam Matra's Message (QI!) [book]
					},
				}),
				q(66222, {	-- The Calm Before the Storm
					["sourceQuests"] = { 66201 },	-- Hooves of War
					["provider"] = { "n", 187787 },	-- Khansguard Jebotal
					["coord"] = { 41.8, 61.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197649),	-- Nokhud Reaver Legplates
						i(197650),	-- Ohn'ir Initiate Leggings
						i(197651),	-- Shikaar Scout Breeches
						i(197652),	-- Teerai Watcher Breeches
					},
				}),
				q(70229, {	-- Boku the Mystic
					["sourceQuests"] = { 66222 },	-- The Calm Before the Storm
					["provider"] = { "n", 187787 },	-- Khansguard Jebotal
					["coord"] = { 41.8, 61.7, OHNAHRAN_PLAINS },
				}),
				q(66254, {	-- Pessimistic Mystic
					["sourceQuests"] = { 70229 },	-- Boku the Mystic
					["provider"] = { "n", 186290 },	-- Initiate Boku
					["coord"] = { 36.8, 57.2, OHNAHRAN_PLAINS },
				}),
				q(66224, {	-- Mystic Mystery
					["sourceQuests"] = { 66254 },	-- Pessimistic Mystic
					["provider"] = { "n", 186290 },	-- Initiate Boku
					["coord"] = { 36.8, 57.2, OHNAHRAN_PLAINS },
					["groups"] = {
						i(198652),	-- Boku's Belongings (QI!)
						i(198655),	-- Boku's Totem (QI!)
					},
				}),
				q(70195, {	-- Taken By Storm
					["sourceQuests"] = { 66224 },	-- Mystic Mystery
					["provider"] = { "n", 195316 },	-- Tigari Khan
					["coord"] = { 49.4, 63.1, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197643),	-- Nokhud Reaver Crushers
						i(197644),	-- Ohn'ir Initiate Gloves
						i(198698),	-- Ridgewater Retreat Orders (QI!) [book]
						i(197645),	-- Shikaar Scout Grips
						i(197642),	-- Teerai Watcher Gloves
					},
				}),
				q(66225, {	-- Toting Totems
					["sourceQuests"] = { 66224 },	-- Mystic Mystery
					["provider"] = { "n", 195316 },	-- Tigari Khan
					["coord"] = { 49.4, 63.1, OHNAHRAN_PLAINS },
					["groups"] = {
						i(193051),	-- Bundle of Totems (QI!)
					},
				}),
				q(66236, {	-- Catching Wind
					["sourceQuests"] = {
						70195,	-- Taken By Storm
						66225,	-- Toting Totems
					},
					["provider"] = { "n", 190648 },	-- Tigari Khan
					["coord"] = { 49.3, 63.1, OHNAHRAN_PLAINS },
				}),
				q(66256, {	-- Eagle-itarian
					["sourceQuests"] = { 66236 },	-- Catching Wind
					["provider"] = { "n", 187804 },	-- Initiate Boku
					["coord"] = { 58.1, 69.0, OHNAHRAN_PLAINS },
				}),
				q(66257, {	-- Fowl Sorcery
					["sourceQuests"] = { 66236 },	-- Catching Wind
					["provider"] = { "n", 187804 },	-- Initiate Boku
					["coord"] = { 58.1, 69.0, OHNAHRAN_PLAINS },
				}),
				q(66242, {	-- Weather Control
					["sourceQuests"] = { 66236 },	-- Catching Wind
					["provider"] = { "n", 187804 },	-- Initiate Boku
					["coord"] = { 58.1, 69.0, OHNAHRAN_PLAINS },
				}),
				q(66258, {	-- Oh No, Ohn'ahra!
					["sourceQuests"] = {
						66256,	-- Eagle-itarian
						66257,	-- Fowl Sorcery
						66242,	-- Weather Control
					},
					["provider"] = { "n", 187809 },	-- Initiate Boku
					["coord"] = { 60.6, 63.5, OHNAHRAN_PLAINS },
				}),
				q(66259, {	-- A Storm of Ill Tidings
					["sourceQuests"] = { 66258 },	-- Oh No, Ohn'ahra!
					["provider"] = { "n", 195024 },	-- Initiate Boku
					["coord"] = { 61.4, 62.8, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197846),	-- Ohn'ahra's Carving
					},
				}),
				------ Chapter 4 ------
				q(66327, {	-- Chasing the Wind
					["sourceQuests"] = { 66259 },	-- A Storm of Ill Tidings
					["provider"] = { "n", 181198 },	-- Khanam Matra Sarest
					["coord"] = { 60.0, 37.4, OHNAHRAN_PLAINS },
				}),
				q(70244, {	-- Nokhud Can Come of This
					["sourceQuests"] = { 66327 },	-- Chasing the Wind
					["provider"] = { "n", 188068 },	-- Khanam Matra Sarest
					["coord"] = { 73.0, 40.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197654),	-- Nokhud Reaver Shoulderguards
						i(197655),	-- Ohn'ir Initiate Mantle
						i(197656),	-- Shikaar Scout Pauldrons
						i(197653),	-- Teerai Watcher Spaulders
					},
				}),
				q(66329, {	-- Blowing of the Horn
					["sourceQuests"] = { 70244 },	-- Nokhud Can Come of This
					["provider"] = { "n", 188068 },	-- Khanam Matra Sarest
					["coord"] = { 76.7, 40.9, OHNAHRAN_PLAINS },
				}),
				q(66328, {	-- Green Dragon Down
					["sourceQuests"] = { 66329 },	-- Blowing of the Horn
					["provider"] = { "n", 188068 },	-- Khanam Matra Sarest
					["coord"] = { 76.7, 40.9, OHNAHRAN_PLAINS },
				}),
				q(66344, {	-- With the Wind At Our Backs
					["sourceQuests"] = { 66328 },	-- Green Dragon Down
					["provider"] = { "n", 188156 },	-- Merithra
					["coord"] = { 72.4, 50.7, OHNAHRAN_PLAINS },
				}),
				q(70220, {	-- Shady Sanctuary
					["sourceQuests"] = { 66344 },	-- With the Wind At Our Backs
					["provider"] = { "n", 188106 },	-- Merithra
					["coord"] = { 28.3, 57.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(194549),	-- Windborne Velocidrake (MOUNT!)
						ach(15795),	-- Together in the Skies
					},
				}),
				q(66331, {	-- The Primalist Front
					["sourceQuests"] = { 70220 },	-- Shady Sanctuary
					["provider"] = { "n", 188106 },	-- Merithra
					["coord"] = { 28.2, 57.6, OHNAHRAN_PLAINS },
				}),
				q(66333, {	-- Justice for Solethus
					["sourceQuests"] = { 66331 },	-- The Primalist Front
					["provider"] = { "n", 189599 },	-- Merithra
					["coord"] = { 25.6, 40.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197662),	-- Nokhud Reaver Armguards
						i(197661),	-- Ohn'ir Initiate Wraps
						i(197663),	-- Shikaar Scout Bracers
						i(197664),	-- Teerai Watcher Bindings
					},
				}),
				q(66335, {	-- Deconstruct Additional Pylons
					["sourceQuests"] = { 66333 },	-- Justice for Solethus
					["provider"] = { "n", 191494 },	-- Khanam Matra Sares
					["coord"] = { 25.2, 38.5, OHNAHRAN_PLAINS },	-- Follows You
				}),
				q(66784, {	-- Starve the Storm
					["sourceQuests"] = { 66333 },	-- Justice for Solethus
					["provider"] = { "n", 191494 },	-- Khanam Matra Sares
					["coord"] = { 25.2, 38.5, OHNAHRAN_PLAINS },	-- Follows You
				}),
				q(66337, {	-- Stormbreaker
					["sourceQuests"] = {
						66335,	-- Deconstruct Additional Pylons
						66784,	-- Starve the Storm
					},
					["provider"] = { "n", 191494 },	-- Khanam Matra Sarest
					["coord"] = { 24.8, 35.0, OHNAHRAN_PLAINS },	-- Follows You
				}),
				q(66336, {	-- The Isle of Emerald
					["sourceQuests"] = { 66337 },	-- Stormbreaker
					["provider"] = { "n", 188150 },	-- Merithra
					["coord"] = { 25.7, 48.4, OHNAHRAN_PLAINS },
				}),
				q(66783, {	-- Renewal of Vows
					["sourceQuests"] = { 66336 },	-- The Isle of Emerald
					["provider"] = { "n", 188181 },	-- Merithra
					["coord"] = { 22.1, 51.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197672),	-- Emerald Shroud of Loyalty
						i(197375),	-- Renewed Proto-Drake: Curled Horns (MM!)
					},
				}),
				------ Continues in Azure Span ------
			}),
			header(HEADERS.AchCriteria, 16405.01, {	-- Taivan's Purpose
				q(67772, {	-- The Trouble with Taivan
					["sourceQuests"] = { 66783 },	-- Renewal of Vows
					["provider"] = { "n", 192621 },	-- Healer Selbekh
					["coord"] = { 61.2, 40.0, OHNAHRAN_PLAINS },
				}),
				q(67921, {	-- The Hunting Hound
					["sourceQuests"] = { 67772 },	-- The Trouble with Taivan
					["provider"] = { "n", 192629 },	-- Hunter Jadar
					["coord"] = { 71.4, 49.6, OHNAHRAN_PLAINS },
				}),
				q(70989, {	-- Part of a Pack
					["sourceQuests"] = { 67921 },	-- The Hunting Hound
					["provider"] = { "n", 192629 },	-- Hunter Jadar
					["coord"] = { 71.4, 49.6, OHNAHRAN_PLAINS },
				}),
				q(68083, {	-- Try Again, Taivan!
					["sourceQuests"] = { 70989 },	-- Part of a Pack
					["provider"] = { "n", 192629 },	-- Hunter Jadar
					["coord"] = { 71.4, 49.6, OHNAHRAN_PLAINS },
				}),
				q(68084, {	-- The Gentle Giant
					["sourceQuests"] = { 68083 },	-- Try Again, Taivan!
					["provider"] = { "n", 192621 },	-- Healer Selbekh
					["coord"] = { 61.2, 40.0, OHNAHRAN_PLAINS },
				}),
				q(68085, {	-- Shaping a Shepherd
					["sourceQuests"] = { 68084 },	-- The Gentle Giant
					["provider"] = { "n", 192633 },	-- Shepherd Tevatei
					["coord"] = { 49.1, 41.1, OHNAHRAN_PLAINS },
				}),
				q(71022, {	-- Reign of the Ram
					["sourceQuests"] = { 68085 },	-- Shaping a Shepherd
					["provider"] = { "n", 192633 },	-- Shepherd Tevatei
					["coord"] = { 49.1, 41.1, OHNAHRAN_PLAINS },
				}),
				q(68087, {	-- Danger in Daruukhan
					["sourceQuests"] = { 71022 },	-- Reign of the Ram
					["provider"] = { "n", 192633 },	-- Shepherd Tevatei
					["coord"] = { 49.1, 41.1, OHNAHRAN_PLAINS },
				}),
				q(69094, {	-- Saving Centaurs
					["sourceQuests"] = { 68087 },	-- Danger in Daruukhan
					["provider"] = { "n", 192621 },	-- Healer Selbekh
					["coord"] = { 52.8, 29.8, OHNAHRAN_PLAINS },
				}),
				q(69095, {	-- Homeward Hound
					["sourceQuests"] = { 69094 },	-- Saving Centaurs
					["provider"] = { "n", 192621 },	-- Healer Selbekh
					["coord"] = { 52.8, 29.8, OHNAHRAN_PLAINS },
				}),
				q(69096, {	-- Taivan's Purpose
					["sourceQuests"] = { 69095 },	-- Homeward Hound
					["provider"] = { "n", 192621 },	-- Healer Selbekh
					["coord"] = { 61.2, 40.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(198537),	-- Taivan's Trumpet (TOY!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16405.02, {	-- Initiate's Day Out
				q(65906, {	-- A Disgruntled Initiate
					["sourceQuests"] = {
						65779,	-- Into the Plains
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 195302 },	-- Windsage Ordven
					["coord"] = { 63.1, 34.1, OHNAHRAN_PLAINS },
					["isBreadcrumb"] = true,
				}),
				q(65901, {	-- Sneaking Out
					["sourceQuests"] = { 65906 },	-- A Disgruntled Initiate
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 56.3, 76.0, OHNAHRAN_PLAINS },
				}),
				q(65907, {	-- Favorite Fruit
					["sourceQuests"] = { 65901 },	-- Sneaking Out
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 54.8, 66.4, OHNAHRAN_PLAINS },
					["groups"] = {
						i(192743),	-- Wild Bushfruit
					},
				}),
				q(65770, {	-- A Promise Is A Promise
					["sourceQuests"] = { 65907 },	-- Favorite Fruit
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 54.8, 66.4, OHNAHRAN_PLAINS },
				}),
				q(65761, {	-- More Adventure Than Expected
					["sourceQuests"] = { 65770 },	-- A Promise Is A Promise
					["provider"] = { "n", 190022 },	-- Godoloto
					["coord"] = { 52.1, 63.2, OHNAHRAN_PLAINS },
				}),
				q(65711, {	-- Stealing Its Thunder
					["sourceQuests"] = { 65761 },	-- More Adventure Than Expected
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 47.5, 54.1, OHNAHRAN_PLAINS },
				}),
				q(66676, {	-- Sneaking In
					["sourceQuests"] = { 65711 },	-- Stealing Its Thunder
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 48.3, 56.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(200277),	-- Embroidered Broadhoof Footwraps
						i(200275),	-- Geyserwalker Sandals
						i(200272),	-- Keratin-Reinforced Boots
						i(200274),	-- Spearbreaker Footguards
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16405.03, {	-- Lilac Ramble
				q(65899, {	-- Find Theramus
					["sourceQuests"] = {
						66676,	-- Sneaking In
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 186303 },	-- Celina Crunchyleaves
					["coord"] = { 25.1, 56.9, OHNAHRAN_PLAINS },
				}),
				q(65903, {	-- Can't Beat Fluffy
					["sourceQuests"] = { 65899 },	-- Find Theramus
					["provider"] = { "n", 186303 },	-- Celina Crunchyleaves
					["coord"] = { 24.4, 63.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191134),	-- Versatile Longnet
					},
				}),
				q(65900, {	-- Suspiciously Spiced Steak
					["sourceQuests"] = { 65899 },	-- Find Theramus
					["provider"] = { "n", 185726 },	-- Felina Starrunner
					["coord"] = { 24.4, 63.1, OHNAHRAN_PLAINS },
				}),
				q(65902, {	-- Food or Floof
					["sourceQuests"] = {
						65903,	-- Can't Beat Fluffy
						65900,	-- Suspiciously Spiced Steak
					},
					["provider"] = { "n", 185726 },	-- Felina Starrunner
					["coord"] = { 24.4, 63.1, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191085),	-- Perfectly Tender Turtle Meat (QI!)
						i(191084),	-- Reptilian Eggshell (QI!)
						i(191083),	-- Sourbloom (QI!)
						i(192098),	-- Herbed Turtle Meat
					},
				}),
				q(65905, {	-- More Than Weeds
					["sourceQuests"] = { 65902 },	-- Food or Floof
					["provider"] = { "n", 185726 },	-- Felina Starrunner
					["coord"] = { 24.4, 63.1, OHNAHRAN_PLAINS },
				}),
				q(65937, {	-- Proof of Negligence
					["sourceQuests"] = { 65902 },	-- Food or Floof
					["provider"] = { "n", 186303 },	-- Celina Crunchyleaves
					["coord"] = { 24.4, 63.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191086),	-- Decayed Flower (QI!)
						i(191568),	-- Pulsating Thorn (QI!)
						i(201874),	-- Injured Cub (QI!)
					},
				}),
				q(65904, {	-- Enough Is Enough
					["sourceQuests"] = {
						65905,	-- More Than Weeds
						65937,	-- Proof of Negligence
					},
					["provider"] = { "n", 186303 },	-- Celina Crunchyleaves
					["coord"] = { 24.4, 63.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197890),	-- Embroidered Broadhoof Coat
						i(197886),	-- Geyserwalker Robes
						i(197894),	-- Keratin-Reinforced Harness
						i(197898),	-- Spearbreaker Chestguard
					},
				}),
				q(66011, {	-- In Memory of Ysera
					["sourceQuests"] = { 65904 },	-- Enough Is Enough
					["provider"] = { "n", 185726 },	-- Felina Starrunner
					["coord"] = { 24.4, 64.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(199693),	-- Memory of Ysera
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16405.04, {	-- Pinewood Post
				q(66680, {	-- Counting Sheep
					["sourceQuests"] = { 65837 },	-- Trouble In The Pines
					["provider"] = { "n", 190025 },	-- Scout Watu
					["coord"] = { 81.0, 58.9, OHNAHRAN_PLAINS },
					["cost"] = { { "i", 193890, 1 }, },	-- Diced Meat
					["groups"] = {
						i(193892),	-- Wish's Whistle
					},
				}),
				q(66681, {	-- Tempests Abound
					["sourceQuests"] = { 65837 },	-- Trouble In The Pines
					["provider"] = { "n", 190024 },	-- Sentinel Olekk
					["coord"] = { 81.0, 58.9, OHNAHRAN_PLAINS },
				}),
				q(65837, {	-- Trouble In The Pines
					["sourceQuests"] = {
						65779,	-- Into the Plains
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 195524 },	-- Beastmaster Tirren
					["coord"] = { 62.0, 41.8, OHNAHRAN_PLAINS },
					["isBreadcrumb"] = true,
				}),
				q(66689, {	-- More Than a Rock
					["sourceQuests"] = { 66681 },	-- Tempests Abound
					["provider"] = { "i", 194031 },	-- Stormtouched Shards
					["coord"] = { 82.9, 63.5, OHNAHRAN_PLAINS },
				}),
				q(66683, {	-- Last Resort Analysis
					["sourceQuests"] = {
						66680,	-- Counting Sheep
						66681,	-- Tempests Abound
						66689,	-- More Than a Rock
					},
					["provider"] = { "n", 190025 },	-- Scout Watu
					["coord"] = { 81.0, 58.9, OHNAHRAN_PLAINS },
				}),
				q(65836, {	-- Show of Storm
					["sourceQuests"] = { 66683 },	-- Last Resort Analysis
					["provider"] = { "n", 190025 },	-- Scout Watu
					["coord"] = { 81.0, 58.9, OHNAHRAN_PLAINS },
				}),
				q(66684, {	-- Storm Chasing
					["sourceQuests"] = { 65836 },	-- Show of Storm
					["provider"] = { "n", 190025 },	-- Scout Watu
					["coord"] = { 84.0, 60.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197893),	-- Embroidered Broadhoof Wristband
						i(197887),	-- Geyserwalker Bindings
						i(197896),	-- Keratin-Reinforced Wristguards
						i(197901),	-- Spearbreaker Vambraces
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16405.05, {	-- Elder Nazuun
					q(66687, {	-- Land of the Apex
						["sourceQuests"] = {
							66201,	-- Hooves of War
							DF_ACCOUNT_CAMPAIGN_QUEST,
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 190164 },	-- Elder Nazuun
						["coord"] = { 41.6, 56.7, OHNAHRAN_PLAINS },
						["groups"] = {
							i(193207),	-- Shadespinner's Web (QI!)
							i(193206),	-- Slyvern Talon (QI!)
							i(193202),	-- Thunderspine Scale (QI!)
						},
					}),
					q(66834, {	-- Rellen, the Learned
						["sourceQuests"] = { 66687 },	-- Land of the Apex
						["provider"] = { "n", 190164 },	-- Elder Nazuun
						["coord"] = { 41.6, 56.7, OHNAHRAN_PLAINS },
					}),
					q(66688, {	-- Signs of the Wind
						["sourceQuests"] = { 66201 },	-- Hooves of War
						["provider"] = { "n", 190164 },	-- Elder Nazuun
						["coord"] = { 41.6, 56.7, OHNAHRAN_PLAINS },
					}),
					q(70374, {	-- Himia, The Blessed
						["sourceQuests"] = { 66688 },	-- Signs of the Wind
						["provider"] = { "n", 190950 },	-- Himia, The Blessed
						["coord"] = { 49.3, 49.4, OHNAHRAN_PLAINS },
					}),
						-- (Cont. Dungeon) --
			}),
			header(HEADERS.AchCriteria, 16405.06, {	-- The Eternal Kurgans
				q(66651, {	-- Up to No-khud
					["sourceQuests"] = {
						66201,	-- Hooves of War
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 188224 },	-- Elder Yuvari
					["coord"] = { 40.9, 61.6, OHNAHRAN_PLAINS },
					["isBreadcrumb"] = true,
				}),
				q(66652, {	-- Return to Mender
					["sourceQuests"] = { 66651 },	-- Up to No-khud
					["provider"] = { "n", 188225 },	-- Initiate Zorig
					["coord"] = { 39.1, 66.0, OHNAHRAN_PLAINS },
				}),
				q(66654, {	-- Desecrator Annihilator
					["sourceQuests"] = { 66652 },	-- Return to Mender
					["provider"] = { "n", 188225 },	-- Initiate Zorig
					["coord"] = { 39.1, 66.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(198074),	-- Josanak, the Certain Victory
						i(198073),	-- Karha, the Serene Wind
						i(198075),	-- Tsegzaya, the Brambled Bow
					},
				}),
				q(66655, {	-- Reagents of De-Necromancy
					["sourceQuests"] = { 66652 },	-- Return to Mender
					["provider"] = { "n", 188225 },	-- Initiate Zorig
					["coord"] = { 39.1, 66.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(193257),	-- Clump of Sacred Soil (QI!)
						i(191901),	-- Intact Skull (QI!)
					},
				}),
				q(69936, {	-- Zambul, Head Vandal
					["sourceQuests"] = {
						66654,	-- Desecrator Annihilator
						66655,	-- Reagents of De-Necromancy
					},
					["provider"] = { "n", 189858 },	-- Initiate Zorig
					["coord"] = { 33.8, 65.4, OHNAHRAN_PLAINS },
				}),
				q(66656, {	-- Definitely Eternal Slumber
					["sourceQuests"] = { 69936 },	-- Zambul, Head Vandal
					["provider"] = { "n", 189858 },	-- Initiate Zorig
					["coord"] = { 33.8, 65.4, OHNAHRAN_PLAINS },
					["groups"] = {
						i(194447),	-- Totem of Respite
					},
				}),
				q(66657, {	-- And Stay Dead!
					["sourceQuests"] = { 66656 },	-- Definitely Eternal Slumber
					["provider"] = { "n", 193985 },	-- Initiate Zorig
					["coord"] = { 31.4, 71.0, OHNAHRAN_PLAINS },	-- Follows you
					["groups"] = {
						i(197892),	-- Embroidered Broadhoof Waistband
						i(197888),	-- Geyserwalker Cord
						i(197895),	-- Keratin-Reinforced Girdle
						i(197900),	-- Spearbreaker Belt
					},
				}),
					-- (Cont. Dungeon) --
			}),
			header(HEADERS.AchCriteria, 16405.07, {	-- Mudfin Village
				q(65951, {	-- Sole Supplier
					["sourceQuests"] = { 65783 },	-- Welcome at Our Fire
					["provider"] = { "n", 186653 },	-- Apprentice Ehri
					["coord"] = { 84.4, 25.0, OHNAHRAN_PLAINS },
				}),
				q(65950, {	-- Thieving Gorlocs
					["sourceQuests"] = { 65783 },	-- Welcome at Our Fire
					["provider"] = { "n", 186650 },	-- Farrier Roscha
					["coord"] = { 84.4, 25.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191541),	-- Shikaar Supplies (QI!)
					},
				}),
				q(65955, {	-- A Centaur's Best Friend
					["sourceQuests"] = {
						65951,	-- Sole Supplier
						65950,	-- Thieving Gorlocs
					},
					["provider"] = { "n", 186649 },	-- Khasar
					["coord"] = { 80.6, 30.7, OHNAHRAN_PLAINS },
				}),
				q(65954, {	-- Release the Hounds
					["sourceQuests"] = {
						65951,	-- Sole Supplier
						65950,	-- Thieving Gorlocs
					},
					["provider"] = { "n", 186649 },	-- Khasar
					["coord"] = { 80.6, 30.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197960),	-- Bag of Biscuits
						i(191540),	-- Batu's Collar (QI!)
						i(191539),	-- Sarnai's Collar (QI!)
					},
				}),
				q(65953, {	-- The Ora-cull
					["sourceQuests"] = {
						65951,	-- Sole Supplier
						65950,	-- Thieving Gorlocs
					},
					["provider"] = { "n", 186649 },	-- Khasar
					["coord"] = { 80.6, 30.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(191143),	-- Mudfin Totem (QI!)
					},
				}),
				q(65952, {	-- A Chief of Legends
					["sourceQuests"] = {
						65955,	-- A Centaur's Best Friend
						65954,	-- Release the Hounds
						65953,	-- The Ora-cull
					},
					["provider"] = { "n", 186649 },	-- Khasar
					["coord"] = { 83.4, 32.3, OHNAHRAN_PLAINS },
				}),
				q(66006, {	-- Return to Roscha
					["sourceQuests"] = { 65952 },	-- A Chief of Legends
					["provider"] = { "n", 186649 },	-- Khasar
					["coord"] = { 83.4, 32.3, OHNAHRAN_PLAINS },
				}),
				q(66005, {	-- Medallion of a Fallen Friend
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "i", 191127 },	-- Medallion of a Fallen Friend
					["coord"] = { 82.0, 31.4, OHNAHRAN_PLAINS },
				}),
				q(65949, {	-- The Sole Mender
					["sourceQuests"] = { 66005 },	-- Medallion of a Fallen Friend
					["provider"] = { "n", 186649 },	-- Khasar
					["coord"] = { 83.4, 32.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(192054),	-- Medallion of a Fallen Friend (QI!)
						i(197668),	-- Roscha's Band of Remembrance
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16405.08, {	-- Nelthazan Ruins
				q(70337, {	-- Emberwatch
					["sourceQuests"] = { 65806 },	-- Maruukai
					["provider"] = { "n", 195239 },	-- Windsage Kven
					["coord"] = { 62.1, 36.4, OHNAHRAN_PLAINS },
					["isBreadcrumb"] = true,
					["groups"] = {
						i(199174),	-- Ohn'ir Wind Chimes (QI!)
					},
				}),
				q(65890, {	-- The Nelthazan Ruins
					["sourceQuests"] = { 70337 },	-- Emberwatch
					["provider"] = { "n", 190089 },	-- Telemancer Aerilyn
					["coord"] = { 66.0, 25.1, OHNAHRAN_PLAINS },
					["isBreadcrumb"] = true,
				}),
				q(65893, {	-- The Relic Inquiry
					["sourceQuests"] = { 65890 },	-- The Nelthazan Ruins
					["provider"] = { "n", 186300 },	-- Skyscribe Adenedal
					["coord"] = { 64.0, 18.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(193375),	-- Nelthazan Artifact Fragments (QI!)
					},
				}),
				q(65891, {	-- Tools of the Trade
					["sourceQuests"] = { 65890 },	-- The Nelthazan Ruins
					["provider"] = { "n", 186300 },	-- Skyscribe Adenedal
					["coord"] = { 64.0, 18.3, OHNAHRAN_PLAINS },
				}),
				q(65895, {	-- Competing Company
					["sourceQuests"] = {
						65893,	-- The Relic Inquiry
						65891,	-- Tools of the Trade
					},
					["provider"] = { "n", 186300 },	-- Skyscribe Adenedal
					["coord"] = { 64.0, 18.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(193355),	-- Map of Nelthazan Ruins (QI!)
						i(198079),	-- Orders from Sarkareth (QI!)
						i(198078),	-- Recruitment Roster (QI!)
						i(193357),	-- Shattered Ornament (QI!)
					},
				}),
				q(66719, {	-- One Step Backwards
					["sourceQuests"] = { 65895 },	-- Competing Company
					["provider"] = { "n", 186300 },	-- Skyscribe Adenedal
					["coord"] = { 62.1, 16.3, OHNAHRAN_PLAINS },
					["classes"] = { EVOKER },
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
					["groups"] = {
						i(193376, {	-- Adenedal's Tidy Purse (QI!)
							i(198351),	-- Ancient Mana Gem (QI!)
						}),
					},
				}),
				q(65898, {	-- Proto Problems
					["sourceQuests"] = { 65895 },	-- Competing Company
					["provider"] = { "n", 186300 },	-- Skyscribe Adenedal
					["coord"] = { 62.1, 16.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(193601),	-- The Black Locus
					},
				}),
				q(66700, {	-- The Black Lotus
					["sourceQuests"] = { 65898 },	-- Proto Problems
					["provider"] = { "n", 191154 },	-- Skyscribe Adenedal
					["coord"] = { 66.3, 24.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(200278),	-- Drake Archaeologist's Shawl
						i(197407),	-- Renewed Proto-Drake: Spiked Throat (MM!)
						i(198354),	-- The Black Locus
					},
				}),
			}),
			header(HEADERS.Item, 198821, bubbleDownSelf({ ["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 } }, {	-- Divine Kiss of Ohn'ahra
				q(72512, {	-- A Whispering Breeze
					["description"] = "Speak to Godoloto to get the clues then gather the cost objects.",
					["sourceQuests"] = { 66676 },	-- Sneaking In
					["provider"] = { "n", 190022 },	-- Godoloto
					["coord"] = { 56.5, 73.3, OHNAHRAN_PLAINS },
					["cost"] = {
						{ "i", 201929, 3 },	-- 3xStolen Breath of Ohn'ahra
						{ "i", 201323, 1 },	-- 1xEssence of Awakening
						{ "i", 191507, 1 },	-- 1xExultant Incense+++
					},
					["groups"] = {
						mount(395644),	-- Divine Kiss of Ohn'ahra (MOUNT!)
						ach(19461, {	-- Kissed by the Wind
							["timeline"] = { ADDED_10_2_0 },
						}),
					},
				}),
			})),
			header(HEADERS.Item, 192799, bubbleDownSelf({ ["minReputation"] = { FACTION_MARUUK_CENTAUR, 9 } }, {	-- Lizi, Thunderspine Tramper
				q(71196, {	-- To Tame A Thunderspine
					["sourceQuests"] = { 66676 },	-- Sneaking In
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 56.1, 77.0, OHNAHRAN_PLAINS },
					["cost"] = {
						{ "c", DRAGON_SUPPLIES, 150 },
						{ "i", 192615, 20 },	-- 20xFluorescent Fluid
					},
				}),
				q(71197, {	-- To Tame A Thunderspine
					["sourceQuests"] = { 71196 },	-- To Tame A Thunderspine
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 56.1, 77.0, OHNAHRAN_PLAINS },
					["cost"] = {
						{ "c", DRAGON_SUPPLIES, 150 },
						{ "i", 192658, 20 },	-- 20xHigh-Fiber Leaf
					},
				}),
				q(71198, {	-- To Tame A Thunderspine
					["sourceQuests"] = { 71197 },	-- To Tame A Thunderspine
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 56.1, 77.0, OHNAHRAN_PLAINS },
					["cost"] = {
						{ "c", DRAGON_SUPPLIES, 150 },
						{ "i", 194966, 10 },	-- 10xThousandbite Piranha
					},
				}),
				q(71199, {	-- To Tame A Thunderspine
					["sourceQuests"] = { 71197 },	-- To Tame A Thunderspine
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 56.1, 77.0, OHNAHRAN_PLAINS },
					["cost"] = {
						{ "c", DRAGON_SUPPLIES, 150 },
						{ "i", 192636, 20 },	-- 10xWoolly Mountain Pelt
					},
				}),
				q(71195, {	-- To Tame A Thunderspine
					["sourceQuests"] = { 71199 },	-- To Tame A Thunderspine
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 57.7, 72.3, OHNAHRAN_PLAINS },
					["cost"] = {
						{ "c", DRAGON_SUPPLIES, 150 },
						{ "i", 200598, 1 },	-- 1xMeluun's Green Curry
					},
				}),
				q(71209, {	-- Beast of the Plains
					["sourceQuests"] = { 71195 },	-- To Tame A Thunderspine
					["provider"] = { "n", 190014 },	-- Initiate Radiya
					["coord"] = { 57.7, 72.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(192799),	-- Lizi, Thunderspine Tramper (MOUNT!)
					},
				}),
			})),
			header(HEADERS.Item, 200597, {	-- Lover's Bouquet
				q(70739, {	-- Bloodlines, Sweets, and Teraai
					["sourceQuests"] = {
						65806,	-- Maruukai
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 191924 },	-- Hunter Narman
					["coord"] = { 63.6, 40.5, OHNAHRAN_PLAINS },
					["groups"] = {
						i(201044),	-- Cirrus Flowers (QI!)
						i(199918),	-- Honey Plum Tart (QI!)
					},
				}),
				q(70730, {	-- Shikaar Giver
					["sourceQuests"] = { 65806 },	-- Maruukai
					["provider"] = { "n", 190192 },	-- Windsage Dawa
					["coord"] = { 62.8, 35.4, OHNAHRAN_PLAINS },
					["cost"] = { { "i", 199919, 1 }, },	-- 1x Yak Milk Pudding
					["groups"] = {
						i(200258),	-- Arbhog's Horns (QI!)
						i(199919),	-- Yak Milk Pudding (QI!)
					},
				}),
				q(70721, {	-- After My Ohn Heart
					["sourceQuests"] = {
						70739,	-- Bloodlines, Sweets, and Teraai
						70730,	-- Shikaar Giver
					},
					["provider"] = { "n", 190192 },	-- Windsage Dawa
					["coord"] = { 62.8, 35.4, OHNAHRAN_PLAINS },
					["groups"] = {
						i(198105),	-- Recipe: Celebratory Cake (RECIPE!)
						i(200597),	-- Lover's Bouquet (TOY!)
					},
				}),
			}),
			header(HEADERS.Item, 193484, {	-- Pilot
				q(70062, {	-- Some Call Me Bug Catcher
					["sourceQuests"] = {
						70220,	-- Shady Sanctuary
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 186503 },	-- Gracus
					["coord"] = { 30.7, 58.0, OHNAHRAN_PLAINS },	-- Is Moving
					["groups"] = {
						-- i(198856),	-- Flyspawn Mandibles (QI!) TODO: wasn't able to loot myself from quest but wowhead have looting data
						i(198847),	-- Flyspawn Chitin (QI!)
						i(198848),	-- Flyspawn Thorax (QI!)
						i(198460),	-- Flyspawn Beetle Parts (QI!)
					},
				}),
				q(70069, {	-- Others Call Me Duck Herder
					["sourceQuests"] = { 70062 },	-- Some Call Me Bug Catcher
					["provider"] = { "n", 186503 },	-- Gracus
					["coord"] = { 30.7, 58.0, OHNAHRAN_PLAINS },	-- Is Moving
				}),
				q(70070, {	-- But... I Am the Hero of Ducks
					["sourceQuests"] = { 70069 },	-- Others Call Me Duck Herder
					["provider"] = { "n", 186503 },	-- Gracus
					["coord"] = { 30.7, 58.0, OHNAHRAN_PLAINS },	-- Is Moving
					["groups"] = {
						i(193484),	-- Pilot (PET!)
					},
				}),
			}),
			header(HEADERS.Quest, 70444, {	-- The Fields of Ferocity
				q(70444, {	-- The Fields of Ferocity
					["sourceQuests"] = {
						DF_ACCOUNT_CAMPAIGN_QUEST,
						65806,	-- Maruukai
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "o", 380902 },	-- Fields of Ferocity
					["coord"] = { 62.3, 42.3, OHNAHRAN_PLAINS },
					["isBreadcrumb"] = true,
				}),
				q(66459, {	-- The Fields of Ferocity: Terror of the Swamp!
					["sourceQuests"] = { 70444 },	-- The Fields of Ferocity
					["provider"] = { "n", 188868 },	-- Gurgthock
					["coord"] = { 53.2, 37.3, OHNAHRAN_PLAINS },
				}),
				q(66460, {	-- The Fields of Ferocity: Lord of Decay!
					["sourceQuests"] = { 66459 },	-- The Fields of Ferocity: Terror of the Swamp!
					["provider"] = { "n", 188868 },	-- Gurgthock
					["coord"] = { 53.2, 37.3, OHNAHRAN_PLAINS },
				}),
				q(66461, {	-- The Fields of Ferocity: Foe from the Volcano!
					["sourceQuests"] = { 66460 },	-- The Fields of Ferocity: Lord of Decay!
					["provider"] = { "n", 188868 },	-- Gurgthock
					["coord"] = { 53.2, 37.3, OHNAHRAN_PLAINS },
				}),
				q(66462, {	-- The Fields of Ferocity: Lost in the Dream!
					["sourceQuests"] = { 66461 },	-- The Fields of Ferocity: Foe from the Volcano!
					["provider"] = { "n", 188868 },	-- Gurgthock
					["coord"] = { 53.2, 37.3, OHNAHRAN_PLAINS },
				}),
				q(66463, {	-- The Fields of Ferocity: Elemental Revenge Round!
					["sourceQuests"] = { 66462 },	-- The Fields of Ferocity: Lost in the Dream!
					["provider"] = { "n", 188868 },	-- Gurgthock
					["coord"] = { 53.2, 37.3, OHNAHRAN_PLAINS },
				}),
				q(66464, {	-- The Fields of Ferocity: Master of the Hunt!
					["sourceQuests"] = { 66463 },	-- The Fields of Ferocity: Elemental Revenge Round!
					["provider"] = { "n", 188868 },	-- Gurgthock
					["coord"] = { 53.2, 37.3, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197691),	-- Amaa's Golden Mace
						i(197684),	-- Argali Shearing Blade
						i(197703),	-- Ceeqa's Toothpick
						i(197699),	-- Nokhud Skullcrusher
						i(197677),	-- Plainswalking Stick
						i(197679),	-- Rockfang Uppercut
						i(197904),	-- Shikaar Hunting Knife
						i(197693),	-- Shikaar Hunter's Crossbow
						i(197690),	-- Staff of the Windsage
						i(197903),	-- Waterback Culling Axe
					},
				}),
			}),
			header(HEADERS.Achievement, 17546, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {	-- A New Beginning
				q(72591, {	-- A Debt That Must Be Paid
					["provider"] = { "n", 202656 },	-- Mayla Highmountain
					["coord"] = { 50.8, 58.6, VALDRAKKEN },
				}),
				q(72592, {	-- Scars from the Past
					["sourceQuests"] = { 72591 },	-- A Debt That Must Be Paid
					["provider"] = { "n", 199323 },	-- Baine Bloodhoof
					["coord"] = { 66.6, 38.6, OHNAHRAN_PLAINS },
				}),
				q(72593, {	-- A Tomul-tuous Beginning
					["sourceQuests"] = { 72592 },	-- Scars from the Past
					["provider"] = { "n", 199330 },	-- Scout Tomul
					["coord"] = { 66.6, 38.7, OHNAHRAN_PLAINS },
				}),
				q(72662, {	-- Resupplying Supplies
					["sourceQuests"] = { 72593 },	-- A Tomul-tuous Beginning
					["provider"] = { "n", 202706 },	-- Scout Tomul
					["coord"] = { 69.4, 47.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(202394),	-- Fresh Plains Meat (QI!)
					},
				}),
				q(72595, {	-- The Search for Bovan Windtotem
					["sourceQuests"] = { 72593 },	-- A Tomul-tuous Beginning
					["provider"] = { "n", 202707 },	-- Baine Bloodhoof
					["coord"] = { 69.3, 47.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(202405),	-- Bloody Axe
						i(202414),	-- Tauren Necklace
						i(202415),	-- Unique Headdress
					},
				}),
				q(74946, {	-- A Place of Refuge
					["sourceQuests"] = {
						72662,	-- Resupplying Supplies
						72595,	-- The Search for Bovan Windtotem
					},
					["provider"] = { "n", 202707 },	-- Baine Bloodhoof
					["coord"] = { 69.3, 47.7, OHNAHRAN_PLAINS },
				}),
				q(72594, {	-- Delivering Bad News
					["sourceQuests"] = { 74946 },	-- A Place of Refuge
					["provider"] = { "n", 200492 },	-- Scout Tomul
					["coord"] = { 73.3, 55.1, OHNAHRAN_PLAINS },
				}),
				q(72663, {	-- Pinewood Trail
					["sourceQuests"] = { 72594 },	-- Delivering Bad News
					["provider"] = { "n", 200831 },	-- Baine Bloodhoof
					["coord"] = { 72.8, 55.8, OHNAHRAN_PLAINS },
				}),
				q(72600, {	-- A Proper Shikaar Send-Off
					["sourceQuests"] = { 72663 },	-- Pinewood Trail
					["provider"] = { "n", 200933 },	-- Scout Tomul
					["coord"] = { 80.9, 57.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(203470),	-- Shikaar Banners
					},
				}),
				q(72599, {	-- Joint Rescue Operation
					["sourceQuests"] = { 72663 },	-- Pinewood Trail
					["provider"] = { "n", 200932 },	-- Baine Bloodhoof
					["coord"] = { 80.9, 57.6, OHNAHRAN_PLAINS },
				}),
				q(72601, {	-- Bovan's Last Hope
					["sourceQuests"] = {
						72600,	-- A Proper Shikaar Send-Off
						72599,	-- Joint Rescue Operation
					},
					["provider"] = { "n", 200938 },	-- Scout Tomul
					["coord"] = { 87.2, 51.5, OHNAHRAN_PLAINS },
				}),
				q(72602, {	-- Optimistic Mystic
					["sourceQuests"] = { 72601 },	-- Bovan's Last Hope
					["provider"] = { "n", 199409 },	-- Windsage Boku
					["coord"] = { 56.6, 73.8, OHNAHRAN_PLAINS },
					["groups"] = {
						i(203473),	-- Geyser Flower (QI!)
					},
				}),
				q(72603, {	-- What Words Are Worth
					["sourceQuests"] = { 72602 },	-- Optimistic Mystic
					["provider"] = { "n", 199409 },	-- Windsage Boku
					["coord"] = { 56.9, 71.6, OHNAHRAN_PLAINS },
				}),
				q(72604, {	-- Desperate Rescue
					["sourceQuests"] = { 72603 },	-- What Words Are Worth
					["provider"] = { "n", 201424 },	-- Baine Bloodhoof
					["coord"] = { 56.9, 71.6, OHNAHRAN_PLAINS },
				}),
				q(72605, {	-- Saving Bovan Windtotem
					["sourceQuests"] = { 72604 },	-- Desperate Rescue
					["provider"] = { "n", 201488 },	-- Baine Bloodhoof
					["coord"] = { 38.1, 34.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(203685),	-- Borrowed Potion of Invisiblity
					},
				}),
				q(72606, {	-- See Red
					["sourceQuests"] = { 72605 },	-- Saving Bovan Windtotem
					["provider"] = { "n", 201516 },	-- Baine Bloodhoof
					["coord"] = { 33.3, 42.7, OHNAHRAN_PLAINS },
				}),
				q(72607, {	-- Old Hatreds
					["sourceQuests"] = { 72606 },	-- See Red
					["provider"] = { "n", 203204 },	-- Baine Bloodhoof
				}),
				q(72609, {	-- Case Closed
					["sourceQuests"] = { 72607 },	-- Old Hatreds
					["provider"] = { "n", 201530 },	-- Scout Tomul
					["coord"] = { 33.4, 42.8, OHNAHRAN_PLAINS },
				}),
				q(72611, {	-- Letting Go
					["sourceQuests"] = { 72609 },	-- Case Closed
					["provider"] = { "n", 201566 },	-- Baine Bloodhoof
					["coord"] = { 72.7, 56.1, OHNAHRAN_PLAINS },
				}),
				q(75258, {	-- A Final Word
					["sourceQuests"] = { 72611 },	-- 72611
					["provider"] = { "n", 203204 },	-- Baine Bloodhoof
					["coord"] = { 72.7, 56.1, OHNAHRAN_PLAINS },
					["groups"] = {
						i(203679, {	-- Ancestral Bloodhoof Totem
							["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
						}),
						i(204084, {	-- Ancestor's Might
							["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
						}),
						ach(17546),	-- A New Beginning
						i(203725),	-- Display of Strength (TOY!)
					},
				}),
			})),
			header(HEADERS.Spell, 375232, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- Emerald Dream
				q(76982, {	-- A Sentinel's Summon
					["timeline"] = { REMOVED_10_2_0 },
					["maps"] = { VALDRAKKEN },
				}),
				q(75918, {	-- Fire Season
					["sourceQuests"] = {
						-- #if AFTER 11.2.7
						91695,	-- Tracking Down Incarnates
						-- #else
						76982,	-- A Sentinel's Summon
						-- #endif
					},
					["provider"] = { "n", 205067 },	-- Shandris Feathermoon
					["coord"] = { 50.3, 52.8, VALDRAKKEN },
				}),
				-- These first two quests can be accepted in any order, but accepting one will change the creatureID of Shandris.
				q(75919, {	-- Dousing the Wards
					["sourceQuests"] = { 75918 },	-- Fire Season
					["qgs"] = {
						205068,	-- Shandris Feathermoon
						205134,	-- Shandris Feathermoon
					},
					["coord"] = { 18.6, 79.8, OHNAHRAN_PLAINS },
				}),
				q(75920, {	-- Eyes of Fire
					["sourceQuests"] = { 75918 },	-- Fire Season
					["qgs"] = {
						205068,	-- Shandris Feathermoon
						205134,	-- Shandris Feathermoon
					},
					["coord"] = { 18.6, 79.8, OHNAHRAN_PLAINS },
				}),
				q(75921, {	-- Through the Flames
					["sourceQuests"] = {
						75919,	-- Dousing the Wards
						75920,	-- Eyes of Fire
					},
					["provider"] = { "n", 205892 },	-- Shandris Feathermoon
					["groups"] = {
						i(206598),	-- Smoldering Blossom (QI!)
					},
				}),
				q(75922, {	-- Inflammatory Information
					["sourceQuests"] = { 75921 },	-- Through the Flames
					["provider"] = { "n", 205134 },	-- Shandris Feathermoon
					["coord"] = { 21.8, 77.4, OHNAHRAN_PLAINS },
				}),
				q(75923, {	-- Raise the Alarm
					["sourceQuests"] = { 75922 },	-- Inflammatory Information
					["provider"] = { "n", 205142 },	-- Shandris Feathermoon
					["coord"] = { 21.7, 77.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(206353),	-- Sentinel's Whistle (QI!)
					},
				}),
			})),
			------ Miscellaneous ------
			q(70155, {	-- Look, Listen, and Breathe
				["provider"] = { "n", 194282 },	-- Threshrak
				["coord"] = { 34.1, 59.4, OHNAHRAN_PLAINS },
				["classes"] = { EVOKER },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["groups"] = {
					i(198450),	-- Old Crabshell (QI!)
					i(198456),	-- Oliveye Fry (QI!)
					i(198455),	-- Tangled Roots (QI!)
				},
			}),
			q(70319, {	-- Nergazurai
				["sourceQuests"] = { 65783 },	-- Welcome at Our Fire
				["provider"] = { "n", 194904 },	-- Muqur Rain-Touched
				["coord"] = { 84.5, 25.3, OHNAHRAN_PLAINS },
				["groups"] = {
					i(198795),	-- Hornstrider Scale (QI!)
					i(198792),	-- Ottuk Heart (QI!)
					i(198793),	-- Rockfang Femur (QI!)
					i(198794),	-- Vulture Gizzard (QI!)
				},
			}),
			q(66226, {	-- Emotional Support Companions
				["provider"] = { "n", 187796 },	-- Initiate Kittileg
				["coord"] = { 47.0, 71.2, OHNAHRAN_PLAINS },
				["groups"] = {
					i(198039),	-- Rock of Appreciation (TOY!)
					i(193059),	-- Raidu the Rabbit
					i(193062),	-- Taichek the Timbertooth
					i(193061),	-- Dumen the Duckling
					i(193060),	-- Ongke the Ottuk
				},
			}),
			q(71027, {	-- WANTED: Mara'nar the Thunderous
				["sourceQuests"] = {
					66201,	-- Hooves of War
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "o", 381701 },	-- WANTED: Mara'nar the Thunderous
				["coord"] = { 39.6, 56.4, OHNAHRAN_PLAINS },
				["groups"] = {
					i(200270),	-- Mara'nar's Thunderous Plate (QI!)
				},
			}),
			q(70985, {	-- The Lonely Scout
				["provider"] = { "n", 195489 },	-- Scout Santuun
				["coord"] = { 34.2, 54.0, OHNAHRAN_PLAINS },
			}),
			q(72063, {	-- Return Yennu's Toy Boat
				["provider"] = { "i", 200876 },	-- Yennu's Toy Boat
				["coord"] = { 52.0, 58.3, OHNAHRAN_PLAINS },
				["groups"] = {
					i(200878),	-- Wheeled Floaty Boaty Controller (TOY!)
				},
			}),
			q(70368, {	-- Occupation Examination
				["description"] = "This quest requires that you have no primary professions learned. Both versions complete at the same time.",
				["provider"] = { "n", 192498 },	-- Hephaesta
				["coord"] = { 71.8, 78.7, OHNAHRAN_PLAINS },
			}),
			q(70370, {	-- Occupation Examination
				["description"] = "This quest requires that you have at least one open primary profession slot. Both versions complete at the same time.",
				["provider"] = { "n", 192498 },	-- Hephaesta
				["coord"] = { 71.8, 78.7, OHNAHRAN_PLAINS },
			}),
			n(BONUS_OBJECTIVES, {	-- All of these are One-Time
				q(69968, {	-- Prozela Galeshot
					["provider"] = { "n", 193669 },	-- Prozela Galeshot
					["coord"] = { 59.9, 66.9, OHNAHRAN_PLAINS },
				}),
				q(69851, {	-- Ripsaw the Stalker
					["provider"] = { "n", 193153 },	-- Ripsaw the Stalker
					["coord"] = { 26.3, 65.4, OHNAHRAN_PLAINS },
				}),
				q(70783, {	-- Skaara
					["provider"] = { "n", 192949 },	-- Skaara
					["coord"] = { 44.9, 49.2, OHNAHRAN_PLAINS },
				}),
				q(69837, {	-- Sunscale Behemoth
					["provider"] = { "n", 193133 },	-- Sunscale Behemoth
					["coord"] = { 63.2, 48.6, OHNAHRAN_PLAINS },
				}),
				q(69852, {	-- Territorial Coastling
					["provider"] = { "n", 193163 },	-- Territorial Coastling
					["coord"] = { 22.7, 67.6, OHNAHRAN_PLAINS },
				}),
				q(65892, {	-- The Sundered Asunder
					["description"] = "You must be at least level 62 for this to pop up.\nIt does not appear there are any pre-requisite quests.\nThis became available at 70 during TWW pre-patch.",
					-- ["sourceQuests"] = {  },	--
					["coord"] = { 64.0, 17.8, OHNAHRAN_PLAINS },
					["lockCriteria"] = { 1, "lvl", 71 },
				}),
				q(66421, {	-- The Storm Scar
					["sourceQuests"] = { 66331 },	-- The Primalist Front
					["coord"] = { 25.7, 40.5, OHNAHRAN_PLAINS },
				}),
				q(66970, {	-- Ty'foon the Ascended
					["provider"] = { "n", 191354 },	-- Ty'foon the Ascended
					["coord"] = { 26.1, 34.2, OHNAHRAN_PLAINS },
				}),
				q(72364, {	-- Zarizz
					["provider"] = { "n", 193140 },	-- Zarizz
					["coord"] = { 30.3, 62.1, OHNAHRAN_PLAINS },
					["isDaily"] = true,
					-- Note: this is not a one time quest according to Errors reports.
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(OHNAHRAN_PLAINS, {
			n(ACHIEVEMENTS, {
				q(72610, {["timeline"] = {ADDED_10_0_7}}),	-- After getting the achievement "A New Beginning"
			}),
			n(QUESTS, {
				q(73701),	-- triggered during 'Unwelcome Outsider' (questID 66021) (spellID 399693)
				q(71203),	-- daily lockout for 'To Tame A Thunderspine' series
				q(70724),	-- triggered during 'The Calm Before the Storm' (spellID 419065)
				q(70749),	-- triggered when looting the talisman off windsage garuman (spellID 387958)
				q(70505),	-- triggered when talking to Tigari Khan after looting the talisman off windsage garuman (spellID 386172)
				q(72064),	-- triggered when receiving toy from Yennu
				q(66887),	-- Choose Trophy from First Hunt (Renewal of Vows 66783)
				q(66888),	-- Choose Blood (Renewal of Vows 66783)
				q(66889),	-- Choose Eagle Feather (Renewal of Vows 66783)
				q(69867),	-- Stay and Listen Merithra 18.7,51.6 (LQ 70928)
				q(66505),	-- triggered when talking to Ranger Bolor and giving them Batu's Collar (spellID 372100)
				q(66512),	-- triggered when talking to Hunter Zaya and giving her Sarnai's Collar (spellID 372102)
				-- q(70141),	-- Triggered when killed Skaara
				q(73904),	-- Completed after killing Bloodgullet (NPC 193254)
			}),
		}),
	}),
})));
