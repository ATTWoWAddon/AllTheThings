---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(DORNOGAL, {
		n(QUESTS, {
			------ Season 1 ------
			q(82651, {	-- Omens Unified
				["providers"] = {
					{ "n", 223533 },	-- Custodian Khubon
					{ "i", 211297 },	-- Fractured Spark of Omens
				},
				["coord"] = { 49.8, 54.1, DORNOGAL },
				["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
				["groups"] = {
					i(211297),	-- Fractured Spark of Omens
				},
			}),
			q(82042, {	-- The Better Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
			}),
			q(82050, {	-- The Harbinger of Crests
				["sourceQuests"] = { 82042 },	-- The Better Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
				["groups"] = { i(221269) },	-- Crimson Valorstone
			}),
			q(82059, {	-- Transmutation Station
				["sourceQuests"] = { 82050 },	-- The Harbinger of Crests
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
				["groups"] = { i(221269) },	-- Crimson Valorstone
			}),
			------ Season 2 ------
			q(86369, {	-- A Sparkling Fortune
				["providers"] = {
					{ "n", 223533 },	-- Custodian Khubon
					{ "i", 230905 },	-- Fractured Spark of Fortunes
				},
				["coord"] = { 49.8, 54.1, DORNOGAL },
				["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
				["groups"] = {
					i(230905),	-- Fractured Spark of Fortunes
				},
			}),
			q(90660, {	-- A Golden Circumstance
				["sourceQuest"] = 86369,	-- A Sparkling Fortune
				["provider"] = { "n", 223533 },	-- Custodian Khubon
				["coord"] = { 49.8, 54.1, DORNOGAL },
				["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
				["groups"] = {
					i(230905),	-- Fractured Spark of Fortunes
				},
			}),
			q(86396, {	-- The Best Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
			}),
			q(86399, {	-- Don't Undermine the Crests
				["sourceQuests"] = { 86396 },	-- The Best Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
				["groups"] = {
					i(236953),	-- Crimson Valorstone
					i(231269),	-- Satchel of Carved Undermine Crests
				},
			}),
			q(86401, {	-- Crests Transmutation
				["sourceQuests"] = { 86399 },	-- Don't Undermine the Crests
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
				["groups"] = {
					i(236953),	-- Crimson Valorstone
					i(231269),	-- Satchel of Carved Undermine Crests
				},
			}),
			------ Season 3 ------
			q(91624, {	-- Spark of Starlight
				["providers"] = {
					{ "n", 223533 },	-- Custodian Khubon
					{ "i", 231757 },	-- Fractured Spark of Starlight
				},
				["timeline"] = { ADDED_11_2_0, REMOVED_12_0_1_LAUNCH },
				["groups"] = {
					i(231757),	-- Fractured Spark of Starlight
				},
			}),
			q(86363, {	-- The Better Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_2_0, REMOVED_12_0_1_LAUNCH },
			}),
			q(86364, {	-- Crests from the Ether
				["sourceQuests"] = { 86363 },	-- The Better Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_2_0, REMOVED_12_0_1_LAUNCH },
				["groups"] = {
					i(236953),	-- Crimson Valorstone
				},
			}),
			q(86365, {	-- Crest Transmutation
				["sourceQuests"] = { 86363 },	-- The Better Part of Valorstones
				["provider"] = { "n", 219226 },	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["timeline"] = { ADDED_11_2_0, REMOVED_12_0_1_LAUNCH },
				["groups"] = {
					i(236953),	-- Crimson Valorstone
				},
			}),
			------ Miscellaneous ------
			q(82747, {	-- Crossroads Plaza
				["provider"] = { "n", 224544 },	-- Rannida
				["coord"] = { 46.8, 33.0, DORNOGAL },
				["isBreadcrumb"] = true,	-- but need to confirm
			}),
			q(84438, {	-- Easy Win
				["provider"] = { "n", 229128 },	-- Valeera Sanguinar
				["coord"] = { 61.0, 5.4, DORNOGAL },
				["classes"] = { MAGE },
				["groups"] = {
					i(227710),	-- Tome of Polymorph: Mosswool (CI!)
				},
			}),
			q(83275, {	-- Gear Enchanting
				["provider"] = { "n", 226287 },	-- Ellerdin
				["coord"] = { 51.8, 48.7, DORNOGAL },
				["groups"] = {
					i(225652),	-- Enchant Ring - Glimmering Haste
					i(226245),	-- Hollow Ring
				},
			}),
			q(84490, {	-- The Great Vault
				["provider"] = { "n", 229336 },	-- Overseer Hyggred
				["coord"] = { 52.1, 45.5, DORNOGAL },
				["groups"] = {
					i(228378),	-- Pristine Council's Seal (QI!)
				},
			}),
			q(82296, {	-- The Power of Creation
				["provider"] = { "n", 223533 },	-- Custodian Khubon
				["coord"] = { 49.8, 54.3, DORNOGAL },
			}),
		}),
		------ Alts ------
		n(QUESTS, sharedData({
			["lockCriteria"] = { 1, "questID", 79197 },	-- Surface Bound (final quest of pre-lvl 80 Campaign / Acct story unlock)
		},{
			q(84367, {	-- A Time to Come Together
				-- ["sourceQuests"] = {  },	-- Auto-accepted after reaching 80 on an alt who has not done the leveling campaign?
				-- breadcrumb to the lvl 80 campaign, test if locked when skipped
				["provider"] = { "n", 206017 },	-- Brann Bronzebeard
				["coord"] = { 47.4, 44.4, DORNOGAL },
			}),
			q(84365, {	-- Something on the Horizon
				-- ["sourceQuests"] = { 83621 },	-- HQT (I'm not sure if there any other way to get it)
				["provider"] = { "n", 206017 },	-- Brann Bronzebeard
				["coord"] = { 47.4, 44.4, DORNOGAL },
			}),
			q(83543, {	-- Adventuring in Khaz Algar
				-- ["sourceQuests"] = { 83621 },	-- HQT (I'm not sure if there any other way to get it)
				["provider"] = { "n", 206017 },	-- Brann Bronzebeard
				["coord"] = { 47.4, 44.4, DORNOGAL },
			}),
			q(83552, {	-- Azj-Kahet
				-- ["sourceQuests"] = { 83621 },
				["provider"] = { "n", 227038 },	-- Scouting Map
				["coord"] = { 48.2, 43.7, DORNOGAL },
				-- ["isBreadcrumb"] = true,	-- ?
			}),
			q(83551, {	-- Hallowfall
				-- ["sourceQuests"] = { 83621 },
				["provider"] = { "n", 227038 },	-- Scouting Map
				["coord"] = { 48.2, 43.7, DORNOGAL },
				-- ["isBreadcrumb"] = true,	-- ?
			}),
			q(83548, {	-- Isle of Dorn
				-- ["sourceQuests"] = { 83621 },
				["provider"] = { "n", 227038 },	-- Scouting Map
				["coord"] = { 48.2, 43.7, DORNOGAL },
				-- ["isBreadcrumb"] = true,	-- ?
			}),
			q(83550, {	-- The Ringing Deeps
				-- ["sourceQuests"] = { 83621 },
				["provider"] = { "n", 227038 },	-- Scouting Map
				["coord"] = { 48.2, 43.7, DORNOGAL },
				-- ["isBreadcrumb"] = true,	-- ?
			}),
		})),
		n(QUESTS, sharedData({
			["isWeekly"] = true,
		}, {
			------ Dungeons ------
			q(83465, {	-- Ara-Kara, City of Echoes
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			q(83436, {	-- Cinderbrew Meadery
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			q(83469, {	-- City of Threads
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			q(83443, {	-- Darkflame Cleft
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			q(91442, {	-- Eco-Dome Al'dani
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
				["timeline"] = { ADDED_11_2_5 },
			}),
			q(86203, {	-- Operation: Floodgate
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
				["timeline"] = { ADDED_11_1_0 },
			}),
			q(83458, {	-- Priory of the Sacred Flame
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			q(83459, {	-- The Dawnbreaker
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.7, 48.3, DORNOGAL },
			}),
			q(83432, {	-- The Rookery
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			q(83457, {	-- The Stonevault
				["provider"] = { "n", 226623 },	-- Biergoth
				["coord"] = { 46.6, 48.2, DORNOGAL },
			}),
			------ Archives ------
			q(82678, {	-- Archives: The First Disk
				["provider"] = { "n", 226511 },	-- High Speaker Brinthe
				["coord"] = { 46.3, 49.3, DORNOGAL },
				["maps"] = { VAULT_OF_MEMORY },
				["groups"] = {
					i(225741),	-- Titan Disc Fragment (QI!)
				},
			}),
			q(82679, {	-- Archives: Seeking History
				-- ["sourceQuests"] = { 82678 },	-- Archives: The First Disk (TODO: or just rng weekly?)
				["provider"] = { "n", 226511 },	-- High Speaker Brinthe
				["coord"] = { 46.3, 49.3, DORNOGAL },
				["maps"] = { VAULT_OF_MEMORY },
				["groups"] = {
					i(225741),	-- Titan Disc Fragment (QI!)
				},
			}),
			------ Season 2 ------
			q(91205, {	-- Ultra Prime Deluxe Turbo-Boost: Powerhouse Challenges (this quest was also reset by blizz for some reason)
				["provider"] = { "o", 525434 },	-- Bounty: Liberation of Undermine
				["coord"] = { 52.4, 45.9, DORNOGAL },
				["timeline"] = { ADDED_11_1_5, REMOVED_11_2_0 },
				["groups"] = { i(237502) },	-- Puzzling Cartel Chip x3
			}),
			q(89039, {	-- Turbo-Boost: Powerhouse Challenges
				["provider"] = { "o", 525434 },	-- Bounty: Liberation of Undermine
				["coord"] = { 52.4, 45.9, DORNOGAL },
				["timeline"] = { ADDED_11_1_5, REMOVED_11_2_0 },
				["groups"] = { i(237502) },	-- Puzzling Cartel Chip
			}),
			------ Season 3 ------
			q(92331, {	-- Turbo-Boost: Trade Must Flow
				["provider"] = { "o", 571402 },	-- Bounty: Most Dangerous Foes
				["coord"] = { 52.4, 46.0, DORNOGAL },
				["timeline"] = { ADDED_11_2_5 },
				["groups"] = { i(250741) },	-- Puzzling Cartel Chip
			}),
			q(92332, {	-- Turbo-Boost: Infinite Growth
				["provider"] = { "o", 571402 },	-- Bounty: Most Dangerous Foes
				["coord"] = { 52.4, 46.0, DORNOGAL },
				["timeline"] = { ADDED_11_2_5 },
				["groups"] = { i(250741) },	-- Puzzling Cartel Chip
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(DORNOGAL, {
			n(QUESTS, {
				-- q(79326),	-- after turn in questID 82153 (Embassies and Envoys), [DNT] Push RP Event (spellID 362105)
				-- ^ seems like currently fire as 79328 instead with name 'Embassies and Envoys', could be horde counter part?
				q(80538),	-- after turn in questID 79525 (Report to the Councilward), Tracking Quest [DNT] (spellID 441842)
				q(85940),	-- Entering Dornogal through portal or campaign skip.
				q(86586),	-- Ask an Oathsworn Peacekeeper "Can you please do that somewhere else?" by the training dummies at the gates of Dornogal.
				-- Archives
				q(83450),	-- Play Scene (spellID 455916), after finished Archives weekly (1st week) / unlocked new log entry
				q(83460),	-- Play Scene (spellID 455918), after finished Archives weekly (2nd week) / unlocked new log entry
				q(83462),	-- Play Scene (spellID 455920), after finished Archives weekly (3rd week) / unlocked new log entry
				q(83463),	-- Play Scene (spellID 455921), after finished Archives weekly (4th week) / unlocked new log entry
				q(83464),	-- Play Scene (spellID 455922), after finished Archives weekly (5th week) / unlocked new log entry
				q(84669),	-- after accept questID 82679 (Archives: Seeking History) (2nd week)
				q(84670),	-- after turn in weekly delve quest (was 82746 - Delves: Breaking Tough to Loot Stuff - for this one)
				q(84671),	-- after accept questID 82679 (Archives: Seeking History) / also after 82746 (Delves: Breaking Tough to Loot Stuff)
				q(91306, {["timeline"] = {ADDED_11_1_7}}),	-- Flags first entry to Dornogal, cause unknown
				-- Alt intro skip
				q(84366),	-- Skipping the leveling campaign from Brann in Dornogal
				q(83621),	-- can be used right after turn in 81930 or 78713 (The War Within)
				-- 82059 (Transmutation Station)
				q(65440),	-- provided 15x Carved Harbinger Crest (spellID 446407 Satchel of Carved Harbinger Crests)
				-- 83275 (Gear Enchanting)
				q(85588),	-- provided ring + enchant (spellID 469629)
				-- 86401 (Crests Transmutation)
				q(86400, {["timeline"] = {ADDED_11_1_0}}),	-- provided 15x Carved Undermine Crest
				-- 86365 (Crests Transmutation)
				q(91744, {["timeline"] = {ADDED_11_2_0}}),	-- provided 15x Carved Ethereal Crest
				-- 11.2?
				-- q(92487, {["timeline"] = {ADDED_11_2_0}}),	-- After turn in disk weekly quest, could be coffer key shard lockout?
				hqt(93399, {
					["name"] = "We are all frustrated, Danath.",
					["provider"] = { "n", 234562 },	-- Danath Trollbane
					["coord"] = { 46.3, 49.6, DORNOGAL },
					["lockCriteria"] = { 1, "questID", 84638 },	-- Trouble in the Highlands [assumed]
					["timeline"] = { ADDED_11_2_7 },
					["repeatable"] = true,
				}),
			}),
		}),
	}),
}));
