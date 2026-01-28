-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local coroutine, ipairs, pairs, select, tinsert, wipe
	= coroutine, ipairs, pairs, select, tinsert, wipe;
local C_Timer, GetLootThreshold, GetNumGroupMembers, GetRaidRosterInfo
	= C_Timer, GetLootThreshold, GetNumGroupMembers, GetRaidRosterInfo;
local GetInstanceInfo, ResetInstances, UnitIsGroupLeader, InCombatLockdown
	= GetInstanceInfo, ResetInstances, UnitIsGroupLeader, InCombatLockdown;
local GetDifficultyInfo, GetDungeonDifficultyID, GetRaidDifficultyID, GetLegacyRaidDifficultyID
	= GetDifficultyInfo, GetDungeonDifficultyID, GetRaidDifficultyID, GetLegacyRaidDifficultyID;
local GetLootSpecialization, GetNumSpecializations, GetSpecializationInfoByID
	= GetLootSpecialization, GetNumSpecializations, GetSpecializationInfoByID;
local IsInGroup, IsInInstance, IsInLFGDungeon, IsAllowedToUserTeleport, LFGTeleport
	= IsInGroup, IsInInstance, IsInLFGDungeon, IsAllowedToUserTeleport, LFGTeleport;
local C_LFGList_GetActiveEntryInfo = C_LFGList and C_LFGList.GetActiveEntryInfo;
local C_LFGList_RemoveListing = C_LFGList and C_LFGList.RemoveListing;
local C_Scenario_IsInScenario = C_Scenario and C_Scenario.IsInScenario;

local Callback = app.CallbackHandlers.Callback;
local DelayedCallback = app.CallbackHandlers.DelayedCallback;
local AfterCombatCallback = app.CallbackHandlers.AfterCombatCallback;

-- WoW API
local GetSpecialization = app.WOWAPI.GetSpecialization;
local GetSpecializationInfo = app.WOWAPI.GetSpecializationInfo;
local GetLootMethod = app.WOWAPI.GetLootMethod;
local SetLootMethod = app.WOWAPI.SetLootMethod;
local ConvertToRaid = app.WOWAPI.ConvertToRaid;
local LeaveParty = app.WOWAPI.LeaveParty;
local InviteUnit = app.WOWAPI.InviteUnit;

-- Helper Functions
local CloseGroupFinder = function()
	if GroupFinderFrame and GroupFinderFrame:IsVisible() then
		PVEFrame_ToggleFrame("GroupFinderFrame")
	end
end

-- Module locals
local AutoReset = false;
local InviteCharacterName = "LET ME IN, LET ME INNNNN";
local isBusy = not C_Scenario_IsInScenario and IsInInstance or function()
	return IsInInstance() or C_Scenario_IsInScenario();
end;
-- NOTE: This should be moved to a common api file.
local function SortByTextAndPriority(a, b)
	if b.priority > a.priority then
		return true;
	elseif b.priority == a.priority then
		return b.text > a.text;
	else
		return false;
	end
end
local function IsRaidLeader()
	---@diagnostic disable-next-line: param-type-mismatch
	return UnitIsGroupLeader("player");
end

-- Loot Method
local lootMethodIDs = {
	personalloot = 5,
	freeforall = 0,
	group = 3,
	master = 2,
	needbeforegreed = 4,
	roundrobin = 1,
};
if GetLootMethod and SetLootMethod then
	local lootMethods = {
		personalloot = "Personal Loot",
		group = "Group Loot",
		master = "Master Loot",
		freeforall = "Free for All",
		needbeforegreed = "Need Before Greed",
		roundrobin = "Round Robin",
	};
	local lootMethodLore = {
		personalloot = "Each player has an independent chance at looting an item useful for their class...\n\n... Or useless things like rings.",
		group = "Group loot, round-robin for normal items, rolling for special ones.",
		master = "Master looter, designated player distributes loot.",
	};
	if UnitLootMethod then
		for key,value in pairs(UnitLootMethod) do
			lootMethods[key] = value.text;
			lootMethodLore[key] = value.tooltipText;
		end
	end
	local lootMethodIcons = {
		personalloot = 134153,
		freeforall = 132307,
		group = 133784,
		master = 132333,
		needbeforegreed = 132292,
		roundrobin = 133784,
	};
	if not (C_PartyInfo and C_PartyInfo.GetLootMethod) then
		for key,_ in pairs(lootMethodIDs) do
			lootMethodIDs[key] = key;
		end
	end
	local setLootMethod = function(self, button)
		if IsInGroup() then
			if self.ref.id == "master" then
				---@diagnostic disable-next-line: redundant-parameter
				SetLootMethod(self.ref.methodID, UnitName("player"));
			else
				---@diagnostic disable-next-line: redundant-parameter
				SetLootMethod(self.ref.methodID);
			end
		end
		if self then self:GetParent():GetParent():ResetWindow(); end
		return true;
	end;
	app.CreateLootMethod = app.CreateClass("LootMethod", "id", {
		text = function(t)
			return lootMethods[t.id];
		end,
		icon = function(t)
			return lootMethodIcons[t.id];
		end,
		lore = function(t)
			return lootMethodLore[t.id];
		end,
		methodID = function(t)
			return lootMethodIDs[t.id];
		end,
		visible = app.ReturnTrue,
		OnClick = function(t)
			return setLootMethod;
		end,
	});
end
local lootMethodKeysToIDs = {};
for key,value in pairs(lootMethodIDs) do
	lootMethodKeysToIDs[value] = key;
end

-- Loot Threshold
if GetLootThreshold and SetLootThreshold then
	local lootThresholdIcons = {
		135274,	-- Common
		135325,	-- Uncommon
		135352,	-- Rare
		135372,	-- Epic
		133066,	-- Legendary
		[0] = 135274,	-- Poor
	};
	local setLootThreshold = function(self, button)
		if IsInGroup() then
			SetLootThreshold(self.ref.id);
		end
		if self then self:GetParent():GetParent():ResetWindow(); end
		return true;
	end;
	app.CreateLootThreshold = app.CreateClass("LootThreshold", "id", {
		text = function(t)
			return ITEM_QUALITY_COLORS[t.id].hex .. t.name .. "|r";
		end,
		name = function(t)
			return _G["ITEM_QUALITY" .. t.id .. "_DESC"];
		end,
		icon = function(t)
			return lootThresholdIcons[t.id];
		end,
		description = function(t)
			return NEWBIE_TOOLTIP_UNIT_LOOT_THRESHOLD;
		end,
		visible = app.ReturnTrue,
		OnClick = function(t)
			return setLootThreshold;
		end,
		IsClassIsolated = true,
	});
end

-- Implementation
app:CreateWindow("RaidAssistant", {
	IgnoreQuestUpdates = true,
	Commands = { "attra" },
	OnEvent = function(self, e, ...)
		Callback(self.Update, self, true);
	end,
	OnLoad = function(self, settings)
		-- Only remember the setting if the Raid Assistant was visible
		AutoReset = settings.visible and settings.AutoReset;
	end,
	OnSave = function(self, settings)
		settings.AutoReset = AutoReset;
	end,
	OnInit = function(self, handlers)
		-- Raid Assistant Header
		local options = {};
		local raidassistant = app.CreateRawText(L.RAID_ASSISTANT, {
			icon = app.asset("WindowIcon_RaidAssistant"),
			description = L.RAID_ASSISTANT_DESC,
			expanded = true,
			visible = true,
			back = 1,
			g = {},
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					for i,option in ipairs(options) do
						option.parent = t;
						tinsert(g, option);
					end
					app.Sort(g, SortByTextAndPriority);
					t.OnUpdate = nil;
				end
			end
		});
		self:SetData(raidassistant);
		self.ResetWindow = function()
			self:SetData(raidassistant);
			Callback(self.Update, self, true);
		end
		
		-- Setup Event Handlers and register for events
		self:RegisterEvent("CHAT_MSG_SYSTEM");
		self:RegisterEvent("GROUP_ROSTER_UPDATE");
		self:AddEventHandler("OnCurrentMapIDChanged", function()
			DelayedCallback(self.Update, 0.5, self);
		end);
		self:AddEventHandler("OnCurrentDifficultiesChanged", function()
			self:Update(true);
		end);
		
		-- Dungeon Difficulty (Added with TBC)
		if app.GameBuildVersion >= 20000 then
			local function switchDungeonDifficulty(row, button)
				AfterCombatCallback(SetDungeonDifficultyID, row.ref.difficultyID);
				self:ResetWindow();
				return true;
			end
			local dungeondifficulty = app.CreateDifficulty(1, {
				text = L.DUNGEON_DIFF,
				description = L.DUNGEON_DIFF_DESC_2,
				trackable = false,
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for i,difficultyID in ipairs({1, 2, 8, 23 }) do
							if GetDifficultyInfo(difficultyID) then
								tinsert(g, app.CreateDifficulty(difficultyID, {
									description = L.CLICK_TO_CHANGE,
									OnClick = switchDungeonDifficulty,
									OnUpdate = app.AlwaysShowUpdate,
									trackable = false,
									parent = data,
								}));
							end
						end
					end
					data.visible = true;
				end,
			});
			tinsert(options, app.CreateDifficulty(1, {
				title = L.DUNGEON_DIFF,
				description = L.DUNGEON_DIFF_DESC,
				trackable = false,
				priority = 10,
				OnClick = function(row, button)
					if IsInInstance() then return true; end
					self:SetData(dungeondifficulty);
					self:Update(true);
					return true;
				end,
				OnUpdate = function(data)
					local difficultyID = GetDungeonDifficultyID() or 1;
					data.difficultyID = difficultyID;
					local difficultyName = GetDifficultyInfo(difficultyID) or "???";
					local instanceName, instanceType, instanceDifficulty, instanceDifficultyName = GetInstanceInfo();
					if instanceDifficulty and difficultyID ~= instanceDifficulty and instanceType == 'party' then
						data.name = difficultyName .. " (" .. (instanceDifficultyName or "???") .. ") (Dungeon)";
					else
						data.name = difficultyName .. " (Dungeon)";
					end
					data.visible = true;
					return true;
				end,
			}));

			-- Raid Difficulty (Added with Wrath)
			if app.GameBuildVersion >= 30000 then
				-- Legacy Raid Difficulty (Added with SoO in MOP)
				local raidDifficultyIDs = { 3, 5, 4, 6 };
				if SetLegacyRaidDifficultyID and GetDifficultyInfo(14) and app.GameBuildVersion >= 50505 then
					local switchLegacyRaidDifficulty = function(row, button)
						AfterCombatCallback(SetLegacyRaidDifficultyID, row.ref.difficultyID);
						self:ResetWindow();
						return true;
					end
					local legacyRaidDifficultyIDs = raidDifficultyIDs;
					raidDifficultyIDs = { 14, 15, 16 };
					local highestDifficultyID = legacyRaidDifficultyIDs[#legacyRaidDifficultyIDs];
					local legacyraiddifficulty = app.CreateDifficulty(highestDifficultyID, {
						text = L.LEGACY_RAID_DIFF,
						description = L.LEGACY_RAID_DIFF_DESC,
						trackable = false,
						back = 1,
						g = {},
						OnClick = function(row, button)
							self:ResetWindow();
							return true;
						end,
						OnUpdate = function(data)
							local g = data.g;
							if #g < 1 then
								for i,difficultyID in ipairs(legacyRaidDifficultyIDs) do
									if GetDifficultyInfo(difficultyID) then
										tinsert(g, app.CreateDifficulty(difficultyID, {
											description = L.CLICK_TO_CHANGE,
											OnClick = switchLegacyRaidDifficulty,
											OnUpdate = app.AlwaysShowUpdate,
											trackable = false,
											parent = data,
										}));
									end
								end
							end
							data.visible = true;
						end,
					});
					tinsert(options, app.CreateDifficulty(highestDifficultyID, {
						title = L.LEGACY_RAID_DIFF,
						description = L.LEGACY_RAID_DIFF_DESC,
						trackable = false,
						priority = 11,
						OnClick = function(row, button)
							-- Don't allow you to change difficulties when you're in LFR / Raid Finder
							if row.ref.difficultyID == 7 or row.ref.difficultyID == 17 then return true; end
							self:SetData(legacyraiddifficulty);
							self:Update(true);
							return true;
						end,
						OnUpdate = function(data)
							local difficultyID = GetLegacyRaidDifficultyID() or 1;
							data.difficultyID = difficultyID;
							local difficultyName = GetDifficultyInfo(difficultyID) or "???";
							local instanceName, instanceType, instanceDifficulty, instanceDifficultyName = GetInstanceInfo();
							if instanceDifficulty and difficultyID ~= instanceDifficulty and instanceType == 'raid' then
								data.name = difficultyName .. " (" .. (instanceDifficultyName or "???") .. ") (Legacy)";
							else
								data.name = difficultyName .. " (Legacy)";
							end
							data.visible = true;
							return true;
						end,
					}));
				end

				-- Create the normal raid difficulty header.
				local highestDifficultyID = raidDifficultyIDs[#raidDifficultyIDs];
				local switchRaidDifficulty = function(row, button)
					AfterCombatCallback(SetRaidDifficultyID, row.ref.difficultyID);
					self:ResetWindow();
					return true;
				end
				local raiddifficulty = app.CreateDifficulty(highestDifficultyID, {
					text = L.RAID_DIFF,
					description = L.RAID_DIFF_DESC_2,
					trackable = false,
					back = 1,
					g = {},
					OnClick = function(row, button)
						self:ResetWindow();
						return true;
					end,
					OnUpdate = function(data)
						local g = data.g;
						if #g < 1 then
							for i,difficultyID in ipairs(raidDifficultyIDs) do
								if GetDifficultyInfo(difficultyID) then
									tinsert(g, app.CreateDifficulty(difficultyID, {
										description = L.CLICK_TO_CHANGE,
										OnClick = switchRaidDifficulty,
										OnUpdate = app.AlwaysShowUpdate,
										trackable = false,
										parent = data,
									}));
								end
							end
						end
						data.visible = true;
					end,
				});
				tinsert(options, app.CreateDifficulty(highestDifficultyID, {
					title = L.RAID_DIFF,
					description = L.RAID_DIFF_DESC_2,
					trackable = false,
					priority = 12,
					OnClick = function(row, button)
						-- Don't allow you to change difficulties when you're in LFR / Raid Finder
						if row.ref.difficultyID == 7 or row.ref.difficultyID == 17 then return true; end
						self:SetData(raiddifficulty);
						self:Update(true);
						return true;
					end,
					OnUpdate = function(data)
						local difficultyID = GetRaidDifficultyID() or 1;
						data.difficultyID = difficultyID;
						local difficultyName = GetDifficultyInfo(difficultyID) or "???";
						local instanceName, instanceType, instanceDifficulty, instanceDifficultyName = GetInstanceInfo();
						if instanceDifficulty and difficultyID ~= instanceDifficulty and instanceType == 'raid' then
							data.name = difficultyName .. " (" .. (instanceDifficultyName or "???") .. ") (Raid)";
						else
							data.name = difficultyName .. " (Raid)";
						end
						data.visible = true;
						return true;
					end,
				}));
			end
		end
		
		-- If Loot Threshold exists, we have the ability to change the minimum acceptable loot quality for /roll'd items.
		if app.CreateLootThreshold then
			local lootthreshold = app.CreateRawText("Loot Threshold", {
				icon = 133784,
				description = "Select a new loot threshold.",
				expanded = true,
				maximum = 5,
				minimum = app.GameBuildVersion > 11403 and 2 or 0,
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						local maximum, minimum = data.maximum, data.minimum;
						for i=maximum,minimum,-1 do
							local threshold = app.CreateLootThreshold(i);
							threshold.OnUpdate = app.AlwaysShowUpdate;
							threshold.parent = data;
							tinsert(g, threshold);
						end
					end
					data.visible = true;
				end,
			});
			tinsert(options, app.CreateLootThreshold(2, {
				title = LOOT_TRESHOLD,
				priority = 3,
				visible = true,
				OnClick = function(row, button)
					if IsRaidLeader() then
						self:SetData(lootthreshold);
						self:Update(true);
					end
					return true;
				end,
				OnUpdate = function(data)
					if IsInGroup() then
						data.id = GetLootThreshold();
						data.visible = true;
					else
						data.visible = false;
					end
					return true;
				end,
			}));
		end

		-- If Loot Method exists, we can change how loot gets distributed for the raid.
		if app.CreateLootMethod then
			-- Allow the user to change the Loot Method
			local lootmethod = app.CreateRawText(LOOT_METHOD, {
				icon = 133784,
				description = "This setting allows you to customize what kind of loot will drop and how much.\n\nThis only works while in a party - If you're by yourself, you can create a Premade Group (just don't invite anyone) and then change it.\n\nClick this row to go back to the Raid Assistant.",
				expanded = true,
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for key,value in pairs(lootMethodIDs) do
							local method = app.CreateLootMethod(key);
							method.description = L.CLICK_TO_CHANGE;
							method.OnUpdate = app.AlwaysShowUpdate;
							method.parent = data;
							tinsert(g, method);
						end
					end
					data.visible = true;
				end,
			});
			tinsert(options, app.CreateLootMethod("group", {
				title = LOOT_METHOD,
				priority = 1,
				OnClick = function(row, button)
					if IsRaidLeader() then
						self:SetData(lootmethod);
						self:Update(true);
					end
					return true;
				end,
				OnUpdate = function(data)
					data.visible = IsInGroup();
					if data.visible then
						data.id = lootMethodKeysToIDs[GetLootMethod()];
					end
					return true;
				end,
			}));

			-- Allow the user to select a Loot Master
			local lootmasters = app.CreateRawText(MASTER_LOOTER, {
				icon = 133784,
				description = "This setting allows you to select a new Master Looter.",
				expanded = true,
				members = {},
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					wipe(g);
					local count = GetNumGroupMembers();
					if count > 0 then
						local members = data.members;
						for raidIndex = 1, 40, 1 do
							local name, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(raidIndex);
							if name then
								local guid = UnitGUID(name);
								local member = members[name];
								if not member then
									member = app.CreateUnit(guid or name, {
										ServerName = name,
										isML = isML,
										parent = data,
										OnUpdate = app.AlwaysShowUpdate,
										OnClick = function(row, button)
											---@diagnostic disable-next-line: redundant-parameter
											SetLootMethod(lootMethodIDs["master"], row.ref.ServerName);
											self:ResetWindow();
											return true;
										end,
									});
									members[name] = member;
								else
									member.isML = isML;
								end
								tinsert(data.g, member);
							end
						end
					end
					data.visible = true;
				end,
			});
			tinsert(options, app.CreateUnit("player", {
				title = MASTER_LOOTER,
				priority = 2,
				description = "This player is currently the Master Looter.",
				OnClick = function(row, button)
					if IsRaidLeader() then
						self:SetData(lootmasters);
						self:Update(true);
					end
					return true;
				end,
				OnUpdate = function(data)
					if IsInGroup() then
						local lootMethod, partyIndex, raidIndex = GetLootMethod();
						if lootMethod == "master" or lootMethod == 2 then
							local savedData = {};
							savedData.parent = data.parent;
							savedData.title = data.title;
							savedData.description = data.description;
							savedData.OnClick = data.OnClick;
							savedData.OnUpdate = data.OnUpdate;
							if raidIndex then
								savedData.unit = "raid" .. raidIndex;
							elseif partyIndex == 0 then
								savedData.unit = "player";
							else
								savedData.unit = "party" .. partyIndex;
							end
							wipe(data);
							for key,value in pairs(savedData) do
								data[key] = value;
							end
							data.visible = true;
						else
							data.visible = false;
						end
					else
						data.visible = false;
					end
					return true;
				end,
			}));
		end
		
		-- If Loot Spec exists, we have the ability to change the player's current loot specialization.
		if GetLootSpecialization and SetLootSpecialization and app.GameBuildVersion >= 50000 then
			self:RegisterEvent("PLAYER_LOOT_SPEC_UPDATED");
			local function switchLootSpecialization(row, button)
				SetLootSpecialization(row.ref.id);
				self:ResetWindow();
				return true;
			end
			local lootspecialization = app.CreateRawText(L.LOOT_SPEC, {
				icon = 237585,
				description = L.LOOT_SPEC_DESC_2,
				visible = true,
				back = 1,
				g = {},
				OnClick = function(row, button)
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						local numSpecializations = GetNumSpecializations();
						if numSpecializations and numSpecializations > 0 then
							tinsert(g, app.CreateRawText(L.CURRENT_SPEC, {
								description = L.CURRENT_SPEC_DESC,
								id = 0,
								OnClick = switchLootSpecialization,
								OnUpdate = function(data)
									local id, name, description, icon, role, primaryStat = GetSpecializationInfo(GetSpecialization());
									if role then data.title = _G[role]; end
									data.text = L.CURRENT_SPEC .. " (" .. name .. ")";
									data.icon = icon;
									data.description = description;
									data.visible = true;
									return true;
								end,
							}));
							for i=1,numSpecializations,1 do
								local id, name, description, icon, role, primaryStat = GetSpecializationInfo(i);
								if role then role = _G[role]; end
								tinsert(g, app.CreateRawText(name, {
									title = role,
									id = id,
									icon = icon,
									description = description,
									OnClick = switchLootSpecialization,
									OnUpdate = function(data)
										data.visible = true;
										return true;
									end,
								}));
							end
						end
					end
				end,
			});
			tinsert(options, app.CreateRawText(L.LOOT_SPEC_UNKNOWN, {
				title = L.LOOT_SPEC,
				description = L.LOOT_SPEC_DESC,
				priority = 4,
				OnClick = function(row, button)
					self:SetData(lootspecialization);
					self:Update(true);
					return true;
				end,
				OnUpdate = function(data)
					local lootSpec = GetLootSpecialization() or 0;
					if lootSpec == 0 then
						local id, name, description, icon, role, class = GetSpecializationInfo(GetSpecialization());
						if name then
							data.text = name .. " (Automatic)";
							data.icon = icon;
							data.description = description;
						end
					else
						local id, name, description, icon, role, class = GetSpecializationInfoByID(lootSpec);
						if name then
							data.text = name;
							data.icon = icon;
							data.description = description;
						end
					end

					data.visible = true;
					return true;
				end,
			}));
		end
		
		-- If LFG exists, we get some access to some special api functions.
		if C_LFGList_GetActiveEntryInfo and app.GameBuildVersion >= 30000 then
			-- For teleporting in/out... (available with Dungeon Finder itself)
			if IsInLFGDungeon and IsAllowedToUserTeleport and LFGTeleport then
				tinsert(options, app.CreateRawText(L.TELEPORT_TO_FROM_DUNGEON, {
					icon = 136222,
					description = L.TELEPORT_TO_FROM_DUNGEON_DESC,
					priority = 17,
					OnClick = function(row, button)
						LFGTeleport(not not IsInLFGDungeon());
						return true;
					end,
					OnUpdate = function(data)
						data.visible = IsAllowedToUserTeleport();
						return true;
					end,
				}));
			end

			-- And for Delisting the group!
			if C_LFGList_RemoveListing then
				tinsert(options, app.CreateRawText(L.DELIST_GROUP, {
					icon = 252175,
					description = L.DELIST_GROUP_DESC,
					priority = 18,
					OnClick = function(row, button)
						C_LFGList_RemoveListing();
						CloseGroupFinder();
						self:Update(true);
						return true;
					end,
					OnUpdate = function(data)
						data.visible = C_LFGList_GetActiveEntryInfo();
						return true;
					end,
				}));
			end
		end
		
		if app.GameBuildVersion < 30000 then
			tinsert(options, app.CreateRawText("Create a Group", {
				icon = 132331,
				description = "Click here to attempt to create a group.\n\nNOTE: This will invite a fake character and you can use this to force teleport out of dungeons when used in conjection with Leave Group option.",
				priority = 20,
				OnClick = function(row, button)
					InviteUnit(InviteCharacterName);
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					data.visible = not IsInGroup();
					return true;
				end,
			}));
			tinsert(options, app.CreateRawText("Create a Raid", {
				icon = 132331,
				description = "Click here to attempt to create a raid group.\n\nNOTE: This will invite a fake character and you can use this to force enter a raid without actually needing to be in a raid group. You need to run into the instance the moment you see 'Party converted to Raid'. It may take a couple of attempts.",
				priority = 20,
				OnClick = function(row, button)
					InviteUnit(InviteCharacterName);
					C_Timer.After(0.8,function() ConvertToRaid(); end);
					self:ResetWindow();
					return true;
				end,
				OnUpdate = function(data)
					data.visible = not IsInGroup();
					return true;
				end,
			}));
		end
		
		tinsert(options, app.CreateRawText(L.LEAVE_GROUP, {
			icon = 132331,
			description = L.LEAVE_GROUP_DESC,
			priority = 19,
			OnClick = function(row, button)
				LeaveParty();
				CloseGroupFinder();
				self:ResetWindow();
				return true;
			end,
			OnUpdate = function(data)
				data.visible = IsInGroup();
				return true;
			end,
		}));
		tinsert(options, app.CreateRawText("Port to Graveyard", {
			icon = 132331,
			description = "Click here to create a group and then immediately leave it. This will port you to the nearest graveyard after 1 minute.",
			priority = 25,
			OnClick = function(row, button)
				if IsInGroup() then
					LeaveParty();
					CloseGroupFinder();
				else
					InviteUnit(InviteCharacterName);
					C_Timer.After(0.5,function()
						LeaveParty();
						CloseGroupFinder();
					end);
				end
				self:ResetWindow();
				return true;
			end,
			OnUpdate = function(data)
				data.visible = IsInInstance();
				return true;
			end,
		}));
		
		local function AttemptResetInstances()
			ResetInstances();
		end
		tinsert(options, app.CreateRawText(L.RESET_INSTANCES, {
			icon = app.asset("Button_Reset"),
			description = L.RESET_INSTANCES_DESC,
			priority = 16,
			OnClick = function(row, button)
				if IsAltKeyDown() then
					AutoReset = not AutoReset;
					self:Update(true);
				else
					ResetInstances();
				end
				return true;
			end,
			OnUpdate = function(data)
				data.saved = AutoReset;
				data.visible = not IsInGroup() or IsRaidLeader();
				if data.visible and AutoReset and not isBusy() then
					C_Timer.After(0.5, AttemptResetInstances);
				end
				return true;
			end,
		}));
	end,
});