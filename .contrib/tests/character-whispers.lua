-- Standalone account whisper transport integration tests; all network calls are mocked.
-- Run from the repository root: lua .contrib/tests/character-whispers.lua [repository-root]
local root = arg[1] or ".";
local file = assert(io.open(root .. "/src/UI/Windows/Account Management.lua", "rb"));
local source = file:read("*a"):gsub("\r\n", "\n");
file:close();
local transport = assert(source:match("(local AddonMessagePrefix, MESSAGE_HANDLERS, EnableBattleNet.-)%-%- Account Wide Data handlers"));
local ack = assert(source:match("(MESSAGE_HANDLERS%.ack = function.-)\nMESSAGE_HANDLERS%.check"));
local events = assert(source:match("(handlers%.BN_CHAT_MSG_ADDON = function.-)\n\t\tlocal options ="));
local cancel = assert(source:match("(local function OnClickForSyncQueue.-)local function OnTooltipForCharacter"));
local progress = assert(source:match("(local function OnTooltipForSyncQueue.-)%-%- Implementation"));
local queueOption = assert(source:match("(app.CreateRawText%(L%.ACCOUNT_MANAGEMENT_SYNC_QUEUE,.-\n\t\t\t%}%)),"));
local program = [[
local app, C_ChatInfo, BNSendGameData, CurrentCharacter, CharacterData, LinkedCharacters, L, time = ...;
local DebugPrint = function() end;
local tinsert, tremove, tsort = table.insert, table.remove, table.sort;
local UNKNOWN = "Unknown";
local wipe = function(t) for k in pairs(t) do t[k] = nil; end end;
]] .. transport .. "\n" .. ack .. "\n" .. cancel .. "\n" .. progress .. [[
local eventHandlers = {};
do
	local handlers = eventHandlers;
]] .. events .. [[
end
local queueOption = ]] .. queueOption .. [[
return {
	send = SendAddonMessage, bnet = SendBattleNetMessage, target = GetCharacterWhisperTarget, normalize = NormalizeLinkedCharacterIdentifier,
	events = eventHandlers, handlers = MESSAGE_HANDLERS, queueOption = queueOption,
	sending = pendingSendChunksForUser, receiving = pendingReceiveChunksForUser, responses = pendingSendResponsesForUser,
}
]];
local chunk = assert((loadstring or load)(program, "@actual-account-whisper-transport"));
local logicalTarget, nativeTarget = "First Last-Remote Realm", "First Last";
local function fixture(mode)
	local h = { outgoing = {}, battleNet = {}, linked = {}, characters = {}, rebuilds = 0, now = 1000 };
	local window = {};
	function window:Rebuild() h.rebuilds = h.rebuilds + 1; end
	function window:GetParent() return self; end
	local app = { IsForever = mode == "forever", IsRetail = mode ~= "classic", print = function() end, asset = function(name) return name; end };
	function app:GetWindow() return window; end
	function app:StartATTCoroutine(_, fn)
		if not h.coroutine or coroutine.status(h.coroutine) == "dead" then h.coroutine = coroutine.create(fn); end
	end
	function app.CreateRawText(text, options) options.text = text; return options; end
	function app:ShowPopupDialog(_, callback) callback(); end
	local chat = { SendAddonMessage = function(prefix, message, channel, target)
		h.outgoing[#h.outgoing+1] = { prefix=prefix, message=message, channel=channel, target=target };
	end };
	local bnet = function(target, prefix, message) h.battleNet[#h.battleNet+1] = {target=target,prefix=prefix,message=message}; end;
	local locale = setmetatable({ ACCOUNT_MANAGEMENT_CHUNK_PROGRESS = "%d/%d", ACCOUNT_MANAGEMENT_DELETE_SYNC_QUEUE_POPUP = "%s" }, {__index=function(_, key) return key; end});
	local current = { realm="Local Realm", name="Current Player", guid="current", lastPlayed=1000 };
	h.api = chunk(app, chat, bnet, current, h.characters, h.linked, locale, function() return h.now; end);
	function h:step()
		assert(self.coroutine and coroutine.status(self.coroutine) ~= "dead", "No active sync coroutine");
		local ok, err = coroutine.resume(self.coroutine); assert(ok, err);
		if coroutine.status(self.coroutine) == "dead" then self.coroutine = nil; end
	end
	function h:finish()
		for _=1,12 do if not self.coroutine then return; end; self:step(); end
		error("Sync coroutine did not finish");
	end
	function h:chat(sender, message) self.api.events.CHAT_MSG_ADDON(window, "ATTSYNC", message, "WHISPER", sender); end
	function h:bn(sender, message) self.api.events.BN_CHAT_MSG_ADDON(window, "ATTSYNC", message, "WHISPER", sender); end
	function h:row(target)
		local data = {g={}}; self.api.queueOption.OnUpdate(data);
		for _, row in ipairs(data.g) do
			if row.datalink == target then
				function row:GetParent() return window; end
				return row;
			end
		end
		error("Missing actual queue row for " .. tostring(target));
	end
	return h;
end
local count = 0;
local function test(name, fn) fn(); count=count+1; print("PASS " .. name); end
local function pending(h, target)
	local queue = assert(h.api.sending[target], "Missing transport queue");
	local id, data = next(queue); assert(id and data); return id, data;
end
local function acknowledgeAll(h, target, sender, battleNet)
	local id, data = pending(h, target);
	for i=1,#data.chunks do
		h:step();
		if battleNet then h:bn(sender, "ack," .. id .. "," .. i); else h:chat(sender, "ack," .. id .. "," .. i); end
		assert(data.acks[i], "ACK did not match transport queue");
	end
	h:step(); h:finish(); assert(h.api.sending[target] == nil, "Acknowledged queue remained");
end

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
	local info={}; row.OnTooltip(row,info); local found=false; for _,line in ipairs(info) do if line.right=="1/3" then found=true; end end; assert(found);
	for i=2,#data.chunks do h:step(); h:chat(nativeTarget,"ack,"..id..","..i); assert(data.acks[i]); end
	h:step(); h:finish(); assert(h.api.sending[nativeTarget]==nil);
	assert(h.linked[logicalTarget] and h.linked[nativeTarget]==nil, "Transport must not rewrite logical links");
end);
test("Forever receive chunks and ACKs share the native sender key", function()
	local h=fixture("forever"); h.linked[logicalTarget]=true;
	local received;
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
		local logical=h.api.normalize(character.name,character.realm);h.linked[logical]=true;
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
