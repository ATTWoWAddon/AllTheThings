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
	i(183893, {["modID"] = 4, }),	-- Abominable Anima Spherule
	i(183892, {["modID"] = 4, }),	-- Mystic Anima Spherule
	i(183891, {["modID"] = 4, }),	-- Venerated Anima Spherule
	i(183890, {["modID"] = 4, }),	-- Zenith Anima Spherule
	i(183888, {["modID"] = 4, }),	-- Apogee Anima Bead
	i(183889, {["modID"] = 4, }),	-- Thaumaturgic Anima Bead
};
--	TODO: quest through as Venthyr and unlock Adventures Scouting Map first instead of Mirror Network to test alternative version of "Our True Purpose"
-- "Our True Purpose" 59324 no longer shows as a 'valid Quest' from the server (2020-12-04), meaning likely no character has acquired it this week (2) of the expac?
-- But it is complete for my main, as well as 62921... /shrug

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(QUESTS, {
			q(63215, {	-- Report to Draven
				["provider"] = { "n", 159478 },	-- Tal-Inara
				["sourceQuests"] = {
					-- TODO: confirm
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 39.2, 69.7, ORIBOS },
				["isBreadcrumb"] = true,
			}),
			q(59314, {	-- Sinfall
				["provider"] = { "n", 171589 },	-- General Draven
				["sourceQuests"] = {
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
					63215,	-- Report to Draven [Skip]
				},
				["sourceQuestNumRequired"] = 2,	-- You want to be able to be given the Breadcrumb warning so you can pickup General Draven quest.
				["coord"] = { 44.8, 68.9, ORIBOS },
			}),
			q(57889, {	-- "Accidental" Arson
				["provider"] = { "n", 159694 },	-- The Countess
				["sourceQuests"] = { 57887 },	-- Killing the Messenger
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["groups"] = {
					i(180917),	-- Soulbreaker's Ebony Leggings
					i(180919),	-- Ebony Death Shroud Breeches
					i(180918),	-- Fearstalker's Ebony Leggings
					i(180916),	-- Dread Sentinel's Ebony Legguards
				},
			}),
			q(62695, {	-- A Call to Service
				["provider"] = { "n", 175772 },	-- Rahel
				["sourceQuests"] = { 62857 },	-- The Court's Bounty
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(62914, {	-- A Coalition of the Willing
				["provider"] = { "n", 164738 },	-- Tenaval
				["sourceQuests"] = { 62870 },	-- Souls for Sinfall
				["coord"] = { 45.9, 27.6, SINFALL_REACHES },
			}),
			q(62920, {	-- A Conduit For Change
				["provider"] = { "n", 171950 },	-- The Accuser
				["sourceQuests"] = { 62919 },	-- Strengthening the Bond
				["coord"] = { 44.6, 20.1, SINFALL_REACHES },
			}),
			q(57885, {	-- A Discreet Entrance
				["provider"] = { "n", 159513 },	-- Bogdan
				["sourceQuests"] = { 57884 },	-- Reclaiming Thornhill Manor
				["coord"] = { 58.8, 29.9, REVENDRETH },
			}),
			q(57886, {	-- A Meal and a Deal
				["provider"] = { "n", 159694 },	-- The Countess
				["sourceQuests"] = { 57885 },	-- A Discreet Entrance
				["coord"] = { 58.0, 27.5, REVENDRETH },
			}),
			q(58600, {	-- A Perfect Circle
				["provider"] = { "n", 160280 },	-- Mikanikos
				["sourceQuests"] = {
					58585,	-- No Friend of Mine
					58584,	-- Right Our Wrongs
					58586,	-- The Right Stuff
				},
				["coord"] = { 50.1, 20.5, BASTION },
				["groups"] = {
					i(180450),	-- Assorted Bolts (QI!)
					i(180448),	-- Eroded Heat Sink (QI!)
					i(180449),	-- Failed Experiment (QI!)
					i(174330),	-- Perfected Circlet Mold (QI!)
				},
			}),
			q(59325, {	-- A Stalwart Ally
				["provider"] = { "n", 161977 },	-- General Draven
				["sourceQuests"] = { 58407 },	-- The Medallion of Dominion
				["coord"] = { 46.2, 14.7, SINFALL_REACHES },
				["groups"] = {
					follower(1209),	-- General Draven
				},
			}),
			q(65169, {	-- A Stalwart Ally
				["provider"] = { "n", 161977 },	-- General Draven
				["sourceQuests"] = { 62920 },	-- A Conduit For Change
				["coord"] = { 46.1, 14.9, SINFALL_REACHES },
				["timeline"] = { ADDED_9_1_5 },
				["groups"] = {
					follower(1209),	-- General Draven
				},
			}),
			q(58555, {	-- A Tense Reunion
				["provider"] = { "n", 162213 },	-- General Draven
				["sourceQuests"] = { 58530 },	-- Hidden Mirror
				["coord"] = { 49.7, 30.1, BASTION },
			}),
			q(60183, {	-- After Them!
				["provider"] = { "n", 167381 },	-- Baroness Draka
				["sourceQuests"] = {
					57771,	-- An Unwelcome Incursion
					60265,	-- Disrupting the Chain
					57772,	-- Fangs and Minds
					60145,	-- Third Talon Vartox
				},
				["coord"] = { 56.3, 66.6, REVENDRETH },
			}),
			q(57880, {	-- An Estate Within the Old Gate
				["provider"] = { "n", 161979 },	-- Theotar
				["sourceQuests"] = { 60904 },	-- Medallion of Desire
				["coord"] = { 50.2, 18.6, SINFALL_REACHES },
				["groups"] = {
					i(173158),	-- Theotar's Note (QI!)
				},
			}),
			q(58424, {	-- An Eye for an Amulet
				["provider"] = { "n", 160956 },	-- Watcher Emil
				["sourceQuests"] = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				["coord"] = { 72.6, 37.5, REVENDRETH },
			}),
			q(57888, {	-- An Invitation to Treachery
				["provider"] = { "n", 159694 },	-- The Countess
				["sourceQuests"] = { 57887 },	-- Killing the Messenger
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["groups"] = {
					i(173358),	-- Invitations (QI!)
				},
			}),
			q(57771, {	-- An Unwelcome Incursion
				["provider"] = { "n", 167381 },	-- Baroness Draka
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["coord"] = { 56.3, 66.6, REVENDRETH },
				["groups"] = {
					i(180947),	-- Tithe Collector's Vessel (TOY!)
				},
			}),
			q(59323, {	-- Anima Awakening
				["provider"] = { "n", 171934 },	-- Prince Renathal
				["sourceQuests"] = { 59321 },	-- Sacred Covenant
				["coord"] = { 45.3, 30.3, SINFALL_DEPTHS },
			}),
			q(62902, {	-- Anima is Power
				["provider"] = { "n", 165302 },	-- Rendle
				["sourceQuests"] = { 62691 },	-- A Calling in Revendreth
				["coord"] = { 61.6, 75.7, SINFALL_DEPTHS },
				["description"] = "Becomes available after you complete your first Calling quest.",
			}),
			q(62905, {	-- Back into the Darkness
				["provider"] = { "n", 164738 },	-- Tenaval
				["sourceQuests"] = { 62904 },	-- The Souls Plight
				["coord"] = { 46.0, 27.9, SINFALL_REACHES },
			}),
			q(57890, {	-- Beautiful, But Deadly
				["provider"] = { "n", 159694 },	-- The Countess
				["sourceQuests"] = { 57887 },	-- Killing the Messenger
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["groups"] = {
					o(338520, {	-- Duskmire Mushroom
						i(173286),	-- Duskmire Mushroom (QI!)
					}),
				},
			}),
			q(62918, {	-- Binding Power
				["provider"] = { "n", 171950 },	-- The Accuser
				["sourceQuests"] = { 62915 },	-- Home Improvement
				["coord"] = { 46.2, 21.6, SINFALL_REACHES },
			}),
			q(58388, {	-- Blackbale Betrayers
				["provider"] = { "n", 161421 },	-- The Accuser
				["sourceQuests"] = { 58443 },	-- Continued Care of Kael'thas
				["coord"] = { 46.4, 51.4, REVENDRETH },
			}),
			q(58337, {	-- Break Out
				["provider"] = { "n", 161056 },	-- Guard Captain Elizabeta
				["sourceQuests"] = { 58842 },	-- The Curator
				["coord"] = { 65.9, 32.2, REVENDRETH },
				["groups"] = {
					i(174040),	-- Chains of Regret (QI!)
				},
			}),
			q(62856, {	-- Building Your Renown
				["provider"] = { "n", 171934 },	-- Prince Renathal
				["sourceQuests"] = { 59323 },	-- Anima Awakening
				["coord"] = { 45.5, 28.7, SINFALL_DEPTHS },
			}),
			q(60993, {	-- Citadel of Loyalty
				["provider"] = { "n", 160280 },	-- Mikanikos
				["sourceQuests"] = { 58656 },	-- Heavy is the Head...
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(58326, {	-- Combing the Catacombs
				["provider"] = { "n", 161056 },	-- Guard Captain Elizabeta
				["sourceQuests"] = { 58842 },	-- The Curator
				["coord"] = { 65.9, 32.2, REVENDRETH },
			}),
			q(59701, {	-- Common Ground
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["coord"] = { 51.0, 38.0, SINFALL_REACHES },
				["description"] = "Requires Renown 5.",
			}),
			q(61077, {	-- Confronting Sin
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["sourceQuests"] = { 59233 },	-- The Prince's New Crown
				["coord"] = { 52.0, 37.6, SINFALL_REACHES },
				["description"] = "Requires Renown 17.",
			}),
			q(58443, {	-- Continued Care of Kael'thas
				["provider"] = { "n", 161278 },	-- The Accuser
				["sourceQuests"] = { 58387 },	-- We Each Must Carry Our Own Sins
				["coord"] = { 43.8, 51.4, REVENDRETH },
			}),
			q(58630, {	-- Crown of the Harvesters
				["provider"] = { "n", 160280 },	-- Mikanikos
				["sourceQuests"] = {
					58600,	-- A Perfect Circle
					58603,	-- Phaestus, Genesis of Aeons
				},
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(58428, {	-- Crypt Crashers
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["sourceQuests"] = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["groups"] = {
					o(339837, {	-- Powder Bag
						i(174098),	-- Death Lotus Powder (QI!)
					}),
					o(353305, {	-- Stronebreaker Mallet
						i(174100),	-- Stonebreaker Mallet (QI!)
					}),
				},
			}),
			q(58392, {	-- Death's End Destruction
				["provider"] = { "n", 161572 },	-- Kael'thas Sunstrider
				["sourceQuests"] = { 58391 },	-- Reconnaissance... for my, uh, Recovery
				["coord"] = { 69.8, 59.9, REVENDRETH },
			}),
			q(60995, {	-- Disloyalty
				["provider"] = { "n", 170999 },	-- General Draven
				["sourceQuests"] = { 60993 },	-- Citadel of Loyalty
				["coord"] = { 24.3, 29.8, BASTION },
			}),
			q(60265, {	-- Disrupting the Chain
				["provider"] = { "i", 178557 },	-- Supply Chain Memo
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["coord"] = { 57.4, 69.2, REVENDRETH },	-- rough area
				["groups"] = {
					i(178557),	-- Supply Chain Memo (QI!)
				},
			}),
			q(58384, {	-- Dredgers Left Behind
				["provider"] = { "n", 161208 },	-- The Accuser
				["sourceQuests"] = { 58426 },	-- In the Shadow of our Failures
				["coord"] = { 42.2, 47.5, REVENDRETH },
			}),
			q(57892, {	-- Enacting Immediate Justice
				["provider"] = { "n", 159946 },	-- The Countess
				["sourceQuests"] = { 57891 },	-- Mix, Mingle, and Meddle
				["coord"] = { 56.9, 28.7, REVENDRETH },
			}),
			q(58395, {	-- Enough Vengeance For One Day
				["provider"] = { "n", 161436 },	-- Kael'thas Sunstrider
				["sourceQuests"] = { 58394 },	-- Lady Ouix'Ara
				-- no coords, is your 'pet'
				["groups"] = {
					i(180903),	-- Fearstalker's Ebony Hauberk
					i(180901),	-- Soulbreaker's Ebony Vestments
					i(180904),	-- Ebony Death Shroud Vest
					i(180902),	-- Dread Sentinel's Ebony Chestplate
				},
			}),
			q(60996, {	-- Face Your Fears
				["provider"] = { "n", 171147 },	-- General Draven
				["sourceQuests"] = {
					60995,	-- Disloyalty
					60994,	-- Lowering Their Defenses
				},
				["coord"] = { 24.3, 29.7, BASTION },
				["groups"] = {
					i(180605),	-- Crown of the Harvesters (QI!)
				},
			}),
			q(57772, {	-- Fangs and Minds
				["provider"] = { "n", 167380 },	-- Prince Renethal
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["coord"] = { 56.3, 66.7, REVENDRETH },
				["groups"] = {
					i(178213),	-- Prince Renathal's Decree (QI!)
				},
			}),
			q(60500, {	-- Halls of Atonement: Medallion of Pride
				["provider"] = { "o", 352520 },	-- Medallion of Pride
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["coord"] = { 56.8, 30.8, SINFALL_REACHES },
				["groups"] = {
					i(179024),	-- Medallion of Pride (QI!)
				},
			}),
			q(59676, {	-- Harvester of Desire
				["provider"] = { "n", 165658 },	-- Cudgelface
				["sourceQuests"] = { 59706 },	-- Invitation for the Countess
				["coord"] = { 52.4, 35.4, REVENDRETH },
			}),
			q(59711, {	-- Harvester of Envy
				["provider"] = { "n", 165818 },	-- Nadjia the Mistblade
				["sourceQuests"] = { 59707 },	-- Invitation for the Tithelord
				["coord"] = { 72.1, 74.9, REVENDRETH },
			}),
			q(59720, {	-- Harvester of Wrath
				["provider"] = { "n", 165865 },	-- General Draven
				["sourceQuests"] = { 59708 },	-- Invitation for the Stonewright
				["coord"] = { 40.3, 30.7, REVENDRETH },
			}),
			q(58656, {	-- Heavy is the Head...
				["provider"] = { "n", 174587 },	-- Mikanikos
				["sourceQuests"] = { 58630 },	-- Crown of the Harvesters
				["coord"] = { 51.4, 18.5, BASTION },
			}),
			q(58530, {	-- Hidden Mirror
				["provider"] = { "n", 161514 },	-- General Draven
				["sourceQuests"] = { 61050 },	-- How to Wear Seven Medallions
				["coord"] = { 43.8, 46.4, SINFALL_REACHES },
				["groups"] = {
					i(180356),	-- Laurent's Compact Looking Glass (QI!)
				},
			}),
			q(62915, {	-- Home Improvement
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["coord"] = { 55.3, 27.4, SINFALL_REACHES },
			}),
			q(61050, {	-- How to Wear Seven Medallions
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["sourceQuests"] = { 58444 },	-- Return to Sinfall
				["coord"] = { 51.3, 38.0, SINFALL_REACHES },
				["description"] = "Requires Renown 13.",
			}),
			q(58426, {	-- In the Shadow of our Failures
				["provider"] = { "n", 161158 },	-- The Accuser
				["sourceQuests"] = { 58383 },	-- The Many Sins of Kael'thas Sunstrider
				["coord"] = { 46.5, 32.2, SINFALL_DEPTHS },
			}),
			q(62903, {	-- Into the Reservoir
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger
				["sourceQuests"] = { 62902 },	-- Anima is Power
				["coord"] = { 54.9, 26.3, SINFALL_REACHES },
			}),
			q(59706, {	-- Invitation for the Countess
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["sourceQuests"] = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				["coord"] = { 41.0, 54.7, REVENDRETH },
			}),
			q(59708, {	-- Invitation for the Stonewright
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["sourceQuests"] = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				["coord"] = { 41.0, 54.7, REVENDRETH },
			}),
			q(59707, {	-- Invitation for the Tithelord
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["sourceQuests"] = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				["coord"] = { 41.0, 54.7, REVENDRETH },
			}),
			q(57887, {	-- Killing the Messenger
				["provider"] = { "n", 159694 },	-- The Countess
				["sourceQuests"] = { 57886 },	-- A Meal and a Deal
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["groups"] = {
					i(173285),	-- Treasonous Missive (QI!)
				},
			}),
			q(59343, {	-- Kindred Spirits
				["provider"] = { "n", 172042 },	-- Theotar
				["sourceQuests"] = { 59719 },	-- The Court
				["coord"] = { 50.3, 18.8, SINFALL_REACHES },
				["groups"] = {
					follower(1210),	-- Theotar
				},
			}),
			q(65170, {	-- Kindred Spirits
				["provider"] = { "n", 161979 },	-- Theotar
				["sourceQuests"] = { 62920 },	-- A Conduit For Change
				["coord"] = { 50.5, 18, SINFALL_REACHES },
				["timeline"] = { ADDED_9_1_5 },
				["groups"] = {
					follower(1210),	-- Theotar
				},
			}),
			q(58394, {	-- Lady Ouix'Ara
				["provider"] = { "n", 161436 },	-- Kael'thas Sunstrider
				["sourceQuests"] = {
					58392,	-- Death's End Destruction
					58393,	-- Strategic Executions
				},	--
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
			}),
			q(58372, {	-- Lead the Way
				["provider"] = { "n", 160956 },	-- Watcher Emil
				["sourceQuests"] = { 58325 },	-- Watcher Emil
				["coord"] = { 65.9, 28.8, REVENDRETH },
				["groups"] = {
					i(180925),	-- Soulbreaker's Ebony Sash
					i(180927),	-- Ebony Death Shroud Belt
					i(180926),	-- Fearstalker's Ebony Belt
					i(180924),	-- Dread Sentinel's Ebony Girdle
				},
			}),
			q(58385, {	-- Learning to Sacrifice
				["provider"] = { "n", 161208 },	-- The Accuser
				["sourceQuests"] = { 58426 },	-- In the Shadow of our Failures
				["coord"] = { 42.2, 47.5, REVENDRETH },
			}),
			q(60994, {	-- Lowering Their Defenses
				["provider"] = { "n", 171001 },	-- Mikanikos
				["sourceQuests"] = { 60993 },	-- Citadel of Loyalty
				["coord"] = { 24.3, 29.8, BASTION },
			}),
			q(58389, {	-- Maldraxxian Weapons
				["provider"] = { "i", 174212 },	-- Suspicious Weapon
				["sourceQuests"] = { 58443 },	-- Continued Care of Kael'thas
				["coord"] = { 48.3, 54.4, REVENDRETH },
				["crs"] = {
					161448,	-- Blackbale Lookout
					161480,	-- Blackbale Extortionist
				},
				["groups"] = {
					i(174211),	-- Maldraxxian Weapon (QI!)
					i(174212),	-- Suspicious Weapon (QI!)
				},
			}),
			q(60935, {	-- Medallion of Avarice
				["provider"] = { "o", 353949 },	-- Medallion of Avarice
				["sourceQuest"] = 57893,	-- Neither Enemy nor Ally
				["coord"] = { 54.9, 30.9, SINFALL_REACHES },
				["description"] = "Requires Renown 11.",
			}),
			q(60904, {	-- Medallion of Desire
				["provider"] = { "o", 353948 },	-- Medallion of Desire
				["sourceQuests"] = { 59719 },	-- The Court
				["coord"] = { 53.6, 32.9, SINFALL_REACHES },
				["description"] = "Requires Renown 8.",
			}),
			q(58406, {	-- Mirror to Maldraxxus
				["provider"] = { "n", 158653 },	-- Prince Renethal
				["sourceQuests"] = { 57646 },	-- The Tithelord
				["coord"] = { 51.8, 37.5, SINFALL_REACHES },
				["description"] = "Requires Renown 22.",
			}),
			q(58440, {	-- Mirror, Mirror...
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["sourceQuests"] = {
					60673,	-- The Traitor
					58424,	-- An Eye for an Amulet
					58428,	-- Crypt Crashers
				},
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["groups"] = {
					i(180945),	-- Crypt Gargon (MOUNT!)
					i(174179),	-- Death Lotus Powder (QI!)
					o(339869, {	-- Curator's Chest
						i(174111),	-- Medallion of Avarice (QI!)
					}),
				},
			}),
			q(57891, {	-- Mix, Mingle, and Meddle
				["provider"] = { "n", 159694 },	-- The Countess
				["sourceQuests"] = {
					57889,	-- "Accidental" Arson
					57888,	-- An Invitation to Treachery
					57890,	-- Beautiful, But Deadly
				},
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["groups"] = { i(174923) },	-- Duskmire Elixir (QI!)
			}),
			q(57893, {	-- Neither Enemy nor Ally
				["provider"] = { "n", 159946 },	-- The Countess
				["sourceQuests"] = { 57892 },	-- Enacting Immediate Justice
				["coord"] = { 56.9, 28.7, REVENDRETH },
				["groups"] = {
					i(173287),	-- Medallion of Desire (QI!)
				},
			}),
			q(58585, {	-- No Friend of Mine
				["provider"] = { "n", 160280 },	-- Mikanikos
				["sourceQuests"] = { 58555 },	-- A Tense Reunion
				["coord"] = { 50.1, 20.6, BASTION },
				["groups"] = {
					i(174466),	-- Mikanikos's Tool Chest (QI!)
				},
			}),
			q(62921, {	-- Our True Purpose
				["provider"] = { "n", 171950 },	-- The Accuser
				["sourceQuests"] = { 62920 },	-- A Conduit For Change
				["coord"] = { 44.6, 20.1, SINFALL_REACHES },
			}),
			q(59324, {	-- Our True Purpose
				["provider"] = { "n", 164741 },	-- Tactician Sakaa
			--	["sourceQuests"] = {  },	-- TODO: unknown.  i think you get this version of "Our True Purpose" if you pursue the Adventures Scouting Map first, instead of Mirror Network?
				["coord"] = { 57.6, 58.8, SINFALL_REACHES },
			}),
			q(58603, {	-- Phaestus, Genesis of Aeons
				["provider"] = { "n", 160280 },	-- Mikanikos
				["sourceQuests"] = {
					58585,	-- No Friend of Mine
					58584,	-- Right Our Wrongs
					58586,	-- The Right Stuff
				},
				["coord"] = { 50.1, 20.5, BASTION },
				["groups"] = {
					i(174061),	-- Phaestus, Genesis of Aeons (QI!)
				},
			}),
			q(57884, {	-- Reclaiming Thornhill Manor
				["provider"] = { "n", 159513 },	-- Bogdan
				["sourceQuests"] = {
					57882,	-- Reestablishing the Household
					57881,	-- The Key to Rebuilding
				},
				["coord"] = { 60.4, 40.1, REVENDRETH },
			}),
			q(58391, {	-- Reconnaissance... for my, uh, Recovery
				["provider"] = { "n", 161431 },	-- Kael'thas Sunstrider
				["sourceQuests"] = {
					58388,	-- Blackbale Betrayers
					58389,	-- Maldraxxian Weapons
					58518,	-- There's Always a Paper Trail
				},	--
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
			}),
			q(57882, {	-- Reestablishing the Household
				["provider"] = { "n", 159513 },	-- Bogdan
				["sourceQuests"] = { 57880 },	-- An Estate Within the Old Gate
				["coord"] = { 60.4, 40.1, REVENDRETH },
				["groups"] = {
					i(174839),	-- Offer of Employment (QI!)
				},
			}),
			q(61981, {	-- Replenish the Reservoir
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger <Sanctum Upgrades>
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["coord"] = { 55.5, 26.3, SINFALL_REACHES },
				["isWeekly"] = true,
			}),
			q(58444, {	-- Return to Sinfall
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["sourceQuests"] = { 58440 },	-- Mirror, Mirror...
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["groups"] = {
					i(174111),	-- Medallion of Avarice (QI!)
				},
			}),
			q(58584, {	-- Right our Wrongs
				["provider"] = { "n", 161526 },	-- General Draven
				["sourceQuests"] = { 58555 },	-- A Tense Reunion
				["coord"] = { 50.1, 20.6, BASTION },
				["groups"] = {
					i(180937),	-- Fearstalker's Ebony Cloak
					i(180934),	-- Soulbreaker's Ebony Drape
					i(180938),	-- Dread Sentinel's Ebony Cloak
					i(180936),	-- Ebony Death Shroud Cloak
				},
			}),
			q(59321, {	-- Sacred Covenant
				["provider"] = { "n", 164796 },	-- Prince Renathal
				["sourceQuests"] = { 59315 },	-- The Court of Harvesters
				["coord"] = { 50.9, 38.1, SINFALL_REACHES },
			}),
			q(63341, {	-- Sinfall Tactician
				["provider"] = { "n", 175772 },	-- Rahel
				["sourceQuests"] = { 63340 },	-- Sinfall Veteran
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
				["description"] = "Requires Renown 22.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
				-- TODO: Assumed SQ... double check by skipping to Renown 22
			}),
			q(64083, {	-- Sinfall Tactician #2
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
				["description"] = "Requires Renown 59.",
			}),
			q(63340, {	-- Sinfall Veteran
				["provider"] = { "n", 175772 },	-- Rahel
			--	["sourceQuests"] = {  },	-- probably requires something between "our true purpose" and "ashes of the tower," unsure what unlocks the ability to pick up "return lost souls," which gives renown
				["coord"] = { 54.1, 26.8, SINFALL_REACHES },
				["description"] = "Requires Renown 7.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64325, {	-- Sinfall Veteran #2
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.1, 26.8, SINFALL_REACHES },
				["description"] = "Requires Renown 43.",
			}),
			q(58382, {	-- Someone Worth Saving
				["provider"] = { "n", 165291 },	-- The Accuser
				["sourceQuests"] = { 61077 },	-- Confronting Sin
				["coord"] = { 55.8, 78.7, SINFALL_DEPTHS },
			}),
			q(62870, {	-- Souls for Sinfall
				["provider"] = { "n", 164079 },	-- Highlord Bolvar Fordragon
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["coord"] = { 40.0, 68.3, ORIBOS },
				["groups"] = {
					i(180202),	-- Soulkeeper Crystal (QI!)
					i(180909),	-- Ebony Death Shroud Gloves
					i(180910),	-- Dread Sentinel's Ebony Grips
					i(180911),	-- Soulbreaker's Ebony Handwraps
					i(180912),	-- Fearstalker's Ebony Gauntlets
				},
			}),
			q(58421, {	-- Special Access
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["sourceQuests"] = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["groups"] = {
					i(174094),	-- Boian's Fangs (QI!)
					i(174095),	-- Daciana's Fangs (QI!)
					i(174093),	-- Ionata's Fangs (QI!)
				},
			}),
			q(57727, {	-- Stonevigil Unrest
				["provider"] = { "n", 158653 },	-- Prince Renethal
				["sourceQuests"] = { 58395 },	-- Enough Vengeance For One Day
				["coord"] = { 51.8, 37.5, SINFALL_REACHES },
				["description"] = "Requires Renown 20.",
			}),
			q(58393, {	-- Strategic Executions
				["provider"] = { "n", 161572 },	-- Kael'thas Sunstrider
				["sourceQuests"] = { 58391 },	-- Reconnaissance... for my, uh, Recovery
				["coord"] = { 69.8, 59.9, REVENDRETH },
			}),
			q(62919, {	-- Strengthening the Bond
				["provider"] = { "n", 171979 },	-- Nadjia the Mistblade
				["sourceQuests"] = { 62918 },	-- Binding Power
				["coord"] = { 43.9, 17.9, SINFALL_REACHES },
				["groups"] = appendGroups(CONDUIT_GROUP, {
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
				["provider"] = { "n", 165291 },	-- The Accuser
				["altQuests"] = { 58093 },	-- Our Forgotten Purpose
				["coord"] = { 55.6, 76.6, SINFALL_DEPTHS },
				["description"] = "Becomes available after unlocking tier 1 of the Command Table sanctum upgrade.",
				["isBreadcrumb"] = true,
			}),
			q(59719, {	-- The Court
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["sourceQuests"] = {
					59676,	-- Harvester of Desire
					59711,	-- Harvester of Envy
					59708,	-- Harvester of Wrath
				},
				["coord"] = { 41.0, 54.7, REVENDRETH },
				["groups"] = {
					i(180928),	-- Soulbreaker's Ebony Wraps
					i(180931),	-- Ebony Death Shroud Bindings
					i(180930),	-- Fearstalker's Ebony Bracers
					i(180929),	-- Dread Sentinel's Ebony Vambraces
				},
			}),
			q(62857, {	-- The Court's Bounty
				["provider"] = { "n", 175772 },	-- Rahel
				["sourceQuests"] = { 62856 },	-- Building Your Renown
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(59315, {	-- The Court of Harvesters
				["provider"] = { "n", 164742 },	-- Prince Renathal
				["sourceQuests"] = { 59314 },	-- Sinfall
				["coord"] = { 25.4, 56.1, SINFALL_REACHES },
			}),
			q(58842, {	-- The Curator
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["sourceQuests"] = { 60935 },	-- Medallion of Avarice
				["coord"] = { 51.7, 37.6, SINFALL_REACHES },
			}),
			q(63033, {	-- The Highlord Calls
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["coord"] = { 51.2, 37.8, SINFALL_REACHES },
			}),
			q(57881, {	-- The Key to Rebuilding
				["provider"] = { "n", 159513 },	-- Bogdan
				["sourceQuests"] = { 57880 },	-- An Estate Within the Old Gate
				["coord"] = { 60.4, 40.1, REVENDRETH },
				["groups"] = {
					i(173180),	-- Ornate Key (QI!)
				},
			}),
			q(58383, {	-- The Many Sins of Kael'thas Sunstrider
				["provider"] = { "n", 161158 },	-- The Accuser
				["sourceQuests"] = { 58382 },	-- Someone Worth Saving
				["coord"] = { 46.4, 32.3, SINFALL_DEPTHS },
			}),
			q(58407, {	-- The Medallion of Dominion
				["provider"] = { "n", 170543 },	-- General Draven
				["sourceQuests"] = { 58406 },	-- Mirror to Maldraxxus
				["coord"] = { 27.4, 40.3, REVENDRETH },
				["maps"] = { 1689 },	-- Exoramas (Venthyr Renown 22 Scenario)
				["groups"] = appendGroups(LFR_WEAPON_GROUP, {
					i(180948),	-- Battle Gargon Vrednic (MOUNT!)
				}),
			}),
			q(59233, {	-- The Prince's New Crown
				["provider"] = { "n", 171175 },	-- General Draven
				["sourceQuests"] = { 60996 },	-- Face Your Fears
				["coord"] = { 21.0, 22.8, BASTION },
				["groups"] = {
					i(180604),	-- Crown of the Harvesters (QI!)
					i(180905),	-- Dread Sentinel's Ebony Greatboots
					i(180908),	-- Ebony Death Shroud Boots
					i(180907),	-- Fearstalker's Ebony Sabatons
					i(180906),	-- Soulbreaker's Ebony Slippers
				},
			}),
			q(61492, {	-- The Princeguard
				["provider"] = { "n", 161977 },	-- General Draven
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["coord"] = { 46.3, 15.7, SINFALL_REACHES },
				["description"] = "Requires Renown 5.",
				["groups"] = {
					i(181516),	-- Stone-Laced Infused Ruby (QI!)
				},
			}),
			q(58586, {	-- The Right Stuff
				["provider"] = { "n", 160280 },	-- Mikanikos
				["sourceQuests"] = { 58555 },	-- A Tense Reunion
				["coord"] = { 50.1, 20.6, BASTION },
				["groups"] = {
					i(173880),	-- Purified Metal (QI!)
					i(174465),	-- Tainted Centurion Component (QI!)
				},
			}),
			q(62904, {	-- The Souls Plight
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger
				["sourceQuests"] = { 62903 },	-- Into the Reservoir
				["coord"] = { 54.9, 26.3, SINFALL_REACHES },
			}),
			q(57646, {	-- The Tithelord
				["provider"] = { "n", 167689 },	-- Prince Renethal
				["sourceQuests"] = { 57729 },	-- To the Estate
				["coord"] = { 71.9, 68.8, REVENDRETH },
				["groups"] = {
					i(173976),	-- Medallion of Envy (QI!)
					i(180923),	-- Fearstalker's Ebony Monnion
					i(180922),	-- Soulbreaker's Ebony Mantle
					i(180920),	-- Ebony Death Shroud Spaulders
					i(180921),	-- Dread Sentinel's Ebony Spaulders
				},
			}),
			q(60673, {	-- The Traitor
				["provider"] = { "n", 161298 },	-- Nourman <The Doorman>
				["sourceQuests"] = { 58421 },	-- Special Access
				["coord"] = { 77.5, 39.2, REVENDRETH },
				["groups"] = {
					i(174092),	-- Mateo's Mirror Shard (QI!)
					i(180913),	-- Soulbreaker's Ebony Hood
					i(180915),	-- Ebony Death Shroud Hood
					i(180914),	-- Fearstalker's Ebony Helm
					i(180900),	-- Dread Sentinel's Ebony Headgear
				},
			}),
			q(58518, {	-- There's Always a Paper Trail
				["provider"] = { "n", 161427 },	-- Kael'thas Sunstrider
				["sourceQuests"] = { 58443 },	-- Continued Care of Kael'thas
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
				["groups"] = {
					i(174278),	-- Orders from the Tithelord (QI!)
				},
			}),
			q(60145, {	-- Third Talon Vartox
				["provider"] = { "n", 167381 },	-- Baroness Draka
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["coord"] = { 56.3, 66.6, REVENDRETH },
			}),
			q(57729, {	-- To the Estate
				["provider"] = { "n", 167620 },	-- Prince Renethal
				["sourceQuests"] = { 60183 },	-- After Them!
				["coord"] = { 61.5, 69.6, REVENDRETH },
			}),
			q(58386, {	-- Use My Strengths
				["provider"] = { "n", 161261 },	-- Kael'thas Sunstrider
				["sourceQuests"] = { 58426 },	-- In the Shadow of our Failures
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
			}),
			q(58325, {	-- Watcher Emil
				["qgs"] = {
					160941,	-- The Curator <Harvester of Avarice> (initial provider)
					160942,	-- Forgotten Soul (if you abandon it, this is in the follow-up quest area)
				},
				["sourceQuests"] = { 58842 },	-- The Curator
				["coords"] = {
					{ 72.7, 37.6, REVENDRETH },	-- The Curator
					{ 66.0, 28.9, REVENDRETH },	-- Forgotten Soul
				},
			}),
			q(58387, {	-- We Each Must Carry Our Own Sins
				["provider"] = { "n", 161278 },	-- The Accuser
				["sourceQuests"] = {
					58384,	-- Dredgers Left Behind
					58385,	-- Learning to Sacrifice
					58386,	-- Use My Strengths
				},
				["coord"] = { 43.8, 51.4, REVENDRETH },
				["groups"] = {
					i(180941),	-- Kael's Dark Sinstone Chain
				},
			}),
			q(61334, {	-- Return Lost Souls (5)
				["provider"] = { "n", 164738 },	-- Tenaval
				-- ["sourceQuests"] = {  },	-- TODO
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				["isWeekly"] = true,
			}),
			q(62867, {	-- Return Lost Souls (10)
				["provider"] = { "n", 164738 },	-- Tenaval
				-- ["sourceQuests"] = {  },	-- TODO
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["description"] = "Requires Renown 15.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				["isWeekly"] = true,
			}),
			q(62868, {	-- Return Lost Souls (15)
				["provider"] = { "n", 164738 },	-- Tenaval
				-- ["sourceQuests"] = {  },	-- TODO
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["description"] = "Requires Renown 24.",
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
				["isWeekly"] = true,
			}),
			q(62869, {	-- Return Lost Souls (20)
				["provider"] = { "n", 164738 },	-- Tenaval
				-- ["sourceQuests"] = {  },	-- TODO
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["description"] = "Requires Renown 32.",
				["isWeekly"] = true,
			}),
			q(65105, {	-- Return More Lost Souls
				["provider"] = { "n", 164738 },	-- Tenaval
				["sourceQuests"] = { 62869 },	-- Return Lost Souls (20)
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["timeline"] = { ADDED_9_1_5 },
				["repeatable"] = true,
			}),
		}),
	}),
})));

for _,g in ipairs({CONDUIT_GROUP,LFR_WEAPON_GROUP}) do
	for	_,t in ipairs(g) do
		t.customCollect = nil;
	end
end

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(VENTHYR, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
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
})));