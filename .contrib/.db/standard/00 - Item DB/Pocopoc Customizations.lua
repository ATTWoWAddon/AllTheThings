-- This file will combine itemIDs for customization and questIDs so they dont have to be in the source files
local Items = ItemDBConditional;
local i = function(itemID, questID)
	Items[itemID] = { ["questID"] = questID, ["type"] = "characterUnlockQuestID" };
end

-----------------
-- PATCH 9.2.0 --
-----------------
i(190061, 65529);	-- Admiral Pocopoc
i(190060, 65527);	-- Adventurous Pocopoc
i(189451, 65524);	-- Chef Pocopoc
i(187833, 65528);	-- Dapper Pocopoc
i(190182, 65600);	-- Lovely Regal Pocopoc
i(190058, 65525);	-- Peaceful Pocopoc
i(190098, 65538);	-- Pepepec
i(190059, 65526);	-- Pirate Pocopoc
i(190096, 65534);	-- Pocobold
i(189708, 65472);	-- Pocopoc's Beryllium and Silver Body
i(189707, 65471);	-- Pocopoc's Bronze and Gold Body
i(189709, 65473);	-- Pocopoc's Cobalt and Copper Body
i(189713, 65478);	-- Pocopoc's Copper and Cobalt Components
i(189715, 65481);	-- Pocopoc's Diamond Vambraces
i(189716, 65482);	-- Pocopoc's Face Decoration
i(189711, 65476);	-- Pocopoc's Gold and Ruby Components
i(189714, 65479);	-- Pocopoc's Platinum and Emerald Components
i(189710, 65474);	-- Pocopoc's Ruby and Platinum Body
i(189717, 65483);	-- Pocopoc's Shielded Core
i(189712, 65477);	-- Pocopoc's Silver and Beryllium Components
i(189718, 65484);	-- Pocopoc's Upgraded Core
i(190062, 65530);	-- Wicked Pocopoc
