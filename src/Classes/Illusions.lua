local app = select(2, ...);

-- WoW API Cache
local IsRetrieving = app.Modules.RetrievingData.IsRetrieving
local Colorize = app.Modules.Color.Colorize

-- Illusion Class
local AccountWideIllusionData = {};

local CLASSNAME, KEY, CACHE = "Illusion", "illusionID", "Illusions"
local illusionFields = {
	filterID = function(t)
		return 103;
	end,
	text = function(t)
		return t.link;
	end,
	icon = function(t)
		return 132853;
	end,
	RefreshCollectionOnly = true,
	collectible = function(t)
		return app.Settings.Collectibles[CACHE];
	end,
	collected = function(t)
		return AccountWideIllusionData[t[KEY]];
	end,
};
if C_TransmogCollection then
	local GetIllusionLink = C_TransmogCollection.GetIllusionSourceInfo;
	local GetIllusionStrings = C_TransmogCollection.GetIllusionStrings;
	if GetIllusionStrings then
		illusionFields.link = function(t)
			local name, link = GetIllusionStrings(t[KEY])
			if not IsRetrieving(link) then
				return link
			end
			return name
		end
	elseif GetIllusionLink then
		illusionFields.link = function(t)
			return select(3, GetIllusionLink(t[KEY]));
		end
	else
		illusionFields.text = function(t)
			return "[Illusion: " .. t[KEY] .. " (Unsupported)]";
		end
	end
	if illusionFields.link then
		illusionFields.illusionLink = illusionFields.link;
	end

	local C_TransmogCollection_GetIllusions = C_TransmogCollection.GetIllusions;
	if C_TransmogCollection_GetIllusions then
		-- Add Harvest Illusion Collections to the OnRefreshCollections handler.
		app.AddEventHandler("OnRefreshCollections", function()
			for _,illusion in ipairs(C_TransmogCollection_GetIllusions()) do
				if illusion.isCollected then AccountWideIllusionData[illusion.sourceID] = 1; end
			end
		end);
	end
end
app.CreateIllusion = app.CreateClass(CLASSNAME, KEY, illusionFields,
"WithItem", {
	ImportFrom = "Item",
	ImportFields = app.IsRetail and { "name", "link", "icon", "tsm", "costCollectibles", "AsyncRefreshFunc" } or { "name", "link", "icon", "tsm" },
	text = function(t)
		return Colorize("["..(t.name or RETRIEVING_DATA).."]", app.Colors.Illusion)
	end
}, function(t) return t.itemID; end);

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	local accountWide = accountWideData.Illusions;
	if accountWide then
		AccountWideIllusionData = accountWide;
	else
		accountWideData.Illusions = AccountWideIllusionData;
	end
end);

app.AddSimpleCollectibleSwap(CLASSNAME, CACHE)