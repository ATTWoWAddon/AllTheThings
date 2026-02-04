-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
-- This really doesn't feel like it needs its own file
root(ROOTS.Secrets, header(HEADERS.Item, 186639, {	-- Xy Trustee's Gearglider
	["description"] = "You can use one Cartel Deal per week on your account, across three weeks, equip the granted title then collect each dead drop within Manaforge Omega (Any difficulty) then return to the quartermaster for a new quest awarding your mount.",
	["minReputation"] = { FACTION_MANAFORGE_VANDALS, 8 },
	["timeline"] = { ADDED_11_2_0 },
	["maps"] = {
		2460,	-- The Forge Core
		2461,	-- The Unbound Vault
		2462,	-- Cultivation Chambers
		2463,	-- Technomancers' Terrace
		2464,	-- Central Operations
		2465,	-- Wastes of Karesh
		2466,	-- The Shadow Docks
		2467,	-- Seat of the Devourer
		2468,	-- Remnants of Conquest
		2469,	-- Remnants of Entropy
		2470,	-- Devourer's Heart
		2471,	-- The Dark Heart
	},
	["groups"] = {
		o(555609, {	-- Cartel Ba Dead Drop
			["description"] = "To the right of the first miniboss after Plexus.",
			["maps"] = 2460,	-- The Forge Core
			["cost"] = { { "i", 249702, 1 } },	-- Deal: Cartel Ba
			["minReputation"] = { FACTION_MANAFORGE_VANDALS, 8 },
			["questID"] = 92080,
			["groups"] = { i(249711) },	-- Cartel Ba Cypher
		}),
		o(555611, {	-- Cartel Om Dead Drop
			["description"] = "On a rock past Fractillus near the edge of the map.",
			["maps"] = 2465,	-- Wastes of Karesh
			["cost"] = { { "i", 249704, 1 } },	-- Deal: Cartel Om
			["minReputation"] = { FACTION_MANAFORGE_VANDALS, 8 },
			["questID"] = 92081,
			["groups"] = { i(249712) },	-- Cartel Om Cypher
		}),
		o(555610, {	-- Cartel Zo Dead Drop
			["description"] = "On top of a pipe in Mana-Vent Aphis before Forgeweaver Araz.\n\nThis cannot be looted in a cleared instance!",
			["maps"] = 2463,	-- Technomancers' Terrace
			["cost"] = { { "i", 249700, 1 } },	-- Deal: Cartel Zo
			["minReputation"] = { FACTION_MANAFORGE_VANDALS, 8 },
			["questID"] = 92079,
			["groups"] = { i(249710) },	-- Cartel Zo Cypher
		}),
		q(92082, {	-- Someone Like Me
			["sourceQuests"] = {
				92080,	-- Cartel Ba Cypher
				92081,	-- Cartel Om Cypher
				92079,	-- Cartel Zo Cypher
			},
			["qg"] = 245344,	-- Zo'turu <Renown Quartermaster>
			["coords"] = { 42.0, 22.1, KARESH },
			["groups"] = {
				i(249713),	-- Cartel Transmorpher (TOY!)
				i(186639),	-- Xy Trustee's Gearglider (MOUNT!)
			},
		}),
	},
}));
