-- App locals
local _, app = ...;
local L = app.L;

-- Global locals
local tinsert, tremove, ipairs, pairs, math_min, select, tostring, tonumber, time, wipe
	= tinsert, tremove, ipairs, pairs, math.min, select, tostring, tonumber, time, wipe
local BNGetInfo
	= BNGetInfo
local AssignChildren, contains
	= app.AssignChildren, app.contains

-- Synchronization Functions
do
local C_CreatureInfo_GetRaceInfo = C_CreatureInfo.GetRaceInfo;
local SendAddonMessage = app.WOWAPI.SendAddonMessage
local outgoing,incoming,queue,active = {},{},{},nil;
local whiteListedFields = { --[["Achievements",]] "Artifacts", "AzeriteEssenceRanks", "BattlePets", "Exploration", "Factions", "FlightPaths", "Followers", "GarrisonBuildings", "Quests", "Spells", "Titles" };
app.CharacterSyncTables = whiteListedFields;
local function splittoarray(sep, inputstr)
	local t = {};
	for str in inputstr:gmatch("([^" .. (sep or "%s") .. "]+)") do
		tinsert(t, str);
	end
	return t;
end
local function processQueue()
	if #queue > 0 and not active then
		local data = queue[1];
		tremove(queue, 1);
		active = data[1];
		app.print("Updating " .. data[2] .. " from " .. data[3] .. "...");
		SendAddonMessage("ATT", "!\tsyncsum\t" .. data[1], "WHISPER", data[3]);
	end
end

function app:AcknowledgeIncomingChunks(sender, uid, total)
	local incomingFromSender = incoming[sender];
	if not incomingFromSender then
		incomingFromSender = {};
		incoming[sender] = incomingFromSender;
	end
	incomingFromSender[uid] = { ["chunks"] = {}, ["total"] = total };
	SendAddonMessage("ATT", "chksack\t" .. uid, "WHISPER", sender);
end
local function ProcessIncomingChunk(sender, uid, index, chunk)
	if not (chunk and index and uid and sender) then return false; end
	local incomingFromSender = incoming[sender];
	if not incomingFromSender then return false; end
	local incomingForUID = incomingFromSender[uid];
	if not incomingForUID then return false; end
	incomingForUID.chunks[index] = chunk;
	if index < incomingForUID.total then
		if index % 25 == 0 then app.print("Syncing " .. index .. " / " .. incomingForUID.total); end
		return true;
	end

	incomingFromSender[uid] = nil;

	local msg = "";
	for i=1,incomingForUID.total,1 do
		msg = msg .. incomingForUID.chunks[i];
	end
	-- app:ShowPopupDialogWithMultiLineEditBox(msg);
	local characters = splittoarray("\t", msg);
	for _,characterString in ipairs(characters) do
		local data = splittoarray(":", characterString);
		local guid = data[1];
		local character = ATTCharacterData[guid];
		if not character then
			character = {};
			character.guid = guid;
			ATTCharacterData[guid] = character;
		end
		character.name = data[2];
		character.lvl = tonumber(data[3]);
		character.text = data[4];
		if data[5] ~= "" and data[5] ~= " " then character.realm = data[5]; end
		if data[6] ~= "" and data[6] ~= " " then character.factionID = tonumber(data[6]); end
		if data[7] ~= "" and data[7] ~= " " then character.classID = tonumber(data[7]); end
		if data[8] ~= "" and data[8] ~= " " then character.raceID = tonumber(data[8]); end
		character.lastPlayed = tonumber(data[9]);
		character.Deaths = tonumber(data[10]);
		if character.classID then character.class = app.ClassInfoByID[character.classID].file; end
		if character.raceID then character.race = C_CreatureInfo_GetRaceInfo(character.raceID).clientFileString; end
		for i=11,#data,1 do
			local piece = splittoarray("/", data[i]);
			local key = piece[1];
			local field = {};
			character[key] = field;
			for j=2,#piece,1 do
				local index = tonumber(piece[j]);
				if index then field[index] = 1; end
			end
		end
		app.print("Update complete for " .. character.text .. ".");
	end

	app:RecalculateAccountWideData();
	app.Settings:Refresh();
	active = nil;
	processQueue();
	return false;
end
function app:AcknowledgeIncomingChunk(sender, uid, index, chunk)
	if chunk and ProcessIncomingChunk(sender, uid, index, chunk) then
		SendAddonMessage("ATT", "chkack\t" .. uid .. "\t" .. index .. "\t1", "WHISPER", sender);
	else
		SendAddonMessage("ATT", "chkack\t" .. uid .. "\t" .. index .. "\t0", "WHISPER", sender);
	end
end
function app:SendChunk(sender, uid, index, success)
	local outgoingForSender = outgoing[sender];
	if outgoingForSender then
		local chunksForUID = outgoingForSender.uids[uid];
		if chunksForUID and success == 1 then
			local chunk = chunksForUID[index];
			if chunk then
				SendAddonMessage("ATT", "chk\t" .. uid .. "\t" .. index .. "\t" .. chunk, "WHISPER", sender);
			end
		else
			outgoingForSender.uids[uid] = nil;
		end
	end
end

function app:IsAccountLinked(sender)
	return AllTheThingsAD.LinkedAccounts[sender] or AllTheThingsAD.LinkedAccounts[("-"):split(sender)];
end
local function DefaultSyncCharacterData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	wipe(data);
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for index,_ in pairs(characterData) do
				data[index] = 1;
			end
		end
	end
end
-- Used for data which is defaulted as Account-learned, but has Character-learned exceptions
local function PartialSyncCharacterData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	-- wipe account data saved based on character data
	for id,completion in pairs(data) do
		if completion == 2 then
			data[id] = nil
		end
	end
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for id,_ in pairs(characterData) do
				-- character-based completion in account data saved as 2 for these types
				data[id] = 2
			end
		end
	end
end
local function RankSyncCharacterData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	wipe(data);
	local oldRank;
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for index,rank in pairs(characterData) do
				oldRank = data[index];
				if not oldRank or oldRank < rank then
					data[index] = rank;
				end
			end
		end
	end
end
local function SyncCharacterQuestData(allCharacters, key)
	local characterData
	local data = ATTAccountWideData[key];
	-- don't completely wipe quest data, some questID are marked as 'complete' due to other restrictions on the account
	-- so we want to maintain those even though no character actually has it completed
	-- TODO: perhaps in the future we can instead treat these quests as 'uncollectible' for the account rather than 'complete'
	-- TODO: once these quests are no longer assigned as completion == 2 we can then use the PartialSyncCharacterData for Quests
	-- and make sure AccountWide quests are instead saved directly into ATTAccountWideData when completed
	-- and cleaned from individual Character caches here during sync
	for questID,completion in pairs(data) do
		if completion ~= 2 then
			data[questID] = nil
		-- else app.PrintDebug("not-reset",questID,completion)
		end
	end
	for guid,character in pairs(allCharacters) do
		characterData = character[key];
		if characterData then
			for index,_ in pairs(characterData) do
				data[index] = 1;
			end
		end
	end
end
-- TODO: individual Classes should be able to add the proper functionality here to determine the account-wide
-- collection states of a 'Thing', if the refresh can't account for it
-- i.e. Mounts... 99% account-wide by default, like 5 per character. don't want to save 900+ id's for
-- each character just to sync into account data properly
local SyncFunctions = setmetatable({
	AzeriteEssenceRanks = RankSyncCharacterData,
	Quests = SyncCharacterQuestData,
	Mounts = PartialSyncCharacterData,
	BattlePets = PartialSyncCharacterData,
}, { __index = function(t, key)
	if contains(whiteListedFields, key) then
		return DefaultSyncCharacterData
	end
end })

function app:RecalculateAccountWideData()
	local allCharacters = ATTCharacterData;
	local syncFunc;
	for key,data in pairs(ATTAccountWideData) do
		syncFunc = SyncFunctions[key];
		if syncFunc then
			-- app.PrintDebug("Sync:",key)
			syncFunc(allCharacters, key);
		end
	end
	local deaths = 0;
	for guid,character in pairs(allCharacters) do
		if character.Deaths then
			deaths = deaths + character.Deaths;
		end
	end
	ATTAccountWideData.Deaths = deaths;
end
app.AddEventHandler("OnRecalculateDone", app.RecalculateAccountWideData)
function app:ReceiveSyncRequest(sender, battleTag)
	if battleTag ~= select(2, BNGetInfo()) then
		-- Check to see if the character/account is linked.
		if not (app:IsAccountLinked(sender) or AllTheThingsAD.LinkedAccounts[battleTag]) then
			return false;
		end
	end

	-- Whitelist the character name, if not already. (This is needed for future sync methods)
	AllTheThingsAD.LinkedAccounts[sender] = true;

	-- Generate the sync string (there may be several depending on how many alts there are)
	-- TODO: use app.TableConcat()
	-- local msgs = {};
	local msg = "?\tsyncsum";
	for guid,character in pairs(ATTCharacterData) do
		if character.lastPlayed then
			local charsummary = "\t" .. guid .. ":" .. character.lastPlayed;
			if (msg:len() + charsummary:len()) < 255 then
				msg = msg .. charsummary;
			else
				SendAddonMessage("ATT", msg, "WHISPER", sender);
				msg = "?\tsyncsum" .. charsummary;
			end
		end
	end
	SendAddonMessage("ATT", msg, "WHISPER", sender);
end
function app:ReceiveSyncSummary(sender, summary)
	if app:IsAccountLinked(sender) then
		local first = #queue == 0;
		for i,data in ipairs(summary) do
			local guid,lastPlayed = (":"):split(data);
			local character = ATTCharacterData[guid];
			if not character or not character.lastPlayed or (character.lastPlayed < tonumber(lastPlayed)) and guid ~= active then
				tinsert(queue, { guid, character and character.text or guid, sender });
			end
		end
		if first then processQueue(); end
	end
end
function app:ReceiveSyncSummaryResponse(sender, summary)
	if app:IsAccountLinked(sender) then
		local rawMsg;
		for i,guid in ipairs(summary) do
			local character = ATTCharacterData[guid];
			if character then
				-- Put easy character data into a raw data string
				local rawData = character.guid .. ":" .. character.name .. ":" .. character.lvl .. ":" .. character.text .. ":" .. (character.realm or " ") .. ":" .. (character.factionID or " ") .. ":" .. (character.classID or " ") .. ":" .. (character.raceID or " ") .. ":" .. character.lastPlayed .. ":" .. character.Deaths;

				for i,field in ipairs(whiteListedFields) do
					if character[field] then
						rawData = rawData .. ":" .. field;
						for index,value in pairs(character[field]) do
							if value then
								rawData = rawData .. "/" .. index;
							end
						end
					end
				end

				if not rawMsg then
					rawMsg = rawData;
				else
					rawMsg = rawMsg .. "\t" .. rawData;
				end
			end
		end

		if rawMsg then
			-- Send Addon Message Back
			local length = rawMsg:len();
			local chunks = {};
			for i=1,length,241 do
				tinsert(chunks, rawMsg:sub(i, math_min(length, i + 240)));
			end
			local outgoingForSender = outgoing[sender];
			if not outgoingForSender then
				outgoingForSender = { ["total"] = 0, ["uids"] = {}};
				outgoing[sender] = outgoingForSender;
			end
			local uid = outgoingForSender.total + 1;
			outgoingForSender.uids[uid] = chunks;
			outgoingForSender.total = uid;

			-- Send Addon Message Back
			SendAddonMessage("ATT", "chks\t" .. uid .. "\t" .. #chunks, "WHISPER", sender);
		end
	end
end
function app:Synchronize(automatically)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	local battleTag = select(2, BNGetInfo());
	if battleTag then
		app.CurrentCharacter.lastPlayed = time();
		local any, msg = false, "?\tsync\t" .. battleTag;
		for playerName,allowed in pairs(AllTheThingsAD.LinkedAccounts) do
			if allowed and not playerName:find("#") then
				SendAddonMessage("ATT", msg, "WHISPER", playerName);
				any = true;
			end
		end
		if not any and not automatically then
			app.print("You need to link a character or BNET account in the settings first before you can Sync accounts.");
		end
	end
end
function app:SynchronizeWithPlayer(playerName)
	-- Update the last played timestamp. This ensures the sync process does NOT destroy unsaved progress on this character.
	local battleTag = select(2, BNGetInfo());
	if battleTag then
		app.CurrentCharacter.lastPlayed = time();
		SendAddonMessage("ATT", "?\tsync\t" .. battleTag, "WHISPER", playerName);
	end
end
app.AddEventHandler("OnReady", function()
	-- Attempt to register for the addon message prefix.
	-- NOTE: This is only used by this old sync module and will be removed at some point.
	C_ChatInfo.RegisterAddonMessagePrefix("ATT");
	if app.Settings:GetTooltipSetting("Auto:Sync") then
		app:Synchronize(true)
	end
end);
end

-- Implementation
app.AddCustomWindowOnUpdate("Account Management", function(self)
	if self:IsVisible() then
		if not self.initialized then
			self.initialized = true;
			local C_DateAndTime_GetCalendarTimeFromEpoch = C_DateAndTime.GetCalendarTimeFromEpoch;
			local function OnRightButtonDeleteCharacter(row, button)
				if button == "RightButton" then
					app:ShowPopupDialog("CHARACTER DATA: " .. (row.ref.text or RETRIEVING_DATA) .. L.CONFIRM_DELETE,
					function()
						ATTCharacterData[row.ref.datalink] = nil;
						app:RecalculateAccountWideData();
						self:Reset();
					end);
				end
				return true;
			end
			local function OnRightButtonDeleteLinkedAccount(row, button)
				if button == "RightButton" then
					app:ShowPopupDialog("LINKED ACCOUNT: " .. (row.ref.text or RETRIEVING_DATA) .. L.CONFIRM_DELETE,
					function()
						AllTheThingsAD.LinkedAccounts[row.ref.datalink] = nil;
						app:SynchronizeWithPlayer(row.ref.datalink);
						self:Reset();
					end);
				end
				return true;
			end
			local function OnTooltipForCharacter(t, tooltipInfo)
				local character = ATTCharacterData[t.unit];
				if character then
					-- last login info
					local login = character.lastPlayed;
					if login then
						local d = C_DateAndTime_GetCalendarTimeFromEpoch(login * 1e6);
						tinsert(tooltipInfo, {
							left = PLAYED,
							right = ("%d-%02d-%02d %02d:%02d"):format(d.year, d.month, d.monthDay, d.hour, d.minute),
							r = 0.8, g = 0.8, b = 0.8
						});
					else
						tinsert(tooltipInfo, {
							left = PLAYED,
							right = NEVER,
							r = 0.8, g = 0.8, b = 0.8
						});
					end
					local total = 0;
					for i,field in ipairs(app.CharacterSyncTables) do
						local values = character[field];
						if values then
							local subtotal = 0;
							for key,value in pairs(values) do
								if value then
									subtotal = subtotal + 1;
								end
							end
							total = total + subtotal;
							tinsert(tooltipInfo, {
								left = field,
								right = tostring(subtotal),
								r = 1, g = 1, b = 1
							});
						end
					end
					tinsert(tooltipInfo, { left = " " });
					tinsert(tooltipInfo, {
						left = "Total",
						right = tostring(total),
						r = 0.8, g = 0.8, b = 1
					});
					tinsert(tooltipInfo, {
						left = L.DELETE_CHARACTER,
						r = 1, g = 0.8, b = 0.8
					});
				end
			end
			local function OnTooltipForLinkedAccount(t, tooltipInfo)
				if t.unit then
					tinsert(tooltipInfo, {
						left = L.LINKED_ACCOUNT_TOOLTIP,
						r = 0.8, g = 0.8, b = 1, wrap = true,
					});
					tinsert(tooltipInfo, {
						left = L.DELETE_LINKED_CHARACTER,
						r = 1, g = 0.8, b = 0.8
					});
				else
					tinsert(tooltipInfo, {
						left = L.DELETE_LINKED_ACCOUNT,
						r = 1, g = 0.8, b = 0.8
					});
				end
			end
			
			local syncHeader = app.CreateRawText(L.ACCOUNT_MANAGEMENT, {
				icon = app.asset("WindowIcon_AccountManagement"),
				description = L.ACCOUNT_MANAGEMENT_TOOLTIP,
				visible = true,
				back = 1,
				OnUpdate = app.AlwaysShowUpdate,
				OnClick = app.UI.OnClick.IgnoreRightClick,
				g = {
					app.CreateRawText(L.ADD_LINKED_CHARACTER_ACCOUNT, {
						icon = app.asset("Button_Add"),
						description = L.ADD_LINKED_CHARACTER_ACCOUNT_TOOLTIP,
						visible = true,
						OnUpdate = app.AlwaysShowUpdate,
						OnClick = function(row, button)
							app:ShowPopupDialogWithEditBox(L.ADD_LINKED_POPUP, "", function(cmd)
								if cmd and cmd ~= "" then
									AllTheThingsAD.LinkedAccounts[cmd] = true;
									self:Reset();
								end
							end);
							return true;
						end,
					}),
					-- Characters Section
					app.CreateRawText(L.CHARACTERS, {
						icon = 526421,
						description = L.SYNC_CHARACTERS_TOOLTIP,
						visible = true,
						expanded = true,
						['g'] = {},
						OnClick = app.UI.OnClick.IgnoreRightClick,
						OnUpdate = function(data)
							local g = {};
							for guid,character in pairs(ATTCharacterData) do
								if character then
									tinsert(g, app.CreateUnit(guid, {
										datalink = guid,
										OnClick = OnRightButtonDeleteCharacter,
										OnTooltip = OnTooltipForCharacter,
										OnUpdate = app.AlwaysShowUpdate,
										name = character.name,
										lvl = character.lvl,
										visible = true,
									}));
								end
							end

							if #g < 1 then
								tinsert(g, app.CreateRawText(L.NO_CHARACTERS_FOUND, {
									icon = 526421,
									visible = true,
									OnClick = app.UI.OnClick.IgnoreRightClick,
									OnUpdate = app.AlwaysShowUpdate,
								}));
							else
								data.SortType = "textAndLvl";
							end
							data.g = g;
							AssignChildren(data);
							return true;
						end,
					}),

					-- Linked Accounts Section
					app.CreateRawText(L.LINKED_ACCOUNTS, {
						icon = 526421,
						description = L.LINKED_ACCOUNTS_TOOLTIP,
						visible = true,
						['g'] = {},
						OnClick = app.UI.OnClick.IgnoreRightClick,
						OnUpdate = function(data)
							data.g = {};
							local charactersByName = {};
							for guid,character in pairs(ATTCharacterData) do
								if character.name then
									charactersByName[character.name] = character;
								end
							end

							for playerName,allowed in pairs(AllTheThingsAD.LinkedAccounts) do
								local character = charactersByName[playerName];
								if character then
									tinsert(data.g, app.CreateUnit(playerName, {
										datalink = playerName,
										OnClick = OnRightButtonDeleteLinkedAccount,
										OnTooltip = OnTooltipForLinkedAccount,
										OnUpdate = app.AlwaysShowUpdate,
										visible = true,
									}));
								elseif playerName:find("#") then
									-- Garbage click handler for unsync'd account data.
									tinsert(data.g, app.CreateRawText(playerName, {
										datalink = playerName,
										icon = 526421,
										OnClick = OnRightButtonDeleteLinkedAccount,
										OnTooltip = OnTooltipForLinkedAccount,
										OnUpdate = app.AlwaysShowUpdate,
										visible = true,
									}));
								else
									-- Garbage click handler for unsync'd character data.
									tinsert(data.g, app.CreateRawText(playerName, {
										datalink = playerName,
										icon = 374212,
										OnClick = OnRightButtonDeleteLinkedAccount,
										OnTooltip = OnTooltipForLinkedAccount,
										OnUpdate = app.AlwaysShowUpdate,
										visible = true,
									}));
								end
							end

							if #data.g < 1 then
								tinsert(data.g, app.CreateRawText(L.NO_LINKED_ACCOUNTS, {
									icon = 526421,
									visible = true,
									OnClick = app.UI.OnClick.IgnoreRightClick,
									OnUpdate = app.AlwaysShowUpdate,
								}));
							end
							AssignChildren(data);
							return true;
						end,
					}),
				}
			});

			self.Reset = function()
				self:SetData(syncHeader);
				self:Update(true);
			end
			self:Reset();
		end

		-- Update the groups without forcing Debug Mode.
		if self.data.OnUpdate then self.data.OnUpdate(self.data, self); end
		self:BuildData();
		for i,g in ipairs(self.data.g) do
			if g.OnUpdate then g.OnUpdate(g, self); end
		end
		self:DefaultUpdate(true);
	end
end)