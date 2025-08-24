local _, app = ...

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;
local GetSpellIcon = app.WOWAPI.GetSpellIcon;
local GetTradeSkillTexture = app.WOWAPI.GetTradeSkillTexture;
local C_TradeSkillUI_GetTradeSkillDisplayName
	= C_TradeSkillUI.GetTradeSkillDisplayName

-- Profession Lib
local CLASS, KEY = "Profession", "professionID";
app.CreateProfession = app.CreateClass(CLASS, KEY, {
	name = function(t)
		local name
		local spellID = t.spellID;
		if spellID and spellID ~= 2366 then
			name = GetSpellName(spellID)
		end
		return name or C_TradeSkillUI_GetTradeSkillDisplayName(t[KEY])
	end,
	icon = function(t)
		local spellID = t.spellID;
		return spellID and GetSpellIcon(spellID) or GetTradeSkillTexture(t[KEY]);
	end,
	spellID = function(t)
		return app.SkillDB.SkillToSpell[t[KEY]];
	end,
	skillID = function(t)
		return t[KEY];
	end,
	requireSkill = function(t)
		return t[KEY];
	end,
	ignoreSourceLookup = function(t)
		return true;
	end,
	sym = app.IsClassic and function(t)
		return {{"selectprofession", t.professionID}};
	end
})