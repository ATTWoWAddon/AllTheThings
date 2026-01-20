-- App locals
local _, app = ...;

-- Global locals
local tinsert = tinsert;
local HORDE_FACTION_ID = Enum.FlightPathFaction.Horde;

-- Module locals
local function GetAttunementRequirement(t)
	local questID = t.attunementQuestID;
	if questID then
		local searchResults = app.SearchForField("questID", questID);
		if searchResults and #searchResults > 0 then
			local bestMatch = searchResults[1]
			for i=2,#searchResults,1 do
				local quest = searchResults[i];
				if quest.key == "questID" then
					bestMatch = quest;
					break;
				end
			end
			if bestMatch then return app.CloneClassInstance(bestMatch); end
		end
		return app.CreateQuest(questID);
	else
		local keys = t.attunementKeys;
		if keys then
			local anyMatch, bestMatch;
			for i,itemID in ipairs(keys) do
				local searchResults = app.SearchForField("itemID", itemID);
				if searchResults and #searchResults > 0 then
					for i=1,#searchResults,1 do
						local item = searchResults[i];
						if item.key == "itemID" and item.itemID == itemID then
							if item.OnUpdate then item:OnUpdate(); end
							if item.GetItemCount and item:GetItemCount() > 0 then
								item = app.CloneClassInstance(item);
								item.saved = true;
								return item;
							else
								anyMatch = item;
								if not item.nmr then
									bestMatch = item;
								end
							end
							break;
						end
					end
				end
			end
			if not bestMatch then bestMatch = anyMatch; end
			return bestMatch and app.CloneClassInstance(bestMatch) or app.CreateItem(itemID);
		end
	end

end

-- Implementation
app:CreateWindow("Attunements", {
	Commands = {
		"attuned",
		"attattuned",
		"attunements",
	},
	OnInit = function(self, handlers)
		local attunements = {
			app.CreateMap(435, {	-- Scarlet Monastery
				attunementKeys = { 7146 },	-- Scarlet Key
				icon = 133154,
			}),
			app.CreateMap(234, {	-- Dire Maul
				attunementKeys = { 18249 },	-- Crescent Key
				icon = 132340,
			}),
			app.CreateMap(476, {	-- Scholomance
				attunementKeys = { 13704 },	-- Skeleton Key
				icon = 135974,
			}),
			app.CreateMap(317, {	-- Stratholme
				attunementKeys = { 12382 },	-- Key to the City
				icon = 237511,
			}),
			app.CreateMap(250, {	-- Upper Blackrock Spire
				attunementQuestID = 4743,
				icon = 254648,
			}),
			app.CreateMap(232, {	-- Molten Core
				attunementQuestID = 7848,
				icon = 254652,
				isRaid = true,
			}),
			app.CreateMap(248, {	-- Onyxia's Lair
				attunementQuestID = app.FactionID == HORDE_FACTION_ID and 6602 or 6502,
				icon = 254650,
				isRaid = true,
			}),
			app.CreateMap(287, {	-- Blackwing Lair
				attunementQuestID = 7761,
				icon = 254649,
				isRaid = true,
			}),
			app.CreateMap(162, {	-- Naxxramas
				icon = 135441,
				GetAttunementRequirement = function(t)
					-- Naxx Attunement needs to be handled different, display-wise.
					-- Based on current Argent Dawn rep, show a different quest. (still querying for the hidden attunement quest)
					local currentStanding = app.CreateFaction(529).standing or 6;
					local specificQuestID = (currentStanding == 8 and 9123) or (currentStanding == 7 and 9122) or 9121;
					local searchResults = app.SearchForField("questID", specificQuestID);
					if searchResults and #searchResults > 0 then
						local bestMatch = searchResults[1];
						for i=2,#searchResults,1 do
							local quest = searchResults[i];
							if quest.key == "questID" and quest.questID == specificQuestID then
								bestMatch = quest;
								break;
							end
						end
						return bestMatch and app.CloneClassInstance(bestMatch);
					else
						return app.CreateQuest(specificQuestID);
					end
				end,
				isRaid = true,
			}),
		};
		if app.GameBuildVersion > 20501 then
			local tbcAttunements = {
				app.CreateDifficulty(1, {	-- Normal [The Arcatraz]
					sourceParent = app.CreateMap(269),
					attunementKeys = { 31084 },	-- Key to the Arcatraz
				}),
				app.CreateDifficulty(2, {	-- Heroic [The Arcatraz]
					sourceParent = app.CreateMap(269),
					attunementKeys = { 30634 },	-- Warpforged Key
				}),
				app.CreateDifficulty(2, {	-- Heroic [Auchenai Crypts]
					sourceParent = app.CreateMap(256),
					attunementKeys = { 30633 },	-- Auchenai Key
				}),
				app.CreateDifficulty(2, {	-- Heroic [Hellfire Ramparts]
					sourceParent = app.CreateMap(347),
					attunementKeys = { 30622, 20637 },	-- Flamewrought Key (both)
				}),
				app.CreateDifficulty(2, {	-- Heroic [Magister's Terrace]
					sourceParent = app.CreateMap(348),
					attunementQuestID = 11492,	-- Hard to Kill
				}),
				app.CreateDifficulty(2, {	-- Heroic [Old-Hillsbrad Foothills]
					sourceParent = app.CreateMap(274),
					attunementKeys = { 30635 },	-- Key of Time
				}),
				app.CreateDifficulty(2, {	-- Heroic [The Steamvault]
					sourceParent = app.CreateMap(263),
					attunementKeys = { 30623 },	-- Reservoir Key
				}),
				app.CreateMap(350, {	-- Karazhan
					attunementQuestID = 9837,	-- Return to Khadgar [The Master's Key]
					icon = 254651,
					isRaid = true,
				}),
				app.CreateMap(332, {	-- SSC
					attunementQuestID = 10901,	-- The Cudgel of Kar'desh
					icon = 236422,
					isRaid = true,
				}),
				app.CreateMap(334, {	-- The Eye
					attunementQuestID = 10888,	-- Trial of the Naaru: Magtheridon
					icon = 236440,
					isRaid = true,
				}),
				app.CreateMap(329, {	-- Hyjal Summit
					attunementQuestID = 10445,	-- The Vials of Eternity
					icon = 236402,
					isRaid = true,
				}),
				app.CreateMap(340, {	-- Black Temple
					attunementQuestID = 10985,	-- A Distraction for Akama
					icon = 236415,
					isRaid = true,
				}),
			};
			for i,attunement in ipairs(tbcAttunements) do
				tinsert(attunements, attunement);
			end
		else
			-- Season of Discovery Attunements
			if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
				if app.GameBuildVersion >= 11503 then
					local dfc = {	-- Demon Fall Canyon
						icon = 132447,
						--attunementQuestID = 84384,	-- Demonic Deceptions
						attunementKeys = { 228172 },	-- Shadowtooth Illusion Ward
						g = false,
					};
					setmetatable(dfc, { __index = app.SearchForField("instanceID", 2784)[1] });
					tinsert(attunements, 6, dfc);
				end
			end
		end
		local function OnUpdateForAttunement(t)
			local requirement = t:GetAttunementRequirement();
			if requirement then
				t.expanded = false;
				if not t.g then
					requirement.OnUpdate = app.AlwaysShowUpdate;
					requirement.visible = true;
					requirement.parent = t;
					t.g = { requirement };
				end
				t.saved = requirement.saved;
				t.trackable = true;
				t.parent.total = t.parent.total + 1;
				if t.saved then t.parent.progress = t.parent.progress + 1; end
			else
				t.trackable = false;
			end
			t.visible = true;
			return true;
		end
		for i,attunement in ipairs(attunements) do
			if not attunement.GetAttunementRequirement then
				attunement.GetAttunementRequirement = GetAttunementRequirement;
			end
			attunement.OnUpdate = OnUpdateForAttunement;
		end
		local attunementsHeader = app.CreateRawText("Attunements", {
			icon = 135817,
			description = "This window shows you your current character's attunement progress.",
			visible = true,
			expanded = true,
			back = 1,
			g = {},
			OnUpdate = function(data)
				local g = data.g;
				if #g < 1 and attunements then
					for i,attunement in ipairs(attunements) do
						attunement.parent = data;
						tinsert(g, attunement);
					end
				end
				data.visible = true;
			end
		});
		self.data = attunementsHeader;
		self.Reset = function()
			self.data = attunementsHeader;
			self:Update(true);
		end
	end,
});
