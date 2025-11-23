-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(ACHIEVEMENTS, {
		ach(42312),	-- Artifact, Remixed
		ach(42502),	-- Artifact, Remixed II
		ach(42503),	-- Artifact, Remixed III
		ach(42565, {	-- Bringing Order to the Isles
		-- Added with Phase3 Legion Remix Release -- Gold 5th Nov 2025
			["description"] = "Requires completion of all 12 Class Order Hall campaigns, including the Broken Shore Chapter up until you receive your Class Mount.",
			["groups"] = {
				crit(108360, {["_quests"] = { 46207 }}),	-- (Warrior)
				crit(108376, {["_quests"] = { 45770 }}),	-- (Paladin)
				crit(108651, {["_quests"] = { 46337 }}),	-- (Hunter)
				crit(108655, {["_quests"] = { 46089 }}),	-- (Rogue)
				crit(108654, {["_quests"] = { 45789 }}),	-- (Priest)
				crit(108648, {["_quests"] = { 46813 }}),	-- (Death Knight)
				crit(108656, {["_quests"] = { 46792 }}),	-- (Shaman)
				crit(108652, {["_quests"] = { 45354 }}),	-- (Mage)
				crit(108657, {["_quests"] = { 46243 }}),	-- (Warlock)
				crit(108653, {["_quests"] = { 46350 }}),	-- (Monk)
				crit(108650, {["_quests"] = { 46319 }}),	-- (Druid)
				crit(108649, {["_quests"] = { 46334 }}),	-- (Demon Hunter)
			},
		}),
		ach(42624),	-- Broken Isles World Quests I
		ach(42539),	-- Broken Isles World Quests II
		ach(42570),	-- Broken Isles World Quests III
		ach(42555),	-- Broken Isles World Quests IV
		ach(42674, {	-- Broken Isles World Quests V
			i(250693, {	-- Altar of the Corrupted Flames (DECOR!)
				["timeline"] = { ADDED_11_2_7 },
			}),
		}),
		ach(42807),	-- Cloudy With a Chance of Infernals
		ach(42673, {	-- Defending the Broken Isles I
			["maps"] = {
				VALSHARAH,
				HIGHMOUNTAIN,
				STORMHEIM,
				AZSUNA,
				BROKEN_ISLES,
				865,	-- Stormheim Invasion Scenario: Upper Ship Floor
				866,	-- Stormheim Invasion Scenario: Lower Ship Floor
				696,	-- Stormheim (scenario)
				1642,	-- Val'sharah (Scenario)
			},
		}),
		ach(42672, {	-- Defending the Broken Isles II
			["maps"] = {
				VALSHARAH,
				HIGHMOUNTAIN,
				STORMHEIM,
				AZSUNA,
				BROKEN_ISLES,
				865,	-- Stormheim Invasion Scenario: Upper Ship Floor
				866,	-- Stormheim Invasion Scenario: Lower Ship Floor
				696,	-- Stormheim (scenario)
				1642,	-- Val'sharah (Scenario)
			},
		}),
		ach(42675, {	-- Defending the Broken Isles III
			["maps"] = {
				VALSHARAH,
				HIGHMOUNTAIN,
				STORMHEIM,
				AZSUNA,
				BROKEN_ISLES,
				865,	-- Stormheim Invasion Scenario: Upper Ship Floor
				866,	-- Stormheim Invasion Scenario: Lower Ship Floor
				696,	-- Stormheim (scenario)
				1642,	-- Val'sharah (Scenario)
			},
			["groups"] = {
				i(250404, {	-- Hanging Felsteel Chain (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
				i(250622, {	-- Vertical Felsteel Chain (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			},
		}),
		ach(42593),	-- Pillars of Creation
		ach(61339, {	-- Putting the Finite in Infinite
			["description"] = "Earned upon reaching 999 Infinite Power or completing a +49 or higher Keystone in time.",
		}),
		ach(42313),	-- Remixing Time
		ach(60959),	-- Tenured in the Timeways I
		ach(60960),	-- Tenured in the Timeways II
		ach(60961),	-- Tenured in the Timeways III
		ach(60935, {	-- Tenured in the Timeways IV
			title(646),	-- Chronoscholar (TITLE!)
		}),
		ach(42301, {	-- Timerunner
			title(551),	-- Timerunner (TITLE!)
		}),
		ach(42685, {	-- Timerunner: Death Knight
			i(252954),	-- Felscorned Reins of the Vilebrood Vanquisher (MOUNT!)
		}),
		ach(61087, {	-- Timerunner: Demon Hunter
			i(253013),	-- Slayer's Reins of the Felscorned Shrieker (MOUNT!)
		}),
		ach(61086, {	-- Timerunner: Druid
			i(253024),	-- Feldruid's Scornwing Idol (MOUNT!)
		}),
		ach(42687, {	-- Timerunner: Hunter
			i(253025),	-- Reins of the Felscorned Wolfhawk (MOUNT!)
		}),
		ach(61089, {	-- Timerunner: Mage
			i(253026),	-- Archmage's Felscorned Disc (MOUNT!)
		}),
		ach(61085, {	-- Timerunner: Monk
			i(253027),	-- Felscorned Grandmaster's Bell (MOUNT!)
		}),
		ach(42504, {	-- Timerunner: Paladin
			i(253028),	-- Reins of the Highlord's Felscorned Charger (MOUNT!)
		}),
		ach(61088, {	-- Timerunner: Priest
			i(253029),	-- Felscorned Seeker's Whistle (MOUNT!)
		}),
		ach(61084, {	-- Timerunner: Rogue
			i(253030),	-- Shadowblade's Reins of Felscorned Portent (MOUNT!)
		}),
		ach(42686, {	-- Timerunner: Shaman
			i(253031),	-- Felscorned Tempest Totem (MOUNT!)
		}),
		ach(61090, {	-- Timerunner: Warlock
			i(253032),	-- Felscorned Reins of the Netherlord's Dreadsteed (MOUNT!)
		}),
		ach(42684, {	-- Timerunner: Warrior
			i(253033),	-- Iron Reins of the Felscorned War Wrym (MOUNT!)
		}),
		ach(61337, {	-- To Fel and Back
			iensemble(253343),	-- Ensemble: Sargerei Commander's Felscorned Regalia
		}),
		ach(42314),	-- Unlimited Power
		ach(42315),	-- Unlimited Power II
		ach(42505),	-- Unlimited Power III
		ach(42506),	-- Unlimited Power IV
		ach(42507),	-- Unlimited Power V
		ach(42508),	-- Unlimited Power VI
		ach(42509),	-- Unlimited Power VII
		ach(42510),	-- Unlimited Power VIII
		ach(42511),	-- Unlimited Power IX
		ach(42512),	-- Unlimited Power X
		ach(42513),	-- Unlimited Power XI
		ach(42514),	-- Unlimited Power XII

		------ Heroic World Tier ------
		ach(61174),	-- Building a Heroic Army
		ach(61057),	-- Heroic Broken Isles World Quests I
		ach(61056),	-- Heroic Broken Isles World Quests II
		ach(61054, {	-- Heroic Broken Isles World Quests III
			i(250689, {	-- Legion Torture Rack (DECOR!)
				["timeline"] = { ADDED_11_2_7 },
			}),
		}),
		ach(61070, {	-- Heroic Broken Isles World Quests IV
			iensemble(257104),	-- Ensemble: Sargerei Commander's Voidscarred Regalia
		}),
		ach(61059),	-- Legionslayer I
		ach(61058),	-- Legionslayer II
		ach(61053),	-- Legionslayer III
		ach(61071),	-- Legionslayer IV
		ach(61323),	-- Legionslayer V
		ach(61061, {	-- Power of the Obelisks I
			["cr"] = 246685,	-- Timewarped Obelisk
		}),
		ach(61060, {	-- Power of the Obelisks II
			["cr"] = 246685,	-- Timewarped Obelisk
			["groups"] = {
				i(250405, {	-- Legion’s Fel Torch (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			},
		}),
		ach(61055, {	-- Power of the Obelisks III
			["cr"] = 246685,	-- Timewarped Obelisk
		}),
		ach(61072, {	-- Power of the Obelisks IV
			["cr"] = 246685,	-- Timewarped Obelisk
		}),
		ach(42699),	-- You Were Not Prepared!
	}),
})))
