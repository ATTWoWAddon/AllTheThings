
local _, app = ...
local L = app.L

local pairs
	= pairs

local Colorize = app.Modules.Color.Colorize;

local CharacterData
app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	CharacterData = ATTCharacterData
end);

-- Depends on Item.Retail

app.CreateEnsemble = app.ExtendClass("Item", "EnsembleItem", "itemID", {
	IsClassIsolated = true,
	itemID = function(t) return t.ensembleID end,
	isUpgrade = app.EmptyFunction,
	costCollectibles = app.EmptyFunction,
	description = function(t)
		if t.saved then
			return Colorize(L.ENSEMBLE_LEARNED, app.Colors.TooltipWarning)
		else
			return Colorize(L.RELOG_REQUIRED, app.Colors.TooltipWarning)
		end
	end,
	saved = function(t)
		local id = t.questID;
		if app.IsQuestFlaggedCompleted(id) then return true end

		if id then
			for _,character in pairs(CharacterData) do
				if character.Quests and character.Quests[id] then
					return true
				end
			end
		end
	end,
})

-- Depends on Spell

app.CreateEnsembleSpell = app.ExtendClass("Spell", "EnsembleSpell", "spellID", {
	IsClassIsolated = true,
	-- spellID = function(t) return t.ensembleSpellID end,
	description = function(t)
		if t.saved then
			return Colorize(L.ENSEMBLE_LEARNED, app.Colors.TooltipWarning)
		else
			return Colorize(L.RELOG_REQUIRED, app.Colors.TooltipWarning)
		end
	end,
	saved = function(t)
		local id = t.questID;
		if app.IsQuestFlaggedCompleted(id) then return true end

		if id then
			for _,character in pairs(CharacterData) do
				if character.Quests and character.Quests[id] then
					return true
				end
			end
		end
	end,
})

-- TODO: Information Type for Ensemble bricked info?