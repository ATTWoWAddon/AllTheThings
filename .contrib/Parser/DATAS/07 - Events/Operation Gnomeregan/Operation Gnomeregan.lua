--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------

OPERATION_GNOMEREGAN = createHeader({
	readable = "Operation: Gnomeregan",
	icon = 255139,
	text = {
		en = WOWAPI_GetAchievementName(4786),
	},
	description = {
		en = "Operation: Gnomeregan was the name of Gelbin Mekkatorque's plan for the retaking of the surface of Gnomeregan. Only Alliance players between level 75 and 80 were able to serve during the operation, but lower level players helped by motivating other gnomes or by turning in items.",
	},
});

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, { expansion(EXPANSION.CATA, { applyclassicphase(WRATH_PHASE_FOUR_OPERATION_ZALAZANE, n(OPERATION_GNOMEREGAN,
	bubbleDown({
		["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
		["races"] = ALLIANCE_ONLY,
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
		["maps"] = { IRONFORGE, DUN_MOROGH },
		["groups"] = {
			q(25229, {	-- A Few Good Gnomes
				["qg"] = 7937,	-- High Tinker Mekkatorque <King of Gnomes>
				["coord"] = { 69.2, 49.2, IRONFORGE },
				["groups"] = {
					objective(1, {	-- 0/5 Gnomes Motivated
						["providers"] = {
							{ "n", 39253 },	-- Gnome Citizen
							{ "n", 39623 },	-- Gnome Citizen
							{ "i", 52566 },	-- Motivate-a-Tron
						},
					}),
					objective(2, {	-- 0/5 Motivated Gnomes Brought to Captain Sparknozzle
						["providers"] = {
							{ "n", 39466 },	-- Motivated Citizen
							{ "n", 39624 },	-- Motivated Citizen
						},
					}),
				},
			}),
			q(25199, {	-- Basic Orders
				["sourceQuest"] = 25229,	-- A Few Good Gnomes
				["qg"] = 39675,	-- Captain Tread Sparknozzle
				["coord"] = { 50.16, 48.35, DUN_MOROGH },
				["groups"] = {
					objective(1, {	-- Salute the Drill Sergeant
						["provider"] = { "n", 39368 },	-- Drill Sergeant Steamcrank
					}),
					objective(12, {	-- Roar with the Drill Sergeant
						["provider"] = { "n", 39368 },	-- Drill Sergeant Steamcrank
					}),
					objective(3, {	-- Cheer with the Drill Sergeant
						["provider"] = { "n", 39368 },	-- Drill Sergeant Steamcrank
					}),
					objective(4, {	-- Dance with the Drill Sergeant
						["provider"] = { "n", 39368 },	-- Drill Sergeant Steamcrank
					}),
				},
			}),
			q(25285, {	-- In and Out
				["sourceQuest"] = 25199,	-- Basic Orders
				["qg"] = 39675,	-- Captain Tread Sparknozzle
				["coord"] = { 50.16, 48.35, DUN_MOROGH },
				["groups"] = {
					objective(1, {	-- Ejection System Tested
						["provider"] = { "n", 39715 },	-- Ejector Mechano-Tank
					}),
				},
			}),
			q(25289, {	-- One Step Forward...
				["sourceQuest"] = 25285,	-- In and Out
				["qg"] = 39675,	-- Captain Tread Sparknozzle
				["coord"] = { 50.16, 48.35, DUN_MOROGH },
				["groups"] = {
					objective(1, {	-- 0/3 Left Leg Servos Tested
						["provider"] = { "n", 39716 },	-- Scuttling Mechano-Tank
					}),
					objective(2, {	-- 0/3 Right Leg Servos Tested
						["provider"] = { "n", 39716 },	-- Scuttling Mechano-Tank
					}),
					objective(3, {	-- 0/3 Evasive Maneuver System Tested
						["provider"] = { "n", 39716 },	-- Scuttling Mechano-Tank
					}),
				},
			}),
			q(25393, {	-- Operation: Gnomeregan
				["sourceQuest"] = 25287,	-- Words for Delivery (2)
				["qgs"] = {
					39271,	-- High Tinker Mekkatorque <King of Gnomes> (At the operation start location)
					7937,	-- High Tinker Mekkatorque <King of Gnomes> (after the quest is done, back in IF)
				},
				["coord"] = { 69.2, 49.2, IRONFORGE },
				["groups"] = {
					objective(1, {	-- Regain the Surface of Gnomeregan
						["providers"] = {
							{ "n", 39901 },	-- Mekgineer Thermaplugg's Brag-Bot
							{ "n", 39799 },	-- Gasherikk
							{ "n", 39837 },	-- Commander Boltcog
						},
					}),
					ach(4786),	-- Operation: Gnomeregan
					i(53097),	-- Gnomeregan Drape
				},
			}),
			q(25283, {	-- Prepping the Speech
				["sourceQuests"] = {
					25295,	-- Press Fire
					25212,	-- Vent Horizon
				},
				["qg"] = 39678,	-- Toby Zeigear
				["coord"] = { 49.32, 48.27, DUN_MOROGH },
				["groups"] = {
					objective(1, {	-- Perform Speech to Ozzie Togglevolt
						["providers"] = {
							{ "n", 1268 },	-- Ozzie Togglevolt
							{ "i", 52709 },	-- Gnomish Playback Device
						},
						["coord"] = { 45.89, 49.38, DUN_MOROGH },
					}),
					objective(2, {	-- Perform Speech to Milli Featherwhistle
						["providers"] = {
							{ "n", 7955 },	-- Milli Featherwhistle
							{ "i", 52709 },	-- Gnomish Playback Device
						},
						["coord"] = { 49.12, 47.95, DUN_MOROGH },
					}),
					objective(3, {	-- Perform Speech to Tog Rustsprocket
						["providers"] = {
							{ "n", 6119 },	-- Tog Rustsprocket
							{ "i", 52709 },	-- Gnomish Playback Device
						},
						["coord"] = { 47.34, 53.78, DUN_MOROGH },
					}),
				},
			}),
			q(25295, {	-- Press Fire
				["sourceQuest"] = 25289,	-- One Step Forward...
				["qg"] = 39675,	-- Captain Tread Sparknozzle
				["coord"] = { 50.16, 48.35, DUN_MOROGH },
				["groups"] = {
					objective(1, {	-- 0/3 Weapon System Tested
						["providers"] = {
							{ "n", 39711 },	-- Mechano-Tank Attack Target
							{ "n", 39717 },	-- Shooting Mechano-Tank
						},
					}),
				},
			}),
			q(25212, {	-- Vent Horizon
				["sourceQuest"] = 25199,	-- Basic Orders
				["qg"] = 39386,	-- Pilot Muzzlesprock
				["coord"] = { 50.1, 47.74, DUN_MOROGH },
				["groups"] = {
					objective(1, {	-- 0/3 Deploy Radiageigatron at Gnomeregan Vents
						["providers"] = {
							{ "i", 52541 },	-- Radiageigatron
							{ "n", 39396 },	-- 'Thunderflash'
						},
					}),
				},
			}),
			q(25500, {	-- Words for Delivery (1/2)
				["sourceQuest"] = 25283,	-- Prepping the Speech
				["altQuests"] = { 25286 },	-- Words for Delivery (for level 75 and below)
				["providers"] = {
					{ "n", 39678 },	-- Toby Zeigear
					{ "i", 52731 },	-- Mekkatorque's Speech
				},
				["coord"] = { 49.32, 48.27, DUN_MOROGH },
				["groups"] = {
					i(54651),	-- Gnomeregan Pride (TOY!)
				},
			}),
			q(25287, {	-- Words for Delivery (2/2)
				["sourceQuest"] = 25500,	-- Words for Delivery (1/2)
				["providers"] = {
					{ "n", 39675 },	-- Captain Tread Sparknozzle
					{ "i", 52731 },	-- Mekkatorque's Speech
					{ "n", 39396 },	-- 'Thunderflash'
				},
				["coord"] = { 50.16, 48.35, DUN_MOROGH },
			}),
		},
	}))
)})}));
