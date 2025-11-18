---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------

root(ROOTS.HiddenQuestTriggers, {

	-- Note!! Here is where we can put all the hidden quest triggers in the game that don't exactly fit anywhere.
	-- When adding a quest trigger be sure to put a description of how it triggered

	-----------------------
	--      CLASSIC      --
	-----------------------
	expansion(EXPANSION.CLASSIC, {
		--	QUESTING / LEVELING
		q(6842),	-- <UNUSED> - completes with 'Umber, Archivist' (questID 6844)
		q(9611),	-- Azuremyst: aa - A - Quest Flag 000 — triggered after healing the NPC/killing the mob before you can pick up "A Hearty Thanks!" on Azuremyst Isle
		q(236),		-- Fueling the Demolishers (auto-completed removed quest)
	}),

	-------------------
	--      TBC      --
	-------------------
	expansion(EXPANSION.TBC, {
		--	QUESTING / LEVELING
		-- #if BEFORE CATA
		-- This got repurposed into an actual quest with Cata.
		q(8329),	-- Warrior Training, Triggered by a Blood Elf Rogue after completing [lq:9392<8325 on Wrath Classic]
		-- #endif
		q(11518),	-- Sunwell Daily Portal Flag
		q(11522),	-- Triggers with Rediscovering Your Roots (11521)
		q(12494),	-- FLAG: Riding Training Advertisement (20)
	}),

	---------------------
	--      WOTLK      --
	---------------------
	expansion(EXPANSION.WRATH, {
		-- Zones
		q(12845),	-- Dalaran teleport crystal flag
		q(12452),	-- Dragonblight - triggers when turning in "The Fate of the Ruby Dragonshrine". duplicate version of a quest during early development
		-- #if BEFORE CATA
		q(14438),	-- Sharing the Land (triggeres with 'Sharing the Land' questID 745)
		q(14439),	-- Journey into Thunder Bluff (triggeres with 'Journey into Thunder Bluff' questID 775)
		-- #endif

		-- Riding
		q(14185),	-- FLAG: Riding Trainer Advertisement (40)
		q(14186),	-- FLAG: Riding Trainer Advertisement (60)
		q(14187),	-- FLAG: Riding Trainer Advertisement (70)
	}),

	--------------------
	--      CATA      --
	--------------------
	expansion(EXPANSION.CATA, {
		-- QUESTING
		q(26151),	-- Dark Letter, human starting zone letter tracker. (This triggered for Crieve when he turned in "Simple Letter"
		q(28347),	-- Coffer of Promise TRACKING QUEST
		q(25071),	-- FLAG - Purple Murloc
		q(28889),	-- Arcane Instructions Tracking Quest
		q(28887),	-- Fire Instructions Tracking Quest
		q(28886),	-- Frost Instructions Tracking Quest
		q(28888),	-- Shadow Instructions Tracking Quest
		q(29378),	-- FLAG - Teleport to Vashj'ir
		q(29379),	-- FLAG - Teleport to Deepholm
		q(29380),	-- FLAG - Teleport to Firelands
		q(29381),	-- FLAG - Teleport to Hyjal
		q(29395),	-- FLAG - Teleport to Uldum
		q(25016),	-- FLAG - Training Complete - Triggered when doing one of lvl 3 class quests in Deathknell
		q(29286),	-- Druid Tree, Stage 2 Tracking
		q(29291),	-- triggered with Peaked Interest 29287
		q(29292),	-- triggered with Peaked Interest 29287
		q(26565),	-- A Furious Catch (REMOVED) — unused version of Orgrimmar Cata fishing daily "A Golden Opportunity"
		-- #if BEFORE 11.0.5
		q(26741),	-- REUSE - triggered after completing "The Hunt" (questID 26340)
		-- #endif
		q(24644),	-- Troll Introduction Complete
		q(13541),	-- Triggered when opening a Maplewood Treasure Chest in Darkshore
	}),

	-------------------
	--      MOP      --
	-------------------
	expansion(EXPANSION.MOP, {

		--	QUESTING / LEVELING / VARIOUS
		q(29698),	-- Tracking Event: Alliance Banner Found
		q(29699),	-- Tracking Event: Alliance Chest Found
		q(29700),	-- Tracking Event: Bodyguard Found
		q(29701),	-- Tracking Event: Journal Found
		q(30564),	-- Tracking Event: Talked to Dog at Farm
		q(30207),	-- Tracking Event: 1st Place
		q(30208),	-- Tracking Event: 2nd Place
		q(30209),	-- Tracking Event: 3rd Place
		q(30210),	-- Tracking Event: 4th Place
		q(30211),	-- Tracking Event: 5th Place
		q(30212),	-- Tracking Event: 6th Place
		q(31960),	-- Tracking Event: Vote #1 Complete
		q(31961),	-- Tracking Event: Vote #2 Complete
		q(31962),	-- Tracking Event: Vote #3 Complete
		q(31963),	-- Tracking Event: Vote #4 Complete
		q(31964),	-- Tracking Event: Vote #5 Complete
		q(31965),	-- Tracking Event: Vote #6 Complete
		q(33900),	-- Tracking Quest: Activated Arkonite 3
		q(33901),	-- Tracking Quest: Activated Arkonite 4
		q(33899),	-- Tracking Quest: Turn on the Holograms

		--	Short-Supply Reward - UNKNOWN TRIGGERS
		qNYI(33602),	-- Short-Supply Reward
		qNYI(33603),	-- Short-Supply Reward
	}),

	-------------------
	--      WOD      --
	-------------------
	expansion(EXPANSION.WOD, {
		--	QUESTING / LEVELING / VARIOUS
		q(35266),	-- Boosted Character - triggered for character that used WoD boost (level 90)
		q(37187),	-- The Dark Portal
		q(37193),	-- The King's Command - autocompleted when "Hero's Call: Jade Forest!" is picked up (questID 49556)
		q(36825),	-- Fate of the Horde - triggered when turning in "Audience with the Warchief" as a demon hunter (questID 40976)

		--	DUNGEONS & RAIDS
		q(37501),	-- Draenor Challenge Mode - Bronze Addition (1st)
		q(37502),	-- Draenor Challenge Mode - Consolation (1st)
		q(37503),	-- Draenor Challenge Mode - Gold Addition (1st)
		q(37504),	-- Draenor Challenge Mode - Silver Addition (1st)

		-- PVP
		q(36146),	-- Cataclysm 84-85
		q(36152),	-- Cataclysm 84-85
		q(38116),	-- Cata/Mop 80-89
		q(38127),	-- Cata/MoP 80-89
		q(38138),	-- Cata/MoP 80-89
		q(38156),	-- Cata/MoP 80-89
		q(38167),	-- Cata/MoP 80-89
		q(38149),	-- Classic 10-19
		q(38160),	-- Classic 10-19
		q(38110),	-- Classic 20-29
		q(38121),	-- Classic 20-29
		q(38132),	-- Classic 20-29
		q(38150),	-- Classic 20-29
		q(38161),	-- Classic 20-29
		q(38111),	-- Classic 30-39
		q(38122),	-- Classic 30-39
		q(38133),	-- Classic 30-39
		q(38151),	-- Classic 30-39
		q(38162),	-- Classic 30-39
		q(38112),	-- Classic 40-49
		q(38123),	-- Classic 40-49
		q(38134),	-- Classic 40-49
		q(38152),	-- Classic 40-49
		q(38163),	-- Classic 40-49
		q(38113),	-- Classic 50-59
		q(38124),	-- Classic 50-59
		q(38135),	-- Classic 50-59
		q(38153),	-- Classic 50-59
		q(38164),	-- Classic 50-59
		q(38118),	-- Legion 100-109 A
		q(38129),	-- Legion 100-109 A
		q(38140),	-- Legion 100-109 A
		q(38158),	-- Legion 100-109 A
		q(38169),	-- Legion 100-109 A
		q(38171),	-- Legion 100-109 A
		q(38172),	-- Legion 100-109 A
		q(38119),	-- Legion 100-109 H
		q(38130),	-- Legion 100-109 H
		q(38141),	-- Legion 100-109 H
		q(38159),	-- Legion 100-109 H
		q(38170),	-- Legion 100-109 H
		q(38173),	-- Legion 100-109 H
		q(38174),	-- Legion 100-109 H
		q(36140),	-- Pandaria 88-90
		q(36148),	-- Pandaria 88-90
		q(38114),	-- TBC 60-69
		q(38125),	-- TBC 60-69
		q(38136),	-- TBC 60-69
		q(38154),	-- TBC 60-69
		q(38165),	-- TBC 60-69
		q(38109),	-- Vanilla 10-19
		q(38120),	-- Vanilla 10-19
		q(38131),	-- Vanilla 10-19
		q(38115),	-- WLK 70-79
		q(38126),	-- WLK 70-79
		q(38137),	-- WLK 70-79
		q(38155),	-- WLK 70-79
		q(38166),	-- WLK 70-79
		q(38117),	-- WOD 90-99
		q(38128),	-- WOD 90-99
		q(38139),	-- WOD 90-99
		q(38157),	-- WOD 90-99
		q(38168),	-- WOD 90-99

		-- ASSAULTS
		q(37646),	-- See New Brightstone, See Wolfed Out Thorn (Garrison Attack?)

		--	Short-Supply Reward - UNKNOWN TRIGGERS
		qNYI(37461),	-- Short-Supply Reward
		qNYI(37463),	-- Short-Supply Reward
		qNYI(37465),	-- Short-Supply Reward
		qNYI(37681),	-- Short-Supply Reward
		qNYI(37682),	-- Short-Supply Reward
		qNYI(37683),	-- Short-Supply Reward
		qNYI(37684),	-- Short-Supply Reward
		qNYI(39398),	-- Short-Supply Reward
		qNYI(39468),	-- Short-Supply Reward
		qNYI(39473),	-- Short-Supply Reward
		qNYI(39474),	-- Short-Supply Reward
		qNYI(39475),	-- Short-Supply Reward
		qNYI(39476),	-- Short-Supply Reward
		qNYI(39477),	-- Short-Supply Reward
		qNYI(39478),	-- Short-Supply Reward
		qNYI(39479),	-- Short-Supply Reward
		qNYI(39480),	-- Short-Supply Reward
		qNYI(39481),	-- Short-Supply Reward
		qNYI(39482),	-- Short-Supply Reward
		qNYI(39483),	-- Short-Supply Reward
		qNYI(39484),	-- Short-Supply Reward
		qNYI(39485),	-- Short-Supply Reward

		-- Tracking Quest - UNKNOWN TRIGGERS
		qNYI(32935),	-- Tracking Quest
		qNYI(37423),	-- Tracking Quest
		qNYI(37424),	-- Tracking Quest
		qNYI(37425),	-- Tracking Quest
		qNYI(37426),	-- Tracking Quest
		qNYI(37427),	-- Tracking Quest
		qNYI(37428),	-- Tracking Quest
		qNYI(37429),	-- Tracking Quest
		qNYI(37430),	-- Tracking Quest
		qNYI(37431),	-- Tracking Quest
		qNYI(37432),	-- Tracking Quest
		qNYI(39727),	-- Tracking Quest
		qNYI(39728),	-- Tracking Quest
		qNYI(39736),	-- Tracking Quest
		qNYI(39737),	-- Tracking Quest
		qNYI(39738),	-- Tracking Quest
		qNYI(39739),	-- Tracking Quest
		qNYI(39740),	-- Tracking Quest
		qNYI(39752),	-- Tracking Quest
		qNYI(39753),	-- Tracking Quest
		qNYI(40416),	-- Tracking Quest
		qNYI(40853),	-- Tracking Quest

		--	???
		q(33964),	-- Arak Flowerpicker
		q(36636),	-- Blueprint Read
		q(36849),	-- Burning Missive
		q(36850),	-- Burning Missive
		q(36851),	-- Burning Missive
		q(36852),	-- Burning Missive
		q(36853),	-- Burning Missive
		q(36854),	-- Burning Missive
		q(36855),	-- Burning Missive
		q(36856),	-- Burning Missive
		q(34580),	-- Draenor Flowerpicker
		q(34581),	-- Draenor Flowerpicker Note Found
		q(34831),	-- Encounter Mushroom
		q(33961),	-- Frostfire Flowerpicker
		q(33966),	-- Gorgrond Flowerpicker
		q(33963),	-- Nagrand Flowerpicker
		q(34872),	-- Prized Repossessions Tracking
		q(34985),	-- Prized Repossessions Tracking
		q(34986),	-- Punching Through Tracking
		q(34873),	-- Punching Through Tracking
		q(33962),	-- Shadowmoon Flowerpicker
		q(34053),	-- SoL Conversation Tracker
		q(34871),	-- Supply Recovery Tracking
		q(34984),	-- Supply Recovery Tracking
		q(33960),	-- Talador Flowerpicker
		q(33965),	-- Tanaan Flowerpicker
		q(39128),	-- Tanaan Vignette
		q(39713),	-- Tracking Quest - Pops immediately on new characters but no other info known. Possibly legendary ring related
	}),

	----------------------
	--      LEGION      --
	----------------------
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(PVP, {
			q(45538),	-- 10v10 Weekly Quest UI
			q(42548),	-- 10v10 #1
			q(42549),	-- 10v10 #2
			q(42550),	-- 10v10 #3
			q(42551),	-- 10v10 #4
			q(44891),	-- 2v2 Weekly Quest
			q(45536),	-- 2v2 Weekly Quest UI
			q(42540),	-- 2v2 #1
			q(42541),	-- 2v2 #2
			q(42542),	-- 2v2 #3
			q(42543),	-- 2v2 #4
			q(44908),	-- 3v3 Weekly Quest
			q(45537),	-- 3v3 Weekly Quest UI
			q(42544),	-- 3v3 #1
			q(42545),	-- 3v3 #2
			q(42546),	-- 3v3 #3
			q(42547),	-- 3v3 #4
			q(44909),	-- RBG Weekly
		}),
		-- Legion start
		q(42741),	-- Legion Expansion Started Tracking Quest
		q(46733, { ["timeline"] = { ADDED_7_2_0 } }),	-- Legion Expansion Started Tracking Quest
		q(40658),	-- Durotar - Tracking Quest - W1 - See Demon Attack ("Demons Among Us" quest)
		q(40768),	-- Orgrimmar - Tracking Quest - W1 - Intro to Illidari Complete - triggers when turning in "Keep Your Friends Close"
		q(40616),	-- Tracking Quest - W1 - Saw Leader Die
		q(40521),	-- Tracking Quest - W1 - Demon Attack Complete (Horde) - triggered after turning in "Demons Among Them"
		q(8237),	-- In the Blink of an Eye - dalaran transported to the broken isles
		q(43806),	-- The Battle for Broken Shore Scenario Skip (A)
		q(44543),	-- The Battle for Broken Shore Scenario Skip (H)
		q(44659),	-- Dalaran - I Skipped The Intro Tracking Quest

		-- Generic Order Hall
		q(45171, { ["timeline"] = { ADDED_7_1_0 } }),	-- 7.1 Class Hall - Special - PVP - PVP Intro Mission - Tracking Quest
		q(47661),	-- [DNT] - tracking quest while doing Demon Hunter quest 41066, The Hunter's Gaze. Also triggers on warrior while on "On the Trail of the Great Worm". Triggered immediately after the broken shore scenario, so probably some kind of daily trigger
		q(47699),	-- [DNT] - tracking quest while doing Demon Hunter quest 41066, The Hunter's Gaze. Also triggers on warrior while on "On the Trail of the Great Worm". Triggered immediately after the broken shore scenario, so probably some kind of daily trigger
		q(44483),	-- Vendor Beckon Trigger - triggers all classes
		q(44484),	-- Vendor Beckon Trigger - triggers all classes
		q(45773, { ["timeline"] = { ADDED_7_2_0 } }),	-- 7.2 Class Hall - Maximillian of Northshire - Aqcuisition - Track Mail Sent

		-- Random -- TODO -Darkal

		q(44295),	-- Tracking Quest - W2 - Spoke to Khadgar
		q(44297),	-- Tracking Quest - W2 - Jaina Gone

		q(48858),	-- Light's Judgment active tracking quest?
		q(48859),	-- Lightforged Warframe active tracking quest?
		q(48860),	-- Fel Heart of Argus active tracking quest?
		q(48579),	-- Shroud of Arcane Echoes active tracking quest?

		q(47133),	-- Rare Mob Daily Bonus. Triggered after killing Doombringer Zar'thoz. Possible killID?

		q(45302),	-- 7.1.5 Class Hall - Brawlers Missions - Has Completed Any Brawlers Mission with Overmax - Tracking Quest - triggered when doing my first brawl for BFA
		q(45311),	-- 7.1.5 Class Hall - Special - Brawlers - Fight 04 - Tracking Quest - completing "I've Got a Strange Feeling About This" mission while unlocking Meatball
		q(45313),	-- 7.1.5 Class Hall - Brawlers - Fight 04 - Overmax Reward Credit - Tracking Quest - same as above

		q(46717),	-- Tracking Quest - got achievement Burning Bridges and looted Qa'pla, Eredun War Order legendary, so one of the two
		q(42189),	-- Fire Mage - Flavor Event 01. Showed Arcanomancer Vridiel in Dalaran the newly acquired Felo'melorne
		q(42192),	-- Fire Mage - Flavor Event 02
		q(42212),	-- Fire Mage - Flavor Event 03
		q(42860),	-- Tracking - God-King Scene - something happened around turning in #38811/39791 that triggered some /yells from God-King Skovald
		q(39017, {	-- Triggered when turning in first DK artifact completion quest (likely triggers after any first artifact quest for DK)
			["name"] = "Flight Path Unlock",
			["sourceQuests"] = {
				40740,	-- The Dead and the Damned [Blood Artifact]*
				38990,	-- The Call of Icecrown [Frost Artifact] TODO: confirm
				40930,	-- Apocalypse [Unholy Artifact] TODO: confirm
			},
			-- Added sourcequests in here since this HQT unlocks the Legion DK Flight Path...
		}),
	})),

	-------------------
	--      BFA      --
	-------------------
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		--	VARIOUS
		q(52758),	-- Silverpine Forest - triggered when taking the bat during "Iterating Upon Success" (spellID 388051)
		q(50419),	-- tracking quest from the 8.1.5 Blacksmithing questling ending with "Therazane's Choice"
		q(53124),	-- Kings' Rest dungeon unlock trigger for alliance
		q(49683),	-- Vol'dun - chose the daggers for Nisha at the start of Vol'dun
		q(47332),	-- Your Next Move - triggers when you pick up your first zone on the scouting map (e.g. Zuldazar as horde)
		q(49766),	-- Your Next Move - triggers when you pick up your first zone on the scouting map (e.g. Zuldazar as horde)
		q(49767),	-- Your Next Move - triggers when you pick up your first zone on the scouting map (e.g. Zuldazar as horde)
		q(51722),	-- triggers when completing "Uniting Kul Tiras" (Alliance WQ unlock).  Completing one triggers all 4 WQ unlock quests (main/alt quests for both Alliance and Horde)
		q(51973),	-- looting chest with resources after Lost Caravan event in Battle for Stormgarde
		q(54526),	-- triggered along with 54636 when looting Gorilla Bot Loot during Vol'dun invasion
		-- q(54777),	-- triggered when turning in #54134, "Many Fine Heroes," vol'dun assault.  had WM on but i'm not sure if that's relevant
		-- q(54315),	-- triggered when turning in #54134, "Many Fine Heroes," vol'dun assault.  had WM off, but i think it was the first time i did the assault on this character
		-- q(54771),	-- triggered when turning in #53701, "A Drust Cause," drustvar assault.  had WM on but i'm not sure if that's relevant
		-- q(54782),	-- triggered when turning in #53711, "A Sound Defense," tiragarde sound assault.  had WM on but i'm not sure if that's relevant
		-- q(54779),	-- triggered when turning in #54138, "Ritual Rampage," zuldazar assault.  had WM on but i'm not sure if that's relevant
		-- q(54323),	-- triggered when turning in #53883, "Shores of Zuldazar," zuldazar assault.  had WM on
		-- q(54780),	-- triggered when turning in #53883, "Shores of Zuldazar," zuldazar assault.  had WM on
		-- q(54314),	-- triggered when turning in #53939, "Breaching Boralus," tiragade sound assault.  had WM on
		-- q(54769),	-- triggered when turning in #53939, "Breaching Boralus," tiragade sound assault.  had WM on
		-- q(54322),	-- triggered when turning in #53885, "Isolated Victory," vol'dun assault.  had WM on
		-- q(54778),	-- triggered when turning in #53885, "Isolated Victory," vol'dun assault.  had WM on
		q(57593),	-- triggered when talking to chromie in CoT during the 2019 anniversary event, before turning in #57249, "A Timely Invitation"
		q(54035),	-- Blessing of the Night Warden unlock chain started
		q(53956),	-- Triggered when turning in "We Are Coming" as alliance. Probably related to darkshore warfront unlock?
		q(49610),	-- looting Adventurer's Society Loot Stash to unlock the Nigel Rifthold pet vendor
		q(49037),	-- triggered after getting achievement The Reining Champion
		q(55494),	-- Torcali quest of the day completed
		q(58881),	-- triggered when i fed the uldum friendly alpaca for the last time (not with the quest that gives the mount afterward, but the final feed)
		q(59072),	-- speaking to Tasha Riley and joining the Council of Chaos in the BRD pet battle dungeon
		-- q(54635),	-- additional version of Mekkatorque's Battle Plans, presumably if you don't pick it up from a mob during "Killing on the Side," but idk how that could happen
		q(53147),	-- Zuldazar - Triggered when turning in "The Zanchuli Council". No idea what the ID is used to track
		q(53532),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Akunda". Makes the loa book available to read in The Great Seal
		q(53534),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Bwonsamdi". Makes the loa book available to read in The Great Seal
		q(53535),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Gonk". Makes the loa book available to read in The Great Seal
		q(53536),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Gral". Makes the loa book available to read in The Great Seal
		q(53537),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Hir'eek". Makes the loa book available to read in The Great Seal
		q(53538),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Jani". Makes the loa book available to read in The Great Seal
		q(53539),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Kimbul". Makes the loa book available to read in The Great Seal
		q(53540),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Krag'wa". Makes the loa book available to read in The Great Seal
		q(53541),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Pa'ku". Makes the loa book available to read in The Great Seal
		q(53542),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Rezan". Makes the loa book available to read in The Great Seal
		q(53543),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Sethraliss". Makes the loa book available to read in The Great Seal
		q(53544),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Shadra". Makes the loa book available to read in The Great Seal
		q(53546),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Torcali". Makes the loa book available to read in The Great Seal
		q(53547),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Torga". Makes the loa book available to read in The Great Seal
		q(53548),	-- Zuldazar - Triggered when picking up "Tales of de Loa: Zandalar". Makes the loa book available to read in The Great Seal
		q(54950),	-- when turning in "The Lord Admiral's Lament" and watching the Jaina cinematic
		q(55610),	-- completing "Spy on Warfang Hold," part of "Spy Versus Spy," quest #55171
		-- q(54326),	-- triggered when turning in #54135, "Romp in the Swamp," had WM off
		-- q(54774),	-- triggered when turning in #54135, "Romp in the Swamp," had WM on
		q(55241),	-- closing the second to last rift while on #55214, "Seam Stress"
		q(55237),	-- closing the last rift while on #55214, "Seam Stress"
		q(50657),	-- not sure if this is part of the Vulpera allied race questline?  i turned in #53907, picked up #53908, learned the "Nomi's Vintage" toy, refreshed (nothing), went and took the portal from the vineyard to shal'aran, and this popped.  it popped immediately when i clicked the portal
		q(52969),	-- Going through the Stormwind Portal to Stormshield while on the WoD timeline in Chromie time

		--	PVP / WAR MODE
		q(53636),	-- Looting a bounty in Stormsong as Horde (all 3 trigger at the same time)
		q(53638),	-- Looting a bounty in Stormsong as Horde
		q(53639),	-- Looting a bounty in Stormsong as Horde
		q(57108),	-- Looting a bounty in Nazjatar as Alliance (all 3 trigger at the same time)
		q(57109),	-- Looting a bounty in Nazjatar as Alliance
		q(57110),	-- Looting a bounty in Nazjatar as Alliance
		q(53409),	-- not sure what triggered this -- i won an epic BG and also capped on conquest for the week
		q(54180),	-- Quest — capping 500 Conquest
		-- all 3 'secret supply chest' quests trigger at once.  possibly for 3 potential chests in the zone?  not sure why horde/alliance would have one shared quest and two different quests, though.
		q(55375),	-- Drustvar Secret Supply Chest (playing as Alliance)
		-- q(54715),	-- Drustvar Secret Supply Chest (playing as Alliance)
		-- q(54717),	-- Nazmir Secret Supply Chest (playing as Alliance)
		q(55387),	-- Nazmir Secret Supply Chest (playing as Alliance)
		q(55388),	-- Stormsong Valley Secret Supply Chest (playing as Alliance)
		-- q(54714),	-- Tiragarde Sound Secret Supply Chest
		q(55347),	-- Tiragarde Sound Secret Supply Chest
		-- q(54718),	-- Vol'dun Secret Supply Chest (playing as Alliance)
		q(55389),	-- Vol'dun Secret Supply Chest (playing as Alliance)
		-- q(54720),	-- Zuldazar Secret Supply Chest (playing as Horde)
		q(55391),	-- Zuldazar Secret Supply Chest (playing as Horde and Alliance)
		q(53640),	-- Zuldazar Secret Supply Chest (as Horde) / Zuldazar, Stormsong Valley (as Alliance), Tiragarde, Nazmir, Vol'dun, Drustvar (as Alliance) (it probably triggers on both factions in all old BfA zones)
		q(55408),	-- looting War Supply Crate in Drustvar on Alliance (not secret chest)
		q(55412),	-- looting War Supply Crate in Vol'dun on Alliance (not secret chest)
		q(55409),	-- looting War Supply Crate in Nazmir on Alliance (not secret chest)
		q(55410),	-- looting War Supply Crate in Stormsong Valley on Alliance (not secret chest)
		q(55411),	-- looting War Supply Crate in Tiragarde Sound on Alliance (not secret chest)
		q(55431),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53349),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53478),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53479),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53480),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53481),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53482),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53483),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53484),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53485),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53486),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53487),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53488),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53489),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53490),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53491),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53492),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53493),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53494),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53495),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(53496),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54061),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54062),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54063),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54064),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54065),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54066),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54067),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54068),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54069),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54070),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54071),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54072),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54073),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54074),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54075),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54076),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54077),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54078),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54079),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54080),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54897),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54898),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54899),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54900),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54901),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54902),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54903),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54904),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54905),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54906),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55432),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55433),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55434),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55435),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55436),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55437),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55438),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55439),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55440),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55441),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55442),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55443),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55444),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55445),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55446),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55447),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55448),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55449),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(55450),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57251),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57252),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57253),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57254),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57255),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57743),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57744),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57745),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57746),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57747),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57748),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57749),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57750),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57751),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57752),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57753),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57754),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57755),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57756),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57757),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57758),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57759),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57760),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57761),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57762),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57763),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57764),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57765),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57768),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(57769),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58339),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58340),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58341),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58342),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58343),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58344),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58345),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58346),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58347),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58348),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(58352),	-- Conquest's Reward — automatically offered when you cap conquest for the week
		q(54931),	-- first Cooking Impossible brawl win of the week? not general brawl victory cause it's 47144 and it still triggered
		q(57064),	-- War Chest Azerite Essence Conflict and Strife (Rank 1)
		q(57065),	-- War Chest Azerite Essence Conflict and Strife (Rank 2)
		q(53565),	-- triggered after completing my first arena win in BFA (possibly season-specific but idk)

		--	TREASURES
		q(54872),	-- Opening a Darkshore chest
		q(54877),	-- Opening a Darkshore chest
		q(54879),	-- Opening a Darkshore chest
		q(54881),	-- Opening a Darkshore chest
		q(47530),	-- ???? [The Necropolis] (completed after soulbound, but not known)
		q(50314),	-- triggered when turning in "Target of Opportunity"
		q(51825),	-- ??? Triggers after turning in "Proudmoore's Parley" in Boralus
		q(51826),	-- ??? Triggers after turning in "Proudmoore's Parley" in Boralus
		q(54991),	-- Khaz'gorian Smithing Hammer - Anvil created

		--	Zones
		--	Drustvar
		q(51851),	-- Triggered after completing "Storming the Manor". Didn't appear to trigger anything specific, so not sure what they're used for
		q(51852),	-- Triggered after completing "Storming the Manor". Didn't appear to trigger anything specific, so not sure what they're used for
		-- q(54318),	-- Triggered immediately after completing "A Drust Cause" invasion in Drustvar as Alliance (first completion on character? WM off specific? it doesn't trigger later in WM)

		--	Stormsong Valley
		-- Various
		q(55626),	-- first kill of yellow Sabertron

		--	Zuldazar
		-- Chests
		q(51363),	-- Weekly m+ chest looted (Horde, probably alliance too?)
		-- Various
		q(55413),	-- War Mode supply drop in Zuldazar
		--	Nazjatar
		--	PVP
		q(57111),	-- Nazjatar Horde supply chest (both triggered simultaneously)

		-- Various
		q(55404),	-- Triggered when interacting with the "Deepflame Campfire" in Mezzamere as alliance, but without picking a follower
		q(57097),	-- ??? Triggered after the cutscene for "Scouting the Palace" in Nazjatar on Alliance
		q(56881),	-- Triggered upon first entry into Nazjatar
		q(56677),	-- Triggered sometime after turning in "Needs of the People", after picking up the dailies, but before leaving Newhome. TODO:  research more (possibly bodyguard dialogue quest?)
		q(56661),	-- Triggered when walking into the "Void Chamber" cave
		q(55604, {["isDaily"]=true}),	-- Triggers after unlocking or making a purchase from Mrrl (Once per day)
		q(56901, {["isDaily"]=true}),	-- Triggers after buying anything from Mrrl's secret trader stock (requires cloak with special stock trait).
		q(57191),	-- Glimmering Chest — Prismatic Manapearls
		q(57192),	-- Glimmering Chest — Prismatic Manapearls
		q(56571),	-- Triggers when completing the Baine Rescue scenario. Probably used as unlock criteria for the Tauren Heritage armor chain

		--	Dungeons
		q(53623),	-- Battle for Azeroth Dungeon Reward Quest
		q(57046),	-- Operaton: Mechagon — triggered upon killing King Mechagon for the first time (Heroic).  Could be from killing the boss or from looting the Azerite Essence

		-- Azerite essences assembled with Aqueous Reliquary
		q(56946),	-- Vitality Redistribution Lattice (Rank 1)
		q(56950),	-- Resonating Elemental Heart (Rank 3)
		q(56956),	-- Mesh of Expanding Vitality (Rank 2)
		q(56957),	-- Grid of Bursting Vitality (Rank 3)
		q(56958),	-- Tempered Azerite Formation (Rank 3)
		q(56945),	-- Tempered Azerite Formation (Rank 3)
		q(56943),	-- Animated Elemental Heart (Rank 1)
		q(56947),	-- Animated Elemental Heart (Rank 1) — this + quest above popped at the same time after assembly.  was my first one, if that matters!

		-- Azerite essences assembled with Encrypted Ny'alothan Text
		q(58527),	-- Replicating Void Droplets (Rank 1 Formless Void)
		q(58528),	-- Burgeoning Void Droplet (Rank 2 Formless Void)
		q(58529),	-- Volatile Void Droplet (Rank 3 Formless Void). Renders the texts unusable.

		-- Azerite essences assembled with Focused Life Anima
		q(62681),	-- Encountered after using Focused Life Anima to create Stabilizing Lens of the Focusing Iris (168622)

		--	Patch 8.3
		q(55349),	-- Triggered shortly after "Network Diagnostics"
		q(56935),	-- Triggered shortly after "Network Diagnostics"
		q(58000),	-- Combining Coalescing Visions 1x
		q(58001),	-- Combining Coalescing Visions 2x
		q(58002),	-- Combining Coalescing Visions 3x
		q(58409),	-- Combining Coalescing Visions 4x
		q(58994),	-- Triggers when you get your first corrupted item. It procs the "Curious Corruption" quest
		q(58815),	-- Triggers when completing the blacktalon agent daily for a zone vision
		q(58085),	-- Triggered upon entering the vision to the Shrine of Seven Stars -- TODO:  verify this. didn't pop up since latest PTR build
		q(59132),	-- probably "Unwavering Resolve" achievement (upgrade cloak to rank 15)

		-- Horrific Visions
		q(58579),	-- looted the Overflowing Azerite Geode (Rank 1)
		--q(57845),	-- looted the Water Dancer's Technique (Rank 2) (Possibly only comes from valley of wisdom?)

		-- N'Zoth assaults
		q(59054),	-- Looting a bounty in Uldum as Alliance (all 4 trigger at the same time)
		q(59055),	-- Looting a bounty in Uldum as Alliance
		q(59056),	-- Looting a bounty in Uldum as Alliance
		q(59057),	-- Looting a bounty in Uldum as Alliance

		-- "Combating the Corruption" completion flags. The IDs appear to be reused and aren't specific to any one mob. Track all mobs until we can make sense of the pattern.
		q(58690),	-- Corrupted Acolyte - Vale of Eternal Blossoms, Corrupted Fleshbeast - Uldum?
		q(58689),	-- Corrupted Doomsayer - Uldum
		q(58691),	-- Corrupted Doomsayer/Bonestripper - Vale of Eternal Blossoms, Corrupted Putrification/Dominator - Uldum
		q(57834),	-- this was listed as Corrupted Bonestripper in Uldum
		q(58688),	-- Corrupted Mind Eater - Uldum
		q(57666),	-- this was listed as "Corrupted Sanity Despoiler" in Uldum

		-- Mechagnome unlock chain
		-- NOTE: these are probably mixed up a bit, but the IDs are definitely trackers
		q(57941),	-- Pegi Cogster talked to
		q(57942),	-- Lanna Statiglow talked to
		q(57939),	-- Quimby Sparklighter talked to
		q(57940),	-- Yergin Galvaquad
		q(57957),	-- Elya Codepunch talked to
		q(57938),	-- Assember Hung talked to

		--	Warfronts
		q(53206),	-- Alliance Arathi Warfront unlock
		q(53220),	-- Horde Arathi Warfront unlock
		q(54410),	-- Horde Darkshore Warfront unlock
	})),

	------------------
	--      SL      --
	------------------
	expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		n(GROUP_FINDER, {
			q(62079),	-- Received weekly Mythic+ Keystone
		}),
		n(PVP, {
			q(62298),	-- Classic 20-49
			q(62299),	-- Classic 20-49
			-- PvP Assassin
			q(63389),	-- Killed and looted Horde Assasin (as Alliance obviously)
			q(63390),	-- Killed and looted Horde Assasin (as Alliance obviously)
			q(63391),	-- Killed and looted Horde Assasin (as Alliance obviously)
		}),

		-- Various tracking quests
		q(62686),	-- triggers when entering a zone with a 'Training' Calling active and your companion spawns (repeatable) (spellID 345018)
		q(62713),	-- triggers when choosing to Skip the SL Storyline. Using this as the source of whether a character is a 'Skip' character
		q(62744),	-- initially chose to quest through SL, then swapped to Threads of Fate
		q(62151),	-- triggered when accepting #62275, "Bastion" for Threads of Fate
		q(62152),	-- triggered when accepting #62278, "Maldraxxus" for Threads of Fate
		q(62153),	-- triggered when accepting #62277, "Ardenweald" for Threads of Fate
		q(62154),	-- triggered when accepting #62279, "Revendreth" for Threads of Fate
		q(60826),	-- first use per day of Unbound Changeling trinket

		-- Swapping covenants
		q(62023),	-- Become a Kyrian (spellID 360992 & 356127)
		q(62708),	-- Become a Kyrian (spellID 360992)
		q(65076),	-- Become a Kyrian / Become a Kyrian Again (spellID 360992 & 360991)
		q(62017),	-- Become a Necrolord (spellID 361033 & 356124)
		q(62711),	-- Become a Necrolord (spellID 361033)
		q(65079),	-- Become a Necrolord / Become a Necrolord Again (spellID 361033 & 361036)
		q(62019),	-- Become a Night Fae (spellID 361041 & 356128)
		q(62710),	-- Become a Night Fae (spellID 361041)
		q(65078),	-- Become a Night Fae / Become a Night Fae Again (spellID 361041 & 361038)
		q(62020),	-- Become a Venthyr (spellID 361039 & 365555 & 356126)
		q(62709),	-- Become a Venthyr (spellID 361039)
		q(65077),	-- Become a Venthyr / Become a Venthyr Again (spellID 361039 & 361037)
		q(65088),	-- Reset ALL Covenant Redemption History (spellID 361094)
		q(62827),	-- Reset ALL Covenant History Kyrian/Necrolord/Night Fae/Venthyr (spellID 344813)
		-- TODO: Figure this out
		q(64782),	-- Joining any Covenant during 'Choosing Your Purpose' (questID 62000) (spellID 359346 & 359347 & 359348 & 359349)
		q(62370),	-- Swapping Cov to NF with NF already R40
		q(62384),	-- Swapping Cov to NF with NF already R40
		q(62923),	-- Swapped to Venthyr from Necrolord at R80? Probably a old hqt
		q(62370),	-- Returning to the Venthyr before hitting rank 80 with anyone gave "Prove Your Worth" which flagged two quests as complete that aren't in ATT
		q(62380),	-- Returning to the Venthyr before hitting rank 80 with anyone gave "Prove Your Worth" which flagged two quests as complete that aren't in ATT

		-- Revendreth
		q(58107),	-- triggered when opening a crypt while on "Atonement Crypt Key"
		q(60703),	-- triggered when looting Pristine Dredbat Fang
		q(61188),	-- Triggered after looting Impressionable Gorger Spawn

		-- Venthyr Covenant
		q(62950),	-- clicking "Activate" after putting "Thrill Seeker" in Nadjia's soulbind tree
		q(63063),	-- looks like an unused version of #63056, "Sanctum Upgrade: Mirror Network"
		q(60300),	-- appears to trigger with every anima conduit
		q(60848),	-- triggered when looting one of the Greater Greedstone treasures
		q(59432),	-- triggered when turning in #59661, "Ember Court Rehearsal"
		q(61438),	-- triggered when turning in #61404, "Ember Court: Tubbins's Tea Party"
		q(59507),	-- triggered when signing Tubbins's Contract
		q(62813),	-- triggered when looting Atonement Crypt Key while on #60236, "RSVP: Cryptkeeper Kassir"
		q(62814),	-- triggered when opening a crypt with the key
		q(59495),	-- when using Contract: Atoning Rituals (59594)

		q(62668),	-- after looting a Dirty Glinting Object -- someone on discord got this when turning in Favor: She Had a Stone Heart, but i did not
		-- q(62502),	-- triggered at the end of Ember Court, before collecting tribute/leaving (week 3)
		q(63454),	-- triggers when turning in "Return Lost Souls" (spellID 348839 & 348842 & 348845 & 348848)
		q(59744),	-- when opening the Battered Chest while on Repair and Restore
		q(62533),	-- when completing 'Sootible Hat: Pink Party Hat' (62556)
		q(62534),	-- when completing 'Sootible Hat: Pink Party Hat' (62556) (2nd time)
		-- q(63354),	-- when completing 'Sootible Hat: Pink Party Hat' (62556)
		q(62531),	-- when completing 'Sootible Hat: Crown of the Righteous' (62559)
		-- q(63356),	-- when completing 'Sootible Hat: Crown of the Righteous' (62559)
		q(61577),	-- triggered when turning in #62174, "A Proper Cover"
		q(62532),	-- think this was from doing the Sootible Hat: Pink Party Hat quest
		-- q(63355),	-- think this was from doing the Sootible Hat: Fae Revel Mask quest (these 2 may be swapped/opposite, they both popped at once)

		-- 9.1 PTR
		q(64274),	-- triggered when logging in on 4/30/21 - ptr.wowhead.com says this is a tracking quest for "NPC #179868 slain (5)" and "Dusklight Matriarch [id #179871] slain."  i couldn't see anything on the map that was attached to this quest ID so idk!!  there IS a WQ up in the maw, but it's 64273, not 64274.  but possibly this is tied to the active status of a maw wq, not sure
		q(64376),	-- tracking quest that automatically accepted when i flew in to Korthia on 5/11/21 - supposedly related to the Darkmaul mount
		q(64536),	-- looting Maldraxxus Larva Shell (300 Catalogued Research)

		-- Unknown?
		q(64655, {["timeline"] = {ADDED_9_1_0}}),	-- unsure precisely what triggers this - it was added late in the PTR cycle and popped originally in Korthia.  popped soon after i logged in on my main on retail
	})),

	------------------
	--      DF      --
	------------------
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(PVP, {
			q(79332, {["timeline"] = {ADDED_10_2_0}, ["repeatable"] = true}),	-- Triggers after winning a Brawl: Battleground Blitz (possibly only when theres an elistment bonus?)
		}),
	})),

	------------------
	--     TWW      --
	------------------
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		hqt(86534),	-- temporary until 11.2.7 to prevent a parser warning due to bad blizz data
	})),

	--------------------
	--   NYI QUESTS   --
	--------------------
	-- NYI VERSIONS OF QUESTS WHICH ARE COMPLETED TOGETHER WITH IMPLEMENTED VERSION OF THESE QUESTS
	-- TEMPORARY SOLUTION AS HQT FOR NOW
	-- SORTED BY ID
	n(SPECIAL, {
		q(909),		-- Baron Aquanis - completed with quest 6922
		q(3366),	-- The Glowing Shard - completed with quest 6981
		q(3911),	-- The Last Element - completed with quest 4641
		q(9030),	-- Anthion's Parting Words - completed with quest 8951, 8952, 8953, 8954, 8955, 8956, 8957, 8958, 8959, 9016, 9017, 9018, 9019, 9020, 9021, 9022, 10496, 10497
		q(9031),	-- Anthion's Parting Words - completed with quest 8951, 8952, 8953, 8954, 8955, 8956, 8957, 8958, 8959, 9016, 9017, 9018, 9019, 9020, 9021, 9022, 10496, 10497
		q(9378),	-- DND FLAG The Dread Citadel - Naxxramas - completed with quest 9121, 9122, 9123
		q(9749),	-- They're Alive! Maybe... - completed with quest 9670
		q(9989),	-- Alien Spirits - completed with quest 10917
		q(10061),	-- The Unyielding - completed with quest 10050
		q(10062),	-- Looking to the Leadership - completed with quest 10057
		q(10088),	-- When This Mine's a-Rockin' - completed with quest 10079
		q(10125),	-- Mission: Disrupt Communications - completed with quest 10144 & 10208
		q(10149),	-- Mission: End All, Be All - completed with quest 10136 & 10400
		q(10207),	-- Forward Base: Reaver's Fall REUSE - completed with quest 10124 & 10143
		q(10214),	-- When This Mine's a-Rockin' - completed with quest 10079
		q(10386),	-- The Fel Reaver Slayer - completed with quest 10382
		q(10387),	-- The Fel Reaver Slayer - completed with quest 10382
		q(10401),	-- Mission: End All, Be All - completed with quest 10136 & 10400
		q(10815),	-- The Journal of Val'zareq: Portends of War - completed with quest 10793
		q(10841),	-- The Vengeful Harbringer - completed with quest 10720
		q(10925),	-- Evil Draws Near - completed with quest 10923
		q(11072),	-- Adversarial Blood - completed with quest 11885
		q(11790),	-- Cultists Among Us - completed with quest 11920
		q(13053),	-- Looking for Survivors - completed with quest 12671
		q(13052),	-- Aerial Surveillance - completed with quest 12696
		q(14411),	-- The Wilds of Feralas - completed with quest 14410 & 26589
		q(14414),	-- The Wilds of Feralas - completed with quest 14410 & 26589
		q(14436),	-- Dwarven Digging - completed with quest 746
		q(14437),	-- Rites of the Earthmother - completed with quest 763 & 23733
		q(14447),	-- Takes One to Know One - completed with quest 13260
		q(14448),	-- Takes One to Know One - completed with quest 13260
		q(14474),	-- Goblin Escape Pods - completed with quest 14001
		q(24521),	-- Report For Tryouts - completed with quest 24567
		q(24716),	-- Returning A-Me 01 - completed with quest 24926
		q(25033),	-- The Red Messenger - completed with quest 24971
		q(25198),	-- Winnoa Pineforest - completed with quest 24807
		q(25305),	-- Never Look Back - completed with quest 25304
		q(25573),	-- Your Underwater Mount (Temp) - completed with quest 25371
		q(25631),	-- Caught Off-Guard - completed with quest 25579 & 25952
		q(25632),	-- Swift Approach - completed with quest 25580 & 25953
		q(25633),	-- An Occupation of Time - completed with quest 25581 & 25954
		q(25634),	-- A Better Vantage - completed with quest 25582 & 25955
		q(25635),	-- Upon the Scene of Battle - completed with quest 25583 & 25956
		q(26178),	-- Planning for the Future - completed with 11960
		q(26379),	-- In Aid of the Refugees - completed with quest 13601
		q(26398),	-- Walk With The Earth Mother - completed with 26397
		q(26756),	-- Nessa Shadowsong - completed with 6344
		q(26757),	-- The Bounty of Teldrassil - completed with 6341
		q(26758),	-- Flight to Auberdine - completed with 6342
		q(26759),	-- Return to Nessa - completed with 6343
		q(26879),	-- Disciples of Naralex - completed with 26878
		q(26893),	-- Blackfathom Deeps - completed with quest 26894
		q(27150),	-- The Menders' Stead - completed with quest 26952
		q(27309),	-- The Grimtotem Plot - completed with quest 27293
		q(27419),	-- Army of the Black Dragon - completed with quest 1168
		q(27861),	-- The Crucible of Carnage: The Bloodeye Bruiser! - completed with quest 27863
		q(27862),	-- The Crucible of Carnage: The Bloodeye Bruiser! - completed with quest 27863
		q(28236),	-- The Lost Brother - completed with quest 28233
		q(29039),	-- Hunting Practice - completed with quest 29038
		q(29051),	-- Cub's First Toy - completed with quest 29040
		q(29052),	-- A Cub's Cravings - completed with quest 29035
		q(29053),	-- 'Borrowing' From the Winterfall - completed with quest 29037
		q(29405),	-- The Lesson of the Iron Staff - completed with quest 30027 & 30033 & 30334 & 30335 & 30336 & 30337 & 30338
		q(29447),	-- A Curious Crystal - completed with quest 29443
		q(29449),	-- An Intriguing Grimoire - completed with quest 29445
		q(29450),	-- A Wondrous Weapon - completed with quest 29446
		q(29454),	-- The Master Strategist - completed with quest 29451
		q(29465),	-- Tools of Divination - completed with quest 29464
		q(29466),	-- Plenty of Plump Frogs - completed with quest 29513
		q(29467),	-- Talkin' Tonks - completed with quest 29511
		q(29468),	-- Baby Needs Two Pair of Shoes - completed with quest 29508
		q(29469),	-- Rearm, Reuse, Recycle - completed with quest 29518
		q(29470),	-- Tan My Hide - completed with quest 29519
		q(29471),	-- Writing the Future - completed with quest 29515
		q(29472),	-- Eyes on the Prizes - completed with quest 29517
		q(29474),	-- Putting Trash to Good Use - completed with quest 29510
		q(29478),	-- A Fizzy Fusion - completed with quest 29506
		q(29479),	-- Herbs for Healing - completed with quest 29514
		q(29480),	-- Banners, Banners Everywhere! - completed with quest 29520
		q(29483),	-- Keeping the Faire Sparkling - completed with quest 29516
		q(29484),	-- Putting the Crunch in the Frog - completed with quest 29509
		q(29485),	-- Fun for the Little Ones - completed with quest 29507
		q(29597),	-- The End of the Exarch - completed with quest 29596
		q(29638),	-- UNUSED - completed with quest 29639 & 29646 & 29647
		q(29673),	-- The Black Morass - completed with quest 10296
		q(29809),	-- Efficient Excavations - completed with quest 28132
		q(29969),	-- Broken Earthen Figurine - completed with quest 28776
		q(29970),	-- Broken Earthen Figurine - completed with quest 28776
		q(30490),	-- Yakity Yak - completed with quest 30587
		q(30596),	-- A Zandalari Troll? - completed with quest 30619 & 30620
		q(30615),	-- A Zandalari Troll? - completed with quest 30619 & 30620
		q(30673),	-- Holed Up - completed with quest 30682
		q(30680),	-- Holed Up - completed with quest 30682
		q(30681),	-- Holed Up - completed with quest 30682
		q(30744),	-- Kota Blend - completed with quest 30825
		q(30765),	-- Regaining Honor - completed with quest 30724
		q(30766),	-- Profiting off of the Past - completed with quest 30595
		q(30817),	-- The Healing of Shen-zin Su - completed with quest 29799
		q(30818),	-- A New Fate - completed with quest 29800
		q(30936),	-- UNUSED - completed with quest 30884
		q(31016),	-- The Lorewalkers - completed with quest 31367 & 31368
		q(31033),	-- Adventurers Wanted: Ragefire Chasm - completed with quest 31034 & 31036 & 31037
		q(31035),	-- Enemies Below - completed with quest 26865 & 26866 & 26867
		q(31129),	-- Fate of the Stormstouts - completed with quest 31076
		q(31148),	-- Novice Elreth - completed with quest 28651
		q(31174),	-- The Dread Vos - completed with quest 31019
		q(31206),	-- The Crucible of Carnage: The Bloodeye Bruiser! - completed with quest 27863
		q(31445),	-- zzOld - completed with quest 31369 & 31370
		q(31469),	-- UNUSED - completed with quest 31311
		q(31485),	-- UNUSED - completed with quest 31281
		q(31530),	-- Mission: The Hozen Dozen - completed with quest 31529
		q(31806),	-- Test Quest - completed with quest 31802
		q(31877),	-- The Inkmasters of the Arboretum - completed with quest 31876
		q(32105),	-- Pristine Monument Ledger - completed with quest 31805
		q(32107),	-- Flying Tiger Gourami - completed with quest 31443
		q(32125),	-- Don't Try So Hard - DEPRECATED - completed with quest 32235
		q(32196),	-- A Kind of Magic - DEPRECATED - completed with quest 32143
		q(32341),	-- Demonstrate Your Power - completed with quest 32340
		q(32516),	-- The Bloodletter - completed with quest 32495 & 32530
		q(32534),	-- The Skumblade Threat - completed with quest 32204 & 32535
		q(33071),	-- The Call of War - completed with quest 39691
		q(33073),	-- [NOTUSED]Vignette: Ancient Saltsnap Turtle - completed with quest 33070
		q(33079),	-- The Demons Among Us - Alliance - completed with quest 40593 & 40607
		q(33139),	-- Secrets Lost, Forever? - completed with quest 33021
		q(33264),	-- A Proper Burial - completed with quest 33125
		q(33267),	-- [Deprecated] - completed with quest 33461
		q(33380),	-- REUSE - completed with quest 33622
		q(33407),	-- REUSE - completed with quest 33622
		q(33684),	-- The Inkmasters of the Arboretum - completed with quest 31876
		q(33707),	-- Demons Among Us - Horde - completed with quest 40593 & 40607
		q(33914),	-- Gut Guttra - completed with quest 33132
		q(33923),	-- Demons? In Auchindoun? - completed with quest 33917
		q(33974),	-- Dying Wish - completed with quest 33973
		q(34426),	-- Yrel - completed with quest 34478 & 34427
		q(34435),	-- Find Ga'nar - completed with quest 34434 & 34740
		q(34438),	-- Regarding Enormous Tanks - completed with quest 34958
		q(34506),	-- Bonus Objective: Kill Grimfrost Ogres - completed with quest 33145
		q(34565),	-- Tearing Up Talador - completed with quest 34898
		q(34570),	-- REUSE - completed with quest 34154 & 34564
		q(34734),	-- The Loyalty of Olin Umberhide - completed with quest 34729
		q(34817),	-- Altar Altercation - completed with quest 34423
		q(35251),	-- The Bounty of Bladespire - completed with quest 33657
		q(35340),	-- What Happened Here? - completed with quest 35339
		q(35387),	-- Through the Nether - completed with quest 35085
		q(35388),	-- The Void March - completed with quest 35086
		q(35389),	-- Silence the Call - completed with quest 35084
		q(35390),	-- The Shadow Over Oshu'gun - completed with quest 35088
		q(35391),	-- Disrupt The Rituals - completed with quest 35083
		q(35392),	-- The Nether Approaches - completed with quest 35087
		q(35431),	-- The Best Poison - completed with quest 35205
		q(35653),	-- Wood is Wood - completed with quest 36368 & 35505
		q(36061),	-- [Deprecated] Ogron Boss - completed with quest 37511
		q(36079),	-- A Hero's Welcome - completed with quest 34575
		q(36461),	-- Locating the Lapidarist - completed with quest 36352
		q(36501),	-- Iron Horde Invasion - completed with quest 36498
		q(36569),	-- Unruly Visitors - completed with quest 36483
		q(36570),	-- Unruly Visitors - completed with quest 36483
		q(36635),	-- Your First Work Order - completed with quest 35168 & 37569
		q(36796),	-- The Flock's Revenge - completed with quest 36790
		q(36859),	-- Deprecated - completed with quest 36590
		q(37185),	-- A Personal Summons - completed with quest 28790 & 28825
		q(37186),	-- The Art of War - completed with quest 29611 & 29612
		q(37189),	-- A Personal Summons - completed with quest 28825
		q(37190),	-- Iron Horde Invasion - completed with quest 36499
		q(37196),	-- Iron Horde Invasion - completed with quest 36498
		q(37441),	-- Solanian's Belongings - completed with quest 37443
		q(37564),	-- Your First Blacksmithing Work Order - completed with quest 35168 & 37569
		q(37667),	-- Building for Professions - completed with quest 36100 & 37669
		q(37933),	-- Uncovering the Artifact Fragments - completed with quest 36133 & possibly also 36198
		q(38008),	-- The Road of Glory - completed with quest 36125 & 36227
		q(38305),	-- Cenarius, Keeper of the Grove - completed with quest 40122
		q(38713),	-- The Crusade Calls - completed with quest 38710
		q(39058),	-- Critters of Draenor - completed with quest 38299 & 38300
		q(39127),	-- Beyond the Wall - completed with quest 31386 & 31388
		q(39189),	-- Warchief's Command: Nagrand! - completed with quest 9957 & 9960 & 9961 & 39182 & 39188
		q(39396),	-- NOT USED - completed with quest 39394 & 38463
		q(39692),	-- The Call of War - completed with quest 39691
		q(39978),	-- Meet the Recruits - completed with quest 32715
		q(41226),	-- Breaking Out - completed with quest 38672
		q(41858),	-- No Monk Left Behind - completed with quest 41852
		q(41873),	-- The Mead Master - completed with quest 41038
		q(41891),	-- Tainted Growth - completed with quest 38684
		q(45405),	-- Breaching the Sanctum - completed with quest 44719
		q(46081),	-- Leather to Legendary - completed with quest 46074
		q(46176),	-- The Archmage Accosted - completed with quest 44924
		q(49059),	-- The Bones of Xibala - completed with quest 47257
		q(49563),	-- Warchief's Command: Frostfire Ridge! - completed with quest 49545
		q(49769),	-- Wreckage of the Cataclysm - completed with quest 50331
	}),

	-------------------------------
	--  UNKNOWN / NYI / UNSORTED --
	-------------------------------
	n(QUESTS, {	-- Quests
		q(13807),	-- FLAG: Tournament Invitation
		q(38995),	-- Unused
		q(54740),	-- [DNT] REUSE ME
		q(57917),	-- [DNT] Test - JAM
		q(8274),	-- Test Kill Quest - triggered after The Conquest Pit: Final Showdown (12431)
		q(7069),	-- Unused
		q(8458),	-- Unused
		q(24797),	-- REUSE
		q(46807),	-- [UNUSED]
		q(40596),	-- FLAG - Azsuna - Timothy Jones - (UNUSED)
		q(40595),	-- FLAG - Dalaran - Timothy Jones - (UNUSED)
		q(47495),	-- Insatiable Appetite [UNUSED]
		q(39044),	-- Unused
		--q(50690),	-- Unused - Alex: TWW quest in Hallowfall
		q(54781),	-- UNUSED - Alex: unflagged with 91938 when I fly into area with Stormmarion Assault in Midnight alpha (spellID 1248080)
		q(37812),	-- UNUSED: Test Race: 1 Marker
		q(38845),	-- Unused
		--q(59038),	-- Got suddenly appeared. Same time as I was chatting. We finished Temple of Jade Serpent, lvl 16, 22, 46 (I'm the 46). Goblin in group with Vulpera Party Sync enabled
		--q(63389),	-- Person in Errors doesnt really remember
		--q(63390),	-- Person in Errors doesnt really remember
		--q(63391),	-- Person in Errors doesnt really remember
		--q(54324),	-- Triggered in BfA
		--q(54317),	-- BfA Alliance Stormsong "Invasion"
		--q(62521),	-- unknown tracking
		--q(62571),	-- Flying in Maldraxxus
		--q(62397),	-- Unknown

		--	PVP quests
		q(47954),	-- Tracking Quest (Triggered when using the "Surviving Kalimdor" toy to unlock flightpaths)
		q(47956),	-- Tracking Quest (triggered when using "To Modernize the Provisioning of Azeroth" toy to unlock EK flight paths)
		q(50659),	-- Silithus - talk to Zidormi to phase into the past version of the map
		q(49813),	-- Adventure Calls (lvl 60) - can trigger prior to level 60 if you accept a quest from the warboard
		q(49860),	-- Adventure Calls (lvl 60) - can trigger prior to level 60 if you accept a quest from the warboard
		q(42871),	-- Tome of Illusions - Azeroth
		q(42873),	-- Tome of Illusions - Outland
		q(42874),	-- Tome of Illusions - Northrend
		q(42875),	-- Tome of Illusions - Cataclysm
		q(42876),	-- Tome of Illusions - Elemental Lords
		q(42877),	-- Tome of Illusions - Pandaria
		q(42878),	-- Tome of Illusions - Secrets of the Shado-Pan
		q(42879),	-- Tome of Illusions - Draenor
		q(45435),	-- First Win of the Day (Random BG)
		q(47144),	-- First Win of the Day (BG Brawl)
		q(45432),	-- First Win of the Day (2v2)
		q(45436),	-- First Win of the Day (Skirmish)
		q(45433),	-- First Win of the Day (3v3)
		q(45434),	-- First Win of the Day (10v10)
		q(49847),	-- Selected Pandaria at level 80 Special Duty Assignment" on horde
		q(57668),	-- Triggering when using a portal to Orgrimmar as Horde/to Ironforge as Alliance after Dec 25th during the Feast of Winter Veil 2019/2021/2024
		--- (seems to trigger only the first time you go there that day). Possibly used to determine loot eligibility?
		q(31990),	-- seems to be some account wide version of Audrey Burnhep quest, triggers on login

		-- Events/Holidays
		q(11320),	-- [NYI] Now this is Ram Racing... Almost. (Brewfest)
		q(11937),	-- FLAG - all torch return quests are complete. Marked as no longer available on Wowhead but triggered for me when I returned all 4 torches first time on new char. It doesn't reset yearly though cause I didn't get it on my main
		q(47465),	-- Bonus roll on Azuregos World boss during WoW 15th anniversary in 2019
		q(47464),	-- Bonus roll on Kazzak World boss during WoW 15th anniversary in 2019
		q(47466),	-- Bonus roll on Emeriss during anniversary event
		q(28997),	-- triggered together with 28961, Surwich Candy Bucket
	}),
});
