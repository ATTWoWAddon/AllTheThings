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

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
	n(NIGHT_FAE, {
		n(QUESTS, {
			q(63214, {	-- Report to Moonberry
				["sourceQuests"] = {
					57878,	-- Choosing Your Purpose [Story] -- TODO: confirm this requirement on a Story-Night Fae?
					62000,	-- Choosing Your Purpose [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["isBreadcrumb"] = true,
				["provider"] = { "n", 159478 },	-- Tal-Inara
				["coord"] = { 39.2, 69.7, ORIBOS },
			}),
			q(61475, {	-- The Heart of the Forest
				["sourceQuests"] = {
					-- TODO: confirm
					57878,	-- Choosing Your Purpose [Story]
					62000,	-- Choosing Your Purpose [Skip]
					63214,	-- Report to Moonberry [Skip]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 171795 },	-- Lady Moonberry
				["coord"] = { 39.7, 61.0, ORIBOS },
			}),
			-- These quests are not part of the covenant questline chapters, but are Night Fae only
			q(62560, {	-- Growing in Power
				["sourceQuests"] = {
					59071,	-- Mending a Broken Hart
					60272,	-- The Weak Link (not 100% on this, but it's as far in the chain at which I am able to accept this)
					62899,	-- The Endless Forest
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coords"] = {
					{ 47.5, 36.5, THE_TRUNK },
					{ 49.2, 39.9, THE_TRUNK },
				},
			}),
			q(61058, {	-- Bound in Dreams
				["sourceQuests"] = {
					59242,	-- Their New Home [First Covenant]
					62900,	-- A Conduit for Growth  [Switched Covenant]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 160482 },	-- Dreamweaver
				["coord"] = { 33.7, 47.6, THE_TRUNK },
				["g"] = {
					follower(1264),	-- Dreamweaver
				},
			}),
			q(61057, {	-- By Trials Forged
				["sourceQuests"] = {
					60108,	-- Drust and Ashes [First Covenant]
					62900,	-- A Conduit for Growth  [Switched Covenant]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 165659 },	-- Hunt-Captain Korayn
				["coord"] = { 35.2, 47.4, THE_TRUNK },
				["g"] = {
					follower(1266),	-- Hunt-Captain Korayn
				},
			}),
			q(62544, {	-- From a Dark Place
				["sourceQuests"] = { 62536 },	-- The Lost of Teldrassil
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.6, 39.0, THE_TRUNK },
			}),
			q(62561, {	-- My Heart is Full
				["sourceQuests"] = { 60108 },	-- Drust and Ashes
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 47.6, 36.4, THE_TRUNK },
			}),
			q(63347, {	-- Night Fae Tactician
				["description"] = "Requires Renown 22.",
				["provider"] = { "n", 176096 },	-- Laurel
				["coord"] = { 34.0, 37.0, THE_TRUNK },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64085, {	-- Night Fae Tactician #2
				["description"] = "Requires Renown 59.",
				["provider"] = { "n", 176096 },	-- Laurel
				["coord"] = { 34.0, 37.0, THE_TRUNK },
			}),
			q(63346, {	-- Night Fae Veteran
				["sourceQuests"] = { 62899 },	-- The Endless Forest
				["description"] = "Requires Renown 7.",
				["provider"] = { "n", 176096 },	-- Laurel
				["coord"] = { 34.0, 37.0, THE_TRUNK },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 },
			}),
			q(64322, {	-- Night Fae Veteran #2
				["description"] = "Requires Renown 43.",
				["provider"] = { "n", 176096 },	-- Laurel
				["coord"] = { 34.0, 37.0, THE_TRUNK },
			}),
			q(62546, {	-- No Wisp Left Behind (1)
				["sourceQuests"] = { 62544 },	-- From a Dark Place
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.6, 39.0, THE_TRUNK },
			}),
			q(62549, {	-- No Wisp Left Behind (2)
				["sourceQuests"] = { 62546 },	-- No Wisp Left Behind (1)
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.6, 39.0, THE_TRUNK },
			}),
			q(61984, {	-- Replenish the Reservoir
				-- ["sourceQuests"] = { 58160 },	-- For Queen and Grove!
				-- TODO Verify if requirements different for first Covenant vs. Switching Covenant?
				["sourceQuests"] = { 62899 },	-- The Endless Forest  [after switching Covenant]
				["provider"] = { "n", 167196 },	-- Sesselie
				["isWeekly"] = true,
				["coord"] = { 50.5, 62.9, THE_ROOTS },
			}),
			q(61331, {	-- Return Lost Souls (5 soul version)
				["sourceQuests"] = { 58160 },	-- For Queen and Grove!
				["provider"] = { "n", 158553 },	-- Flutterby
				["isWeekly"] = true,
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62858, {	-- Return Lost Souls (10 soul version)
				["sourceQuests"] = { 58160 },	-- For Queen and Grove!
				["description"] = "Requires Renown 15.",
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["isWeekly"] = true,
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62859, {	-- Return Lost Souls (15 soul version)
				["sourceQuests"] = { 58160 },	-- For Queen and Grove!
				["description"] = "Requires Renown 24.",
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["isWeekly"] = true,
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
			}),
			q(62860, {	-- Return Lost Souls (20 soul version)
				["sourceQuests"] = { 58104 },	-- Show, Don't Tell
				["description"] = "Requires Renown 32. Depending on the level of your Queen's Conservatory this will reward higher quality spirits. Rank 5 will grant you an Epic Spirit.",
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["isWeekly"] = true,
				["g"] = {
					i(177698, {	-- Untamed Spirit Ardenweald (Uncommon)
						["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
					}),
					i(177699),	-- Divine Untamed Spirit Ardenweald (Rare)
					i(177700),	-- Greater Untamed Spirit Ardenweald (Epic)
					i(178881, {	-- Dutiful Spirit Bastion (Uncommon)
						["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
					}),
					i(178880),	-- Divine Dutiful Spirit (Rare)
					i(178879),	-- Greater Dutiful Spirit (Epic)
					i(178874, {	-- Martial Spirit Maldraxxus (Uncommon)
						["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
					}),
					i(178877),	-- Divine Martial Spirit (Rare)
					i(178878),	-- Greater Martial Spirit (Epic)
					i(178882, {	-- Prideful Spirit Revendreth (Uncommon)
						["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_5 },
					}),
					i(178883),	-- Divine Prideful Spirit (Rare)
					i(178884),	-- Greater Prideful Spirit (Epic)
				},
			}),
			q(65090, {	-- Return More Lost Souls
				["sourceQuests"] = { 62860 },	-- Return Lost Souls (20 soul version)
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["repeatable"] = true,
				["timeline"] = { ADDED_9_1_5 },
			}),
			q(72113, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- Shapes Beyond the Veil
				-- ["sourceQuests"] = {  },	-- Unknown
				["provider"] = { "n", 174209 },	-- Lady Muunn
				["coord"] = { 38.2, 24.4, THE_TRUNK },
				["g"] = {
					i(200960),	-- Seed of Renewed Souls (TOY!)
				},
			})),
			q(62536, {	-- The Lost of Teldrassil
				-- TODO: figure out sourceQuests. This quest just randomly showed up for me after daily reset on a Saturday.
				-- i *think* this requires doing "their new home" and then waiting for a daily (or weekly?) reset.  it was the last campaign quest i did, and the next day (which was a weekly reset day) this quest was there
				["sourceQuests"] = { 59242 },	-- Their New Home
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.6, 39.0, THE_TRUNK },
			}),

			-- currently in order of the chapters / quest sequence, will alphabetize after verifying all

			-- Chapter 1: For Queen and Grove!
			q(61479, {	-- The Boon of Shapes
				["sourceQuests"] = { 61475 },	-- The Heart of the Forest
				["provider"] = { "n", 172431 },	-- Lady Moonberry
				["coord"] = { 49.2, 52.2, ARDENWEALD },
			}),
			q(58104, {	-- Show, Don't Tell
				["sourceQuests"] = { 61479 },	-- The Boon of Shapes
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 49.5, 40.1, THE_TRUNK },
			}),
			q(58157, {	-- Break a Leg
				["sourceQuests"] = { 58104 },	-- Show, Don't Tell
				["provider"] = { "n", 160484 },	-- Featherlight
				["coord"] = { 40.7, 42.7, ARDENWEALD },
				["g"] = {
					title(413, {	-- <Name>, As Themselves
						["collectible"] = false,
					}),
				},
			}),
			q(58158, {	-- The Fourth Wall, er, War
				["sourceQuests"] = { 58157 },	-- Break a Leg
				["provider"] = { "n", 160484 },	-- Featherlight
				["coord"] = { 40.7, 42.7, ARDENWEALD },
			}),
			q(58159, {	-- What's My Motivation?
				["sourceQuests"] = { 58158 },	-- The Fourth Wall, er, War
				["provider"] = { "n", 160484 },	-- Featherlight
				["coord"] = { 40.7, 42.7, ARDENWEALD },
				["g"] = {
					i(180263),	-- Dreamlight Runestag (MOUNT!)
				},
			}),
			q(58160, {	-- For Queen and Grove!
				["sourceQuests"] = { 58159 },	-- What's My Motivation?
				["provider"] = { "n", 160500 },	-- Ysera
				["coord"] = { 42.4, 45.2, ARDENWEALD },
				["altQuests"] = { 63006 },	-- For Queen and Grove! [Covenant Intro Skip]
			}),
			q(63006, {	-- For Queen and Grove! [Covenant Intro Skip]
				["description"] = "Available when skipping Night Fae covenant intro quests.",
				["sourceQuests"] = { 58104 },	-- Show, Don't Tell
				["qg"] = 161509,	-- Lady Moonberry
				["coord"] = { 49.7, 40.1, THE_TRUNK },
				["altQuests"] = { 58160 },	-- For Queen and Grove! [Covenant Intro Skip]
			}),
			q(62883, {	-- Keeper of Great Renown
				["sourceQuests"] = { 58160 },	-- For Queen and Grove!
				["provider"] = { "n", 156634 },	-- Winter Queen
			}),
			q(62884, {	-- The Forest Will Sing Your Name
				["sourceQuests"] = { 62883 },	-- Keeper of Great Renown
				["provider"] = { "n", 176096 },	-- Laurel
				["coord"] = { 34.3, 36.8, THE_TRUNK },
			}),
			q(62697, {	-- A Call to Service
				["sourceQuests"] = { 62884 },	-- The Forest Will Sing Your Name
				["provider"] = { "n", 176096 },	-- Laurel
				["coord"] = { 34.3, 36.8, THE_TRUNK },
			}),
			q(62890, {	-- Who Shapes the Forest
				["sourceQuests"] = { 62697 },	-- A Call to Service
				["provider"] = { "n", 167195 },	-- Blodwyn
				["coord"] = { 53.8, 6.2, THE_TRUNK },
			}),
			q(62891, {	-- Into the Reservoir
				["sourceQuests"] = { 62890 },	-- Who Shapes the Forest
				["provider"] = { "n", 165702 },	-- Zayhad, The Builder
				["coord"] = { 39.7, 55.7, THE_TRUNK },
			}),
			q(62892, {	-- Recover the Lost
				["sourceQuests"] = { 62891 },	-- Into the Reservoir
				["provider"] = { "n", 165702 },	-- Zayhad, The Builder
				["coord"] = { 39.7, 55.7, THE_TRUNK },
			}),
			q(62893, {	-- Do What We Cannot
				["sourceQuests"] = { 62892 },	-- Recover the Lost
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 34.1, 43.6, THE_TRUNK },
			}),
			q(62894, {	-- Flutterback
				["sourceQuests"] = { 62837 },	-- Hopeful News
				["provider"] = { "n", 164079 },	-- Highlord Bolvar Fordragon
				["coord"] = { 40.0, 68.4, ORIBOS },
			}),
			q(62897, {	-- Recovered Souls
				["sourceQuests"] = { 62894 },	-- Flutterback
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 34.1, 43.6, THE_TRUNK },
			}),
			q(62898, {	-- The First New Growth
				["sourceQuests"] = { 62897 },	-- Recovered Souls (technically can be acquired after 62837 Hopeful News, but requires Souls reward from 62897 anyway...)
				["provider"] = { "n", 165702 },	-- Zayhad, The Builder
				["coord"] = { 39.7, 55.7, THE_TRUNK },
			}),
			q(61541, {	-- The Forge of Bonds
				["altQuests"] = { 63008 },	-- The Forge of Bonds
				["sourceQuests"] = { 62898 },	-- The First New Growth
				["provider"] = { "n", 172431 },	-- Lady Moonberry
				["coord"] = { 49.5, 40.0, THE_TRUNK },
			}),
			q(63008, {	-- The Forge of Bonds [Covenant Skip]
				["altQuests"] = { 61541 },	-- The Forge of Bonds
				["sourceQuests"] = { 58160 },	-- For Queen and Grove!
				["provider"] = { "n", 156634 },	-- Winter Queen
				["coord"] = { 51.4, 27.7, THE_CANOPY },
			}),
			q(61542, {	-- The Boon of Binding
				["sourceQuests"] = { 61541 },	-- The Forge of Bonds
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 34.1, 43.6, THE_TRUNK },
			}),
			q(61550, {	-- Strengthening the Bond
				["sourceQuests"] = { 61542 },	-- The Boon of Binding
				["provider"] = { "n", 172677 },	-- Niya
				["coord"] = { 33.7, 45.0, THE_TRUNK },
				["g"] = appendGroups(CONDUIT_GROUP, {
					i(183473),	-- Conflux of Elements
					i(182651),	-- Destructive Reverberations
					i(181539),	-- Discipline of the Grove
					i(182347),	-- Essential Extraction
					i(182129),	-- Fae Fermata
					i(183494),	-- Septic Shock
					i(182335),	-- Spirit Attunement
					i(182964),	-- Soul Eater
					i(182767),	-- The Long Summer
					i(183463),	-- Unnatural Malice
					i(181775),	-- Way of the Fae
					i(183199),	-- Withering Ground
					follower(1265),	-- Niya
				}),
			}),
			q(62900, {	-- A Conduit for Growth
				["sourceQuests"] = { 61550 },	-- Strengthening the Bond
				["provider"] = { "n", 172677 },	-- Niya
				["coord"] = { 33.7, 45.0, THE_TRUNK },
			}),
			q(62899, {	-- The Endless Forest
				["sourceQuests"] = { 62900 },	-- A Conduit for Growth
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 34.1, 43.6, THE_TRUNK },
			}),

			-- Chapter 2: Torghast (almost all quests in this chapter are shared among all covenants and can be found in the Torghast quest file)
			q(63030, {	-- The Highlord Calls
				["sourceQuests"] = { 62899 },	-- The Endless Forest
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 47.4, 36.2, THE_TRUNK },
			}),

			-- Chapter 3: The Night Warrior (Renown 5 required to start)
			q(59179, {	-- Daughter of the Night Warrior (A)
				["sourceQuests"] = { 60272 },	-- The Weak Link
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.9, 38.8, THE_TRUNK },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59246, {	-- Daughter of the Night Warrior (H)
				["sourceQuests"] = { 60272 },	-- The Weak Link
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.9, 38.8, THE_TRUNK },
				["races"] = HORDE_ONLY,
			}),
			q(59181, {	-- Into the Maw
				["sourceQuests"] = {
					59179,	-- Daughter of the Night Warrior (A)
					59246,	-- Daughter of the Night Warrior (H)
				},
				["provider"] = { "n", 164277 },	-- Shandris Feathermoon
				["coord"] = { 39.2, 67.2, ORIBOS },
			}),
			q(60508, {	-- On the Trail
				["sourceQuests"] = { 59181 },	-- Into the Maw
				["provider"] = { "n", 174833 },	-- Shandris Feathermoon
				["coord"] = { 44.3, 41.1, THE_MAW },
			}),
			q(59189, {	-- The Recovery of Tyrande Whisperwind
				["sourceQuests"] = { 60530 },	-- The Sea of Souls
				["provider"] = { "n", 174834 },	-- Shandris Feathermoon
				["coord"] = { 46.8, 41.7, THE_MAW },
				["maps"] = { 1720 },	-- Torghast Scenario
			}),
			q(60530, {	-- The Sea of Souls
				["sourceQuests"] = { 60508 },	-- On the Trail
				["provider"] = { "n", 168929 },	-- Shandris Feathermoon
				["coord"] = { 30.1, 36.4, THE_MAW },
			}),
			q(59242, {	-- Their New Home
				["sourceQuests"] = { 59189 },	-- The Recovery of Tyrande Whisperwind
				["provider"] = { "n", 174834 },	-- Shandris Feathermoon
				["coord"] = { 46.8, 41.7, THE_MAW },
				["g"] = {
					i(175576),	-- Faewoven Raiment
					i(179657),	-- Faewoven Tunic
					i(179765),	-- Oakheart Tunic
					i(179774),	-- Oakheart Vestment
					i(179888),	-- Queensguard Chestplate
					i(181909),	-- Runewarden's Hauberk
					i(181979),	-- Runewarden's Vestment
				},
			}),

			-- Chapter 4: Da Boss (Renown 8 required to start)
			q(59809, {	-- On De Other Side
				["sourceQuests"] = { 59242 },	-- Their New Home
				["description"] = "Requires Renown 8.",
				["provider"] = { "n", 166265 },	-- Mask of Bwonsamdi
				["maps"] = { 1917 },	-- De Other Side (scenario)
				["g"] = {
					i(177904),	-- Deathstone (QI!)
				},
			}),
			q(59811, {	-- Taking Inventory
				["sourceQuests"] = { 59809 },	-- On De Other Side
				["provider"] = { "n", 166281 },	-- Bwonsamdi
				["coord"] = { 50.4, 25.3, 1917 },	-- De Other Side (scenario)
			}),
			q(59812, {	-- Following the Trail
				["sourceQuests"] = { 59811 },	-- Taking Inventory
				["provider"] = { "n", 166265 },	-- Mask of Bwonsamdi
				["g"] = {
					i(180167),	-- Death God Mask (QI!)
				},
			}),
			q(59813, {	-- Minions of Mueh'zala
				["sourceQuests"] = { 59812 },	-- Following the Trail
				["provider"] = { "n", 166265 },	-- Mask of Bwonsamdi
			}),
			q(59815, {	-- Stolen Loa
				["sourceQuests"] = { 59812 },	-- Following the Trail
				["provider"] = { "n", 166265 },	-- Mask of Bwonsamdi
			}),
			q(59817, {	-- Winter Be Comin'
				["sourceQuests"] = {
					59813,	-- Minions of Mueh'zala
					59815,	-- Stolen Loa
				},
				["provider"] = { "n", 166265 },	-- Mask of Bwonsamdi
				["g"] = {
					i(175586),	-- Faewoven Handwraps
					i(179767),	-- Oakheart Armguards
					i(179890),	-- Queensguard Gauntlets
					i(181911),	-- Runewarden's Gloves
				},
			}),
			q(59818, {	-- Gathering The Hunt
				["sourceQuests"] = { 59817 },	-- Winter Be Comin'
				["provider"] = { "n", 156634 },	-- Winter Queen
				["coord"] = { 50.9, 29.4, THE_CANOPY },
			}),
			q(59819, {	-- Cleansing the Forest
				["sourceQuests"] = { 59818 },	-- Gathering The Hunt
				["provider"] = { "n", 167823 },	-- Lady Moonberry
				["coord"] = { 66.6, 55.6, ARDENWEALD },
			}),
			q(59821, {	-- Report to the Queen
				["sourceQuests"] = { 59819 },	-- Cleansing the Forest
				["provider"] = { "n", 167823 },	-- Lady Moonberry
				["coord"] = { 68.4, 65.2, ARDENWEALD },
				["_drop"] = { "g" },	-- make 7 items stop showing up that are not actually rewarded by this quest
			}),

			-- Chapter 5: Night Warrior's Curse (Renown 11 required to start)
			q(58610, {	-- The Speaker of Elune
				["sourceQuests"] = { 59821 },	-- Report to the Queen
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.7, 39.0, THE_TRUNK },
			}),
			q(58647, {	-- Broken Webs
				["sourceQuests"] = { 58610 },	-- The Speaker of Elune
				["provider"] = { "n", 161786 },	-- Qadarin
				["coord"] = { 40.3, 51.2, ARDENWEALD },
			}),
			q(58669, {	-- A Little Pruning
				["sourceQuests"] = { 58610 },	-- The Speaker of Elune
				["provider"] = { "n", 161786 },	-- Qadarin
				["coord"] = { 40.3, 51.2, ARDENWEALD },
			}),
			q(59008, {	-- Spriggan Snares
				["sourceQuests"] = { 58610 },	-- The Speaker of Elune
				["provider"] = { "n", 163385 },	-- Cirrik
				["coord"] = { 39.0, 52.4, ARDENWEALD },
			}),
			q(58704, {	-- The Garden of Night
				["sourceQuests"] = {
					58669,	-- A Little Pruning
					58647,	-- Broken Webs
					59008,	-- Spriggan Snares
				},
				["provider"] = { "n", 161934 },	-- Qadarin
				["g"] = {
					i(175581),	-- Faewoven Sandals
					i(179766),	-- Oakheart Anklewraps
					i(179889),	-- Queensguard Sabatons
					i(181910),	-- Runewarden's Boots
				},
			}),
			q(58871, {	-- Broken Harts
				["sourceQuests"] = { 58704 },	-- The Garden of Night
				["provider"] = { "n", 161785 },	-- Thiernax
				["coord"] = { 39.0, 59.4, ARDENWEALD },
			}),
			q(59725, {	-- Archivist on the Edge
				["sourceQuests"] = { 58871 },	-- Broken Harts
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 44.0, 37.1, THE_TRUNK },
			}),
			q(59063, {	-- Curses!
				["sourceQuests"] = { 59725 },	-- Archivist on the Edge
				["provider"] = { "n", 165867 },	-- Archivist Dreyden
				["coord"] = { 63.6, 22.6, ARDENWEALD },
				["g"] = {
					i(175137),	-- Piece of Shredded Scroll (QI!)
					i(175138),	-- Sealed Scroll of Soul Rot (QI!)
					i(177280),	-- Tattered Binding (QI!)
				},
			}),
			q(59068, {	-- A Secret Never Spoken
				["sourceQuests"] = { 59063 },	-- Curses!
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 44.0, 37.1, THE_TRUNK },
				["g"] = {
					i(175154),	-- A Secret Never Spoken (QI!)
					i(175152),	-- A Slime-Covered Book of Secrets (QI!)
				},
			}),
			q(59070, {	-- A Sacrifice of Anima
				["sourceQuests"] = { 59063 },	-- Curses!
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 44.0, 37.1, THE_TRUNK },
				["g"] = {
					i(175139),	-- Mischief-touched Anima (QI!)
				},
			}),
			q(59069, {	-- A Token of Lost Love
				["sourceQuests"] = { 59063 },	-- Curses!
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.7, 39.0, THE_TRUNK },
				["g"] = {
					i(175149),    -- A Small Carving of Ysera (QI!)
				},
			}),
			q(59071, {	-- Mending a Broken Hart
				["sourceQuests"] = {
					59070,	-- A Sacrifice of Anima
					59068,	-- A Secret Never Spoken
					59069,	-- A Token of Lost Love
				},
				["provider"] = { "n", 161509 },	-- Lady Moonberry
				["coord"] = { 44.0, 37.1, THE_TRUNK },
				["g"] = {
					i(181301),	-- Faewoven Branches
					i(182172),	-- Equine Soul
				},
			}),

			-- Chapter 6: Drust to Drust (Renown 13 required to start)
			q(60898, {	-- The Fate of Ara'lon
				["sourceQuests"] = {
					62560,	-- Growing in Power (can be pre-completed due to covenant skip)
					59071,	-- Mending a Broken Hart
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 158544 },	-- Lord Herne
				["coord"] = { 40.9, 72.4, THE_TRUNK },
			}),
			q(60910, {	-- Masks of Deception
				["sourceQuests"] = { 60898 },	-- The Fate of Ara'lon
				["provider"] = { "n", 170705 },	-- Ara'lon
				["coord"] = { 43.2, 40.1, ARDENWEALD },
				["g"] = {
					i(180462),	-- Mask of Possession (QI!)
				},
			}),
			q(60928, {	-- Blackthorn Captives
				["sourceQuests"] = { 60910 },	-- Masks of Deception
				["provider"] = { "n", 170705 },	-- Ara'lon
				["coord"] = { 43.2, 40.1, ARDENWEALD },
				["g"] = {
					i(180523),	-- Disguise Mask (QI!)
				},
			}),
			q(60934, {	-- Report to Lord Herne
				["sourceQuests"] = { 60928 },	-- Blackthorn Captives
				["provider"] = { "n", 170705 },	-- Ara'lon
				["coord"] = { 41.1, 31.6, ARDENWEALD },
				["g"] = {
					i(180606),	-- Ara'lon's Report (QI!)
					i(175603),	-- Faewoven Cuffs
					i(179772),	-- Oakheart Bracers
					i(179894),	-- Queensguard Vambraces
					i(181916),	-- Runewarden's Armguards
				},
			}),
			q(61061, {	-- Ulfar's Guidance
				["sourceQuests"] = { 60934 },	-- Report to Lord Herne
				["provider"] = { "n", 171138 },	-- Ysera
				["coord"] = { 53.2, 78.3, THE_TRUNK },
			}),
			q(61076, {	-- Into the Flame
				["sourceQuests"] = { 61061 },	-- Ulfar's Guidance
				["provider"] = { "n", 141159 },	-- Ulfar
				["coord"] = { 45.2, 45.8, DRUSTVAR },
				["g"] = {
					i(180625),	-- Imbued Drust Fetish (QI!)
				},
			}),
			q(61102, {	-- Kivarr the Thornspeaker
				["sourceQuests"] = { 61076 },	-- Into the Flame
				["provider"] = { "n", 141159 },	-- Ulfar
				["coord"] = { 45.2, 45.8, DRUSTVAR },
			}),
			q(61113, {	-- Kivarr's Den
				["sourceQuests"] = { 61102 },	-- Kivarr the Thornspeaker
				["provider"] = { "n", 170848 },	-- Lord Herne
				["coord"] = { 50.9, 80.8, THE_TRUNK },
			}),
			q(61701, {	-- Searching the Grove
				["sourceQuests"] = { 61113 },	-- Kivarr's Den
				["provider"] = { "n", 170705 },	-- Ara'lon
				["coord"] = { 43.7, 69.1, ARDENWEALD },
			}),
			q(58773, {	-- The Thornspeaker Captive
				["sourceQuests"] = { 61701 },	-- Searching the Grove
				["provider"] = { "n", 171413 },	-- Kivarr
				["coord"] = { 46.6, 73.1, ARDENWEALD },
				["g"] = {
					i(182639),	-- Gilded Skull Key (QI!)
					i(182641),	-- Lustrous Silver Key (QI!)
					i(180777),	-- Thros-Forged Key (QI!)
				},
			}),
			q(61702, {	-- A Swift Intervention
				["sourceQuests"] = { 58773 },	-- The Thornspeaker Captive
				["provider"] = { "n", 173612 },	-- Nika
				["coord"] = { 46.6, 73.1, ARDENWEALD },
			}),
			q(61143, {	-- Return to the Den
				["sourceQuests"] = { 61702 },	-- A Swift Intervention
				["provider"] = { "n", 171413 },	-- Kivarr
				["coord"] = { 41.3, 74.3, ARDENWEALD },
				["g"] = {
					i(175600),	-- Faewoven Sash
					i(179771),	-- Oakheart Belt
					i(179893),	-- Queensguard Girdle
					i(181915),	-- Runewarden's Buckle
				},
			}),
			q(61703, {	-- Nox Root
				["sourceQuests"] = { 61143 },	-- Return to the Den
				["provider"] = { "n", 171413 },	-- Kivarr
				["coord"] = { 43.7, 69.0, ARDENWEALD },
				["g"] = {
					i(182958),	-- Nox Root (QI!)
				},
			}),
			q(61709, {	-- Witch's Satchel
				["sourceQuests"] = { 61703 },	-- Nox Root
				["provider"] = { "n", 171413 },	-- Kivarr
				["coord"] = { 46.2, 56.5, ARDENWEALD },
				["g"] = {
					i(182963),	-- Witch's Satchel (QI!)
				},
			}),
			q(61710, {	-- The Broken Spear
				["sourceQuests"] = { 61703 },	-- Nox Root
				["provider"] = { "o", 357726 },	-- Broken Spear
				["coord"] = { 33.8, 54.4, ARDENWEALD },
				["g"] = {
					i(182966),	-- Broken Spear (QI!)
				},
			}),
			q(61711, {	-- Ritual of Purification
				["sourceQuests"] = {
					61710,	-- The Broken Spear
					61709,	-- Witch's Satchel
				},
				["provider"] = { "n", 171413 },	-- Kivarr
				["coord"] = { 46.2, 56.5, ARDENWEALD },
			}),
			q(61171, {	-- Unbroken Bonds
				["sourceQuests"] = { 61711 },	-- Ritual of Purification
				["provider"] = { "n", 170848 },	-- Lord Herne
				["coord"] = { 46.2, 56.7, ARDENWEALD },
				["g"] = {
					i(175597),	-- Faewoven Amice
					i(180832),	-- Lord Herne's Report (QI!)
					i(179770),	-- Oakheart Mantle
					i(179892),	-- Queensguard Pauldrons
					i(181914),	-- Runewarden's Spaulders
				},
			}),

			-- Chapter 7: The Horned Hunter (Renown 17 required to start)
			q(58445, {	-- Containing the Night
				["sourceQuests"] = { 61171 },	-- Unbroken Bonds
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.5, 39.1, THE_TRUNK },
			}),
			q(58446, {	-- Tracker Tracking
				["sourceQuests"] = { 58445 },	-- Containing the Night
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.5, 39.1, THE_TRUNK },
			}),
			q(59258, {	-- Home of the Tirnenn
				["sourceQuests"] = { 58446 },	-- Tracker Tracking
				["provider"] = { "n", 164627 },	-- Reldorn
				["coord"] = { 35.3, 51.5, ARDENWEALD },
			}),
			q(58706, {	-- Dressing the Kill
				["sourceQuests"] = { 59258 },	-- Home of the Tirnenn
				["provider"] = { "n", 161353 },	-- Huln Highmountain
				["coord"] = { 30.0, 44.9, ARDENWEALD },
			}),
			q(58447, {	-- Monster Hunting
				["sourceQuests"] = { 58706 },	-- Dressing the Kill
				["provider"] = { "n", 161353 },	-- Huln Highmountain
				["coord"] = { 30.0, 44.9, ARDENWEALD },
				["_drop"] = { "g" },	-- make 4 items stop showing up that are not actually rewarded by this quest
			}),
			q(58449, {	-- Acid Reflux
				["sourceQuests"] = { 58447 },	-- Monster Hunting
				["provider"] = { "n", 165841 },	-- Huln Highmountain
				["coord"] = { 35.3, 51.2, ARDENWEALD },
				["g"] = {
					i(174467),	-- Bulging Digestive Sac (QI!)
					i(174645),	-- Gormherd Branch (QI!)
				},
			}),
			q(58450, {	-- Anima Instincts
				["sourceQuests"] = { 58447 },	-- Monster Hunting
				["provider"] = { "n", 165841 },	-- Huln Highmountain
				["coord"] = { 35.3, 51.2, ARDENWEALD },
				["g"] = {
					i(175753),	-- Life-Hardened Anima (QI!)
				},
			}),
			q(59721, {	-- Becoming the Hunt
				["sourceQuests"] = {
					58449,	-- Acid Reflux
					58450,	-- Anima Instincts
				},
				["provider"] = { "n", 164627 },	-- Reldorn
				["coord"] = { 35.3, 51.5, ARDENWEALD },
			}),
			q(58451, {	-- Voras, The Realm Eater
				["sourceQuests"] = { 59721 },	-- Becoming the Hunt
				["provider"] = { "n", 161353 },	-- Huln Highmountain
				["coord"] = { 24.5, 49.0, ARDENWEALD },
			}),
			q(58452, {	-- Tracking the Shadows
				["sourceQuests"] = { 58451 },	-- Voras, The Realm Eater
				["provider"] = { "n", 161353 },	-- Huln Highmountain
				["coord"] = { 24.5, 49.0, ARDENWEALD },
				["g"] = {
					i(175592),	-- Faewoven Leggings
					i(179769),	-- Oakheart Britches
					i(179891),	-- Queensguard Greaves
					i(181913),	-- Runewarden's Legguards
				},
			}),

			-- Chapter 8: Deal for a Loa (Renown 20 required to start)
			q(59731, {	-- An Expected Guest
				["sourceQuests"] = { 58452 },	-- Tracking the Shadows
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.5, 39.1, THE_TRUNK },
			}),
			q(59732, {	-- Something Extra for the Winter Queen
				["sourceQuests"] = { 59731 },	-- An Expected Guest
				["provider"] = { "n", 165951 },	-- Bwonsamdi
				["coord"] = { 48.4, 52.5, ARDENWEALD },
			}),
			q(59739, {	-- The Problem with Containing a Death Loa
				["sourceQuests"] = { 59732 },	-- Something Extra for the Winter Queen
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.6, 24.7, NAZMIR },
				["g"] = {
					i(180787),	-- Zel'han's Broken Armor (QI!)
				},
			}),
			q(59741, {	-- Dark Mojo for a Dark Loa
				["sourceQuests"] = { 59732 },	-- Something Extra for the Winter Queen
				["provider"] = { "n", 165968 },	-- Hanzabu
				["coord"] = { 39.5, 24.7, NAZMIR },
				["g"] = { i(177818) },	-- Dark Mojo (QI!)
			}),
			q(59742, {	-- Delaying the Other Side
				["sourceQuests"] = { 59732 },	-- Something Extra for the Winter Queen
				["provider"] = { "n", 165968 },	-- Hanzabu
				["coord"] = { 39.5, 24.7, NAZMIR },
			}),
			q(59749, {	-- One Little Whisper
				["sourceQuests"] = {
					59741,	-- Dark Mojo for a Dark Loa
					59742,	-- Delaying the Other Side
					59739,	-- The Problem with Containing a Death Loa
				},
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.6, 24.7, NAZMIR },
				["g"] = {
					i(177817),	-- Voodoo Powder (QI!)
					i(179623),	-- Faewoven Drape
					i(179773),	-- Oakheart Cape
					i(179620),	-- Queensguard Cloak
					i(181877),	-- Runewarden's Greatcloak
				},
			}),
			q(59805, {	-- Maw Manifested
				["sourceQuests"] = { 59749 },	-- One Little Whisper
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.6, 24.7, NAZMIR },
				["g"] = {
					i(177817),	-- Voodoo Powder (QI!)
				},
			}),
			q(59822, {	-- Tracking a Wild God
				["sourceQuests"] = { 59805 },	-- Maw Manifested
				["provider"] = { "n", 171655 },	-- Spirit of Vol'jin
				["coord"] = { 44.8, 40.9, THE_MAW },
				["g"] = {
					i(177817),	-- Voodoo Powder (QI!)
				},
			}),
			q(59824, {	-- Loa Rescue
				["sourceQuests"] = { 59822 },	-- Tracking a Wild God
				["provider"] = { "n", 171806 },	-- Spirit of Vol'jin
				["coord"] = { 41.0, 64.2, THE_MAW },
				["g"] = {
					i(177817),	-- Voodoo Powder (QI!)
				},
			}),
			q(59856, {	-- Rezan, Loa of Kings
				["sourceQuests"] = { 59824 },	-- Loa Rescue
				["provider"] = { "n", 166461 },	-- Spirit of Vol'jin
				["coord"] = { 45.8, 85.0, THE_MAW },
				["g"] = {
					i(177817),	-- Voodoo Powder (QI!)
				},
			}),
			q(59866, {	-- Parting Ways
				["sourceQuests"] = { 59856 },	-- Rezan, Loa of Kings
				["provider"] = { "n", 166461 },	-- Spirit of Vol'jin
				["coord"] = { 45.8, 85.0, THE_MAW },
				["g"] = {
					i(177817),	-- Voodoo Powder (QI!)
					i(175588),	-- Faewoven Cowl
					i(179768),	-- Oakheart Crest
					i(179887),	-- Queensguard Greathelm
					i(181912),	-- Runewarden's Guise
				},
			}),

			-- Chapter 9: Drust and Ashes (Renown 22 required to start)
			q(60189, {	-- We Strike Now
				["sourceQuests"] = { 59866 },	-- Parting Ways
				["provider"] = { "n", 160262 },	-- Ysera
				["coord"] = { 44.5, 39.1, THE_TRUNK },
			}),
			q(60190, {	-- Assault on Darkreach
				["sourceQuests"] = { 60189 },	-- We Strike Now
				["provider"] = { "n", 167686 },	-- Lord Herne
				["coord"] = { 39.1, 63.7, ARDENWEALD },
			}),
			q(60191, {	-- Ingra Drif
				["sourceQuests"] = { 60189 },	-- We Strike Now
				["provider"] = { "n", 172010 },	-- Kivarr
				["coord"] = { 39.0, 63.7, ARDENWEALD },
			}),
			q(60192, {	-- Their Last Line of Defense
				["sourceQuests"] = { 60189 },	-- We Strike Now
				["provider"] = { "n", 167688 },	-- Lady Moonberry
				["coord"] = { 39.1, 63.7, ARDENWEALD },
			}),
			q(60193, {	-- Unmasked
				["sourceQuests"] = {
					60190,	-- Assault on Darkreach
					60191,	-- Ingra Drif
					60192,	-- Their Last Line of Defense
				},
				["provider"] = { "n", 171838 },	-- Lord Herne
				["coord"] = { 35.2, 72.4, ARDENWEALD },
			}),
			q(60194, {	-- The Call of the Hunt
				["sourceQuests"] = { 60193 },	-- Unmasked
				["provider"] = { "n", 171992 },	-- Lady Moonberry
				["coord"] = { 36.2, 69.6, ARDENWEALD },
			}),
			q(60108, {	-- Drust and Ashes
				["sourceQuests"] = { 60194 },	-- The Call of the Hunt
				["provider"] = { "n", 172091 },	-- Lord Herne
				["coord"] = { 39.0, 63.4, ARDENWEALD },
				["maps"] = { 1709 },	-- Ardenweald (scenario)
				["g"] = appendGroups(LFR_WEAPON_GROUP, {
					i(180721),	-- Enchanted Dreamlight Runestag (MOUNT!)
					i(182165),	-- Ardenmoth Soul
				}),
			}),

			------------------------------
			-- Everything past here has not been verified yet in retail

			--[[
			q(61554, {	-- The Play's The Thing
				-- pretty sure this was beta only
				["provider"] = { "n", 164023 },	-- Watcher Vesperbloom
				["coord"] = { 44.6, 56.2, ARDENWEALD },
				["sourceQuests"] = { 61553 },	-- Know Where to Strike
			}),
			-- Return to the Maw
			q(60233, {	-- Souls of the Damned (Ardenweald)
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["sourceQuests"] = { 58160 },	-- For Queen and Grove!
			}),
			q(61508, {	-- Soul Salvation (Ardenweald)
				["provider"] = { "n", 158553 },	-- Flutterby
				["coord"] = { 33.9, 43.5, THE_TRUNK },
				["sourceQuests"] = { 60233 },	-- Souls of the Damned
			}),
			--]]
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NIGHT_FAE,  bubbleDown({ ["customCollect"] = "SL_COV_NFA" }, {
		n(QUESTS, {
			q(63452),	-- triggers when turning in "Return Lost Souls" (spellID 348837 & 348840 & 348843 & 348846)
			q(62745),	-- Triggered after finishing Chapter 1 of Night Fae covenant questline
			q(57559),	-- Triggered after turning in "For Queen and Grove!" (questID 58160) / "A Call to Service" (questID 62695)
			q(62706),	-- Triggered after turning in "For Queen and Grove!" (questID 58160) / "A Call to Service" (questID 62695)
			q(61590),	-- Triggered after first time channeling anima to Glitterfall Basin
			q(62959),	-- Triggered after completing first "Into The Unknown" (questID 62296) (spellID 345586)
			q(62957),	-- Triggered after completing second "Into The Unknown" (questID 60153) (spellID 345585)
			-- q(62959),	-- Triggered after completing third Into The Unknown (questID 62382) (spellID 345586)
			q(62956),	-- Triggered after completing fourth Into The Unknown (questID 62453) (spellID 345584)
			q(62446),	-- Triggered after restoring Falir the Shifting for "A Rare and Unusual Spirit" (questID 62447)
			q(62585),	-- Triggered after restoring Ohm of Meditation for "A Rare and Unusual Spirit" (questID 62603)
			q(62586),	-- Triggered after restoring Lia the Curious
			q(62958),	-- triggered during Marasmius dailies (spellID 345588)
			q(62960),	-- Triggered after "Go Beyond!" (questID 62459) (spellID 345591)
			q(62961),	-- Completed after doing "Go Beyond!" (questID ??) (spellID 345592)
			q(62962),	-- triggered when turning in "Into the Unknown" (questID 62296) (spellID 345590)
			q(62963),	-- triggered when turning in "Go Beyond!" (questID ??) (spellID 345593)
			------ Stay awhile and listen ------
			hqt(64350),	-- Tyrande/Astarii after The Power of Night campaign quest (spellID 356222)
		}),
	})),
})));

for _,g in ipairs({CONDUIT_GROUP,LFR_WEAPON_GROUP}) do
	for	_,t in ipairs(g) do
		t.customCollect = nil;
	end
end