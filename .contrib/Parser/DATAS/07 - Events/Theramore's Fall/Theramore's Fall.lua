--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
-- CRIEVE NOTE: For MOP Classic, figure out what level you have to be below to queue for Theramore's Fall.
-- Also determine if it gets removed prior to the expansion being over. (MOP_PHASE_LANDFALL or something?)

local OnUpdateForTheramoresFall = [[function(t)
if
-- #if BEFORE WOD
 not _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[) or
-- #endif
	_.CurrentCharacter.Achievements[7467] or _.CurrentCharacter.Achievements[7468] then
-- #if BEFORE WOD
	t.u = ]] .. MOP_PHASE_ONE .. [[;
	t.description = "This will probably get removed from game sometime during MOP Classic. Try to finish this content ASAP!";
-- #else
	t.u = nil;
-- #endif
else
	t.u = ]] .. REMOVED_FROM_GAME .. [[;
end
end]];

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, { expansion(EXPANSION.MOP, { applyclassicphase(MOP_PHASE_ONE, n(THERAMORES_FALL, bubbleDownSelf({
	-- #if BEFORE WOD
	["OnUpdate"] = OnUpdateForTheramoresFall,
	-- #endif
}, {
	["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },
	["maps"] = { 483 },	-- Theramore's Fall
	["lvl"] = lvlsquish(85, 85, 32),
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(7467, {	-- Theramore's Fall (A)
				["races"] = ALLIANCE_ONLY,
			}),
			ach(7468, {	-- Theramore's Fall (H)
				["races"] = HORDE_ONLY,
			}),
		}),
		n(SCENARIO_COMPLETION, {
			-- #if BEFORE 6.0.2
			i(89205, {	-- Mini Mana Bomb Toy (TOY!)
				["races"] = HORDE_ONLY,
			}),
			-- #endif
			i(90041, {	-- Spoils of Theramore
				["description"] = "This was a reward for completing the Theramore's Fall scenario during the Mists of Pandaria pre-patch.",
				["groups"] = {
					-- #if BEFORE 6.0.2
					-- This was added to the Lunar Festival with 6.0.2
					a(i(89999, {	-- Everlasting Alliance Firework (TOY!)
						["timeline"] = { ADDED_5_0_4 },
					})),
					h(i(90000, {	-- Everlasting Horde Firework (TOY!)
						["timeline"] = { ADDED_5_0_4 },
					})),
					-- #endif
					i(90017),	-- Theramore Arcanist's Hat
					i(90018),	-- Squallshaper's Hat
					i(90019),	-- Rok'nah Hag's Hat
					i(90020),	-- Rok'nah Skirmisher's Helm
					i(90021),	-- Rok'nah Raider's Helm
					i(90022),	-- Rok'nah Wolfstalker's Helm
					i(90023),	-- Rok'nah Wolfcaller's Helm
					i(90024),	-- Silver Circlet
					i(90025),	-- Black Circlet
					i(90026),	-- Golden Circlet
					i(90027),	-- Skirmisher's Spear
					i(90028),	-- Overseer's Handaxe
					i(90029),	-- Marine's Rifle
					i(90030),	-- Captain's Cutlass
					i(90031),	-- Staff of the Faithful
					i(90032),	-- Grunt's Greataxe
					i(90033),	-- Marksman's Blade
					i(90034),	-- Archmage's Staff
					i(90035),	-- Sailor's Scimitar
					i(90036),	-- Blood Guard's Shield
				},
			}),
			-- #if BEFORE 6.0.2
			i(89196, {	-- Theramore Tabard
				["races"] = ALLIANCE_ONLY,
			}),
			-- #endif
		}),
		-- #if AFTER 6.0.2
		n(VENDORS, {
			n(63546, {	-- Zidormi
				["description"] = "Sells the following items if you completed the level 85 version of the Theramore's Fall Scenario on your current character during the Pre-Launch of MOP.",
				["coord"] = { 55.8, 49.6, DUSTWALLOW_MARSH },
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					i(89196, {	-- Theramore Tabard
						["OnUpdate"] = OnUpdateForTheramoresFall,
						["races"] = ALLIANCE_ONLY,
					}),
					i(89205, {	-- Mini Mana Bomb Toy (TOY!)
						["OnUpdate"] = OnUpdateForTheramoresFall,
						["races"] = HORDE_ONLY,
					}),
				},
			}),
		}),
		-- #endif
	},
})))})}));
