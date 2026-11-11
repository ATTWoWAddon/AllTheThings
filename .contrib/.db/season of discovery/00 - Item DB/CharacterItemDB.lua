-- This file will combine itemIDs for customization and questIDs so they dont have to be in the source files

--[[
=== Uses ===
-- CharacterUnlock Types
iq() - This is an Item which triggers a QuestID and provides a tangible change to the player experience via being used
Example: One-time consumables that change available in-game functionality/options
is() - This is an Item which triggers/learns a SpellID and provides a tangible change to the player experience via being used
Example: Spells which change available in-game functionality/options
-- Item Types
ihqt() - This is simply an Item which triggers a QuestID, but no noticeable difference to the player experience occurs
- Example: One-time consumables that grant a currency/etc.
--]]

local Items = ItemDBConditional;
local Spells
Spells = RecipeDB;
local is = function(itemID, spellID, classID, raceID)
	local item = {
		spellID = spellID and spellID > 0 and spellID or nil,
		type = "characterUnlockSpellID",
	}
	if classID then
		item.classes = { classID };
	end
	if raceID then
		item.races = { raceID };
	end
	if itemID and itemID > 0 then
		Items[itemID] = item;
	elseif spellID and spellID > 0 then
		Spells[spellID] = item;
	else
		error("'characterUnlockSpellID' requires itemID or spellID to be parsed (itemID only will simply apply the data to the respective Item)")
	end
end
-----------------
--   CLASSIC   --
-----------------
--- NYI ---
is(4144, 28270, MAGE);				-- Tome of Polymorph: Cow

-----------------
-- PATCH 1.7.0 --
-----------------
is(22739, 28271, MAGE);				-- Tome of Polymorph: Turtle
