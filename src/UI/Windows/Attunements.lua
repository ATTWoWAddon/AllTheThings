-- App locals
local _, app = ...;
local L = app.L;
if app.GameBuildVersion <= 40000 then

-- Global locals
local ipairs = ipairs;
local GetItemCount = app.WOWAPI.GetItemCount;

-- Module locals
-- Every group in the DB with an 'attunement' field is listed in this window.
-- attunement = { { "i", itemID }, { "q", questID }, ... }: any one of these grants entry.

-- Returns the best DB match for the given field and ID.
local function FindBestMatch(field, id)
	local searchResults = app.SearchForField(field, id);
	if searchResults and #searchResults > 0 then
		for i=1,#searchResults,1 do
			local o = searchResults[i];
			if o.key == field and o[field] == id then
				return o;
			end
		end
		return searchResults[1];
	end
end

-- Returns whether the given attunement requirement is met.
local function IsAttunementMet(attunement)
	local attType, id = attunement[1], attunement[2];
	if attType == "i" then
		return GetItemCount(id, true) > 0;
	elseif attType == "q" then
		return app.IsQuestFlaggedCompleted(id);
	end
end

-- Returns the attunement requirements of the group that apply to the current character.
local function GetCharacterAttunements(group)
	local attunements, results = group.attunement, {};
	if not attunements then return results; end
	for _,attunement in ipairs(attunements) do
		if attunement[1] == "q" then
			-- Quest attunements for the other faction (e.g. Alliance/Horde versions) don't apply.
			local quest = FindBestMatch("questID", attunement[2]);
			if not (quest and quest.r and quest.r ~= app.FactionID) then
				results[#results + 1] = attunement;
			end
		else
			results[#results + 1] = attunement;
		end
	end
	return results;
end

-- Creates the row shown under an attunement for one of its requirements.
local function CreateRequirementRow(attunement)
	local attType, id = attunement[1], attunement[2];
	local row;
	if attType == "q" then
		local quest = FindBestMatch("questID", id);
		row = quest and app.CloneClassInstance(quest) or app.CreateQuest(id);
	elseif attType == "i" then
		local item = FindBestMatch("itemID", id);
		row = item and app.CloneClassInstance(item) or app.CreateItem(id);
	end
	if row then
		-- Only the requirement itself matters here, not what it contains or can be traded for.
		row.g = nil;
		row.skipFill = 2;
		row.attunementRequirement = attunement;
		row.OnUpdate = function(t)
			local req = t.attunementRequirement;
			if req[1] == "i" then t.saved = IsAttunementMet(req) or nil; end
			t.visible = true;
			return true;
		end
		row.visible = true;
	end
	return row;
end

-- The instance a group belongs to (the group itself for an instance).
local function GetInstanceGroup(group)
	local parent = group;
	while parent do
		if parent.key == "instanceID" then return parent; end
		parent = parent.parent;
	end
end

local function OnUpdateForAttunement(t)
	local requirements = t.attunementRequirements;
	if #requirements < 1 then
		t.trackable = false;
		t.visible = false;
		return true;
	end
	if not t.g then
		local g = {};
		for _,attunement in ipairs(requirements) do
			local row = CreateRequirementRow(attunement);
			if row then
				row.parent = t;
				g[#g + 1] = row;
			end
		end
		t.g = g;
		t.expanded = false;
	end
	local saved;
	for _,attunement in ipairs(requirements) do
		if IsAttunementMet(attunement) then
			saved = true;
			break;
		end
	end
	t.saved = saved;
	t.trackable = true;
	t.parent.total = t.parent.total + 1;
	if saved then t.parent.progress = t.parent.progress + 1; end
	t.visible = true;
	return true;
end

-- Creates a fresh object for the window instead of reusing the DB group, so none of
-- the group's contents (an instance's loot, costs or progress) can show up here.
-- Wings are named after their instance: "Scarlet Monastery - Armory".
local function CreateAttunementEntry(group)
	local instance = GetInstanceGroup(group);
	local data = {
		icon = group.icon or (instance and instance.icon),
		isRaid = group.isRaid or (instance and instance.isRaid),
		mapID = group.mapID or (instance and instance.mapID),
		coords = group.coords or (instance and instance.coords),
		skipFill = 2,
		attunementRequirements = GetCharacterAttunements(group),
		OnUpdate = OnUpdateForAttunement,
	};
	local key = group.key;
	if key == "instanceID" then
		return app.CreateInstance(group.instanceID, data);
	elseif key == "difficultyID" and instance then
		-- The Difficulty class names itself after its source parent: "Heroic [The Arcatraz]".
		data.icon = nil;
		data.sourceParent = app.CreateInstance(instance.instanceID, { mapID = instance.mapID });
		return app.CreateDifficulty(group.difficultyID, data);
	end
	local text = group.text;
	if instance and instance ~= group and instance.text and text then
		text = instance.text .. " - " .. text;
	end
	return app.CreateRawText(text or UNKNOWN, data);
end

-- Builds the list of attunements from the DB.
local function BuildAttunements()
	local attunements, seen = {}, {};
	local groups = app.SearchForField("attunement", true);
	if groups then
		for _,group in ipairs(groups) do
			-- Faction-specific data caches the same group for each faction.
			if not seen[group] then
				seen[group] = true;
				attunements[#attunements + 1] = CreateAttunementEntry(group);
			end
		end
	end
	return attunements;
end

-- Implementation
app:CreateWindow("Attunements", {
	IsDynamicCategory = true,
	Commands = {
		"attuned",
		"attattuned",
		"attunements",
	},
	OnInit = function(self, handlers)
		local attunements;
		local attunementsHeader = app.CreateRawText(L.ATTUNEMENTS, {
			icon = 135817,
			description = L.ATTUNEMENTS_TOOLTIP,
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 then
					attunements = attunements or BuildAttunements();
					for i,attunement in ipairs(attunements) do
						attunement.parent = data;
						g[#g+1] = attunement
					end
				end
				data.visible = true;
			end
		});
		self:SetData(attunementsHeader);
		self.Reset = function()
			self:SetData(attunementsHeader);
			self:Update(true);
		end
	end,
});
end
