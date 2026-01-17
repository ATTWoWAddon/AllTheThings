-- WoW API Function Templates

-- #if AFTER MOP
WOWAPI_GetItemCount = function(itemID) return "C_Item.GetItemCount(" .. itemID .. ", true)"; end
-- #else
WOWAPI_GetItemCount = function(itemID) return "GetItemCount(" .. itemID .. ", true)"; end
-- #endif
-- #if AFTER MOP
WOWAPI_GetSpellCooldown = function(spellID) return "_.WOWAPI.GetSpellCooldown(" .. spellID .. ")"; end
-- #else
WOWAPI_GetSpellCooldown = function(spellID) return "GetSpellCooldown(" .. spellID .. ")"; end
-- #endif
-- #if AFTER MOP
WOWAPI_GetSpellName = function(spellID) return "C_Spell.GetSpellName(" .. spellID .. ")"; end
-- #else
WOWAPI_GetSpellName = function(spellID) return "GetSpellInfo(" .. spellID .. ")"; end
-- #endif
-- #if AFTER MOP
WOWAPI_GetItemClassInfo = function(a,b) return "C_Item.GetItemClassInfo(" .. a .. ")"; end
-- #else
WOWAPI_GetItemClassInfo = function(a,b) return "GetItemClassInfo(" .. a .. ")"; end
-- #endif

WOWAPI_GetItemSubClassInfo = function(a,b)
	local ret
	if a and b then
		-- #if AFTER MOP
		ret = "C_Item.GetItemSubClassInfo(" .. a .. "," .. b .. ")";
		-- #else
		ret = "GetItemSubClassInfo(" .. a .. "," .. b .. ")";
		-- #endif
	else
		-- #if AFTER MOP
		ret = "C_Item.GetItemSubClassInfo(" .. a .. ")";
		-- #else
		ret = "GetItemSubClassInfo(" .. a .. ")";
		-- #endif
	end
	return ret
end
WOWAPI_GetAchievementName = function(achievementID)
	return "select(2,GetAchievementInfo(" .. achievementID .. "))";
end
WOWAPI_GetCategoryName = function(categoryID)
	return "select(1,GetCategoryInfo(" .. categoryID .. "))";
end

FUNCTION_TEMPLATES = {
	OnInit = {
		-- function unmarks the removed from game flag for folks with the brazier.
		BrazierAccess = [[function(t)
			if ]] .. WOWAPI_GetItemCount(22057) .. [[ > 0 then
				t.u = nil;
				for i,o in ipairs(t.g) do
					if o.u and o.u == ]] .. CONDITIONALLY_AVAILABLE .. [[ then
						o.u = nil;
					end
				end
			else
				t.u = ]] .. CONDITIONALLY_AVAILABLE .. [[;
				for i,o in ipairs(t.g) do
					if not o.u then
						o.u = ]] .. CONDITIONALLY_AVAILABLE .. [[;
					end
				end
			end
			return t;
		end]],
		GenerateShouldExcludeFromTooltipForBuffs = function(...)
			local buffs = {...};
			local OnInitName = "ShouldExcludeFromTooltipForBuffs_"..table.concat(buffs, "_")
			ExportDB.OnInitDB[OnInitName] = [[~function(t)
				local buffs={[]] .. table.concat(buffs, "]=1,[") .. [[]=1};
				t.ShouldExcludeFromTooltipHelper = function(t)
					local target = UnitExists("mouseover") and "mouseover" or "target";
					for i=1,10,1 do
						local id = select(10, UnitBuff(target,i));
						if id then
							if buffs[id] then return false; end
						else
							break;
						end
					end
					return true;
				end
				return t;
			end]];
			return [[_.OnInitDB.]]..OnInitName..[[]]
		end,
		ClassORRaceRequirements = [[function(t)
			if _.indexOf(t.races, _.RaceIndex) then
				t.c_disp = t.c
				t.c = nil;
			elseif _.indexOf(t.c, _.ClassIndex) then
				t.r_disp = t.races
				t.races = nil;
			end
			return t;
		end]],
		GenerateCompareOtherKey = function(itemID)
			local OnInitName = "GenerateCompareOtherKey_" .. itemID;
			ExportDB.OnInitDB[OnInitName] = [[~function(t)
				t.otherItemID = ]] .. itemID .. [[;
				t.GetItemCount = function(t)
					return ]] .. WOWAPI_GetItemCount("t.itemID") .. [[ + ]] .. WOWAPI_GetItemCount("t.otherItemID") .. [[;
				end
				return t;
			end]];
			return [[_.OnInitDB.]]..OnInitName..[[]]
		end
	},
	-- TODO: use _.IsSpellKnownHelper once Classic uses Classes/Spell.lua
	-- Generates an OnTooltip function into ExportDB.OnTooltipDB to return the cooldown status of a
	-- custom SpellID
	GenerateOnTooltipSpellOnCooldown = function(spellID)
		local OnTooltipName = "IsSpellOnCooldown_"..spellID
		ExportDB.OnTooltipDB[OnTooltipName] = [[~function(t,tooltipInfo)
			if _.CurrentCharacter.Spells[]]..spellID..[[]then
				local n=t.name or RETRIEVING_DATA
				if _.WOWAPI.GetSpellCooldown(]]..spellID..[[)>0 then
					tinsert(tooltipInfo, { left = "Your "..n.." cooldown is unavailable." });
				else
					tinsert(tooltipInfo, { left = "Your "..n.." cooldown is available." });
				end
			end
		end]]
		return [[_.OnTooltipDB.]]..OnTooltipName..[[]]
	end,
	-- Generates an OnUpdate function into ExportDB.OnUpdateDB to assign the 'visible' field of the group to true based
	-- on whether the player is currently on the related QuestID
	-- Note: This is bad, don't use this! It overrides Filter logic.
	GenerateOnUpdateIsOnQuestVisibleOverride = function(questID)
		local OnUpdateName = "IsOnQuestVisibleOverride"..questID
		ExportDB.OnUpdateDB[OnUpdateName] = [[~function(t) if not C_QuestLog.IsOnQuest(]]..questID..[[) then t.visible = false; return true; end end]]
		return [[_.OnUpdateDB.]]..OnUpdateName..[[]]
	end,
	GenerateOnUpdateForRepeatableQuestClassicReputationWithCost = function(repPerTurnIn, count)
		local OnUpdateName = "OnUpdateRRQCR"..repPerTurnIn
		if count then
			OnUpdateName = OnUpdateName.."x"..count
			ExportDB.OnUpdateDB[OnUpdateName] = [[~function(t)
				local cost, maxReputation = t.cost, t.maxReputation;
				if cost and maxReputation then
					t.repPerTurnIn, t.remainingTurnIns, t.totalTurnIns = _.Modules.FactionData.CalculateRemainingTurnIns(_.WOWAPI.GetFactionCurrentReputation(maxReputation[1]), ]] .. repPerTurnIn .. [[, maxReputation[2]);
					cost[1][3] = t.remainingTurnIns * ]] .. count .. [[;
				end
			end]];
		else
			ExportDB.OnUpdateDB[OnUpdateName] = [[~function(t)
				local cost, maxReputation = t.cost, t.maxReputation;
				if cost and maxReputation then
					t.repPerTurnIn, t.remainingTurnIns, t.totalTurnIns = _.Modules.FactionData.CalculateRemainingTurnIns(_.WOWAPI.GetFactionCurrentReputation(maxReputation[1]), ]] .. repPerTurnIn .. [[, maxReputation[2]);
					cost[1][3] = t.remainingTurnIns;
				end
			end]];
		end
		return [[_.OnUpdateDB.]]..OnUpdateName..[[]];
	end,
	GenerateOnUpdateForRepeatableQuestBuddyReputationWithCost = function(repPerTurnIn, count)
		local OnUpdateName = "OnUpdateRRQBR"..repPerTurnIn
		if count then
			OnUpdateName = OnUpdateName.."x"..count
			ExportDB.OnUpdateDB[OnUpdateName] = [[~function(t)
				local cost, maxReputation = t.cost, t.maxReputation;
				if cost and maxReputation then
					local info = _.WOWAPI.GetFriendshipReputation(maxReputation[1]);
					if info then
						t.repPerTurnIn, t.remainingTurnIns, t.totalTurnIns = _.Modules.FactionData.CalculateRemainingTurnIns(info.standing, ]] .. repPerTurnIn .. [[, info.maxRep);
						cost[1][3] = t.remainingTurnIns * ]] .. count .. [[;
					end
				end
			end]];
		else
			ExportDB.OnUpdateDB[OnUpdateName] = [[~function(t)
				local cost, maxReputation = t.cost, t.maxReputation;
				if cost and maxReputation then
					local info = _.WOWAPI.GetFriendshipReputation(maxReputation[1]);
					if info then
						t.repPerTurnIn, t.remainingTurnIns, t.totalTurnIns = _.Modules.FactionData.CalculateRemainingTurnIns(info.standing, ]] .. repPerTurnIn .. [[, info.maxRep);
						cost[1][3] = t.remainingTurnIns;
					end
				end
			end]];
		end
		return [[_.OnUpdateDB.]]..OnUpdateName..[[]];
	end,
};
ExportDB.OnTooltipDB = {
	-- #if BEFORE CATA
	DesolaceCentaurs = [[~function(t, tooltipInfo)
		local reputation = t.reputation;
		if reputation > 0 and reputation < ]] .. HONORED .. [[ then
			_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Kill Centaurs to Honored.", 20, ]] .. HONORED .. [[);
		end
	end]],
	-- #endif
	Ravenholdt = [[~function(t, tooltipInfo)
		local reputation = t.reputation;
		if reputation < 42000 then
			-- #if AFTER TBC
			if reputation < 20999 then
				tinsert(tooltipInfo, { left = " * PROTIP: Do NOT turn in Heavy Lockboxes until max Honored!", r = 1, g = 0.5, b = 0.5 });
				_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Kill Arathi Syndicate", 5, 20999);
			else
				tinsert(tooltipInfo, { left = " * PROTIP: Bring a stack of Repair Bots with you.", r = 0.5, g = 1, b = 0.5 });
				_.Modules.FactionData.AddReputationTooltipInfoWithMultiplier(tooltipInfo, reputation, "Turn in Heavy Junkboxes.", 75, 42000, 5);
			end
			-- #else
			tinsert(tooltipInfo, { left = " * PROTIP: Bring a stack of Repair Bots with you.", r = 0.5, g = 1, b = 0.5 });
			_.Modules.FactionData.AddReputationTooltipInfoWithMultiplier(tooltipInfo, reputation, "Turn in Heavy Junkboxes.", 50, 42000, 5);
			-- #endif
		end
	end]],
	-- #if BEFORE CATA
	-- Runecloth Turn ins were removed with Cataclysm.
	RuneclothTurnIns = [[~function(t, tooltipInfo)
		local reputation = t.reputation;
		if reputation < 42000 then
			_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Runecloth Turn Ins",
		-- #if AFTER TBC
			75,
		-- #else
			50,
		-- #endif
			42000);
		end
	end]],
	-- #endif
	-- TODO: use _.IsSpellKnownHelper once Classic uses Classes/Spell.lua
	IsSpellOnCooldown = [[~function(t,tooltipInfo)
		local s = t.spellID
		if _.CurrentCharacter.Spells[s]then
			local n=t.name or RETRIEVING_DATA
			if _.WOWAPI.GetSpellCooldown(s)>0 then
				tinsert(tooltipInfo, { left = "Your "..n.." cooldown is unavailable." });
			else
				tinsert(tooltipInfo, { left = "Your "..n.." cooldown is available." });
			end
		end
	end]],
	-- TODO: use of this OnTooltip function should be converted into 'sourceAchievements' for proper integration with other logic
	WithRequiredAchievement = [[~function(t, tooltipInfo)
		if t.ach then tinsert(tooltipInfo, { left = _.L.REQUIRES, right = t.ach.text }); end
	end]],
	ShowHonoredKeyComparison = [[~function(t, tooltipInfo)
		local tooltip = _.ShowItemCompareTooltips(t.otherItemID);
		if _.Settings:GetUnobtainableFilter(]] .. TBC_PHASE_FOUR .. [[) then
			tooltip:AddLine("This is now available at Honored reputation.", 0.4, 0.8, 1, 1);
		else
			tooltip:AddLine("This will be available at Honored reputation after TBC Phase 4.", 0.4, 0.8, 1, 1);
		end
		tooltip:Show();
	end]],
}
ExportDB.OnClickDB = {
	-- Turns the normal right-click popout of a Thing into a popout of the 'ach' data instead
	-- NOTE: This is very misleading to the typical user as it's completely unclear as to why the popout
	-- is showing something completely different from what they expected
	-- TODO: I believe with the expected intent for this, it probably isn't necessary to use this function and instead
	-- have the 'Source(s)' group within the popout include this Achievement data as a 'pre-requisite'...
	-- or maybe just use 'sourceAchievements' instead of this manual handler?
	PopoutLinkedAchievement = [[~function(row, button)
		if button == "RightButton" and row.ref.ach then
			_:CreateMiniListForGroup(row.ref.ach);
			return true;
		end
	end]]
}

-- #if ANYCLASSIC
local CELESTIAL_DUNGEON_DIFFICULTY_BUFFS_ID
-- #if BEFORE 5.5.3
CELESTIAL_DUNGEON_DIFFICULTY_BUFFS_ID = 1243929	-- Dominion of the Empress (Season 1)
-- #elseif BEFORE 5.5.5
CELESTIAL_DUNGEON_DIFFICULTY_BUFFS_ID = 1272162	-- Might of the Thunder King (Season 2 - Throne of Thunder)
-- #else
-- CELESTIAL_DUNGEON_DIFFICULTY_BUFFS_ID = TODO	-- TODO (Season 3 -Siege of Orgrimmar)
-- #endif
FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS
= FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(CELESTIAL_DUNGEON_DIFFICULTY_BUFFS_ID)
-- #endif
