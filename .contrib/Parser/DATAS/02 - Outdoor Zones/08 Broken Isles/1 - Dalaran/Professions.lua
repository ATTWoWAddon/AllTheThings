---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local ALCHEMICAL_BONDING_AGENT = 138961;	-- Alchemical Bonding Agent
local AURIPHAGIC_SARDINE = 138957;			-- Auriphagic Sardine
local GLOB_OF_REALLY_STICKY_GLUE = 138958;	-- Glob of Really Sticky Glue
local HYPERMAGNETIC_LURE = 138956;			-- Hypermagnetic Lure
local MICRO_VORTEX_GENERATOR = 138959;		-- Micro-Vortex Generator
local STARFISH_ON_A_STRING = 138962;		-- Starfish on a String
local TINY_LITTLE_GRABBING_APPARATUS = 138963;	-- Tiny Little Grabbing Apparatus
local WISH_CRYSTAL = 138960;				-- Wish Crystal
local ALL_LURES = {
	ALCHEMICAL_BONDING_AGENT,
	AURIPHAGIC_SARDINE,
	GLOB_OF_REALLY_STICKY_GLUE,
	HYPERMAGNETIC_LURE,
	MICRO_VORTEX_GENERATOR,
	STARFISH_ON_A_STRING,
	TINY_LITTLE_GRABBING_APPARATUS,
	WISH_CRYSTAL,
};
local COST_BY_EXCLUDING_LURES = function(...)
	local cost = {};
	for i,lure in ipairs(excludeMany(ALL_LURES, ...)) do
		table.insert(cost, { "i", lure, 1});
	end
	if #cost > 0 then
		return cost;
	end
end
local COIN_BY_LURE = function(index, itemID, ...)
	local coin = { ["cost"] = COST_BY_EXCLUDING_LURES(...) };
	if itemID then rawset(coin, "itemID", itemID); end
	return crit(index, coin);
end

-- NOT CATABLE FOR EACH LURE
-- ALCHEMICAL_BONDING_AGENT
--[[
Advisor Vandros' Coin
Cyana Nightglaive's Coin
Falara Nightsong's Coin
Gallywix's Coin-on-a-String
Genn Greymane's Coin
God-King Skovald's Fel-Tainted Coin
Malfurion's Coin
Nathanos Blightcaller's Coin
Okuna Longtusk's Doubloon
Queen Azshara's Royal Seal
Senegos' Ancient Coin
Spiritwalker Ebonhorn's Coin
]]
-- AURIPHAGIC_SARDINE
--[[
Blingtron's Botcoin
First Arcanist Thalyssra's Coin
Gallywix's Coin-on-a-String
Kayn Sunfury's Coin
Lunara's Coin
Malfurion's Coin
Spiritwalker Ebonhorn's Coin
]]
-- GLOB_OF_REALLY_STICKY_GLUE
--[[
Addie Fizzlebog's Coin
Advisor Vandros' Coin
Altruis the Sufferer's Coin
Blingtron's Botcoin
Gallywix's Coin-on-a-String
Genn Greymane's Coin
God-King Skovald's Fel-Tainted Coin
Jace Darkweaver's Coin
Jarod Shadowsong's Coin
Koda's Sigil
Magistrix Elisande's Coin
Murky's Coin
Oculeth's Vanishing Coin
Penelope Heathrow's Allowance
Tyrande's Coin
]]
-- HYPERMAGNETIC_LURE
--[[
Lunara's Coin
Senegos' Ancient Coin
]]
-- MICRO_VORTEX_GENERATOR
--[[
Blingtron's Botcoin
First Arcanist Thalyssra's Coin
Hemet Nesingwary's Bullet
Izal Whitemoon's Coin
King Mrgl-Mrgl's Coin
Magistrix Elisande's Coin
Prince Farondis's Royal Seal
Senegos' Ancient Coin
Torok Bloodtotem's Coin
]]
-- STARFISH_ON_A_STRING
--[[
Blingtron's Botcoin
Gul'dan's Coin
Korvas Bloodthorn's Coin
Kur'talos Ravencrest's Spectral Coin
Murky's Coin
Remulos' Sigil
Sir Finley Mrrgglton's Coin
]]
-- TINY_LITTLE_GRABBING_APPARATUS
--[[
Tyrande's Coin
Kur'talos Ravencrest's Spectral Coin
Gul'dan's Coin
Hemet Nesingwary's Bullet
Illidan's Coin
Jace Darkweaver's Coin
Jarod Shadowsong's Coin
Nathanos Blightcaller's Coin
Genn Greymane's Coin
]]
-- WISH_CRYSTAL
--[[
Advisor Vandros' Coin
Cyana Nightglaive's Coin
Hemet Nesingwary's Bullet
Illidan's Coin
Jace Darkweaver's Coin
Jarod Shadowsong's Coin
Kayn Sunfury's Coin
King Mrgl-Mrgl's Coin
Kur'talos Ravencrest's Spectral Coin
Nathanos Blightcaller's Coin
Oculeth's Vanishing Coin
Stellagosa's Silver Coin
The Coin
Torok Bloodtotem's Coin
Tyrande's Coin
Vydhar's Wooden Nickel
]]

local THE_WISH_REMOVER = {
	COIN_BY_LURE(30722, 138894, WISH_CRYSTAL),	-- Stellagosa's Silver Coin
	COIN_BY_LURE(30723, 138892, MICRO_VORTEX_GENERATOR),	-- Prince Farondis's Royal Seal
	COIN_BY_LURE(30724, 138893),	-- Runas' Last Copper
	COIN_BY_LURE(30725, 138895, ALCHEMICAL_BONDING_AGENT, HYPERMAGNETIC_LURE, MICRO_VORTEX_GENERATOR),	-- Senegos' Ancient Coin
	COIN_BY_LURE(30726, 138896, ALCHEMICAL_BONDING_AGENT),	-- Okuna Longtusk's Doubloon
	COIN_BY_LURE(30727, 138897),	-- Ooker's Dookat
	COIN_BY_LURE(30728, 138898),	-- Coin of Golk the Rumble
	COIN_BY_LURE(30729, 138899),	-- Daglop's Infernal Copper Coin
	COIN_BY_LURE(30730, 138901, GLOB_OF_REALLY_STICKY_GLUE, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Tyrande's Coin
	COIN_BY_LURE(30731, 138902, ALCHEMICAL_BONDING_AGENT, AURIPHAGIC_SARDINE),	-- Malfurion's Coin
	COIN_BY_LURE(30732, 138903, STARFISH_ON_A_STRING, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Kur'talos Ravencrest's Spectral Coin
	COIN_BY_LURE(30733, 138904, GLOB_OF_REALLY_STICKY_GLUE, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Jarod Shadowsong's Coin
	COIN_BY_LURE(30734, 138905, GLOB_OF_REALLY_STICKY_GLUE),	-- Penelope Heathrow's Allowance
	COIN_BY_LURE(30735, 138906, STARFISH_ON_A_STRING),	-- Remulos' Sigil
	COIN_BY_LURE(30736, 138907),	-- Elothir's Golden Leaf
	COIN_BY_LURE(30737, 138908, GLOB_OF_REALLY_STICKY_GLUE),	-- Koda's Sigil
	COIN_BY_LURE(30738, 138909, MICRO_VORTEX_GENERATOR, WISH_CRYSTAL),	-- King Mrgl-Mrgl's Coin
	COIN_BY_LURE(30739, 138910, MICRO_VORTEX_GENERATOR, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Hemet Nesingwary's Bullet
	COIN_BY_LURE(30740, 138911, GLOB_OF_REALLY_STICKY_GLUE, STARFISH_ON_A_STRING),	-- Murky's Coin
	COIN_BY_LURE(30741, 138912, ALCHEMICAL_BONDING_AGENT, AURIPHAGIC_SARDINE),	-- Spiritwalker Ebonhorn's Coin
	COIN_BY_LURE(30742, 138913, GLOB_OF_REALLY_STICKY_GLUE),	-- Addie Fizzlebog's Coin
	COIN_BY_LURE(30743, 138914),	-- Boomboom Brullingsworth's Coin
	COIN_BY_LURE(30744, 138915),	-- The Candleking's Candlecoin
	COIN_BY_LURE(30745, 138916, MICRO_VORTEX_GENERATOR, WISH_CRYSTAL),	-- Torok Bloodtotem's Coin
	COIN_BY_LURE(30746, 138917, ALCHEMICAL_BONDING_AGENT, GLOB_OF_REALLY_STICKY_GLUE),	-- God-King Skovald's Fel-Tainted Coin
	COIN_BY_LURE(30747, 138918, ALCHEMICAL_BONDING_AGENT, GLOB_OF_REALLY_STICKY_GLUE, TINY_LITTLE_GRABBING_APPARATUS),	-- Genn Greymane's Coin
	COIN_BY_LURE(30748, 138919, ALCHEMICAL_BONDING_AGENT, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Nathanos Blightcaller's Coin
	COIN_BY_LURE(30749, 138920),	-- Helya's Coin
	COIN_BY_LURE(30750, 138921, STARFISH_ON_A_STRING),	-- Sir Finley Mrrgglton's Coin
	COIN_BY_LURE(30751, 138922),	-- Havi's Coin
	COIN_BY_LURE(30752, 138923, WISH_CRYSTAL),	-- Vydhar's Wooden Nickel
	COIN_BY_LURE(30753, 138924),	-- Rax Sixtrigger's Gold-Painted Copper Coin
	COIN_BY_LURE(30754, 138925, AURIPHAGIC_SARDINE, MICRO_VORTEX_GENERATOR),	-- First Arcanist Thalyssra's Coin
	COIN_BY_LURE(30755, 138926, GLOB_OF_REALLY_STICKY_GLUE, MICRO_VORTEX_GENERATOR),	-- Magistrix Elisande's Coin
	COIN_BY_LURE(30756, 138927, GLOB_OF_REALLY_STICKY_GLUE, WISH_CRYSTAL),	-- Oculeth's Vanishing Coin
	COIN_BY_LURE(30757, 138928),	-- Ly'leth Lunastre's Family Crest
	COIN_BY_LURE(30758, 138929),	-- Pearlhunter Phin's Soggy Coin
	COIN_BY_LURE(30759, 138930, ALCHEMICAL_BONDING_AGENT, GLOB_OF_REALLY_STICKY_GLUE, WISH_CRYSTAL),	-- Advisor Vandros' Coin
	COIN_BY_LURE(30760, 138931, STARFISH_ON_A_STRING, TINY_LITTLE_GRABBING_APPARATUS),	-- Gul'dan's Coin
	COIN_BY_LURE(30761, 138932),	-- Yowlon's Mark
	COIN_BY_LURE(30762, 138933),	-- Allari the Souleater's Coin
	COIN_BY_LURE(30763, 138934, GLOB_OF_REALLY_STICKY_GLUE),	-- Altruis the Sufferer's Coin
	COIN_BY_LURE(30764, 138935, ALCHEMICAL_BONDING_AGENT, WISH_CRYSTAL),	-- Cyana Nightglaive's Coin
	COIN_BY_LURE(30765, 138936, ALCHEMICAL_BONDING_AGENT),	-- Falara Nightsong's Coin
	COIN_BY_LURE(30766, 138937, MICRO_VORTEX_GENERATOR),	-- Izal Whitemoon's Coin
	COIN_BY_LURE(30767, 138938, GLOB_OF_REALLY_STICKY_GLUE, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Jace Darkweaver's Coin
	COIN_BY_LURE(30768, 138939, AURIPHAGIC_SARDINE, WISH_CRYSTAL),	-- Kayn Sunfury's Coin
	COIN_BY_LURE(30769, 138940, STARFISH_ON_A_STRING),	-- Kor'vas Bloodthorn's Coin
	COIN_BY_LURE(30770, 138941, WISH_CRYSTAL),	-- The Coin
	COIN_BY_LURE(30771, 138942, AURIPHAGIC_SARDINE, GLOB_OF_REALLY_STICKY_GLUE, MICRO_VORTEX_GENERATOR, STARFISH_ON_A_STRING),	-- Blingtron's Botcoin
	COIN_BY_LURE(30772, 138943),	-- Lady Liadrin's Coin
	COIN_BY_LURE(30773, 138944, AURIPHAGIC_SARDINE, HYPERMAGNETIC_LURE),	-- Lunara's Coin
	COIN_BY_LURE(30774, 138945, TINY_LITTLE_GRABBING_APPARATUS, WISH_CRYSTAL),	-- Illidan's Coin
	COIN_BY_LURE(30775, 138946, ALCHEMICAL_BONDING_AGENT),	-- Queen Azshara's Royal Seal
	COIN_BY_LURE(30776, 138947, ALCHEMICAL_BONDING_AGENT, AURIPHAGIC_SARDINE, GLOB_OF_REALLY_STICKY_GLUE),	-- Gallywix's Coin-on-a-String
	COIN_BY_LURE(30777, 138948),	-- Li Li's Coin
};

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(PROFESSIONS, {
				prof(BLACKSMITHING, {
					n(92183, {	-- Alard Schmied <Blacksmithing Trainer>
						["coord"] = { 45.0, 29.6, LEGION_DALARAN },
						["groups"] = {
							r(239415, {["timeline"] = {ADDED_7_2_0}}),	-- Rethu's Incessant Courage (RECIPE!)
						},
					}),
				}),
				prof(COOKING, {
					n(93536, {	-- Awilo Lon'gomba <Cooking Trainer>
						["coord"] = { 69.8, 38.6, LEGION_DALARAN },
						["races"] = HORDE_ONLY,
						["groups"] = {
							r(195128, {	-- Cooking (Legion Master)
								["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
								["collectible"] = false,
							}),
							applyclassicphase(BFA_PHASE_ONE, r(264644, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Cooking
						},
					}),
					n(99330, {	-- Katherine Lee <Cooking Trainer>
						["coord"] = { 44.0, 66.0, LEGION_DALARAN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							r(195128, {	-- Cooking (Legion Master)
								["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
								["collectible"] = false,
							}),
							applyclassicphase(BFA_PHASE_ONE, r(264644, {["timeline"] = {ADDED_8_0_1}})),	-- Legion Cooking
						},
					}),
					n(101846, {	-- Nomi
						["description"] = "Takes various meat, fish, and other reagents for Work Orders (similar to the Draenor garrison), 5 at a time. He can maintain a maximum of 24 work orders at one time.\n\nEach Work Order takes 4 hours to complete. After a Work Order (or multiple Work Orders) complete, you will receive a recipe, meat/fish, Badly Burnt Food (often), or some combination of these when you collect them from the Test Kitchen Results table.\n\nThe Work Order options that Nomi gives you are based on the materials you have in your inventory (your bags, bank, and reagent bank). You can queue up all work orders with one material, or you can use multiple different materials for any number of Work Orders, as long as the total Work Orders active is maximum 24.",
						["groups"] = appendAllGroups(
							sharedData({["cost"]={{"i",124119,5}}}, {	-- Big Gamy Ribs
								i(133835),	-- Recipe: Spiced Rib Roast [Rank 2] (RECIPE!)
								i(133855),	-- Recipe: Spiced Rib Roast [Rank 3] (RECIPE!)
								i(133829),	-- Recipe: Hearty Feast [Rank 1] (RECIPE!)
								i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
								i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
								i(133836),	-- Recipe: Leybeque Ribs [Rank 2] (RECIPE!)
								i(133856),	-- Recipe: Leybeque Ribs [Rank 3] (RECIPE!)
								i(133821),	-- Recipe: The Hungry Magister [Rank 1] (RECIPE!)
								i(133841),	-- Recipe: The Hungry Magister [Rank 2] (RECIPE!)
								i(133861),	-- Recipe: The Hungry Magister [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124112,5}}}, {	-- Black Barracuda
								i(133838),	-- Recipe: Barracuda Mrglgagh [Rank 2] (RECIPE!)
								i(133858),	-- Recipe: Barracuda Mrglgagh [Rank 3] (RECIPE!)
								i(133825),	-- Recipe: Fishbrul Special [Rank 1] (RECIPE!)
								i(133845),	-- Recipe: Fishbrul Special [Rank 2] (RECIPE!)
								i(133865),	-- Recipe: Fishbrul Special [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
								i(133823),	-- Recipe: Nightborne Delicacy Platter [Rank 1] (RECIPE!)
								i(133843),	-- Recipe: Nightborne Delicacy Platter [Rank 2] (RECIPE!)
								i(133863),	-- Recipe: Nightborne Delicacy Platter [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124107,5}}}, {	-- Cursed Queenfish
								i(133848),	-- Recipe: Fighter Chow [Rank 2] (RECIPE!)
								i(133868),	-- Recipe: Fighter Chow [Rank 3] (RECIPE!)
								i(133825),	-- Recipe: Fishbrul Special [Rank 1] (RECIPE!)
								i(133845),	-- Recipe: Fishbrul Special [Rank 2] (RECIPE!)
								i(133865),	-- Recipe: Fishbrul Special [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124118,5}}}, {	-- Fatty Bearsteak
								i(133847),	-- Recipe: Bear Tartare [Rank 2] (RECIPE!)
								i(133867),	-- Recipe: Bear Tartare [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124109,5}}}, {	-- Highmountain Salmon
								i(133840),	-- Recipe: Drogbar-Style Salmon [Rank 2] (RECIPE!)
								i(133860),	-- Recipe: Drogbar-Style Salmon [Rank 3] (RECIPE!)
								i(133825),	-- Recipe: Fishbrul Special [Rank 1] (RECIPE!)
								i(133845),	-- Recipe: Fishbrul Special [Rank 2] (RECIPE!)
								i(133865),	-- Recipe: Fishbrul Special [Rank 3] (RECIPE!)
								i(133821),	-- Recipe: The Hungry Magister [Rank 1] (RECIPE!)
								i(133841),	-- Recipe: The Hungry Magister [Rank 2] (RECIPE!)
								i(133861),	-- Recipe: The Hungry Magister [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124117,5}}}, {	-- Lean Steak
								i(133831),	-- Recipe: Salt and Pepper Shank [Rank 2] (RECIPE!)
								i(133851),	-- Recipe: Salt and Pepper Shank [Rank 3] (RECIPE!)
								i(133829),	-- Recipe: Hearty Feast [Rank 1] (RECIPE!)
								i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
								i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
								i(133837),	-- Recipe: Suramar Surf and Turf [Rank 2] (RECIPE!)
								i(133857),	-- Recipe: Suramar Surf and Turf [Rank 3] (RECIPE!)
								i(133822),	-- Recipe: Azshari Salad [Rank 1] (RECIPE!)
								i(133842),	-- Recipe: Azshari Salad [Rank 2] (RECIPE!)
								i(133862),	-- Recipe: Azshari Salad [Rank 3] (RECIPE!)
								i(133836),	-- Recipe: Leybeque Ribs [Rank 2] (RECIPE!)
								i(133856),	-- Recipe: Leybeque Ribs [Rank 3] (RECIPE!)
								i(133821),	-- Recipe: The Hungry Magister [Rank 1] (RECIPE!)
								i(133841),	-- Recipe: The Hungry Magister [Rank 2] (RECIPE!)
								i(133861),	-- Recipe: The Hungry Magister [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124120,5}}}, {	-- Leyblood
								i(133838),	-- Recipe: Barracuda Mrglgagh [Rank 2] (RECIPE!)
								i(133858),	-- Recipe: Barracuda Mrglgagh [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124108,5}}}, {	-- Mossgill Perch
								i(133832),	-- Recipe: Deep-Fried Mossgill [Rank 2] (RECIPE!)
								i(133852),	-- Recipe: Deep-Fried Mossgill [Rank 3] (RECIPE!)
								i(133829),	-- Recipe: Hearty Feast [Rank 1] (RECIPE!)
								i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
								i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
								i(133825),	-- Recipe: Fishbrul Special [Rank 1] (RECIPE!)
								i(133845),	-- Recipe: Fishbrul Special [Rank 2] (RECIPE!)
								i(133865),	-- Recipe: Fishbrul Special [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124111,5}}}, {	-- Runescale Koi
								i(133839),	-- Recipe: Koi-Scented Stormray [Rank 2] (RECIPE!)
								i(133859),	-- Recipe: Koi-Scented Stormray [Rank 3] (RECIPE!)
								i(133837),	-- Recipe: Suramar Surf and Turf [Rank 2] (RECIPE!)
								i(133857),	-- Recipe: Suramar Surf and Turf [Rank 3] (RECIPE!)
								i(133822),	-- Recipe: Azshari Salad [Rank 1] (RECIPE!)
								i(133842),	-- Recipe: Azshari Salad [Rank 2] (RECIPE!)
								i(133862),	-- Recipe: Azshari Salad [Rank 3] (RECIPE!)
								i(133824),	-- Recipe: Seed-Battered Fish Plate [Rank 1] (RECIPE!)
								i(133844),	-- Recipe: Seed-Battered Fish Plate [Rank 2] (RECIPE!)
								i(133864),	-- Recipe: Seed-Battered Fish Plate [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",133607,5}}}, {	-- Silver Mackerel
								i(133846),	-- Recipe: Dried Mackerel Strips [Rank 2] (RECIPE!)
								i(133866),	-- Recipe: Dried Mackerel Strips [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",133680,5}}}, {	-- Slice of Bacon
								i(133871),	-- Recipe: Crispy Bacon [Rank 1] (RECIPE!)
								i(133872),	-- Recipe: Crispy Bacon [Rank 2] (RECIPE!)
								i(133873),	-- Recipe: Crispy Bacon [Rank 3] (RECIPE!)
								i(133829),	-- Recipe: Hearty Feast [Rank 1] (RECIPE!)
								i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
								i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124110,5}}}, {	-- Stormray
								i(133833),	-- Recipe: Pickled Stormray [Rank 2] (RECIPE!)
								i(133853),	-- Recipe: Pickled Stormray [Rank 3] (RECIPE!)
								i(133829),	-- Recipe: Hearty Feast [Rank 1] (RECIPE)
								i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE)
								i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE)
								i(133839),	-- Recipe: Koi-Scented Stormray [Rank 2] (RECIPE!)
								i(133859),	-- Recipe: Koi-Scented Stormray [Rank 3] (RECIPE!)
								i(133824),	-- Recipe: Seed-Battered Fish Plate [Rank 1] (RECIPE!)
								i(133844),	-- Recipe: Seed-Battered Fish Plate [Rank 2] (RECIPE!)
								i(133864),	-- Recipe: Seed-Battered Fish Plate [Rank 3] (RECIPE!)
								i(133830),	-- Recipe: Lavish Suramar Feast [Rank 1] (RECIPE!)
								i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
								i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
							}),
							sharedData({["cost"]={{"i",124121,5}}}, {	-- Wildfowl Egg
								i(133834),	-- Recipe: Faronaar Fizz [Rank 2] (RECIPE!)
								i(133854),	-- Recipe: Faronaar Fizz [Rank 3] (RECIPE!)
								i(133829),	-- Recipe: Hearty Feast [Rank 1] (RECIPE!)
								i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
								i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
								i(133823),	-- Recipe: Nightborne Delicacy Platter [Rank 1] (RECIPE!)
								i(133843),	-- Recipe: Nightborne Delicacy Platter [Rank 2] (RECIPE!)
								i(133863),	-- Recipe: Nightborne Delicacy Platter [Rank 3] (RECIPE!)
							}),
							sharedData({["sym"]={{"select","itemID",
									133842,	-- Recipe: Azshari Salad [Rank 2] (RECIPE!)
									133862,	-- Recipe: Azshari Salad [Rank 3] (RECIPE!)
									133838,	-- Recipe: Barracuda Mrglgagh [Rank 2] (RECIPE!)
									133858,	-- Recipe: Barracuda Mrglgagh [Rank 3] (RECIPE!)
									133847,	-- Recipe: Bear Tartare [Rank 2] (RECIPE!)
									133867,	-- Recipe: Bear Tartare [Rank 3] (RECIPE!)
									133872,	-- Recipe: Crispy Bacon [Rank 2] (RECIPE!)
									133873,	-- Recipe: Crispy Bacon [Rank 3] (RECIPE!)
									133832,	-- Recipe: Deep-Fried Mossgill [Rank 2] (RECIPE!)
									133852,	-- Recipe: Deep-Fried Mossgill [Rank 3] (RECIPE!)
									133846,	-- Recipe: Dried Mackerel Strips [Rank 2] (RECIPE!)
									133866,	-- Recipe: Dried Mackerel Strips [Rank 3] (RECIPE!)
									133840,	-- Recipe: Drogbar-Style Salmon [Rank 2] (RECIPE!)
									133860,	-- Recipe: Drogbar-Style Salmon [Rank 3] (RECIPE!)
									133834,	-- Recipe: Faronaar Fizz [Rank 2] (RECIPE!)
									133854,	-- Recipe: Faronaar Fizz [Rank 3] (RECIPE!)
									133848,	-- Recipe: Fighter Chow [Rank 2] (RECIPE!)
									133868,	-- Recipe: Fighter Chow [Rank 3] (RECIPE!)
									133845,	-- Recipe: Fishbrul Special [Rank 2] (RECIPE!)
									133865,	-- Recipe: Fishbrul Special [Rank 3] (RECIPE!)
									133849,	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
									133869,	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
									133839,	-- Recipe: Koi-Scented Stormray [Rank 2] (RECIPE!)
									133859,	-- Recipe: Koi-Scented Stormray [Rank 3] (RECIPE!)
									133850,	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
									133870,	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
									133836,	-- Recipe: Leybeque Ribs [Rank 2] (RECIPE!)
									133856,	-- Recipe: Leybeque Ribs [Rank 3] (RECIPE!)
									133843,	-- Recipe: Nightborne Delicacy Platter [Rank 2] (RECIPE!)
									133863,	-- Recipe: Nightborne Delicacy Platter [Rank 3] (RECIPE!)
									133833,	-- Recipe: Pickled Stormray [Rank 2] (RECIPE!)
									133853,	-- Recipe: Pickled Stormray [Rank 3] (RECIPE!)
									133831,	-- Recipe: Salt and Pepper Shank [Rank 2] (RECIPE!)
									133851,	-- Recipe: Salt and Pepper Shank [Rank 3] (RECIPE!)
									133844,	-- Recipe: Seed-Battered Fish Plate [Rank 2] (RECIPE!)
									133864,	-- Recipe: Seed-Battered Fish Plate [Rank 3] (RECIPE!)
									133835,	-- Recipe: Spiced Rib Roast [Rank 2] (RECIPE!)
									133855,	-- Recipe: Spiced Rib Roast [Rank 3] (RECIPE!)
									133837,	-- Recipe: Suramar Surf and Turf [Rank 2] (RECIPE!)
									133857,	-- Recipe: Suramar Surf and Turf [Rank 3] (RECIPE!)
									133841,	-- Recipe: The Hungry Magister [Rank 2] (RECIPE!)
									133861,	-- Recipe: The Hungry Magister [Rank 3] (RECIPE!)
							}}}, {
								header(HEADERS.Item, 151653, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Broken Isles Recipe Scrap
									["description"] = "Use 10 of Broken Isles Recipe Scrap to create an unlearned recipe.",
									["groups"] = sharedData({["cost"]={{"i",151653,10}}}, {	-- 10x Broken Isles Recipe Scrap
										i(133842),	-- Recipe: Azshari Salad [Rank 2] (RECIPE!)
										i(133862),	-- Recipe: Azshari Salad [Rank 3] (RECIPE!)
										i(133838),	-- Recipe: Barracuda Mrglgagh [Rank 2] (RECIPE!)
										i(133858),	-- Recipe: Barracuda Mrglgagh [Rank 3] (RECIPE!)
										i(133847),	-- Recipe: Bear Tartare [Rank 2] (RECIPE!)
										i(133867),	-- Recipe: Bear Tartare [Rank 3] (RECIPE!)
										i(133872),	-- Recipe: Crispy Bacon [Rank 2] (RECIPE!)
										i(133873),	-- Recipe: Crispy Bacon [Rank 3] (RECIPE!)
										i(133832),	-- Recipe: Deep-Fried Mossgill [Rank 2] (RECIPE!)
										i(133852),	-- Recipe: Deep-Fried Mossgill [Rank 3] (RECIPE!)
										i(133846),	-- Recipe: Dried Mackerel Strips [Rank 2] (RECIPE!)
										i(133866),	-- Recipe: Dried Mackerel Strips [Rank 3] (RECIPE!)
										i(133840),	-- Recipe: Drogbar-Style Salmon [Rank 2] (RECIPE!)
										i(133860),	-- Recipe: Drogbar-Style Salmon [Rank 3] (RECIPE!)
										i(133834),	-- Recipe: Faronaar Fizz [Rank 2] (RECIPE!)
										i(133854),	-- Recipe: Faronaar Fizz [Rank 3] (RECIPE!)
										i(133848),	-- Recipe: Fighter Chow [Rank 2] (RECIPE!)
										i(133868),	-- Recipe: Fighter Chow [Rank 3] (RECIPE!)
										i(133845),	-- Recipe: Fishbrul Special [Rank 2] (RECIPE!)
										i(133865),	-- Recipe: Fishbrul Special [Rank 3] (RECIPE!)
										i(133849),	-- Recipe: Hearty Feast [Rank 2] (RECIPE!)
										i(133869),	-- Recipe: Hearty Feast [Rank 3] (RECIPE!)
										i(133839),	-- Recipe: Koi-Scented Stormray [Rank 2] (RECIPE!)
										i(133859),	-- Recipe: Koi-Scented Stormray [Rank 3] (RECIPE!)
										i(133850),	-- Recipe: Lavish Suramar Feast [Rank 2] (RECIPE!)
										i(133870),	-- Recipe: Lavish Suramar Feast [Rank 3] (RECIPE!)
										i(133836),	-- Recipe: Leybeque Ribs [Rank 2] (RECIPE!)
										i(133856),	-- Recipe: Leybeque Ribs [Rank 3] (RECIPE!)
										i(133843),	-- Recipe: Nightborne Delicacy Platter [Rank 2] (RECIPE!)
										i(133863),	-- Recipe: Nightborne Delicacy Platter [Rank 3] (RECIPE!)
										i(133833),	-- Recipe: Pickled Stormray [Rank 2] (RECIPE!)
										i(133853),	-- Recipe: Pickled Stormray [Rank 3] (RECIPE!)
										i(133831),	-- Recipe: Salt and Pepper Shank [Rank 2] (RECIPE!)
										i(133851),	-- Recipe: Salt and Pepper Shank [Rank 3] (RECIPE!)
										i(133844),	-- Recipe: Seed-Battered Fish Plate [Rank 2] (RECIPE!)
										i(133864),	-- Recipe: Seed-Battered Fish Plate [Rank 3] (RECIPE!)
										i(133835),	-- Recipe: Spiced Rib Roast [Rank 2] (RECIPE!)
										i(133855),	-- Recipe: Spiced Rib Roast [Rank 3] (RECIPE!)
										i(133837),	-- Recipe: Suramar Surf and Turf [Rank 2] (RECIPE!)
										i(133857),	-- Recipe: Suramar Surf and Turf [Rank 3] (RECIPE!)
										i(133841),	-- Recipe: The Hungry Magister [Rank 2] (RECIPE!)
										i(133861),	-- Recipe: The Hungry Magister [Rank 3] (RECIPE!)
									}),
								})),
								i(146757, {	-- Prepared Ingredients
									["description"] = "Use 10 of these to create food or unlearned recipes. It appears as though you can only get Rank 2+ recipes from this item.",
								}),
							}),
							n(VENDORS, {
								["description"] = "Before Nomi will sell you any of these, you need to complete the quest that awards them.\n\nUse the ATT Source Text in the tooltip for more information on where you can find them.",
								["sym"] = { {"select","itemID",
									133818,	-- Recipe: Barracuda Mrglgagh [Rank 1] (RECIPE!)
									133812,	-- Recipe: Deep-Fried Mossgill [Rank 1] (RECIPE!)
									133826,	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
									133814,	-- Recipe: Faronaar Fizz [Rank 1] (RECIPE!)
									133828,	-- Recipe: Fighter Chow [Rank 1] (RECIPE!)
									133813,	-- Recipe: Pickled Stormray [Rank 1] (RECIPE!)
									133810,	-- Recipe: Salt and Pepper Shank [Rank 1] (RECIPE!)
									133815,	-- Recipe: Spiced Rib Roast [Rank 1] (RECIPE!)
								}, },
							})
						),
					}),
				}),
				prof(FIRST_AID, {
					n(93529, {	-- Olisarra the Kind <Bandage Trainer>
						["coord"] = { 36.2, 37.6, LEGION_DALARAN },
						["groups"] = LEGION_FIRST_AID,
					}),
				}),
				prof(FISHING, {
					n(108825, {	-- Conjurer Margoss
						["coord"] = { 50.0, 1.0, LEGION_DALARAN },
						["groups"] = LEGION_FISHING,
					}),
					faction(FACTION_CONJURER_MARGOSS, {	-- Conjurer Margoss
						["creatureID"] = 108825,
						["description"] = "Can be found on a floating island called Margoss' Retreat just North of Dalaran.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["groups"] = {
							q(42911, {	-- Drowned Mana
								["provider"] = { "n", 108825 },	-- Conjurer Margoss
								["coord"] = { 44.7, 62.0, BROKEN_ISLES },
							}),
							i(138811, {	-- Brinedeep Bottom Feeder (MOUNT!)
								["cost"] = { { "i", 138777, 100 }, },	-- 100x Drowned Mana
							}),
							i(142532, {	-- Crate of Bobbers: Murloc Head (TOY!)
								["cost"] = { { "i", 138777, 100 }, },	-- 100x Drowned Mana
							}),
							i(142531, {	-- Crate of Bobbers: Squeaky Duck (TOY!)
								["cost"] = { { "i", 138777, 100 }, },	-- 100x Drowned Mana
							}),
							i(138810, {	-- Sting Ray Pup (PET!)
								["cost"] = { { "i", 138777, 50 }, },	-- 50x Drowned Mana
							}),
							i(143842, {	-- Trashy (PET!)
								["cost"] = { { "i", 138777, 50 }, },	-- 50x Drowned Mana
								["timeline"] = { ADDED_7_1_5 },
							}),
						},
					}),
					n(95844, {	-- Marcia Chase <Fishing Trainer & Supplies>
						ach(10722, {	-- The Wish Remover
							["description"] = "You need to use the special lures sold by the trainer to earn this achievement.",
							["requireSkill"] = FISHING,
							["groups"] = THE_WISH_REMOVER,
						}),
					}),
				}),
				prof(INSCRIPTION, {
					q(43726, {	-- Tales of the Broken Isles
						["provider"] = { "n", 97362 },	-- Dazzik "Proudmoore"
						["repeatable"] = true,
					}),
					n(WORLD_QUESTS, {
						q(41668, {	-- Vantus Rune Work Order: Il'gynoth, The Heart of Corruption
							["requireSkill"] = INSCRIPTION,
							["isWorldQuest"] = true,
							["lvl"] = { 45 },
							["groups"] = {
								i(137769),	-- Vantus Rune Technique: Il'gynoth, The Heart of Corruption [Rank 3] (RECIPE!)
							},
						}),
					}),
				}),
				prof(LEATHERWORKING, {
					n(93523, {	-- Namha Moonwater <Leatherworking Trainer>
						["coord"] = { 35.4, 29.6, LEGION_DALARAN },
						["groups"] = {
							r(239413, {["timeline"] = {ADDED_7_2_0}}),	-- The Sentinel's Eternal Refuge (RECIPE!)
							r(239414, {["timeline"] = {ADDED_7_2_0}}),	-- Vigilance Perch (RECIPE!)
						},
					}),
				}),
				prof(TAILORING, {
					-- #if AFTER BFA
					n(93529, {	-- Olisarra the Kind <Bandage Trainer>
						["coord"] = { 36.2, 37.6, LEGION_DALARAN },
						["groups"] = {
							r(202853),	-- Silkweave Bandage
							r(202854),	-- Silkweave Splint
						},
					}),
					-- #endif
					n(93542, {	-- Tanithria <Tailoring Trainer>
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["groups"] = {
							r(239412, {["timeline"] = {ADDED_7_2_0}}),	-- Celumbra, the Night's Dichotomy (RECIPE!)
							r(186097),	-- Silkweave Cover (RECIPE!)
							r(186100),	-- Silkweave Drape (RECIPE!)
							r(186094),	-- Silkweave Flourish (RECIPE!)
							r(186091),	-- Silkweave Shade (RECIPE!)
						},
					}),
				}),
			}),
		}),
	}),
});
