
-- Character Unlock Class
local _, app = ...

-- Global locals

-- App locals

-- Module locals
local OneTimeQuests
local SETTING = "CharacterUnlocks"
local CACHE_QUESTS = "Quests"
local CACHE_SPELLS = "Spells"
local KEY_QUEST = "questID"
local KEY_SPELL = "spellID"

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	OneTimeQuests = accountWideData.OneTimeQuests;
end);

local function Collectible(t)
	return app.Settings.Collectibles[SETTING]
		and
		(
			app.Settings.AccountWide[SETTING]
			-- or not OTQ or is OTQ not yet known to be completed by any character, or is OTQ completed by this character
			or (not OneTimeQuests[t.questID] or OneTimeQuests[t.questID] == app.GUID)
		)
end
-- TODO: Does not consider OPA Quests as Unlocked when not tracking Account-Wide
-- e.g. Garrison Shipyard Blueprints
-- https://discord.com/channels/242423099184775169/1233743089630314558
local function CollectedAsQuest(t)
	return app.TypicalCharacterCollected(CACHE_QUESTS, t[KEY_QUEST])
end
local function CollectedAsSpell(t)
	return app.TypicalCharacterCollected(CACHE_SPELLS, t[KEY_SPELL], SETTING)
end
local function SavedAsQuest(t)
	return app.IsCached(CACHE_QUESTS, t[KEY_QUEST])
end
local function SavedAsSpell(t)
	return app.IsCached(CACHE_SPELLS, t[KEY_SPELL])
end

-- CRIEVE NOTE:
-- These classes are nearly identical to the classes we already provide elsewhere. I'd like to see this refactored back into using the original classes and the class type neutralized. This effectively means being converted into a requireSkill equivalent and then implement a feature where we can allow the user to toggle their professions and this would effectively be the "character unlock" profession, which every user would have by default. I'd also like to add a "Songwriter" and "Photographer" profession to replace the Music Rolls and Selfie Filters... filter.
-- That would be a future project, of course, but the toggling of individual professions has been on my todo list for a long time. As you can imagine, just been busy with other things.
-- RUNAWAY NOTE:
-- I think that sounds more confusing to a user and similarity of classes should not merit merging the classes...
-- "How do I see/remove Music Rolls in my ATT, they're gone/visible since last update?" "Ah yes, they are now a pseudo-profession type which has to be toggled on a separate screen of the ATT settings" "... uh... ok"
-- But when that project comes around I guess we will see what happens...

local CreateCharacterUnlockQuestItem = app.ExtendClass("Item", "CharacterUnlockQuestItem", "questID", {
	CACHE = function() return CACHE_QUESTS end,
	collectible = Collectible,
	collected = CollectedAsQuest,
	saved = SavedAsQuest,
	characterUnlock = app.ReturnTrue,
	IsClassIsolated = true,
})
local CreateCharacterUnlockSpellItem = app.ExtendClass("Item", "CharacterUnlockSpellItem", "spellID", {
	CACHE = function() return CACHE_SPELLS end,
	collectible = Collectible,
	collected = CollectedAsSpell,
	saved = SavedAsSpell,
	characterUnlock = app.ReturnTrue,
	IsClassIsolated = true,
})
local CreateCharacterUnlockQuest = app.ExtendClass("Quest", "CharacterUnlockQuest", "questID", {
	collectible = Collectible,
	collected = CollectedAsQuest,
	saved = SavedAsQuest,
	characterUnlock = app.ReturnTrue,
	IsClassIsolated = true,
	variants = {
		app.GlobalVariants.WithAutoName
	}
})
local CreateCharacterUnlockSpell = app.ExtendClass("Spell", "CharacterUnlockSpell", "spellID", {
	collectible = Collectible,
	collected = CollectedAsSpell,
	saved = SavedAsSpell,
	characterUnlock = app.ReturnTrue,
	IsClassIsolated = true,
})

-- no on refresh since collectible types are refreshed by base classes
-- no saved var setup since caches are setup by base classes

-- Defines a Class type which provides some character-based collectible by questID
app.CreateCharacterUnlockQuest = function(id, t)
	if t and t.itemID then
		return CreateCharacterUnlockQuestItem(id, t)
	end
	return CreateCharacterUnlockQuest(id, t)
end
-- Defines a Class type which provides some character-based collectible by spelID
app.CreateCharacterUnlockSpell = function(id, t)
	if t and t.itemID then
		return CreateCharacterUnlockSpellItem(id, t)
	end
	return CreateCharacterUnlockSpell(id, t)
end