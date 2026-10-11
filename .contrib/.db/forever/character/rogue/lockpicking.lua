ExportDB.OnUpdateDB.ForLockpicking = [[~function(t)
	if _.Settings.Collectibles.Recipes then
		t.collectible = true;
		local id = t.spellID;
		local skills = _.CurrentCharacter.ActiveSkills[id];
		if skills and skills[1] >= 300 then
			t.collected = 1;
			return;
		end
		if _.Settings.AccountWide.Recipes then
			for guid,ch in pairs(ATTCharacterData) do
				skills = ch.ActiveSkills and ch.ActiveSkills[id];
				if skills and skills[1] >= 300 then
					t.collected = 2;
					return;
				end
			end
		end
		t.collected = false;
	else
		t.collectible = false;
	end
end]];
ExportDB.OnTooltipDB.ForLockpicking = [[~function(t, tooltipInfo)
	local skills = _.CurrentCharacter.ActiveSkills[t.spellID];
	if skills and skills[1] < 300 then
		local data = t.lpdata;
		if not data then
			data = {};
			local requireSkill = t.requireSkill;
			_:BuildFlatSearchFilteredResponse(_:GetDatabaseRoot().g, function(group)
				return group.requireSkill == requireSkill and group.learnedAt and not group.nmr;
			end, data);
			table.sort(data, function(a, b)
				return a.learnedAt > b.learnedAt;
			end);
			t.lpdata = data;
		end
		tinsert(tooltipInfo, { left = "Recommended Locations:", right = "Minimum" });
		local lastLearnedAt;
		for i,o in ipairs(data) do
			if o.learnedAt <= skills[2] then
				if o.learnedAt < skills[1] then
					if lastLearnedAt and o.learnedAt < lastLearnedAt then
						break;
					end
					lastLearnedAt = o.learnedAt;
				end
				local text = "  " .. o.text;
				mapID = _.GetBestMapForGroup(o, _.CurrentMapID);
				if mapID then text = text .. " (" .. _.GetMapName(mapID) .. ")"; end
				tinsert(tooltipInfo, { left = text, right = tostring(o.learnedAt), r = 1, g = 1, b = 1 });
			end
		end
	end
end]];
root(ROOTS.Character, { cl(ROGUE, { lockpicking({
	description = "Lockpicking needs to be leveled up by practicing on lockboxes found in the world and junkboxes looted by using your pickpocket ability on appropriately leveled mobs.",
	DontEnforceSkillRequirements = true,
	OnUpdate = [[_.OnUpdateDB.ForLockpicking]],
	OnTooltip = [[_.OnTooltipDB.ForLockpicking]],
	groups = {
		recipe(1804, {	-- Pick Lock
			provider = { "i", 5060 },	-- Thieves' Tools
			classes = { ROGUE },
		}),
		recipe(921, {	-- Pick Pocket
			classes = { ROGUE },
		}),
	}
})})});
