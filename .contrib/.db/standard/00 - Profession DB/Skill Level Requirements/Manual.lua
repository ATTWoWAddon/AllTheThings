-- #if NOT ANYCLASSIC
if true then return end
-- #endif
local recipeDB = RecipeDBConditional;

-- Alchemy
-- #if AFTER TBC
recipeDB[17632].learnedAt = 350;	-- Alchemist Stone
-- #endif

-- Blacksmithing
recipeDB[9788].learnedAt = 200;	-- Armorsmith
recipeDB[17041].learnedAt = 200;	-- Master Axesmith
recipeDB[17040].learnedAt = 200;	-- Master Hammersmith
recipeDB[17039].learnedAt = 200;	-- Master Swordsmith
recipeDB[9787].learnedAt = 200;	-- Weaponsmith
recipeDB[429348].learnedAt = 150;	-- Shifting Silver Breastplate

-- Enchanting
-- No changes needed.

-- Engineering
recipeDB[20219].learnedAt = 200;	-- Gnomish Engineer
recipeDB[20222].learnedAt = 200;	-- Goblin Engineer
-- #if BEFORE WRATH
recipeDB[8895].learnedAt = 130;	-- Goblin Rocket Boots
-- #endif

-- Herbalism
-- No changes needed.

-- Jewelcrafting
-- #if AFTER CATA
recipeDB[53946].learnedAt = 390;	-- Brilliant Scarlet Ruby
recipeDB[53981].learnedAt = 390;	-- Lucent Monarch Topaz
recipeDB[28933].learnedAt = 315;	-- Shifting Shadow Draenite
recipeDB[28944].learnedAt = 305;	-- Smooth Golden Draenite
-- #endif

-- Leatherworking
recipeDB[10656].learnedAt = 225;	-- Dragonscale Leatherworking
recipeDB[10658].learnedAt = 225;	-- Elemental Leatherworking
recipeDB[10660].learnedAt = 225;	-- Tribal Leatherworking
-- #if AFTER TBC
recipeDB[45117].learnedAt = 360;	-- Bag of Many Hides
-- #endif
recipeDB[429869].learnedAt = 150;	-- Void-Touched Leather Gauntlets
recipeDB[429354].learnedAt = 150;	-- Void-Touched Leather Gloves

-- Mining
-- No changes needed.

-- Skinning
-- No changes needed.

-- Tailoring
-- No changes needed.

-- Cooking
recipeDB[3413].learnedAt = 125;	-- Cooking (Expert)
recipeDB[18260].learnedAt = 200;	-- Cooking (Artisan)
-- #if AFTER TBC
recipeDB[2795].learnedAt = 10;	-- Beer Basted Boar Ribs
-- #if BEFORE WRATH
recipeDB[33359].learnedAt = 300;	-- Cooking (Master)
-- #endif
-- #endif
-- #if AFTER WRATH
recipeDB[2543].learnedAt = 50;	-- Westfall Stew
-- #endif
-- #if AFTER MOP
recipeDB[126654].learnedAt = 600;	-- Four Senses Brew
recipeDB[126655].learnedAt = 600;	-- Banana Infused Rum
recipeDB[145305].learnedAt = 600;	-- Seasoned Pomfruit Slices
recipeDB[145307].learnedAt = 600;	-- Spiced Blossom Soup
recipeDB[145309].learnedAt = 600;	-- Farmer's Delight
recipeDB[145310].learnedAt = 600;	-- Stuffed Lushrooms
recipeDB[145311].learnedAt = 600;	-- Fluffy Silkfeather Omelet
-- #endif

-- First Aid
recipeDB[7924].learnedAt = 125;	-- First Aid (Expert)
recipeDB[10846].learnedAt = 200;	-- First Aid (Artisan)
-- #if AFTER TBC
-- #if BEFORE WRATH
recipeDB[27028].learnedAt = 300;	-- First Aid (Master)
-- #endif
-- #endif

-- Fishing
recipeDB[7732].learnedAt = 125;	-- Fishing (Expert)
recipeDB[18248].learnedAt = 200;	-- Fishing (Artisan)
