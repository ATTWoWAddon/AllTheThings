-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(2959, {	-- City of Dalaran
		lore = "The City of Dalaran features us clearing out the threats that have overrun the beloved city of mages after the Magic barrier surrounding the city was cleared. Dalaran was one of the original cities in Azeroth and was ruled by the Kirin Tor, a council of wizards who housed some of the most impressive libraries and research facilities in all of Azeroth within the Dalaran walls. ",
		icon = [[~_.asset("cityofdalaran")]],
		["zone-text-areaID"] = 16544,	-- City of Dalaran
		--coord = { , MAP.ALTERAC_MOUNTAINS },
		timeline = { TIMELINE.ADDED_1_60_1 },
		--lvl = 23,
		groups = {
			n(QUESTS, {
				--[[
				q(, {	-- 
					qg = ,	-- 
					coord = {  },
					races = HORDE_ONLY,
					lvl = 24,
					groups = {
						i(),	-- 
						i(),	-- 
						i(),	-- 
					},
				}),
				]]--
				q(92489, {	-- Power Overwhelming
					qg = 5694,	-- High Sorcerer Andromath
					coord = { 48.7, 87.6, MAP.STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						objective(1, {	-- 0/1 Mana Elemental slain
							["provider"] = { "n", 246016 },	-- Mana Elemental
						}),
						i(251962),	-- Violet Sash
						i(279849),	-- Runebound Gloves
					},
				}),
			}),
			n(RARES, {
				e(3310, {	-- Lyn the Ignored
					creatureID = 247032,	-- Lyn the Ignored
					groups = {
						--[[
						i(),	-- 
						i(),	-- 
						i(),	-- 
						]]--
					},
				}),
			}),
			e(3311, {	-- Atrexis the Grave Knight
				creatureID = 247126,	-- Atrexis the Grave Knight
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3298, {	-- Arcane Anomaly
				creatureID = 245999,	-- Arcane Anomaly
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3299, {	-- Fel Ancient
				creatureID = 246003,	-- Fel Ancient
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3301, {	-- Mana Elemental
				creatureID = 14689,	-- Mana Elemental
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3300, {	-- Mana Devourer
				creatureID = 246008,	-- Mana Devourer
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3312, {	-- Mana Wraith
				creatureID = 246931,	-- Mana Wraith
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3302, {	-- Unstable Sentinel
				creatureID = 246017,	-- Unstable Sentinel
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
			e(3303, {	-- Shade of the Archmage
				creatureID = 246020,	-- Shade of the Archmage
				groups = {
					--[[
					i(),	-- 
					i(),	-- 
					i(),	-- 
					]]--
				},
			}),
		},
	}),
});
