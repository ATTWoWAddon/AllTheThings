-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_2_5 } }, {
	header(HEADERS.Item, 192485, {	-- Stored Wisdom Device
		n(162804, {	-- Ve'nari
			["description"] = "If you talk to Ve'nari at her usual location in her hideout in the Maw, you'll see that she is an echo and no longer physically present. Talking to her reveals an extra dialogue option, where she will mention that she has finally found Zereth Mortis.",
			["coord"] = { 46.9, 41.7, THE_MAW },
			["questID"] = 65470,
		}),
		n(185083, {	-- Ve'nari
			["description"] = "After talking to Ve'nari's echo in her hideout, head to the Creation Catalyst in Zereth Mortis. There, you will find Ve'nari's charred corpse in the center of the room. Interact with it, and select the dialogue option to take a closer look.",
			["sourceQuests"] = { 65470 },
			["coord"] = { 47.4, 88.6, ZERETH_MORTIS },
			["questID"] = 65488,
		}),
		n(MAILBOX, {
			["description"] = "You should receive a letter from Ve'nari with the toy attached 5 days after interacting with her decoy corpse in Zereth Mortis.",
			["sourceQuests"] = { 65488 },
			["groups"] = {
				i(192485),	-- Stored Wisdom Device (TOY!)
			},
		}),
	}),
})));
