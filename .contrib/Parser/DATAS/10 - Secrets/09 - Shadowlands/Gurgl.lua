-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_1_5 } }, {
	header(HEADERS.Item, 186553, {	-- Gurgl
		["displayID"] = 100676,
		["modelScale"] = 1.1,
		["groups"] = {
			q(64167,{	-- Pets Detective
				["provider"] = { "n", 96479 },	-- Breanni
				["coord"] = { 58.5, 39.1, LEGION_DALARAN },
				["groups"] = {
					i(187128),	-- Find-A-Spy (QI!)
				},
			}),
			q(64196,{	-- Pet Up
				["provider"] = { "n", 96479 },	-- Breanni
				["sourceQuests"] = { 64167 },	-- Pets Detective
				["coord"] = { 58.5, 39.1, LEGION_DALARAN },
				["groups"] = {
					i(186695),	-- Lovely Pet Bandage (QI!)
				},
			}),
			q(64203,{	-- The Coast is Clear
				["provider"] = { "n", 179566 },	-- Zantini
				["sourceQuests"] = { 64196 },	-- Pet Up
				["coord"] = { 73.2, 74.9, EYE_OF_AZSHARA },
				["groups"] = {
					i(186730),	-- Pet Supplies (QI!)
				},
			}),
			q(64215,{	-- Paw Patrol
				["provider"] = { "n", 179566 },	-- Zantini
				["sourceQuests"] = { 64203 },	-- The Coast is Clear
				["coord"] = { 73.2, 74.9, EYE_OF_AZSHARA },
				["groups"] = {
					i(186772),	-- Violetsail Pet Cage Key (QI!)
				},
			}),
			q(64237,{	-- Gurgl and the Bandit
				["provider"] = { "n", 179566 },	-- Zantini
				["sourceQuests"] = { 64215 },	-- Paw Patrol
				["coord"] = { 73.2, 74.9, EYE_OF_AZSHARA },
				["groups"] = {
					i(186553),	-- Gurgl (PET!)
				},
			}),
		},
	}),
})));