---------------------------------------------
--        S E C R E T S       M O D U L E  --
---------------------------------------------
SELFIE_FILTER = createHeader({
	readable = "Selfie Filter",
	icon = [[~_.asset("Category_SelfieFilters")]],
	text = {
		en = WOWAPI_GetSpellName(181765),
	},
});

ExportDB.OnTooltipDB.SelfieFilter = [[~function(t,tooltipInfo)tinsert(tooltipInfo,{left=_.L.SELFIE_DESC..(select(2,_.WOWAPI.GetItemInfo(122674))or"Selfie Camera MkII").._.L.SELFIE_DESC_2..(_.NPCNameFromID[t.crs[1] ]or"???").."|r"..(t.maps and(" in |cffff8000".._.GetMapName(t.maps[1]).."|r.")or".")})end]]

local function SelfieFilter(questID, spellID, t)
	t = name(HEADERS.Spell, spellID, t or {})
	t.timeline = { ADDED_7_3_5 };
	t.cost = { { "i", 122674, 1 } };	-- S.E.L.F.I.E. Camera MkII
	t.questID = questID
	t.spellID = spellID
	t.type = "characterUnlockQuestID"
	t.OnTooltip = [[_.OnTooltipDB.SelfieFilter]]
	return t
end

root(ROOTS.Secrets, n(SELFIE_FILTER, {
	["timeline"] = { ADDED_7_3_5 },
	["g"] = {
		SelfieFilter(49762, 258803, {	-- Argus Filter
			["cr"] = 124828,		-- Argus the Unmaker
			["maps"] = {	-- Antorus
				909,
				910,
				911,
				912,
				913,
				914,
				915,
				916,
				917,
				918,
				919,
				920,
			},
		}),
		SelfieFilter(49761, 258749, {	-- Firelands Filter
			["cr"] = 52409,		-- Ragnaros
			["maps"] = {	-- Firelands
				367,
				368,
				369,
			},
		}),
		SelfieFilter(49760, 258750, {	-- Frostmourne Filter
			["cr"] = 36597,		-- The Lich King
			["maps"] = {	-- Icecrown Citadel
				ICECROWN_CITADEL,
				187,
				188,
				189,
				190,
				191,
				192,
				193,
				1359,
			},
		}),
		SelfieFilter(49763, 258751, {	-- Sha Filter
			["cr"] = 60999,		-- Sha of Fear
			["maps"] = {	-- Terrace of Endless Spring
				456,
			},
		}),
		SelfieFilter(49764, 258752, {	-- Twilight Filter
			["cr"] = 43324,		-- Cho'gall
			["maps"] = {	-- Bastion of Twilight
				294,
				295,
				296,
			},
		}),
	}
}));
