ExportDB.OnUpdateDB.ForLockpicking = [[~function(t)
	t.collectible = _.Settings.Collectibles.Recipes;
	local skills = _.CurrentCharacter.ActiveSkills[t.spellID];
	t.collected = skills and skills[1] >= 300 or false;
end]];
ExportDB.OnTooltipDB.ForLockpicking = [[~function(t, tooltipInfo)
	local skills = _.CurrentCharacter.ActiveSkills[t.spellID];
	if skills then
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
root(ROOTS.Professions, lockpicking({
	-- #if AFTER CATA
	["description"] = "Lockpicking now skills up as you level, you no longer need to practice. Hovering over your Pick Lock ability will show the current level of box you can open.",
	-- #else
	["description"] = "Lockpicking needs to be leveled up by practicing on lockboxes found in the world and junkboxes looted by using your pickpocket ability on appropriately leveled mobs.",
	-- TODO: Maybe add a thing in the tooltip for suggestions on where to level next?
	-- #endif
	-- This makes it ignore the profession requirement.
	["OnInit"] = [[function(t) t.DontEnforceSkillRequirements = true; end]],
	-- #if BEFORE CATA
	["OnUpdate"] = [[_.OnUpdateDB.ForLockpicking]],
	["OnTooltip"] = [[_.OnTooltipDB.ForLockpicking]],
	-- #endif
	["groups"] = {
		recipe(1804, {	-- Pick Lock
			-- #if BEFORE WRATH
			["provider"] = { "i", 5060 },	-- Thieves' Tools
			-- #endif
			["classes"] = { ROGUE },
		}),
		recipe(921, {	-- Pick Pocket
			["classes"] = { ROGUE },
		}),
	}
}));
