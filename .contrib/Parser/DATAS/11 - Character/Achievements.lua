-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
local INSANE_IN_THE_MEMBRANE_OnInit = [[function(t)
	t.CacheFactions = function(t)
		local factions = t.factions;
		if not factions then
			factions = {};
			for i,factionID in ipairs({
				87,
				21,
				577,
				369,
				470,
				909,
				349,
				809,
			}) do
				local f = _.SearchForField("factionID", factionID);
				if f and #f > 0 then
					tinsert(factions, f and f[1] or _.CreateFaction(factionID));
				else
					return;
				end
			end
			local bloodsail = _.CreateFaction( ]] .. FACTION_BLOODSAIL_BUCCANEERS .. [[ );
			bloodsail.minReputation = { ]] .. FACTION_BLOODSAIL_BUCCANEERS .. [[ , ]] .. HONORED .. [[ };
			bloodsail.OnTooltip = factions[1].OnTooltip;
			bloodsail.collectible = false;
			factions[1] = bloodsail;
			t.factions = factions;
		end
		return factions;
	end
	t.OnPopout = function(t)
		local clone = _.CloneReference(t);
		clone.sourceParent = t.parent;
		local factions = t:CacheFactions();
		if factions then
			local g = clone.g;
			if g then
				for i,o in ipairs(factions) do
					tinsert(g, o);
				end
			else
				clone.g = _.CloneArray(factions);
			end
		end
		return clone;
	end
	return t;
end]];
local INSANE_IN_THE_MEMBRANE_OnUpdate = [[function(t)
	if t.collectible then
		local fs = t:CacheFactions();
		if not fs then return; end
		local collected = true;
		for i,f in ipairs(fs) do
			if f.saved ~= 1 then
				collected = false;
				break;
			end
		end
		t:SetAchievementCollected(t.achievementID, collected);
	end
end]];
local INSANE_IN_THE_MEMBRANE_OnTooltip = [[function(t, tooltipInfo)
	local fs = t:CacheFactions();
	if not fs then return; end
	tinsert(tooltipInfo, { left = " " });
	for i,f in ipairs(fs) do
		tinsert(tooltipInfo, {
			left = " |T" .. f.icon .. ":0|t " .. f.text,
			right = _.GetCollectionIcon(f.saved),
			r = 1, g = 1, b = 1
		});
	end
end]];
root(ROOTS.Character, n(ACHIEVEMENTS, {
	ach(523, {		-- 5 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 5,
	}),
	ach(524, {		-- 10 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 10,
	}),
	ach(521, {		-- 15 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 15,
	}),
	ach(520, {		-- 20 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 20,
	}),
	applyclassicphase(TBC_PHASE_ONE, ach(519, {		-- 25 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 25,
	})),
	applyclassicphase(TBC_PHASE_ONE, ach(518, {		-- 30 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 30,
	})),
	applyclassicphase(TBC_PHASE_TWO, ach(1014, {	-- 35 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 35,
	})),
	applyclassicphase(TBC_PHASE_FIVE, ach(1015, {	-- 40 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #else
		["timeline"] = { ADDED_3_0_2 },
		-- #endif
		["_noautomation"] = true,
		["rank"] = 40,
		-- #if AFTER 3.0.1
		["groups"] = {
			title(46),		-- <Name> the Exalted
		},
		-- #endif
	})),
	applyclassicphase(CATA_PHASE_ONE, ach(5374, {		-- 45 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["timeline"] = { ADDED_4_0_3_LAUNCH },
		["_noautomation"] = true,
		["rank"] = 45,
	})),
	applyclassicphase(CATA_PHASE_ONE, ach(5723, {		-- 50 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["timeline"] = { ADDED_4_0_6 },
		["_noautomation"] = true,
		["rank"] = 50,
	})),
	applyclassicphase(MOP_PHASE_LANDFALL, ach(6826, {		-- 55 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["timeline"] = { ADDED_5_0_4 },
		["_noautomation"] = true,
		["rank"] = 55,
	})),
	applyclassicphase(MOP_PHASE_LANDFALL, ach(6742, bubbleDownSelf({["timeline"] = {ADDED_5_0_4}}, {	-- 60 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["_noautomation"] = true,
		["rank"] = 60,
		["g"] = {
			title(197),	-- <Name> the Beloved
		},
	}))),
	applyclassicphase(LEGION_PHASE_ONE, ach(11177, {	-- 70 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["timeline"] = { ADDED_7_0_3_LAUNCH },
		["_noautomation"] = true,
		["rank"] = 70,
	})),
	applyclassicphase(BFA_PHASE_ONE, ach(12864, bubbleDownSelf({["timeline"] = {ADDED_8_0_1_LAUNCH}}, {	-- 80 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["_noautomation"] = true,
		["rank"] = 80,
		["g"] = {
			title(380),		-- <Name> the Admired
		},
	}))),
	applyclassicphase(BFA_PHASE_ONE, ach(12865, {	-- 90 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["timeline"] = { ADDED_8_0_1_LAUNCH },
		["_noautomation"] = true,
		["rank"] = 90,
	})),
	applyclassicphase(BFA_PHASE_ONE, ach(12866, bubbleDownSelf({["timeline"] = {ADDED_8_0_1_LAUNCH}}, {	-- 100 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["_noautomation"] = true,
		["rank"] = 100,
		["g"] = {
			i(163982),		-- Pureheart Courser (MOUNT!)
			title(379),		-- Esteemed <Name>
		},
	}))),
	ach(18471, {	-- 110 Exalted Reputations
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["timeline"] = { ADDED_10_1_5 },
		["_noautomation"] = true,
		["rank"] = 110,
	}),
	ach(2358, {	-- Charger
		-- #if BEFORE 3.0.1
		["sourceQuests"] = {
			7647,	-- Judgment and Redemption
			-- #if AFTER TBC
			9737,	-- True Masters of the Light
			-- #endif
		},
		-- #endif
		["timeline"] = {
			-- #if AFTER 3.1.0
			ADDED_3_1_0, REMOVED_4_0_3,
			-- #else
			REMOVED_4_0_3,
			-- #endif
		},
		["classes"] = { PALADIN },
	}),
	applyclassicphase(WRATH_PHASE_ONE, ach(16, {		-- Did Somebody Order a Knuckle Sandwich?
		["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
	})),
	ach(2716, {		-- Dual Talent Specialization
		["timeline"] = { ADDED_3_1_0, REMOVED_7_0_3 },
	}),
	applyclassicphase(WRATH_PHASE_ONE, ach(558, {		-- Greedy
		["timeline"] = { ADDED_3_0_2, REMOVED_8_0_1 },
	})),
	applyclassicphase(PHASE_THREE_DMF_CARDS, ach(2336, {	-- Insane in the Membrane
		-- #if ANYCLASSIC
		["OnInit"] = INSANE_IN_THE_MEMBRANE_OnInit,
		["OnTooltip"] = INSANE_IN_THE_MEMBRANE_OnTooltip,
		-- #if BEFORE WRATH
		["OnUpdate"] = INSANE_IN_THE_MEMBRANE_OnUpdate,
		-- #endif
		["description"] = "Insane in the Membrane is a Feat of Strength that rewards the title <The Insane>. This feat requires you to become honored with the Bloodsail Buccaneers and exalted with the Steamwheedle Cartel (Booty Bay, Everlook, Gadgetzan, Ratchet), Ravenholdt, Darkmoon Faire, and the Shen'dralar. After Cataclysm it does not require that all of these reputation levels be reached at the same time, however, prior to that you must have them all at the same time. Raising reputation with these factions is typically very difficult, time-consuming, and costly.",
		-- #endif
		["groups"] = {
			title(112, {	-- the Insane
				["timeline"] = { ADDED_3_0_2 },
			}),
		},
	})),
	ach(4496, {	-- It's Over Nine Thousand!
		["timeline"] = { ADDED_3_0_2 },
	}),
	ach(6, {		-- Level 10
		["lvl"] = 10,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	}),
	ach(7, {		-- Level 20
		["lvl"] = 20,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	}),
	ach(8, {		-- Level 30
		["lvl"] = 30,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	}),
	ach(9, {		-- Level 40
		["lvl"] = 40,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	}),
	ach(10, {		-- Level 50 (Legacy)
		["timeline"] = {
			-- #if NOT ANYCLASSIC
			ADDED_3_0_2,
			-- #endif
			REMOVED_9_0_1
		},
		["lvl"] = 50,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	}),
	ach(11, {		-- Level 60 (Legacy)
		["timeline"] = {
			-- #if NOT ANYCLASSIC
			ADDED_3_0_2,
			-- #endif
			REMOVED_9_0_1
		},
		["lvl"] = 60,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	}),
	applyclassicphase(TBC_PHASE_ONE, ach(12, {	-- Level 70 (Legacy)
		["timeline"] = { ADDED_2_0_1, REMOVED_9_0_1 },
		["lvl"] = 70,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
	})),
	applyclassicphase(WRATH_PHASE_ONE, ach(13, {	-- Level 80 (Legacy)
		["timeline"] = { ADDED_3_0_2, REMOVED_9_0_1 },
		["lvl"] = 80,
		-- #if BEFORE WRATH
		["OnUpdate"] = [[_.CommonAchievementHandlers.LEVEL_OnUpdate]],
		-- #endif
		["groups"] = {
			i(41426, {	-- Magically Wrapped Gift
				i(41427),	-- Dalaran Firework
			}),
		},
	})),
	ach(4826, {		-- Level 85 (Legacy)
		["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 },
		["lvl"] = 85,
	}),
	ach(6193, {		-- Level 90 (Legacy)
		["timeline"] = { ADDED_5_0_4, REMOVED_9_0_1 },
		["lvl"] = 90,
	}),
	ach(9060, {		-- Level 100 (Legacy)
		["timeline"] = { ADDED_6_0_2, REMOVED_9_0_1 },
		["lvl"] = 100,
	}),
	ach(10671, {	-- Level 110 (Legacy)
		["timeline"] = { ADDED_7_0_3, REMOVED_9_0_1 },
		["lvl"] = 110,
	}),
	ach(12544, {	-- Level 120 (Legacy)
		["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
		["lvl"] = 120,
	}),
	ach(705, {		-- Master of Arms
		["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
	}),
	applyclassicphase(WRATH_PHASE_ONE, ach(559, {		-- Needy
		["timeline"] = { ADDED_3_0_2, REMOVED_8_0_1 },
	})),
	applyclassicphase(PHASE_ONE, ach(879, {	-- Old School Ride
		["providers"] = {
			{ "i", 13328 },	-- Black Ram
			{ "i", 13329 },	-- Frost Ram
			{ "i", 13327 },	-- Icy Blue Mechanostrider Mod A
			{ "i", 13326 },	-- White Mechanostrider Mod B
			{ "i", 12354 },	-- Palomino Bridle
			{ "i", 12353 },	-- White Stallion Bridle
			{ "i", 12302 },	-- Reins of the Ancient Frostsaber
			{ "i", 12303 },	-- Reins of the Nightsaber
			{ "i", 12351 },	-- Horn of the Arctic Wolf
			{ "i", 12330 },	-- Horn of the Red Wolf
			{ "i", 15292 },	-- Green Kodo
			{ "i", 15293 },	-- Teal Kodo
			{ "i", 13317 },	-- Whistle of the Ivory Raptor
			{ "i", 8586 },	-- Whistle of the Mottled Red Raptor
		},
		["timeline"] = { REMOVED_1_4_0 },
	})),
	ach(1415, {		-- Realm First! Grand Master Alchemist
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1420, {		-- Realm First! Grand Master Angler
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(5395, {		-- Realm First! Grand Master Archaeologist
		["timeline"] = { ADDED_4_0_3, REMOVED_4_1_0 },
	}),
	ach(1414, {		-- Realm First! Grand Master Blacksmith
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1416, {		-- Realm First! Grand Master Cook
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1417, {		-- Realm First! Grand Master Enchanter
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1418, {		-- Realm First! Grand Master Engineer
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1421, {		-- Realm First! Grand Master Herbalist
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1423, {		-- Realm First! Grand Master Jewelcrafter
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1424, {		-- Realm First! Grand Master Leatherworker
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1419, {		-- Realm First! Grand Master Medic
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1425, {		-- Realm First! Grand Master Miner
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1422, {		-- Realm First! Grand Master Scribe
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1426, {		-- Realm First! Grand Master Skinner
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(1427, {		-- Realm First! Grand Master Tailor
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_1 },
	}),
	ach(5381, {		-- Realm First! Illustrious Alchemist
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5387, {		-- Realm First! Illustrious Angler
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5396, {		-- Realm First! Illustrious Archaeologist
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5382, {		-- Realm First! Illustrious Blacksmith
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5383, {		-- Realm First! Illustrious Cook
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5384, {		-- Realm First! Illustrious Enchanter
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5385, {		-- Realm First! Illustrious Engineer
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5388, {		-- Realm First! Illustrious Herbalist
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5390, {		-- Realm First! Illustrious Jewelcrafter
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5391, {		-- Realm First! Illustrious Leatherworker
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5386, {		-- Realm First! Illustrious Medic
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5392, {		-- Realm First! Illustrious Miner
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5389, {		-- Realm First! Illustrious Scribe
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5393, {		-- Realm First! Illustrious Skinner
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5394, {		-- Realm First! Illustrious Tailor
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(457, {		-- Realm First! Level 80
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1405, {		-- Realm First! Level 80 Blood Elf
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),	--
	ach(461, {		-- Realm First! Level 80 Death Knight
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),	--
	ach(1406, {		-- Realm First! Level 80 Draenei
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(466, {		-- Realm First! Level 80 Druid
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1407, {		-- Realm First! Level 80 Dwarf
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1413, {		-- Realm First! Level 80 Forsaken
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1404, {		-- Realm First! Level 80 Gnome
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1408, {		-- Realm First! Level 80 Human
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(462, {		-- Realm First! Level 80 Hunter
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(460, {		-- Realm First! Level 80 Mage
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1409, {		-- Realm First! Level 80 Night Elf
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),	--
	ach(1410, {		-- Realm First! Level 80 Orc
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(465, {		-- Realm First! Level 80 Paladin
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(464, {		-- Realm First! Level 80 Priest
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(458, {		-- Realm First! Level 80 Rogue
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(467, {		-- Realm First! Level 80 Shaman
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1411, {		-- Realm First! Level 80 Tauren
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(1412, {		-- Realm First! Level 80 Troll
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(463, {		-- Realm First! Level 80 Warlock
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(459, {		-- Realm First! Level 80 Warrior
		["timeline"] = { ADDED_3_0_2, REMOVED_3_1_2 },
	}),
	ach(4999, {		-- Realm First! Level 85
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5005, {		-- Realm First! Level 85 Death Knight
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5000, {		-- Realm First! Level 85 Druid
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5004, {		-- Realm First! Level 85 Hunter
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5006, {		-- Realm First! Level 85 Mage
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5001, {		-- Realm First! Level 85 Paladin
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5002, {		-- Realm First! Level 85 Priest
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5008, {		-- Realm First! Level 85 Rogue
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(4998, {		-- Realm First! Level 85 Shaman
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5003, {		-- Realm First! Level 85 Warlock
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(5007, {		-- Realm First! Level 85 Warrior
		["timeline"] = { ADDED_4_0_3, REMOVED_4_0_6 },
	}),
	ach(6524, {		-- Realm First! Level 90
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6748, {		-- Realm First! Level 90 Death Knight
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6743, {		-- Realm First! Level 90 Druid
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6747, {		-- Realm First! Level 90 Hunter
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6749, {		-- Realm First! Level 90 Mage
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6752, {		-- Realm First! Level 90 Monk
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6744, {		-- Realm First! Level 90 Paladin
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6745, {		-- Realm First! Level 90 Priest
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6751, {		-- Realm First! Level 90 Rogue
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6523, {	-- Realm First! Level 90 Shaman
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6746, {		-- Realm First! Level 90 Warlock
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6750, {		-- Realm First! Level 90 Warrior
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(1463, {		-- Realm First! Northrend Vanguard
		["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8 },
	}),
	ach(6829, {		-- Realm First! Pandaren Ambassador
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(14662, {	-- Realm First! Shadowlands Keystone Master
		["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 },
	}),
	ach(6859, {		-- Realm First! Zen Master Alchemist
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6865, {		-- Realm First! Zen Master Angler
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6873, {		-- Realm First! Zen Master Archaeologist
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6860, {		-- Realm First! Zen Master Blacksmith
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6861, {		-- Realm First! Zen Master Cook
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6862, {		-- Realm First! Zen Master Enchanter
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6863, {		-- Realm First! Zen Master Engineer
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6866, {		-- Realm First! Zen Master Herbalist
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6868, {		-- Realm First! Zen Master Jewelcrafter
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6869, {		-- Realm First! Zen Master Leatherworker
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6864, {		-- Realm First! Zen Master Medic
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6870, {		-- Realm First! Zen Master Miner
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6867, {		-- Realm First! Zen Master Scribe
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6871, {		-- Realm First! Zen Master Skinner
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(6872, {		-- Realm First! Zen Master Tailor
		["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
	}),
	ach(522, {		-- Somebody Likes Me
		-- #if ANYCLASSIC
		["OnClick"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnClick]],
		["OnTooltip"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnTooltip]],
		["OnUpdate"] = [[_.CommonAchievementHandlers.REPUTATIONS_OnUpdate]],
		-- #endif
		["_noautomation"] = true,
		["rank"] = 1,
	}),
	-- #if ANYCLASSIC
	applyclassicphase(SOM_PHASE_ONE, ach(16433, {	-- Soul of Iron (Season of Mastery)
		["timeline"] = { ADDED_1_14_3, REMOVED_1_15_0 },	-- NOTE: You could only acquire this during Season of Mastery, but it didn't appear on your account until Wrath Classic.
		-- #if BEFORE TBC
		["OnUpdate"] = [[function(t)
			if t.collectible and _.Level >= 60 then
				local i, spellID = 1, select(10, UnitBuff("player", 1));
				while spellID do
					if spellID == 364001 then
						t:SetAchievementCollected(t.achievementID, true);
						return false;
					end
					i = i + 1;
					spellID = select(10, UnitBuff("player", i));
				end;
				t:SetAchievementCollected(t.achievementID, false);
			end
		end]],
		-- #endif
		["groups"] = {
			title(143, {	-- <Name>, Soul of Iron (756 on wowhead? That's wrong!)
				-- TODO: Double check this in Cataclysm Classic
				["timeline"] = { ADDED_3_4_0 },
			}),
		},
	})),
	-- #endif
	ach(1832, {	-- Tastes Like Chicken
		["timeline"] = { ADDED_3_0_2 },
	}),
	ach(5753, {	-- Cataclysmically Delicious
		["timeline"] = { ADDED_4_1_0 },
		["sym"] = {{ "achievement_criteria" }},
	}),
	ach(5754, {	-- Drown Your Sorrows
		["timeline"] = { ADDED_4_1_0 },
		["sym"] = {{ "achievement_criteria" }},
	}),
	applyclassicphase(TBC_PHASE_ONE, ach(892, {	-- The Right Stuff
		["spellID"] = 34091,	-- Artisan Riding
		["timeline"] = { ADDED_2_0_1, REMOVED_9_0_1 },
		["rank"] = 4,
	})),
	n(ARMOR, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 }, }, {
		ach(11761, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, }, {	-- Azeroth's Next Top Model
			title(356),	-- Stylist
		})),
		ach(10694, {	-- Fabulous
			["sym"] = {{"meta_achievement",
				10687,	-- Fashionista: Back
				10682,	-- Fashionista: Chest
				10685,	-- Fashionista: Feet
				10693,	-- Fashionista: Hand
				10681,	-- Fashionista: Head
				10684,	-- Fashionista: Legs
				10691,	-- Fashionista: Shirt
				10692,	-- Fashionista: Shoulder
				10690,	-- Fashionista: Tabard
				10686,	-- Fashionista: Waist
				10689,	-- Fashionista: Weapon & Off-Hand
				10688,	-- Fashionista: Wrist
			}},
			["groups"] = {
				title(334),	-- the Fabulous
			},
		}),
		ach(10687),	-- Fashionista: Back
		ach(10682),	-- Fashionista: Chest
		ach(10685),	-- Fashionista: Feet
		ach(10693),	-- Fashionista: Hand
		ach(10681),	-- Fashionista: Head
		ach(10684),	-- Fashionista: Legs
		ach(10691),	-- Fashionista: Shirt
		ach(10692),	-- Fashionista: Shoulder
		ach(10690),	-- Fashionista: Tabard
		ach(10686),	-- Fashionista: Waist
		ach(10689),	-- Fashionista: Weapon & Off-Hand
		ach(10688),	-- Fashionista: Wrist
	})),
	filter(MOUNTS, {
		a(ach(15834, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- A Horde of Hoofbeats (A, 500 mounts)
			i(198654),	-- Otterworldly Ottuk Carrier (MOUNT!)
		}))),
		h(ach(15833, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- A Horde of Hoofbeats (H, 500 mounts)
			i(198654),	-- Otterworldly Ottuk Carrier (MOUNT!)
		}))),
		a(ach(12933, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- A Horde of Hoofbeats (A, 400 mounts)
			i(163981),	-- Frenzied Feltalon (MOUNT!)
		}))),
		h(ach(12934, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- A Horde of Hoofbeats (H, 400 mounts)
			i(163981),	-- Frenzied Feltalon (MOUNT!)
		}))),
		a(ach(12932, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- No Stable Big Enough (A, 350 mounts)
			i(137614),	-- Frostshard Infernal (MOUNT!)
		}))),
		h(ach(12931, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- No Stable Big Enough (H, 350 mounts)
			i(137614),	-- Frostshard Infernal (MOUNT!)
		}))),
		a(ach(10356, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {	-- Lord of the Reins (A, 300 mounts)
			i(87776),	-- Heavenly Azure Cloud Serpent (MOUNT!)
			title(331),	-- <Name>, Lord of the Reins
		}))),
		h(ach(10355, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {	-- Lord of the Reins (H, 300 mounts)
			i(87776),	-- Heavenly Azure Cloud Serpent (MOUNT!)
			title(331),	-- <Name>, Lord of the Reins
		}))),
		a(ach(9598,  bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {	-- Mountacular (A, 250 mounts)
			i(69226),	-- Felfire Hawk (MOUNT!)
		}))),
		h(ach(9599,  bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {	-- Mountacular (H, 250 mounts)
			i(69226),	-- Felfire Hawk (MOUNT!)
		}))),
		a(ach(8304,  bubbleDownSelf({ ["timeline"] = { ADDED_5_3_0 } }, {	-- Mount Parade (A, 200 mounts)
			i(98259),	-- Armored Blue Dragonhawk (MOUNT!)
		}))),
		h(ach(8302,  bubbleDownSelf({ ["timeline"] = { ADDED_5_3_0 } }, {	-- Mount Parade (H, 200 mounts)
			i(98104),	-- Armored Red Dragonhawk (MOUNT!)
		}))),
		a(ach(7860,  bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {	-- We're Going to Need More Saddles (A, 150 mounts)
			i(91802),	-- Jade Pandaren Kite String (MOUNT!)
		}))),
		h(ach(7862,  bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {	-- We're Going to Need More Saddles (H, 150 mounts)
			i(91802),	-- Jade Pandaren Kite String (MOUNT!)
		}))),
		applyclassicphase(WRATH_PHASE_ONE, ach(2536, {	-- Mountain o' Mounts [A] (100 mounts)
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			-- #endif
			["timeline"] = { ADDED_3_0_2 },
			["races"] = ALLIANCE_ONLY,
			["rank"] = 100,
			["groups"] = {
				i(44843),	-- Blue Dragonhawk (MOUNT!)
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2537, {	-- Mountain o' Mounts [H] (100 mounts)
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			-- #endif
			["timeline"] = { ADDED_3_0_2 },
			["races"] = HORDE_ONLY,
			["rank"] = 100,
			["groups"] = {
				i(44842),	-- Red Dragonhawk (MOUNT!)
			},
		})),
		applyclassicphase(TBC_PHASE_ONE, ach(2143, {	-- Leading the Cavalry (50 mounts)
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			-- #endif
			["timeline"] = { ADDED_2_0_1 },
			["rank"] = 50,
			["groups"] = {
				applyclassicphase(WRATH_PHASE_ONE, i(44178)),	-- Albino Drake (MOUNT!)
			},
		})),
		ach(2142, {		-- Filling Up The Barn (25 mounts)
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			-- #endif
			["rank"] = 25,
		}),
		ach(2141, {		-- Stable Keeper (10 mounts)
			-- #if ANYCLASSIC
			["OnClick"] = [[_.CommonAchievementHandlers.MOUNTS_OnClick]],
			-- #if BEFORE WRATH
			["OnTooltip"] = [[_.CommonAchievementHandlers.MOUNTS_OnTooltip]],
			["OnUpdate"] = [[_.CommonAchievementHandlers.MOUNTS_OnUpdate]],
			-- #endif
			-- #endif
			["rank"] = 10,
		}),
		ach(9713, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {	-- Awake the Drakes (automated)
			i(118676),		-- Emerald Drake (MOUNT!)
		})),
	}),
	-- #if AFTER 6.0.2
	filter(TOYS, {
		ach(15781, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- The Joy of Toy (500)
			i(197986),	-- Murglasses (TOY!)
		})),
		ach(12996, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- Toybox Tycoon (400)
			i(163244),		-- Brutus (PET!)
		})),
		ach(11176, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {	-- Remember to Share (300)
			i(140500),		-- Mechanized Lumber Extractor (MOUNT!)
		})),
		ach(10354, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {	-- Crashin' Thrashin' Commander(200)
			title(53),		-- Crashin' Thrashin'
		})),
		ach(9673, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {	-- The Toymaster (150)
			i(119215),		-- Robo-Gnomebulator (TOY!)
		})),
		ach(9672, {["timeline"] = { ADDED_6_0_2 }}),		-- Tons of Toys (100)
		ach(9671, {["timeline"] = { ADDED_6_0_2 }}),		-- Having a Ball (50)
		ach(9670, {["timeline"] = { ADDED_6_0_2 }}),		-- Toying Around (25)
	}),
	-- #endif
}))

