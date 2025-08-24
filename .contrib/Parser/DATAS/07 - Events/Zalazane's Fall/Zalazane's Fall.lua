--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
ZALAZANES_FALL = createHeader({
	readable = "Zalazane's Fall",
	icon = 255135,
	text = {
		en = WOWAPI_GetAchievementName(4790),
	},
	description = {
		en = "Zalazane's Fall (also referred to as the Battle to reclaim the Echo Isles) was the final push by Vol'jin and the Darkspear tribe to retake the Echo Isles from the clutches of the evil Zalazane. It was a culminating event for the Horde to occur before the release of the next expansion, Cataclysm. Furthermore, all troll characters created after the liberation of the Echo Isles now have their new starting point there.",
	},
});
root(ROOTS.WorldEvents, applyclassicphase(WRATH_PHASE_FOUR_OPERATION_ZALAZANE, n(ZALAZANES_FALL,
	bubbleDown({
		["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
		["races"] = HORDE_ONLY,
		-- #if ANYCLASSIC
		["OnUpdate"] = [[function(t)
			if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ONE .. [[) then
				t.u = ]] .. REMOVED_FROM_GAME .. [[;
				t.rwp = nil;
			else
				t.u = ]] .. WRATH_PHASE_FOUR_OPERATION_ZALAZANE .. [[;
				t.rwp = 40003;
			end
		end]],
		-- #endif
	}, {
		["maps"] = { DUROTAR },
		["groups"] = {
			q(25444, {	-- Da Perfect Spies
				["qg"] = 40184,	-- Vanira
				["coord"] = { 57.5, 72.5, DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/5 Sen'jin Frogs attuned
						["providers"] = {
							{ "n", 40188 },	-- Attuned Frog
							{ "i", 53510 },	-- Captured Frog
							{ "n", 40176 },	-- Sen'jin Frog
							{ "n", 40187 },	-- Vanira's Sentry Totem
						},
						["coord"] = { 57.6, 72.5, DUROTAR },
					}),
				},
			}),
			q(25480, {	-- Dance Of De Spirits
				["sourceQuest"] = 25470,	-- Lady Of Da Tigers
				["qg"] = 40391,	-- Vol'jin
				["coord"] = { 57.4, 72.7, DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- Dance of the Spirits
						["provider"] = { "n", 40352 },	-- Witch Doctor Hez'tok
						["coord"] = { 57, 74.14, DUROTAR },
					}),
					i(54653),	-- Darkspear Pride (TOY!)
				},
			}),
			q(25446, {	-- Frogs Away!
				["sourceQuest"] = 25444,	-- Da Perfect Spies
				["qg"] = 40184,	-- Vanira
				["coord"] = { 57.5, 72.5, DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/12 Attuned Frogs placed
						["providers"] = {
							{ "i", 53637 },	-- Sack o' Frogs
							{ "n", 40204 },	-- Handler Marnlek
						},
						["coord"] = { 57.1, 75.13, DUROTAR },
					}),
				},
			}),
			q(25470, {	-- Lady Of Da Tigers
				["sourceQuest"] = 25461,	-- Trollin' For Volunteers
				["qg"] = 40184,	-- Vanira
				["coord"] = { 57.5, 72.5, DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- Challenge the Tiger Matriarch
						["provider"] = { "n", 40312 },	-- Tiger Matriarch
						["coord"] = { 59, 82, DUROTAR },
					}),
				},
			}),
			q(25495, {	-- Preparin' For Battle
				["sourceQuest"] = 25461,	-- Trollin' For Volunteers
				["qgs"] = {
					40253,	-- Champion Uru'zin
					40204,	-- Handler Marnlek
				},
				["coord"] = { 57.8, 73.0, DUROTAR },
				["races"] = HORDE_ONLY,
			}),
			q(25461, {	-- Trollin' For Volunteers
				["sourceQuest"] = 25446,	-- Frogs Away!
				["qg"] = 40253,	-- Champion Uru'zin
				["coord"] = { 57.8, 73.0, DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/5 Troll Volunteers recruited
						["providers"] = {
							{ "i", 54215 },	-- Vol'jin's War Drums
							{ "n", 40256 },	-- Troll Citizen
							{ "n", 40257 },	-- Troll Citizen
						},
					}),
					objective(2, {	-- 0/5 Troll Volunteers delivered to Champion Uru'zin
						["providers"] = {
							{ "n", 40260 },	-- Troll Volunteer
							{ "n", 40264 },	-- Troll Volunteer
						},
					}),
				},
			}),
			q(25445, {	-- Zalazane's Fall
				["sourceQuest"] = 25495,	-- Preparin' For Battle
				["qg"] = 40391,	-- Vol'jin
				["coord"] = { 57.4, 72.7, DUROTAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Zalazane killed
						["providers"] = {
							{ "n", 39647 },	-- Zalazane
							{ "n", 40182 },	-- Bwonsamdi
							{ "n", 40189 },	-- Jun'do the Traitor
						},
					}),
					ach(4790),	-- Zalazane's Fall
					i(54617),	-- Darkspear Shroud
				},
			}),
		},
	}))
));
