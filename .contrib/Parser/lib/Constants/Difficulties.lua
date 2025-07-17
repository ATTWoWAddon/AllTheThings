-- Difficulties
DIFFICULTY = {
	SCENARIO = {
		NORMAL = 12,
		HEROIC = 11,
	},
	DUNGEON = {
		NORMAL = 1,
		HEROIC = 2,
		MYTHIC = 23,
		TIMEWALKING = 24,
		CHALLENGE_MODE = 8,
		KEYSTONE = 8,
		--FOLLOWER = 205,
	},
	RAID = {
		LFR = 17,
		NORMAL = 14,
		HEROIC = 15,
		MYTHIC = 16,
	},
	LEGACY_RAID = {
		PLAYER10_NORMAL = 3,
		PLAYER25_NORMAL = 4,
		PLAYER10_HEROIC = 5,
		PLAYER25_HEROIC = 6,
		PLAYER20 = 148,
		PLAYER40 = 9,
		FLEXIBLE = 14,	-- NOTE: This is the same as "Normal" in modern raids, thanks Blizzard.
		FINDER = 7,
	},
	SOD = {
		PLAYER10 = 198,
		PLAYER20 = 201,
	},
};

-- Helper Functions
local multiDifficulties,uniqueDifficultyID = {}, 100;
function GetOrCreateMultiDifficulty(ids)
	if type(ids) == "table" then
		-- Returns a unique DifficultyID and the original ids table as the second argument.
		-- If the ids (pointer) is already in the table, then return that.
		for difficultyID,difficulties in pairs(multiDifficulties) do
			if ids == difficulties then
				return difficultyID, ids;
			end
		end

		-- Cache a new difficultyID.
		local difficultyID = uniqueDifficultyID;
		uniqueDifficultyID = difficultyID + 1;

		-- Assign the difficulties.
		multiDifficulties[difficultyID] = ids;
		return difficultyID, ids;
	else
		return ids, multiDifficulties[ids];
	end
end

-- Dungeon Multi-Difficulties
DIFFICULTY.DUNGEON.MULTI = {
	ALL = GetOrCreateMultiDifficulty({
		--DIFFICULTY.DUNGEON.FOLLOWER,
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.DUNGEON.MYTHIC
	}),
	NORMAL_PLUS = GetOrCreateMultiDifficulty({
		--DIFFICULTY.DUNGEON.FOLLOWER,
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.DUNGEON.MYTHIC
	}),
	NORMAL_HEROIC = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
	}),
	NORMAL_MYTHIC = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.MYTHIC
	}),
	HEROIC_PLUS = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.DUNGEON.MYTHIC
	}),
	MYTHIC_KEYSTONE = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.MYTHIC,
		DIFFICULTY.DUNGEON.KEYSTONE
	}),
};

-- Special Dungeon Difficulties to accommodate seasonal changes to older dungeons
DIFFICULTY.DUNGEON.SEASONAL = {
	TWWS2_CHAMPIONTRACK = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.KEYSTONE
	}),
	TWWS2_HEROTRACK = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.KEYSTONE
	}),
	TWWS2_MYTHTRACK = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.KEYSTONE
	}),
}

-- Raid Multi-Difficulties
DIFFICULTY.RAID.MULTI = {
	ALL = GetOrCreateMultiDifficulty({
		DIFFICULTY.RAID.LFR,
		DIFFICULTY.RAID.NORMAL,
		DIFFICULTY.RAID.HEROIC,
		DIFFICULTY.RAID.MYTHIC
	}),
	NORMAL_PLUS = GetOrCreateMultiDifficulty({
		DIFFICULTY.RAID.NORMAL,
		DIFFICULTY.RAID.HEROIC,
		DIFFICULTY.RAID.MYTHIC
	}),
	NORMAL_HEROIC = GetOrCreateMultiDifficulty({
		DIFFICULTY.RAID.NORMAL,
		DIFFICULTY.RAID.HEROIC,
	}),
	HEROIC_PLUS = GetOrCreateMultiDifficulty({
		DIFFICULTY.RAID.HEROIC,
		DIFFICULTY.RAID.MYTHIC,
	}),
	ALL_WITHOUT_MYTHIC = GetOrCreateMultiDifficulty({
		DIFFICULTY.RAID.LFR,
		DIFFICULTY.RAID.NORMAL,
		DIFFICULTY.RAID.HEROIC,
	}),
};

-- Legacy Raid Multi-Difficulties
DIFFICULTY.LEGACY_RAID.MULTI = {
	ALL = GetOrCreateMultiDifficulty({
		DIFFICULTY.LEGACY_RAID.FINDER,
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC
	}),
	NORMAL_HEROIC = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC
	}),
	NORMAL = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL,
	}),
	HEROIC = GetOrCreateMultiDifficulty({
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC
	}),
	ALL_PLUS_FLEX = GetOrCreateMultiDifficulty({
		DIFFICULTY.LEGACY_RAID.FINDER,
		DIFFICULTY.LEGACY_RAID.FLEXIBLE,
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC
	}),
	NORMAL_HEROIC_PLUS_FLEX = GetOrCreateMultiDifficulty({
		DIFFICULTY.LEGACY_RAID.FLEXIBLE,
		DIFFICULTY.DUNGEON.NORMAL,
		DIFFICULTY.DUNGEON.HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC,
		DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC
	}),
	PLAYER10 = GetOrCreateMultiDifficulty({
		DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC,
	}),
	PLAYER25 = GetOrCreateMultiDifficulty({
		DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL,
		DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC
	}),
};

-- Helper Tables
DifficultyDB = {
	[DIFFICULTY.DUNGEON.NORMAL] = { icon = 311236, modID = 1 },
	[DIFFICULTY.DUNGEON.HEROIC] = { icon = 311235, modID = 2 },
	[DIFFICULTY.DUNGEON.CHALLENGE_MODE] = { icon = 618858, modID = 1 },
	[DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL] = { icon = 311236, modID = 1 },
	[DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL] = { icon = 311236, modID = 1 },
	[DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC] = { icon = 311235, modID = 1 },
	[DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC] = { icon = 311235, modID = 1 },
	[DIFFICULTY.LEGACY_RAID.FLEXIBLE] = { icon = 311236, modID = 1 },
	[DIFFICULTY.LEGACY_RAID.FINDER] = { icon = [[~_.asset("Category_CommonBossDrop")]], modID = 1 },
	[DIFFICULTY.RAID.NORMAL] = { icon = 311236, modID = 3 },
	[DIFFICULTY.RAID.HEROIC] = { icon = 311235, modID = 5 },
	[DIFFICULTY.RAID.MYTHIC] = { icon = 311237, modID = 6 },
	[DIFFICULTY.RAID.LFR] = { icon = 308480, modID = 4 },
	[18] = { icon = 311236, modID = 1 },	-- Event unused?
	[DIFFICULTY.DUNGEON.MYTHIC] = { icon = 311237, modID = 23 },
	[DIFFICULTY.DUNGEON.TIMEWALKING] = { icon = 311238, modID = 22 },
	[33] = { icon = 311238, modID = 22 },	-- unused?

	-- What this does is tell the shortcut to take the id from the first element and use the remaining elements as the difficulties list.
	-- This will cause the display to appear as the original difficulty in the addon, but also provide the ability for it to encompass multiple. (Cata -> MOP raids)
	[DIFFICULTY.LEGACY_RAID.MULTI.NORMAL] = { simplify = true },
	[DIFFICULTY.LEGACY_RAID.MULTI.HEROIC] = { simplify = true },
	[DIFFICULTY.DUNGEON.MULTI.MYTHIC_KEYSTONE] = { simplify = true },

	-- Special Seasonal Difficulties to act as existing difficulties with alternate modID assignments
	[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_CHAMPIONTRACK] = { icon = 311236, modID = 16, simplify = true },
	[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_HEROTRACK] = { icon = 311235, modID = 35, simplify = true },
	[DIFFICULTY.DUNGEON.SEASONAL.TWWS2_MYTHTRACK] = { icon = 311237, modID = 162, simplify = true },
};