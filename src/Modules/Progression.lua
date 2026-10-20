-- Flavor-specific release visibility. The selected baseline is not an observation of server progression.
local _, app = ...;
local api = {};
app.Modules = app.Modules or {};
app.Modules.Progression = api;
local sources = setmetatable({}, { __mode = "k" });
local sourceIDs = setmetatable({}, { __mode = "k" });
local nextID, updateRevision = 0, 0;

function api.GetProfile()
	local profile = app.ProgressionProfile;
	if type(profile) == "table" and type(profile.id) == "string" and type(profile.phases) == "table"
		and type(profile.baseline) == "string" and profile.baseline:sub(1, #profile.id + 1) == profile.id .. ":" then
		local baseline = profile.phases[profile.baseline];
		if type(baseline) == "table" and baseline.status ~= "unknown" and type(baseline.order) == "number"
			and baseline.order % 1 == 0 then return profile; end
	end
end
function api.GetPhase(key)
	local profile = api.GetProfile();
	if profile and type(key) == "string" and key:sub(1, #profile.id + 1) == profile.id .. ":" then
		local phase = profile.phases[key];
		if type(phase) == "table" then return phase; end
	end
end
local legacyKeys = setmetatable({}, { __mode = "k" });
function api.GetLegacyKey(u)
	local profile = api.GetProfile();
	if not profile then return; end
	local keys = legacyKeys[profile];
	if not keys then
		keys = {};
		for key,phase in pairs(profile.phases) do
			if phase.legacyU then keys[phase.legacyU] = key; end
		end
		legacyKeys[profile] = keys;
	end
	return keys[u];
end
function api.GetDefault(key)
	local phase = api.GetPhase(key);
	local profile = api.GetProfile();
	local baseline = profile and api.GetPhase(profile.baseline);
	return phase ~= nil and phase.status ~= "unknown" and type(phase.order) == "number"
		and baseline ~= nil and type(baseline.order) == "number" and phase.order <= baseline.order;
end
function api.Localize(text)
	if type(text) ~= "table" then return text; end
	local locale = GetLocale();
	local key = locale == "zhTW" and "tw" or locale == "zhCN" and "cn" or locale == "esMX" and "mx" or locale:sub(1, 2);
	return text[key] or (key == "mx" and text.es) or text.en;
end
function api.GetName(key)
	local phase = api.GetPhase(key);
	return phase and api.Localize(phase.name) or key;
end
function api.RequirementsPass(requirements)
	if requirements == nil then return true; end
	if type(requirements) ~= "table" then return false; end
	for key in pairs(requirements) do
		if type(key) ~= "number" or key % 1 ~= 0 or key < 1 or key > #requirements then return false; end
	end
	for i=1,#requirements do
		local key = requirements[i];
		if not api.GetPhase(key) or not app.Settings:GetReleasePhaseFilter(key) then return false; end
	end
	return true;
end
local flattened = setmetatable({}, { __mode = "k" });
local initialParents = setmetatable({}, { __mode = "k" });
local function ID(source)
	local id = sourceIDs[source];
	if not id then nextID = nextID + 1; id = nextID; sourceIDs[source] = id; end
	return id;
end
local function HasRequirements(source)
	local seen = {};
	while source and not seen[source] do
		seen[source] = true;
		if source.releasePhases ~= nil then return true; end
		source = source.sourceParent or source.parent;
	end
	return false;
end
local function SaveCondition(route, index, source)
	local fallback = route.fallback;
	local condition = fallback[index];
	if not condition then condition = {}; fallback[index] = condition; end
	condition.u, condition.e = source.u, source.e;
	local requirements = source.releasePhases;
	if requirements ~= nil then fallback.controlled = true; end
	if type(requirements) == "table" then
		local previous, changed = condition.releasePhases, false;
		if type(previous) ~= "table" then changed = true;
		else
			for k,v in pairs(requirements) do if previous[k] ~= v then changed = true; break; end end
			if not changed then
				for k in pairs(previous) do if requirements[k] == nil then changed = true; break; end end
			end
		end
		if changed then
			local copy = {};
			for k,v in pairs(requirements) do copy[k] = v; end
			condition.releasePhases = copy;
		end
	else condition.releasePhases = requirements; end
end
local function CaptureFallback(route, source)
	local seen, index = {}, 0;
	while source and not seen[source] do
		seen[source] = true;
		if index == 0 or source.u ~= nil or source.e ~= nil or source.releasePhases ~= nil then
			index = index + 1; SaveCondition(route, index, source);
		end
		source = source.sourceParent or source.parent;
	end
	for i=#route.fallback,index + 1,-1 do route.fallback[i] = nil; end
end
local function Snapshot(source)
	local id = ID(source);
	local route = { id = id, key = tostring(id), live = setmetatable({ source }, { __mode = "v" }), contexts = {},
		fallback = {}, hasCallback = type(source.OnUpdate) == "function" };
	CaptureFallback(route, source);
	return route;
end
local function CopyRoute(route)
	local copy = {};
	for k,v in pairs(route) do copy[k] = v; end
	return copy;
end
local function Controlled(route)
	local live = route.live[1];
	local view = route.view and route.view[1];
	if (live and not flattened[live] and HasRequirements(live)) or route.fallback.controlled
		or (view and not flattened[view] and HasRequirements(view)) then return true; end
	for _,context in ipairs(route.contexts) do if Controlled(context) then return true; end end
	return false;
end
local function Entry(routes, owner, previous)
	local entry = { routes = routes, index = {}, owner = setmetatable({ owner }, { __mode = "v" }) };
	for i,route in ipairs(routes) do entry.index[route.key] = i; end
	if previous then
		entry.callbackOrigins = previous.callbackOrigins;
	elseif #routes == 1 and routes[1].hasCallback then
		entry.callbackOrigins = { [routes[1].id] = true };
	end
	return entry;
end
local function GetSources(source)
	local entry = sources[source];
	if not entry then
		entry = Entry({ Snapshot(source) }, source);
		sources[source] = entry;
	elseif not flattened[source] then
		local parent = source.sourceParent or source.parent;
		-- A copied occurrence can gain acquisition ancestry after its first clone. Capture that
		-- context before flattening it; original acquisition sources themselves are read live.
		if parent and initialParents[source] ~= ID(parent) then
			local routes, changed = {}, false;
			for _,route in ipairs(entry.routes) do
				if route.live[1] ~= source then
					local contexts, found = {}, false;
					for _,context in ipairs(route.contexts) do
						contexts[#contexts + 1] = context;
						found = found or context.id == ID(parent);
					end
					if not found then
						contexts[#contexts + 1] = Snapshot(parent);
						table.sort(contexts, function(a,b) return a.id < b.id; end);
						local copy = CopyRoute(route); copy.contexts = contexts;
						copy.key = tostring(copy.id);
						for _,context in ipairs(contexts) do copy.key = copy.key .. "/" .. context.id; end
						route = copy; changed = true;
					end
				end
				routes[#routes + 1] = route;
			end
			if changed then entry = Entry(routes, source, entry); sources[source] = entry; end
		end
	end
	return entry;
end
local function IsControlled(entry)
	if entry.controlled then return true; end
	for _,route in ipairs(entry.routes) do
		if Controlled(route) then entry.controlled = true; return true; end
	end
	return false;
end
local function ObserveView(route)
	local view = route.view and route.view[1];
	local values = route.viewValues;
	if values and view and not flattened[view] then
		values.hasU, values.hasE = view.u ~= route.initialU, view.e ~= route.initialE;
		values.u, values.e = view.u, view.e;
	end
	return view, values;
end
local function BindView(entry, target, source)
	if #entry.routes ~= 1 then entry.shared = true; return entry; end
	local route = CopyRoute(entry.routes[1]);
	local _, observed = ObserveView(route);
	if observed and (observed.hasU or observed.hasE) then
		local previous = route.availability;
		local values = { hasU = previous and previous.hasU, hasE = previous and previous.hasE,
			u = previous and previous.u, e = previous and previous.e };
		-- Rebinding retains the prior occurrence's local deltas, including explicit nil.
		-- Untouched fields still follow the original source, while newer local writes win.
		if observed.hasU and not route.skipViewU then values.hasU, values.u = true, observed.u; end
		if observed.hasE and not route.skipViewE then values.hasE, values.e = true, observed.e; end
		route.availability = values;
	end
	route.view = setmetatable({ target }, { __mode = "v" });
	route.viewValues = {};
	route.skipViewU, route.skipViewE = nil, nil;
	route.initialU, route.initialE = source.u, source.e;
	return Entry({ route }, target, entry);
end
-- Record complete acquisition alternatives before legacy u/event merging can flatten their pairing.
-- Only opted-in profiles allocate provenance. Live source/context references are weak; primitive
-- snapshots retain the last observed conditions if an original disappears, and refresh before it is flattened.
function api.MergeSources(target, source)
	if not api.GetProfile() or target == source then return; end
	local hadTarget = sources[target] ~= nil or next(target) ~= nil;
	local previous = hadTarget and GetSources(target);
	if previous and not flattened[target] then
		-- Existing copies share this fallback cell. Refresh an original's current conditions
		-- before its display fields are flattened together with another acquisition route.
		for _,route in ipairs(previous.routes) do
			if route.live[1] == target then CaptureFallback(route, target); end
			if route.view and route.view[1] == target then ObserveView(route); end
		end
	end
	local incoming = GetSources(source);
	if not previous then
		sources[target] = BindView(incoming, target, source);
		local parent = source.sourceParent or source.parent;
		initialParents[target] = parent and ID(parent);
	else
		local result = previous;
		-- Copy on write: repeated merges append only new routes, while cloned views share
		-- immutable entries until a view actually adds a distinct acquisition alternative.
		if previous.shared or previous.owner[1] ~= target then
			local copy = {};
			for i,route in ipairs(previous.routes) do copy[i] = route; end
			result = Entry(copy, target, previous);
		end
		for _,route in ipairs(incoming.routes) do
			local index = result.index[route.key];
			if not index then
				result.routes[#result.routes + 1] = route;
				result.index[route.key] = #result.routes;
			elseif (route.revision or 0) > (result.routes[index].revision or 0) then
				result.routes[index] = route;
			end
		end
		sources[target] = result;
	end
	flattened[target] = hadTarget;
end
function api.CloneSources(source, target)
	if api.GetProfile() then
		local entry = GetSources(source);
		sources[target] = BindView(entry, target, source);
		local parent = source.sourceParent or source.parent;
		initialParents[target] = parent and ID(parent);
	end
end
function api.HasControlledSources(group)
	local entry = api.GetProfile() and sources[group];
	return entry and IsControlled(entry);
end
function api.GetMergedSourceCount(group)
	local entry = sources[group];
	return entry and #entry.routes or 0;
end
-- Adapt source callbacks which change availability on a merged display. Only the named
-- field changes for the retained callback's acquisition origin; other route fields stay paired.
-- Legacy callbacks changing merged u/e must call this helper rather than assign those fields.
function api.SetSourceAvailability(group, field, value)
	if field ~= "u" and field ~= "e" then return; end
	group[field] = value;
	local entry = sources[group];
	if not api.GetProfile() or not entry or not entry.callbackOrigins then return; end
	local routes, changed = {}, false;
	updateRevision = updateRevision + 1;
	for i,route in ipairs(entry.routes) do
		if entry.callbackOrigins[route.id] then
			local previous = route.availability;
			route = CopyRoute(route);
			if route.live[1] == group and not flattened[group] then
				-- Existing copies read original sources live; do not freeze an original's updates.
				route.availability = nil;
			else
				local values = { hasU = previous and previous.hasU, hasE = previous and previous.hasE,
					u = previous and previous.u, e = previous and previous.e };
				if field == "u" then values.hasU = true; else values.hasE = true; end
				values[field] = value;
				route.availability = values;
			end
			-- An explicit write supersedes this route's older cached view delta. Keep the
			-- other field and other copies independent; a newly bound view can change it again.
			if field == "u" then route.skipViewU = true; else route.skipViewE = true; end
			if route.view and route.view[1] == group and not flattened[group] then
				if field == "u" then route.initialU, route.skipViewU = value, nil;
				else route.initialE, route.skipViewE = value, nil; end
				route.viewValues = { hasU = group.u ~= route.initialU, hasE = group.e ~= route.initialE,
					u = group.u, e = group.e };
			end
			route.revision = updateRevision;
			changed = true;
		end
		routes[i] = route;
	end
	if changed then sources[group] = Entry(routes, group, entry); end
end
local function ConditionPass(condition, unobtainable, event, uValues, eValues)
	return api.RequirementsPass(condition.releasePhases)
		and (not unobtainable or unobtainable(uValues or condition))
		and (not event or event(eValues or condition));
end
local function RoutePass(route, unobtainable, event)
	local live = route.live[1];
	local view, observed = ObserveView(route);
	local availability = route.availability;
	local uValues = availability and availability.hasU and availability;
	local eValues = availability and availability.hasE and availability;
	if observed then
		if observed.hasU and not route.skipViewU then uValues = observed; end
		if observed.hasE and not route.skipViewE then eValues = observed; end
	end
	if view and not flattened[view] and not api.RequirementsPass(view.releasePhases) then return false; end
	if live and not flattened[live] then
		local seen, first, index, pass = {}, true, 0, true;
		while live and not seen[live] do
			seen[live] = true;
			if first or live.u ~= nil or live.e ~= nil or live.releasePhases ~= nil then
				index = index + 1; SaveCondition(route, index, live);
			end
			if pass and not ConditionPass(live, unobtainable, event, first and uValues, first and eValues) then pass = false; end
			first = false;
			live = live.sourceParent or live.parent;
		end
		for i=#route.fallback,index + 1,-1 do route.fallback[i] = nil; end
		if not pass then return false; end
	else
		for i,condition in ipairs(route.fallback) do
			if not ConditionPass(condition, unobtainable, event, i == 1 and uValues, i == 1 and eValues) then return false; end
		end
	end
	for _,context in ipairs(route.contexts) do if not RoutePass(context, unobtainable, event) then return false; end end
	return true;
end
function api.Filter(group, unobtainable, event)
	if not api.GetProfile() then return app.ProgressionProfile == nil; end
	local entry = sources[group];
	if entry and IsControlled(entry) then
		for _,route in ipairs(entry.routes) do if RoutePass(route, unobtainable, event) then return true; end end
		return false;
	end
	-- Unmerged source ancestry contributes AND requirements without flattening separate routes.
	local seen = {};
	while group and not seen[group] do
		seen[group] = true;
		if not api.RequirementsPass(group.releasePhases) then return false; end
		group = group.sourceParent or group.parent;
	end
	return true;
end
