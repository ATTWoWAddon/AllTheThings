-- This file will combine itemIDs for customization and questIDs so they dont have to be in the source files
local Items = ItemDBConditional;
local i = function(itemID, questID)
	Items[itemID] = { ["questID"] = questID, ["type"] = "characterUnlockQuestID" };
end

-----------------
-- PATCH 6.2.0 --
-----------------
i(126950, 38932);	-- Equipment Blueprint: Bilge Pump
i(128258, 39366);	-- Equipment Blueprint: Felsmoke Launchers
i(128257, 39365);	-- Equipment Blueprint: Ghostly Spyglass
i(128256, 39364);	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
i(128232, 39356);	-- Equipment Blueprint: High Intensity Fog Lights
i(128255, 39363);	-- Equipment Blueprint: Ice Cutter
i(128231, 39355);	-- Equipment Blueprint: Trained Shark Tank
i(128252, 39360);	-- Equipment Blueprint: True Iron Rudder
i(128491, 39359);	-- Equipment Blueprint: Tuskarr Fishing Net
i(128489, 39358);	-- Equipment Blueprint: Unsinkable
-- NYI --
i(0, 39370);	-- Equipment Blueprint: Ammo Reserves
i(0, 39369);	-- Equipment Blueprint: Automated Sky Scanner
i(128260, 39368);	-- Equipment Blueprint: Blast Furnace
i(0, 39367);	-- Equipment Blueprint: Extra Quarters
i(0, 39362);	-- Equipment Blueprint: Q-43 Noisemaker Mines
i(0, 39361);	-- Equipment Blueprint: Sonic Amplification Field
