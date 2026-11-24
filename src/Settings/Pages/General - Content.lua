local _, app = ...;
local L, settings = app.L, app.Settings;

-- Settings: General Page (the content which is shown, beside the Things)
local child, column = settings.GeneralPage, settings.GeneralContentColumn;

local GameBuildVersion, INSANE = app.GameBuildVersion, "|c" .. app.DefaultColors.Insane;
local function NotDebug() return not app.MODE_DEBUG; end
local function UpdateMode() settings:UpdateMode(1); end
local function Icon(texture) return "|T" .. texture .. ":0|t "; end

app.AddEventHandler("OnPlayerLevelUp", function()
	if settings:Get("Filter:ByLevel") then
		settings:Refresh();
	end
end);

settings.CreateOptionSections(child, {
	{ title = L.SETTINGS_GROUP_COMPLETED, options = {
		{ type = "check", setting = "Show:TrackableThings", text = L.SHOW_INCOMPLETE_THINGS_CHECKBOX, tooltip = L.SHOW_INCOMPLETE_THINGS_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		{ type = "check", setting = "Show:CompletedGroups", text = L.SHOW_COMPLETED_GROUPS_CHECKBOX, tooltip = L.SHOW_COMPLETED_GROUPS_CHECKBOX_TOOLTIP,
			set = function(value)
				settings:SetCompletedGroups(value)
				settings:Set("Cache:CompletedGroups", value)
				settings:UpdateMode(1)
			end,
		},
		{ type = "check", setting = "Show:CollectedThings", text = L.SHOW_COLLECTED_THINGS_CHECKBOX, tooltip = L.SHOW_COLLECTED_THINGS_CHECKBOX_TOOLTIP,
			set = function(value)
				settings:SetCollectedThings(value)
				settings:Set("Cache:CollectedThings", value)
			end,
		},
	} },
	{ title = L.GENERAL_CONTENT, options = {
		-- The inversed options hide or filter something in their setting, so enabled = show
		{ type = "check", setting = "Hide:BoEs", inverse = true, text = Icon(app.asset("Category_WorldDrops")) .. INSANE .. L.SHOW_BOE_CHECKBOX, tooltip = L.SHOW_BOE_CHECKBOX_TOOLTIP, usable = NotDebug,
			set = function(value) settings:SetHideBOEItems(not value); end,
		},
		{ type = "check", setting = "Filter:BoEs", advanced = true, text = L.IGNORE_FILTERS_FOR_BOES_CHECKBOX, tooltip = L.IGNORE_FILTERS_FOR_BOES_CHECKBOX_TOOLTIP, indent = 1, OnChanged = UpdateMode,
			usable = function() return not (settings:Get("Hide:BoEs") or app.MODE_ACCOUNT or app.MODE_DEBUG); end,
		},
		{ type = "check", setting = "Filter:ByLevel", inverse = true, text = Icon(1530081) .. INSANE .. L.FILTER_THINGS_BY_LEVEL_CHECKBOX, tooltip = L.FILTER_THINGS_BY_LEVEL_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		app.MaximumSkillLevel and { type = "check", setting = "Filter:BySkillLevel", inverse = true, text = Icon(1530081) .. INSANE .. L.FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX, tooltip = L.FILTER_THINGS_BY_SKILL_LEVEL_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode } or false,
		-- Personal Loot was introduced with Mists of Pandaria
		GameBuildVersion >= 50000 and { type = "check", setting = "Show:UnavailablePersonalLoot", advanced = true, text = Icon(app.asset("Interface_Quest_header")) .. INSANE .. L.SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX, tooltip = L.SHOW_ALL_LEARNABLE_QUEST_REWARDS_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		{ type = "check", setting = "Show:OnlyActiveEvents", inverse = true, text = Icon(app.asset("Category_Holidays")) .. INSANE .. L.SHOW_ALL_SEASONAL, tooltip = L.SHOW_ALL_SEASONAL_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		(GameBuildVersion >= 50004 or app.IsForever) and { type = "check", setting = "Show:PetBattles", text = Icon(app.asset("Category_PetBattles")) .. INSANE .. L.SHOW_PET_BATTLES_CHECKBOX, tooltip = L.SHOW_PET_BATTLES_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		{ type = "check", setting = "Hide:PvP", inverse = true, text = Icon(app.asset("Category_PvP")) .. INSANE .. L.SHOW_PVP_CHECKBOX, tooltip = L.SHOW_PVP_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		GameBuildVersion > 50000 and GameBuildVersion <= 70000 and { type = "check", setting = "Hide:ChallengeMaster", inverse = true, text = Icon("Interface\\Icons\\achievement_challengemode_platinum") .. L.SHOW_CHALLENGE_MASTER_CHECKBOX, tooltip = L.SHOW_CHALLENGE_MASTER_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
		GameBuildVersion >= 100000 and { type = "check", setting = "Show:Skyriding", text = Icon("Interface\\Icons\\ability_dragonriding_dragonridinggliding01") .. INSANE .. L.SHOW_SKYRIDING_CHECKBOX, tooltip = L.SHOW_SKYRIDING_CHECKBOX_TOOLTIP, usable = NotDebug, OnChanged = UpdateMode },
	} },
}, nil, column);
