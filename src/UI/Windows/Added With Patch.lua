-- App locals
local _, app = ...;
local L = app.L;
local tinsert, math_floor
	= tinsert, math.floor;
local Colorize = app.Modules.Color.Colorize;

-- Local functions
local MinPatch, MaxPatch;
local FilteredPatches = {};
local ExpansionKeywords = {
	all = { 0, 14 },
	classic = { 0, 2 },
	tbc = { 2, 3 },
	wrath = { 3, 4 },
	wotlk = { 3, 4 },
	cata = { 4, 5 },
	mop = { 5, 6 },
	wod = { 6, 7 },
	legion = { 7, 8 },
	bfa = { 8, 9 },
	shadowlands = { 9, 10 },
	sl = { 9, 10 },
	dragonflight = { 10, 11 },
	df = { 10, 11 },
	tww = { 11, 12 },
	midnight = { 12, 13 },
	mid = { 12, 13 },
	tlt = { 13, 14 },
};
function AddedWithPatchFilter(group)
	if group.awp and group.awp == MinPatch then
		return true;
	end
end
function AddedWithPatchFilterMinMax(group)
	if group.awp and group.awp >= MinPatch and group.awp < MaxPatch then
		FilteredPatches[group.awp] = 1;
		return true;
	end
end
local function GetPatchString(patch)
	patch = tonumber(patch)
	return patch and (math_floor(patch / 10000) .. "." .. (math_floor(patch / 100) % 100) .. "." .. (patch % 10))
end
local function ParsePatch(cmd)
	local expansionKey = ExpansionKeywords[cmd];
	if expansionKey then
		return expansionKey[1] * 10000, expansionKey[2] * 10000;
	elseif cmd == "current" then
		return app.GameBuildVersion;
	else
		local patch = 0;
		local major, minor, build = ("."):split(cmd);
		if minor then
			if build then patch = patch + tonumber(build); end
			patch = patch + (tonumber(minor) * 100);
			patch = patch + (tonumber(major) * 10000);
		else
			patch = tonumber(major);
		end
		if patch and patch > 0 then
			while patch < 10000 do patch = patch * 10; end
		end
		return patch;
	end
end
local function ParseCommand(self, cmd)
	if cmd and cmd ~= "" then
		cmd = cmd:lower();
		local a,b = ("-"):split(cmd);
		local patch,final = ParsePatch(a);
		if b then final = ParsePatch(b); end
		local dirty;
		if MinPatch ~= patch then
			MinPatch = patch;
			dirty = true;
		end
		if MaxPatch ~= final then
			MaxPatch = final;
			dirty = true;
		end
		if dirty then
			wipe(self.data.g);
			collectgarbage();
			self:Rebuild();
		end
	end
end

-- Implementation
app:CreateWindow("Added With Patch", {
	Commands = { "attawp" },
	OnCommand = function(self, args, params)
		local cmd = args[1];
		if cmd and cmd ~= "" then
			ParseCommand(self, cmd);
			if self:IsShown() then
				return true;
			end
		end
	end,
	OnLoad = function(self, settings)
		MaxPatch = settings.MaxPatch;
		MinPatch = settings.MinPatch;
	end,
	OnSave = function(self, settings)
		settings.MaxPatch = MaxPatch;
		settings.MinPatch = MinPatch;
	end,
	OnInit = function(self, handlers)
		local options = {
			app.CreateRawText(RETRIEVING_DATA, {	-- Patch
				prefix = "Patch: ",
				icon = 134941,
				description = "Press this button to change the patch.\n\nChanging this value will filter out items that get added during the given patch.",
				visible = true,
				priority = 6,
				OnClick = function(row, button)
					local str;
					if MinPatch and MinPatch > 0 then
						str = GetPatchString(MinPatch);
					end
					if MaxPatch and MaxPatch > 0 then
						if str then
							str = str .. "-" .. GetPatchString(MaxPatch);
						else
							str = "0-" .. GetPatchString(MaxPatch);
						end
					end
					app:ShowPopupDialogWithEditBox("Please enter a new patch", str or app.GameBuildVersion, function(cmd)
						ParseCommand(self, cmd);
					end);
					return true;
				end,
				OnUpdate = function(data)
					local str;
					if MinPatch and MinPatch > 0 then
						str = GetPatchString(MinPatch);
					end
					if MaxPatch and MaxPatch > 0 then
						if str then
							str = str .. " - " .. GetPatchString(MaxPatch);
						else
							str = "< " .. GetPatchString(MaxPatch);
						end
					end
					if str then
						data.strKey = data.prefix .. Colorize(str, app.Colors.AddedWithPatch);
					else
						data.strKey = data.prefix;
					end
					return app.AlwaysShowUpdate(data);
				end,
			}),
		};
		self:SetData(app.CreateRawText(L.ADDED_WITH_PATCH, {
			icon = app.asset("Interface_Newly_Added"),
			description = L.ADDED_WITH_PATCH_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			indent = 0,
			g = { },
			OnUpdate = function(t)
				local g = t.g;
				if #g < 1 then
					for i,option in ipairs(options) do
						option.parent = data;
						tinsert(g, option);
					end
					wipe(FilteredPatches);
					local results = app:BuildSearchFilteredResponse(app:GetDataCache().g, MaxPatch and AddedWithPatchFilterMinMax or AddedWithPatchFilter);
					if results and #results > 0 then
						if MaxPatch then
							local patchList = {};
							for key,_ in pairs(FilteredPatches) do
								tinsert(patchList, key);
							end
							table.sort(patchList);
							for i,patch in ipairs(patchList) do
								local cache = app:BuildSearchFilteredResponse(results, function(group)
									if group.awp and group.awp == patch then
										return true;
									end
								end);
								if cache and #cache > 0 then
									local patchHeader = app.CreateExpansion(patch * 0.0001, {g=cache});
									if patchHeader.patchString then patchHeader.name = patchHeader.patchString; end
									tinsert(g, patchHeader);
								end
							end
						else
							for i,result in ipairs(results) do
								tinsert(g, result);
							end
						end
						tinsert(g, self.SearchAPI.BuildDynamicCategorySummaryForSearchResults(results));
						self:AssignChildren();
					end
				end
			end,
		}));
	end,
});