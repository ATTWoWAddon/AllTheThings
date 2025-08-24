-----------------------------------
--     NOT SORTED YET MODULE     --
-----------------------------------
-- Every thing in this file hasn't been sorted yet, but is known to exist and is not 'NYI'.
-- #if NOT ANYCLASSIC
root(ROOTS.Sourceless, bubbleDownFiltered({
		["sharedDescription"] = "If you obtain this item, please provide as much information as you can about how and where you got it.",
	},FILTERFUNC_itemID,{
	n(ARMOR, {
		expansion(EXPANSION.CATA, {
			-- 4.0.3
			expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
				i(53363),	-- Circle of Suffering
				i(53365),	-- Empowered Hands
				i(53376),	-- Lockpicker's Glovelettes
				i(57529),	-- Fur-Lined Slippers
				i(57533),	-- Dwarven Iron Bracer
			})),
		}),
		expansion(EXPANSION.WOD, {
			-- 6.2.0
			expansion(EXPANSION.WOD, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_6_2_0 } }, {
				i(127103),	-- Gladiator's Plate Shoulders
			})),
		}),
		expansion(EXPANSION.LEGION, {
			-- 7.0.3
			expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
				i(131203),	-- Chain Link Winter Bracers
				i(131848),	-- Beast Tracker's Bracers
				i(131854),	-- Rockbitten Gloves
			})),
			-- 7.2.5
			expansion(EXPANSION.LEGION, patch(2,5), bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } }, {
				i(150472),	-- Grips of Silent Justice
			})),
		}),
		expansion(EXPANSION.BFA, {	-- TODO: I really need to take a look at this one day and remove wrong itemIDs - Darkal
			-- 8.0.1
			expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
				n(BACK, {
					i(155091),	-- Thovas-Explorer's Cape
				}),

				-- Drustvar items = Nazmir quest rewards
				filter(CLOTH, {
					-- Loads on Wowhead & ingame
					i(158603),	-- Wickerwoven Handwraps
					i(160197),	-- Wickerwoven Pantaloons

					-- Loads on Wowhead but not ingame
					i(155461),	-- Wickerwoven Headpiece
					i(155463),	-- Wickerwoven Wrap
					i(155464),	-- Wickerwoven Shoulderpads
					i(160862),	-- Wickerwoven Mantle
					i(160866),	-- Wickerwoven Circlet
				}),
				filter(LEATHER, {
					i(155467),	-- Banisher Chestpiece
					i(155470),	-- Banisher Headcover
					i(155472),	-- Banisher Shoulderguards
					i(155473),	-- Banisher Cinch
					i(158604),	-- Banisher Mitts
					i(160198),	-- Banisher Britches
					i(160863),	-- Banisher Mantle
					i(160867),	-- Banisher Hood
				}),
				filter(MAIL, {
					i(155475),	-- Crone-Seeker's Chestguard
					i(155478),	-- Crone-Seeker's Skullguard
					i(155480),	-- Crone-Seeker's Spaulders
					i(158605),	-- Crone-Seeker's Grips
					i(160199),	-- Crone-Seeker's Leggings
					i(160864),	-- Crone-Seeker's Pauldrons
					i(160868),	-- Crone-Seeker's Coif
				}),
				filter(PLATE, {
					i(155483),	-- Waycrest Militia Chestplate
					i(155486),	-- Waycrest Militia Warhelm
					i(155488),	-- Waycrest Militia Shoulderplates
					i(158606),	-- Waycrest Militia Gloves
					i(160200),	-- Waycrest Militia Pants
					i(160865),	-- Waycrest Militia Shoulderplates
					i(160869),	-- Waycrest Militia Greathelm
				}),
				-- Stormsong Valley items = Vol'dun quest rewards
				filter(CLOTH, {
					i(160233),	-- Tidespeaker Wrap
					i(160234),	-- Tidespeaker Headpiece
					i(160235),	-- Tidespeaker Shoulderpads
					i(160372),	-- Tidespeaker Cinch
					i(160873),	-- Tidespeaker Crown
					i(160881),	-- Tidespeaker Robes
				}),
				filter(LEATHER, {
					i(160236),	-- Darkwater Chestpiece
					i(160237),	-- Darkwater Headcover
					i(160238),	-- Darkwater Mantle
					i(160375),	-- Darkwater Waistwrap
					i(160874),	-- Darkwater Cowl
					i(160882),	-- Darkwater Jerkin
				}),
				filter(MAIL, {
					i(160239),	-- Stormchaser Chestguard
					i(160240),	-- Stormchaser Skullcover
					i(160241),	-- Stormchaser Spaulders
					i(160378),	-- Stormchaser Clutch
					i(160875),	-- Stormchaser Helm
					i(160883),	-- Stormchaser Hauberk
				}),
				filter(PLATE, {
					i(160242),	-- Dread Corsair Chestguard
					i(160243),	-- Dread Corsair Helmet
					i(160244),	-- Dread Corsair Spaulders
					i(160381),	-- Dread Corsair Clasp
					i(160876),	-- Dread Corsair Warhelm
					i(160884),	-- Dread Corsair Chestplate
				}),
				-- Tiragarde Sound items = Zuldazar quest rewards
				filter(CLOTH, {
					i(160066),	-- Navigator's Wrap
					i(160067),	-- Navigator's Headpiece
					i(160068),	-- Navigator's Shoulderpads
					i(160078),	-- Navigator's Pantaloons
					i(160088),	-- Navigator's Mittens
					i(160854),	-- Navigator's Amice
				}),
				filter(LEATHER, {
					i(160069),	-- Freebooter Chestpiece
					i(160070),	-- Freebooter Headcover
					i(160071),	-- Freebooter Mantle
					i(160079),	-- Freebooter Britches
					i(160089),	-- Freebooter Handcovers
					i(160855),	-- Freebooter Shoulderguards
					i(160892),	-- Freebooter Jerkin
				}),
				filter(MAIL, {
					i(160072),	-- Outrigger Chestguard
					i(160073),	-- Outrigger Skullguard
					i(160074),	-- Outrigger Shoulderguards
					i(160080),	-- Outrigger Chain Leggings
					i(160856),	-- Outrigger Spaulders
					i(160893),	-- Outrigger Breastplate
				}),
				filter(PLATE, {
					i(160075),	-- Sea Raider's Warplate
					i(160076),	-- Sea Raider's Headgear
					i(160077),	-- Sea Raider's Shoulderplates
					i(160081),	-- Sea Raider's Pants
					i(160857),	-- Sea Raider's Pauldrons
					i(160894),	-- Sea Raider's Chestplate
				}),

				-- Nazmir items = Drustvar quest rewards
				filter(CLOTH, {
					i(159019),	-- Loa Speaker's Handguards
					i(159022),	-- Loa Speaker's Crest
					i(159032),	-- Loa Speaker's Mantle
					i(159054),	-- Loa Speaker's Cowl
					i(159058),	-- Loa Speaker's Britches
					i(159061),	-- Loa Speaker's Garment
					i(159064),	-- Loa Speaker's Amice
				}),
				filter(LEATHER, {
					i(159017),	-- Ritual Flayer's Handwraps
					i(159024),	-- Ritual Flayer's Guise
					i(159030),	-- Ritual Flayer's Shoulderpads
					i(159044),	-- Ritual Flayer's Tunic
					i(159056),	-- Ritual Flayer's Helm
					i(159060),	-- Ritual Flayer's Leggings
					i(159062),	-- Ritual Flayer's Mantle
				}),
				filter(MAIL, {
					i(159020),	-- Death-Pledged Handguards
					i(159023),	-- Death-Pledged Helmet
					i(159033),	-- Death-Pledged Mantle
					i(159043),	-- Death-Pledged Chainmail
					i(159055),	-- Death-Pledged Headpiece
					i(159065),	-- Death-Pledged Spaulders
				}),
				filter(PLATE, {
					i(159018),	-- Nazmani Warplate Crushers
					i(159021),	-- Nazmani Warplate Headguard
					i(159031),	-- Nazmani Warplate Pauldrons
					i(159042),	-- Nazmani Warplate Chestguard
					i(159053),	-- Nazmani Warplate Helm
					i(159057),	-- Nazmani Warplate Pants
					i(159063),	-- Nazmani Warplate Shoulderguards
					i(159066),	-- Nazmani Warplate Belt
					i(159071),	-- Nazmani Warplate Armsplints
				}),
				-- Vol'dun items = Stormsong Valley quest rewards
				filter(CLOTH, {
					i(161157),	-- Lastwind Crest
					i(161165),	-- Lastwind Vestments
					i(161255),	-- Lastwind Cowl
					i(161259),	-- Lastwind Amice
					i(161264),	-- Lastwind Raiment
				}),
				filter(LEATHER, {
					i(161156),	-- Scorching Sands Guise
					i(161164),	-- Scorching Sands Jerkin
					i(161256),	-- Scorching Sands Helm
					i(161260),	-- Scorching Sands Mantle
					i(161265),	-- Scorching Sands Tunic
					i(161277),	-- Scorching Sands Britches
				}),
				filter(MAIL, {
					i(161155),	-- Resilient Outcast's Helmet
					i(161163),	-- Resilient Outcast's Chainmail
					i(161257),	-- Resilient Outcast's Warhelm
					i(161261),	-- Resilient Outcast's Mantle
					i(161266),	-- Resilient Outcast's Chestguard
				}),
				filter(PLATE, {
					i(161154),	-- Exiled Veteran's Headguard
					i(161162),	-- Exiled Veteran's Chestpiece
					i(161258),	-- Exiled Veteran's Greathelm
					i(161262),	-- Exiled Veteran's Shoulderguards
					i(161267),	-- Exiled Veteran's Chestplate
					i(161279),	-- Exiled Veteran's Greaves
				}),
				-- Zuldazar items = Tiragarde Sound quest rewards
				filter(CLOTH, {
					i(158663),	-- Zanchuli Grasps
					i(161144),	-- Zanchuli Vestments
					i(161149),	-- Zanchuli Shoulderpads
					i(161224),	-- Zanchuli Hood
					i(161228),	-- Zanchuli Amice
					i(161232),	-- Zanchuli Robes
					i(161248),	-- Zanchuli Pantaloons
				}),
				filter(LEATHER, {
					i(158655),	-- Jambani Boots
					i(158665),	-- Jambani Grasps
					i(161145),	-- Jambani Tunic
					i(161151),	-- Jambani Mantle
					i(161225),	-- Jambani Guise
					i(161229),	-- Jambani Shoulderguards
					i(161233),	-- Jambani Chestpiece
					i(161243),	-- Jambani Cincture
					i(161249),	-- Jambani Britches
					i(161250),	-- Jambani Leggings
				}),
				filter(MAIL, {
					i(158656),	-- Torcalin Striders
					i(158673),	-- Torcalin Armguards
					i(161146),	-- Torcalin Harness
					i(161148),	-- Torcalin Shoulderguards
					i(161226),	-- Torcalin Helm
					i(161230),	-- Torcalin Mantle
					i(161234),	-- Torcalin Chestguard
					i(161238),	-- Torcalin Bands
					i(161244),	-- Torcalin Cincture
					i(161251),	-- Torcalin Leggings
					i(161252),	-- Torcalin Pants
				}),
				filter(PLATE, {
					i(161147),	-- Rastari Chestguard
					i(161150),	-- Rastari Spaulders
					i(161227),	-- Rastari Greathelm
					i(161231),	-- Rastari Shoulderplates
					i(161235),	-- Rastari Chestplate
					i(161254),	-- Rastari Pants
				}),
			})),
		}),
	}),
	f(MISC, {
		expansion(EXPANSION.DF, {
			-- 10.1.7
			expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
				i(208878),	-- Adventurer's Footlocker //Given to alts who used the TWW prepurchase boost
			})),
		}),
	}),
	n(MOUNT_MODS, {
		expansion(EXPANSION.DF, {
			-- 10.2.0
			expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				i(207775),	-- Grotto Netherwing Drake: Teal Scales (MM!)
			})),
		}),

	}),
	n(FOLLOWERS, {
		expansion(EXPANSION.SL, {
			-- 9.0.1
			expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {
				follower(1208),	-- Nadjia the Mistblade
			})),
		}),
	}),
	n(WEAPONS, {
		expansion(EXPANSION.MOP, {
			-- 5.1.0
			expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {
				i(91498),	-- Malevolent Gladiator's Heavy Crossbow
				i(91496),	-- Malevolent Gladiator's Touch of Defeat
				i(91755),	-- Malevolent Gladiator's Baton of Light
			})),
		}),
		expansion(EXPANSION.WOD, {
			-- 6.0.2
			expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
				i(118186),	-- Frostwolf Wisdom Stick
				i(107644),	-- Napmaster's Sleep Mask
			})),
		}),
		expansion(EXPANSION.BFA, {	-- TODO: I really need to take a look at this one day and remove wrong itemIDs - Darkal
			-- 8.0.1
			expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
				-- Drustvar items = Nazmir quest rewards
				--i(161296),	-- Autumnvale Hunting Rifle

				-- Stormsong Valley items = Vol'dun quest rewards

				-- Tiragarde Sound items = Zuldazar quest rewards
				i(153414),	-- Hatch-Cover Bulwark
				i(158517),	-- Hatch-Cover Bulwark
				i(153405),	-- Scalawag's Cutlass
				i(155227),	-- Proudmoore Battalion Shield
				i(153402),	-- Scalawag's Sail Slicer
				i(153403),	-- Scalawag's Claymore
				i(153404),	-- Scalawag's Spikefist
				i(153406),	-- Tideshaper Staff
				i(153407),	-- Repurposed Dinghy Anchor
				i(153415),	-- Harbormaster's Lantern
				i(155581),	-- Scalawag's Warglaive
				i(158505),	-- Scalawag's Sail Slicer
				i(158507),	-- Scalawag's Spikefist
				-- i(161299),	-- Stoat-Trapper's Bladefist
				-- i(161300),	-- Stoat-Trapper's Striker
				i(158510),	-- Repurposed Dinghy Anchor
				i(158518),	-- Harbormaster's Lantern
				i(159079),	-- Captivating Glowfly Lantern

				-- i(161292),	-- Grimestone Spellmaul
				i(158579),	-- Scalawag's Warglaive
				i(153400),	-- Scalawag's Bolt-Thrower
				i(158503),	-- Scalawag's Bolt Thrower
				i(161933),	-- Manual of Reverse Wounding
				i(158508),	-- Scalawag's Cutlass
				-- i(161305),	-- Ashvane Captain's Shortsword
				-- i(161308),	-- Ashvane Captain's Quickblade
				-- i(161309),	-- Ashvane Captain's Gladius
				i(158504),	-- Whaler's Pike
				i(153401),	-- Whaler's Pike
				i(158509),	-- Tideshaper Staff
				i(158506),	-- Scalawags Claymore
				i(161924),	-- Seapriest's Wand (A) (never addedd)

				-- Nazmir items = Drustvar quest rewards

				-- Vol'dun items = Stormsong Valley quest rewards
				i(161295),	-- Scorching Sands Battleaxe
				i(161302),	-- Scorching Sands Mace


				-- Zuldazar items = Tiragarde Sound quest rewards
				i(154985),	-- Golden Protectorate
				i(158576),	-- Golden Protectorate
				i(154976),	-- Necropolis Sentry's Sword
				i(154973),	-- Golden Devilsaur Fang
				i(154975),	-- Scalebeast Claws
				i(154977),	-- Mojo-Drainer's Staff
				i(154978),	-- Dinomancy Cudgel
				i(154986),	-- Devilsaur Voodoo Figure
				i(154974),	-- Tiki-Thumper
				i(155582),	-- Loa-Claimer's Warglaives
				i(158564),	-- Golden Devilsaur Fang
				i(158566),	-- Scalebeast Claws
				i(158569),	-- Dinomancy Cudgel
				i(158577),	-- Devilsaur Voodoo Figure
				i(158565),	-- Tiki-Thumper
				i(161287),	-- Faithless Wingrider's Shield
				i(158562),	-- Howdah-Rider's Bow
				i(154971),	-- Howdah-Rider's Bow
				i(153642),	-- Manual of Reverse Wounding
				i(158567),	-- Necropolis Sentry's Sword
				i(166889, {["sourceID"] = 103154 }),	-- Zandalari Prelate's Lightblade
				i(158563),	-- Tomb-Rustler's Polearm
				i(154972),	-- Tomb-Rustler's Polearm
				i(166887),	-- Pakura Priest Staff
				i(158568),	-- Mojo-Drainer Staff
				i(152871),	-- Seapriest's Wand
				i(158580),	-- Loa-Claimer's Wariglaives
			})),
		}),
	}),
	n(QUESTS, {	-- These are or were completable. Most of these are HQTs.
		expansion(EXPANSION.CLASSIC, {
			-- 1.x.x
			n(P1xx, {
				q(934),	-- Crown of the Earth
			}),
		}),
		expansion(EXPANSION.CATA, {
			-- 4.x.x
			n(P4xx, {
				q(26459),	-- Researching the Corruption
				q(28468),	-- Toxic Horrors
				q(29572),	-- Safety is Job One
				q(29683),	-- The Scryer's Scryer
				q(29810),	-- The Faceless Ones
			}),
		}),
		expansion(EXPANSION.MOP, {
			-- 5.0.4
			expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
				q(30549),	-- [DNT] Rearm, Reuse, Recycle TRACKER
				q(30982),	-- Animal Control
				q(30997),	-- Animal Control
			})),

			-- 5.3.0
			expansion(EXPANSION.MOP, patch(3,0), bubbleDownSelf({ ["timeline"] = { ADDED_5_3_0 } }, {
				q(32832),	-- Taran Zhu and Dezco Scene
			})),
		}),
		expansion(EXPANSION.WOD, {
			-- 6.0.2
			expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
				q(33957, {	-- A Gift for Raa'la
					["description"] = "Area: |cFFf09f26Frostfire Ridge|r",
					["lvl"] = 10,
				}),
				q(36903),	-- Ogre Waygate
			})),

			-- 6.1.0
			expansion(EXPANSION.WOD, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_6_1_0 } }, {
				q(37805),	-- Goblin Looted
			})),

			-- 6.2.0
			expansion(EXPANSION.WOD, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_6_2_0 } }, {
				q(39497),	-- Ogre Waygate
			})),
		}),
		expansion(EXPANSION.LEGION, {
			-- 7.0.3
			expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
				q(39842),	-- One Mage's Trash
				q(39843),	-- The Muck Stops Here
				q(42167),	-- Blood Gather Bit
				q(42480),	-- Assn Rogue - Flavor Event 02 (Alliance)
			})),

			-- 7.1.0
			expansion(EXPANSION.LEGION, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_7_1_0 } }, {
				q(45184),	-- 7.1 Class Hall - Special - PVP - PVP Repeated - Arena - Tracking Quest
				q(45183),	-- 7.1 Class Hall - Special - PVP - PVP Repeated - Ashran - Tracking Quest
				q(45181),	-- 7.1 Class Hall - Special - PVP - PVP Repeated - Battleground - Tracking Quest
			})),

			-- 7.2.0
			expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
				q(47215),	-- Tracking Quest
			})),

			-- 7.3.0
			expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
				q(49163),	--
			})),

			-- 7.3.2
			expansion(EXPANSION.LEGION, patch(3,2), bubbleDownSelf({ ["timeline"] = { ADDED_7_3_2 } }, {
				q(49619),	--
				q(49620),	-- completed some missions on the Legion Mission Board
				q(49621),	--
			})),

			-- 7.3.5
			expansion(EXPANSION.LEGION, patch(3,5), bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 } }, {
				q(47957),	--
				q(47958),	--
				q(48602),	--
				q(48603),	--
				q(49815),	--
				q(50312),	--
			})),
		}),
		expansion(EXPANSION.BFA, {
			-- 8.0.1
			expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
				q(50668, {
					["description"] = "Area: |cFFf09f26Orgrimmar|r",
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(50768),	--
				q(51692),	--
				q(53550),	-- A Change in Leadership
				q(53650),	--
			})),

			-- 8.1.0
			expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
				q(53723),	--
				q(54215),	--
				q(54216),	--
				q(54217),	--
				q(54218),	--
				q(54219),	--
				q(54220),	--
				q(54221),	--
				q(54222),	--
				q(54223),	--
				q(54860),	--
			})),

			-- 8.1.5
			expansion(EXPANSION.BFA, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {
				q(55023, {	-- Bizmo's Brawlpub Awaits!
					["description"] = "Category: |cFFf09f26Brawler's Guild|r",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(55238),	--
			})),

			-- 8.2.0
			expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
				q(55660, { ["name"] = "Time Trials", ["_drop"] = { "g" }, }),	-- Time Trials (Tournament Realm Quest)
				q(54966),	--
				q(54967),	--
				q(54968),	--
				q(54970),	--
				q(54971),	--
				q(54973),	--
				q(54974),	--
				q(56065),	--
				q(56127),	--
				q(56607),	-- Killed Sandcastle?
				q(56618),	-- killed Tidelord Aquatus (153898)?
				q(56667),	--
				q(56742),	--
				q(56744),	--
				q(56844),	--
				q(56898),	--
				q(57193),	--
				q(57408),	--
			})),

			-- 8.2.5
			expansion(EXPANSION.BFA, patch(2,5), bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 } }, {
				q(57550),	--
				q(57640, {	-- Master Ryson's All Seeing Eye
					["description"] = "Type: |cFFf09f26PvP|r\nCategory: |cFFf09f26Korrak's Revenge|r",
					["qg"] = 13151,	-- Syndicate Master Ryson
					["maps"] = 1537,	-- Alterac Valley
					["lvl"] = 10,
				}),
			})),

			-- 8.3.0
			expansion(EXPANSION.BFA, patch(3,0), bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
				q(58576),	--
				q(59038),	--
				q(59040),	--
				q(55614),	-- Tracking Quest
			})),
		}),
		expansion(EXPANSION.SL, {
			-- 9.0.1
			expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {
				q(62684),	-- Encountered after using Focused Life Anima to create the final possible azerite power available from it (according to ATT), which was Fetish of the Hidden Labyrinths (Anima of Life and Death, Rank 3)?? Maybe new HQT for tracking?
				q(56067),	--
				q(56068),	--
				q(56069),	--
				q(61923),	--
				q(62165),	-- Tal-Inara's Call
				q(62166),	-- Tal-Inara's Call
				q(62377),	--
				q(62381),	-- Encountered after swapping covenant to necrolord ??
				q(62578),	--
				q(62687),	--
				q(62690),	-- Encountered after using Focused Life Anima to create the final possible azerite power available from it (according to ATT), which was Fetish of the Hidden Labyrinths (Anima of Life and Death, Rank 3)?? Maybe new HQT for tracking?
				q(60693),	-- After q(59781)
			})),

			-- 9.0.2
			expansion(EXPANSION.SL, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2 } }, {
				q(57537),	-- Covering our Tracks
				q(63219),	-- @ 73.5,91.6,STORMIND_CITY L6 NE Druid, 2022-07-30 // 52.5, 88.1 Orgrimmar 2023-07-03 Goblin Hunter L9
			})),

			-- 9.1.0
			expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
				q(63925),	--
				q(64110),	--
				q(64115),	--
				q(64116),	--
				q(64117),	--
				q(64118),	--
				q(64119),	-- Tormentors of Torghast related
				q(64192),	--
				q(64369),	--
				q(64516),	--
			})),

			-- 9.1.5
			expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {
				q(64975),	--
			})),
		}),
		expansion(EXPANSION.DF, {
			-- 10.0.0
			expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {
				q(66034),	-- On Fail, Reset Player [DNT] (spellID 374750) / MDI Quest Trigger
				q(67045),	--
				q(71054),	--
			})),

			-- 10.0.2
			expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2 } }, {
				q(72379),	--
				q(72370),	-- "riding the airship to the dragon isles for the intro quest."
				q(74047),	--
				q(74064),	--
			})),

			-- 10.0.5
			expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				q(74897),	-- L70 Human Hunter Achieved Duelist and Clock Mog 2023-03-15
				-- q(76157),	--
			})),

			-- 10.1.0
			expansion(EXPANSION.DF, patch(1,0), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
				q(75443),	-- Flag Tracking Quest (spellID 431951)
				q(75774),	-- completed researchers under fire?
			})),

			-- 10.1.5
			expansion(EXPANSION.DF, patch(1,5), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
				q(76267),	--
			})),

			-- 10.1.7
			expansion(EXPANSION.DF, patch(1,7), bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
				q(78300),	--
			})),

			-- 10.2.0
			expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
				q(78253),	--
				q(78737),	--
			})),

			-- 10.2.5
			expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
				q(78976),	--
				q(79353),	--
			})),

			-- 10.2.6
			expansion(EXPANSION.DF, patch(2,6), bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 } }, {
				q(79988),	--
			})),
		}),
		expansion(EXPANSION.TWW, {
			-- 11.0.2
			expansion(EXPANSION.TWW, patch(0,2), bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
				q(84255),	-- Received item 'The Warband Map to Everywhere All At Once' (itemID 212174) - Not for me, it has to be something else - Darkal
				i(228580),	-- Brute Force Idol
			})),
		}),
	}),
}));
-- #endif
