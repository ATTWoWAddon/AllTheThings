-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local CONDUIT_GROUP = {
	-- DK
	i(182113),	-- Fleeting Wind
	i(182133),	-- Insatiable Appetite
	-- DH
	i(182317),	-- Shattered Restoration
	i(182324),	-- Felfire Haste
	-- Druid
	i(183466),	-- Innate Resolve
	i(183467),	-- Tireless Pursuit
	-- Hunter
	i(182584),	-- Cheetah's Vigor
	i(182469),	-- Rejuvenating Wind
	-- Mage
	i(181707),	-- Diverted Energy
	i(181467),	-- Flow of Time
	-- Monk
	i(181512),	-- Dizzying Tumble
	i(181373),	-- Harm Denial
	-- Paladin
	i(182336),	-- Golden Path
	i(182448),	-- Light's Barding
	-- Priest
	i(181840),	-- Light's Inspiration
	i(181962),	-- Mental Recovery
	-- Rogue
	i(183500),	-- Fade to Nothing
	i(183496),	-- Nimble Fingers
	-- Shaman
	i(182106),	-- Refreshing Waters
	i(182108),	-- Thunderous Paws
	-- Warlock
	i(182460),	-- Accrued Vitality
	i(182466),	-- Shade of Terror
	-- Warrior
	i(181469),	-- Indelible Victory
	i(180847),	-- Inspiring Presence
};
local LFR_WEAPON_GROUP = {
	i(183893, {modID = 4, }),	-- Abominable Anima Spherule
	i(183892, {modID = 4, }),	-- Mystic Anima Spherule
	i(183891, {modID = 4, }),	-- Venerated Anima Spherule
	i(183890, {modID = 4, }),	-- Zenith Anima Spherule
	i(183888, {modID = 4, }),	-- Apogee Anima Bead
	i(183889, {modID = 4, }),	-- Thaumaturgic Anima Bead
};
-- TODO: quest through as Venthyr and unlock Adventures Scouting Map first instead of Mirror Network to test alternative version of "Our True Purpose"
-- "Our True Purpose" 59324 no longer shows as a 'valid Quest' from the server (2020-12-04), meaning likely no character has acquired it this week (2) of the expac?
-- But it is complete for my main, as well as 62921... /shrug

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ customCollect = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(QUESTS, {
			q(63215, {	-- Report to Draven
				sourceQuests = {
					-- TODO: confirm
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
				},
				sourceQuestNumRequired = 1,
				qg = 159478,	-- Tal-Inara
				coord = { 39.2, 69.7, ORIBOS },
				isBreadcrumb = true,
			}),
			q(59314, {	-- Sinfall
				sourceQuests = {
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
					63215,	-- Report to Draven [Skip]
				},
				sourceQuestNumRequired = 2,	-- You want to be able to be given the Breadcrumb warning so you can pickup General Draven quest.
				qg = 171589,	-- General Draven
				coord = { 44.8, 68.9, ORIBOS },
			}),
			q(57889, {	-- "Accidental" Arson
				sourceQuest = 57887,	-- Killing the Messenger
				qg = 159694,	-- The Countess
				coord = { 58.0, 27.5, REVENDRETH },
				groups = {
					i(180917),	-- Soulbreaker's Ebony Leggings
					i(180919),	-- Ebony Death Shroud Breeches
					i(180918),	-- Fearstalker's Ebony Leggings
					i(180916),	-- Dread Sentinel's Ebony Legguards
				},
			}),
			q(62695, {	-- A Call to Service
				sourceQuest = 62857,	-- The Court's Bounty
				qg = 175772,	-- Rahel
				coord = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(62914, {	-- A Coalition of the Willing
				sourceQuest = 62870,	-- Souls for Sinfall
				qg = 164738,	-- Tenaval
				coord = { 45.9, 27.6, SINFALL_REACHES },
			}),
			q(62920, {	-- A Conduit For Change
				sourceQuest = 62919,	-- Strengthening the Bond
				qg = 171950,	-- The Accuser
				coord = { 44.6, 20.1, SINFALL_REACHES },
			}),
			q(57885, {	-- A Discreet Entrance
				sourceQuest = 57884,	-- Reclaiming Thornhill Manor
				qg = 159513,	-- Bogdan
				coord = { 58.8, 29.9, REVENDRETH },
			}),
			q(57886, {	-- A Meal and a Deal
				sourceQuest = 57885,	-- A Discreet Entrance
				qg = 159694,	-- The Countess
				coord = { 58.0, 27.5, REVENDRETH },
			}),
			q(58600, {	-- A Perfect Circle
				sourceQuests = {
					58585,	-- No Friend of Mine
					58584,	-- Right Our Wrongs
					58586,	-- The Right Stuff
				},
				qg = 160280,	-- Mikanikos
				coord = { 50.1, 20.5, BASTION },
				qis = {
					180450,	-- Assorted Bolts (QI!)
					180448,	-- Eroded Heat Sink (QI!)
					180449,	-- Failed Experiment (QI!)
					174330,	-- Perfected Circlet Mold (QI!)
				},
			}),
			q(59325, {	-- A Stalwart Ally
				sourceQuest = 58407,	-- The Medallion of Dominion
				qg = 161977,	-- General Draven
				coord = { 46.2, 14.7, SINFALL_REACHES },
				groups = { follower(1209) },	-- General Draven
			}),
			q(65169, {	-- A Stalwart Ally
				sourceQuest = 62920,	-- A Conduit For Change
				qg = 161977,	-- General Draven
				coord = { 46.1, 14.9, SINFALL_REACHES },
				timeline = { ADDED_9_1_5 },
				groups = { follower(1209) },	-- General Draven
			}),
			q(58555, {	-- A Tense Reunion
				sourceQuest = 58530,	-- Hidden Mirror
				qg = 162213,	-- General Draven
				coord = { 49.7, 30.1, BASTION },
			}),
			q(60183, {	-- After Them!
				sourceQuests = {
					57771,	-- An Unwelcome Incursion
					60265,	-- Disrupting the Chain
					57772,	-- Fangs and Minds
					60145,	-- Third Talon Vartox
				},
				qg = 167381,	-- Baroness Draka
				coord = { 56.3, 66.6, REVENDRETH },
			}),
			q(57880, {	-- An Estate Within the Old Gate
				sourceQuest = 60904,	-- Medallion of Desire
				qg = 161979,	-- Theotar
				coord = { 50.2, 18.6, SINFALL_REACHES },
				qi = 173158,	-- Theotar's Note (QI!)
			}),
			q(58424, {	-- An Eye for an Amulet
				sourceQuests = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				qg = 160956,	-- Watcher Emil
				coord = { 72.6, 37.5, REVENDRETH },
			}),
			q(57888, {	-- An Invitation to Treachery
				sourceQuest = 57887,	-- Killing the Messenger
				qg = 159694,	-- The Countess
				coord = { 58.0, 27.5, REVENDRETH },
				qi = 173358,	-- Invitations (QI!)
			}),
			q(57771, {	-- An Unwelcome Incursion
				sourceQuest = 57727,	-- Stonevigil Unrest
				qg = 167381,	-- Baroness Draka
				coord = { 56.3, 66.6, REVENDRETH },
				groups = { i(180947) },	-- Tithe Collector's Vessel (TOY!)
			}),
			q(59323, {	-- Anima Awakening
				sourceQuest = 59321,	-- Sacred Covenant
				qg = 171934,	-- Prince Renathal
				coord = { 45.3, 30.3, SINFALL_DEPTHS },
			}),
			q(62902, {	-- Anima is Power
				description = "Becomes available after you complete your first Calling quest.",
				sourceQuest = 62691,	-- A Calling in Revendreth
				qg = 165302,	-- Rendle
				coord = { 61.6, 75.7, SINFALL_DEPTHS },
			}),
			q(62905, {	-- Back into the Darkness
				sourceQuest = 62904,	-- The Souls Plight
				qg = 164738,	-- Tenaval
				coord = { 46.0, 27.9, SINFALL_REACHES },
			}),
			q(57890, {	-- Beautiful, But Deadly
				sourceQuest = 57887,	-- Killing the Messenger
				qg = 159694,	-- The Countess
				coord = { 58.0, 27.5, REVENDRETH },
				groups = {
					o(338520, {	-- Duskmire Mushroom
						i(173286),	-- Duskmire Mushroom (QI!)
					}),
				},
			}),
			q(62918, {	-- Binding Power
				sourceQuest = 62915,	-- Home Improvement
				qg = 171950,	-- The Accuser
				coord = { 46.2, 21.6, SINFALL_REACHES },
				groups = { follower(1208) },	-- Nadjia the Mistblade
			}),
			q(58388, {	-- Blackbale Betrayers
				sourceQuest = 58443,	-- Continued Care of Kael'thas
				qg = 161421,	-- The Accuser
				coord = { 46.4, 51.4, REVENDRETH },
			}),
			q(58337, {	-- Break Out
				sourceQuest = 58842,	-- The Curator
				qg = 161056,	-- Guard Captain Elizabeta
				coord = { 65.9, 32.2, REVENDRETH },
				qi = 174040,	-- Chains of Regret (QI!)
			}),
			q(62856, {	-- Building Your Renown
				sourceQuest = 59323,	-- Anima Awakening
				qg = 171934,	-- Prince Renathal
				coord = { 45.5, 28.7, SINFALL_DEPTHS },
			}),
			q(60993, {	-- Citadel of Loyalty
				sourceQuest = 58656,	-- Heavy is the Head...
				qg = 160280,	-- Mikanikos
				coord = { 50.1, 20.5, BASTION },
			}),
			q(58326, {	-- Combing the Catacombs
				sourceQuest = 58842,	-- The Curator
				qg = 161056,	-- Guard Captain Elizabeta
				coord = { 65.9, 32.2, REVENDRETH },
			}),
			q(59701, {	-- Common Ground
				description = "Requires Renown 5.",
				sourceQuests = { 59324, 62921 },	-- Our True Purpose
				qg = 158653,	-- Prince Renathal
				coord = { 51.0, 38.0, SINFALL_REACHES },
			}),
			q(61077, {	-- Confronting Sin
				description = "Requires Renown 17.",
				sourceQuest = 59233,	-- The Prince's New Crown
				qg = 158653,	-- Prince Renathal
				coord = { 52.0, 37.6, SINFALL_REACHES },
			}),
			q(58443, {	-- Continued Care of Kael'thas
				sourceQuest = 58387,	-- We Each Must Carry Our Own Sins
				qg = 161278,	-- The Accuser
				coord = { 43.8, 51.4, REVENDRETH },
			}),
			q(58630, {	-- Crown of the Harvesters
				sourceQuests = {
					58600,	-- A Perfect Circle
					58603,	-- Phaestus, Genesis of Aeons
				},
				qg = 160280,	-- Mikanikos
				coord = { 50.1, 20.5, BASTION },
			}),
			q(58428, {	-- Crypt Crashers
				sourceQuests = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				qg = 160941,	-- The Curator <Harvester of Avarice>
				coord = { 72.7, 37.6, REVENDRETH },
				groups = {
					o(339837, {	-- Powder Bag
						i(174098),	-- Death Lotus Powder (QI!)
					}),
					o(353305, {	-- Stonebreaker Mallet
						i(174100),	-- Stonebreaker Mallet (QI!)
					}),
				},
			}),
			q(58392, {	-- Death's End Destruction
				sourceQuest = 58391,	-- Reconnaissance... for my, uh, Recovery
				qg = 161572,	-- Kael'thas Sunstrider
				coord = { 69.8, 59.9, REVENDRETH },
			}),
			q(60995, {	-- Disloyalty
				sourceQuest = 60993,	-- Citadel of Loyalty
				qg = 170999,	-- General Draven
				coord = { 24.3, 29.8, BASTION },
			}),
			q(60265, {	-- Disrupting the Chain
				sourceQuest = 57727,	-- Stonevigil Unrest
				provider = { "i", 178557 },	-- Supply Chain Memo
				coord = { 57.4, 69.2, REVENDRETH },	-- rough area
				qi = 178557,	-- Supply Chain Memo (QI!)
			}),
			q(58384, {	-- Dredgers Left Behind
				sourceQuest = 58426,	-- In the Shadow of our Failures
				qg = 161208,	-- The Accuser
				coord = { 42.2, 47.5, REVENDRETH },
			}),
			q(57892, {	-- Enacting Immediate Justice
				sourceQuest = 57891,	-- Mix, Mingle, and Meddle
				qg = 159946,	-- The Countess
				coord = { 56.9, 28.7, REVENDRETH },
			}),
			q(58395, {	-- Enough Vengeance For One Day
				sourceQuest = 58394,	-- Lady Ouix'Ara
				qg = 161436,	-- Kael'thas Sunstrider
				-- no coords, is your 'pet'
				groups = {
					i(180902),	-- Dread Sentinel's Ebony Chestplate
					i(180904),	-- Ebony Death Shroud Vest
					i(180903),	-- Fearstalker's Ebony Hauberk
					i(180901),	-- Soulbreaker's Ebony Vestments
				},
			}),
			q(60996, {	-- Face Your Fears
				sourceQuests = {
					60995,	-- Disloyalty
					60994,	-- Lowering Their Defenses
				},
				qg = 171147,	-- General Draven
				coord = { 24.3, 29.7, BASTION },
				qi = 180605,	-- Crown of the Harvesters (QI!)
			}),
			q(57772, {	-- Fangs and Minds
				sourceQuest = 57727,	-- Stonevigil Unrest
				qg = 167380,	-- Prince Renethal
				coord = { 56.3, 66.7, REVENDRETH },
				qi = 178213,	-- Prince Renathal's Decree (QI!)
			}),
			q(60500, {	-- Halls of Atonement: Medallion of Pride
				sourceQuests = { 59324, 62921 },	-- Our True Purpose
				provider = { "o", 352520 },	-- Medallion of Pride
				coord = { 56.8, 30.8, SINFALL_REACHES },
				qi = 179024,	-- Medallion of Pride (QI!)
			}),
			q(59676, {	-- Harvester of Desire
				sourceQuest = 59706,	-- Invitation for the Countess
				qg = 165658,	-- Cudgelface
				coord = { 52.4, 35.4, REVENDRETH },
			}),
			q(59711, {	-- Harvester of Envy
				sourceQuest = 59707,	-- Invitation for the Tithelord
				qg = 165818,	-- Nadjia the Mistblade
				coord = { 72.1, 74.9, REVENDRETH },
			}),
			q(59720, {	-- Harvester of Wrath
				sourceQuest = 59708,	-- Invitation for the Stonewright
				qg = 165865,	-- General Draven
				coord = { 40.3, 30.7, REVENDRETH },
			}),
			q(58656, {	-- Heavy is the Head...
				sourceQuest = 58630,	-- Crown of the Harvesters
				qg = 174587,	-- Mikanikos
				coord = { 51.4, 18.5, BASTION },
			}),
			q(58530, {	-- Hidden Mirror
				sourceQuest = 61050,	-- How to Wear Seven Medallions
				qg = 161514,	-- General Draven
				coord = { 43.8, 46.4, SINFALL_REACHES },
				qi = 180356,	-- Laurent's Compact Looking Glass (QI!)
			}),
			q(62915, {	-- Home Improvement
				sourceQuest = 62837,	-- Hopeful News
				qg = 172605,	-- Foreman Flatfinger
				coord = { 55.3, 27.4, SINFALL_REACHES },
			}),
			q(61050, {	-- How to Wear Seven Medallions
				description = "Requires Renown 13.",
				sourceQuest = 58444,	-- Return to Sinfall
				qg = 158653,	-- Prince Renathal
				coord = { 51.3, 38.0, SINFALL_REACHES },
			}),
			q(58426, {	-- In the Shadow of our Failures
				sourceQuest = 58383,	-- The Many Sins of Kael'thas Sunstrider
				qg = 161158,	-- The Accuser
				coord = { 46.5, 32.2, SINFALL_DEPTHS },
			}),
			q(62903, {	-- Into the Reservoir
				sourceQuest = 62902,	-- Anima is Power
				qg = 172605,	-- Foreman Flatfinger
				coord = { 54.9, 26.3, SINFALL_REACHES },
			}),
			q(59706, {	-- Invitation for the Countess
				sourceQuests = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				qg = 165661,	-- Prince Renathal
				coord = { 41.0, 54.7, REVENDRETH },
			}),
			q(59708, {	-- Invitation for the Stonewright
				sourceQuests = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				qg = 165661,	-- Prince Renathal
				coord = { 41.0, 54.7, REVENDRETH },
			}),
			q(59707, {	-- Invitation for the Tithelord
				sourceQuests = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				qg = 165661,	-- Prince Renathal
				coord = { 41.0, 54.7, REVENDRETH },
			}),
			q(57887, {	-- Killing the Messenger
				sourceQuest = 57886,	-- A Meal and a Deal
				qg = 159694,	-- The Countess
				coord = { 58.0, 27.5, REVENDRETH },
				qi = 173285,	-- Treasonous Missive (QI!)
			}),
			q(59343, {	-- Kindred Spirits
				sourceQuest = 59719,	-- The Court
				qg = 172042,	-- Theotar
				coord = { 50.3, 18.8, SINFALL_REACHES },
				groups = { follower(1210) },	-- Theotar
			}),
			q(65170, {	-- Kindred Spirits
				sourceQuest = 62920,	-- A Conduit For Change
				qg = 161979,	-- Theotar
				coord = { 50.5, 18.0, SINFALL_REACHES },
				timeline = { ADDED_9_1_5 },
				groups = { follower(1210) },	-- Theotar
			}),
			q(58394, {	-- Lady Ouix'Ara
				sourceQuests = {
					58392,	-- Death's End Destruction
					58393,	-- Strategic Executions
				},
				qg = 161436,	-- Kael'thas Sunstrider
				maps = { REVENDRETH },
			}),
			q(58372, {	-- Lead the Way
				sourceQuest = 58325,	-- Watcher Emil
				qg = 160956,	-- Watcher Emil
				coord = { 65.9, 28.8, REVENDRETH },
				groups = {
					i(180924),	-- Dread Sentinel's Ebony Girdle
					i(180927),	-- Ebony Death Shroud Belt
					i(180926),	-- Fearstalker's Ebony Belt
					i(180925),	-- Soulbreaker's Ebony Sash
				},
			}),
			q(58385, {	-- Learning to Sacrifice
				sourceQuest = 58426,	-- In the Shadow of our Failures
				qg = 161208,	-- The Accuser
				coord = { 42.2, 47.5, REVENDRETH },
			}),
			q(60994, {	-- Lowering Their Defenses
				sourceQuest = 60993,	-- Citadel of Loyalty
				qg = 171001,	-- Mikanikos
				coord = { 24.3, 29.8, BASTION },
			}),
			q(58389, {	-- Maldraxxian Weapons
				sourceQuest = 58443,	-- Continued Care of Kael'thas
				provider = { "i", 174212 },	-- Suspicious Weapon
				coord = { 48.3, 54.4, REVENDRETH },
				crs = {
					161448,	-- Blackbale Lookout
					161480,	-- Blackbale Extortionist
				},
				groups = {
					i(174211),	-- Maldraxxian Weapon (QI!)
					i(174212),	-- Suspicious Weapon (QI!)
				},
			}),
			q(60935, {	-- Medallion of Avarice
				description = "Requires Renown 11.",
				sourceQuest = 57893,	-- Neither Enemy nor Ally
				provider = { "o", 353949 },	-- Medallion of Avarice
				coord = { 54.9, 30.9, SINFALL_REACHES },
			}),
			q(60904, {	-- Medallion of Desire
				description = "Requires Renown 8.",
				sourceQuest = 59719,	-- The Court
				provider = { "o", 353948 },	-- Medallion of Desire
				coord = { 53.6, 32.9, SINFALL_REACHES },
			}),
			q(58406, {	-- Mirror to Maldraxxus
				description = "Requires Renown 22.",
				sourceQuest = 57646,	-- The Tithelord
				qg = 158653,	-- Prince Renethal
				coord = { 51.8, 37.5, SINFALL_REACHES },
			}),
			q(58440, {	-- Mirror, Mirror...
				sourceQuests = {
					60673,	-- The Traitor
					58424,	-- An Eye for an Amulet
					58428,	-- Crypt Crashers
				},
				qg = 160941,	-- The Curator <Harvester of Avarice>
				coord = { 72.7, 37.6, REVENDRETH },
				groups = {
					i(180945),	-- Crypt Gargon (MOUNT!)
					i(174179),	-- Death Lotus Powder (QI!)
					o(339869, {	-- Curator's Chest
						i(174111),	-- Medallion of Avarice (QI!)
					}),
				},
			}),
			q(57891, {	-- Mix, Mingle, and Meddle
				sourceQuests = {
					57889,	-- "Accidental" Arson
					57888,	-- An Invitation to Treachery
					57890,	-- Beautiful, But Deadly
				},
				qg = 159694,	-- The Countess
				coord = { 58.0, 27.5, REVENDRETH },
				groups = { i(174923) },	-- Duskmire Elixir (QI!)
			}),
			q(57893, {	-- Neither Enemy nor Ally
				sourceQuest = 57892,	-- Enacting Immediate Justice
				qg = 159946,	-- The Countess
				coord = { 56.9, 28.7, REVENDRETH },
				qi = 173287,	-- Medallion of Desire (QI!)
			}),
			q(58585, {	-- No Friend of Mine
				sourceQuest = 58555,	-- A Tense Reunion
				qg = 160280,	-- Mikanikos
				coord = { 50.1, 20.6, BASTION },
				qi = 174466,	-- Mikanikos's Tool Chest (QI!)
			}),
			q(62921, {	-- Our True Purpose
				sourceQuest = 62920,	-- A Conduit For Change
				qg = 171950,	-- The Accuser
				coord = { 44.6, 20.1, SINFALL_REACHES },
			}),
			q(59324, {	-- Our True Purpose
				-- sourceQuests = {  },	-- TODO: unknown. i think you get this version of "Our True Purpose" if you pursue the Adventures Scouting Map first, instead of Mirror Network?
				qg = 164741,	-- Tactician Sakaa
				coord = { 57.6, 58.8, SINFALL_REACHES },
			}),
			q(58603, {	-- Phaestus, Genesis of Aeons
				sourceQuests = {
					58585,	-- No Friend of Mine
					58584,	-- Right Our Wrongs
					58586,	-- The Right Stuff
				},
				qg = 160280,	-- Mikanikos
				coord = { 50.1, 20.5, BASTION },
				qi = 174061,	-- Phaestus, Genesis of Aeons (QI!)
			}),
			q(57884, {	-- Reclaiming Thornhill Manor
				sourceQuests = {
					57882,	-- Reestablishing the Household
					57881,	-- The Key to Rebuilding
				},
				qg = 159513,	-- Bogdan
				coord = { 60.4, 40.1, REVENDRETH },
			}),
			q(58391, {	-- Reconnaissance... for my, uh, Recovery
				sourceQuests = {
					58388,	-- Blackbale Betrayers
					58389,	-- Maldraxxian Weapons
					58518,	-- There's Always a Paper Trail
				},	--
				qg = 161431,	-- Kael'thas Sunstrider
				maps = { REVENDRETH },
			}),
			q(57882, {	-- Reestablishing the Household
				sourceQuest = 57880,	-- An Estate Within the Old Gate
				qg = 159513,	-- Bogdan
				coord = { 60.4, 40.1, REVENDRETH },
				qi = 174839,	-- Offer of Employment (QI!)
			}),
			q(61981, {	-- Replenish the Reservoir
				sourceQuests = { 59324, 62921 },	-- Our True Purpose
				provider = { "n", 172605 },	-- Foreman Flatfinger <Sanctum Upgrades>
				coord = { 55.5, 26.3, SINFALL_REACHES },
				isWeekly = true,
			}),
			q(58444, {	-- Return to Sinfall
				sourceQuest = 58440,	-- Mirror, Mirror...
				qg = 160941,	-- The Curator <Harvester of Avarice>
				coord = { 72.7, 37.6, REVENDRETH },
				qi = 174111,	-- Medallion of Avarice (QI!)
			}),
			q(58584, {	-- Right our Wrongs
				sourceQuest = 58555,	-- A Tense Reunion
				qg = 161526,	-- General Draven
				coord = { 50.1, 20.6, BASTION },
				groups = {
					i(180938),	-- Dread Sentinel's Ebony Cloak
					i(180936),	-- Ebony Death Shroud Cloak
					i(180937),	-- Fearstalker's Ebony Cloak
					i(180934),	-- Soulbreaker's Ebony Drape
				},
			}),
			q(59321, {	-- Sacred Covenant
				sourceQuest = 59315,	-- The Court of Harvesters
				qg = 164796,	-- Prince Renathal
				coord = { 50.9, 38.1, SINFALL_REACHES },
			}),
			q(63341, {	-- Sinfall Tactician
				description = "Requires Renown 22.",
				sourceQuest = 63340,	-- Sinfall Veteran
				qg = 175772,	-- Rahel
				coord = { 54.0, 27.2, SINFALL_REACHES },
				timeline = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
				-- TODO: Assumed SQ... double check by skipping to Renown 22
			}),
			q(64083, {	-- Sinfall Tactician #2
				description = "Requires Renown 59.",
				qg = 175772,	-- Rahel
				coord = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(63340, {	-- Sinfall Veteran
				description = "Requires Renown 7.",
				-- sourceQuests = {  },	-- probably requires something between "our true purpose" and "ashes of the tower," unsure what unlocks the ability to pick up "return lost souls," which gives renown
				qg = 175772,	-- Rahel
				coord = { 54.1, 26.8, SINFALL_REACHES },
				timeline = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64325, {	-- Sinfall Veteran #2
				description = "Requires Renown 43.",
				qg = 175772,	-- Rahel
				coord = { 54.1, 26.8, SINFALL_REACHES },
			}),
			q(58382, {	-- Someone Worth Saving
				sourceQuest = 61077,	-- Confronting Sin
				qg = 165291,	-- The Accuser
				coord = { 55.8, 78.7, SINFALL_DEPTHS },
			}),
			q(62870, {	-- Souls for Sinfall
				sourceQuest = 62837,	-- Hopeful News
				qg = 164079,	-- Highlord Bolvar Fordragon
				coord = { 40.0, 68.3, ORIBOS },
				qi = 180202,	-- Soulkeeper Crystal (QI!)
				groups = {
					i(180909),	-- Ebony Death Shroud Gloves
					i(180910),	-- Dread Sentinel's Ebony Grips
					i(180911),	-- Soulbreaker's Ebony Handwraps
					i(180912),	-- Fearstalker's Ebony Gauntlets
				},
			}),
			q(58421, {	-- Special Access
				sourceQuests = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				qg = 160941,	-- The Curator <Harvester of Avarice>
				coord = { 72.7, 37.6, REVENDRETH },
				qis = {
					174094,	-- Boian's Fangs (QI!)
					174095,	-- Daciana's Fangs (QI!)
					174093,	-- Ionata's Fangs (QI!)
				},
			}),
			q(57727, {	-- Stonevigil Unrest
				description = "Requires Renown 20.",
				sourceQuest = 58395,	-- Enough Vengeance For One Day
				qg = 158653,	-- Prince Renethal
				coord = { 51.8, 37.5, SINFALL_REACHES },
			}),
			q(58393, {	-- Strategic Executions
				sourceQuest = 58391,	-- Reconnaissance... for my, uh, Recovery
				qg = 161572,	-- Kael'thas Sunstrider
				coord = { 69.8, 59.9, REVENDRETH },
			}),
			q(62919, {	-- Strengthening the Bond
				sourceQuest = 62918,	-- Binding Power
				qg = 171979,	-- Nadjia the Mistblade
				coord = { 43.9, 17.9, SINFALL_REACHES },
				groups = appendGroups(CONDUIT_GROUP, {
					i(182962),	-- Catastrophic Origin
					i(182331),	-- Empowered Release
					i(183474),	-- Endless Thirst
					i(182777),	-- Hallowed Discernment
					i(182463),	-- Harrowing Punishment
					i(181774),	-- Imbued Reflections
					i(182288),	-- Impenetrable Gloom
					i(182685),	-- Increased Scrutiny
					i(183495),	-- Lashing Scars
					i(182348),	-- Lavish Harvest
					i(182130),	-- Shattered Perceptions
					i(181639),	-- Siphoned Malice
				}),
			}),
			q(57918, {	-- The Absolution of Souls
				description = "Becomes available after unlocking tier 1 of the Command Table sanctum upgrade.",
				altQuests = { 58093 },	-- Our Forgotten Purpose
				qg = 165291,	-- The Accuser
				coord = { 55.6, 76.6, SINFALL_DEPTHS },
				isBreadcrumb = true,
			}),
			q(59719, {	-- The Court
				sourceQuests = {
					59676,	-- Harvester of Desire
					59711,	-- Harvester of Envy
					59708,	-- Harvester of Wrath
				},
				qg = 165661,	-- Prince Renathal
				coord = { 41.0, 54.7, REVENDRETH },
				groups = {
					i(180929),	-- Dread Sentinel's Ebony Vambraces
					i(180931),	-- Ebony Death Shroud Bindings
					i(180930),	-- Fearstalker's Ebony Bracers
					i(180928),	-- Soulbreaker's Ebony Wraps
				},
			}),
			q(62857, {	-- The Court's Bounty
				sourceQuest = 62856,	-- Building Your Renown
				qg = 175772,	-- Rahel
				coord = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(59315, {	-- The Court of Harvesters
				sourceQuest = 59314,	-- Sinfall
				qg = 164742,	-- Prince Renathal
				coord = { 25.4, 56.1, SINFALL_REACHES },
			}),
			q(58842, {	-- The Curator
				sourceQuest = 60935,	-- Medallion of Avarice
				qg = 158653,	-- Prince Renathal
				coord = { 51.7, 37.6, SINFALL_REACHES },
			}),
			q(63033, {	-- The Highlord Calls
				sourceQuests = { 59324, 62921 },	-- Our True Purpose
				qg = 158653,	-- Prince Renathal
				coord = { 51.2, 37.8, SINFALL_REACHES },
			}),
			q(57881, {	-- The Key to Rebuilding
				sourceQuest = 57880,	-- An Estate Within the Old Gate
				qg = 159513,	-- Bogdan
				coord = { 60.4, 40.1, REVENDRETH },
				qi = 173180,	-- Ornate Key (QI!)
			}),
			q(58383, {	-- The Many Sins of Kael'thas Sunstrider
				sourceQuest = 58382,	-- Someone Worth Saving
				qg = 161158,	-- The Accuser
				coord = { 46.4, 32.3, SINFALL_DEPTHS },
			}),
			q(58407, {	-- The Medallion of Dominion
				sourceQuest = 58406,	-- Mirror to Maldraxxus
				qg = 170543,	-- General Draven
				coord = { 27.4, 40.3, REVENDRETH },
				maps = { 1689 },	-- Exoramas (Venthyr Renown 22 Scenario)
				groups = appendGroups(LFR_WEAPON_GROUP, { i(180948) }),	-- Battle Gargon Vrednic (MOUNT!)
			}),
			q(59233, {	-- The Prince's New Crown
				sourceQuest = 60996,	-- Face Your Fears
				qg = 171175,	-- General Draven
				coord = { 21.0, 22.8, BASTION },
				qi = 180604,	-- Crown of the Harvesters (QI!)
				groups = {
					i(180905),	-- Dread Sentinel's Ebony Greatboots
					i(180908),	-- Ebony Death Shroud Boots
					i(180907),	-- Fearstalker's Ebony Sabatons
					i(180906),	-- Soulbreaker's Ebony Slippers
				},
			}),
			q(61492, {	-- The Princeguard
				description = "Requires Renown 5.",
				sourceQuests = { 59324, 62921 },	-- Our True Purpose
				provider = { "n", 161977 },	-- General Draven
				coord = { 46.3, 15.7, SINFALL_REACHES },
				qi = 181516,	-- Stone-Laced Infused Ruby (QI!)
			}),
			q(58586, {	-- The Right Stuff
				sourceQuest = 58555,	-- A Tense Reunion
				qg = 160280,	-- Mikanikos
				coord = { 50.1, 20.6, BASTION },
				qis = {
					173880,	-- Purified Metal (QI!)
					174465,	-- Tainted Centurion Component (QI!)
				},
			}),
			q(62904, {	-- The Souls Plight
				sourceQuest = 62903,	-- Into the Reservoir
				qg = 172605,	-- Foreman Flatfinger
				coord = { 54.9, 26.3, SINFALL_REACHES },
			}),
			q(57646, {	-- The Tithelord
				sourceQuest = 57729,	-- To the Estate
				qg = 167689,	-- Prince Renethal
				coord = { 71.9, 68.8, REVENDRETH },
				qi = 173976,	-- Medallion of Envy (QI!)
				groups = {
					i(180921),	-- Dread Sentinel's Ebony Spaulders
					i(180920),	-- Ebony Death Shroud Spaulders
					i(180923),	-- Fearstalker's Ebony Monnion
					i(180922),	-- Soulbreaker's Ebony Mantle
				},
			}),
			q(60673, {	-- The Traitor
				sourceQuest = 58421,	-- Special Access
				qg = 161298,	-- Nourman <The Doorman>
				coord = { 77.5, 39.2, REVENDRETH },
				qi = 174092,	-- Mateo's Mirror Shard (QI!)
				groups = {
					i(180900),	-- Dread Sentinel's Ebony Headgear
					i(180915),	-- Ebony Death Shroud Hood
					i(180914),	-- Fearstalker's Ebony Helm
					i(180913),	-- Soulbreaker's Ebony Hood
				},
			}),
			q(58518, {	-- There's Always a Paper Trail
				sourceQuest = 58443,	-- Continued Care of Kael'thas
				qg = 161427,	-- Kael'thas Sunstrider
				maps = { REVENDRETH },
				qi = 174278,	-- Orders from the Tithelord (QI!)
			}),
			q(60145, {	-- Third Talon Vartox
				sourceQuest = 57727,	-- Stonevigil Unrest
				qg = 167381,	-- Baroness Draka
				coord = { 56.3, 66.6, REVENDRETH },
			}),
			q(57729, {	-- To the Estate
				sourceQuest = 60183,	-- After Them!
				qg = 167620,	-- Prince Renethal
				coord = { 61.5, 69.6, REVENDRETH },
			}),
			q(58386, {	-- Use My Strengths
				sourceQuest = 58426,	-- In the Shadow of our Failures
				qg = 161261,	-- Kael'thas Sunstrider
				maps = { REVENDRETH },
			}),
			q(58325, {	-- Watcher Emil
				sourceQuest = 58842,	-- The Curator
				qgs = {
					160941,	-- The Curator <Harvester of Avarice> (initial provider)
					160942,	-- Forgotten Soul (if you abandon it, this is in the follow-up quest area)
				},
				coords = {
					{ 72.7, 37.6, REVENDRETH },	-- The Curator
					{ 66.0, 28.9, REVENDRETH },	-- Forgotten Soul
				},
			}),
			q(58387, {	-- We Each Must Carry Our Own Sins
				sourceQuests = {
					58384,	-- Dredgers Left Behind
					58385,	-- Learning to Sacrifice
					58386,	-- Use My Strengths
				},
				qg = 161278,	-- The Accuser
				coord = { 43.8, 51.4, REVENDRETH },
				groups = { i(180941) },	-- Kael's Dark Sinstone Chain
			}),
			q(61334, {	-- Return Lost Souls (5)
				-- sourceQuests = {  },	-- TODO
				qg = 164738,	-- Tenaval
				coord = { 45.3, 28.5, SINFALL_REACHES },
				timeline = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				isWeekly = true,
			}),
			q(62867, {	-- Return Lost Souls (10)
				description = "Requires Renown 15.",
				-- sourceQuests = {  },	-- TODO
				qg = 164738,	-- Tenaval
				coord = { 45.3, 28.5, SINFALL_REACHES },
				timeline = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				isWeekly = true,
			}),
			q(62868, {	-- Return Lost Souls (15)
				description = "Requires Renown 24.",
				-- sourceQuests = {  },	-- TODO
				qg = 164738,	-- Tenaval
				coord = { 45.3, 28.5, SINFALL_REACHES },
				timeline = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				isWeekly = true,
			}),
			q(62869, {	-- Return Lost Souls (20)
				description = "Requires Renown 32.",
				-- sourceQuests = {  },	-- TODO
				qg = 164738,	-- Tenaval
				coord = { 45.3, 28.5, SINFALL_REACHES },
				isWeekly = true,
			}),
			q(65105, {	-- Return More Lost Souls
				sourceQuest = 62869,	-- Return Lost Souls (20)
				qg = 164738,	-- Tenaval
				coord = { 45.3, 28.5, SINFALL_REACHES },
				timeline = { ADDED_9_1_5 },
				repeatable = true,
			}),
		}),
	}),
})));

for _,g in ipairs({CONDUIT_GROUP,LFR_WEAPON_GROUP}) do
	for	_,t in ipairs(g) do
		t.customCollect = nil;
	end
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, {
	n(VENTHYR, bubbleDown({ customCollect = "SL_COV_VEN" }, {
		q(62699),	-- triggered when turning in #62691, "A Calling in Revendreth"
		q(62924),	-- triggered when turning in #62691, "A Calling in Revendreth"
		q(63001),	-- triggers when choosing to skip the Venthyr sanctum intro quests
		q(63023),	-- triggers when choosing to skip the Venthyr sanctum intro quests
		q(59316),	-- turning in quest #62918, "Binding Power"
		q(59317),	-- triggered when turning in #62919, "Strengthening the Bond"
		q(62749),	-- triggered when turning in #62921, "Our True Purpose"
		q(61546),	-- when looting 'Almost Empty Amontillado Cask' (181781) while on quest 'Crypt Crashers' (58428)
		q(58059),	-- when choosing House Briarbane while on "Enacting Immediate Justice"
		q(58061),	-- when choosing House Primrose while on "Enacting Immediate Justice"
		q(58063),	-- when choosing House Darkvein while on "Enacting Immediate Justice"
		q(58064),	-- when choosing House Sourwine while on "Enacting Immediate Justice"
		q(58065),	-- when choosing House Duskmire while on "Enacting Immediate Justice"
		q(58066),	-- when choosing House Sinfang while on "Enacting Immediate Justice"
	})),
}));
