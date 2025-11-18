--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
STRANGLETHORN_FISHING_EXTRAVAGANZA_HEADER = createHeader({
	readable = "Stranglethorn Fishing Extravaganza",
	icon = [[_.asset("Holiday_STV_Fishing")]],
	eventID = EVENTS.STRANGLETHORN_FISHING_EXTRAVAGANZA,
	text = {
		en = "Stranglethorn Fishing Extravaganza",
		es = "Gran espectáculo de pesca de Tuercespina",
		de = "Anglerwettbewerb im Schlingendorntal",
		fr = "Concours de pêche de Strangleronce",
		it = "Gara di Pesca a Rovotorto",
		mx = "Gran espectáculo de pesca de Tuercespina",
		ko = "가시덤불 골짜기 낚시왕 선발대회",
		pt = "Festerê de Pesca da Selva do Espinhaço",
		ru = "Рыбомания Тернистой долины",
		cn = "荆棘谷钓鱼大赛",
		tw = "荊棘谷釣魚大賽",
	},
});

root(ROOTS.Holidays, applyevent(EVENTS.STRANGLETHORN_FISHING_EXTRAVAGANZA, n(STRANGLETHORN_FISHING_EXTRAVAGANZA_HEADER, {
	["description"] = "The Stranglethorn Fishing Extravaganza is a weekly fishing event held every Sunday in Stranglethorn Vale. There is a highly competitive fishing contest and a more casual rare fish turn-in for this event.",
	["maps"] = {
		-- #if AFTER CATA
		NORTHERN_STRANGLETHORN,
		THE_CAPE_OF_STRANGLETHORN,
		-- #else
		STRANGLETHORN_VALE,
		-- #endif
	},
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(306, {	-- Master Angler of Azeroth
				-- #if BEFORE WRATH
				["providers"] = {
					{ "i", 19970 },	-- Arcanite Fishing Pole
					{ "i", 19979 },	-- Hook of the Master Angler
				},
				-- #endif
				["requireSkill"] = FISHING,
			}),
		}),
		n(QUESTS, {
			q(8194, {	-- Apprentice Angler
				["qg"] = 15078,	-- Jang <Fishmaster Apprentice>
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["cost"] = {
					{ "i", 19807, 5 },	-- Speckled Tastyfish
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
			}),
			q(8229, {	-- Could I get a Fishing Flier?
				["qg"] = 15116,	-- Grinkle <Fishing Promoter>
				["coord"] = { 53.25, 70.65, ORGRIMMAR },
				["requireSkill"] = FISHING,
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(35, 35, 15),
				["groups"] = {
					i(19978),	-- Fishing Tournament!
				},
			}),
			q(8228, {	-- Could I get a Fishing Flier?
				["qg"] = 15119,	-- Barrus <Fishing Promoter>
				["coord"] = { 54.8, 63.1, STORMWIND_CITY },
				["requireSkill"] = FISHING,
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(35, 35, 15),
				["groups"] = {
					i(19978),	-- Fishing Tournament!
				},
			}),
			q(8193, {	-- Master Angler / Grand Prize (after 5.1.0)
				["qg"] = 15077,	-- Riggle Bassbait <Fishmaster>
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["cost"] = {
					{ "i", 19807, 40 },	-- Speckled Tastyfish
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
				["groups"] = {
					i(19970),	-- Arcanite Fishing Pole
					i(19979),	-- Hook of the Master Angler
					-- #if AFTER 5.1.0
					i(50287),	-- Boots of the Bay
					i(50255, {	-- Dread Pirate Ring
						["timeline"] = { ADDED_5_1_0, REMOVED_6_1_0 },
					}),
					i(122529, {	-- Dread Pirate Ring
						["timeline"] = { ADDED_6_1_0 },
					}),
					-- #endif
				},
			}),
			q(8225, {	-- Rare Fish - Brownell's Blue Striped Racer
				["qg"] = 15079,	-- Fishbot 5000
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["cost"] = {
					{ "i", 19803, 1 },	-- Brownell's Blue Striped Racer
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
				["groups"] = {
					i(19969),	-- Nat Pagle's Extreme Anglin' Boots
				},
			}),
			q(8224, {	-- Rare Fish - Dezian Angelfish
				["qg"] = 15079,	-- Fishbot 5000
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["cost"] = {
					{ "i", 19806, 1 },	-- Dezian Angelfish
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
				["groups"] = {
					i(19971),	-- High Test Eternium Fishing Line
				},
			}),
			q(8221, {	-- Rare Fish - Keefer's Angelfish
				["qg"] = 15079,	-- Fishbot 5000
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["cost"] = {
					{ "i", 19805, 1 },	-- Keefer's Angelfish
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
				["groups"] = {
					i(19972),	-- Lucky Fishing Hat
				},
			}),
			-- #if AFTER 5.1.0
			q(32435, {	-- Second Prize
				["qg"] = 15077,	-- Riggle Bassbait <Fishmaster>
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["timeline"] = { ADDED_5_1_0, REMOVED_7_1_0 },
				["cost"] = {
					{ "i", 19807, 40 },	-- Speckled Tastyfish
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
				["groups"] = {
					i(50287),	-- Boots of the Bay
					i(50255, {	-- Dread Pirate Ring
						["timeline"] = { ADDED_5_1_0, REMOVED_6_1_0 },
					}),
					i(122529, {	-- Dread Pirate Ring
						["timeline"] = { ADDED_6_1_0, REMOVED_7_1_0 },
					}),
					i(19971),	-- High Test Eternium Fishing Line
				},
			}),
			q(32436, {	-- Third Prize
				["qg"] = 15077,	-- Riggle Bassbait <Fishmaster>
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["timeline"] = { ADDED_5_1_0, REMOVED_7_1_0 },
				["cost"] = {
					{ "i", 19807, 40 },	-- Speckled Tastyfish
				},
				["requireSkill"] = FISHING,
				["repeatable"] = true,
				["groups"] = {
					i(19971),	-- High Test Eternium Fishing Line
				},
			}),
			-- #endif
			q(44765, {	-- Stranglethorn Fishing Extravaganza
				["qg"] = 15077,	-- Riggle Bassbait <Fishmaster>
				["coords"] = {
					-- #if AFTER CATA
					{ 41.4, 73.0, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 27.4, 76.9, STRANGLETHORN_VALE },
					-- #endif
				},
				["timeline"] = { ADDED_7_1_0 },
				["requireSkill"] = FISHING,
				["isWorldQuest"] = true,
				["groups"] = {
					i(19970),	-- Arcanite Fishing Pole
					i(50287),	-- Boots of the Bay,
					i(122529),	-- Dread Pirate Ring
					i(19979),	-- Hook of the Master Angler
					i(19971),	-- High Test Eternium Fishing Line
				},
			}),
		}),
		prof(FISHING, {
			-- #if AFTER 5.1.0
			n(SPECIAL, {
				["description"] = "Tastyfish and the other special event fish can be fished up from any pool within Stranglethorn for two hours once the event has started, even if winners have been found.",
				["providers"] = {
					{ "o", 180901 },	-- Bloodsail Wreckage
					{ "o", 216761 },	-- Mixed Ocean School
					{ "o", 216764 },	-- Sagefish School
				},
				["groups"] = {
					i(19803),	-- Brownell's Blue Striped Racer
					i(19806),	-- Dezian Queenfish
					i(19805),	-- Keefer's Angelfish
					i(19808, {	-- Rockhide Strongfish
						["description"] = 
							-- #if BEFORE LEGION
							"Keep this in your bank until Transmog is added, otherwise you'll need to obtain it again. Fair warning!",
							-- #elseif AFTER TWW
							"Keep this in your bank until the appearance can be learned again, otherwise you'll need to obtain it again. Fair warning!",
							-- #else
							nil,
							-- #endif
						-- #if AFTER TWW
						["collectible"] = false,	-- remove when Blizzard fix fish collection
						-- #endif
					}),
					i(19807),	-- Speckled Tastyfish
				},
			}),
			-- #else
			o(180248, {	-- School of Tastyfish
				i(19803),	-- Brownell's Blue Striped Racer
				i(19806),	-- Dezian Queenfish
				i(19805),	-- Keefer's Angelfish
				i(19808),	-- Rockhide Strongfish
				i(19807),	-- Speckled Tastyfish
			}),
			-- #endif
		}),
	},
})));
