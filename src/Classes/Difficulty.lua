do
-- App locals
local _,app = ...;
local L, contains, containsValue, GetRelativeValue = app.L, app.contains, app.containsValue, app.GetRelativeValue;

-- Global locals
local date, pairs, select, GetDifficultyInfo, IsInInstance, GetInstanceInfo, UNKNOWN
	= date, pairs, select, GetDifficultyInfo, IsInInstance, GetInstanceInfo, UNKNOWN;

local function GetRelativeDifficulty(group, checkDifficultyID)
	if not group then return end
	local difficultyID = group.difficultyID
	if difficultyID then
		if difficultyID == checkDifficultyID then
			return true;
		end
		local difficulties = group.difficulties
		if difficulties then
			for i=1,#difficulties do
				if difficulties[i] == checkDifficultyID then
					return true;
				end
			end
		end
		return false;
	end
	local parent = group.parent
	if parent then
		return GetRelativeDifficulty(group.sourceParent or parent, checkDifficultyID);
	else
		return true;
	end
end
app.GetRelativeDifficulty = GetRelativeDifficulty

-- Class Locals
local DifficultyColors = {
	[2] = "ff0070dd",
	[5] = "ff0070dd",
	[6] = "ff0070dd",
	[7] = "ff9d9d9d",
	[15] = "ff0070dd",
	[16] = "ffa335ee",
	[17] = "ff9d9d9d",
	[23] = "ffa335ee",
	[24] = "ffe6cc80",
	[33] = "ffe6cc80",
};
local DifficultyIcons = {
	[1] = app.asset("Difficulty_Normal"),
	[2] = app.asset("Difficulty_Heroic"),
	[3] = app.asset("Difficulty_Normal"),
	[4] = app.asset("Difficulty_Normal"),
	[5] = app.asset("Difficulty_Heroic"),
	[6] = app.asset("Difficulty_Heroic"),
	[7] = app.asset("Difficulty_LFR"),
	[8] = 618858,
	[9] = app.asset("Difficulty_Mythic"),
	[11] = app.asset("Difficulty_Heroic"),
	[12] = app.asset("Difficulty_Normal"),
	[14] = app.asset("Difficulty_Normal"),
	[15] = app.asset("Difficulty_Heroic"),
	[16] = app.asset("Difficulty_Mythic"),
	[17] = app.asset("Difficulty_LFR"),
	[18] = app.asset("Category_Event"),
	[23] = app.asset("Difficulty_Mythic"),
	[24] = app.asset("Difficulty_Timewalking"),
	[33] = app.asset("Difficulty_Timewalking"),
};
local DifficultyMap = {
	[1] = { 9, 148, 173, 201 },
	[2] = { 174 },
	[3] = { 175, 198 },
	[4] = { 176 },
	[9] = { 1 },
	[148] = { 1 },
	[173] = { 1 },
	[174] = { 2 },
	[175] = { 3 },
	[176] = { 4 },
	[198] = { 3 },
	[201] = { 1 },
};
local blacklistedDifficulties = {
	[3] = true,
	[4] = true,
	[5] = true,
	[6] = true,
};

-- Class Helpers
if not GetDifficultyInfo(3) then
	local difficultyData = {
		[1] = "Normal",
		[3] = "10-Player",
		[198] = "10-Player",
		[201] = "20-Player",
	};
	local oldGetDifficultyInfo = GetDifficultyInfo;
	GetDifficultyInfo = function(difficultyID)
		return difficultyData[difficultyID] or oldGetDifficultyInfo(difficultyID) or UNKNOWN;
	end
elseif not GetDifficultyInfo(7) then
	local difficultyData = {
		[7] = "Raid Finder",
	};
	local oldGetDifficultyInfo = GetDifficultyInfo;
	GetDifficultyInfo = function(difficultyID)
		return oldGetDifficultyInfo(difficultyID) or difficultyData[difficultyID] or UNKNOWN;
	end
end
local function GetDifficultyName(difficultyID)
	return GetDifficultyInfo(difficultyID) or UNKNOWN;
end

app.CreateDifficulty = app.CreateClass("Difficulty", "difficultyID", {
	["text"] = function(t)
		local parent = rawget(t, "parent")
		if parent and parent.instanceID then return t.name; end
		local instanceParent = t.sourceParent or t.symParent
		return instanceParent and ("%s [%s]"):format(t.name, instanceParent.text or UNKNOWN) or t.name;
	end,
	["name"] = function(t)
		return GetDifficultyName(t.difficultyID);
	end,
	["icon"] = function(t)
		return DifficultyIcons[t.difficultyID] or app.asset("Difficulty_Multi");
	end,
	["trackable"] = app.ReturnTrue,
	["saved"] = function(t)
		return t.locks;
	end,
	["locks"] = function(t)
		local locks = t.parent and t.parent.locks;
		if locks then
			if t.parent.isLockoutShared and not (t.difficultyID == 7 or t.difficultyID == 17) then
				t.locks = locks.shared;
				return locks.shared;
			else
				-- Look for this difficulty's lockout.
				for difficultyKey, lock in pairs(locks) do
					if difficultyKey == "shared" then
						-- ignore this one
					elseif difficultyKey == t.difficultyID then
						t.locks = lock;
						return lock;
					end
				end
				local difficulties = t.difficulties;
				if difficulties then
					local diffLocks = {};
					-- Look for matching difficulty lockouts.
					for difficultyKey, lock in pairs(locks) do
						if contains(difficulties, difficultyKey) then
							diffLocks[difficultyKey] = lock;
						end
					end
					if #diffLocks > 0 then
						t.locks = diffLocks;
						return diffLocks;
					end
				end
			end
		end
	end,
	["difficulties"] = function(t)
		return DifficultyMap[t.difficultyID];
	end,
	["e"] = function(t)
		if t.difficultyID == 24 or t.difficultyID == 33 then
			return 1271;	-- TIMEWALKING event constant
		end
	end,
	["ignoreSourceLookup"] = app.ReturnTrue,
	["ShouldExcludeFromTooltip"] = function(t)
		local difficultyID = app.GetCurrentDifficultyID();
		if difficultyID > 0 then
			if t.difficultyID == difficultyID then
				return false;
			end
			local difficulties = t.difficulties;
			if difficulties and containsValue(difficulties, difficultyID) then
				return false;
			end
			return true;
		end
		return app.BaseClass.__class.ShouldExcludeFromTooltip(t)
	end,
},
"Group", {
	["name"] = function(t)
		local difficultyID = t.difficultyID;
		local name = GetDifficultyInfo(difficultyID);
		if not name or name == UNKNOWN then
			local difficulties = t.difficulties;
			if difficulties then
				return GetDifficultyName(difficulties[1]) .. "+";
			end
		end
		return name;
	end,
	["title"] = function(t)
		local difficulties = t.difficulties;
		if difficulties then
			local title = GetDifficultyName(difficulties[1])
			for i=2,#difficulties do
				title = title.." / "..GetDifficultyName(difficulties[i]);
			end
			return title;
		end
	end,
	["sourceText"] = function(t)
		local difficulties = t.difficulties;
		if difficulties then
			local dict,count = {},0;
			for i,difficultyID in ipairs(difficulties) do
				if not blacklistedDifficulties[difficultyID] then
					dict[difficultyID] = 1;
					count = count + 1;
				end
			end
			local title = GetDifficultyName(difficulties[1]);
			if count > 0 then
				for i=2,#difficulties do
					local difficultyID = difficulties[i];
					if not blacklistedDifficulties[difficultyID] then
						title = title.." / "..GetDifficultyName(difficultyID);
					end
				end
			else
				-- Blacklisting didn't simplify it.
				for i=2,#difficulties do
					title = title.." / "..GetDifficultyName(difficulties[i]);
				end
			end
			return title;
		end
	end,
}, (function(t) return t.difficulties; end));

-- External Functionality
local function SummarizeLockout(tooltipInfo, lockout, leftText, color)
	tinsert(tooltipInfo, {
		left = leftText,
		right = date("%c", lockout.reset),
		color = color,
	});
	for encounterIter,encounter in pairs(lockout.encounters) do
		tinsert(tooltipInfo, {
			left = " " .. encounter.name,
			right = app.GetCompletionIcon(encounter.isKilled),
		});
	end
end
app.AddEventHandler("OnLoad", function()
	app.Settings.CreateInformationType("locks", {
		priority = 10000,
		text = L.LOCKOUTS,
		Process = function(t, reference, tooltipInfo)
			if reference.instanceID then
				tinsert(tooltipInfo, {
					left = L.LOCKOUT,
					right = L[reference.isLockoutShared and "SHARED" or "SPLIT"],
				});
			end
			local locks = reference.locks;
			if locks then
				if locks.encounters then
					SummarizeLockout(tooltipInfo, locks, L.RESETS);
				elseif reference.isLockoutShared and locks.shared then
					SummarizeLockout(tooltipInfo, locks.shared, L.SHARED);
				else
					for key,lockout in pairs(locks) do
						if key == "shared" then
							-- Skip
						else
							SummarizeLockout(tooltipInfo, lockout, GetDifficultyInfo(key) or LOCK, DifficultyColors[key] or app.Colors.DefaultDifficulty);
						end
					end
				end
			end
		end,
	});
end);
local CurrentDifficultyRemapper ={
	[205] = 1,	-- Follower Dungeon -> Normal Dungeon
	[220] = 220,	-- Story -> Story (currently only available to defeat during a quest and provides no loot...)
}
app.GetCurrentDifficultyID = function()
	if not IsInInstance() then return 0 end
	local diff = select(3, GetInstanceInfo()) or 0
	return CurrentDifficultyRemapper[diff] or diff
end
app.GetRelativeDifficultyIcon = function(t)
	return DifficultyIcons[GetRelativeValue(t, "difficultyID") or 1];
end
end
