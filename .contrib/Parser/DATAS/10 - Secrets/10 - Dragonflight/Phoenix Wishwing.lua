-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, header(HEADERS.Item, 193373,	-- Phoenix Wishwing
	bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
	["description"] = "Below is a detailed explanation on how to obtain the Phoenix Wishwing pet.\n\n***This secret requires you to have debug mode enabled to see the steps. To enable debug mode right click the ATT icon on the minimap, navigate to the general tab and check the \"|Cff15abffDebug Mode|r |cFFFFFFFF(Show Everything)|r\" box.***",
	["groups"] = {
		o(13000040, {	-- Step 1: Phoenix Ash Talisman
			["description"] = "|cFFFFFFFFStep 1:|r Obtain the Phoenix Ash Talisman from Zektar in Spires of Arak.",
			["provider"] = { "i", 199203 },	-- Phoenix Ash Talisman
			["groups"] = {
				o(13000041, {	-- Step 1A: Glittering Phoenix Ember
					["description"] = "|cFFFFFFFFStep 1A:|r Obtain the Glittering Phoenix Ember from Alysrazor in Firelands Timewalking.",
					["provider"] = { "i", 199099 },	-- Glittering Phoenix Ember
				}),
				o(13000042, {	-- Step 1B: Inert Phoenix Ash
					["description"] = "|cFFFFFFFFStep 1B:|r Obtain 20 Inert Phoenix Ash from fire elementals in Un'Goro Crater.",
					["provider"] = { "i", 199092 },	-- Inert Phoenix Ash
				}),
				o(13000043, {	-- Step 1C: Sacred Phoenix Ash
					["description"] = "|cFFFFFFFFStep 1C:|r Obtain 10 Sacred Phoenix Ash from cookpots in Spires of Arak.",
					["provider"] = { "i", 199097 },	-- Sacred Phoenix Ash
				}),
			},
		}),
		o(13000044, {	-- Step 2: Ash Feather
			["description"] = "|cFFFFFFFFStep 2:|r Obtain 20 Ash Feathers spawned by Griftah's Ash Feather Amulet.",
			["provider"] = { "i", 202062 },	-- Ash Feather
		}),
		o(13000045, {	-- Step 3: Smoldering Phoenix Ash
			["description"] = "|cFFFFFFFFStep 3:|r Obtain 15 Smoldering Phoenix Ash from phoenixes around the Dragon Isles.",
			["provider"] = { "i", 199080 },	-- Smoldering Phoenix Ash
		}),
		q(72798, {	-- Tale of the Phoenix
			["sourceQuests"] = { 70779 },	-- Tarjin's Tales [Guessed, will see if error reports]
			["provider"] = { "n", 196214 },	-- Tarjin the Blind
			["coord"] = { 16.1, 62.6, THE_WAKING_SHORES },
			["cost"] = {
				{ "i", 202062, 20 },	-- Ash Feather
				{ "i", 199080, 15 },	-- Smoldering Phoenix Ash
				{ "i", 199203, 1 },	-- Phoenix Ash Talisman
			},
			["groups"] = {
				i(193373),	-- Phoenix Wishwing
			},
		}),
	},
})));
