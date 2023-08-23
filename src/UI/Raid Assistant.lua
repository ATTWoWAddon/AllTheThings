-- App locals
local appName, app = ...;

-- Global locals
local ipairs, tinsert, pairs, wipe
	= ipairs, tinsert, pairs, wipe;
local C_Timer, GetLootMethod, GetLootThreshold, GetNumGroupMembers, GetRaidRosterInfo =
	  C_Timer, GetLootMethod, GetLootThreshold, GetNumGroupMembers, GetRaidRosterInfo;
local IsInGroup, IsInInstance, LeaveParty, ResetInstances, SetLootMethod =
	  IsInGroup, IsInInstance, (C_PartyInfo and C_PartyInfo.LeaveParty or LeaveParty), ResetInstances, SetLootMethod;
local GetBuildInfo, GetInstanceInfo, ResetInstances, UnitIsGroupLeader =
	  GetBuildInfo, GetInstanceInfo, ResetInstances, UnitIsGroupLeader;
local GetDifficultyInfo, GetDungeonDifficultyID, GetRaidDifficultyID, GetLegacyRaidDifficultyID = 
	  GetDifficultyInfo, GetDungeonDifficultyID, GetRaidDifficultyID, GetLegacyRaidDifficultyID;
local GetLootSpecialization, GetNumSpecializations, GetSpecialization, GetSpecializationInfo, GetSpecializationInfoByID = 
	  GetLootSpecialization, GetNumSpecializations, GetSpecialization, GetSpecializationInfo, GetSpecializationInfoByID;
local GetActiveTalentGroup, IsAllowedToUserTeleport, IsInLFGDungeon, LFGTeleport = 
	  GetActiveTalentGroup, IsAllowedToUserTeleport, IsInLFGDungeon, LFGTeleport;
local C_LFGList_GetActiveEntryInfo = C_LFGList and C_LFGList.GetActiveEntryInfo;
local C_LFGList_RemoveListing = C_LFGList and C_LFGList.RemoveListing;
local C_Scenario_IsInScenario = C_Scenario and C_Scenario.IsInScenario;

-- Helper Functions
local CloseGroupFinder = function()
	if GroupFinderFrame and GroupFinderFrame:IsVisible() then
		PVEFrame_ToggleFrame("GroupFinderFrame")
	end
end

-- Module locals
local InviteCharacterName = "LET ME IN, LET ME INNNNN";
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

-- Loot Method
if GetLootMethod and SetLootMethod then
	local lootMethods = {
		personalloot = "Personal Loot",
		group = "Group Loot",
		master = "Master Loot",
	};
	local lootMethodDescriptions = {
		personalloot = "Each player has an independent chance at looting an item useful for their class...\n\n... Or useless things like rings.\n\nClick twice to create a group automatically if you're by yourself.",
		group = "Group loot, round-robin for normal items, rolling for special ones.\n\nClick twice to create a group automatically if you're by yourself.",
		master = "Master looter, designated player distributes loot.\n\nClick twice to create a group automatically if you're by yourself.",
	};
	if UnitLootMethod then
		for key,value in pairs(UnitLootMethod) do
			lootMethods[key] = value.text;
			lootMethodDescriptions[key] = value.tooltipText;
		end
	end
	local lootMethodIcons = {
		personalloot = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
		freeforall = "Interface\\Icons\\Ability_Rogue_Sprint",
		group = "Interface\\Icons\\INV_Misc_Coin_01",
		master = "Interface\\Icons\\Ability_Warrior_BattleShout",
		needbeforegreed = "Interface\\Icons\\Ability_Rogue_Eviscerate",
		roundrobin = "Interface\\Icons\\INV_Misc_Coin_01",
	};
	local setLootMethod = function(self, button)
		if IsInGroup() then
			if self.ref.id == "master" then
				SetLootMethod(self.ref.id, UnitName("player"));
			else
				SetLootMethod(self.ref.id);
			end
		end
		if self then self:GetParent():GetParent():Reset(); end
		return true;
	end;
	app.CreateLootMethod = app.CreateClass("LootMethod", "id", {
		text = function(t)
			return lootMethods[t.id];
		end,
		icon = function(t)
			return lootMethodIcons[t.id];
		end,
		description = function(t)
			return lootMethodDescriptions[t.id];
		end,
		visible = function(t)
			return true;
		end,
		OnClick = function(t)
			return setLootMethod;
		end,
	});
end

-- Loot Threshold
if GetLootThreshold and SetLootThreshold then
	local lootThresholdIcons = {
		"Interface\\Icons\\inv_sword_04",	-- Common
		"Interface\\Icons\\inv_sword_24",	-- Uncommon
		"Interface\\Icons\\inv_sword_42",	-- Rare
		"Interface\\Icons\\inv_sword_62",	-- Epic
		"Interface\\Icons\\inv_hammer_unique_sulfuras",	-- Legendary
		[0] = "Interface\\Icons\\inv_sword_04",	-- Poor
	};
	local setLootThreshold = function(self, button)
		if IsInGroup() then
			SetLootThreshold(self.ref.id);
		end
		if self then self:GetParent():GetParent():Reset(); end
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
		visible = function(t)
			return true;
		end,
		OnClick = function(t)
			return setLootThreshold;
		end,
	});
end

-- Implementation
app:GetWindow("RaidAssistant", {
	parent = UIParent,
	Silent = true,
	IgnoreQuestUpdates = true,
	OnInit = function(self, handlers)
		self.ignoreNoEntries = true;
		SLASH_ATTRAIDASSIST1 = "/attra";
		SLASH_ATTRAIDASSIST2 = "/attraid";
		SlashCmdList["ATTRAIDASSIST"] = function(cmd)
			self:Toggle();
		end
		
		local isBusy = not C_Scenario_IsInScenario and IsInInstance or function()
			return IsInInstance() or C_Scenario_IsInScenario();
		end;
		self.TryResetInstance = function()
			while isBusy() do
				coroutine.yield();
			end
			ResetInstances();
		end
		
		-- Setup Event Handlers and register for events
		local updateWithTrigger = function()
			self:Update(true);
		end;
		handlers.GROUP_ROSTER_UPDATE = updateWithTrigger;
		handlers.ZONE_CHANGED_NEW_AREA = updateWithTrigger;
		handlers.ACTIVE_TALENT_GROUP_CHANGED = updateWithTrigger;
		handlers.PLAYER_DIFFICULTY_CHANGED = updateWithTrigger;
		handlers.PLAYER_LOOT_SPEC_UPDATED = updateWithTrigger;
		self:RegisterEvent("CHAT_MSG_SYSTEM");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("GROUP_ROSTER_UPDATE");
		
		-- Does Difficulty have some options to change?
		if GetDifficultyInfo and GetDifficultyInfo(1) then
			self:RegisterEvent("PLAYER_DIFFICULTY_CHANGED");
		end
		
		-- Does Dual Spec or Specializations exist in the API?
		if GetActiveTalentGroup or GetSpecialization then
			self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED");
		end
		
		-- Does Loot Spec exist in the API?
		if GetLootSpecialization then
			self:RegisterEvent("PLAYER_LOOT_SPEC_UPDATED");
		end
		
		-- Do Scenarios exist in the API?
		if C_Scenario_IsInScenario then
			self:RegisterEvent("SCENARIO_UPDATE");
		end
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			-- Default Raid Assistant Options
			local options = {
				{	-- Create a Group
					text = "Create a Group",
					icon = "Interface\\Icons\\Ability_Vanish",
					description = "Click here to attempt to create a group.\n\nNOTE: This will invite a fake character and you can use this to force teleport out of dungeons when used in conjection with Leave Group option.",
					priority = 20,
					OnClick = function(row, button)
						InviteUnit(InviteCharacterName);
						self:Reset();
						return true;
					end,
					OnUpdate = function(data)
						data.visible = not IsInGroup();
						return true;
					end,
				},
				{	-- Create a Raid
					text = "Create a Raid",
					icon = "Interface\\Icons\\Ability_Vanish",
					description = "Click here to attempt to create a raid group.\n\nNOTE: This will invite a fake character and you can use this to force enter a raid without actually needing to be in a raid group. You need to run into the instance the moment you see 'Party converted to Raid'. It may take a couple of attempts.",
					priority = 20,
					OnClick = function(row, button)
						InviteUnit(InviteCharacterName);
						C_Timer.After(.5,function() ConvertToRaid() end);
						self:Reset();
						return true;
					end,
					OnUpdate = function(data)
						data.visible = not IsInGroup();
						return true;
					end,
				},
				{	-- Leave Group
					text = "Leave Group",
					icon = "Interface\\Icons\\Ability_Vanish",
					description = "Click here to leave the group. In most instances, this will also port you to the nearest graveyard after 60 seconds or so.\n\nNOTE: Only works if you're in a group or if the game thinks you're in a group.",
					priority = 19,
					OnClick = function(row, button)
						LeaveParty();
						CloseGroupFinder();
						self:Reset();
						return true;
					end,
					OnUpdate = function(data)
						data.visible = IsInGroup();
						return true;
					end,
				},
				{	-- Reset Instances
					text = "Reset Instances",
					icon = app.asset("Button_Reset"),
					description = "Click here to reset your instances.\n\nAlt+Click to toggle automatically resetting your instances when you leave a dungeon.\n\nWARNING: BE CAREFUL WITH THIS!",
					priority = 16,
					OnClick = function(row, button)
						if IsAltKeyDown() then
							row.ref.saved = not row.ref.saved;
							self:Update();
						else
							ResetInstances();
						end
						return true;
					end,
					OnUpdate = function(data)
						data.visible = not IsInGroup() or UnitIsGroupLeader("player", "raid");
						if data.visible and data.saved then
							self:StartATTCoroutine("TryResetInstance", self.TryResetInstance);
						end
						return true;
					end,
				},
			};
			
			-- If Difficulties exist, this means we can use the API!
			if GetDifficultyInfo and GetDifficultyInfo(1) then
				-- If Dungeon Difficulty exists, we can change that using the API!
				if GetDungeonDifficultyID then
					local setDungeonDifficulty = function(row, button)
						local difficultyID = row.ref.difficultyID;
						SetDungeonDifficultyID(difficultyID);
						if not self.swappingdungeon then
							self.swappingdungeon = true;
						else
							self.swappingdungeon = nil;
						end
						self:StartATTCoroutine("DungeonDifficulty", function()
							while InCombatLockdown() do coroutine.yield(); end
							while self.swappingdungeon do
								for i=0,10,1 do
									if self.swappingdungeon then
										coroutine.yield();
									else
										break;
									end
								end
								if GetDungeonDifficultyID() == difficultyID then
									self.swappingdungeon = nil;
									self:Update(true);
									break;
								else
									SetDungeonDifficultyID(difficultyID);
								end
							end
						end);
						self:Reset();
						return true;
					end
					local dungeondifficulty = app.CreateDifficulty(1, {
						text = "Dungeon Difficulty",
						description = "This setting allows you to customize the difficulty of a dungeon.\n\nClick this row to go back to the Raid Assistant.",
						back = 1,
						g = {},
						OnClick = function(row, button)
							self:Reset();
							return true;
						end,
						OnUpdate = function(data)
							local g = data.g;
							if #g < 1 then
								for i,difficultyID in ipairs({1, 2, 23 }) do
									if GetDifficultyInfo(difficultyID) then
										tinsert(g, app.CreateDifficulty(difficultyID, {
											description = "Click to change now. (if available)",
											OnClick = setDungeonDifficulty,
											OnUpdate = app.AlwaysShowUpdate,
											parent = data,
										}));
									end
								end
							end
							data.visible = true;
						end,
					});
					tinsert(options, app.CreateDifficulty(1, {
						title = "Dungeon Difficulty",
						description = "The difficulty setting for dungeons.\n\nClick this row to change it now!",
						priority = 4,
						OnClick = function(row, button)
							if IsInInstance() then return true; end
							self.data = dungeondifficulty;
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
				end
				
				-- If Raid Difficulty exists, we can change that using the API!
				if GetRaidDifficultyID then
					-- At some point Blizzard decided that difficulties made too much sense and scrapped them and added new ones.
					local raidDifficultyIDs = { 3, 5, 4, 6 };
					if GetDifficultyInfo(14) and SetLegacyRaidDifficultyID then
						-- This means we need to implement Legacy Raid Difficulties as well. :(
						local legactRaidDifficultyIDs = raidDifficultyIDs;
						raidDifficultyIDs = { 14, 15, 16 };
						local setLegacyRaidDifficulty = function(row, button)
							local difficultyID = row.ref.difficultyID;
							SetLegacyRaidDifficultyID(difficultyID);
							if not self.swappinglegacy then
								self.swappinglegacy = true;
							else
								self.swappinglegacy = nil;
							end
							self:StartATTCoroutine("LegacyRaidDifficulty", function()
								while InCombatLockdown() do coroutine.yield(); end
								while self.swappinglegacy do
									for i=0,10,1 do
										if self.swappinglegacy then
											coroutine.yield();
										else
											break;
										end
									end
									if GetLegacyRaidDifficultyID() == difficultyID then
										self.swappinglegacy = nil;
										self:Update(true);
										break;
									else
										SetLegacyRaidDifficultyID(difficultyID);
									end
								end
							end);
							self:Reset();
							return true;
						end
						local highestDifficultyID = legactRaidDifficultyIDs[#legactRaidDifficultyIDs];
						local legacyraiddifficulty = app.CreateDifficulty(highestDifficultyID, {
							text = "Legacy Raid Difficulty",
							description = "This setting allows you to customize the difficulty of a legacy raid.\n\nClick this row to go back to the Raid Assistant.",
							back = 1,
							g = {},
							OnClick = function(row, button)
								self:Reset();
								return true;
							end,
							OnUpdate = function(data)
								local g = data.g;
								if #g < 1 then
									for i,difficultyID in ipairs(raidDifficultyIDs) do
										if GetDifficultyInfo(difficultyID) then
											tinsert(g, app.CreateDifficulty(difficultyID, {
												description = "Click to change now. (if available)",
												OnClick = setLegacyRaidDifficulty,
												OnUpdate = app.AlwaysShowUpdate,
												parent = data,
											}));
										end
									end
								end
								data.visible = true;
							end,
						});
						tinsert(options, app.CreateDifficulty(highestDifficultyID, {
							title = "Legacy Raid Difficulty",
							description = "The difficulty setting for legacy raids.\n\nClick this row to change it now!",
							priority = 5,
							OnClick = function(row, button)
								-- Don't allow you to change difficulties when you're in LFR / Raid Finder
								if row.ref.difficultyID == 7 or row.ref.difficultyID == 17 then return true; end
								self.data = legacyraiddifficulty;
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
					local setRaidDifficulty = function(row, button)
						local difficultyID = row.ref.difficultyID;
						SetRaidDifficultyID(difficultyID);
						if not self.swappingraid then
							self.swappingraid = true;
						else
							self.swappingraid = nil;
						end
						self:StartATTCoroutine("RaidDifficulty", function()
							while InCombatLockdown() do coroutine.yield(); end
							while self.swappingraid do
								for i=0,10,1 do
									if self.swappingraid then
										coroutine.yield();
									else
										break;
									end
								end
								if GetRaidDifficultyID() == difficultyID then
									self.swappingraid = nil;
									self:Update(true);
									break;
								else
									SetRaidDifficultyID(difficultyID);
								end
							end
						end);
						self:Reset();
						return true;
					end
					local raiddifficulty = app.CreateDifficulty(highestDifficultyID, {
						text = "Raid Difficulty",
						description = "This setting allows you to customize the difficulty of a raid.\n\nClick this row to go back to the Raid Assistant.",
						back = 1,
						g = {},
						OnClick = function(row, button)
							self:Reset();
							return true;
						end,
						OnUpdate = function(data)
							local g = data.g;
							if #g < 1 then
								for i,difficultyID in ipairs(raidDifficultyIDs) do
									if GetDifficultyInfo(difficultyID) then
										tinsert(g, app.CreateDifficulty(difficultyID, {
											description = "Click to change now. (if available)",
											OnClick = setRaidDifficulty,
											OnUpdate = app.AlwaysShowUpdate,
											parent = data,
										}));
									end
								end
							end
							data.visible = true;
						end,
					});
					tinsert(options, app.CreateDifficulty(highestDifficultyID, {
						title = "Raid Difficulty",
						description = "The difficulty setting for raids.\n\nClick this row to change it now!",
						priority = 5,
						OnClick = function(row, button)
							-- Don't allow you to change difficulties when you're in LFR / Raid Finder
							if row.ref.difficultyID == 7 or row.ref.difficultyID == 17 then return true; end
							self.data = raiddifficulty;
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
			
			-- If Loot Method exists, we can change how loot gets distributed for the raid.
			if app.CreateLootMethod then
				-- Allow the user to change the Loot Method
				local lootmethod = {
					text = LOOT_METHOD,
					icon = "Interface\\Icons\\INV_Misc_Coin_01",
					description = "This setting allows you to customize what kind of loot will drop and how much.\n\nThis only works while in a party - If you're by yourself, you can create a Premade Group (just don't invite anyone) and then change it.\n\nClick this row to go back to the Raid Assistant.",
					expanded = true,
					back = 1,
					g = {},
					OnClick = function(row, button)
						self:Reset();
						return true;
					end, 
					OnUpdate = function(data)
						local g = data.g;
						if #g < 1 then
							for key,value in pairs(UnitLootMethod or { group = 1, master = 2 }) do
								local method = app.CreateLootMethod(key);
								method.OnUpdate = app.AlwaysShowUpdate;
								method.parent = data;
								table.insert(g, method);
							end
						end
						data.visible = true;
					end,
				};
				tinsert(options, app.CreateLootMethod("group", {
					title = LOOT_METHOD,
					priority = 1,
					OnClick = function(row, button)
						if UnitIsGroupLeader("player", "raid") then
							self.data = lootmethod;
							self:Update(true);
						end
						return true;
					end,
					OnUpdate = function(data)
						data.visible = IsInGroup();
						if data.visible then
							data.id = GetLootMethod();
						end
						return true;
					end,
				}));
				
				-- Allow the user to select a Loot Master
				local lootmasters = {
					text = MASTER_LOOTER,
					icon = "Interface\\Icons\\INV_Misc_Coin_01",
					description = "This setting allows you to select a new Master Looter.",
					expanded = true,
					members = {},
					back = 1,
					g = {},
					OnClick = function(row, button)
						self:Reset();
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
											isML = isML,
											parent = data,
											OnUpdate = app.AlwaysShowUpdate,
											OnClick = function(row, button)
												SetLootMethod("master", row.ref.name);
												self:Reset();
												return true;
											end,
										});
										members[name] = member;
									else
										member.isML = isML;
									end
									table.insert(data.g, member);
								end
							end
						end
						data.visible = true;
					end,
				};
				tinsert(options, app.CreateUnit("player", {
					title = MASTER_LOOTER,
					priority = 2,
					description = "This player is currently the Master Looter.",
					OnClick = function(row, button)
						if UnitIsGroupLeader("player", "raid") then
							self.data = lootmasters;
							self:Update(true);
						end
						return true;
					end,
					OnUpdate = function(data)
						if IsInGroup() then
							local lootMethod, partyIndex, raidIndex = GetLootMethod();
							if lootMethod == "master" then
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
			
			-- If Loot Threshold exists, we have the ability to change the minimum acceptable loot quality for /roll'd items.
			if app.CreateLootThreshold then
				local lootthreshold = {
					text = "Loot Threshold",
					icon = "Interface\\Icons\\INV_Misc_Coin_01.blp",
					description = "Select a new loot threshold.",
					expanded = true,
					maximum = 5,
					minimum = (select(4, GetBuildInfo()) > 11403) and 2 or 0,
					back = 1,
					g = {},
					OnClick = function(row, button)
						self:Reset();
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
				};
				tinsert(options, app.CreateLootThreshold(2, {
					title = LOOT_TRESHOLD,
					priority = 3,
					visible = true,
					OnClick = function(row, button)
						if UnitIsGroupLeader("player", "raid") then
							self.data = lootthreshold;
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
			
			-- If Specializations are available, that means we don't need to look up player talents.
			if GetSpecialization and GetSpecializationInfo then
				-- If Loot Spec exists, we have the ability to change the player's current loot specialization.
				if GetLootSpecialization and SetLootSpecialization then
					local lootspecialization = {
						text = "Loot Specialization",
						icon = "Interface\\Icons\\INV_7XP_Inscription_TalentTome02",
						description = "In Personal Loot dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to go back to the Raid Assistant.",
						visible = true,
						back = 1,
						g = {},
						OnClick = function(row, button)
							self:Reset();
							return true;
						end,
						OnUpdate = function(data)
							local g = data.g;
							if #g < 1 then
								local numSpecializations = GetNumSpecializations();
								if numSpecializations and numSpecializations > 0 then
									tinsert(data.g, {
										text = "Current Specialization",
										icon = "Interface\\Icons\\INV_7XP_Inscription_TalentTome01",
										description = "If you switch your talents, your loot specialization changes with you.",
										OnClick = function(row, button)
											SetLootSpecialization(0);
											self:Reset();
											return true;
										end,
										OnUpdate = function(data)
											local id, name, description, icon, background, role, primaryStat = GetSpecializationInfo(GetSpecialization());
											data.text = "Current Specialization (" .. name .. ")";
											data.title = role;
											data.icon = icon;
											data.description = description;
											data.visible = true;
											return true;
										end,
									});
									for i=1,numSpecializations,1 do
										local id, name, description, icon, background, role, primaryStat = GetSpecializationInfo(i);
										tinsert(data.g, {
											id = id,
											text = name,
											title = role,
											icon = icon,
											description = description,
											OnClick = function(row, button)
												SetLootSpecialization(row.ref.id);
												self:Reset();
												return true;
											end,
											OnUpdate = function(data)
												data.visible = true;
												return true;
											end,
										});
									end
								end
							end
						end,
					};
					tinsert(options, {
						text = RETRIEVING_DATA,
						description = "In dungeons, raids, and outdoor encounters, this setting will dictate which items are available for you.\n\nClick this row to change it now!",
						priority = 4,
						OnClick = function(row, button)
							self.data = lootspecialization;
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
								end
							else
								local id, name, description, icon, role, class = GetSpecializationInfoByID(lootSpec);
								if name then
									data.text = name;
									data.icon = icon;
								end
							end
							
							data.visible = true;
							return true;
						end,
					});
				end
			end
			
			-- If Dual Spec exists, we have the ability to confirm which specialization the player currently is.
			if GetActiveTalentGroup then
				--TODO: Setup Talent Swapping
			end
			
			-- If LFG exists, we get some access to some special api functions.
			if C_LFGList_GetActiveEntryInfo then
				-- For teleporting in/out... (available with Dungeon Finder itself)
				if IsInLFGDungeon and IsAllowedToUserTeleport and LFGTeleport and IsInLFGDungeon then
					tinsert(options, {
						text = RETRIEVING_DATA,
						outText = "Teleport Out",
						outDescription = "Click here to teleport out of your current instance if using LFG.",
						toText = "Teleport to Dungeon",
						toDescription = "Click here to teleport to the instance if using LFG.",
						icon = "Interface\\Icons\\Spell_Shadow_Teleport",
						priority = 17,
						OnClick = function(row, button)
							LFGTeleport(IsInLFGDungeon());
							self:Update();
							return true;
						end,
						OnUpdate = function(data)
							if IsAllowedToUserTeleport() then
								if IsInLFGDungeon() then
									data.text = data.outText;
									data.description = data.outDescription;
								else
									data.text = data.toText;
									data.description = data.toDescription;
								end
								data.visible = true;
							else
								data.visible = false;
							end
							return true;
						end,
					});
				end
				
				-- And for Delisting the group!
				if C_LFGList_RemoveListing then
					tinsert(options, {
						text = "Delist Group",
						icon = "Interface\\Icons\\Ability_Vehicle_LaunchPlayer",
						description = "Click here to delist the group. If you are by yourself, it will softly leave the group without porting you out of any instance you are in.",
						priority = 18,
						OnClick = function(row, button)
							C_LFGList_RemoveListing();
							CloseGroupFinder();
							self:Update();
							return true;
						end,
						OnUpdate = function(data)
							data.visible = C_LFGList_GetActiveEntryInfo();
							return true;
						end,
					});
				end
			end
			
			-- Raid Assistant Header
			local raidassistant = {
				text = "Raid Assistant",
				icon = app.asset("WindowIcon_RaidAssistant"), 
				description = "Never enter the instance with the wrong settings again! Verify that everything is as it should be!",
				expanded = true,
				back = 1,
				g = {},
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						for i,option in ipairs(options) do
							option.parent = data;
							tinsert(g, option);
						end
						app.Sort(g, SortByTextAndPriority);
					end
					data.visible = true;
				end,
			};
			self.data = raidassistant;
			self.Reset = function()
				self.data = raidassistant;
				self:Update(true);
			end
		end
	end
});