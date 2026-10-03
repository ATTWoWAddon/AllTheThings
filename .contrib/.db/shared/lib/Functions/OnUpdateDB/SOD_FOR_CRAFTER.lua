-- This is used to only display certain SOD quests for a Crafter of certain skills only.
ExportDB.OnUpdateDB.SOD_FOR_CRAFTER = [[~function(t)
	t.visible = nil;
	t.collectible = nil;
	if _.MODE_DEBUG_OR_ACCOUNT then
		return false;
	else
		local skills = _.CurrentCharacter.ActiveSkills;
		if skills[2018] or skills[2108] or skills[3908] then
			return false;
		end
		t.collectible = false;
		t.visible = false;
		return true;
	end
end]];
