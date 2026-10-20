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
