-- #if ANYCLASSIC
if true then return end
-- #endif
-- Retail trainer requirements that SkillLineAbility does not store.
-- Values are on the expansion skill line (e.g. Cataclysm Inscription 1-75).
local recipeDB = RecipeDBConditional;

-- Inscription
recipeDB[86640].learnedAt = 25;	-- Lord Rottington's Pressed Wisp Book
recipeDB[86648].learnedAt = 30;	-- Key to the Planes
recipeDB[86403].learnedAt = 50;	-- Felfire Inscription
recipeDB[89244].learnedAt = 50;	-- Forged Documents [A]
recipeDB[86654].learnedAt = 50;	-- Forged Documents [H]