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
				["sourceQuests"] = {
					-- TODO: confirm
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["isBreadcrumb"] = true,
				["provider"] = { "n", 159478 },	-- Tal-Inara
				["coord"] = { 39.2, 69.7, ORIBOS },
			}),
			q(59314, {	-- Sinfall
				["sourceQuests"] = {
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
					63215,	-- Report to Draven [Skip]
				},
				["sourceQuestNumRequired"] = 2,	-- You want to be able to be given the Breadcrumb warning so you can pickup General Draven quest.
				["provider"] = { "n", 171589 },	-- General Draven
				["coord"] = { 44.8, 68.9, ORIBOS },
			}),
			q(57889, {	-- "Accidental" Arson
				["sourceQuests"] = { 57887 },	-- Killing the Messenger
				["provider"] = { "n", 159694 },	-- The Countess
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["g"] = {
					i(180917),	-- Soulbreaker's Ebony Leggings
					i(180919),	-- Ebony Death Shroud Breeches
					i(180918),	-- Fearstalker's Ebony Leggings
					i(180916),	-- Dread Sentinel's Ebony Legguards
				},
			}),
			q(62695, {	-- A Call to Service
				["sourceQuests"] = { 62857 },	-- The Court's Bounty
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(62914, {	-- A Coalition of the Willing
				["sourceQuests"] = { 62870 },	-- Souls for Sinfall
				["provider"] = { "n", 164738 },	-- Tenaval
				["coord"] = { 45.9, 27.6, SINFALL_REACHES },
			}),
			q(62920, {	-- A Conduit For Change
				["sourceQuests"] = { 62919 },	-- Strengthening the Bond
				["provider"] = { "n", 171950 },	-- The Accuser
				["coord"] = { 44.6, 20.1, SINFALL_REACHES },
			}),
			q(57885, {	-- A Discreet Entrance
				["sourceQuests"] = { 57884 },	-- Reclaiming Thornhill Manor
				["provider"] = { "n", 159513 },	-- Bogdan
				["coord"] = { 58.8, 29.9, REVENDRETH },
			}),
			q(57886, {	-- A Meal and a Deal
				["sourceQuests"] = { 57885 },	-- A Discreet Entrance
				["provider"] = { "n", 159694 },	-- The Countess
				["coord"] = { 58.0, 27.5, REVENDRETH },
			}),
			q(58600, {	-- A Perfect Circle
				["sourceQuests"] = {
					58585,	-- No Friend of Mine
					58584,	-- Right Our Wrongs
					58586,	-- The Right Stuff
				},
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
				["g"] = {
					i(180450),	-- Assorted Bolts (QI!)
					i(180448),	-- Eroded Heat Sink (QI!)
					i(180449),	-- Failed Experiment (QI!)
					i(174330),	-- Perfected Circlet Mold (QI!)
				},
			}),
			q(59325, {	-- A Stalwart Ally
				["sourceQuests"] = { 58407 },	-- The Medallion of Dominion
				["provider"] = { "n", 161977 },	-- General Draven
				["coord"] = { 46.2, 14.7, SINFALL_REACHES },
				["g"] = {
					follower(1209),	-- General Draven
				},
			}),
			q(65169, {	-- A Stalwart Ally
				["sourceQuests"] = { 62920 },	-- A Conduit For Change
				["provider"] = { "n", 161977 },	-- General Draven
				["coord"] = { 46.1, 14.9, SINFALL_REACHES },
				["timeline"] = { ADDED_9_1_5 },
				["g"] = {
					follower(1209),	-- General Draven
				},
			}),
			q(58555, {	-- A Tense Reunion
				["sourceQuests"] = { 58530 },	-- Hidden Mirror
				["provider"] = { "n", 162213 },	-- General Draven
				["coord"] = { 49.7, 30.1, BASTION },
			}),
			q(60183, {	-- After Them!
				["sourceQuests"] = {
					57771,	-- An Unwelcome Incursion
					60265,	-- Disrupting the Chain
					57772,	-- Fangs and Minds
					60145,	-- Third Talon Vartox
				},
				["provider"] = { "n", 167381 },	-- Baroness Draka
				["coord"] = { 56.3, 66.6, REVENDRETH },
			}),
			q(57880, {	-- An Estate Within the Old Gate
				["sourceQuests"] = { 60904 },	-- Medallion of Desire
				["provider"] = { "n", 161979 },	-- Theotar
				["coord"] = { 50.2, 18.6, SINFALL_REACHES },
				["g"] = {
					i(173158),	-- Theotar's Note (QI!)
				},
			}),
			q(58424, {	-- An Eye for an Amulet
				["sourceQuests"] = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				["provider"] = { "n", 160956 },	-- Watcher Emil
				["coord"] = { 72.6, 37.5, REVENDRETH },
			}),
			q(57888, {	-- An Invitation to Treachery
				["sourceQuests"] = { 57887 },	-- Killing the Messenger
				["provider"] = { "n", 159694 },	-- The Countess
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["g"] = {
					i(173358),	-- Invitations (QI!)
				},
			}),
			q(57771, {	-- An Unwelcome Incursion
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["provider"] = { "n", 167381 },	-- Baroness Draka
				["coord"] = { 56.3, 66.6, REVENDRETH },
				["g"] = {
					i(180947),	-- Tithe Collector's Vessel (TOY!)
				},
			}),
			q(59323, {	-- Anima Awakening
				["sourceQuests"] = { 59321 },	-- Sacred Covenant
				["provider"] = { "n", 171934 },	-- Prince Renathal
				["coord"] = { 45.3, 30.3, SINFALL_DEPTHS },
			}),
			q(62902, {	-- Anima is Power
				["sourceQuests"] = { 62691 },	-- A Calling in Revendreth
				["description"] = "Becomes available after you complete your first Calling quest.",
				["provider"] = { "n", 165302 },	-- Rendle
				["coord"] = { 61.6, 75.7, SINFALL_DEPTHS },
			}),
			q(62905, {	-- Back into the Darkness
				["sourceQuests"] = { 62904 },	-- The Souls Plight
				["provider"] = { "n", 164738 },	-- Tenaval
				["coord"] = { 46.0, 27.9, SINFALL_REACHES },
			}),
			q(57890, {	-- Beautiful, But Deadly
				["sourceQuests"] = { 57887 },	-- Killing the Messenger
				["provider"] = { "n", 159694 },	-- The Countess
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["g"] = {
					o(338520, {	-- Duskmire Mushroom
						i(173286),	-- Duskmire Mushroom (QI!)
					}),
				},
			}),
			q(62918, {	-- Binding Power
				["sourceQuests"] = { 62915 },	-- Home Improvement
				["provider"] = { "n", 171950 },	-- The Accuser
				["coord"] = { 46.2, 21.6, SINFALL_REACHES },
			}),
			q(58388, {	-- Blackbale Betrayers
				["sourceQuests"] = { 58443 },	-- Continued Care of Kael'thas
				["provider"] = { "n", 161421 },	-- The Accuser
				["coord"] = { 46.4, 51.4, REVENDRETH },
			}),
			q(58337, {	-- Break Out
				["sourceQuests"] = { 58842 },	-- The Curator
				["provider"] = { "n", 161056 },	-- Guard Captain Elizabeta
				["coord"] = { 65.9, 32.2, REVENDRETH },
				["g"] = {
					i(174040),	-- Chains of Regret (QI!)
				},
			}),
			q(62856, {	-- Building Your Renown
				["sourceQuests"] = { 59323 },	-- Anima Awakening
				["provider"] = { "n", 171934 },	-- Prince Renathal
				["coord"] = { 45.5, 28.7, SINFALL_DEPTHS },
			}),
			q(60993, {	-- Citadel of Loyalty
				["sourceQuests"] = { 58656 },	-- Heavy is the Head...
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(58326, {	-- Combing the Catacombs
				["sourceQuests"] = { 58842 },	-- The Curator
				["provider"] = { "n", 161056 },	-- Guard Captain Elizabeta
				["coord"] = { 65.9, 32.2, REVENDRETH },
			}),
			q(59701, {	-- Common Ground
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["description"] = "Requires Renown 5.",
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["coord"] = { 51.0, 38.0, SINFALL_REACHES },
			}),
			q(61077, {	-- Confronting Sin
				["sourceQuests"] = { 59233 },	-- The Prince's New Crown
				["description"] = "Requires Renown 17.",
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["coord"] = { 52.0, 37.6, SINFALL_REACHES },
			}),
			q(58443, {	-- Continued Care of Kael'thas
				["sourceQuests"] = { 58387 },	-- We Each Must Carry Our Own Sins
				["provider"] = { "n", 161278 },	-- The Accuser
				["coord"] = { 43.8, 51.4, REVENDRETH },
			}),
			q(58630, {	-- Crown of the Harvesters
				["sourceQuests"] = {
					58600,	-- A Perfect Circle
					58603,	-- Phaestus, Genesis of Aeons
				},
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
			}),
			q(58428, {	-- Crypt Crashers
				["sourceQuests"] = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["g"] = {
					o(339837, {	-- Powder Bag
						i(174098),	-- Death Lotus Powder (QI!)
					}),
					o(353305, {	-- Stronebreaker Mallet
						i(174100),	-- Stonebreaker Mallet (QI!)
					}),
				},
			}),
			q(58392, {	-- Death's End Destruction
				["sourceQuests"] = { 58391 },	-- Reconnaissance... for my, uh, Recovery
				["provider"] = { "n", 161572 },	-- Kael'thas Sunstrider
				["coord"] = { 69.8, 59.9, REVENDRETH },
			}),
			q(60995, {	-- Disloyalty
				["sourceQuests"] = { 60993 },	-- Citadel of Loyalty
				["provider"] = { "n", 170999 },	-- General Draven
				["coord"] = { 24.3, 29.8, BASTION },
			}),
			q(60265, {	-- Disrupting the Chain
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["provider"] = { "i", 178557 },	-- Supply Chain Memo
				["coord"] = { 57.4, 69.2, REVENDRETH },	-- rough area
				["g"] = {
					i(178557),	-- Supply Chain Memo (QI!)
				},
			}),
			q(58384, {	-- Dredgers Left Behind
				["sourceQuests"] = { 58426 },	-- In the Shadow of our Failures
				["provider"] = { "n", 161208 },	-- The Accuser
				["coord"] = { 42.2, 47.5, REVENDRETH },
			}),
			q(57892, {	-- Enacting Immediate Justice
				["sourceQuests"] = { 57891 },	-- Mix, Mingle, and Meddle
				["provider"] = { "n", 159946 },	-- The Countess
				["coord"] = { 56.9, 28.7, REVENDRETH },
			}),
			q(58395, {	-- Enough Vengeance For One Day
				["sourceQuests"] = { 58394 },	-- Lady Ouix'Ara
				["provider"] = { "n", 161436 },	-- Kael'thas Sunstrider
				-- no coords, is your 'pet'
				["g"] = {
					i(180903),	-- Fearstalker's Ebony Hauberk
					i(180901),	-- Soulbreaker's Ebony Vestments
					i(180904),	-- Ebony Death Shroud Vest
					i(180902),	-- Dread Sentinel's Ebony Chestplate
				},
			}),
			q(60996, {	-- Face Your Fears
				["sourceQuests"] = {
					60995,	-- Disloyalty
					60994,	-- Lowering Their Defenses
				},
				["provider"] = { "n", 171147 },	-- General Draven
				["coord"] = { 24.3, 29.7, BASTION },
				["g"] = {
					i(180605),	-- Crown of the Harvesters (QI!)
				},
			}),
			q(57772, {	-- Fangs and Minds
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["provider"] = { "n", 167380 },	-- Prince Renethal
				["coord"] = { 56.3, 66.7, REVENDRETH },
				["g"] = {
					i(178213),	-- Prince Renathal's Decree (QI!)
				},
			}),
			q(60500, {	-- Halls of Atonement: Medallion of Pride
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["provider"] = { "o", 352520 },	-- Medallion of Pride
				["coord"] = { 56.8, 30.8, SINFALL_REACHES },
				["g"] = {
					i(179024),	-- Medallion of Pride (QI!)
				},
			}),
			q(59676, {	-- Harvester of Desire
				["sourceQuests"] = { 59706 },	-- Invitation for the Countess
				["provider"] = { "n", 165658 },	-- Cudgelface
				["coord"] = { 52.4, 35.4, REVENDRETH },
			}),
			q(59711, {	-- Harvester of Envy
				["sourceQuests"] = { 59707 },	-- Invitation for the Tithelord
				["provider"] = { "n", 165818 },	-- Nadjia the Mistblade
				["coord"] = { 72.1, 74.9, REVENDRETH },
			}),
			q(59720, {	-- Harvester of Wrath
				["sourceQuests"] = { 59708 },	-- Invitation for the Stonewright
				["provider"] = { "n", 165865 },	-- General Draven
				["coord"] = { 40.3, 30.7, REVENDRETH },
			}),
			q(58656, {	-- Heavy is the Head...
				["sourceQuests"] = { 58630 },	-- Crown of the Harvesters
				["provider"] = { "n", 174587 },	-- Mikanikos
				["coord"] = { 51.4, 18.5, BASTION },
			}),
			q(58530, {	-- Hidden Mirror
				["sourceQuests"] = { 61050 },	-- How to Wear Seven Medallions
				["provider"] = { "n", 161514 },	-- General Draven
				["coord"] = { 43.8, 46.4, SINFALL_REACHES },
				["g"] = {
					i(180356),	-- Laurent's Compact Looking Glass (QI!)
				},
			}),
			q(62915, {	-- Home Improvement
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger
				["coord"] = { 55.3, 27.4, SINFALL_REACHES },
			}),
			q(61050, {	-- How to Wear Seven Medallions
				["sourceQuests"] = { 58444 },	-- Return to Sinfall
				["description"] = "Requires Renown 13.",
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["coord"] = { 51.3, 38.0, SINFALL_REACHES },
			}),
			q(58426, {	-- In the Shadow of our Failures
				["sourceQuests"] = { 58383 },	-- The Many Sins of Kael'thas Sunstrider
				["provider"] = { "n", 161158 },	-- The Accuser
				["coord"] = { 46.5, 32.2, SINFALL_DEPTHS },
			}),
			q(62903, {	-- Into the Reservoir
				["sourceQuests"] = { 62902 },	-- Anima is Power
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger
				["coord"] = { 54.9, 26.3, SINFALL_REACHES },
			}),
			q(59706, {	-- Invitation for the Countess
				["sourceQuests"] = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["coord"] = { 41.0, 54.7, REVENDRETH },
			}),
			q(59708, {	-- Invitation for the Stonewright
				["sourceQuests"] = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["coord"] = { 41.0, 54.7, REVENDRETH },
			}),
			q(59707, {	-- Invitation for the Tithelord
				["sourceQuests"] = {
					59701,	-- Common Ground
					61492,	-- The Princeguard
				},
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["coord"] = { 41.0, 54.7, REVENDRETH },
			}),
			q(57887, {	-- Killing the Messenger
				["sourceQuests"] = { 57886 },	-- A Meal and a Deal
				["provider"] = { "n", 159694 },	-- The Countess
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["g"] = {
					i(173285),	-- Treasonous Missive (QI!)
				},
			}),
			q(59343, {	-- Kindred Spirits
				["sourceQuests"] = { 59719 },	-- The Court
				["provider"] = { "n", 172042 },	-- Theotar
				["coord"] = { 50.3, 18.8, SINFALL_REACHES },
				["g"] = {
					follower(1210),	-- Theotar
				},
			}),
			q(65170, {	-- Kindred Spirits
				["sourceQuests"] = { 62920 },	-- A Conduit For Change
				["provider"] = { "n", 161979 },	-- Theotar
				["coord"] = { 50.5, 18, SINFALL_REACHES },
				["timeline"] = { ADDED_9_1_5 },
				["g"] = {
					follower(1210),	-- Theotar
				},
			}),
			q(58394, {	-- Lady Ouix'Ara
				["sourceQuests"] = {
					58392,	-- Death's End Destruction
					58393,	-- Strategic Executions
				},	--
				["provider"] = { "n", 161436 },	-- Kael'thas Sunstrider
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
			}),
			q(58372, {	-- Lead the Way
				["sourceQuests"] = { 58325 },	-- Watcher Emil
				["provider"] = { "n", 160956 },	-- Watcher Emil
				["coord"] = { 65.9, 28.8, REVENDRETH },
				["g"] = {
					i(180925),	-- Soulbreaker's Ebony Sash
					i(180927),	-- Ebony Death Shroud Belt
					i(180926),	-- Fearstalker's Ebony Belt
					i(180924),	-- Dread Sentinel's Ebony Girdle
				},
			}),
			q(58385, {	-- Learning to Sacrifice
				["sourceQuests"] = { 58426 },	-- In the Shadow of our Failures
				["provider"] = { "n", 161208 },	-- The Accuser
				["coord"] = { 42.2, 47.5, REVENDRETH },
			}),
			q(60994, {	-- Lowering Their Defenses
				["sourceQuests"] = { 60993 },	-- Citadel of Loyalty
				["provider"] = { "n", 171001 },	-- Mikanikos
				["coord"] = { 24.3, 29.8, BASTION },
			}),
			q(58389, {	-- Maldraxxian Weapons
				["sourceQuests"] = { 58443 },	-- Continued Care of Kael'thas
				["provider"] = { "i", 174212 },	-- Suspicious Weapon
				["coord"] = { 48.3, 54.4, REVENDRETH },
				["crs"] = {
					161448,	-- Blackbale Lookout
					161480,	-- Blackbale Extortionist
				},
				["g"] = {
					i(174211),	-- Maldraxxian Weapon (QI!)
					i(174212),	-- Suspicious Weapon (QI!)
				},
			}),
			q(60935, {	-- Medallion of Avarice
				["sourceQuest"] = 57893,	-- Neither Enemy nor Ally
				["description"] = "Requires Renown 11.",
				["provider"] = { "o", 353949 },	-- Medallion of Avarice
				["coord"] = { 54.9, 30.9, SINFALL_REACHES },
			}),
			q(60904, {	-- Medallion of Desire
				["sourceQuests"] = { 59719 },	-- The Court
				["description"] = "Requires Renown 8.",
				["provider"] = { "o", 353948 },	-- Medallion of Desire
				["coord"] = { 53.6, 32.9, SINFALL_REACHES },
			}),
			q(58406, {	-- Mirror to Maldraxxus
				["description"] = "Requires Renown 22.",
				["sourceQuests"] = { 57646 },	-- The Tithelord
				["provider"] = { "n", 158653 },	-- Prince Renethal
				["coord"] = { 51.8, 37.5, SINFALL_REACHES },
			}),
			q(58440, {	-- Mirror, Mirror...
				["sourceQuests"] = {
					60673,	-- The Traitor
					58424,	-- An Eye for an Amulet
					58428,	-- Crypt Crashers
				},
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["g"] = {
					i(180945),	-- Crypt Gargon (MOUNT!)
					i(174179),	-- Death Lotus Powder (QI!)
					o(339869, {	-- Curator's Chest
						i(174111),	-- Medallion of Avarice (QI!)
					}),
				},
			}),
			q(57891, {	-- Mix, Mingle, and Meddle
				["sourceQuests"] = {
					57889,	-- "Accidental" Arson
					57888,	-- An Invitation to Treachery
					57890,	-- Beautiful, But Deadly
				},
				["provider"] = { "n", 159694 },	-- The Countess
				["coord"] = { 58.0, 27.5, REVENDRETH },
				["g"] = { i(174923) },	-- Duskmire Elixir (QI!)
			}),
			q(57893, {	-- Neither Enemy nor Ally
				["sourceQuests"] = { 57892 },	-- Enacting Immediate Justice
				["provider"] = { "n", 159946 },	-- The Countess
				["coord"] = { 56.9, 28.7, REVENDRETH },
				["g"] = {
					i(173287),	-- Medallion of Desire (QI!)
				},
			}),
			q(58585, {	-- No Friend of Mine
				["sourceQuests"] = { 58555 },	-- A Tense Reunion
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.6, BASTION },
				["g"] = {
					i(174466),	-- Mikanikos's Tool Chest (QI!)
				},
			}),
			q(62921, {	-- Our True Purpose
				["sourceQuests"] = { 62920 },	-- A Conduit For Change
				["provider"] = { "n", 171950 },	-- The Accuser
				["coord"] = { 44.6, 20.1, SINFALL_REACHES },
			}),
			q(59324, {	-- Our True Purpose
			--	["sourceQuests"] = {  },	-- TODO: unknown.  i think you get this version of "Our True Purpose" if you pursue the Adventures Scouting Map first, instead of Mirror Network?
				["provider"] = { "n", 164741 },	-- Tactician Sakaa
				["coord"] = { 57.6, 58.8, SINFALL_REACHES },
			}),
			q(58603, {	-- Phaestus, Genesis of Aeons
				["sourceQuests"] = {
					58585,	-- No Friend of Mine
					58584,	-- Right Our Wrongs
					58586,	-- The Right Stuff
				},
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.5, BASTION },
				["g"] = {
					i(174061),	-- Phaestus, Genesis of Aeons (QI!)
				},
			}),
			q(57884, {	-- Reclaiming Thornhill Manor
				["sourceQuests"] = {
					57882,	-- Reestablishing the Household
					57881,	-- The Key to Rebuilding
				},
				["provider"] = { "n", 159513 },	-- Bogdan
				["coord"] = { 60.4, 40.1, REVENDRETH },
			}),
			q(58391, {	-- Reconnaissance... for my, uh, Recovery
				["sourceQuests"] = {
					58388,	-- Blackbale Betrayers
					58389,	-- Maldraxxian Weapons
					58518,	-- There's Always a Paper Trail
				},	--
				["provider"] = { "n", 161431 },	-- Kael'thas Sunstrider
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
			}),
			q(57882, {	-- Reestablishing the Household
				["sourceQuests"] = { 57880 },	-- An Estate Within the Old Gate
				["provider"] = { "n", 159513 },	-- Bogdan
				["coord"] = { 60.4, 40.1, REVENDRETH },
				["g"] = {
					i(174839),	-- Offer of Employment (QI!)
				},
			}),
			q(61981, {	-- Replenish the Reservoir
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger <Sanctum Upgrades>
				["isWeekly"] = true,
				["coord"] = { 55.5, 26.3, SINFALL_REACHES },
			}),
			q(58444, {	-- Return to Sinfall
				["sourceQuests"] = { 58440 },	-- Mirror, Mirror...
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["g"] = {
					i(174111),	-- Medallion of Avarice (QI!)
				},
			}),
			q(58584, {	-- Right our Wrongs
				["sourceQuests"] = { 58555 },	-- A Tense Reunion
				["provider"] = { "n", 161526 },	-- General Draven
				["coord"] = { 50.1, 20.6, BASTION },
				["g"] = {
					i(180937),	-- Fearstalker's Ebony Cloak
					i(180934),	-- Soulbreaker's Ebony Drape
					i(180938),	-- Dread Sentinel's Ebony Cloak
					i(180936),	-- Ebony Death Shroud Cloak
				},
			}),
			q(59321, {	-- Sacred Covenant
				["sourceQuests"] = { 59315 },	-- The Court of Harvesters
				["provider"] = { "n", 164796 },	-- Prince Renathal
				["coord"] = { 50.9, 38.1, SINFALL_REACHES },
			}),
			q(63341, {	-- Sinfall Tactician
				-- TODO: Assumed SQ... double check by skipping to Renown 22
				["sourceQuests"] = { 63340 },	-- Sinfall Veteran
				["description"] = "Requires Renown 22.",
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64083, {	-- Sinfall Tactician #2
				["description"] = "Requires Renown 59.",
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(63340, {	-- Sinfall Veteran
			--	["sourceQuests"] = {  },	-- probably requires something between "our true purpose" and "ashes of the tower," unsure what unlocks the ability to pick up "return lost souls," which gives renown
				["description"] = "Requires Renown 7.",
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.1, 26.8, SINFALL_REACHES },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64325, {	-- Sinfall Veteran #2
				["description"] = "Requires Renown 43.",
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.1, 26.8, SINFALL_REACHES },
			}),
			q(58382, {	-- Someone Worth Saving
				["sourceQuests"] = { 61077 },	-- Confronting Sin
				["provider"] = { "n", 165291 },	-- The Accuser
				["coord"] = { 55.8, 78.7, SINFALL_DEPTHS },
			}),
			q(62870, {	-- Souls for Sinfall
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["provider"] = { "n", 164079 },	-- Highlord Bolvar Fordragon
				["coord"] = { 40.0, 68.3, ORIBOS },
				["g"] = {
					i(180202),	-- Soulkeeper Crystal (QI!)
					i(180909),	-- Ebony Death Shroud Gloves
					i(180910),	-- Dread Sentinel's Ebony Grips
					i(180911),	-- Soulbreaker's Ebony Handwraps
					i(180912),	-- Fearstalker's Ebony Gauntlets
				},
			}),
			q(58421, {	-- Special Access
				["sourceQuests"] = {
					58372,	-- Lead the Way
					58337,	-- Break Out
					58326,	-- Combing the Catacombs
				},
				["provider"] = { "n", 160941 },	-- The Curator <Harvester of Avarice>
				["coord"] = { 72.7, 37.6, REVENDRETH },
				["g"] = {
					i(174094),	-- Boian's Fangs (QI!)
					i(174095),	-- Daciana's Fangs (QI!)
					i(174093),	-- Ionata's Fangs (QI!)
				},
			}),
			q(57727, {	-- Stonevigil Unrest
				["description"] = "Requires Renown 20.",
				["sourceQuests"] = { 58395 },	-- Enough Vengeance For One Day
				["provider"] = { "n", 158653 },	-- Prince Renethal
				["coord"] = { 51.8, 37.5, SINFALL_REACHES },
			}),
			q(58393, {	-- Strategic Executions
				["sourceQuests"] = { 58391 },	-- Reconnaissance... for my, uh, Recovery
				["provider"] = { "n", 161572 },	-- Kael'thas Sunstrider
				["coord"] = { 69.8, 59.9, REVENDRETH },
			}),
			q(62919, {	-- Strengthening the Bond
				["sourceQuests"] = { 62918 },	-- Binding Power
				["provider"] = { "n", 171979 },	-- Nadjia the Mistblade
				["coord"] = { 43.9, 17.9, SINFALL_REACHES },
				["g"] = appendGroups(CONDUIT_GROUP, {
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
				["description"] = "Becomes available after unlocking tier 1 of the Command Table sanctum upgrade.",
				["isBreadcrumb"] = true,
				["altQuests"] = { 58093 },	-- Our Forgotten Purpose
				["provider"] = { "n", 165291 },	-- The Accuser
				["coord"] = { 55.6, 76.6, SINFALL_DEPTHS },
			}),
			q(59719, {	-- The Court
				["sourceQuests"] = {
					59676,	-- Harvester of Desire
					59711,	-- Harvester of Envy
					59708,	-- Harvester of Wrath
				},
				["provider"] = { "n", 165661 },	-- Prince Renathal
				["coord"] = { 41.0, 54.7, REVENDRETH },
				["g"] = {
					i(180928),	-- Soulbreaker's Ebony Wraps
					i(180931),	-- Ebony Death Shroud Bindings
					i(180930),	-- Fearstalker's Ebony Bracers
					i(180929),	-- Dread Sentinel's Ebony Vambraces
				},
			}),
			q(62857, {	-- The Court's Bounty
				["sourceQuests"] = { 62856 },	-- Building Your Renown
				["provider"] = { "n", 175772 },	-- Rahel
				["coord"] = { 54.0, 27.2, SINFALL_REACHES },
			}),
			q(59315, {	-- The Court of Harvesters
				["sourceQuests"] = { 59314 },	-- Sinfall
				["provider"] = { "n", 164742 },	-- Prince Renathal
				["coord"] = { 25.4, 56.1, SINFALL_REACHES },
			}),
			q(58842, {	-- The Curator
				["sourceQuests"] = { 60935 },	-- Medallion of Avarice
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["coord"] = { 51.7, 37.6, SINFALL_REACHES },
			}),
			q(63033, {	-- The Highlord Calls
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["provider"] = { "n", 158653 },	-- Prince Renathal
				["coord"] = { 51.2, 37.8, SINFALL_REACHES },
			}),
			q(57881, {	-- The Key to Rebuilding
				["sourceQuests"] = { 57880 },	-- An Estate Within the Old Gate
				["provider"] = { "n", 159513 },	-- Bogdan
				["coord"] = { 60.4, 40.1, REVENDRETH },
				["g"] = {
					i(173180),	-- Ornate Key (QI!)
				},
			}),
			q(58383, {	-- The Many Sins of Kael'thas Sunstrider
				["sourceQuests"] = { 58382 },	-- Someone Worth Saving
				["provider"] = { "n", 161158 },	-- The Accuser
				["coord"] = { 46.4, 32.3, SINFALL_DEPTHS },
			}),
			q(58407, {	-- The Medallion of Dominion
				["sourceQuests"] = { 58406 },	-- Mirror to Maldraxxus
				["maps"] = { 1689 },	-- Exoramas (Venthyr Renown 22 Scenario)
				["provider"] = { "n", 170543 },	-- General Draven
				["coord"] = { 27.4, 40.3, REVENDRETH },
				["g"] = appendGroups(LFR_WEAPON_GROUP, {
					i(180948),	-- Battle Gargon Vrednic (MOUNT!)
				}),
			}),
			q(59233, {	-- The Prince's New Crown
				["sourceQuests"] = { 60996 },	-- Face Your Fears
				["provider"] = { "n", 171175 },	-- General Draven
				["coord"] = { 21.0, 22.8, BASTION },
				["g"] = {
					i(180604),	-- Crown of the Harvesters (QI!)
					i(180905),	-- Dread Sentinel's Ebony Greatboots
					i(180908),	-- Ebony Death Shroud Boots
					i(180907),	-- Fearstalker's Ebony Sabatons
					i(180906),	-- Soulbreaker's Ebony Slippers
				},
			}),
			q(61492, {	-- The Princeguard
				["sourceQuests"] = { 59324, 62921 },	-- Our True Purpose
				["description"] = "Requires Renown 5.",
				["provider"] = { "n", 161977 },	-- General Draven
				["coord"] = { 46.3, 15.7, SINFALL_REACHES },
				["g"] = {
					i(181516),	-- Stone-Laced Infused Ruby (QI!)
				},
			}),
			q(58586, {	-- The Right Stuff
				["sourceQuests"] = { 58555 },	-- A Tense Reunion
				["provider"] = { "n", 160280 },	-- Mikanikos
				["coord"] = { 50.1, 20.6, BASTION },
				["g"] = {
					i(173880),	-- Purified Metal (QI!)
					i(174465),	-- Tainted Centurion Component (QI!)
				},
			}),
			q(62904, {	-- The Souls Plight
				["sourceQuests"] = { 62903 },	-- Into the Reservoir
				["provider"] = { "n", 172605 },	-- Foreman Flatfinger
				["coord"] = { 54.9, 26.3, SINFALL_REACHES },
			}),
			q(57646, {	-- The Tithelord
				["sourceQuests"] = { 57729 },	-- To the Estate
				["provider"] = { "n", 167689 },	-- Prince Renethal
				["coord"] = { 71.9, 68.8, REVENDRETH },
				["g"] = {
					i(173976),	-- Medallion of Envy (QI!)
					i(180923),	-- Fearstalker's Ebony Monnion
					i(180922),	-- Soulbreaker's Ebony Mantle
					i(180920),	-- Ebony Death Shroud Spaulders
					i(180921),	-- Dread Sentinel's Ebony Spaulders
				},
			}),
			q(60673, {	-- The Traitor
				["sourceQuests"] = { 58421 },	-- Special Access
				["provider"] = { "n", 161298 },	-- Nourman <The Doorman>
				["coord"] = { 77.5, 39.2, REVENDRETH },
				["g"] = {
					i(174092),	-- Mateo's Mirror Shard (QI!)
					i(180913),	-- Soulbreaker's Ebony Hood
					i(180915),	-- Ebony Death Shroud Hood
					i(180914),	-- Fearstalker's Ebony Helm
					i(180900),	-- Dread Sentinel's Ebony Headgear
				},
			}),
			q(58518, {	-- There's Always a Paper Trail
				["sourceQuests"] = { 58443 },	-- Continued Care of Kael'thas
				["provider"] = { "n", 161427 },	-- Kael'thas Sunstrider
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
				["g"] = {
					i(174278),	-- Orders from the Tithelord (QI!)
				},
			}),
			q(60145, {	-- Third Talon Vartox
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
				["provider"] = { "n", 167381 },	-- Baroness Draka
				["coord"] = { 56.3, 66.6, REVENDRETH },
			}),
			q(57729, {	-- To the Estate
				["sourceQuests"] = { 60183 },	-- After Them!
				["provider"] = { "n", 167620 },	-- Prince Renethal
				["coord"] = { 61.5, 69.6, REVENDRETH },
			}),
			q(58386, {	-- Use My Strengths
				["sourceQuests"] = { 58426 },	-- In the Shadow of our Failures
				["provider"] = { "n", 161261 },	-- Kael'thas Sunstrider
				["maps"] = { REVENDRETH },
				-- no coords, is your 'pet'
			}),
			q(58325, {	-- Watcher Emil
				["sourceQuests"] = { 58842 },	-- The Curator
				["providers"] = {
					{ "n", 160941 },	-- The Curator <Harvester of Avarice> (initial provider)
					{ "n", 160942 },	-- Forgotten Soul (if you abandon it, this is in the follow-up quest area)
				},
				["coords"] = {
					{ 72.7, 37.6, REVENDRETH },	-- The Curator
					{ 66.0, 28.9, REVENDRETH },	-- Forgotten Soul
				},
			}),
			q(58387, {	-- We Each Must Carry Our Own Sins
				["sourceQuests"] = {
					58384,	-- Dredgers Left Behind
					58385,	-- Learning to Sacrifice
					58386,	-- Use My Strengths
				},
				["provider"] = { "n", 161278 },	-- The Accuser
				["coord"] = { 43.8, 51.4, REVENDRETH },
				["g"] = {
					i(180941),	-- Kael's Dark Sinstone Chain
				},
			}),
			q(61334, {	-- Return Lost Souls (5)
				-- ["sourceQuests"] = {  },	-- TODO
				["provider"] = { "n", 164738 },	-- Tenaval
				["isWeekly"] = true,
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62867, {	-- Return Lost Souls (10)
				-- ["sourceQuests"] = {  },	-- TODO
				["description"] = "Requires Renown 15.",
				["provider"] = { "n", 164738 },	-- Tenaval
				["isWeekly"] = true,
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62868, {	-- Return Lost Souls (15)
				-- ["sourceQuests"] = {  },	-- TODO
				["description"] = "Requires Renown 24.",
				["provider"] = { "n", 164738 },	-- Tenaval
				["isWeekly"] = true,
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62869, {	-- Return Lost Souls (20)
				-- ["sourceQuests"] = {  },	-- TODO
				["description"] = "Requires Renown 32.",
				["provider"] = { "n", 164738 },	-- Tenaval
				["isWeekly"] = true,
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
			}),
			q(65105, {	-- Return More Lost Souls
				["sourceQuests"] = { 62869 },	-- Return Lost Souls (20)
				["provider"] = { "n", 164738 },	-- Tenaval
				["coord"] = { 45.3, 28.5, SINFALL_REACHES },
				["repeatable"] = true,
				["timeline"] = { ADDED_9_1_5 },
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
	n(VENTHYR, {
		q(62699),	-- triggered when turning in #62691, "A Calling in Revendreth"
		q(62924),	-- triggered when turning in #62691, "A Calling in Revendreth"
		q(63001),	-- triggers when choosing to skip the Venthyr sanctum intro quests
		q(63023),	-- triggers when choosing to skip the Venthyr sanctum intro quests
		q(59316),	-- turning in quest #62918, "Binding Power"
		q(59317),	-- triggered when turning in #62919, "Strengthening the Bond"
		q(61546),	-- when looting 'Almost Empty Amontillado Cask' (181781) while on quest 'Crypt Crashers' (58428)
	}),
}));