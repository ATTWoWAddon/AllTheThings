-- Account whisper transport integration tests.
-- Run from the repository root: lua tests/character-whispers.lua [repository-root]
--
-- Test architecture:
-- Account Management supplies the production transport, check/ACK/event handlers,
-- and linked-character popup, queue, progress, and cancellation callbacks loaded here.
-- Probe handlers expose reassembled payloads and queued replies to assertions.
-- Each fixture selects a client mode and independently mocks regional-name
-- capability, with fresh characters, linked senders, messages, and queues.
-- Mock chat and Battle.net APIs record calls; window rebuilds are counted and
-- popup confirmations run immediately. A fixed clock and manually resumed
-- coroutine control the production scheduler without a WoW client.
--
-- Scenarios send messages, deliver chunks/ACKs through production event
-- handlers, and inspect queue data before updating or cancelling it.
-- Assertions cover complete native names, unchanged logical links, progress,
-- first-sync accented names without cached identity, sender filtering, numeric
-- Battle.net keys, and message-size boundaries.
-- PASS means all assertions in that scenario completed in the mocked environment;
-- an assertion or error stops the run. No messages are sent over the network.

--- Client behavior selected by the isolated transport fixture.
---@alias ATTWhisperTestMode "forever"|"retail"|"classic"

--- Values discarded by the fixture's print and debug-output mocks.
---@alias ATTWhisperTestPrintedValue string|number|boolean|nil|ATTNameTestCharacter

--- Low-level message method stored with a chunk queue.
---@alias ATTWhisperTestTransportMethod fun(target: ATTAccountTransportKey, message: string)

--- Message sender that accepts an optional queue label and text or command list.
---@alias ATTWhisperTestSender fun(target: ATTAccountTransportKey, detail: string?, message: string|string[])

--- One reply produced by a dispatched incoming command.
---@class ATTWhisperTestResponse
---@field detail string # Label displayed while the reply is queued.
---@field msg string # Encoded command text to send back to the sender.

--- Incoming command callback; the empty owner is used only by rejected-event tests.
---@alias ATTWhisperTestMessageHandler fun(owner: ATTWhisperTestWindow|{}, sender: ATTAccountTransportKey, content: string[], responses: ATTWhisperTestResponse[]): boolean?

--- Captured call to the native addon whisper API.
---@class ATTWhisperTestAddonMessage
---@field prefix string # Registered addon-message prefix.
---@field message string # Encoded payload passed to the native API.
---@field channel string # Addon chat channel; accepted sends use WHISPER.
---@field target string # Native full name or Retail/Classic name-realm recipient.

--- Captured call to the native Battle.net game-data API.
---@class ATTWhisperTestBattleNetMessage
---@field target number # Numeric Battle.net game-account ID.
---@field prefix string # Registered addon-message prefix.
---@field message string # Encoded payload passed to the native API.

--- One pending outgoing payload split into numbered chunks.
---@class ATTWhisperTestSendChunks
---@field method ATTWhisperTestTransportMethod # Native whisper or Battle.net send mock.
---@field target ATTAccountTransportKey # Exact key shared by sending and ACK lookup.
---@field chunks string[] # Ordered payload fragments.
---@field detail string # Queue label, with Unknown used when no label was supplied.
---@field cooldown number # Fixture-clock time at which the next send is allowed.
---@field acks table<integer, boolean> # Acknowledged chunk indices.
---@field uid integer # Identifier assigned to this outgoing chunk sequence.

--- One incoming sequence, including slots not yet received.
---@class ATTWhisperTestReceiveChunks
---@field chunks table<integer, string> # Received fragments keyed by chunk index.
---@field count integer # Total fragment count declared by the sender.

--- Replies waiting to pass through the normal send/chunk path.
---@class ATTWhisperTestQueuedResponses
---@field method ATTWhisperTestSender # Transport-specific message sender.
---@field target ATTAccountTransportKey # Native sender or numeric Battle.net ID.
---@field responses ATTWhisperTestResponse[] # Replies ordered by payload length.
---@field index integer # Index of the next reply to process.

--- Minimal window used by production rebuild and parent-chain calls.
---@class ATTWhisperTestWindow
---@field Rebuild fun(self: ATTWhisperTestWindow) # Count a requested queue rebuild.
---@field GetParent fun(self: ATTWhisperTestWindow): ATTWhisperTestWindow # Return this mock window.

--- Raw queue item returned by the production queue builder through CreateRawText.
---@class ATTWhisperTestQueueItem: ATTSyncQueueItem
---@field parent? ATTWhisperTestQueueGroup # Parent queue group supplied by the builder.
---@field icon? number # Queue icon selected by the production builder.
---@field GetParent? fun(self: ATTWhisperTestQueueItem|ATTWhisperTestQueueRow): ATTWhisperTestWindow # Parent hook installed when the item is selected.
---@field OnClick fun(row: ATTWhisperTestQueueRow, button: string): true # Production cancellation callback.
---@field OnTooltip fun(item: ATTWhisperTestQueueItem, lines: ATTTooltipLine[]) # Production chunk-progress tooltip callback.
---@field OnUpdate fun(item: ATTWhisperTestQueueItem): true? # Production progress callback.

--- Selected queue item with the parent hook required by cancellation.
---@class ATTWhisperTestParentedQueueItem: ATTWhisperTestQueueItem
---@field GetParent fun(self: ATTWhisperTestQueueItem|ATTWhisperTestQueueRow): ATTWhisperTestWindow # Return the fixture window.

--- Click receiver carrying the raw item rather than a real WoW button.
---@class ATTWhisperTestQueueRow
---@field ref ATTWhisperTestQueueItem # Queue data selected for cancellation.
---@field GetParent fun(self: ATTWhisperTestQueueItem|ATTWhisperTestQueueRow): ATTWhisperTestWindow # Parent hook shared with the selected item.

--- Queue group populated by the extracted production OnUpdate callback.
---@class ATTWhisperTestQueueGroup
---@field g ATTWhisperTestQueueItem[] # Current send/receive queue items.
---@field visible? boolean # Whether at least one pending transport key exists.

--- Extracted Sync Queue option, including its raw-text display properties.
---@class ATTWhisperTestQueueOption: ATTWhisperTestQueueGroup
---@field text? string # Localized Sync Queue title set by CreateRawText.
---@field icon? number # Queue section icon.
---@field description? string # Localized queue description.
---@field expanded? boolean # Whether the section is expanded.
---@field OnUpdate fun(group: ATTWhisperTestQueueGroup): true # Rebuild items from pending transport keys.

--- Incoming event entry points extracted from Account Management.
---@class ATTWhisperTestEvents
---@field CHAT_MSG_ADDON fun(owner: ATTWhisperTestWindow|{}, prefix: string, message: string, channel: string, sender: string) # Dispatch a native character whisper after filtering.
---@field BN_CHAT_MSG_ADDON fun(owner: ATTWhisperTestWindow|{}, prefix: string, message: string, channel: string, sender: number) # Dispatch a numeric Battle.net sender after filtering.

--- Production transport functions and queues exposed by the generated module.
---@class ATTWhisperTestAPI
---@field send fun(target: string, detail: string?, message: string|string[]) # Send a character whisper before or through chunking.
---@field bnet fun(target: number, detail: string?, message: string|string[]) # Send to a numeric Battle.net game-account ID.
---@field target fun(identifier: ATTAccountTransportKey): ATTAccountTransportKey # Resolve regionally unique native full names.
---@field normalize fun(identifier: string|number|nil, ...: string|nil): string?, string? # Build a logical identifier and return its normalized complete name.
---@field link fun(input: string) # Add a logical link through the actual popup callback and send its initial request.
---@field events ATTWhisperTestEvents # Filtered addon-message event callbacks.
---@field handlers table<string, ATTWhisperTestMessageHandler> # Command callbacks, including the extracted check/ACK handlers and test probes.
---@field queueOption ATTWhisperTestQueueOption # Extracted queue section and its item builder.
---@field sending table<ATTAccountTransportKey, table<integer, ATTWhisperTestSendChunks>> # Outgoing sequences indexed by recipient and UID.
---@field receiving table<ATTAccountTransportKey, table<integer, ATTWhisperTestReceiveChunks>> # Incoming sequences indexed by sender and UID.
---@field responses table<ATTAccountTransportKey, table<integer, ATTWhisperTestQueuedResponses>> # Reply queues indexed by sender and UID.

--- Addon services required by the extracted transport and queue code.
---@class ATTWhisperTestApp
---@field IsForever boolean # Whether the fixture represents Forever, independently of regional-name capability.
---@field IsRetail boolean # Retail flag used by the selected fixture mode.
---@field print fun(...: ATTWhisperTestPrintedValue) # Discard addon chat output.
---@field asset fun(name: string): string # Return the requested mock asset name unchanged.
---@field GetWindow fun(self: ATTWhisperTestApp, name: string?): ATTWhisperTestWindow # Return the shared mock window.
---@field StartATTCoroutine fun(self: ATTWhisperTestApp, name: string, callback: fun()) # Start only when no live fixture coroutine exists.
---@field CreateRawText fun(text: string, options: ATTWhisperTestQueueItem|ATTWhisperTestQueueOption): ATTWhisperTestQueueItem|ATTWhisperTestQueueOption # Attach display text to the supplied options.
---@field ShowPopupDialog fun(self: ATTWhisperTestApp, prompt: string, callback: fun()) # Confirm immediately through the supplied callback.

--- Native chat API replacement that records outgoing whispers.
---@class ATTWhisperTestChatAPI
---@field SendAddonMessage fun(prefix: string, message: string, channel: string, target: string) # Append a captured native whisper call.

--- Locale strings used by the production queue callbacks; other keys echo themselves.
---@class ATTWhisperTestLocale
---@field ACCOUNT_MANAGEMENT_CHUNK_PROGRESS string # Format for received/acknowledged progress.
---@field ACCOUNT_MANAGEMENT_DELETE_SYNC_QUEUE_POPUP string # Cancellation prompt format.
---@field [string] string # Localized string or fallback key.

--- Fully initialized state and controls for one isolated transport scenario.
---@class ATTWhisperTestFixture
---@field outgoing ATTWhisperTestAddonMessage[] # Captured character whispers.
---@field battleNet ATTWhisperTestBattleNetMessage[] # Captured Battle.net game-data messages.
---@field linked table<ATTAccountTransportKey, boolean> # Explicit allowed or disabled logical links.
---@field characters table<string, ATTNameTestCharacter> # Saved records keyed by fixture label or GUID.
---@field rebuilds integer # Number of requested mock-window rebuilds.
---@field now number # Fixture clock returned to production cooldown logic.
---@field coroutine? thread # Current synchronization coroutine, cleared when it finishes.
---@field api ATTWhisperTestAPI # Loaded production transport functions and queues.
---@field step fun(self: ATTWhisperTestFixture) # Resume the active coroutine once and surface errors.
---@field finish fun(self: ATTWhisperTestFixture) # Resume at most twelve times until the coroutine finishes.
---@field chat fun(self: ATTWhisperTestFixture, sender: string, message: string) # Deliver a native whisper using the valid addon prefix/channel.
---@field bn fun(self: ATTWhisperTestFixture, sender: number, message: string) # Deliver a Battle.net event with a numeric sender.
---@field row fun(self: ATTWhisperTestFixture, target: ATTAccountTransportKey): ATTWhisperTestParentedQueueItem # Build and select the actual queue item for a transport key.

local root = arg[1] or ".";
local file = assert(io.open(root .. "/src/UI/Windows/Account Management.lua", "rb"));
local source = file:read("*a"):gsub("\r\n", "\n");
file:close();
local transport = assert(source:match("(local AddonMessagePrefix, MESSAGE_HANDLERS, EnableBattleNet.-)%-%- Account Wide Data handlers"));
local messages = assert(source:match("(MESSAGE_HANDLERS%.ack = function.-)\nMESSAGE_HANDLERS%.char ="));
local events = assert(source:match("(handlers%.BN_CHAT_MSG_ADDON = function.-)\n\t\tlocal options ="));
local cancel = assert(source:match("(local function OnClickForSyncQueue.-)local function OnTooltipForCharacter"));
local progress = assert(source:match("(local function OnTooltipForSyncQueue.-)%-%- Implementation"));
local queueOption = assert(source:match("(app.CreateRawText%(L%.ACCOUNT_MANAGEMENT_SYNC_QUEUE,.-\n\t\t\t%}%)),"));
local linkPopup = source:sub((assert(source:find("app:ShowPopupDialogWithEditBox(L.ACCOUNT_MANAGEMENT_LINK_CHARACTER_POPUP", 1, true))));
local linkCallback = assert(linkPopup:match("(function%(cmd%).-self:Rebuild%(%)%;%s*end%s*end)"));
local program = [[
---@type ATTWhisperTestApp, ATTWhisperTestChatAPI, fun(target: number, prefix: string, message: string), ATTNameTestCharacter, table<string, ATTNameTestCharacter>, table<ATTAccountTransportKey, boolean>, ATTWhisperTestLocale, fun(): number, (fun(): boolean)?
local app, C_ChatInfo, BNSendGameData, CurrentCharacter, CharacterData, LinkedCharacters, L, time, RegionalUniqueNamesEnabled = ...;
--- Discard production debug messages in the isolated module.
---@type fun(...: ATTWhisperTestPrintedValue)
local DebugPrint = function() end;
local tinsert, tremove, tsort = table.insert, table.remove, table.sort;
local UNKNOWN = "Unknown";
--- Clear every entry in a queue or collection without replacing its table.
---@generic K, V
---@param t table<K, V> Mutable collection to empty.
local wipe = function(t) for k in pairs(t) do t[k] = nil; end end;
]] .. transport .. "\n" .. messages .. "\n" .. cancel .. "\n" .. progress .. [[
---@type ATTWhisperTestEvents
local eventHandlers = {};
do
	local handlers = eventHandlers;
]] .. events .. [[
end
---@type ATTWhisperTestQueueOption
local queueOption = ]] .. queueOption .. [[
---@type ATTWhisperTestWindow
local self = app:GetWindow("Account Management");
--- Store the popup's normalized logical link and initiate its production link request.
---@type fun(input: string)
local link = ]] .. linkCallback .. "\n" .. [[
return {
	send = SendAddonMessage, bnet = SendBattleNetMessage, target = GetCharacterWhisperTarget, normalize = NormalizeLinkedCharacterIdentifier, link = link,
	events = eventHandlers, handlers = MESSAGE_HANDLERS, queueOption = queueOption,
	sending = pendingSendChunksForUser, receiving = pendingReceiveChunksForUser, responses = pendingSendResponsesForUser,
}
]];
--- Load extracted production code with the fixture's services and identity tables.
---@type fun(app: ATTWhisperTestApp, chat: ATTWhisperTestChatAPI, bnet: fun(target: number, prefix: string, message: string), current: ATTNameTestCharacter, characters: table<string, ATTNameTestCharacter>, linked: table<ATTAccountTransportKey, boolean>, locale: ATTWhisperTestLocale, clock: fun(): number, regionalNames: (fun(): boolean)?): ATTWhisperTestAPI
local chunk = assert((loadstring or load)(program, "@actual-account-whisper-transport"));
local logicalTarget, nativeTarget = "First Last-Remote Realm", "First Last";
--- Create independent transport state, API mocks, and coroutine controls for one client mode.
---@param mode ATTWhisperTestMode # Flavor behavior to exercise.
---@param regionalNames? boolean # Capability result; nil enables it only for the default Forever fixture.
---@param regionalAPIAvailable? boolean # Whether the feature API exists; nil defaults to true.
---@return ATTWhisperTestFixture fixture # Initialized production transport and captured effects.
local function fixture(mode, regionalNames, regionalAPIAvailable)
	local h = { outgoing = {}, battleNet = {}, linked = {}, characters = {}, rebuilds = 0, now = 1000 };
	local window = {};
	--- Count rebuilds requested by the production queue code.
	---@param self ATTWhisperTestWindow # Fixture window receiving the rebuild request.
	function window:Rebuild() h.rebuilds = h.rebuilds + 1; end
	--- Keep parent traversal on the shared window without constructing real frames.
	---@param self ATTWhisperTestWindow # Fixture window receiving the parent query.
	---@return ATTWhisperTestWindow parent # This same window.
	function window:GetParent() return self; end
	---@cast window ATTWhisperTestWindow
	local app = { IsForever = mode == "forever", IsRetail = mode ~= "classic", print = function() end, asset = function(name) return name; end };
	--- Return the shared window for all named-window requests.
	---@param self ATTWhisperTestApp # Fixture addon services.
	---@return ATTWhisperTestWindow window # Fixture queue window.
	function app:GetWindow() return window; end
	--- Create a coroutine only when the previous synchronization has finished.
	---@param self ATTWhisperTestApp # Fixture addon services.
	---@param _ string # Coroutine name, ignored by this single-coroutine fixture.
	---@param fn fun() # Production coroutine body.
	function app:StartATTCoroutine(_, fn)
		if not h.coroutine or coroutine.status(h.coroutine) == "dead" then h.coroutine = coroutine.create(fn); end
	end
	--- Attach UI text while preserving the production builder's original options object.
	---@param text string # Raw item or section label.
	---@param options ATTWhisperTestQueueItem|ATTWhisperTestQueueOption # Mutable options returned by the production queue builder.
	---@return ATTWhisperTestQueueItem|ATTWhisperTestQueueOption item # The same options object with its display text set.
	function app.CreateRawText(text, options) options.text = text; return options; end
	--- Confirm the cancellation popup immediately so its actual callback can be exercised.
	---@param self ATTWhisperTestApp # Fixture addon services.
	---@param _ string # Popup prompt, ignored by the mock.
	---@param callback fun() # Confirmation action to execute.
	function app:ShowPopupDialog(_, callback) callback(); end
	---@cast app ATTWhisperTestApp
	---@type ATTWhisperTestChatAPI
	local chat = { SendAddonMessage = function(prefix, message, channel, target)
		h.outgoing[#h.outgoing+1] = { prefix=prefix, message=message, channel=channel, target=target };
	end };
	--- Record native Battle.net calls without contacting a game account.
	---@param target number # Numeric game-account ID.
	---@param prefix string # Registered addon-message prefix.
	---@param message string # Encoded payload to capture.
	local bnet = function(target, prefix, message) h.battleNet[#h.battleNet+1] = {target=target,prefix=prefix,message=message}; end;
	---@type ATTWhisperTestLocale
	local locale = setmetatable({ ACCOUNT_MANAGEMENT_CHUNK_PROGRESS = "%d/%d", ACCOUNT_MANAGEMENT_DELETE_SYNC_QUEUE_POPUP = "%s" }, {__index=
		--- Echo untranslated keys so queue labels remain available without the locale database.
		---@param _ ATTWhisperTestLocale # Locale table, ignored for fallback entries.
		---@param key string # Missing locale key.
		---@return string label # The key itself.
		function(_, key) return key; end});
	---@type ATTNameTestCharacter
	local current = { realm="Local Realm", name="Current Player", guid="current", lastPlayed=1000 };
	---@type (fun(): boolean)?
	local regionalAPI;
	if regionalAPIAvailable ~= false then
		--- Report regional-name capability independently of the client flavor flags.
		---@return boolean enabled # Whether this fixture uses regionally unique native names.
		regionalAPI = function() return regionalNames == nil and mode == "forever" or regionalNames == true; end;
	end
	h.api = chunk(app, chat, bnet, current, h.characters, h.linked, locale,
		--- Read the fixture clock without advancing it during production cooldown checks.
		---@return number now # Current simulated time.
		function() return h.now; end, regionalAPI);
	--- Resume one synchronization step and clear the handle when the coroutine ends.
	---@param self ATTWhisperTestFixture # Fixture with an active synchronization coroutine.
	function h:step()
		assert(self.coroutine and coroutine.status(self.coroutine) ~= "dead", "No active sync coroutine");
		local ok, err = coroutine.resume(self.coroutine); assert(ok, err);
		if coroutine.status(self.coroutine) == "dead" then self.coroutine = nil; end
	end
	--- Drain a bounded number of synchronization steps, failing if work remains.
	---@param self ATTWhisperTestFixture # Fixture whose coroutine should finish.
	function h:finish()
		for _=1,12 do if not self.coroutine then return; end; self:step(); end
		error("Sync coroutine did not finish");
	end
	--- Deliver a correctly prefixed native whisper through the production event handler.
	---@param self ATTWhisperTestFixture # Fixture whose handler receives the message.
	---@param sender string # Native complete character name or Retail/Classic name-realm sender.
	---@param message string # Encoded incoming command or chunk.
	function h:chat(sender, message) self.api.events.CHAT_MSG_ADDON(window, "ATTSYNC", message, "WHISPER", sender); end
	--- Deliver a correctly prefixed Battle.net message through the production event handler.
	---@param self ATTWhisperTestFixture # Fixture whose handler receives the message.
	---@param sender number # Numeric Battle.net game-account ID.
	---@param message string # Encoded incoming command or chunk.
	function h:bn(sender, message) self.api.events.BN_CHAT_MSG_ADDON(window, "ATTSYNC", message, "WHISPER", sender); end
	--- Build real production queue data and select the item matching the exact transport key.
	---@param self ATTWhisperTestFixture # Fixture containing pending send/receive queues.
	---@param target ATTAccountTransportKey # Native sender name or numeric game-account ID to select.
	---@return ATTWhisperTestParentedQueueItem row # Selected item with a mock parent hook.
	function h:row(target)
		---@type ATTWhisperTestQueueGroup
		local data = {g={}}; self.api.queueOption.OnUpdate(data);
		for _, row in ipairs(data.g) do
			if row.datalink == target then
				--- Supply the parent chain used by the production cancellation callback.
				---@param self ATTWhisperTestQueueItem|ATTWhisperTestQueueRow # Item or click receiver sharing this hook.
				---@return ATTWhisperTestWindow parent # Fixture window.
				function row:GetParent() return window; end
				---@cast row ATTWhisperTestParentedQueueItem
				return row;
			end
		end
		error("Missing actual queue row for " .. tostring(target));
	end
	---@cast h ATTWhisperTestFixture
	return h;
end
local count = 0;
--- Run one scenario and count it only after all assertions succeed.
---@param name string # Scenario label printed on success.
---@param fn fun() # Isolated scenario body.
local function test(name, fn) fn(); count=count+1; print("PASS " .. name); end
--- Return the first outgoing sequence for a transport key, failing if none exists.
---@param h ATTWhisperTestFixture # Fixture containing the outgoing queue.
---@param target ATTAccountTransportKey # Exact queue key to inspect.
---@return integer id # Sequence UID returned by the queue.
---@return ATTWhisperTestSendChunks data # Pending chunk sequence.
local function pending(h, target)
	local queue = assert(h.api.sending[target], "Missing transport queue");
	local id, data = next(queue); assert(id and data); return id, data;
end
--- Send every pending chunk and acknowledge it through the selected production event path.
--- Character transports use string keys; Battle.net transports use numeric keys.
---@overload fun(h: ATTWhisperTestFixture, target: string, sender: string, battleNet: false)
---@overload fun(h: ATTWhisperTestFixture, target: number, sender: number, battleNet: true)
---@param h ATTWhisperTestFixture # Fixture whose pending sequence will be completed.
---@param target ATTAccountTransportKey # Queue key matching the selected transport.
---@param sender ATTAccountTransportKey # Incoming ACK sender matching the selected transport.
---@param battleNet boolean # True for numeric Battle.net events, false for character whispers.
local function acknowledgeAll(h, target, sender, battleNet)
	local id, data = pending(h, target);
	for i=1,#data.chunks do
		h:step();
		if battleNet then
			---@cast sender number
			h:bn(sender, "ack," .. id .. "," .. i);
		else
			---@cast sender string
			h:chat(sender, "ack," .. id .. "," .. i);
		end
		assert(data.acks[i], "ACK did not match transport queue");
	end
	h:step(); h:finish(); assert(h.api.sending[target] == nil, "Acknowledged queue remained");
end

test("Regional names work independently of the Forever flag", function()
	local h=fixture("retail",true); h.linked[logicalTarget]=true;
	h.api.send(logicalTarget,"big",string.rep("x",600));
	local id,data=pending(h,nativeTarget);
	assert(h.api.sending[logicalTarget]==nil and h.api.target(logicalTarget)==nativeTarget);
	h:step(); assert(h.outgoing[1].target==nativeTarget);
	h:chat("Other Surname","ack,"..id..",1"); assert(data.acks[1]==nil);
	h:chat(nativeTarget,"ack,"..id..",1"); assert(data.acks[1],"Regional native sender must match the allowed logical link");
end);
for _,apiAvailable in ipairs({true,false}) do
	test(apiAvailable and "Disabled regional names preserve realm-qualified transport" or "Missing regional API preserves realm-qualified transport", function()
		local h=fixture("forever",false,apiAvailable); h.linked[logicalTarget]=true;
		h.api.send(logicalTarget,"big",string.rep("x",600));
		local id,data=pending(h,logicalTarget);
		assert(h.api.sending[nativeTarget]==nil and h.api.target(logicalTarget)==logicalTarget);
		h:step(); assert(h.outgoing[1].target==logicalTarget);
		h:chat(nativeTarget,"ack,"..id..",1"); assert(data.acks[1]==nil);
		h:chat(logicalTarget,"ack,"..id..",1"); assert(data.acks[1],"Original realm-qualified sender must remain authorized");
	end);
end

test("First sync preserves an uncached accented native sender", function()
	local h=fixture("retail",true);
	local native="Émily Star";
	local logical=assert(h.api.normalize(native));
	h.linked[logical]=true;
	-- Enough unrelated saved GUIDs make the actual check handler generate multiple chunks.
	-- None has the sender's name cached, so transport must preserve the incoming spelling.
	for i=1,20 do h.characters["Player-0001-000000"..i]={lastPlayed=1000}; end
	h:chat("Other Surname","check,Player-0001-99999999,1");
	assert(next(h.api.responses)==nil,"An unlinked check sender must not receive a reply");
	h:chat(native,"check,Player-0001-99999999,1");
	assert(h.api.responses[native],"The normalized logical link must authorize the native sender");
	h:step(); h:step();
	local _,data=pending(h,native);
	assert(data.target==native and #data.chunks>1,"The real check reply must queue multiple chunks under the native spelling");
	assert(data.chunks[1]:sub(1,6)=="chars,","The actual check handler must generate the character-list reply");
	assert(h.api.sending[logical]==nil,"Logical identity must not become the transport queue key");
	acknowledgeAll(h,native,native,false);
	for _,message in ipairs(h.outgoing) do assert(message.target==native,"The reply target must preserve the original accented name"); end
	assert(next(h.api.responses)==nil,"The first-sync response queue must finish");
	assert(h.linked[logical] and h.linked[native]==nil and next(h.linked)==logical,"First sync must preserve the original logical link key");
end);
test("An explicit remote link authorizes an uncached accented native sender", function()
	local h=fixture("retail",true);
	local native="Émily Star";
	local target=native.."-Remote Realm";
	local logical=assert(h.api.normalize(target));
	h.api.link(target);
	assert(logical=="ÉMily Star-RemoteRealm" and h.linked[logical] and next(h.linked)==logical,"The actual popup must store the explicit remote logical key");
	assert(next(h.characters)==nil,"No saved native spelling may assist this authorization");
	local initialRequests=#h.outgoing;
	-- Generate a real multi-chunk check response without caching this sender's identity.
	for i=1,20 do h.characters["Player-0001-000000"..i]={lastPlayed=1000}; end
	h.linked[logical]=false;
	h:chat(native,"check,Player-0001-99999999,1");
	assert(next(h.api.responses)==nil,"A disabled remote link must not authorize its native sender");
	h.linked[logical]=true;
	h:chat("Other Surname","check,Player-0001-99999999,1");
	assert(next(h.api.responses)==nil,"An unrelated native sender must not match the remote link");
	h:chat(native,"check,Player-0001-99999999,1");
	assert(h.api.responses[native],"The explicit remote logical link must authorize the original accented native sender");
	h:step(); h:step();
	local id,data=pending(h,native);
	assert(data.target==native and #data.chunks>1 and data.chunks[1]:sub(1,6)=="chars,");
	assert(h.api.sending[target]==nil and h.api.sending[logical]==nil);
	h.linked[logical]=false;
	h:chat(native,"ack,"..id..",1");
	assert(data.acks[1]==nil,"A disabled remote link must not authorize an ACK");
	h.linked[logical]=true;
	h:chat("Other Surname","ack,"..id..",1");
	assert(data.acks[1]==nil,"An unrelated sender must not acknowledge the native queue");
	acknowledgeAll(h,native,native,false);
	for i=initialRequests+1,#h.outgoing do assert(h.outgoing[i].target==native,"Replies must retain the original native sender spelling"); end
	assert(next(h.api.responses)==nil,"The remote first-sync response queue must finish");
	assert(h.linked[logical] and h.linked[native]==nil and next(h.linked)==logical,"Native transport must not rewrite the explicit remote link");
end);

test("Forever immediate sends use native full names", function()
	local h=fixture("forever");
	for _, target in ipairs({logicalTarget, nativeTarget, "First Last-RemoteRealm"}) do
		h.api.send(target, "test", "small");
		local message=h.outgoing[#h.outgoing]; assert(message.target == nativeTarget and message.channel == "WHISPER" and message.message == "small");
	end
	assert(next(h.api.sending) == nil);
end);
test("Forever linked logical realm remains distinct from native transport", function()
	local h=fixture("forever"); h.linked[logicalTarget]=true;
	h.api.send(logicalTarget, "big", string.rep("x",600));
	assert(h.api.sending[nativeTarget] and h.api.sending[logicalTarget] == nil);
	local id,data=pending(h,nativeTarget); assert(#data.chunks==3);
	h:step(); assert(h.outgoing[1].target==nativeTarget);
	h:chat("Other Surname", "ack,"..id..",1"); assert(data.acks[1]==nil);
	h:chat(nativeTarget, "ack,"..id..",1"); assert(data.acks[1]);
	local row=h:row(nativeTarget); row.OnUpdate(row); assert(row.progress==1 and row.total==3 and row.datalink==nativeTarget);
	---@type ATTTooltipLine[]
	local info={}; row.OnTooltip(row,info); local found=false; for _,line in ipairs(info) do if line.right=="1/3" then found=true; end end; assert(found);
	for i=2,#data.chunks do h:step(); h:chat(nativeTarget,"ack,"..id..","..i); assert(data.acks[i]); end
	h:step(); h:finish(); assert(h.api.sending[nativeTarget]==nil);
	assert(h.linked[logicalTarget] and h.linked[nativeTarget]==nil, "Transport must not rewrite logical links");
end);
test("Forever receive chunks and ACKs share the native sender key", function()
	local h=fixture("forever"); h.linked[logicalTarget]=true;
	local received;
	-- Capture the sender and reassembled payload dispatched by the production handler.
	h.api.handlers.probe=function(_,sender,content) received={sender,content[2]}; end;
	h:chat(nativeTarget, "chunk`99`1`2`probe,hel");
	assert(h.api.receiving[nativeTarget][99].chunks[1]=="probe,hel");
	assert(h.outgoing[1].target==nativeTarget and h.outgoing[1].message=="ack,99,1");
	local row=h:row(nativeTarget); row.OnUpdate(row); assert(row.progress==1 and row.total==2);
	h:chat(nativeTarget, "chunk`99`2`2`lo");
	assert(received[1]==nativeTarget and received[2]=="hello"); assert(h.api.receiving[nativeTarget]==nil);
	assert(h.outgoing[2].target==nativeTarget and h.outgoing[2].message=="ack,99,2");
end);
test("Forever queued responses keep transport keys through chunking", function()
	local h=fixture("forever"); h.linked[logicalTarget]=true;
	-- Queue a large reply through the production response scheduler and sender.
	h.api.handlers.probe=function(_,sender,content,responses) table.insert(responses,{detail="reply",msg=string.rep("r",600)}); end;
	h:chat(nativeTarget, "probe,hello"); assert(h.api.responses[nativeTarget]);
	h:step(); h:step(); assert(h.api.sending[nativeTarget] and h.api.responses[nativeTarget][1]==nil);
	acknowledgeAll(h,nativeTarget,nativeTarget,false);
	for _,message in ipairs(h.outgoing) do assert(message.target==nativeTarget); end
end);
test("Forever actual queue UI cancels by transport key", function()
	local h=fixture("forever"); h.linked[logicalTarget]=true;
	h.api.send(logicalTarget,"cancel",string.rep("x",600));
	h:chat(nativeTarget,"chunk`99`1`2`probe,hel");
	local row=h:row(nativeTarget); row.OnUpdate(row); assert(row.progress==1 and row.total==5);
	assert(row.OnClick({ref=row,GetParent=row.GetParent},"RightButton"));
	assert(h.api.sending[nativeTarget]==nil and h.api.receiving[nativeTarget]==nil); assert(h.linked[logicalTarget]);
	h:finish();
end);
for _,name in ipairs({"Solo", "Dash-Name", "Milo River-Song"}) do
	test("Known Forever complete name " .. name .. " is preserved throughout transport", function()
		local h=fixture("forever");
		local character={name=name,realm="Remote Realm",Identifier="unchanged",Spells={[123]=true}};
		h.characters.known=character;
		local logical=h.api.normalize(character.name,character.realm);
		---@cast logical string
		h.linked[logical]=true;
		for _,target in ipairs({logical,name,name.."-"..character.realm}) do
			h.api.send(target,"direct","small");assert(h.outgoing[#h.outgoing].target==name,"Known native complete name was reinterpreted");
		end
		h.api.send(logical,"chunks",string.rep("x",600));local id,data=pending(h,name);assert(h.api.sending[logical]==nil);
		h:step();assert(h.outgoing[#h.outgoing].target==name);
		h:chat(name,"ack,"..id..",1");assert(data.acks[1],"Known native sender was not authorized or ACK key mismatched");
		h:chat(name,"chunk`99`1`2`probe,hel");assert(h.api.receiving[name][99].chunks[1]=="probe,hel");
		assert(h.outgoing[#h.outgoing].target==name and h.outgoing[#h.outgoing].message=="ack,99,1");
		local row=h:row(name);row.OnUpdate(row);assert(row.progress==2 and row.total==5 and row.datalink==name);
		row.OnClick({ref=row,GetParent=row.GetParent},"RightButton");assert(h.api.sending[name]==nil and h.api.receiving[name]==nil);h:finish();
		assert(h.linked[logical] and h.linked[name]==nil,"Known native transport must preserve the logical link key");
		assert(character.name==name and character.realm=="Remote Realm" and character.Identifier=="unchanged" and character.Spells[123],"Transport lookup must not mutate saved identity or collection data");
	end);
end
test("Known hyphenated native names do not authorize a different suffix", function()
	local h=fixture("retail",true);
	local native="Milo River-Song";
	h.characters.known={name=native,realm="Remote Realm"};
	local logical=assert(h.api.normalize(native,"Remote Realm"));
	h.linked[logical]=true;
	h.api.send(logical,"chunks",string.rep("x",600));
	local id,data=pending(h,native);
	h:chat("Milo River-Stone","ack,"..id..",1");
	assert(data.acks[1]==nil,"Authorization must compare the entire native name, including its hyphenated suffix");
	h:chat("Milo River-Stone","check,Player-0001-99999999,1");
	assert(next(h.api.responses)==nil,"A different hyphenated native name must not receive a check reply");
	acknowledgeAll(h,native,native,false);
end);
test("Disabled logical links do not authorize ACKs", function()
	local h=fixture("forever"); h.linked[logicalTarget]=false;
	h.api.send(logicalTarget,"big",string.rep("x",600));local id,data=pending(h,nativeTarget);
	h:chat(nativeTarget,"ack,"..id..",1");assert(data.acks[1]==nil);
end);
test("Addon channel and prefix filters remain active", function()
	local h=fixture("forever");h.linked[logicalTarget]=true;h.api.send(logicalTarget,"big",string.rep("x",600));local id,data=pending(h,nativeTarget);
	h.api.events.CHAT_MSG_ADDON({},"OTHER","ack,"..id..",1","WHISPER",nativeTarget);
	h.api.events.CHAT_MSG_ADDON({},"ATTSYNC","ack,"..id..",1","PARTY",nativeTarget);
	assert(data.acks[1]==nil);
end);
test("255-byte messages send directly; larger messages queue", function()
	local h=fixture("forever"); h.api.send(logicalTarget,"direct",string.rep("d",255)); assert(#h.outgoing==1 and next(h.api.sending)==nil);
	h.api.send(logicalTarget,"queued",string.rep("q",256));local _,data=pending(h,nativeTarget);assert(#data.chunks==2);
end);
for _,mode in ipairs({"retail","classic"}) do
	test(mode .. " target and sender realm syntax is unchanged", function()
		local h=fixture(mode);local target="Alice-Remote Realm";h.linked[target]=true;
		h.api.send(target,"direct","small");assert(h.outgoing[1].target==target);
		h.api.send(target,"big",string.rep("x",600));assert(h.api.sending[target]);
		acknowledgeAll(h,target,target,false);
		for _,message in ipairs(h.outgoing) do assert(message.target==target); end
	end);
end
test("Forever Battle.net IDs and ACKs stay numeric", function()
	local h=fixture("forever");h.linked[88]=true;
	h.api.bnet(88,"direct",string.rep("d",4050));assert(h.battleNet[1].target==88 and next(h.api.sending)==nil);
	h.api.bnet(88,"big",string.rep("b",4051));local id,data=pending(h,88);assert(#data.chunks==2 and h.api.sending["88"]==nil);
	local row=h:row(88);assert(row.text=="88" and row.datalink==88);row.OnUpdate(row);assert(row.progress==0 and row.total==2);
	h:step();h:bn(88,"ack,"..id..",1");assert(data.acks[1]);row.OnUpdate(row);assert(row.progress==1 and row.total==2);
	h:step();h:bn(88,"ack,"..id..",2");assert(data.acks[2]);h:step();h:finish();assert(h.api.sending[88]==nil);
	assert(#h.outgoing==0);for _,message in ipairs(h.battleNet) do assert(type(message.target)=="number" and message.target==88);end
end);
test("Battle.net queue cancellation preserves numeric target keys", function()
	local h=fixture("forever");h.linked[88]=true;h.api.bnet(88,"big",string.rep("b",4051));
	local row=h:row(88);row.OnClick({ref=row,GetParent=row.GetParent},"RightButton");assert(h.api.sending[88]==nil and h.linked[88]);h:finish();
end);
print("PASS character whispers: " .. count .. " integration scenarios");
