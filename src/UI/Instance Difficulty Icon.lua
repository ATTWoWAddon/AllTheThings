local _, app = ...

if not app.IsRetail then return end

-- Returns the Texture name to be swapped based on the DifficultyID. Defaults to "NormalTexture"
local TextureNameByDifficultyID = setmetatable({
	[2] = "HeroicTexture",
	[8] = "MythicTexture",
}, { __index = function(t,key) return "NormalTexture" end})
-- HeroicTexture
TextureNameByDifficultyID[5] = TextureNameByDifficultyID[2]
TextureNameByDifficultyID[6] = TextureNameByDifficultyID[2]
TextureNameByDifficultyID[11] = TextureNameByDifficultyID[2]
TextureNameByDifficultyID[15] = TextureNameByDifficultyID[2]
-- MythicTexture
TextureNameByDifficultyID[9] = TextureNameByDifficultyID[8]
TextureNameByDifficultyID[16] = TextureNameByDifficultyID[8]
TextureNameByDifficultyID[23] = TextureNameByDifficultyID[8]

local function changeMinimapSkull()
	local _, instanceType, difficultyID = GetInstanceInfo()
	if difficultyID == 0 or (instanceType ~= "party" and instanceType ~= "raid") then return end

	local minimapClusterInstanceDifficulty = MinimapCluster and MinimapCluster.InstanceDifficulty
	if not minimapClusterInstanceDifficulty then return end

	local diff = app.CreateDifficulty(difficultyID)
	local textureKey = TextureNameByDifficultyID[difficultyID]
	minimapClusterInstanceDifficulty.Default[textureKey]:SetTexture(diff.icon)
	minimapClusterInstanceDifficulty.Guild.Instance[textureKey]:SetTexture(diff.icon)
end

-- 2 second delayed callback to check the instance info and change the icon
local function CallbackDifficultyIconUpdate()
	app.CallbackHandlers.DelayedCallback(changeMinimapSkull, 2)
end

-- when this event fires, the difficultyID can still be detected as 0
app.AddEventRegistration("UPDATE_INSTANCE_INFO", CallbackDifficultyIconUpdate)
app.AddEventRegistration("RAID_INSTANCE_WELCOME", CallbackDifficultyIconUpdate)
