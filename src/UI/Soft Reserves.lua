-- App locals
local appName, app = ...;
local L = app.L;
local searchCache = app.searchCache;

-- Global locals
local GetRaidRosterInfo, GuildControlGetNumRanks, GetGuildRosterInfo, GetGuildRosterLastOnline =
	  GetRaidRosterInfo, GuildControlGetNumRanks, GetGuildRosterInfo, GetGuildRosterLastOnline;
local GetItemInfo, GetItemInfoInstant = GetItemInfo, GetItemInfoInstant;
local GetLootMethod, GetRealmName, UnitName, UnitGUID, UnitInRaid, UnitInParty =
	  GetLootMethod, GetRealmName, UnitName, UnitGUID, UnitInRaid, UnitInParty;
local strsplit, strsub = strsplit, strsub;

-- App locals
local GetRelativeValue = app.GetRelativeValue;

-- Helper Functions
-- TODO: Make these functions in an internal ATT helper class or something
local function SendGroupChatMessage(msg)
	if IsInRaid() then
		SendChatMessage(msg, "RAID", nil, nil);
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		SendChatMessage(msg, "PARTY", nil, nil);
	end
end
local function SendGroupMessage(msg)
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "INSTANCE_CHAT")
	elseif IsInRaid() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "RAID")
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "PARTY")
	end
end
local function SendGUIDWhisper(msg, guid)
	local name = select(6, GetPlayerInfoByGUID(guid));
	if name then SendChatMessage(msg, "WHISPER", nil, name); end
end
local function SendGuildMessage(msg)
	if IsInGuild() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "GUILD");
	else
		app.events.CHAT_MSG_ADDON("ATTC", msg, "WHISPER", "player");
	end
end
local function SendResponseMessage(msg, player)
	if UnitInRaid(player) or UnitInParty(player) then
		SendGroupMessage("to\t" .. player .. "\t" .. msg);
	else
		C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", player);
	end
end

-- Module locals
local SoftReservesByItemID, SoftReservesDirty, SoftReserveWindow, UpdateSoftReserve, IsPrimaryLooter = {};
local PlayerGUIDFromInfo = setmetatable({}, { __index = function(t, info)
	-- Let WoW parse it.
	local guid = UnitGUID(info);
	if guid then
		rawset(t, info, guid);
		return guid;
	end
	if string.match(info, "Player-") then
		-- Already a GUID!
		rawset(t, info, info);
		return info;
	end
	
	-- Only check the guild once every 10 seconds.
	if (rawget(t, "cooldown") or 0) <= time() then
		local count = GetNumGuildMembers();
		if count > 0 then
			for guildIndex = 1, count, 1 do
				local name, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
				if name and guid then
					rawset(t, strsplit('-', name), guid);
				end
			end
		end
		rawset(t, "cooldown", time() + 10);
		return rawget(t, info);
	end
end });
local function GetGroupType()
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		return "INSTANCE_CHAT";
	elseif IsInRaid() then
		return "RAID";
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		return "PARTY";
	end
	return "RAID";
end
if GetLootMethod then
	IsPrimaryLooter = function()
		-- This is like Master Looter, but in party situations where master loot is not set, the group leader takes on this responsibility.
		if IsInGroup() then
			-- Ensure that the player is the master looter.
			local lootMethod, partyIndex, raidIndex = GetLootMethod();
			if lootMethod == "master" then
				local name = UnitName("player");
				if raidIndex then
					return name == GetRaidRosterInfo(raidIndex);
				elseif partyIndex == 0 then
					-- Player is the Master Looter
					return name == UnitName("player");
				else
					return name == UnitName("party" .. partyIndex);
				end
			elseif UnitIsGroupLeader("player", "raid") then
				return true;
			end
		end
	end
else
	IsPrimaryLooter = function()
		-- This is like Master Looter, but in party situations where master loot is not set, the group leader takes on this responsibility.
		if IsInGroup() then
			return UnitIsGroupLeader("player", "raid");
		end
	end
end

local function ParseSoftReserve(guid, cmd, isSilentMode, isCurrentPlayer)
	-- Attempt to parse the command.
	if cmd and cmd ~= "" then
		cmd = cmd:match("^%s*(.+)$");
		if cmd == "clear" or cmd == '0' then
			UpdateSoftReserve(guid, nil, time(), isSilentMode, isCurrentPlayer);
			return;
		end
		
		-- Parse out the itemID if possible.
		local itemID = tonumber(cmd) or GetItemInfoInstant(cmd);
		if itemID then cmd = "itemid:" .. itemID; end
		
		-- Search for the Link in the database
		local group = app.SearchForLink(cmd);
		if group and #group > 0 then
			for i,g in ipairs(group) do
				if g.itemID then
					UpdateSoftReserve(guid, g.itemID, time(), isSilentMode, isCurrentPlayer);
					return true;
				end
			end
		end
	end
	
	-- Send back an error message.
	SendGUIDWhisper("Unrecognized Command. Please use '!sr [itemLink/itemID]'. You can send an item link or an itemID from WoWHead. EX: '!sr 12345' or '!sr [Azuresong Mageblade]'", guid);
end
local function PushSoftReserve(ignoreZero)
	local guid, itemID, timeStamp = UnitGUID("player");
	local reserves = app.GetDataMember("SoftReserves");
	if reserves then
		local oldreserve = reserves[guid];
		if oldreserve then
			itemID = oldreserve[1];
			timeStamp = oldreserve[2];
		end
	end
	if itemID or not ignoreZero then
		itemID = "!\tsr\t" .. guid .. "\t" .. (itemID or 0);
		if timeStamp then itemID = itemID .. "\t" .. timeStamp; end
		SendGuildMessage(itemID);
		if IsInGroup() then SendGroupMessage(itemID); end
	end
end
local function PushSoftReserves(method, target)
	local reserves = app.GetDataMember("SoftReserves");
	if reserves then
		local count, length, msg, s = 7, 0, "!\tsrml";
		if not method then method = GetGroupType(); end
		for gu,reserve in pairs(reserves) do
			if gu and IsGUIDInGroup(gu) then
				s = "\t" .. gu .. "\t" .. reserve[1];
				length = string.len(s);
				if count + length >= 255 then
					C_ChatInfo.SendAddonMessage("ATTC", msg, method, target);
					count = 7;
					msg = "!\tsrml";
				else
					count = count + length;
					msg = msg .. s;
				end
			end
		end
		if count > 5 then
			C_ChatInfo.SendAddonMessage("ATTC", msg, method, target);
		end
	end
end
local function QuerySoftReserve(guid, cmd, target)
	-- Attempt to parse the command.
	if cmd and cmd ~= "" then
		local all = not IsInGroup() or not IsGUIDInGroup(guid);
		cmd = cmd:match("^%s*(.+)$");
		if strsub(cmd, 1, 3) == "all" then
			cmd = strsub(cmd, 4):match("^%s*(.+)$");
			all = true;
		elseif cmd == "srml" then
			if IsPrimaryLooter() then
				-- Push the Soft Reserve List to the target.
				PushSoftReserves("WHISPER", target);
			end
			return true;
		end
		
		-- Parse out the itemID if possible.
		local itemID = tonumber(cmd) or GetItemInfoInstant(cmd);
		if itemID then cmd = "itemid:" .. itemID; end
		
		-- Search for the Link in the database
		local group = app.SearchForLink(cmd);
		if group and #group > 0 then
			for i,g in ipairs(group) do
				if g.itemID then
					local link = g.link;
					if not link or link == RETRIEVING_DATA or strsub(link, 1, 4) == "item" then
						link = "item:" .. g.itemID;
					end
					local sr = {};
					local message = link .. " ";
					local reservesForItem = SoftReservesByItemID[g.itemID];
					if reservesForItem then
						for i,guid in ipairs(reservesForItem) do
							if guid and (all or IsGUIDInGroup(guid)) then
								local unit = app.CreateSoftReserveUnit(guid);
								table.insert(sr, unit.name or guid);
							end
						end
					end
					if #sr == 0 then
						if all then
							message = message .. "Not Soft Reserved by anyone.";
						else
							message = message .. "Not Soft Reserved by anyone in our group.";
						end
					else
						for i,name in ipairs(sr) do
							if i > 1 then message = message .. ", "; end
							message = message .. name;
						end
					end
					SendGUIDWhisper(message, guid);
					return true;
				end
			end
		end
	else
		local reserve = rawget(app.GetDataMember("SoftReserves"), guid);
		if reserve then
			-- Parse out the itemID if possible.
			local itemID = type(reserve) == 'number' and reserve or reserve[1];
			if itemID then itemID = "itemid:" .. itemID; end
			
			-- Search for the Link in the database
			local group = app.SearchForLink(itemID);
			if group and #group > 0 then
				for i,g in ipairs(group) do
					if g.itemID then
						local link = g.link;
						if not link or link == RETRIEVING_DATA or strsub(link, 1, 4) == "item" then
							link = "item:" .. g.itemID;
						end
						SendGUIDWhisper("You have " .. link .. " Soft Reserved.", guid);
						return true;
					end
				end
			end
		else
			SendGUIDWhisper("You have nothing Soft Reserved.", guid);
			return true;
		end
	end
	
	-- Send back an error message.
	SendGUIDWhisper("Unrecognized Command. Please use '!sr [itemLink/itemID]'. You can send an item link or an itemID from WoWHead. EX: '!sr 12345' or '!sr [Azuresong Mageblade]'", guid);
end
local function RefreshSoftReserveWindow(force)
	if SoftReservesDirty or force then
		SoftReservesDirty = nil;
		SoftReserveWindow:Update(true);
	end
end
local function SortByTextAndPriority(a, b)
	if b.priority > a.priority then
		return true;
	elseif b.priority == a.priority then
		return b.text > a.text;
	else
		return false;
	end
end
local function UpdateSoftReserveInternal(guid, itemID, timeStamp, isCurrentPlayer)
	local reserves = app.GetDataMember("SoftReserves");
	
	-- Check the Old Reserve against the new one.
	local oldreserve = reserves[guid];
	if oldreserve then
		-- If there was an old reservation...
		local oldItemID = oldreserve[1];
		if oldItemID then
			if oldItemID == itemID then
				return true;
			end
			
			-- Uncache the reserve
			local reservesForItem = SoftReservesByItemID[oldItemID];
			if reservesForItem then
				for i,value in ipairs(reservesForItem) do
					if value == guid then
						table.remove(reservesForItem, i);
						break;
					end
				end
			end
		end
	end
	
	-- Update the Reservation
	wipe(searchCache);
	SoftReservesDirty = true;
	if itemID and itemID > 0 then
		if not timeStamp then timeStamp = time(); end
		reserves[guid] = { itemID, timeStamp };
		local reservesForItem = SoftReservesByItemID[itemID];
		if not reservesForItem then
			reservesForItem = {};
			SoftReservesByItemID[itemID] = reservesForItem;
		end
		table.insert(reservesForItem, guid);
	else
		itemID = 0;
		reserves[guid] = nil;
	end
	if isCurrentPlayer then
		itemID = "!\tsr\t" .. guid .. "\t" .. itemID;
		if timeStamp then itemID = itemID .. "\t" .. timeStamp; end
		SendGuildMessage(itemID);
		if IsInGroup() then SendGroupMessage(itemID); end
	end
end
UpdateSoftReserve = function(guid, itemID, timeStamp, silentMode, isCurrentPlayer)
	if IsInGroup() and app.GetDataMember("SoftReserves")[guid] and not IsPrimaryLooter() and app.Settings:GetTooltipSetting("SoftReservesLocked") then
		if not silentMode then
			SendGUIDWhisper("The Soft Reserve is currently locked by your Master Looter. Please make sure to update your Soft Reserve before raid next time!", guid);
		end
	else
		-- If they didn't previously have a reserve, then allow it. If so, then reject it.
		UpdateSoftReserveInternal(guid, itemID, timeStamp, isCurrentPlayer);
		RefreshSoftReserveWindow();
		if not silentMode then
			if itemID then
				local searchResults = app.SearchForLink("itemid:" .. itemID);
				if searchResults and #searchResults > 0 then
					if guid ~= UnitGUID("player") then
						SendGUIDWhisper("SR: Updated to " .. (searchResults[1].link or GetItemInfo(itemID) or ("itemid:" .. itemID)), guid);
					end
					if IsPrimaryLooter() then
						C_ChatInfo.SendAddonMessage("ATTC", "!\tsrml\t" .. guid .. "\t" .. itemID, GetGroupType());
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							SendGroupChatMessage("Updated " .. (SoftReserveWindow.GUIDToName(guid) or UnitName(guid) or guid) .. " to " .. (searchResults[1].link or GetItemInfo(itemID) or ("itemid:" .. itemID)));
						end
					end
				end
			else
				if guid ~= UnitGUID("player") then
					SendGUIDWhisper("SR: Cleared.", guid);
				end
				if IsPrimaryLooter() then
					C_ChatInfo.SendAddonMessage("ATTC", "!\tsrml\t" .. guid .. "\t0", GetGroupType());
				end
			end
		end
	end
end

-- External API Functions
app.ShowSoftReservesForItem = function(itemID, info)
	local reservesForItem = SoftReservesByItemID[itemID];
	if reservesForItem and app.Settings:GetTooltipSetting("SoftReserves") then
		local left = "Soft Reserves";
		for i,guid in ipairs(reservesForItem) do
			if guid and IsGUIDInGroup(guid) then
				tinsert(info, { left = left, right = app.CreateSoftReserveUnit(guid).tooltipText });
				left = nil;
			end
		end
	end
end

-- Event Handlers
local function CHAT_MSG_ADDON_HANDLER(prefix, text, channel, sender, target)
	if prefix == "ATTC" then
		--print(prefix, text, channel, sender, target)
		local args = { strsplit("\t", text) };
		local cmd, a = args[1], args[2];
		if cmd and a then
			if cmd == "?" then		-- Query Request
				local response;
				if a == "sr" then
					if target == UnitName("player") then
						return false;
					else
						local softReserve = app.GetDataMember("SoftReserves")[app.GUID];
						response = "sr" .. "\t" .. app.GUID .. "\t" .. (softReserve and ((softReserve[1] or 0) .. "\t" .. (softReserve[2] or 0)) or "0\t0");
					end
				elseif a == "srml" then -- Soft Reserve (Master Looter) Command
					QuerySoftReserve(UnitGUID(target), a, target);
				elseif a == "srlock" then
					if target == UnitName("player") then
						return false;
					else
						response = "srlock\t" .. (app.Settings:GetTooltipSetting("SoftReservesLocked") and 1 or 0);
					end
				elseif a == "srpersistence" then
					if target == UnitName("player") then
						return false;
					else
						response = "srpersistence\t" .. (app.Settings:GetTooltipSetting("SoftReservePersistence") and 1 or 0);
					end
				end
				if response then SendResponseMessage("!\t" .. response, sender); end
			elseif cmd == "!" then	-- Query Response
				if a == "sr" then
					UpdateSoftReserve(args[3], tonumber(args[4]), tonumber(args[5]), true);
				elseif a == "srml" then
					if target == UnitName("player") then
						return false;
					else
						for i=3,#args,2 do
							UpdateSoftReserveInternal(args[i], tonumber(args[i + 1]));
						end
						RefreshSoftReserveWindow();
					end
				elseif a == "srlock" then
					if target == UnitName("player") then
						return false;
					else
						app.Settings:SetTooltipSetting("SoftReservesLocked", tonumber(args[3]) == 1);
						wipe(searchCache);
						RefreshSoftReserveWindow(true);
					end
				elseif a == "srpersistence" then
					if target == UnitName("player") then
						return false;
					else
						app.Settings:SetTooltipSetting("SoftReservePersistence", tonumber(args[3]) == 1);
						wipe(searchCache);
						RefreshSoftReserveWindow(true);
					end
				end
			elseif cmd == "to" then	-- To Command
				local myName = UnitName("player");
				local name,server = strsplit("-", a);
				if myName == name and (not server or GetRealmName() == server) then
					CHAT_MSG_ADDON_HANDLER(prefix, strsub(text, 5 + strlen(a)), "WHISPER", sender);
				end
			elseif cmd == "sr" then -- Soft Reserve Command
				ParseSoftReserve(UnitGUID(target), a, true);
			end
		end
	end
end
local function CHAT_MSG_WHISPER_HANDLER(text, playerName, _, _, _, _, _, _, _, _, _, guid)
	local action = strsub(text, 1, 1);
	if action == '!' then	-- Send
		local lowercased = string.lower(text);
		if not Gargul and strsub(lowercased, 2, 3) == "sr" then
			ParseSoftReserve(guid, strsub(text, 4));
		elseif strsub(lowercased, 2, 6) == "attsr" then
			ParseSoftReserve(guid, strsub(text, 7));
		end
	elseif action == '?' then	-- Request
		local lowercased = string.lower(text);
		if strsub(lowercased, 2, 3) == "sr" then
			-- Turn off the AskPrice addon message if it's a Soft Reserve.
			if AucAdvanced and AucAdvanced.Settings then
				local oldSetting = AucAdvanced.Settings.GetSetting('util.askprice.activated');
				if oldSetting then
					AucAdvanced.Settings.SetSetting("util.askprice.activated", false);
					C_Timer.After(0.01, function()
						AucAdvanced.Settings.SetSetting("util.askprice.activated", true);
					end);
				end
			end
			QuerySoftReserve(guid, strsub(text, 4));
		elseif strsub(lowercased, 2, 6) == "attsr" then
			-- Turn off the AskPrice addon message if it's a Soft Reserve.
			if AucAdvanced and AucAdvanced.Settings then
				local oldSetting = AucAdvanced.Settings.GetSetting('util.askprice.activated');
				if oldSetting then
					AucAdvanced.Settings.SetSetting("util.askprice.activated", false);
					C_Timer.After(0.01, function()
						AucAdvanced.Settings.SetSetting("util.askprice.activated", true);
					end);
				end
			end
			QuerySoftReserve(guid, strsub(text, 7));
		end
	end
end

-- Implementation
SoftReserveWindow = app:GetWindow("SoftReserves", {
	parent = UIParent,
	Silent = true,
	IgnoreQuestUpdates = true,
	OnInit = function(self, handlers)
		self.ignoreNoEntries = true;
		SLASH_ATTSOFTRES1 = "/attsr";
		SLASH_ATTSOFTRES2 = "/attsoft";
		SLASH_ATTSOFTRES3 = "/attsoftreserve";
		SLASH_ATTSOFTRES4 = "/attsoftreserves";
		SlashCmdList["ATTSOFTRES"] = function(cmd)
			if cmd and cmd ~= "" then
				ParseSoftReserve(UnitGUID("player"), cmd, true, true);
			else
				-- Default command
				self:Toggle();
			end
		end
		
		-- Setup Event Handlers and register for events
		handlers.CHAT_MSG_ADDON = function(self, ...)
			CHAT_MSG_ADDON_HANDLER(...);
		end
		handlers.CHAT_MSG_SYSTEM = function(self)
			self:Refresh();
		end
		handlers.CHAT_MSG_WHISPER = function(self, ...)
			CHAT_MSG_WHISPER_HANDLER(...);
		end
		handlers.GROUP_ROSTER_UPDATE = function(self)
			self:Update(true);
		end
		handlers.PARTY_LOOT_METHOD_CHANGED = function(self, ...)
			PushSoftReserve();
			self:Update(true);
		end
		self:RegisterEvent("CHAT_MSG_ADDON");
		self:RegisterEvent("CHAT_MSG_SYSTEM");
		self:RegisterEvent("CHAT_MSG_WHISPER");
		self:RegisterEvent("GROUP_ROSTER_UPDATE");
		self:RegisterEvent("PARTY_LOOT_METHOD_CHANGED");
	end,
	OnLoad = function(self, settings)
		-- Check the format of the Soft Reserve Cache
		local reserves = app.GetDataMember("SoftReserves", {});
		local persistence = app.GetDataMember("SoftReservePersistence", {});
		for guid,reserve in pairs(reserves) do
			if type(reserve) == 'number' then
				reserve = { reserve, time() };
				reserves[guid] = reserve;
			end
			local itemID = reserve[1];
			local reservesForItem = SoftReservesByItemID[itemID];
			if not reservesForItem then
				reservesForItem = {};
				SoftReservesByItemID[itemID] = reservesForItem;
			end
			table.insert(reservesForItem, guid);
		end
		
		-- Push the player's SR
		PushSoftReserve(true);
		
		-- Check if the SRs are locked
		if IsInGroup() then
			if not IsPrimaryLooter() then
				SendGroupMessage("?\tsrlock");
				SendGroupMessage("?\tsrpersistence");
			end
		else
			-- Unlock the Soft Reserves when not in a group
			local locked = app.Settings:GetTooltipSetting("SoftReservesLocked");
			if locked then
				app.Settings:SetTooltipSetting("SoftReservesLocked", false);
				wipe(searchCache);
			end
		end
	end,
	OnRebuild = function(self)
		if self.data then return true; end
		self.groupMembers = {};
		local options = {
			setmetatable({	-- Lock All Soft Reserves Button
				text = "Lock All Soft Reserves",
				icon = "Interface\\Icons\\INV_MISC_KEY_13",
				description_ML = "Click to toggle locking the Soft Reserves. You must click this again to turn it back off.",
				description_PLEB = "Your Master Looter controls whether the Soft Reserve list is locked or not.",
				visible = true,
				priority = 2,
				OnClick = function(row, button)
					if IsPrimaryLooter() then
						local locked = not app.Settings:GetTooltipSetting("SoftReservesLocked");
						if locked then PushSoftReserves(); end
						SendGroupMessage("!\tsrlock\t" .. (locked and 1 or 0));
						app.Settings:SetTooltipSetting("SoftReservesLocked", locked);
						SendGroupChatMessage(locked and "Soft Reserves locked." or "Soft Reserves unlocked.");
						wipe(searchCache);
						self:Update();
						return true;
					else
						app.print("You must be the Master Looter to lock the soft reserves.");
					end
				end,
				OnUpdate = function(data)
					if IsInGroup() then
						if IsPrimaryLooter() then
							data.visible = true;
							data.description = data.description_ML;
						else
							data.visible = app.Settings:GetTooltipSetting("SoftReservesLocked");
							data.description = data.description_PLEB;
						end
					else
						data.visible = false;
						
						-- Automatically unlock when not in a group.
						local locked = app.Settings:GetTooltipSetting("SoftReservesLocked");
						if locked then
							app.Settings:SetTooltipSetting("SoftReservesLocked", false);
							wipe(searchCache);
							self:Update();
							return true;
						end
					end
					return true;
				end,
			}, {
				__index = function(t, key)
					if key == "title" then
						if t.saved then return "Locked"; end
					elseif key == "saved" then
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							return 1;
						end
					elseif key == "trackable" then
						return true;
					else
						return table[key];
					end
				end
			}),
			setmetatable({	-- Use Persistence Button
				text = "Use Persistence",
				icon = "Interface\\Icons\\INV_MISC_KEY_13",
				description_ML = "Click to toggle Persistence for this raid.\n\nIf Persistence is active, each member of the raid with a persistence value on their Soft Reserved item gets a +10 to the top end of their roll for each Persistence they have on the item.\n\nYou may import Persistence from a CSV document.\n\nPersistence is stored locally and not sent to your group.",
				description_PLEB = "Your Master Looter controls whether Persistence is active or not.",
				description_SOLO = "Click to toggle Persistence for viewing the list outside of raid.\n\nThis state will change when you join a group whose Persistence is inactive.",
				visible = true,
				priority = 3,
				OnClick = function(row, button)
					if IsPrimaryLooter() or not IsInGroup() then
						local persistence = not app.Settings:GetTooltipSetting("SoftReservePersistence");
						app.Settings:SetTooltipSetting("SoftReservePersistence", persistence);
						SendGroupMessage("!\tsrpersistence\t" .. (persistence and 1 or 0));
						wipe(searchCache);
						self:Update();
						return true;
					else
						app.print("You must be the Master Looter to modify Persistence.");
					end
				end,
				OnUpdate = function(data)
					if IsInGroup() then
						if IsPrimaryLooter() then
							data.visible = true;
							data.description = data.description_ML;
						else
							data.visible = app.Settings:GetTooltipSetting("SoftReservePersistence");
							data.description = data.description_PLEB;
						end
					else
						data.visible = true;
						data.description = data.description_SOLO;
					end
					return true;
				end,
			}, {
				__index = function(t, key)
					if key == "title" then
						if t.saved then return "Persistence Active"; end
					elseif key == "saved" then
						if app.Settings:GetTooltipSetting("SoftReservePersistence") then
							return 1;
						end
					elseif key == "trackable" then
						return true;
					else
						return table[key];
					end
				end
			}),
			{	-- Import Persistence Button
				text = "Import Persistence",
				icon = "Interface\\Icons\\INV_MISC_KEY_12",
				description = "Click this to import Persistence from a CSV document.\n\nFORMAT:\nPLAYER NAME/GUID \\t ITEM NAME/ID \\t PERSISTENCE\n\nNOTE: There's an issue with Blizzard not finding player GUIDs that aren't in your raid and items that you personally have never encountered. For best performance, import Player GUIDs, Item IDs, and Persistence values.\n\nPersistence is stored locally and not sent to your group.",
				visible = true,
				priority = 4,
				OnClick = function(row, button)
					app:ShowPopupDialogWithMultiLineEditBox("FORMAT: PLAYER NAME\\tITEM NAME/ID\\tPERSISTENCE\n\n", function(text)
						text = string.gsub(text, "    ", "\t");	-- The WoW UI converts tab characters into 4 spaces in the English Client.
						local u, pers, g, word, l, esc, c = "", {}, {}, "", string.len(text), false;
						for i=1,l,1 do
							c = string.sub(text, i, i);
							if c == "\\" then
								esc = true;
							elseif esc then
								esc = false;
								if c == "t" then
									c = "\t";
								elseif c == "n" or c == "r" then
									c = "\n";
								else
									-- Add back the backslash.
									word = word .. "\\";
								end
							end
							
							if c == "\t" then
								if string.len(word) > 0 then
									if #g < 1 then
										u = word;
									end
									tinsert(g, word);
									word = "";
								else
									if #g < 1 and string.len(u) > 0 then
										tinsert(g, u);
									end
								end
							elseif c == "\n" or c == "\r" then
								if string.len(word) > 0 then
									tinsert(g, word);
									word = "";
								end
								if #g > 2 then
									if not string.match(g[1], "FORMAT: ") then
										tinsert(pers, g);
									end
									g = {};
								end
							else
								word = word .. c;
							end
						end
						if string.len(word) > 0 then
							tinsert(g, word);
						end
						if #g > 2 and not string.match(g[1], "FORMAT: ") then tinsert(pers, g); end
						if #pers > 0 then
							local success = 0;
							local allpersistence, allsrs = app.GetDataMember("SoftReservePersistence"), app.GetDataMember("SoftReserves");
							for i,g in ipairs(pers) do
								local guid, itemID = PlayerGUIDFromInfo[g[1]], app.ParseItemID(g[2]);
								if guid and itemID then
									local persistence = rawget(allpersistence, guid);
									if not persistence then
										persistence = {};
										allpersistence[guid] = persistence;
									end
									persistence[itemID] = tonumber(g[3]);
									success = success + 1;
									-- app.print(g[1] .. ": " .. (select(2, GetItemInfo(itemID)) or g[2]) .. " [+" .. g[3] .. "]");
								else
									app.print("FAILED TO IMPORT: ", g[1], g[2], guid, itemID);
								end
							end
							if success > 0 then
								app.print("Successfully imported " .. success .. " Persistence entries.");
							end
						end
					end);
					wipe(searchCache);
					self:Update();
					return true;
				end,
			},
			{	-- Push List to Group Members Button
				text = "Push List to Group Members",
				icon = "Interface\\Icons\\INV_Wand_06",
				description = "Press this button to send an addon message to your group containing all of the Soft Reserves in this session.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					PushSoftReserves();
					return true;
				end,
				OnUpdate = function(data)
					if IsPrimaryLooter() then
						data.visible = true;
					else
						data.visible = false;
					end
					return true;
				end,
			},
			{	-- Push Soft Reserve Button
				text = "Push Soft Reserve",
				icon = "Interface\\Icons\\INV_Wand_06",
				description = "Press this button to send an addon message containing your Soft Reserve to your group or guild.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					PushSoftReserve();
					return true;
				end,
				OnUpdate = function(data)
					if app.Settings:GetTooltipSetting("SoftReservesLocked") or IsPrimaryLooter() then
						data.visible = false;
					else
						data.visible = true;
					end
					return true;
				end,
			},
			{	-- Query Group Members Button
				text = "Query Group Members",
				icon = "Interface\\Icons\\INV_Wand_05",
				description = "Press this button to send an addon message to your Group Members to update their Soft Reserves.",
				priority = 7,
				OnClick = function(row, button)
					SendGroupMessage("?\tsr");
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					if IsInGroup() then
						if app.Settings:GetTooltipSetting("SoftReservesLocked") then
							data.visible = false;
						elseif IsPrimaryLooter() then
							data.visible = true;
						else
							data.visible = false;
						end
					else
						data.visible = false;
					end
					return true;
				end,
			},
			{	-- Query Guild Members Button
				text = "Query Guild Members",
				icon = "Interface\\Icons\\INV_Wand_04",
				description = "Press this button to send an addon message to your Guild Members to update their Soft Reserves.",
				visible = true,
				priority = 7,
				OnClick = function(row, button)
					SendGuildMessage("?\tsr");
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					if IsInGroup() then
						data.visible = false;
					elseif app.Settings:GetTooltipSetting("SoftReservesLocked") then
						data.visible = false;
					elseif not IsInGroup() or IsPrimaryLooter() then
						data.visible = true;
					else
						data.visible = false;
					end
					return true;
				end,
			},
			{	-- Query Master Looter Button
				text = "Query Master Looter",
				icon = "Interface\\Icons\\INV_Wand_06",
				description = "Press this button to send an addon message to the Master Looter for a list of all the Soft Reserves in the raid.",
				cooldown = 0,
				priority = 7,
				OnClick = function(row, button)
					SendGroupMessage("?\tsrml");
					self:Rebuild();
					return true;
				end,
				OnUpdate = function(data)
					if not IsInGroup() or IsPrimaryLooter() then
						data.visible = false;
					else
						data.visible = true;
					end
					return true;
				end,
			},
			{	-- Export Soft Reserves Button
				text = "Export Soft Reserves",
				icon = "Interface\\Icons\\Spell_Shadow_LifeDrain02",
				description = "Press this button to open an edit box containing the full content of your raid's Soft Reserve list in the format expected by the Persistence importer.\n\nYou can give this string to your raid members for them to import the full persistence list for the session.",
				visible = true,
				priority = 8,
				OnClick = function(row, button)
					local s, count = "", 0;
					for i,o in ipairs(self.data.g) do
						if o.guid then
							if count > 0 then
								s = s .. "\n";
							end
							s = s .. o.guid .. "\\t" .. (o.itemID or 0) .. "\\t" .. (o.persistence or 0) .. "\\t" .. o.name .. "\\t" .. o.itemName;
							count = count + 1;
						end
					end
					
					app:ShowPopupDialogWithMultiLineEditBox(s);
					return true;
				end,
				OnUpdate = function(data)
					if app.Settings:GetTooltipSetting("SoftReservesLocked") then
						data.visible = true;
					else
						data.visible = false;
					end
					return true;
				end,
			},
			{	-- Guild Members Header
				text = "Guild Members",
				icon = "Interface\\Icons\\Ability_Warrior_BattleShout",
				description = "These active characters are in your guild.\n\nOnly showing characters logged in the last 2 months.",
				priority = 10,
				ranks = {},
				g = {},
				OnUpdate = function(data)
					if IsInGroup() then
						data.visible = false;
						return true;
					end
					-- Insert Guild Members
					local g, groupMembers = data.g, self.groupMembers;
					local numRanks = GuildControlGetNumRanks();
					if numRanks > 0 then
						for rankIndex = #g + 1, numRanks, 1 do
							table.insert(g, {
								text = GuildControlGetRankName(rankIndex),
								icon = format("Interface\\PvPRankBadges\\PvPRank%02d",  (15 - rankIndex)),
								--OnUpdate = app.AlwaysShowUpdate,
								parent = data,
								visible = true,
								g = {},
							});
						end
						
						local debugMode = app.Settings:Get("DebugMode");
						local count = GetNumGuildMembers();
						if count > 0 then
							for guildIndex = 1, count, 1 do
								local _, _, rankIndex, _, _, _, _, _, _, _, _, _, _, _, _, _, guid = GetGuildRosterInfo(guildIndex);
								if guid then
									if not groupMembers[guid] then
										groupMembers[guid] = true;
										local yearsOffline, monthsOffline, daysOffline, hoursOffline = GetGuildRosterLastOnline(guildIndex);
										if (((yearsOffline or 0) * 12) + (monthsOffline or 0)) < 3 or debugMode then
											local a = g[rankIndex + 1];
											if a then table.insert(a.g, app.CreateSoftReserveUnit(guid, { parent = a, visible = true })); end
										end
									end
								end
							end
							
							local any = false;
							for rankIndex = 1, numRanks, 1 do
								if #g[rankIndex].g > 0 then
									app.Sort(g[rankIndex].g, app.SortDefaults.Text);
									any = true;
								end
							end
							data.visible = any;
							return true;
						end
					end
				end,
			},
			{	-- Non-Group Members Header
				text = "Non-Group Members",
				icon = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
				description = "These are players that have Soft Reserved something in your raid, but are not currently in your group.",
				visible = true,
				priority = 11,
				g = {},
				OnUpdate = function(data)
					data.visible = #data.g > 0 and not app.Settings:GetTooltipSetting("SoftReservesLocked");
				end,
			}
		};
		
		-- If Loot Method is supported, then give the Raid Leader the option of selecting master loot.
		if GetLootMethod and SetLootMethod then
			tinsert(options, {	-- Loot Method Selector
				text = LOOT_METHOD,
				icon = "Interface\\Icons\\INV_Misc_Coin_01",
				description = "If you are seeing this option, you are the group leader and have not setup Master Looter yet.",
				visible = true,
				priority = 1,
				OnClick = function(row, button)
					SetLootMethod("master", UnitName("player"));
					return true;
				end,
				OnUpdate = function(data)
					data.visible = IsInGroup()
						and GetLootMethod() ~= "master"
						and UnitIsGroupLeader("player", "raid");
					return true;
				end,
			});
		end
		self.data = {
			text = "Soft Reserves",
			icon = app.asset("WindowIcon_SoftReserves"), 
			description = "The soft reservation list submitted by your raid group. This is managed through the Master Looter, should they have " .. appName .. " installed. If not, this feature will not function.\n\nML: Members of your raid without " .. appName .. " installed can whisper you '!sr <itemlink>' or '!sr <itemID>' to Soft Reserve an item.",
			visible = true, 
			expanded = true,
			dirty = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g, groupMembers = data.g, self.groupMembers;
				wipe(g);
				
				-- Insert yourself every time.
				local name = UnitName("player");
				local me = groupMembers[name];
				if not me then
					me = app.CreateSoftReserveUnit(app.GUID, { parent = data, priority = 8, OnUpdate = app.AlwaysShowUpdate });	-- YOU!
					groupMembers[name] = me;
				end
				
				-- Add in your group members.
				local count = GetNumGroupMembers();
				if count > 0 then
					local groupies = { [name] = true };
					for raidIndex = 1, 40, 1 do
						name = GetRaidRosterInfo(raidIndex);
						if name then
							groupies[name] = true;
							if not groupMembers[name] then
								groupMembers[name] = app.CreateSoftReserveUnit(name, { parent = data, priority = 9, OnUpdate = app.AlwaysShowUpdate });
							end
						end
					end
					
					-- Insert every groupie! (including yourself!)
					for name,member in pairs(groupMembers) do
						if groupies[name] then
							table.insert(g, member);
						end
					end
				else
					-- Insert just you!
					table.insert(g, me);
				end
				for i,option in ipairs(options) do
					option.parent = data;
					table.insert(g, option);
				end
				app.Sort(g, SortByTextAndPriority);
			end,
		};
		return true;
	end,
	OnUpdate = function(self, ...)
		-- Update the groups without forcing Debug Mode.
		local visibilityFilter, groupFilter, GroupRequirementsFilter = app.VisibilityFilter, app.GroupFilter, app.GroupRequirementsFilter;
		app.GroupRequirementsFilter = app.NoFilter;
		app.GroupFilter = app.NoFilter;
		app.VisibilityFilter = app.ObjectVisibilityFilter;
		self:DefaultUpdate(...);
		app.GroupRequirementsFilter = GroupRequirementsFilter;
		app.GroupFilter = groupFilter;
		app.VisibilityFilter = visibilityFilter;
		return false;
	end
});

-- Unit Class Extension
local SoftReserveUnitOnClick = function(self, button)
	local guid = self.ref.guid or self.ref.unit;
	if guid then
		if button == "RightButton" then
			if self.ref.itemID then
				if IsPrimaryLooter() then
					-- Master Looters can do whatever they want.
					app:ShowPopupDialog((self.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
					function()
						if IsGUIDInGroup(guid) then
							UpdateSoftReserve(guid, nil, time(), false, true);
						else
							UpdateSoftReserveInternal(guid, nil);
						end
						RefreshSoftReserveWindow();
					end);
				elseif UnitGUID("player") == guid then
					if app.Settings:GetTooltipSetting("SoftReservesLocked") then
						app.print("You can't do that while the session is locked.");
						return true;
					end
					-- A player can change their own, so long as it isn't locked.
					app:ShowPopupDialog("Your Soft Reserve is currently set to:\n \n" .. (self.ref.itemText or RETRIEVING_DATA) .. "\n \nDo you want to delete it?",
					function()
						UpdateSoftReserve(guid, nil, time(), false, true);
						RefreshSoftReserveWindow();
					end);
				elseif IsGUIDInGroup(guid) then
					app.print("You must be the Master Looter to do that.");
					return true;
				else
					-- You can do whatever you want to non-group members.
					app:ShowPopupDialog((self.ref.text or RETRIEVING_DATA) .. "\n \nAre you sure you want to delete this?",
					function()
						UpdateSoftReserveInternal(guid, nil);
						RefreshSoftReserveWindow();
					end);
				end
			end
		elseif button == "LeftButton" then
			if IsShiftKeyDown() or IsControlKeyDown() then
				return false;
			end
			if IsPrimaryLooter() then
				-- Master Looters can do whatever they want.
				if self.ref.itemID then
					app:ShowPopupDialogWithEditBox((self.ref.name or RETRIEVING_DATA) .. " has their Soft Reserve set to:\n \n" .. (self.ref.itemText or RETRIEVING_DATA) .. "\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							ParseSoftReserve(guid, cmd);
							RefreshSoftReserveWindow();
						end
					end);
				else
					app:ShowPopupDialogWithEditBox((self.ref.name or RETRIEVING_DATA) .. " does not have a Soft Reserve.\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							ParseSoftReserve(guid, cmd);
							RefreshSoftReserveWindow();
						end
					end);
				end
			elseif UnitGUID("player") == guid then
				if app.Settings:GetTooltipSetting("SoftReservesLocked") then
					app.print("You can't do that while the session is locked.");
					return true;
				end
				-- A player can change their own, so long as it isn't locked.
				if self.ref.itemID then
					app:ShowPopupDialogWithEditBox("Your Soft Reserve is set to:\n \n" .. (self.ref.itemText or RETRIEVING_DATA) .. "\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							ParseSoftReserve(UnitGUID("player"), cmd, true, true);
							RefreshSoftReserveWindow();
						end
					end);
				else
					app:ShowPopupDialogWithEditBox("You do not have a Soft Reserve yet.\n \nEnter a new Item ID or an Item Link.", "", function(cmd)
						if cmd and cmd ~= "" then
							ParseSoftReserve(UnitGUID("player"), cmd, true, true);
							RefreshSoftReserveWindow();
						end
					end);
				end
			elseif IsGUIDInGroup(guid) then
				app.print("You must be the Master Looter to do that.");
				return true;
			end
		end
	end
	return true;
end
app.CreateSoftReserveUnit = app.ExtendClass("Unit", "SoftReserveUnit", "unit", {
	["text"] = function(t)
		return t.classText .. " - " .. t.itemText;
	end,
	["itemText"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local itemName, itemLink,_,_,_,_,_,_,_,icon = GetItemInfo(itemID);
			if itemLink then
				return (icon and ("|T" .. icon .. ":0|t") or "") .. itemLink .. (t.mapText or "");
			else
				return RETRIEVING_DATA;
			end
		else
			return "No Soft Reserve Selected";
		end
	end,
	["mapText"] = function(t)
		local mapID = t.internalMapID;
		if mapID and mapID ~= app.CurrentMapID then
			return " (" .. app.GetMapName(mapID) .. ")";
		end
	end,
	["visible"] = function(t)
		return true;
	end,
	["itemID"] = function(t)
		local guid = t.guid;
		if guid then
			local reserve = rawget(app.GetDataMember("SoftReserves"), guid);
			if reserve then
				return type(reserve) == 'number' and reserve or reserve[1];
			end
		end
	end,
	["persistence"] = function(t)
		local guid = t.guid;
		if guid then
			local reserve = rawget(app.GetDataMember("SoftReserves"), guid);
			if reserve then
				local itemID = type(reserve) == 'number' and reserve or reserve[1];
				if itemID then
					local persistence = rawget(app.GetDataMember("SoftReservePersistence"), guid);
					if persistence then return persistence[itemID]; end
					return 0;
				end
			end
		end
	end,
	["roll"] = function(t)
		if app.Settings:GetTooltipSetting("SoftReservePersistence") then
			local persistence = t.persistence;
			if persistence and persistence > 0 then
				return 100 + (persistence * 10);
			else
				return 100;
			end
		end
	end,
	["preview"] = function(t)
		return t.itemID and select(5, GetItemInfoInstant(t.itemID));
	end,
	["link"] = function(t)
		return t.itemID and select(2, GetItemInfo(t.itemID));
	end,
	["tooltipText"] = function(t)
		local text = t.classText;
		local guid = t.guid;
		local roll = t.roll;
		local icon = t.icon;
		if icon then text = "|T" .. icon .. ":0|t " .. text; end
		if roll then text = text .. " (" .. roll .. ")"; end
		if guid and not IsGUIDInGroup(guid) then
			text = text .. " |CFFFFFFFF(Not in Group)|r";
		end
		return text;
	end,
	["summary"] = function(t)
		return t.roll;
	end,
	["OnClick"] = function(t)
		return SoftReserveUnitOnClick;
	end,
	["itemName"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local itemName = GetItemInfo(itemID);
			if itemName then
				return itemName;
			else
				return RETRIEVING_DATA;
			end
		else
			return "No Soft Reserve Selected";
		end
	end,
	["crs"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local searchResults = app.SearchForField("itemID", itemID);
			if searchResults and #searchResults > 0 then
				for i,o in ipairs(searchResults) do
					if o.itemID then
						if o.crs then
							return o.crs;
						end
						if o.qgs then
							return o.qgs;
						end
						if o.parent then
							if o.parent.npcID and o.parent.npcID > 0 then
								return { o.parent.npcID };
							end
							if o.parent.cr then
								return { o.parent.cr };
							end
							if o.parent.crs then
								return o.parent.crs;
							end
							if o.parent.qgs then
								return o.parent.qgs;
							end
						end
					end
				end
			end
		end
	end,
	["internalMapID"] = function(t)
		local itemID = t.itemID;
		if itemID then
			local searchResults = app.SearchForField("itemID", itemID);
			if searchResults and #searchResults > 0 then
				for i,o in ipairs(searchResults) do
					if o.itemID then
						local mapID = GetRelativeValue(o, "mapID");
						if mapID then
							return mapID;
						end
					end
				end
			end
		end
	end,
});