-- App locals
local _, app = ...;
local L = app.L;
if not app.IsRetail then return; end

-- Global locals
local coroutine, ipairs, select, tinsert, InCombatLockdown, GetLootSpecialization, GetSpecializationInfoByID
	= coroutine, ipairs, select, tinsert, InCombatLockdown, GetLootSpecialization, GetSpecializationInfoByID
local GetLegacyRaidDifficultyID, GetDungeonDifficultyID, GetRaidDifficultyID
	= GetLegacyRaidDifficultyID, GetDungeonDifficultyID, GetRaidDifficultyID;
local GetNumSpecializations = GetNumSpecializations;
local GetSpecialization = app.WOWAPI.GetSpecialization
local GetSpecializationInfo = app.WOWAPI.GetSpecializationInfo
local StartCoroutine
	= app.StartCoroutine
local Callback = app.CallbackHandlers.Callback;
local DelayedCallback = app.CallbackHandlers.DelayedCallback;

-- Implementation
app:CreateWindow("RaidAssistant", {
	IgnoreQuestUpdates = true,
	Commands = { "attra" },
	OnInit = function(self, handlers)
		self.initialized = true;
		self.doesOwnUpdate = true;

		-- Define the different window configurations that the mini list will switch to based on context.
		local raidassistant, lootspecialization, dungeondifficulty, raiddifficulty, legacyraiddifficulty;
		local GetDifficultyInfo, GetInstanceInfo = GetDifficultyInfo, GetInstanceInfo;
		local IsInGroup, IsInInstance, UnitIsGroupLeader = IsInGroup, IsInInstance, UnitIsGroupLeader;
		local C_Scenario_IsInScenario, IsInLFGDungeon = C_Scenario.IsInScenario, IsInLFGDungeon;
		local C_LFGList_GetActiveEntryInfo = C_LFGList.GetActiveEntryInfo;
		local IsAllowedToUserTeleport = IsAllowedToUserTeleport;

		-- Raid Assistant
		local switchDungeonDifficulty = function(row, button)
			self:SetData(raidassistant);
			SetDungeonDifficultyID(row.ref.difficultyID);
			Callback(self.Update, self);
			return true;
		end
		local switchRaidDifficulty = function(row, button)
			self:SetData(raidassistant);
			local myself = self;
			local difficultyID = row.ref.difficultyID;
			if not self.running then
				self.running = true;
			else
				self.running = false;
			end

			SetRaidDifficultyID(difficultyID);
			StartCoroutine("RaidDifficulty", function()
				while InCombatLockdown() do coroutine.yield(); end
				while myself.running do
					for i=0,150,1 do
						if myself.running then
							coroutine.yield();
						else
							break;
						end
					end
					if app.RaidDifficulty == difficultyID then
						myself.running = false;
						break;
					else
						SetRaidDifficultyID(difficultyID);
					end
				end
				Callback(self.Update, self);
			end);
			return true;
		end
		local switchLegacyRaidDifficulty = function(row, button)
			self:SetData(raidassistant);
			local myself = self;
			local difficultyID = row.ref.difficultyID;
			if not self.legacyrunning then
				self.legacyrunning = true;
			else
				self.legacyrunning = false;
			end
			SetLegacyRaidDifficultyID(difficultyID);
			StartCoroutine("LegacyRaidDifficulty", function()
				while InCombatLockdown() do coroutine.yield(); end
				while myself.legacyrunning do
					for i=0,150,1 do
						if myself.legacyrunning then
							coroutine.yield();
						else
							break;
						end
					end
					if app.LegacyRaidDifficulty == difficultyID then
						myself.legacyrunning = false;
						break;
					else
						SetLegacyRaidDifficultyID(difficultyID);
					end
				end
				Callback(self.Update, self);
			end);
			return true;
		end
		local function AttemptResetInstances()
			ResetInstances();
		end
		raidassistant = app.CreateRawText(L.RAID_ASSISTANT, {
			icon = app.asset("WindowIcon_RaidAssistant"),
			description = L.RAID_ASSISTANT_DESC,
			visible = true,
			back = 1,
			OnClick = app.UI.OnClick.IgnoreClicks,
			g = {
				app.CreateRawText(L.LOOT_SPEC_UNKNOWN, {
					['title'] = L.LOOT_SPEC,
					["description"] = L.LOOT_SPEC_DESC,
					['visible'] = true,
					['OnClick'] = function(row, button)
						self:SetData(lootspecialization);
						Callback(self.Update, self);
						return true;
					end,
					['OnUpdate'] = function(data)
						if self.Spec then
							local id, name, description, icon, role, class = GetSpecializationInfoByID(self.Spec);
							if name then
								if GetLootSpecialization() == 0 then name = name .. " (Automatic)"; end
								data.text = name;
								data.icon = icon;
							end
						end
					end,
				}),
				app.CreateDifficulty(1, {
					['title'] = L.DUNGEON_DIFF,
					["description"] = L.DUNGEON_DIFF_DESC,
					['visible'] = true,
					["trackable"] = false,
					['OnClick'] = function(row, button)
						self:SetData(dungeondifficulty);
						Callback(self.Update, self);
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.DungeonDifficulty then
							data.difficultyID = app.DungeonDifficulty;
							data.name = GetDifficultyInfo(data.difficultyID) or "???";
							local name, instanceType, instanceDifficulty, difficultyName = GetInstanceInfo();
							if instanceDifficulty and data.difficultyID ~= instanceDifficulty and instanceType == 'party' then
								data.name = data.name .. " (" .. (difficultyName or "???") .. ")";
							end
						end
					end,
				}),
				app.CreateDifficulty(14, {
					['title'] = L.RAID_DIFF,
					["description"] = L.RAID_DIFF_DESC,
					['visible'] = true,
					["trackable"] = false,
					['OnClick'] = function(row, button)
						-- Don't allow you to change difficulties when you're in LFR / Raid Finder
						if app.RaidDifficulty == 7 or app.RaidDifficulty == 17 then return true; end
						self:SetData(raiddifficulty);
						Callback(self.Update, self);
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.RaidDifficulty then
							data.difficultyID = app.RaidDifficulty;
							local name, instanceType, instanceDifficulty, difficultyName = GetInstanceInfo();
							if instanceDifficulty and data.difficultyID ~= instanceDifficulty and instanceType == 'raid' then
								data.name = (GetDifficultyInfo(data.difficultyID) or "???") .. " (" .. (difficultyName or "???") .. ")";
							else
								data.name = GetDifficultyInfo(data.difficultyID);
							end
						end
					end,
				}),
				app.CreateDifficulty(5, {
					['title'] = L.LEGACY_RAID_DIFF,
					["description"] = L.LEGACY_RAID_DIFF_DESC,
					['visible'] = true,
					["trackable"] = false,
					['OnClick'] = function(row, button)
						-- Don't allow you to change difficulties when you're in LFR / Raid Finder
						if app.RaidDifficulty == 7 or app.RaidDifficulty == 17 then return true; end
						self:SetData(legacyraiddifficulty);
						Callback(self.Update, self);
						return true;
					end,
					['OnUpdate'] = function(data)
						if app.LegacyRaidDifficulty then
							data.difficultyID = app.LegacyRaidDifficulty;
						end
					end,
				}),
				app.CreateRawText(L.RESET_INSTANCES, {
					['icon'] = app.asset("Button_Reset"),
					['description'] = L.RESET_INSTANCES_DESC,
					['visible'] = true,
					['OnClick'] = function(row, button)
						-- make sure the indicator icon is allowed to show
						if IsAltKeyDown() then
							row.ref.saved = not row.ref.saved;
							Callback(self.Update, self);
						else
							ResetInstances();
						end
						return true;
					end,
					['OnUpdate'] = function(data)
						data.trackable = data.saved;
						data.visible = not IsInGroup() or UnitIsGroupLeader("player");
						if data.visible and data.saved then
							if IsInInstance() or C_Scenario_IsInScenario() then
								data.shouldReset = true;
							elseif data.shouldReset then
								data.shouldReset = nil;
								C_Timer.After(0.5, AttemptResetInstances);
							end
						end
					end,
				}),
				app.CreateRawText(L.TELEPORT_TO_FROM_DUNGEON, {
					['icon'] = 136222,
					['description'] = L.TELEPORT_TO_FROM_DUNGEON_DESC,
					['visible'] = true,
					['OnClick'] = function(row, button)
						LFGTeleport(IsInLFGDungeon() and true or false);
						return true;
					end,
					['OnUpdate'] = function(data)
						data.visible = IsAllowedToUserTeleport();
					end,
				}),
				app.CreateRawText(L.DELIST_GROUP, {
					['icon'] = 252175,
					['description'] = L.DELIST_GROUP_DESC,
					['visible'] = true,
					['OnClick'] = function(row, button)
						C_LFGList.RemoveListing();
						if GroupFinderFrame:IsVisible() then
							PVEFrame_ToggleFrame("GroupFinderFrame")
						end
						self:SetData(raidassistant);
						Callback(self.DefaultUpdate, self, true);
						return true;
					end,
					['OnUpdate'] = function(data)
						data.visible = C_LFGList_GetActiveEntryInfo();
					end,
				}),
				app.CreateRawText(L.LEAVE_GROUP, {
					['icon'] = 132331,
					['description'] = L.LEAVE_GROUP_DESC,
					['visible'] = true,
					['OnClick'] = function(row, button)
						C_PartyInfo.LeaveParty();
						if GroupFinderFrame:IsVisible() then
							PVEFrame_ToggleFrame("GroupFinderFrame")
						end
						self:SetData(raidassistant);
						Callback(self.DefaultUpdate, self, true);
						return true;
					end,
					['OnUpdate'] = function(data)
						data.visible = IsInGroup();
					end,
				}),
			}
		})
		lootspecialization = app.CreateRawText(L.LOOT_SPEC, {
			['icon'] = 1499566,
			["description"] = L.LOOT_SPEC_DESC_2,
			['OnClick'] = function(row, button)
				self:SetData(raidassistant);
				Callback(self.Update, self);
				return true;
			end,
			['OnUpdate'] = function(data)
				data.g = {};
				local numSpecializations = GetNumSpecializations();
				if numSpecializations and numSpecializations > 0 then
					tinsert(data.g, app.CreateRawText(L.CURRENT_SPEC, {
						['title'] = select(2, GetSpecializationInfo(GetSpecialization())),
						['icon'] = 1495827,
						['id'] = 0,
						["description"] = L.CURRENT_SPEC_DESC,
						['visible'] = true,
						['OnClick'] = function(row, button)
							self:SetData(raidassistant);
							SetLootSpecialization(row.ref.id);
							Callback(self.Update, self);
							return true;
						end,
					}))
					for i=1,numSpecializations,1 do
						local id, name, description, icon, background, role, primaryStat = GetSpecializationInfo(i);
						tinsert(data.g, app.CreateRawText(name, {
							['icon'] = icon,
							['id'] = id,
							["description"] = description,
							['visible'] = true,
							['OnClick'] = function(row, button)
								self:SetData(raidassistant);
								SetLootSpecialization(row.ref.id);
								Callback(self.Update, self);
								return true;
							end,
						}))
					end
				end
			end,
			['visible'] = true,
			['back'] = 1,
			['g'] = {},
		})
		dungeondifficulty = app.CreateRawText(L.DUNGEON_DIFF, {
			['icon'] = 236530,
			["description"] = L.DUNGEON_DIFF_DESC_2,
			['OnClick'] = function(row, button)
				self:SetData(raidassistant);
				Callback(self.Update, self);
				return true;
			end,
			['visible'] = true,
			["trackable"] = false,
			['back'] = 1,
			['g'] = {
				app.CreateDifficulty(1, {
					['OnClick'] = switchDungeonDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(2, {
					['OnClick'] = switchDungeonDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(23, {
					['OnClick'] = switchDungeonDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				})
			},
		})
		raiddifficulty = app.CreateRawText(L.RAID_DIFF, {
			['icon'] = 236530,
			["description"] = L.RAID_DIFF_DESC_2,
			['OnClick'] = function(row, button)
				self:SetData(raidassistant);
				Callback(self.Update, self);
				return true;
			end,
			['visible'] = true,
			["trackable"] = false,
			['back'] = 1,
			['g'] = {
				app.CreateDifficulty(14, {
					['OnClick'] = switchRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(15, {
					['OnClick'] = switchRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(16, {
					['OnClick'] = switchRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				})
			},
		})
		legacyraiddifficulty = app.CreateRawText(L.LEGACY_RAID_DIFF, {
			['icon'] = 236530,
			["description"] = L.LEGACY_RAID_DIFF_DESC_2,
			['OnClick'] = function(row, button)
				self:SetData(raidassistant);
				Callback(self.Update, self);
				return true;
			end,
			['visible'] = true,
			["trackable"] = false,
			['back'] = 1,
			['g'] = {
				app.CreateDifficulty(3, {
					['OnClick'] = switchLegacyRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(5, {
					['OnClick'] = switchLegacyRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(4, {
					['OnClick'] = switchLegacyRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
				app.CreateDifficulty(6, {
					['OnClick'] = switchLegacyRaidDifficulty,
					["description"] = L.CLICK_TO_CHANGE,
					['visible'] = true,
					["trackable"] = false,
				}),
			},
		})
		self:SetData(raidassistant);

		-- Setup Event Handlers and register for events
		self:SetScript("OnEvent", function(self, e, ...) DelayedCallback(self.Update, 0.5, self, true); end);
		self:RegisterEvent("PLAYER_LOOT_SPEC_UPDATED");
		self:RegisterEvent("PLAYER_DIFFICULTY_CHANGED");
		self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED");
		self:RegisterEvent("CHAT_MSG_SYSTEM");
		self:RegisterEvent("SCENARIO_UPDATE");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("GROUP_ROSTER_UPDATE");
	end,
	OnUpdate = function(self, force, trigger)
		-- Update the window and all of its row data
		app.LegacyRaidDifficulty = GetLegacyRaidDifficultyID() or 1;
		app.DungeonDifficulty = GetDungeonDifficultyID() or 1;
		app.RaidDifficulty = GetRaidDifficultyID() or 14;
		self.Spec = GetLootSpecialization();
		if not self.Spec or self.Spec == 0 then
			local spec = GetSpecialization();
			if spec then self.Spec = GetSpecializationInfo(spec); end
		end

		-- Update the window and all of its row data
		if self.data.OnUpdate then self.data.OnUpdate(self.data); end
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end

		-- Update the groups without forcing Debug Mode.
		local visibleState = app.Modules.Filter.Get.Visible();
		app.Modules.Filter.Set.Visible()
		self:AssignChildren();
		self:DefaultUpdate(true);
		app.Modules.Filter.Set.Visible(visibleState)
		return true
	end,
})
