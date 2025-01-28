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
		q(8329),-- Warrior Training, Triggered by a Blood Elf Rogue after completing [lq:9392<8325 on Wrath Classic]
		-- #endif
		q(11518),	-- Sunwell Daily Portal Flag
		q(11522),	-- Triggers with Rediscovering Your Roots (11521)
		q(12494),	-- FLAG: Riding Training Advertisement (20)
	}),

	---------------------
	--      WOTLK      --
	---------------------
	expansion(EXPANSION.WRATH, {
		--	DUNGEONS & RAIDS
		q(24887),	-- LFGDungeons - Burning Crusade - Normal Random - 1st
		q(24895),	-- LFGDungeons - Burning Crusade - Normal Random - Nth

		-- Zones
		q(12845),	-- Dalaran teleport crystal flag
		q(13700),	-- Argent Tournament - Alliance Champion Marker
		q(13701),	-- Argent Tournament - Horde Champion Marker
		q(13686),	-- Alliance Tournament Eligibility Marker
		q(13687),	-- Horde Tournament Eligibility Marker
		q(12485),	-- Howling Fjord - triggers during "The Echo of Ymiron" when you see the RP between two vrykul in Wyrmskull Village
		q(12452),	-- Dragonblight - triggers when turning in "The Fate of the Ruby Dragonshrine". duplicate version of a quest during early development
		q(12693),	-- Sholazar Basin - Wolvar Faction Choice Tracker
		q(12694),	-- Sholazar Basin - Oracle Faction Choice Tracker
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
		q(29592),	-- Caster Legendary BREADCRUMB TRACKER
		q(29286),	-- Druid Tree, Stage 2 Tracking
		q(29291),	-- triggered with Peaked Interest 29287
		q(29292),	-- triggered with Peaked Interest 29287
		q(26565),	-- A Furious Catch (REMOVED) — unused version of Orgrimmar Cata fishing daily "A Golden Opportunity"
		q(25829),	-- Mount Hyjal - goldrinn hub complete
		q(27872),	-- Mount Hyjal - tortolla hub complete
		q(27873),	-- Mount Hyjal - aviana hub complete
		q(28106),	-- Twilight Highlands - triggers when the Grim Batol gates are broken open during "If The Key Fits"
		q(26119),	-- Vashj'ir - FLAG - Claim Our Stake Launched
		q(26415),	-- Questflag for Captain's Log — while on #26246, "Captain's Log" in Deepholm
		q(27079),	-- Twilight Gate Tracking — blowing up the gate during #26861, "Block the Gates" in Deepholm
		q(27080),	-- Twilight Gate Tracking — blowing up elemental during #26861, "Block the Gates" in Deepholm
		q(36587),	-- Twilight Gate Tracking — blowing up elemental during #26861, "Block the Gates" in Deepholm
		q(14114),	-- Kezan - The New You tracking event. Triggers after you complete "The New You"
		q(14139),	-- Kezan - Phase 1 complete. Triggers after turning in "Do it Yourself"
		q(14158),	-- Kezan - Phase 6 complete. Triggers when quest "447" becomes available
		q(26705),	-- Lost Isles - It's a Town-In-A-Box tracking event. Triggers when you use the plunger to spawn the town
		q(26902),	-- Lost Isles - Get Back to Town accepted tracking flag. Triggers the attack on town-in-a-box
		q(28846),	-- Lost Isles - Repel the Paratroopers accepted tracking flag
		q(25226),	-- Lost Isles - Kill Chip Endale tracking flag
		q(25245),	-- Lost Isles - Kill Candy Cane tracking flag
		-- #if BEFORE 11.0.5
		q(26741),	-- REUSE - triggered after completing "The Hunt" (questID 26340)
		-- #endif
		q(27224),	-- Andorhal Phase Flag — Western Plaguelands — triggers during "The Depravity of the Forsaken"
		q(25040),	-- FLAG - Worgen Attacked — Tirisfal Glades — attacked by a worgen during "Darkhound Pounding" to trigger the "Escaped From Gilneas" quest
		q(26136),	-- FLAG - Rigor Mortis Removed. Triggered on a fresh lvl 1 warlock undead on login
		q(24644),	-- Troll Introduction Complete
	}),

	-------------------
	--      MOP      --
	-------------------
	expansion(EXPANSION.MOP, {
		-- Operation: Shieldwall / Dominance Offensive campaign
		q(32357),	-- Tracking Event: Event Complete - triggeres after watching the RP after turning in "Heart of the Alliance" (questID 32316)
		q(32356),	-- Tracking Event: Ambassadors Summoned - triggeres  "Heart of the Alliance" completion
		q(32395),	-- Tracking Event: Saw Avartu - triggered while on "The Divine Bell," part of the Operation: Shieldwall campaign (at the end of the quest before killing Avartu)
		q(32339),	-- Rebuilding the Mallet (Tracker) - triggered after turning in The Head and The Harmonic Ointment (The Handle was turned in earlier, but presumably requires all 3), part of the Operation: Shieldwall campaign
		q(32365),	-- Tracking Event: Epilogue Complete - triggered after turning in "The Silence" and watching the RP, part of the Operation: Shieldwall campaign.  didn't go off until I left the area and turned in another quest (which is a daily that doesn't normally have any additional tracking quests attached, so i know it was from the final campaign quest)
		q(32361),	-- triggered after turning in #32352, "A Gathering Storm," part of the Dominance Offensive campaign
		q(32364),	-- triggered after turning in #32448, "Ties with the Past," part of the Dominance Offensive campaign
		q(32437),	-- Tracking Event: Saw Sarannha 1 - triggered at the end of "The Divine Bell," part of the Dominance Offensive campaign
		q(32438),	-- Tracking Event: Saw Sarannha 2 - triggered at the end of "The Divine Bell," part of the Dominance Offensive campaign

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
		q(32112),	-- FLAG - Been to Fight Club - completing first fight
		q(32113),	-- FLAG - Been to Fight Club Today
		q(32444),	-- FLAG - Earned Brawler Title (Weekly)
		q(32725),	-- Warlock Green Fire Questline - Reached Kanrethad
		q(32666),	-- Warlock Green Fire Questline - Reached Kanrethad

		--	DUNGEONS & RAIDS
		q(31614),	-- LFGDungeons - Mists - Heroic Random - 1st
		q(31615),	-- LFGDungeons - Mists - Heroic Random - Nth
		q(31274),	-- LFGDungeons - Mists - Raid Finder - 1st
		q(31275),	-- LFGDungeons - Mists - Raid Finder - Nth
		q(32097),	-- Short-Supply Reward
		q(33233),	-- Short-Supply Reward

		-- SCENARIOS
		q(32817),	-- Complete "Loyalty" Scenario - triggeres when turning in "The King and the Council"
		q(32818),	-- Complete "The Dark Heart of Pandaria" Scenario - triggeres when turning in "The Warchief and the Darkness"
		q(32898),	-- Daily Scenario Random (1st) (Mists)
		q(32899),	-- Daily Scenario Random (Nth) (Mists)
		q(32897),	-- LFGDungeons - Mists - Scenario - Heroic Daily - 1st/Nth
		q(32873),	-- LFGDungeons - Mists - Scenario - Heroic Random - 1st
		q(32874),	-- LFGDungeons - Mists - Scenario - Heroic Random - Nth
		q(32893),	-- LFGDungeons - Mists - Scenario - Heroic Random - 1st Bonus
		q(32894),	-- LFGDungeons - Mists - Scenario - Heroic Random - Nth Bonus
		q(31616),	-- LFGDungeons - Mists - Scenario - Normal Random - 1st
		q(31617),	-- LFGDungeons - Mists - Scenario - Normal Random - Nth
		q(31987),	-- LFGDungeons - Theramore Launch Event

		-- PROVING GROUNDS
		q(33089),	-- FLAG - Proving Grounds - Damage Bronze
		q(33091),	-- FLAG - Proving Grounds - Damage Gold
		q(33090),	-- FLAG - Proving Grounds - Damage Silver
		q(33095),	-- FLAG - Proving Grounds - Healer Bronze
		q(33097),	-- FLAG - Proving Grounds - Healer Gold
		q(33096),	-- FLAG - Proving Grounds - Healer Silver
		q(33092),	-- FLAG - Proving Grounds - Tank Bronze
		q(33094),	-- FLAG - Proving Grounds - Tank Gold
		q(33093),	-- FLAG - Proving Grounds - Tank Silver

		--	Short-Supply Reward - UNKNOWN TRIGGERS
		qNYI(33602),	-- Short-Supply Reward
		qNYI(33603),	-- Short-Supply Reward

		-- Wanderer's Festival
		q(55163),	-- Throw a lantern into the water
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
		q(36145),	-- LFGDungeons - Cataclysm - Dungeon Normal 1st
		q(36151),	-- LFGDungeons - Cataclysm - Dungeon Normal Nth
		q(40829),	-- LFGDungeons - Draenor 6.2 - Raid Finder - 1st
		q(37333),	-- LFGDungeons - Draenor - Heroic Random - 1st
		q(37334),	-- LFGDungeons - Draenor - Heroic Random - Nth
		q(37335),	-- LFGDungeons - Draenor - Normal Random - 1st
		q(37336),	-- LFGDungeons - Draenor - Normal Random - Nth
		q(37505),	-- LFGDungeons - Draenor - Raid Finder - 1st
		q(37506),	-- LFGDungeons - Draenor - Raid Finder - Nth
		q(36143),	-- LFGDungeons - Lich King - Dungeon Normal 1st
		q(36149),	-- LFGDungeons - Lich King - Dungeon Normal Nth
		q(31618),	-- LFGDungeons - Mists - Normal Random - 1st
		q(31619),	-- LFGDungeons - Mists - Normal Random - Nth
		q(36147),	-- LFGDungeons - Pandaria - Dungeon Normal 1st
		q(36139),	-- LFGDungeons - Pandaria - Dungeon Normal Nth
		q(40395),	-- LFGDungeons - Timewalking "Heroic" Random - Nth
		q(36144),	-- LFG WLK 75-80
		q(36150),	-- LFG WLK 75-80
		q(37648),	-- Short-Supply Reward
		q(35963),	-- Warlords Heroic Dungeon Reward Quest - triggered at the end of Mythic Grimrail Depot
		q(36277),	-- Warlords Max Level Dungeon Bonus Reward
		q(35962),	-- Warlords Max Level Dungeon Reward Quest - triggered at the end of Normal Grimrail Depot

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
		q(36534),	-- Garrison Max-level Choice Tracker: (GROUP) Talador Shattrath City, West (When picking up Assault on the Heart of Shattrath on Horde character)
		q(36547),	-- Garrison Max-level Choice Tracker: (GROUP) Talador Shattrath City, West (When picking up Assault on the Heart of Shattrath on Horde character)
		q(36663),	-- Garrison Max-level Choice Tracker: ANY CHOICE MADE (When picking up Assault on the Heart of Shattrath on Horde character)
		q(36664),	-- Garrison Max-level Choice Tracker: ANY CHOICE MADE (When picking up Assault on the Heart of Shattrath on Alliance character)
		q(36537),	-- Garrison Max-level Choice Tracker: Spires Shadowmoon Cliffs
		q(36558),	-- Garrison Max-level Choice Tracker: Spires Shadowmoon Cliffs
		q(36532),	-- Garrison Max-level Choice Tracker: (GROUP) Gorgrond Blackrock Foundry
		q(36545),	-- Garrison Max-level Choice Tracker: (GROUP) Gorgrond Blackrock Foundry
		q(36527),	-- Garrison Max-level Choice Tracker: Frostfire Bloodmaul Compound
		q(36549),	-- Garrison Max-level Choice Tracker: Frostfire Bloodmaul Compound
		q(36528),	-- Garrison Max-level Choice Tracker: Shadowmoon Darktide Roost
		q(36555),	-- Garrison Max-level Choice Tracker: Shadowmoon Darktide Roost
		q(36533),	-- Garrison Max-level Choice Tracker: Gorgrond Primal Forest
		q(36552),	-- Garrison Max-level Choice Tracker: Gorgrond Primal Forest
		q(36531),	-- Garrison Max-level Choice Tracker: Shadowmoon Sanctum of Othaar
		q(36556),	-- Garrison Max-level Choice Tracker: Shadowmoon Sanctum of Othaar
		q(36539),	-- Garrison Max-level Choice Tracker: Spires Mushroom Swamp
		q(36557),	-- Garrison Max-level Choice Tracker: Spires Mushroom Swamp
		q(36540),	-- Garrison Max-level Choice Tracker: Nagrand Broken Precipice
		q(36553),	-- Garrison Max-level Choice Tracker: Nagrand Broken Precipice
		q(36541),	-- Garrison Max-level Choice Tracker: Nagrand Mok'gol Watchpost
		q(36554),	-- Garrison Max-level Choice Tracker: Nagrand Mok'gol Watchpost
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
		n(GROUP_FINDER, {
			q(41710),	-- Legion 110 A
			q(41712),	-- Legion 110 A
			q(41714),	-- Legion 110 A
			q(41716),	-- Legion 110 A
			q(41718),	-- Legion 110 A
			q(41720),	-- Legion 110 A
			q(41721),	-- Legion 110 A
			q(42457),	-- Legion 110 A
			q(42458),	-- Legion 110 A
			q(42462),	-- Legion 110 A
			q(42464),	-- Legion 110 A
			q(42466),	-- Legion 110 A
			q(42467),	-- Legion 110 A
			q(42468),	-- Legion 110 A
			q(42469),	-- Legion 110 A
			q(42470),	-- Legion 110 A
			q(43497),	-- Legion 110 A
			q(43498),	-- Legion 110 A
			q(44435),	-- Legion 110 Dungeon Reward Quest
			q(41711),	-- Legion 110 H
			q(41713),	-- Legion 110 H
			q(41715),	-- Legion 110 H
			q(41717),	-- Legion 110 H
			q(41719),	-- Legion 110 H
			q(41722),	-- Legion 110 H
			q(41723),	-- Legion 110 H
			q(42459),	-- Legion 110 H
			q(42460),	-- Legion 110 H
			q(42463),	-- Legion 110 H
			q(42465),	-- Legion 110 H
			q(42471),	-- Legion 110 H
			q(42472),	-- Legion 110 H
			q(42473),	-- Legion 110 H
			q(42474),	-- Legion 110 H
			q(42475),	-- Legion 110 H
			q(43499),	-- Legion 110 H
			q(43500),	-- Legion 110 H
			q(44437),	-- Legion Dungeon Reward Quest
			q(45533),	-- Legion Dungeon Reward Quest
			q(42915),	-- LFGDungeons - Legion - Dungeon Heroic - 1st
			q(42916),	-- LFGDungeons - Legion - Dungeon Heroic - Nth
			q(42912),	-- LFGDungeons - Legion - Dungeon Normal - 1st
			q(42913),	-- LFGDungeons - Legion - Dungeon Normal - Nth
			q(42897),	-- LFGDungeons - Legion - Heroic Random - 1st
			q(42899),	-- LFGDungeons - Legion - Heroic Random - Nth
			q(42901),	-- LFGDungeons - Legion - Normal Random - 1st
			q(42903),	-- LFGDungeons - Legion - Normal Random - Nth
			q(42904),	-- LFGDungeons - Legion - Raid Finder - 1st
			q(42905),	-- LFGDungeons - Legion - Raid Finder - Nth
			q(42554),	-- WOD 100 A
			q(42555),	-- WOD 100 A
			q(42561),	-- WOD 100 A
			q(42562),	-- WOD 100 A
			q(42563),	-- WOD 100 A
			q(42564),	-- WOD 100 A
			q(42565),	-- WOD 100 A
			q(42552),	-- WOD 100 H
			q(42553),	-- WOD 100 H
			q(42556),	-- WOD 100 H
			q(42557),	-- WOD 100 H
			q(42558),	-- WOD 100 H
			q(42559),	-- WOD 100 H
			q(42560),	-- WOD 100 H
		}),
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
		n(FACTIONS, {
			q(46794),	-- Paragon of the Court
			q(46796),	-- Paragon of Highmountain
			q(46797),	-- Paragon of the Dreamweavers
			q(46798),	-- Paragon of the Valarjar
			q(46799),	-- Paragon of the Nightfallen
			q(46800),	-- Paragon of the Wardens
			q(46802),	-- Paragon of the Legionfall Armies
			q(48973, {["timeline"] = {ADDED_7_3_0}}),	-- Paragon of Argussian Reach
			q(48974, {["timeline"] = {ADDED_7_3_0}}),	-- Paragon of the Army of the Light
		}),
		-- Legion start
		q(42741),	-- Legion Expansion Started Tracking Quest
		q(46733),	-- Legion Expansion Started Tracking Quest
		q(42646),	-- triggered after getting Extra Thick Mojo in Durotar when on the Legion intro quest To Be Prepared
		q(42647),	-- triggered after getting Extra Thick Mojo in Durotar when on the Legion intro quest To Be Prepared
		q(42648),	-- triggered after getting Extra Thick Mojo in Durotar when on the Legion intro quest To Be Prepared
		q(40658),	-- Durotar - Tracking Quest - W1 - See Demon Attack ("Demons Among Us" quest)
		q(40768),	-- Orgrimmar - Tracking Quest - W1 - Intro to Illidari Complete - triggers when turning in "Keep Your Friends Close"
		q(40616),	-- Tracking Quest - W1 - Saw Leader Die
		q(40521),	-- Tracking Quest - W1 - Demon Attack Complete (Horde) - triggered after turning in "Demons Among Them"
		q(41306),	-- The Fallen Lion. Triggers with regular "The Fallen Lion" 40517
		q(8237),	-- In the Blink of an Eye - dalaran transported to the broken isles
		q(43806),	-- The Battle for Broken Shore Scenario Skip (A)
		q(44543),	-- The Battle for Broken Shore Scenario Skip (H)
		q(44659),	-- Dalaran - I Skipped The Intro Tracking Quest

		-- Generic Order Hall
		q(38894),	-- Founded Garrison - founded the order hall
		q(43837),	-- Tracking Quest: Tutorial - Combat Ally Unlocked
		q(44296),	-- Tracking Quest: Finished Rise, Champions - triggers after recruiting your first follower(s)
		q(43900),	-- Tracking Quest: All - Troop A Enabled - completed first tutorial mission
		q(43901),	-- Tracking Quest: All - Troop B Enabled - completed second tutorial mission
		q(43433),	-- Tracking Quest: Tutorial - Troops Built
		q(42115),	-- Tracking Quest: Chapter 1 completed - triggers when you complete the quest that gets your first order hall upgrade
		q(42116),	-- Tracking Quest: Chapter 2 Completed - triggers after completing your first order hall campaign effort
		q(42117),	-- Tracking Quest: Chapter 3 Completed - triggers after completing the first dungeon quest from your order hall leader - order hall bracers unlock
		q(42118),	-- Tracking Quest: Chapter 4 Completed - triggers after completing order hall campaign
		q(45171),	-- 7.1 Class Hall - Special - PVP - PVP Intro Mission - Tracking Quest
		q(47661),	-- [DNT] - tracking quest while doing Demon Hunter quest 41066, The Hunter's Gaze. Also triggers on warrior while on "On the Trail of the Great Worm". Triggered immediately after the broken shore scenario, so probably some kind of daily trigger
		q(47699),	-- [DNT] - tracking quest while doing Demon Hunter quest 41066, The Hunter's Gaze. Also triggers on warrior while on "On the Trail of the Great Worm". Triggered immediately after the broken shore scenario, so probably some kind of daily trigger
		q(44483),	-- Vendor Beckon Trigger - triggers all classes
		q(44484),	-- Vendor Beckon Trigger - triggers all classes
		q(45773),	-- 7.2 Class Hall - Maximillian of Northshire - Aqcuisition - Track Mail Sent
		q(43510),	-- Seal of Fate: Class Hall - weekly quest, various sources

		-- Random -- TODO -Darkal
		q(43463),	-- Ashes of a Fallen Crusader Tracking Quest - Looting Charred Locket from Ashes of a Fallen Crusader
		q(43464),	-- Talking to Alaina Hearthsong
		q(43465),	-- Looting Alaina's Bonnet

		q(44295),	-- Tracking Quest - W2 - Spoke to Khadgar
		q(44297),	-- Tracking Quest - W2 - Jaina Gone

		q(48858),	-- Light's Judgment active tracking quest?
		q(48859),	-- Lightforged Warframe active tracking quest?
		q(48860),	-- Fel Heart of Argus active tracking quest?
		q(48579),	-- Shroud of Arcane Echoes active tracking quest?

		q(47133),	-- Rare Mob Daily Bonus. Triggered after killing Doombringer Zar'thoz. Possible killID?
		q(44455),	-- Downfall tracking - in Suramar, possibly tied to a Demon Hunter artifact?

		q(45302),	-- 7.1.5 Class Hall - Brawlers Missions - Has Completed Any Brawlers Mission with Overmax - Tracking Quest - triggered when doing my first brawl for BFA
		q(45311),	-- 7.1.5 Class Hall - Special - Brawlers - Fight 04 - Tracking Quest - completing "I've Got a Strange Feeling About This" mission while unlocking Meatball
		q(45313),	-- 7.1.5 Class Hall - Brawlers - Fight 04 - Overmax Reward Credit - Tracking Quest - same as above

		q(46717),	-- Tracking Quest - got achievement Burning Bridges and looted Qa'pla, Eredun War Order legendary, so one of the two
		q(42189),	-- Fire Mage - Flavor Event 01. Showed Arcanomancer Vridiel in Dalaran the newly acquired Felo'melorne
		q(42192),	-- Fire Mage - Flavor Event 02
		q(42212),	-- Fire Mage - Flavor Event 03
		q(42860),	-- Tracking - God-King Scene - something happened around turning in #38811/39791 that triggered some /yells from God-King Skovald
		q(39017, {	-- Triggered when turning in first DK artifact completion quest (likely triggers after any first artifact quest for DK)
			-- Added sourcequests in here since this HQT unlocks the Legion DK Flight Path...
			["name"] = "Flight Path Unlock",
			["sourceQuests"] = {
				40740,	-- The Dead and the Damned [Blood Artifact]*
				38990,	-- The Call of Icecrown [Frost Artifact] TODO: confirm
				40930,	-- Apocalypse [Unholy Artifact] TODO: confirm
			},
		}),

		-- Balance of Power questline -- TODO -Darkal
		q(43511),	-- Kalec Arrives - triggered when turning in "The Power Within" at Azurewing Repose (starting Balance of Power)
		q(43775),	-- Kalec Arrives - triggered when completing Seeking the Valkyra (40603) in the Balance of Power questline
		q(40627),	-- Triggers after looting heart for Halls of Valor: Odyn's Blessing (40615) in the Balance of Power questline
		q(43529),	-- Triggered when turning in Preparing to Move (43898) in the Balance of Power questline

		--	Treasures -- TODO -Darkal
		q(40601),	-- 7.0 Highmountain - Vignette - Pinerock Basin - Highmountain Beastmaster See Treasure (JLW) - looting treasure after Arru
		q(40389),	-- creating Rocfeather Skyhorn Kite
		-- Eredath
		q(49264),	-- opening a Void-Seeped Cache in Eredath
		q(49022),	-- It's clearing the rubble in front of "Forgotten Legion Supplies" (object id: 277204)
		-- Antoran Wastes
		q(48613),	-- clearing the rubble in front of "Eredar Treasure Cache" (object id: 276223)
		q(48742),	-- clearing the rubble in front of "Students Surprising Surplus" (object id: 276225)
		q(48746),	-- clearing the rubble in front of "Void Tinged Chest" (object id: 276226)
		q(48741),	-- clearing the rubble in front of "Chest of Ill-Gotten Gains" (object: 276224)
		-- Krokuun
		q(48876),	-- jumping on the rubble in front of "Krokul Emergency Cache" (object id: 276490)
		q(48877),	-- I'm guessing for clearing the rubble in front of "Legion Power Chest" (object id: 276489)
		q(48878),	-- clearing rubble for "Lost Krokul Chest" (object id: 276491)
	})),

	-------------------
	--      BFA      --
	-------------------
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(GROUP_FINDER, {
			q(53379),	-- BFA 120 E
			q(53380),	-- BFA 120 E
			q(53381),	-- BFA 120 E
			q(53382),	-- BFA 120 E
			q(53383),	-- BFA 120 E
			q(53391),	-- BFA 120 E
			q(53392),	-- BFA 120 E
			q(53393),	-- BFA 120 E
			q(53394),	-- BFA 120 E
			q(53395),	-- BFA 120 E
			q(53396),	-- BFA 120 E
			q(53397),	-- BFA 120 E
			q(53398),	-- BFA 120 E
			q(53399),	-- BFA 120 E
			q(53400),	-- BFA 120 E
			q(53401),	-- BFA 120 E
			q(53402),	-- BFA 120 E
			q(53403),	-- BFA 120 E
			q(53404),	-- BFA 120 E
			q(53554),	-- BFA 120 E
			q(53555),	-- BFA 120 E
			q(53556),	-- BFA 120 E
			q(53557),	-- BFA 120 E
			q(53558),	-- BFA 120 E
			q(53731),	-- Legion 110 A
			q(53732),	-- Legion 110 A
			q(53733),	-- Legion 110 A
			q(53727),	-- Legion 110 H
			q(53728),	-- Legion 110 H
			q(53729),	-- Legion 110 H
			q(53730),	-- Legion 110 H
			q(53374),	-- BFA 111-119 E
			q(53375),	-- BFA 111-119 E
			q(53376),	-- BFA 111-119 E
			q(53377),	-- BFA 111-119 E
			q(53378),	-- BFA 111-119 E
			q(53388),	-- BFA 111-119 E
			q(53389),	-- BFA 111-119 E
			q(53390),	-- BFA 111-119 E
			q(53559),	-- BFA 111-119 E
			q(53560),	-- BFA 111-119 E
			q(53561),	-- BFA 111-119 E
			q(53562),	-- BFA 111-119 E
			q(53563),	-- BFA 111-119 E
			q(53339),	-- LFG - BFA - Island Expedition - Heroic Win - Nth
			q(53340),	-- LFG - BFA - Island Expedition - Mythic Win - Nth
			q(51838),	-- LFG - BFA - Island Expedition - Normal Win - Nth
			q(53341),	-- LFG - BFA - Island Expedition - PvP Win - Nth
			q(50627),	-- LFGDungeons - BFA - Heroic Random - 1st
			q(50628),	-- LFGDungeons - BFA - Heroic Random - Nth
			q(50626),	-- LFGDungeons - BFA - Normal Random - 1st
			q(50625),	-- LFGDungeons - BFA - Normal Random - Nth
			q(52051),	-- LFGDungeons - BFA - Raid Finder - 1st
			q(52052),	-- LFGDungeons - BFA - Raid Finder - Nth
			q(53641),	-- LFGDungeons - BFA - Stromgarde (Arathi)
		}),
		--	VARIOUS
		q(52758),	-- Silverpine Forest - triggered when taking the bat during "Iterating Upon Success" (spellID 388051)
		q(47703),	-- triggered while on #47631, "Rendezvous with the Libation"
		q(50225),	-- first kill of Ogmot the Mad
		q(50465),	-- triggered with #49950, "Blood Purification"
		q(50419),	-- tracking quest from the 8.1.5 Blacksmithing questling ending with "Therazane's Choice"
		q(53470),	-- Vol'dun - Alliance - landed in Vol'Dun while doing the war campaign. First zone landing
		q(51242),	-- Vol'dun - Alliance - planted the Alliance banner
		q(51396),	-- Vol'dun - Alliance - watched Vorrik place the first keystone on the pedestal in the Sanctuary of the Devoted
		q(53384),	-- Zuldazar - Alliance - war campaign trigger in Castaway Encampment. Probably a zone phase controller
		q(53124),	-- Kings' Rest dungeon unlock trigger for alliance
		q(47698),	-- Nazmir - Ticker is summoned
		q(49294),	-- Nazmir - triggers when Hanzabu talks about the Zo'bal shrine
		q(48779),	-- Nazmir - triggers after activating all the spirits in Zo'bal during "Spiritual Restoration"
		q(48781),	-- Nazmir - Hir'eek is summoned in Zalamar
		q(49683),	-- Vol'dun - chose the daggers for Nisha at the start of Vol'dun
		q(47332),	-- Your Next Move - triggers when you pick up your first zone on the scouting map (e.g. Zuldazar as horde)
		q(49766),	-- Your Next Move - triggers when you pick up your first zone on the scouting map (e.g. Zuldazar as horde)
		q(49767),	-- Your Next Move - triggers when you pick up your first zone on the scouting map (e.g. Zuldazar as horde)
		q(52781),	-- Triggers when speaking with Zidormi in Arathi Highlands to travel back in time
		q(54411),	-- triggers when speaking with Zidormi in Darkshore to travel back in time (spellID 395734)
		q(58013),	-- Alliance war campaign, triggers when speaking to Anduin while on "This Ain't Mine"
		-- 58013 triggered randomly during a Black Empire assault in uldum
		-- also triggered when looting the "Grimoire of the Other Side" as horde during "Spirits' belongings"
		-- also triggers when repairing the mirror by Charred Ramparts for the Venthyr mirror repair dailies...
		-- 58013 ALSO triggered after my first time killing Honey Smasher, but that also popped for me while doing the Alliance war campaign "This Ain't Mine."  so wtf lol
		-- also triggered while killing mobs for Dog Bone's Bone in Maldraxxus (05/11/22)
		-- 58013 triggered while killing first pack of the mobs in Freehold (02/01/25)
		q(51722),	-- triggers when completing "Uniting Kul Tiras" (Alliance WQ unlock).  Completing one triggers all 4 WQ unlock quests (main/alt quests for both Alliance and Horde)
		q(52212),	-- Battle for Stormgarde - triggered after defeating Rokhan on Heroic difficulty
		q(51973),	-- looting chest with resources after Lost Caravan event in Battle for Stormgarde
		q(57244),	-- triggered when turning in #55618, "The Heart Forge"
		q(54526),	-- triggered along with 54636 when looting Gorilla Bot Loot during Vol'dun invasion
		q(54777),	-- triggered when turning in #54134, "Many Fine Heroes," vol'dun assault.  had WM on but i'm not sure if that's relevant
		q(54315),	-- triggered when turning in #54134, "Many Fine Heroes," vol'dun assault.  had WM off, but i think it was the first time i did the assault on this character
		q(54771),	-- triggered when turning in #53701, "A Drust Cause," drustvar assault.  had WM on but i'm not sure if that's relevant
		q(54782),	-- triggered when turning in #53711, "A Sound Defense," tiragarde sound assault.  had WM on but i'm not sure if that's relevant
		q(54779),	-- triggered when turning in #54138, "Ritual Rampage," zuldazar assault.  had WM on but i'm not sure if that's relevant
		q(54323),	-- triggered when turning in #53883, "Shores of Zuldazar," zuldazar assault.  had WM on
		q(54780),	-- triggered when turning in #53883, "Shores of Zuldazar," zuldazar assault.  had WM on
		q(54314),	-- triggered when turning in #53939, "Breaching Boralus," tiragade sound assault.  had WM on
		q(54769),	-- triggered when turning in #53939, "Breaching Boralus," tiragade sound assault.  had WM on
		q(54322),	-- triggered when turning in #53885, "Isolated Victory," vol'dun assault.  had WM on
		q(54778),	-- triggered when turning in #53885, "Isolated Victory," vol'dun assault.  had WM on
		q(54772),	-- triggered when turning in #54137, "In Every Dark Corner".
		q(57593),	-- triggered when talking to chromie in CoT during the 2019 anniversary event, before turning in #57249, "A Timely Invitation"
		q(54035),	-- Blessing of the Night Warden unlock chain started
		q(53956),	-- Triggered when turning in "We Are Coming" as alliance. Probably related to darkshore warfront unlock?
		q(49610),	-- looting Adventurer's Society Loot Stash to unlock the Nigel Rifthold pet vendor
		q(49037),	-- triggered after getting achievement The Reining Champion
		q(55494),	-- Torcali quest of the day completed
		q(58881),	-- triggered when i fed the uldum friendly alpaca for the last time (not with the quest that gives the mount afterward, but the final feed)
		q(59072),	-- speaking to Tasha Riley and joining the Council of Chaos in the BRD pet battle dungeon
		q(47866),	-- triggered after step 8 of Lucid Nightmare secret
		q(53123),	-- triggered when turning in #53121, "Siege of Boralus," while on Horde War Campaign
		q(52193),	-- triggered when turning in #52186, "The Bulk of the Guard," while on Horde War Campaign
		q(54635),	-- additional version of Mekkatorque's Battle Plans, presumably if you don't pick it up from a mob during "Killing on the Side," but idk how that could happen
		q(58417),	-- triggered when starting the mission "Casting the Bait" while on "Under False Colors" during the Horde War Campaign
		q(55135),	-- triggered after finishing the mission "Casting the Bait" during the Horde War Campaign
		q(53964),	-- triggered when turning in #51445, "Thros, the Blighted Lands"
		q(54704),	-- War Campaign - triggered when turning in "Time for War"
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
		q(54326),	-- triggered when turning in #54135, "Romp in the Swamp," had WM off
		q(54774),	-- triggered when turning in #54135, "Romp in the Swamp," had WM on
		q(55241),	-- closing the second to last rift while on #55214, "Seam Stress"
		q(55237),	-- closing the last rift while on #55214, "Seam Stress"
		q(50657),	-- not sure if this is part of the Vulpera allied race questline?  i turned in #53907, picked up #53908, learned the "Nomi's Vintage" toy, refreshed (nothing), went and took the portal from the vineyard to shal'aran, and this popped.  it popped immediately when i clicked the portal
		q(54705),	-- Using 7th Legion Scouting Map
		q(52969),	-- Going through the Stormwind Portal to Stormshield while on the WoD timeline in Chromie time
		--q(55464),	-- Triggered with Tandred Proudmoore conversation?

		-- Paragon
		q(54610),	-- Paragon of the Tortollan Seekers
		q(54611),	-- Paragon of the Champions of Azeroth
		q(54618),	-- Paragon of the 7th Legion
		q(54626),	-- Paragon of the Honorbound
		q(54627),	-- Paragon of the Order of Embers
		q(54628),	-- Paragon of the Storm's Wake
		q(54629),	-- Paragon of the Proudmoore Admiralty
		q(54630),	-- Paragon of Talanji's Expedition
		q(54631),	-- Paragon of the Voldunai
		q(54632),	-- Paragon of the Zandalari Empire

		--	HONEYBACK HIVE
		q(55906),	-- triggers when pulling out Seabreeze Bumblebee or Bumbles next to Barry at 69.1, 64.2 in Stormsong Valley
		q(55904),	-- triggers when arriving at the hive at 62.9, 26.5 in Stormsong Valley
		q(56104),	-- triggers when feeding Thin Jelly to Honeyback Hive Mother
		q(56105),	-- triggers after Barry dances with Honeyback Hive Mother and you can enter the cave
		q(57704),	-- triggered shortly after 56105 when I entered the cave
		q(56735),	-- triggers after going through Barry's initial dialogue after entering the cave
		q(57528),	-- triggers after feeding first Thin Jelly to Nascent Harvester
		q(57707),	-- triggered shortly after 57528
		q(56413),	-- seemed to trigger when Lush Flower Bed summoned Honeyback Usurper (on a kill when i had not interacted with the bee to start the event) -- rare/daily event?  also popped again specifically when i interacted with the bee (npcID 155069) to summon it at 57.1, 51.2.  so maybe just "you're in the area when the event starts," or something?  ETA: ALSO TRIGGERS WHILE ENGAGED WITH HONEY SMASHER.  wtf is this quest!!!!!
		q(57726),	-- triggers on Honey Smasher kill together with 57674 so putting it here
		--	( 57.1, 51.2 )	-- looting honey triggered 56170, 56414, 57702, 57703
		q(56170),	-- \
		q(56414),	--	\	all 4 triggered at the same time after i looted the jelly at the end of the Lush Flower Bed event.  appears to be repeatable
		q(57702),	--	/
		q(57703),	-- /
		q(56113),	-- triggered after Honeyback Harvester event that got to round 23 or 24
		q(57700),	-- triggered after Honeyback Harvester event that got to round 23 or 24
		q(56114),	-- triggered after Honeyback Harvester event that completed round 29
		q(57699),	-- triggered after Honeyback Harvester event that completed round 29
		q(56101),	-- triggered after Honeyback Harvester event that completed round 40
		q(57698),	-- triggered after Honeyback Harvester event that completed round 40
		q(56171),	-- not sure -- i had just done a Honeyback Harvester event and Gurg the Hivethief spawned but ran away because there wasn't enough DPS to kill him.  looted the jelly after the event, then ran to turn in since i was closeby.  fed the bee ~13 - 14 Thin Jelly (brought me to 1700 Friendly) and ran out of the cave and saw this and 57701 pop in chat.
		q(57701),	-- same as above
		q(56107),	-- when nascent bee changed into Juvenile Harvester
		q(56879),	-- when Juvenile Harvester changed into Honeyback Harvester (max bee friendship)

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
		q(54715),	-- Drustvar Secret Supply Chest (playing as Alliance)
		q(54717),	-- Nazmir Secret Supply Chest (playing as Alliance)
		q(55387),	-- Nazmir Secret Supply Chest (playing as Alliance)
		q(55388),	-- Stormsong Valley Secret Supply Chest (playing as Alliance)
		q(54714),	-- Tiragarde Sound Secret Supply Chest
		q(55347),	-- Tiragarde Sound Secret Supply Chest
		q(54718),	-- Vol'dun Secret Supply Chest (playing as Alliance)
		q(55389),	-- Vol'dun Secret Supply Chest (playing as Alliance)
		q(54720),	-- Zuldazar Secret Supply Chest (playing as Horde)
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

		--	WORLD BOSSES
		q(52997),	-- Azurethos, The Winged Typhoon Kill ID
		q(52267),	-- Azurethos, The Winged Typhoon Bonus Roll
		q(53002),	-- Doom's Howl Kill ID
		q(52273),	-- Doom's Howl Bonus Roll
		q(53000),	-- Dunegorger Kraulok Kill ID
		q(52265),	-- Dunegorger Kraulok Bonus Roll
		q(52999),	-- Hailstone Construct Kill ID
		q(52268),	-- Hailstone Construct Bonus Roll
		q(54862),	-- Ivus the Decayed Kill ID
		q(54864),	-- Ivus the Decayed Bonus Roll
		q(54861),	-- Ivus the Forest Lord Kill ID
		q(54865),	-- Ivus the Forest Lord Bonus Roll
		q(52998),	-- Ji'arak Kill ID
		q(52264),	-- Ji'arak Bonus Roll
		q(52996),	-- T'zane Kill ID
		q(52263),	-- T'zane Bonus Roll
		q(53001),	-- The Lion's Roar Kill ID
		q(52274),	-- The Lion's Roar Bonus Roll
		q(56058),	-- Ulmath, the Soulbinder Kill ID
		q(56900),	-- Ulmath, the Soulbinder Bonus Roll
		q(52995),	-- Warbringer Yenajz Kill ID
		q(52266),	-- Warbringer Yenajz Bonus Roll
		q(56055),	-- Wekemara Kill ID
		q(56899),	-- Wekemara Bonus Roll

		--	RARES
		q(52000),	-- Matron Morana killID
		q(52002),	-- Soul Goliath killID
		q(51999),	-- Stone Golem killID
		q(53612),	-- Pest Remover Mk. II killID
		q(50480),	-- Underlord Xerxiz killID
		q(53624),	-- Zeritarj killID

		--	TREASURES
		q(13541),	-- Triggered when opening a Maplewood Treasure Chest in Darkshore
		q(54872),	-- Opening a Darkshore chest
		q(54877),	-- Opening a Darkshore chest
		q(54879),	-- Opening a Darkshore chest
		q(54881),	-- Opening a Darkshore chest
		q(49695, {	-- immediately after channeling on the drum finishes during "A Tribute For Death"
			["isWorldQuest"] = true, -- haunted HQT that shows in /attwq
		}),
		q(52294),	-- triggers with Krag'wa after accepting "The Last Witch Doctor of Krag'wa"
		q(47530),	-- ???? [The Necropolis] (completed after soulbound, but not known)
		q(47531),	-- triggered when turning in "Krag'wa the Terrible"
		q(50314),	-- triggered when turning in "Target of Opportunity"
		q(51825),	-- ??? Triggers after turning in "Proudmoore's Parley" in Boralus
		q(51826),	-- ??? Triggers after turning in "Proudmoore's Parley" in Boralus
		q(54991),	-- Khaz'gorian Smithing Hammer - Anvil created
		q(51094),	-- for clicking on object 287238 Ancient Altar in Vol'dun as part of the Treasures of Vol'dun achievement for Grayal's Last Offering
		q(53420),	-- for clicking on Lost Spawn of Krag'wa at { 52.83, 42.85, NAZMIR },
		q(53425),	-- for clicking on Lost Spawn of Krag'wa at { 21.86, 69.34, NAZMIR },
		q(53424),	-- for clicking on Lost Spawn of Krag'wa at { 24.17, 91.72, NAZMIR },
		q(53422),	-- for clicking on Lost Spawn of Krag'wa at { 44.62, 92.78, NAZMIR },
		q(53419),	-- for clicking on Lost Spawn of Krag'wa at { 56.02, 65.06, NAZMIR },
		q(53418),	-- for clicking on Lost Spawn of Krag'wa at { 65.57, 50.93, NAZMIR },
		q(53417),	-- for clicking on Lost Spawn of Krag'wa at { 69.57, 58.66, NAZMIR },
		q(53421),	-- for clicking on Lost Spawn of Krag'wa at { 33.46, 61.54, NAZMIR },
		q(53426),	-- for clicking on Lost Spawn of Krag'wa at { 25.68, 40.57, NAZMIR },
		q(53423),	-- for clicking on Lost Spawn of Krag'wa at { 28.89, 83.16, NAZMIR },
		q(51163),	-- ??? plays during the cutscene when you walk across the bridge north of Brennadam in Stormsong Valley
		q(53202),	-- triggered when turning in #50264, "Free the Farmhands"

		--	Jani
		q(50311),	-- give Jani the Golden Ravasaur Egg in Zuldazar
		q(50308),	-- Golden Ravasaur Egg for Get Hek'd
		q(50430),	-- give Jani the Feathered Viper Scale in Zuldazar
		q(50431),	-- Feathered Viper Scale for Get Hek'd
		q(50884),	-- give Jani the Charged Ranishu Antennae in Vol'dun
		q(50883),	-- Charged Ranishu Antennae for Get Hek'd
		q(50889),	-- give Jani the Polished Ringhorn Hoof in Vol'dun
		q(50890),	-- Polished Ringhorn Hoof for Get Hek'd
		q(50891),	-- give Jani the Sturdy Redrock Jaw in Vol'dun
		q(50892),	-- Sturdy Redrock Jaw for Get Hek'd
		q(50440),	-- give Jani the Nazwathan Relic in Nazmir
		q(50441),	-- Nazwathan Relic for Get Hek'd
		q(50436),	-- give Jani the Snapjaw Tail in Nazmir
		q(50437),	-- Snapjaw Tail for Get Hek'd
		q(50434),	-- give Jani the Vilescale Pearl in Nazmir
		q(50435),	-- Vilescale Pearl for Get Hek'd

		--	Zones
		--	Drustvar
		q(51851),	-- Triggered after completing "Storming the Manor". Didn't appear to trigger anything specific, so not sure what they're used for
		q(51852),	-- Triggered after completing "Storming the Manor". Didn't appear to trigger anything specific, so not sure what they're used for
		q(54318),	-- Triggered immediately after completing "A Drust Cause" invasion in Drustvar as Alliance (first completion on character? WM off specific? it doesn't trigger later in WM)


		-- Chests
		q(51871),	-- Drustvar repeatable random chest
		q(51875),	-- Drustvar repeatable random chest
		q(51878),	-- Drustvar repeatable random chest
		q(51882),	-- Drustvar repeatable random chest
		q(51885),	-- Drustvar repeatable random chest
		q(51896),	-- Drustvar repeatable random chest
		q(51899),	-- Drustvar repeatable random chest
		q(51902),	-- Drustvar repeatable random chest
		q(51907),	-- Drustvar repeatable random chest
		q(51910),	-- Drustvar repeatable random chest
		q(51911),	-- Drustvar repeatable random chest
		q(51912),	-- Drustvar repeatable random chest
		q(51913),	-- Drustvar repeatable random chest
		q(51914),	-- Drustvar repeatable random chest

		--	Nazmir
		-- Chests
		q(49904),	-- Nazmir repeatable random chest
		q(49916),	-- Nazmir repeatable random chest
		q(49913),	-- Nazmir repeatable random chest
		q(49914),	-- Nazmir repeatable random chest
		q(49899),	-- Nazmir repeatable random chest
		q(49924),	-- Nazmir repeatable random chest
		q(49925),	-- Nazmir repeatable random chest
		-- Quests
		q(49179),	-- triggered after speaking to Witch Doctor Kejabu after killing Hir'eek, on quest "Upward and "Onward"
		-- Various
		q(49367, {	-- Nazmir dialogue around the Necropolis: "What is happening?  I was sick in my bed... and now... where am I?"
			["isWorldQuest"] = true,	-- without this field, this quest inexplicably shows up in /attwq for some characters
		}),
		q(49368, {	-- Nazmir dialogue around the Necropolis: "De voice... he is calling to us... we must obey!"
			["isWorldQuest"] = true,	-- for some reason, this shows up in /attwq for characters who haven't done it.  haunted!
		}),
		q(49369, {	-- Nazmir dialogue around the Necropolis: "Do you hear it?  It's Bwonsamdi's call!  Eternity is near!"
			["isWorldQuest"] = true, -- unsure if this erroneously shows up in /attwq like the others; if so, it needs to be marked as a WQ
		}),

		--	Stormsong Valley
		-- Chests
		q(51184),	-- Stormsong Valley repeatable random chest
		q(51927),	-- Stormsong Valley repeatable random chest
		q(51930),	-- Stormsong Valley repeatable random chest
		q(51935),	-- Stormsong Valley repeatable random chest
		q(51938),	-- Stormsong Valley repeatable random chest
		q(51940),	-- Stormsong Valley repeatable random chest
		q(51941),	-- Stormsong Valley repeatable random chest
		q(51942),	-- Stormsong Valley repeatable random chest
		q(51943),	-- Stormsong Valley repeatable random chest
		q(51944),	-- Stormsong Valley repeatable random chest
		q(51945),	-- Stormsong Valley repeatable random chest
		q(51946),	-- Stormsong Valley repeatable random chest
		q(52989),	-- Stormsong Valley repeatable random chest
		q(53652),	-- Reported as "Alliance BfA: Opened a chest in Stormsong Valley and got this"
		-- Various
		q(51695),	-- Horde WarCampaign - "Reclaiming What's Ours" (ID 51696) using the horn to reclaim the Foothold
		q(55626),	-- first kill of yellow Sabertron
		q(50541),	-- triggered after defeating Beehemoth WQ

		--	Tiragarde Sound
		-- Chests
		q(48593),	-- Tiragarde Sound repeatable random chest
		q(48595),	-- Tiragarde Sound repeatable random chest
		q(48596),	-- Tiragarde Sound repeatable random chest
		q(48598),	-- Tiragarde Sound repeatable random chest
		q(48599),	-- Tiragarde Sound repeatable random chest
		q(48607),	-- Tiragarde Sound repeatable random chest
		q(48608),	-- Tiragarde Sound repeatable random chest
		q(48609),	-- Tiragarde Sound repeatable random chest
		q(48611),	-- Tiragarde Sound repeatable random chest
		q(48612),	-- Tiragarde Sound repeatable random chest
		q(48617),	-- Tiragarde Sound repeatable random chest
		q(48618),	-- Tiragarde Sound repeatable random chest
		q(48619),	-- Tiragarde Sound repeatable random chest
		q(48621),	-- Tiragarde Sound repeatable random chest
		q(50166),	-- Tiragarde Sound repeatable random chest
		q(50952),	-- Tiragarde Sound repeatable random chest
		q(53630),	-- Tiragarde Sound repeatable random chest (possibly different from others, it was Forgotten Treasure Chest at 79.57 20.22 in a small cave)
		q(53631),	-- reported as "opening a chest in Tiragarde Sound"
		q(48594),	-- Tiragarde Sound Tol Dagor chest
		-- Various
		q(55627),	-- triggered additionally when completing the WQ to kill P4-N73R4.  this is not the first-time kill tracking quest for the rare, so i'm not sure what it's for

		--	Vol'dun
		-- Chests
		q(51138),	-- clicking on sand pile to spawn Zem'lan's Buried Treasure
		q(53005),	-- clicking on the fishing bobber to spawn Sandsunken Chest
		q(47326),	-- clicking on the mine cart to get Ashvane Spoils
		q(50922),	-- Vol'dun repeatable random chest
		q(50920),	-- Vol'dun repeatable random chest
		q(51673),	-- Vol'dun repeatable random chest
		q(50926),	-- Vol'dun repeatable random chest
		q(50916),	-- Vol'dun repeatable random chest
		q(50914),	-- Vol'dun repeatable random chest
		q(50918),	-- Vol'dun repeatable random chest
		q(50924),	-- Vol'dun repeatable random chest
		q(50921),	-- Vol'dun repeatable random chest
		q(50919),	-- Vol'dun repeatable random chest
		q(50915),	-- Vol'dun repeatable random chest
		q(50925),	-- Vol'dun repeatable random chest
		-- Various
		q(49684),	-- triggered when picking the staff on "Armed and Ready"
		q(49685),	-- triggered when picking the scythe/glaive thing on "Armed and Ready"
		q(51648),	-- Vol'dun - select "The Nimble" as your Akunda title during "Trial of Truth"
		q(51649),	-- Vol'dun - select "the Serene" as your Akunda title during "Trial of Truth"
		q(51650),	-- Vol'dun - select "the Courageous" as your Akunda title during "Trial of Truth"
		q(49414),	-- Vol'dun - beat Akunda the Exalted to trigger the cinematic and phase the area
		q(51685),	-- Vol'dun - triggers when turning in "Akunda's Blessing". Probably controls the activation of the Akunda buff idol in Dazar'alor
		q(51684),	-- Vol'dun - triggers when turning in "Mark of the Loa". Probably controls the activation of the Kimbal buff idol in Dazar'alor
		q(49416),	-- Vol'dun - triggers during "The Keeper's Keys" after the cinematic
		q(47887),	-- Vol'dun - triggered when entering the Ashvane Encampment. Possibly controls the spawn of Randall Redmond?
		q(50522),	-- Vol'dun - triggered after getting a food buff from the goldtusk inn's "All-You-Can-Eat Breakfast Buffet". Could also be related to feeding Tarkaj during "A Goldtusk Greeting"
		q(54299),	-- triggered when completing #54272, "Battle Bots" WQ

		--	Zuldazar
		-- Chests
		q(50712),	-- Zuldazar repeatable random chest
		q(50719),	-- Zuldazar repeatable random chest
		q(50720),	-- Zuldazar repeatable random chest
		q(50721),	-- Zuldazar repeatable random chest
		q(50722),	-- Zuldazar repeatable random chest
		q(50723),	-- Zuldazar repeatable random chest
		q(50726),	-- Zuldazar repeatable random chest
		q(50727),	-- Zuldazar repeatable random chest
		q(50728),	-- Zuldazar repeatable random chest
		q(51346),	-- Zuldazar repeatable random chest
		q(50729),	-- looted a chest in Zuldazar at 58.6, 81.1
		q(51363),	-- Weekly m+ chest looted (Horde, probably alliance too?)
		-- Rares
		q(50856),	-- Old R'gal first time kill quest
		-- Various
		q(50931),	-- Spoke to talanji when meeting with Rastakhan for the first time
		q(55413),	-- War Mode supply drop in Zuldazar
		q(55259),	-- Triggers after turning 'Sleep, Eat, Repeat' (ID 55258) in to finish the achievement criteria 'Sleep, Eat, Repeat' (3) for How to Train Your Direhorn (ID 13542)
		q(52141),	-- after completing "SKREEEEE!" for How to Ptrain Your Pterrordax
		q(47436),	-- Picked Pa'ku for "Picking a Side"
		q(47443),	-- switched loa alignment in Zuldazar to Gonk by speaking to Chronicler Ash'tari
		q(53567),	-- Sky Queen, rare with no associated loot
		q(50844),	-- triggered when turning in #50900, "Maybe When You're Older," part of Kua'fon questline
		q(50828),	-- triggered when turning in #50412, Back to the Nest, part of Kua'fon questline.
		q(51992),	-- triggered when turning in "Of Dark Deeds and Dark Days"
		q(51993),	-- triggered when turning in "Of Dark Deeds and Dark Days"
		q(55257),	-- triggered after turning in "Held for Observation" in the "How to Train Your Direhorn" questline
		q(55536),	-- triggered after turning in "Torcali's Blessing" in the "How to Train Your Direhorn" questline

		--	Nazjatar
		--	PVP
		q(57111),	-- Nazjatar Horde supply chest (both triggered simultaneously)
		--	Naga Commanders
		q(56882),	-- Commander Minezra
		q(56895),	-- Incantatrix Vazina
		q(56894),	-- Shadowbinder Athissa
		q(56890),	-- Theurgist Nitara
		q(56893),	-- Warlord Zalzjar
		-- Rares
		q(56604),	-- Alga the Eyeless first kill
		q(56603),	-- Allseer Oma'kil first kill
		q(56602),	-- Anemonar first kill
		q(56615),	-- Amethyst Spireshell first kill
		q(56614),	-- Blightlight first kill
		q(56887),	-- Carnivorous Lasher first kill
		q(56888),	-- Carnivorous lasher kill
		q(57188),	-- Carnivorous Lasher, Germinating Seafly buff (drops herbs)
		q(57187),	-- Carnivorous Lasher Golden Seafly buff (drops gold)
		q(57186),	-- Carnivorous Lasher, Radiant Seafly buff (drops Azerite)
		q(56600),	-- Caverndark Terror first kill
		q(56613),	-- Chasm Haunter first kill
		q(56612),	-- Daggertooth Terror first kill
		q(56611),	-- Deepglider first kill
		q(56599),	-- Elder Unu first kill
		q(56598),	-- Elderspawn Nalaada first kill
		q(56610),	-- Garnetscale first kill
		q(56597),	-- Iridescent Glimmershell first kill
		q(57260),	-- Iridescent Glimmershell looted with WM on
		q(56596),	-- Kelpwillow first kill
		q(57082),	-- Lost Algan Benthic loot
		q(56609),	-- Mirecrawler first kill
		q(56608),	-- Needlespine first kill
		q(56595),	-- Oronu first kill
		q(56594),	-- Prince Typhonus first kill
		q(56593),	-- Prince Vortran first kill
		-- q(56287),	-- Reefwalker first kill
		q(56592),	-- Rockweed Shambler first kill
		q(56917),	-- Rockweed Shambler additional loot (Benthic/Manapearls)
		q(56606),	-- Sandclaw Stonoeshell first kill
		q(57142),	-- looting Giant Crab Leg + Brinestone Pickaxe from Sandclaw Stoneshell
		q(56591),	-- Scale Matriarch Gratinax first kill
		q(56590),	-- Scale Matriarch Vynara first kill
		q(56589),	-- Scale Matriarch Zodia first kill
		q(56588),	-- Shassera first kill
		q(56587),	-- Shiz'narasz the Consumer first kill
		q(56586),	-- Silstalker the Packmother first kill
		q(56585),	-- Soundless first kill
		q(56619),	-- Tidelord Dispersius first kill
		q(56620),	-- Tidemistress Leth'sindra first kill
		q(56605),	-- Toxigore the Alpha first kill
		q(56584),	-- Urduu first kill
		q(56583),	-- Voice in the Deeps first kill
		q(57083),	-- Wayward Algan Benthic loot
		q(57096),	-- reported as triggering upon snapping a photo to collect Fabious
		-- WQs
		q(57167),	-- Killed Vyz'olgo the Mind-Taker. Probably related to a daily loot flag from the lieutenants
		q(57166),	-- triggered when completing #55891, "Champion Aldrantiss, Defender of Her Kingdom," in nazjatar
		q(57165),	-- triggered when completing #55892, "Champion Eldanar, Shield of Her Glory," in nazjatar
		q(57168),	-- triggered when completing #55889, "Champion Kyx'zhul the Deepspeaker," in nazjatar
		q(57170),	-- triggered when completing #55888, "Champion Qalina, Spear of Ice," in nazjatar
		q(57169),	-- triggered when completing WQ to kill Alzana, Arrow of Thunder (not WQ ID)
		-- Various
		q(55404),	-- Triggered when interacting with the "Deepflame Campfire" in Mezzamere as alliance, but without picking a follower
		q(57097),	-- ??? Triggered after the cutscene for "Scouting the Palace" in Nazjatar on Alliance
		q(56881),	-- Triggered upon first entry into Nazjatar
		q(56677),	-- Triggered sometime after turning in "Needs of the People", after picking up the dailies, but before leaving Newhome. TODO:: research more (possibly bodyguard dialogue quest?)
		q(56212),	-- Triggered when opening the first glimmering chest during "Scrying Stones"
		q(56220),	-- Triggered when opening the second glimmering chest during "Scrying Stones"
		q(56221),	-- Triggered when opening the third glimmering chest during "Scrying Stones"
		q(56661),	-- Triggered when walking into the "Void Chamber" cave
		q(56913),	-- Triggers after completing the Glowing Arcane Trunk minigame in Broken Fin Hollow (24.8, 35.2)
		q(55987),	-- Triggers after completing the Glowing Arcane Trunk minigame in Chitterspine Caverns (43.8, 16.5)
		q(56343),	-- Triggers after completing the Glowing Arcane Trunk minigame in Mardivas's Hideaway (37.9, 6.5)
		q(55999),	-- Triggers after completing the Glowing Arcane Trunk minigame in Zanj'ir Terrace (37.2, 19.1)
		q(55996),	-- Triggers after completing the Glowing Arcane Trunk minigame in Azsh'ari Terrace (64.1, 28.5)
		q(55998),	-- Triggers after completing the Glowing Arcane Trunk minigame in Shirakess Repository (55.8, 14.1)
		q(56359),	-- Triggers after completing the Glowing Arcane Trunk minigame in Coldlight Cavern (61.4, 22.8)
		q(56548),	-- Triggers after completing the Glowing Arcane Trunk minigame in Highborne Estates (80.5, 31.9)
		q(55604),	-- Triggers after unlocking or making a purchase from Mrrl (Once per day)
		q(56901),	-- Triggers after buying Mrrl's secret trader stock (requires cloak with special stock trait). Received 170162 - waterlogged toolbox first
		q(57191),	-- Glimmering Chest — Prismatic Manapearls
		q(57192),	-- Glimmering Chest — Prismatic Manapearls
		q(55427),	-- Ravenous Slime fed (55.1, 48.8)
		q(55470),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon(55.1, 48.8)
		q(55475),	-- Slimy Cocoon opened (55.1, 48.8)
		q(55428),	-- Ravenous Slime fed (71.7, 25.7)
		q(55471),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (71.7, 25.7)
		q(55476),	-- Slimy Cocoon opened (71.7, 25.7)
		q(55429),	-- Ravenous Slime fed (45.7, 24.1)
		q(55472),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (45.7, 24.1)
		q(55477),	-- Slimy Cocoon opened (45.7, 24.1)
		q(55430),	-- Ravenous Slime fed (32.9, 39.8)
		q(55473),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (32.9, 39.8)
		q(55478),	-- Slimy Cocoon opened (32.9, 39.8)
		q(56571),	-- Triggers when completing the Baine Rescue scenario. Probably used as unlock criteria for the Tauren Heritage armor chain
		q(57140),	-- pretty sure this is for looting Ancient Reefwalker Bark

		--	Dungeons
		q(53623),	-- Battle for Azeroth Dungeon Reward Quest
		q(57046),	-- Operaton: Mechagon — triggered upon killing King Mechagon for the first time (Heroic).  Could be from killing the boss or from looting the Azerite Essence

		--	Raids
		--	Uldir
		q(53269),	-- killed Taloc the Corrupted in LFR
		q(51736),	-- killed Taloc on Mythic
		q(51735),	-- killed MOTHER on Mythic
		q(51734),	-- killed Vectis on Mythic / Heroic
		q(51733),	-- killed Fetid Devourer on Mythic
		q(51730),	-- killed Mythrax the Unraveler on Mythic
		q(51732),	-- reported as triggering after doing "What's in the Box?" achievement, perhaps a kill quest
		q(51731),	-- reported as triggering after doing "Edgelords" achievement, perhaps a kill quest
		q(51729),	-- reported as triggering after doing "Double Dribble" achievement, perhaps a kill quest

		--	Battle of Dazar'alor
		q(54963),	-- LFR, cinematic at the start of Siege of Dazar'alor wing
		q(55024),	-- LFR, moving into the hallway after Opulence (not a killID -- this triggered in chat while i was in combat with the trash in the hall)
		q(55025),	-- triggered after killing Conclave on normal

		-- Aqueous Reliquary LootIDs (This is a guess ... have to determine which ID is for which difficulty, - sadidorf)
		q(56961),	-- Radiance of Azshara Aqueous Reliquary LFR? LootID
		q(56962),	-- Radiance of Azshara Aqueous Reliquary NHC? LootID
		q(56964),	-- Radiance of Azshara Aqueous Reliquary HC? LootID
		q(56965),	-- Queen's Court Aqueous Reliquary LFR? LootID
		q(56966),	-- Queen's Court Aqueous Reliquary NHC? LootID
		q(56968),	-- Queen's Court Aqueous Reliquary HC? LootID
		q(56963),	-- Radiance of Azshara Aqueous Reliquary Mythic? LootID

		-- Azerite essences assembled with Aqueous Reliquary
		q(56946),	-- Vitality Redistribution Lattice (Rank 1)
		q(56950),	-- Resonating Elemental Heart (Rank 3)
		q(56956),	-- Mesh of Expanding Vitality (Rank 2)
		q(56957),	-- Grid of Bursting Vitality (Rank 3)
		q(56958),	-- Tempered Azerite Formation (Rank 3)
		q(56945),	-- Tempered Azerite Formation (Rank 3)
		q(56943),	-- Animated Elemental Heart (Rank 1)
		q(56947),	-- Animated Elemental Heart (Rank 1) — this + quest above popped at the same time after assembly.  was my first one, if that matters!

		--	Ny'alotha
		q(59557),	-- kill wrathion
		q(59558),	-- kill Maut
		q(58547),	-- kill skitra - probably triggers when first wing clears?
		q(58548),	-- kill skitra - probably triggers when first wing clears?
		q(58549),	-- kill skitra on heroic?
		q(59559),	-- kill skitra - kill credit
		q(59136),	-- after coming up the elevator after first wing. Likely the RP and respawn point reset
		q(59561),	-- kill dark inquisitor xanesh
		q(58539),	-- kill vexiona - probably triggers when the right wing is cleared
		q(58540),	-- kill vexiona - probably triggers when the right wing is cleared
		q(58541),	-- looted Dragon Heart from vexiona on heroic. May be different ID for different difficulties
		q(59562),	-- kill vexiona - kill credit
		q(59563),	-- kill shad'har
		q(59046),	-- kill Jesh'ra, big add with 200 Mementos as loot
		q(59047),	-- kill Sanguimar, big add with 200 Mementos as loot
		q(59048),	-- kill Deresh of the Nothingness, big add with 200 Mementos as loot
		q(59566),	-- kill drest'agath
		q(59560),	-- kill hivemind
		q(58535),	-- Il'gynoth wing clear. probably triggers the azerite beacon
		q(58536),	-- Il'gynoth wing clear. triggers dialog?
		q(58537),	-- looted eye of prophecy from il'gynoth on heroic. May be different ID for different difficulties
		q(59564),	-- kill Il'gynoth
		q(59565),	-- kill ra-den
		q(58543),	-- kill ra-den - either the wing clear OR the beacon placement
		q(58544),	-- kill ra-den - either the wing clear OR the beacon placement
		q(58545),	-- triggered together with 58543, 58544 and 59565. My first ever kill of Ra-den (happened on heroic)
		q(59567),	-- kill Carapace of N'Zoth (Fury of N'Zoth)
		q(59568),	-- N'Zoth killed on Heroic. Possibly the same for other difficulties?
		q(58531),	-- triggered when killing N'zoth on Heroic for the first time, had previously only done LFR
		q(58533),	-- triggered when killing N'zoth on Heroic for the first time, had previously only done LFR
		q(58532),	-- triggered when killing N'Zoth in LFR
		q(59531),	-- all three triggered on first N'Zoth kill, which happened to be Ahead of the Curve also
		q(59532),	-- all three triggered on first N'Zoth kill, which happened to be Ahead of the Curve also
		q(59533),	-- all three triggered on first N'Zoth kill, which happened to be Ahead of the Curve also
		q(59134),	-- my guess is that it triggers after getting Malefic Core from N'Zoth. I got it on heroic and it wasn't present on my previous heroic kills

		-- Azerite essences assembled with Encrypted Ny'alothan Text
		q(58527),	-- Replicating Void Droplets (Rank 1 Formless Void)
		q(58528),	-- Burgeoning Void Droplet (Rank 2 Formless Void)
		q(58529),	-- Volatile Void Droplet (Rank 3 Formless Void). Renders the texts unusable.

		--	Patch 8.3
		q(55349),	-- Triggered shortly after "Network Diagnostics"
		q(56935),	-- Triggered shortly after "Network Diagnostics"
		q(58000),	-- Combining Coalescing Visions 1x
		q(58001),	-- Combining Coalescing Visions 2x
		q(58002),	-- Combining Coalescing Visions 3x
		q(58409),	-- Combining Coalescing Visions 4x
		q(59073),	-- Triggers when turning in "Match the Hatch" for the Shadowbarb Drone. Probably a daily trigger ID so players can't do the entire chain in one day
		q(58994),	-- Triggers when you get your first corrupted item. It procs the "Curious Corruption" quest
		q(59024),	-- Triggers when talking to Zidormi in the lvl 120 rebuilt Vale to go to the past sha-destroyed version
		q(58815),	-- Triggers when completing the blacktalon agent daily for a zone vision
		q(58085),	-- Triggered upon entering the vision to the Shrine of Seven Stars -- TODO:: verify this. didn't pop up since latest PTR build
		q(56132),	-- Vale of Eternal Blossoms - activated a celetial buff 3rd time (yu'lon?)
		q(56133),	-- Vale of Eternal Blossoms - activated a celestial buff 4th time (xuen?)
		q(56134),	-- Vale of Eternal Blossoms - activated a celestial buff 1st time (chi-ji?)
		q(56135),	-- Vale of Eternal Blossoms - activated a celestial buff 2nd time (niuzao?)
		q(59141),	-- Vale of Eternal Blossoms - triggered after turning in the Black Empire assault. Probably a loot lock trigger?
		q(58512),	-- Grand Empress Shek'zara bonus roll
		q(59060),	-- choosing Bitey McStabface as the name for your Aqir Hatchling
		q(59062),	-- choosing Spike as the name for your Aqir Hatchling
		q(59059),	-- chose "Yu'gaz" as the name for your Aqir Hatchling
		q(59132),	-- probably "Unwavering Resolve" achievement (upgrade cloak to rank 15)
		q(59030),	-- Vulpera learning Flames of Fury (175158) for Bag of Tricks
		q(59033),	-- Vulpera learning Sinister Shadows (175159) for Bag of Tricks
		q(59036),	-- Vulpera learning Holy Relic (175160) for Bag of Tricks

		-- Horrific Visions
		-- Orgrimmar
		q(58581),	-- first horrific vision cleared as horde
		q(57039),	-- Valley of Spirits cleansed (Orgrimmar)
		q(58896),	-- Valley of Spirits cleansed (Orgrimmar) - probably controls activation of the quick-navigation back to the start?
		q(57029),	-- Valley of Spirits cleansed (Orgrimmar) - probably controls eligibility for looting bonus chest at the end
		q(57129),	-- Valley of Wisdom cleansed (Orgrimmar)
		q(57001),	-- Valley of Strength cleansed (Orgrimmar)
		q(57372),	-- The Drag cleansed (Orgrimmar)
		q(57028),	-- The Drag cleansed (Orgrimmar) - probably controls eligibility for looting bonus chest at the end
		q(58577),	-- The Drag cleansed (Orgrimmar) - probably controls activation of the quick-navigation back to the start?
		q(58895),	-- got this instead of 58577 after clearing The Drag
		q(58969),	-- horrific vision of orgimmar
		q(58891),	-- completed a wing
		q(58580),	-- completed a wing
		q(58972),	-- completed a wing
		q(58892),	-- completed a wing
		q(57031),	-- looted the chest from cleansing Valley of Wisdom at the end of the scenario
		q(57030),	-- looted the chest from cleansing the Valley of Strength at the end of the scenario
		q(57027),	-- triggers in the chest room at the end of the Orgrimmar scenario. Doesn't matter if you defeat Thrall or not
		q(59044),	-- completed all objectives
		q(58966),	-- triggered after completing all of zek'han's area but before killing the boss. Also triggers in Stormwind in valeria's wing
		q(58963),	-- triggered while fighting Thrall after two corrupted areas/triggered before boss in The Drag
		q(58973),	-- triggered after fighting Rexxar
		-- Stormwind
		q(58968),	-- 3rd wing clear
		q(58965),	-- triggered when going to Dwarven District (during the fight with 3 gnomes)
		q(57153),	-- Dwarven District cleansed (Stormwind)
		q(58970),	-- triggered when detonating explosives in Dwarven District
		q(58894),	-- Dwarven District - kill the wing boss. Activates a portal to the cathedral district
		q(58964),	-- taking portal from Dwarven District back to Cathedral
		q(57216),	-- Old Town cleansed (Stormwind)
		q(58967),	-- probably defeating Slavemaster Ul'rok in Trade District
		q(57271),	-- Trade District cleansed (Stormwind)
		q(58897),	-- triggered together with 57271
		q(58890),	-- Dwarven district
		q(58893),	-- cleared mage quarter
		q(57282),	-- cleared mage quarter
		--q(57842),	-- end of vision clear - possibly only triggers when all other wings are cleared?(moved to metadata)
		-- TODO:: Need to determine the alliance zones for the 4 area chests. They appear to be shared with horde except for the main boss chest
		q(57360),	-- looted the chest in front of Alleria's image at the end of the scenario. Doesn't matter if you defeat her or not
		q(58578),	-- looted the chest from cleansing the Dwarven District at the end of the scenario (could possibly be from looting "Spark of Inspiration" Rank 2)

		q(58579),	-- looted the Overflowing Azerite Geode (Rank 1)
		--q(57845),	-- looted the Water Dancer's Technique (Rank 2) (Possibly only comes from valley of wisdom?)
		q(58971),	-- killing Mail Muncher
		--[[
		q(57845)	-- probably triggers after clearing two corrupted areas + boss
		58840 - looted the chest in front of zekhan. Torn Page of Compednium, Vol.II and Sparks of Unwavering Strength dropped
		58581 -- triggered on the first run of the Vision of Orgrimmar after unlocking it, then killing Thrall immediately.
		Possibly related to Mark of Boistrous Duty (Rank 1) dropping? Torn Page of Compendium, Vol. 1 (item 171353) as well? Need to run a few times to see if this is guaranteed or not
		]]--

		-- N'Zoth assaults
		-- TODO: would be nice to have these slowly migrated to actual treasure objects like other zone objects
		q(55689),	-- Uldum - Amathet cache
		q(55690),	-- Uldum - Amathet cache
		q(55691),	-- Uldum - Amathet cache
		q(55692),	-- Uldum - Amathet Reliquary (requires tol'vir relic to open)
		q(55698),	-- Uldum - Amathet cache
		q(55699),	-- Uldum - Amathet cache
		q(55700),	-- Uldum - Amathet cache
		q(57623),	-- Uldum - Black Empire Cache
		q(57624),	-- Uldum - Black Empire Cache
		q(57625),	-- Uldum - Black Empire Cache
		q(57626),	-- Uldum - Black Empire Cache
		q(57627),	-- Uldum - Black Empire Cache
		q(57635),	-- Uldum - Black Empire Cache
		q(57628),	-- Uldum - Black Empire Coffer
		q(58138),	-- Uldum - Infested Cache
		q(58142),	-- Uldum - Infested Cache
		q(59054),	-- Looting a bounty in Uldum as Alliance (all 4 trigger at the same time)
		q(59055),	-- Looting a bounty in Uldum as Alliance
		q(59056),	-- Looting a bounty in Uldum as Alliance
		q(59057),	-- Looting a bounty in Uldum as Alliance
		q(57201),	-- Vale of Eternal Blossoms - Black Empire Cache
		q(57200),	-- Vale of Eternal Blossoms - Black Empire Cache
		q(57203),	-- Vale of Eternal Blossoms - Black Empire Cache
		q(57197),	-- Vale of Eternal Blossoms - Black Empire Cache
		q(57202),	-- Vale of Eternal Blossoms - Black Empire Cache
		q(57199),	-- Vale of Eternal Blossoms - Black Empire Cache
		q(57206),	-- Vale of Eternal Blossoms - Mogu Plunder
		q(57208),	-- Vale of Eternal Blossoms - Mogu Plunder
		q(57209),	-- Vale of Eternal Blossoms - Mogu Plunder
		q(57211),	-- Vale of Eternal Blossoms - Mogu Plunder
		q(57212),	-- Vale of Eternal Blossoms - Mogu Plunder
		q(57213),	-- Vale of Eternal Blossoms - Mogu Plunder
		q(57214),	-- Vale of Eternal Blossoms - Mogu Spoils
		q(58224),	-- Vale of Eternal Blossoms - Ambered Cache
		q(58225),	-- Vale of Eternal Blossoms - Ambered Cache
		q(58226),	-- Vale of Eternal Blossoms - Ambered Cache
		q(58227),	-- Vale of Eternal Blossoms - Ambered Cache
		q(58228),	-- Vale of Eternal Blossoms - Ambered Cache
		q(58770),	-- Vale of Eternal Blossoms - Ambered Coffer

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

		--	World Bosses
		q(58510),	-- Vuk'laz the Earthbreaker first kill??
		q(58514),	-- Vuk'laz the Earthbreaker bonus roll
		q(58508),	-- Grand Empress Shek'zara first kill??
		--q(58770),	-- Grand Empress Shek'zara bonus roll
	})),

	------------------
	--      SL      --
	------------------
	expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		n(GROUP_FINDER, {
			q(62642),	-- LFGDungeons - SL - Heroic Random - 1st
			q(62643),	-- LFGDungeons - SL - Heroic Random - Nth
			q(62644),	-- LFGDungeons - SL - Normal Random - 1st
			q(62645),	-- LFGDungeons - SL - Normal Random - Nth
			q(62646),	-- LFGDungeons - SL - Raid Finder - 1st
			q(62647),	-- LFGDungeons - SL - Raid Finder - Nth
			q(62079),	-- Received weekly Mythic+ Keystone
			q(62658),	-- Shadowlands Dungeon Reward Quest
			q(62346),	-- Shadowlands (50-59) E
			q(62347),	-- Shadowlands (50-59) E
			q(62348),	-- Shadowlands (50-59) E
			q(62349),	-- Shadowlands (50-59) E
			q(62350),	-- Shadowlands (50-59) E
			q(62353),	-- Shadowlands (50-59) E
			q(62354),	-- Shadowlands (50-59) E
			q(62355),	-- Shadowlands (50-59) E
			q(62356),	-- Shadowlands (50-59) E
			q(62357),	-- Shadowlands (50-59) E
			q(62358),	-- Shadowlands (50-59) E
			q(62359),	-- Shadowlands (50-59) E
			q(62360),	-- Shadowlands (50-59) E
			q(60023),	-- Shadowlands (60) E
			q(60024),	-- Shadowlands (60) E
			q(60025),	-- Shadowlands (60) E
			q(60031),	-- Shadowlands (60) E
			q(60032),	-- Shadowlands (60) E
			q(60033),	-- Shadowlands (60) E
			q(60034),	-- Shadowlands (60) E
			q(60035),	-- Shadowlands (60) E
			q(60036),	-- Shadowlands (60) E
			q(60037),	-- Shadowlands (60) E
			q(60038),	-- Shadowlands (60) E
			q(60039),	-- Shadowlands (60) E
			q(60040),	-- Shadowlands (60) E
			q(64996, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(64997, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(64998, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(64999, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(65000, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(65001, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(65002, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(65003, {["timeline"] = {ADDED_9_1_5}}),	-- Shadowlands (60) E
			q(65703, {["timeline"] = {ADDED_9_2_0}}),	-- Shadowlands (60) E
			q(65704, {["timeline"] = {ADDED_9_2_0}}),	-- Shadowlands (60) E
			q(65705, {["timeline"] = {ADDED_9_2_0}}),	-- Shadowlands (60) E
			q(60014),	-- Shadowlands 60 E
			q(60015),	-- Shadowlands 60 E
			q(60016),	-- Shadowlands 60 E
			q(60017),	-- Shadowlands 60 E
			q(60018),	-- Shadowlands 60 E
			q(60019),	-- Shadowlands 60 E
			q(60026),	-- Shadowlands 60 E
			q(60027),	-- Shadowlands 60 E
			q(60028),	-- Shadowlands 60 E
			q(60029),	-- Shadowlands 60 E
			q(60030),	-- Shadowlands 60 E
		}),
		n(PVP, {
			q(62298),	-- Classic 20-49
			q(62299),	-- Classic 20-49
			-- PvP Assassin
			q(63389),	-- Killed and looted Horde Assasin (as Alliance obviously)
			q(63390),	-- Killed and looted Horde Assasin (as Alliance obviously)
			q(63391),	-- Killed and looted Horde Assasin (as Alliance obviously)
		}),
		n(PROFESSIONS, {
			-- Profession crafting world quests
			q(62940),	-- Triggers when opening the box during "Alchemy: Elixir of Humility" (questID 61619) (spellID 345470)
			q(62941),	-- Triggers when opening the box during "Blacksmithing: Stalker Arrowheads" (questID 61435) (spellID 345472)
			q(62942),	-- Triggers when opening the box during "Cooking: Spider Jerky" (questID 61607) (spellID 345473)
			q(62943),	-- Triggers when opening the box during "Enchanting: Boundless Basket" (questID 61440) (spellID 345475)
			q(62944),	-- Triggers when opening the box during "Engineering: Boneclad Stake Launcher" (questID 61609) (spellID 345476)
			q(62945),	-- Triggers when opening the box during "Inscription: Hymnal of Reprise" (questID 61599) (spellID 345477)
			q(62946),	-- Triggers when opening the box during "Jewelcrafting: Carved Crystal Ring" (questID 61612) (spellID 345478)
			q(62947),	-- Triggers when opening the box during "Leatherworking: Steelhide Leather Harness" (questID 61449) (spellID 345479)
			q(62948),	-- Triggers when opening the box during "Tailoring: Haunting Hood" (questID 61615) (spellID 345480)
		}),

		-- Pre-launch event
		q(60490),	-- Triggers after completing "Advancing the Effort" and unlocking Icecrown dailies. Also triggered when starting the new phase at Ironwall Rampart. Maybe it's the zone story daily progression tracker?
		q(60541),	--
		q(60511),	-- Icecrown story - Advancing the effort (phase 2?). triggered after completing "Only Shadows Remain"
		q(62808),	-- triggered when logging into a previously-120 character
		q(62480),	-- triggered along with the Nathanos Blightcaller world quest (for killing Nathanos)
		q(62849),	-- \
		q(62850),	--  \ triggered when logging into my 50 main during week 2 of the prepatch
		q(62851),	--  / nothing else done, quests were not there during week 1
		q(62852),	-- /

		-- Various tracking quests
		q(61858),	-- taking the portal to Acherus during "Shadowlands: A Chilling Summons"
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
		q(60523),	-- Triggered after reading Theotar's Diary
		q(60527),	-- Triggered after reading Theotar's Diary
		q(59222),	-- triggered during #57536, "Mirror Making, Not Breaking" when speaking to Laurent
		q(62661),	-- Triggered during first completion of #58080 [Favor: Glittering Primrose Necklace]
		q(62669),	-- Triggered during first completion of #58070 [Favor: Soul Hunter Blade]
		q(60707),	-- When looting [The Venthyr Diaries] (173705)
		q(60847),	-- Upon looting [Soul Hunter's Blade] (173707)
		q(60849),	-- When looting [Ledger of Souls] (173712)
		q(62641),	-- killing or looting Sabina during "Setting Sabina Free"
		q(62649),	-- triggered during 'Secret Service WQ'
		q(62671),	-- think this triggered when i turned in "Favor: Vial of Dredger Muck"
		q(58107),	-- triggered when opening a crypt while on "Atonement Crypt Key"
		q(60703),	-- triggered when looting Pristine Dredbat Fang
		q(62662),	-- triggered when turning in #58074, Favor: Ledger of Souls
		q(62664),	-- triggered when turning in #58077, Favor: Perfected Hand Mirror
		q(62667),	-- triggered when turning in #58079, Favor: Pristine Dredbat Fang
		q(62665),	-- triggered when turning in #58072, Favor: Petrified Stonefiend
		q(62670),	-- triggered when turning in #58069, Favor: The Venthyr Diaries
		q(62666),	-- triggered when turning in #58073, Favor: Portrait of the Sire
		q(62659),	-- triggered when turning in #58078, Favor: Bottle of Redelav Wine
		q(62660),	-- triggered when turning in #58075, Favor: Dredger's Toolkit
		q(62663),	-- triggered when turning in #58081, Favor: Love and Terror
		q(60845),	-- triggered when looting "Bottle of Redelav Wine" (for Favor: Bottle of Redelav Wine)
		q(60853),	-- triggered when looting "Portrait of the Sire" (for Favor: Portrait of the Sire)
		q(60846),	-- triggered when looting "Dredger's Toolkit" (for Favor: Dredger's Toolkit)
		q(60850),	-- triggered when looting "Love and Terror" (for Favor: Love and Terror)
		q(61188),	-- Triggered after looting Impressionable Gorger Spawn
		q(61843),	-- Triggered after completing Nipping at the Undergrowth (61839)
		q(63090),	-- looting weekly chest of Sinstone Fragments next to Archivist Fane

		-- Venthyr Covenant
		q(62950),	-- clicking "Activate" after putting "Thrill Seeker" in Nadjia's soulbind tree
		q(62749),	-- triggered when turning in #62921, "Our True Purpose"
		q(63063),	-- looks like an unused version of #63056, "Sanctum Upgrade: Mirror Network"
		q(60300),	-- appears to trigger with every anima conduit
		q(61587),	-- Channeling Anima Conduit to Wanecrypt Hill - 1st time
		q(60304),	-- Channeling Anima Conduit to Crypt of the Forgotten
		q(60299),	-- Channeling Anima Conduit to Pridefall Hamlet
		q(60305),	-- Channeling Anima Conduit to Court of the Harvesters
		q(60848),	-- triggered when looting one of the Greater Greedstone treasures
		q(59432),	-- triggered when turning in #59661, "Ember Court Rehearsal"
		q(61438),	-- triggered when turning in #61404, "Ember Court: Tubbins's Tea Party"
		q(59507),	-- triggered when signing Tubbins's Contract
		q(62813),	-- triggered when looting Atonement Crypt Key while on #60236, "RSVP: Cryptkeeper Kassir"
		q(62814),	-- triggered when opening a crypt with the key
		q(59495),	-- when using Contract: Atoning Rituals (59594)
		q(59440),	-- triggered when entering the Ember Court, Week 1 (spellID 348696)
		q(61924),	-- triggered when entering the Ember Court, Week 2
		q(61928),	-- triggered when entering the Ember Court, Week 4
		q(61921),	-- triggered when entering the Ember Court, Week 5
		q(61933),	-- triggered when entering the Ember Court, Week 6
		q(61927),	-- triggered when entering the Ember Court for the week
		q(61939),	-- triggered when Ember Court began for the week (after the initial wave of "Quest accepted," after the pre-event when you can mingle with guests)
		q(61942),	-- also triggered completed upon finishing the "Animal Rescue" objective
		q(61448),	-- triggered completed upon turning in the Blob of Slime to Prince Renathal for the "Blustery Boil" objective (assume this is the "release the slime" option since the other one is... sort of a real quest)
		q(61450),	-- also part of the "Ember Skyterror" objective, for turning the seed in to Renathal
		q(61998),	-- also part of "Legacy of Stone," not sure if they both triggered last week?  again, i chose Humble, but both versions went off this time
		q(61161),	-- another "Party Crashers!" objective, automatically "accepted" when it started
		q(61163),	-- also for the "Party Crashers" objective, but automatically "accepted" when it started
		q(61929),	-- also completed when finishing "Theotar's Toast" objective
		q(61164),	-- triggered completed upon finishing the #62117 "Party Crashers"
		q(61162),	-- for the #62113 version of "Party Crashers"
		q(60930),	-- "Lower Your Standards," sort of a real quest?  but repeatable, only available when certain choices are made for ember court, pointless in general, doesn't seem worth tracking
		q(60957),	-- "Ansel's Lucky Violin," sort of a real quest?  but repeatable, only available when certain choices are made for ember court, pointless in general, doesn't seem worth tracking
		q(60960),	-- "Chiu's Lute," sort of a real quest?  but repeatable, only available when certain choices are made for ember court, pointless in general, doesn't seem worth tracking
		q(60955),	-- "Noko's Flute," same as above
		q(61433),	-- "Lower Your Standards," for turning in Giant Lungcap to Picky Stefan
		q(61445),	-- triggered completed upon turning in gossip to Prince Renathal for the "Venthyr Provocateur" objective (assume this is for sharing the gossip to make court +Exciting)
		q(62496),	-- triggered when Ember Court ended, Week 1 (had Cryptkeeper Kassir as guest and he was Elated)
		q(62512),	-- triggered when Ember Court ended, Week 1 (had Cryptkeeper Kassir as guest and he was Elated)
		q(62499),	-- triggered when Ember Court ended, Week 2 (had Kleia + Pelagos as guests and they were Elated)
		q(62515),	-- triggered when Ember Court ended, Week 2 (had Kleia + Pelagos as guests and they were Elated)
		q(62500),	-- triggered when Ember Court ended, Week 4 (had Plague Deviser Marileth as guest and he was elated)
		q(62516),	-- triggered when Ember Court ended, Week 4 (had Plague Deviser Marileth as guest and he was elated)
		q(62498),	-- triggered when Ember Court ended, Week 5 (had Grandmaster Vole as guest and he was elated)
		q(62514),	-- triggered when Ember Court ended, Week 5 (had Grandmaster Vole as guest and he was elated)
					-- Ember Court End - (Choofa:Elated / Alexander Mograine:Miserable / Grandmaster Vole:Elated)
		q(62504),	-- triggered when Ember Court ended, First Lady Moonberry Elated & "Messy" at Max?
		q(62519),	-- triggered when Ember Court ended, First Lady Moonberry Elated & "Messy" at Max?
		q(62497),	-- triggered when Ember Court ended, Week 6 (Droman Aliothe and Sika as guests and they were elated)
		q(62501),	-- triggered when Ember Court ended, Week 6 (Droman Aliothe and Sika as guests and they were elated)
		q(62513),	-- triggered when Ember Court ended, Week 6 (Droman Aliothe and Sika as guests and they were elated)
		q(62517),	-- triggered when Ember Court ended, Week 6 (Droman Aliothe and Sika as guests and they were elated)
		q(62528),	-- triggered when Ember Court Ended, i give up on tracking weeks, but had Kleia+Pelagos and Cryptkeeper Kassir as guests and they were Elated.  no previous K+P/Cryptkeeper quests triggered
		q(62508),	-- Ember Court End - (Alexandros Mograine:Elated / Droman Aliothe: Uncomfortable / Sika: Elated - got Alexandros Mograine criteria for People Pleaser + Be Our Guest, possibly that, since i'd done ECs with the other 2 before)
		q(62490),	-- Ember Court End - (Droman Aliothe:Elated / Cryptkeeper Kassir:Elated / Polemarch Adrestes:Elated / The Countess:Elated)
		q(62491),	-- Ember Court End - (Choofa:Elated / Alexander Mograine:Miserable / Grandmaster Vole:Elated)
		q(62495),	-- Ember Court End - (Choofa:Elated / Alexander Mograine:Miserable / Grandmaster Vole:Elated)
		q(62511),	-- Ember Court End - (Choofa:Elated / Alexander Mograine:Miserable / Grandmaster Vole:Elated)
		q(62492),	-- Ember Court End - (Choofa:Elated / Grandmaster Vole:Elated / Hunt-Captain Korayn:Elated)
		q(62506),	-- Ember Court End - (Droman Aliothe:Elated / Cryptkeeper Kassir:Elated / Polemarch Adrestes:Elated / The Countess:Elated)
		q(62509),	-- Ember Court End - (Choofa:Elated / Grandmaster Vole:Elated / Hunt-Captain Korayn:Elated)
		q(62522),	-- Ember Court End - (Choofa:Elated / Grandmaster Vole:Elated / Hunt-Captain Korayn:Elated)
		q(62489),	-- Ember Court End - (Kleia&Pelagos / Mikanikos / Alexandros / Sika, all elated - Mikanikos only one i hadn't done before.  also got We Happy Few, so possibly one of these is related to that) - next week's automatic assigned pickups were Choofa, Droman Aliothe, Rendle and Cudgelface, and Lady Moonberry
		q(62505),	-- ""
		q(62487),	-- Ember Court End - Baroness/H-C K/Choofa/Stonehead Elated
		q(62503),	-- Ember Court End - Baroness/H-C K/Choofa/Stonehead Elated
		q(62488),	-- Ember Court End - (Lady Moonberry / Rendle&Cudgelface as first-time guests, Elated and Very Happy respectively, had Casual maxed)
		q(62494),	-- ""
		q(62518),	-- ""
		q(62527),	-- ""
		q(62493),	-- Ember Court End (The Countess / Polemarch Adrestes as first-time guests, both Elated)
		q(62510),	-- ""
		q(61731),	-- Ember Court - after completing Magical Curios

		q(62668),	-- after looting a Dirty Glinting Object -- someone on discord got this when turning in Favor: She Had a Stone Heart, but i did not
		q(58059),	-- when choosing House Briarbane while on "Enacting Immediate Justice"
		q(58061),	-- when choosing House Primrose while on "Enacting Immediate Justice"
		q(58063),	-- when choosing House Darkvein while on "Enacting Immediate Justice"
		q(58064),	-- when choosing House Sourwine while on "Enacting Immediate Justice"
		q(58065),	-- when choosing House Duskmire while on "Enacting Immediate Justice"
		q(58066),	-- when choosing House Sinfang while on "Enacting Immediate Justice"
		q(62502),	-- triggered at the end of Ember Court, before collecting tribute/leaving (week 3)
		q(60607),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as assassin)	— incremental power/ability boosts each time you complete the WQ
		q(60610),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as assassin)
		q(60612),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor rank 2 WQ (as assassin)
		q(60636),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor rank 2 WQ (as assassin)
		q(60608),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
		q(60611),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
		q(60613),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
		q(62460),	-- triggered when completing #60601, "Darkwing Drills," Anima Conductor Rank 2 WQ (as aggressor)
		q(63454),	-- triggers when turning in "Return Lost Souls" (spellID 348839 & 348842 & 348845 & 348848)
		q(59744),	-- when opening the Battered Chest while on Repair and Restore
		q(60302),	-- when channeling anima to Dominance Keep for the first time
		q(62533),	-- when completing 'Sootible Hat: Pink Party Hat' (62556)
		q(62534),	-- when completing 'Sootible Hat: Pink Party Hat' (62556) (2nd time)
		q(63354),	-- when completing 'Sootible Hat: Pink Party Hat' (62556)
		q(62531),	-- when completing 'Sootible Hat: Crown of the Righteous' (62559)
		q(63356),	-- when completing 'Sootible Hat: Crown of the Righteous' (62559)
		q(60301),	-- channeling anima to The Shrouded Asylum for the first time
		q(61224),	-- "Ashen Urn" buff from Anima Conductor
		q(61197),	-- "Mobile Mirror Set" buff from Anima Conductor
		q(61210),	-- "Thirst for Anima" buff from Anima Conductor
		q(61577),	-- triggered when turning in #62174, "A Proper Cover"
		q(62532),	-- think this was from doing the Sootible Hat: Pink Party Hat quest
		q(63355),	-- think this was from doing the Sootible Hat: Fae Revel Mask quest (these 2 may be swapped/opposite, they both popped at once)

		-- 9.1 PTR
		q(64274),	-- triggered when logging in on 4/30/21 - ptr.wowhead.com says this is a tracking quest for "NPC #179868 slain (5)" and "Dusklight Matriarch [id #179871] slain."  i couldn't see anything on the map that was attached to this quest ID so idk!!  there IS a WQ up in the maw, but it's 64273, not 64274.  but possibly this is tied to the active status of a maw wq, not sure
		q(64376),	-- tracking quest that automatically accepted when i flew in to Korthia on 5/11/21 - supposedly related to the Darkmaul mount
		q(64262),	-- triggered when turning in 'Charge of the Covenants' (questID 64007) (spellID 356441)
		q(64536),	-- looting Maldraxxus Larva Shell (300 Catalogued Research)

		-- Unknown?
		q(64655, {["timeline"] = {ADDED_9_1_0}}),	-- unsure precisely what triggers this - it was added late in the PTR cycle and popped originally in Korthia.  popped soon after i logged in on my main on retail
	})),

	------------------
	--      DF      --
	------------------
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(GROUP_FINDER, {
			q(72187),	-- LFGDungeons - DF - Heroic Random - 1st
			q(72188),	-- LFGDungeons - DF - Heroic Random - Nth
			q(72181),	-- LFGDungeons - DF - Normal Random - 1st
			q(72182),	-- LFGDungeons - DF - Normal Random - Nth
			q(72184),	-- LFGDungeons - DF - Raid Finder - 1st
			q(72185),	-- LFGDungeons - DF - Raid Finder - Nth
			q(72535),	-- Dragonflight (61-69) E
			q(72536),	-- Dragonflight (61-69) E
			q(72537),	-- Dragonflight (61-69) E
			q(72538),	-- Dragonflight (61-69) E
			q(72539),	-- Dragonflight (61-69) E
			q(72548),	-- Dragonflight (61-69) E
			q(72549),	-- Dragonflight (61-69) E
			q(72550),	-- Dragonflight (61-69) E
			q(72619),	-- Dragonflight (61-69) E
			q(72620),	-- Dragonflight (61-69) E
			q(72621),	-- Dragonflight (61-69) E
			q(72622),	-- Dragonflight (61-69) E
			q(72623),	-- Dragonflight (61-69) E
			q(70715),	-- Dragonflight (70) E
			q(70716),	-- Dragonflight (70) E
			q(70717),	-- Dragonflight (70) E
			q(72540),	-- Dragonflight (70) E
			q(72541),	-- Dragonflight (70) E
			q(72542),	-- Dragonflight (70) E
			q(72543),	-- Dragonflight (70) E
			q(72544),	-- Dragonflight (70) E
			q(72555),	-- Dragonflight (70) E
			q(72556),	-- Dragonflight (70) E
			q(72557),	-- Dragonflight (70) E
			q(72563),	-- Dragonflight (70) E
			q(72564),	-- Dragonflight (70) E
			q(72565),	-- Dragonflight (70) E
			q(72566),	-- Dragonflight (70) E
			q(72567),	-- Dragonflight (70) E
			q(72570),	-- Dragonflight (70) E
			q(72571),	-- Dragonflight (70) E
			q(72572),	-- Dragonflight (70) E
			q(72573),	-- Dragonflight (70) E
			q(72574),	-- Dragonflight (70) E
			q(72575),	-- Dragonflight (70) E
			q(72576),	-- Dragonflight (70) E
			q(72577),	-- Dragonflight (70) E
			q(72578),	-- Dragonflight (70) E
			q(72579),	-- Dragonflight (70) E
			q(72580),	-- Dragonflight (70) E
			q(72581),	-- Dragonflight (70) E
			q(72582),	-- Dragonflight (70) E
			q(72583),	-- Dragonflight (70) E
			q(72624),	-- Dragonflight (70) E
			q(72625),	-- Dragonflight (70) E
			q(72626),	-- Dragonflight (70) E
			q(72627),	-- Dragonflight (70) E
			q(72628),	-- Dragonflight (70) E
			q(72629),	-- Dragonflight (70) E
			q(72630),	-- Dragonflight (70) E
			q(72631),	-- Dragonflight (70) E
			q(72816),	-- Dragonflight (70) E
			q(72817),	-- Dragonflight (70) E
			q(72818),	-- Dragonflight (70) E
			q(78763, {["timeline"] = {ADDED_10_2_0}}),	-- Dragonflight (70) E
			q(78764, {["timeline"] = {ADDED_10_2_0}}),	-- Dragonflight (70) E
			q(78765, {["timeline"] = {ADDED_10_2_0}}),	-- Dragonflight (70) E
			q(78766, {["timeline"] = {ADDED_10_2_0}}),	-- Dragonflight (70) E
			q(78767, {["timeline"] = {ADDED_10_2_0}}),	-- Dragonflight (70) E
			q(72819),	-- Shadowlands (60) E
			q(72820),	-- Shadowlands (60) E
			q(72821),	-- Shadowlands (60) E
		}),
		n(PVP, {
			q(79332, {["timeline"] = {ADDED_10_2_0}, ["repeatable"] = true}),	-- Triggers after winning a Brawl: Battleground Blitz (possibly only when theres an elistment bonus?)
		}),
		applyevent(EVENTS.TIMEWALKING, n(TIMEWALKING_HEADER, {
			q(78204, {["timeline"] = {ADDED_10_1_7}}),	-- Gain Mastery of Timeways for 5 weeks during Turbulent Timeways I (spellID 423861)
		})),
	})),

	------------------
	--     TWW      --
	------------------
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(GROUP_FINDER, {
			q(39751, {["timeline"] = { ADDED_11_0_5 }}),	-- Classic Timewalking LFG completion
			q(83707),	-- LFGDungeons - 11.0 The War Within - Raid Finder - 1st
			q(83708),	-- LFGDungeons - 11.0 The War Within - Raid Finder - Nth
			q(78169),	-- LFGDungeons - Timewalking "Heroic" Random - 1st
			q(86493, {["timeline"] = { ADDED_11_0_7 }}),	-- LFGDungeons - Timewalking "Heroic" Random - 1st
			q(86494, {["timeline"] = { ADDED_11_0_7 }}),	-- LFGDungeons - Timewalking "Heroic" Random - Nth
			q(83021),	-- LFGDungeons - TWW - Normal Random - 1st
			q(83022),	-- LFGDungeons - TWW - Normal Random - Nth
			q(83027),	-- LFGDungeons - TWW - Heroic Random - 1st
			q(83026),	-- LFGDungeons - TWW - Heroic Random - Nth
			q(82549),	-- The War Within (71-79) E
			q(82550),	-- The War Within (71-79) E
			q(82551),	-- The War Within (71-79) E
			q(82553),	-- The War Within (71-79) E
			q(82554),	-- The War Within (71-79) E
			q(82598),	-- The War Within (71-79) E
			q(82599),	-- The War Within (71-79) E
			q(82600),	-- The War Within (71-79) E
			q(82606),	-- The War Within (71-79) E
			q(82607),	-- The War Within (71-79) E
			q(82608),	-- The War Within (71-79) E
			q(82609),	-- The War Within (71-79) E
			q(82610),	-- The War Within (71-79) E
			q(82544),	-- The War Within (80) E
			q(82545),	-- The War Within (80) E
			q(82546),	-- The War Within (80) E
			q(82547),	-- The War Within (80) E
			q(82548),	-- The War Within (80) E
			q(82555),	-- The War Within (80) E
			q(82556),	-- The War Within (80) E
			q(82567),	-- The War Within (80) E
			q(82568),	-- The War Within (80) E
			q(82569),	-- The War Within (80) E
			q(82570),	-- The War Within (80) E
			q(82573),	-- The War Within (80) E
			q(82574),	-- The War Within (80) E
			q(82575),	-- The War Within (80) E
			q(82576),	-- The War Within (80) E
			q(82577),	-- The War Within (80) E
			q(82578),	-- The War Within (80) E
			q(82587),	-- The War Within (80) E
			q(82588),	-- The War Within (80) E
			q(82589),	-- The War Within (80) E
			q(82590),	-- The War Within (80) E
			q(82591),	-- The War Within (80) E
			q(82592),	-- The War Within (80) E
			q(82593),	-- The War Within (80) E
			q(82594),	-- The War Within (80) E
			q(82595),	-- The War Within (80) E
			q(82597),	-- The War Within (80) E
			q(82601),	-- The War Within (80) E
			q(82602),	-- The War Within (80) E
			q(82603),	-- The War Within (80) E
			q(82604),	-- The War Within (80) E
			q(82605),	-- The War Within (80) E
			q(82611),	-- The War Within (80) E
			q(82612),	-- The War Within (80) E
			q(82613),	-- The War Within (80) E
			q(82618),	-- The War Within (80) E
			q(82619),	-- The War Within (80) E
			q(82620),	-- The War Within (80) E
			q(82621),	-- The War Within (80) E
			q(82622),	-- The War Within (80) E
			q(82623),	-- The War Within (80) E
			q(82624),	-- The War Within (80) E
			q(82625),	-- The War Within (80) E
		}),
		applyevent(EVENTS.TIMEWALKING, n(TIMEWALKING_HEADER, {
			q(85877, {["timeline"] = {ADDED_11_0_7}}),	-- Gain Mastery of Timeways for 5 weeks during Turbulent Timeways II (spellID 471544)
		})),
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
		q(26522),	-- Faces of Evil - completed with 26357 & 26521
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
		q(31373),	-- The Order of the Cloud Serpent - completed with quest 32461
		q(31375),	-- The Order of the Cloud Serpent - completed with quest 32461
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
		q(38931),	-- Hero's Call: The Hinterlands! - completed with quest 26542
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
		q(54781),	-- UNUSED
		q(37812),	-- UNUSED: Test Race: 1 Marker
		q(38845),	-- Unused
		--q(59038),	-- Got suddenly appeared. Same time as I was chatting. We finished Temple of Jade Serpent, lvl 16, 22, 46 (I'm the 46). Goblin in group with Vulpera Party Sync enabled
		--q(63389),	-- Person in Errors doesnt really remember
		--q(63390), -- Person in Errors doesnt really remember
		--q(63391), -- Person in Errors doesnt really remember
		--q(54324),	-- Triggered in BfA
		--q(54317),	-- BfA Alliance Stormsong "Invasion"
		--q(62521),	-- unknown tracking
		--q(62571),	-- Flying in Maldraxxus
		--q(62397),	-- Unknown
		--q(45775),	-- Discord: this week's archaeology quest. when I either turned it in at the blood elf in suramar, or when I took the follow up quest. dont remember which. 7 April 2022 // archaeology quest in Suramar 2023 April 4
		q(54422),	-- After winning a PVP pet battle I received a clickable item that added a mission to the BFA mission table:[A Shady Character] has been added to your Mission Table.

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
		q(13959),	-- Old "Back To The Orphanage" quest, triggers together with modern version (Oracle quest during Children's Week)
		q(13960),	-- Old "Back To The Orphanage" quest, triggers together with modern version (Wolvar quest during Children's Week)
		q(28761),	-- obsolete "Honor the Flame" quest according to Wowhead, triggered together with "Honor the Flame" 11834 in Winterspring
		q(11937),	-- FLAG - all torch return quests are complete. Marked as no longer available on Wowhead but triggered for me when I returned all 4 torches first time on new char. It doesn't reset yearly though cause I didn't get it on my main
		q(47465),	-- Bonus roll on Azuregos World boss during WoW 15th anniversary in 2019
		q(47464),	-- Bonus roll on Kazzak World boss during WoW 15th anniversary in 2019
		q(47466),	-- Bonus roll on Emeriss during anniversary event
		q(28997),	-- triggered together with 28961, Surwich Candy Bucket
		q(39828),	-- Horseman and Guards Shared Criteria, triggered when I applied Creepy Crawlers garrison decoration
	}),
});