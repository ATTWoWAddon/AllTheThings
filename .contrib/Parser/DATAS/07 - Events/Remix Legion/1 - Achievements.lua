-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(ACHIEVEMENTS, {
		ach(42312),	-- Artifact, Remixed
		ach(42502),	-- Artifact, Remixed II
		ach(42503),	-- Artifact, Remixed III
		ach(42565),	-- Bringing Order to the Isles
		ach(42624, {	-- Broken Isles World Quests I
			--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
			--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Altar of the Corrupted Flames (DECOR!)
		}),
		ach(42539),	-- Broken Isles World Quests II
		ach(42570),	-- Broken Isles World Quests III
		ach(42555),	-- Broken Isles World Quests IV
		ach(42674),	-- Broken Isles World Quests V
		ach(42807),	-- Cloudy With a Chance of Infernals
		ach(42593),	-- Pillars of Creation
		ach(61339, {	-- Putting the Finite in Infinite
			["description"] = "Awarded to players who spend Infinite Power on 999 purchases of the Artifact Weapon [Limits Unbound] perk.",
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
		ach(61057, {	-- Heroic Broken Isles World Quests I
			--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
			--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Legion Torture Rack (DECOR!)
		}),
		ach(61056),	-- Heroic Broken Isles World Quests II
		ach(61054),	-- Heroic Broken Isles World Quests III
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
			--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
			--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Legion’s Fel Torch (DECOR!)
		}),
		ach(61060, {	-- Power of the Obelisks II
			["cr"] = 246685,	-- Timewarped Obelisk
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
