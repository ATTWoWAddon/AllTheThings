-- App locals
local appName, app = ...;
local CloneReference = app.CloneReference;

-- Global locals
local GetBuildInfo = GetBuildInfo;
local ALLIANCE_FACTION_ID = Enum.FlightPathFaction.Alliance;
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
			return CloneReference(bestMatch);
		else
			return app.CreateQuest(questID);
		end
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
								item = CloneReference(item);
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
			
			return CloneReference(bestMatch or anyMatch);
		end
	end
end

-- Implementation
app:GetWindow("Attunements", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self, handlers)
		SLASH_ATTATTUNED1 = "/attuned";
		SLASH_ATTATTUNED2 = "/attattuned";
		SLASH_ATTATTUNED3 = "/attunements";
		SlashCmdList["ATTATTUNED"] = function(cmd)
			self:Toggle();
		end
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			local attunements = {
				app.CreateMap(435, {	-- Scarlet Monastery
					attunementKeys = { 7146 },	-- Scarlet Key
				}),
				app.CreateMap(234, {	-- Dire Maul
					attunementKeys = { 18249 },	-- Crescent Key
				}),
				app.CreateMap(317, {	-- Stratholme
					attunementKeys = { 12382 },	-- Key to the City
				}),
				app.CreateMap(250, {	-- Upper Blackrock Spire
					icon = app.asset("Achievement_Boss_Overlord_Wyrmthalak"),
					attunementQuestID = 4743,
				}),
				app.CreateMap(232, {	-- Molten Core
					icon = "Interface\\Icons\\Spell_Fire_Immolation",
					attunementQuestID = 7848,
					isRaid = true,
				}),
				app.CreateMap(248, {	-- Onyxia's Lair
					icon = "Interface\\Icons\\INV_Misc_Head_Dragon_01",
					attunementQuestID = app.FactionID == HORDE_FACTION_ID and 6602 or 6502,
					isRaid = true,
				}),
				app.CreateMap(287, {	-- Blackwing Lair
					icon = "Interface\\Icons\\inv_misc_head_dragon_black",
					attunementQuestID = 7761,
					isRaid = true,
				}),
				app.CreateMap(162, {	-- Naxxramas
					icon = "Interface\\Icons\\INV_Trinket_Naxxramas03",
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
							return CloneReference(bestMatch);
						else
							return CloneReference(app.CreateQuest(specificQuestID));
						end
					end,
					isRaid = true,
				}),
			};
			if select(4, GetBuildInfo()) > 20501 then
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
						icon = "Interface\\Icons\\Ability_mount_dreadsteed",
						attunementQuestID = 9837,	-- Return to Khadgar [The Master's Key]
						isRaid = true,
					}),
					app.CreateMap(332, {	-- SSC
						icon = "Interface\\Icons\\inv_weapon_shortblade_42",
						attunementQuestID = 10901,	-- The Cudgel of Kar'desh
						isRaid = true,
					}),
					app.CreateMap(334, {	-- The Eye
						icon = "Interface\\Icons\\inv_misc_summerfest_brazierorange",
						attunementQuestID = 10888,	-- Trial of the Naaru: Magtheridon
						isRaid = true,
					}),
					app.CreateMap(329, {	-- Hyjal Summit
						icon = "Interface\\Icons\\inv_weapon_bow_30",
						attunementQuestID = 10445,	-- The Vials of Eternity
						isRaid = true,
					}),
					app.CreateMap(340, {	-- Black Temple
						icon = "Interface\\Icons\\inv_helmet_98",
						attunementQuestID = 10985,	-- A Distraction for Akama
						isRaid = true,
					}),
				};
				for i,attunement in ipairs(tbcAttunements) do
					tinsert(attunements, attunement);
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
			local attunementsHeader = {
				text = "Attunements",
				icon = "Interface\\Icons\\Spell_Fire_Immolation",
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
							table.insert(g, attunement);
						end
					end
					data.visible = true;
				end
			};
			self.data = attunementsHeader;
			self.Reset = function()
				self.data = attunementsHeader;
				self:Update(true);
			end
		end
	end,
});