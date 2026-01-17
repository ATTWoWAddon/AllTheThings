-- Profession Skills have multiple 'levels' based on expansion for recipe requirements
-- but in ATT we represent those by the base profession skill only for simplicity
-- Those mappings are moved from the Parser to here
SKILL_ID_CONVERSION_TABLE = {

	-- Alchemy Skills
	[171] = 171,     -- Alchemy [7.3.5]
	[28677] = 28677,   -- Elixir Master
	[28675] = 28675,   -- Potion Master
	[28672] = 28672,   -- Transmutation Master
	[2485] = 171,    -- Classic Alchemy [8.0.1]
	[2484] = 171,    -- Outland Alchemy [8.0.1]
	[2483] = 171,    -- Northrend Alchemy [8.0.1]
	[2482] = 171,    -- Cataclysm Alchemy [8.0.1]
	[2481] = 171,    -- Pandaria Alchemy [8.0.1]
	[2480] = 171,    -- Draenor Alchemy [8.0.1]
	[2479] = 171,    -- Legion Alchemy [8.0.1]
	[2478] = 171,    -- Kul Tiran Alchemy [8.0.1]
	[2750] = 171,    -- Shadowlands Alchemy [9.0.1]
	[2823] = 171,    -- Dragon Isles Alchemy [10.0.0]
	[2871] = 171,    -- Khaz Algar Alchemy [11.0.0]

	-- Archaeology Skills
	[794] = 794,     -- Archaeology [7.3.5]

	-- Blacksmithing Skills
	[164] = 164,     -- Blacksmithing [7.3.5]
	[9788] = 9788,   -- Armorsmithing
	[9787] = 9787,   -- Weaponsmithing
	[17041] = 17041,   -- Master Axesmith
	[17040] = 17040,   -- Master Hammersmith
	[17039] = 17039,   -- Master Swordsmith
	[2477] = 164,    -- Classic Blacksmithing [8.0.1]
	[2476] = 164,    -- Outland Blacksmithing [8.0.1]
	[2475] = 164,    -- Northrend Blacksmithing [8.0.1]
	[2474] = 164,    -- Cataclysm Blacksmithing [8.0.1]
	[2473] = 164,    -- Pandaria Blacksmithing [8.0.1]
	[2472] = 164,    -- Draenor Blacksmithing [8.0.1]
	[2454] = 164,    -- Legion Blacksmithing [8.0.1]
	[2437] = 164,    -- Kul Tiran Blacksmithing [8.0.1]
	[2751] = 164,    -- Shadowlands Blacksmithing [9.0.1]
	[2822] = 164,    -- Dragon Isles Blacksmithing [10.0.0]
	[2872] = 164,    -- Khaz Algar Blacksmithing [11.0.0]

	-- Cooking Skills
	[185] = 185,     -- Cooking [7.3.5]
	[975] = 185,     -- Way of the Grill
	[976] = 185,     -- Way of the Wok
	[977] = 185,     -- Way of the Pot
	[978] = 185,     -- Way of the Steamer
	[979] = 185,     -- Way of the Oven
	[980] = 185,     -- Way of the Brew
	[124694] = 185,     -- Way of the Grill
	[125584] = 185,     -- Way of the Wok
	[125586] = 185,     -- Way of the Pot
	[125587] = 185,     -- Way of the Steamer
	[125588] = 185,     -- Way of the Oven
	[125589] = 185,     -- Way of the Brew
	[2548] = 185,    -- Classic Cooking [8.0.1]
	[2547] = 185,    -- Outland Cooking [8.0.1]
	[2546] = 185,    -- Northrend Cooking [8.0.1]
	[2545] = 185,    -- Cataclysm Cooking [8.0.1]
	[2544] = 185,    -- Pandaria Cooking [8.0.1]
	[2543] = 185,    -- Draenor Cooking [8.0.1]
	[2542] = 185,    -- Legion Cooking [8.0.1]
	[2541] = 185,    -- Kul Tiran Cooking [8.0.1]
	[2752] = 185,    -- Shadowlands Cooking [9.0.1]
	[2824] = 185,    -- Dragon Isles Cooking [10.0.0]
	[2873] = 185,    -- Khaz Algar Cooking [11.0.0]

	-- Enchanting Skills
	[333] = 333,     -- Enchanting [7.3.5]
	[2494] = 333,    -- Classic Enchanting [8.0.1]
	[2493] = 333,    -- Outland Enchanting [8.0.1]
	[2492] = 333,    -- Northrend Enchanting [8.0.1]
	[2491] = 333,    -- Cataclysm Enchanting [8.0.1]
	[2489] = 333,    -- Pandaria Enchanting [8.0.1]
	[2488] = 333,    -- Draenor Enchanting [8.0.1]
	[2487] = 333,    -- Legion Enchanting [8.0.1]
	[2486] = 333,    -- Kul Tiran Enchanting [8.0.1]
	[2753] = 333,    -- Shadowlands Enchanting [9.0.1]
	[2825] = 333,    -- Dragon Isles Enchanting [10.0.0]
	[2874] = 333,    -- Khaz Algar Enchanting [11.0.0]

	-- Engineering Skills
	[202] = 202,     -- Engineering [7.3.5]
	[20219] = 20219,    -- Gnomish Engineering
	[20222] = 20222,    -- Goblin Engineering
	[2506] = 202,    -- Classic Engineering [8.0.1]
	[2505] = 202,    -- Outland Engineering [8.0.1]
	[2504] = 202,    -- Northrend Engineering [8.0.1]
	[2503] = 202,    -- Cataclysm Engineering [8.0.1]
	[2502] = 202,    -- Pandaria Engineering [8.0.1]
	[2501] = 202,    -- Draenor Engineering [8.0.1]
	[2500] = 202,    -- Legion Engineering [8.0.1]
	[2499] = 202,    -- Kul Tiran Engineering [8.0.1]
	[2755] = 202,    -- Shadowlands Engineering [9.0.1]
	[2827] = 202,    -- Dragon Isles Engineering [10.0.0]
	[2875] = 202,    -- Khaz Algar Engineering [11.0.0]

	-- First Aid Skills
	[129] = 129,     -- First Aid [7.3.5] [REMOVED FROM GAME]

	-- Fishing Skills
	[356] = 356,     -- Fishing [7.3.5]
	[2592] = 356,    -- Classic Fishing [8.0.1]
	[2591] = 356,    -- Outland Fishing [8.0.1]
	[2590] = 356,    -- Northrend Fishing [8.0.1]
	[2589] = 356,    -- Cataclysm Fishing [8.0.1]
	[2588] = 356,    -- Pandaria Fishing [8.0.1]
	[2587] = 356,    -- Draenor Fishing [8.0.1]
	[2586] = 356,    -- Legion Fishing [8.0.1]
	[2585] = 356,    -- Kul Tiran Fishing [8.0.1]
	[2754] = 356,    -- Shadowlands Fishing [9.0.1]
	[2826] = 356,    -- Dragon Isles Fishing [10.0.0]
	[2876] = 356,    -- Khaz Algar Fishing [11.0.0]

	-- Herbalism Skills
	[182] = 182,     -- Herbalism [7.3.5]
	[2556] = 182,    -- Classic Herbalism [8.0.1]
	[2555] = 182,    -- Outland Herbalism [8.0.1]
	[2554] = 182,    -- Northrend Herbalism [8.0.1]
	[2553] = 182,    -- Cataclysm Herbalism [8.0.1]
	[2552] = 182,    -- Pandaria Herbalism [8.0.1]
	[2551] = 182,    -- Draenor Herbalism [8.0.1]
	[2550] = 182,    -- Legion Herbalism [8.0.1]
	[2549] = 182,    -- Kul Tiran Herbalism [8.0.1]
	[2760] = 182,    -- Shadowlands Herbalism [9.0.1]
	[2832] = 182,    -- Dragon Isles Herbalism [10.0.0]
	[2877] = 182,    -- Khaz Algar Herbalism [11.0.0]

	-- Inscription Skills
	[773] = 773,     -- Inscription [7.3.5]
	[2514] = 773,    -- Classic Inscription [8.0.1]
	[2513] = 773,    -- Outland Inscription [8.0.1]
	[2512] = 773,    -- Northrend Inscription [8.0.1]
	[2511] = 773,    -- Cataclysm Inscription [8.0.1]
	[2510] = 773,    -- Pandaria Inscription [8.0.1]
	[2509] = 773,    -- Draenor Inscription [8.0.1]
	[2508] = 773,    -- Legion Inscription [8.0.1]
	[2507] = 773,    -- Kul Tiran Inscription [8.0.1]
	[2756] = 773,    -- Shadowlands Inscription [9.0.1]
	[2828] = 773,    -- Dragon Isles Inscription [10.0.0]
	[2878] = 773,    -- Khaz Algar Inscription [11.0.0]

	-- Jewelcrafting Skills
	[755] = 755,     -- Jewelcrafting [7.3.5]
	[2524] = 755,    -- Classic Jewelcrafting [8.0.1]
	[2523] = 755,    -- Outland Jewelcrafting [8.0.1]
	[2522] = 755,    -- Northrend Jewelcrafting [8.0.1]
	[2521] = 755,    -- Cataclysm Jewelcrafting [8.0.1]
	[2520] = 755,    -- Pandaria Jewelcrafting [8.0.1]
	[2519] = 755,    -- Draenor Jewelcrafting [8.0.1]
	[2518] = 755,    -- Legion Jewelcrafting [8.0.1]
	[2517] = 755,    -- Kul Tiran Jewelcrafting [8.0.1]
	[2757] = 755,    -- Shadowlands Jewelcrafting [9.0.1]
	[2829] = 755,    -- Dragon Isles Jewelcrafting [10.0.0]
	[2879] = 755,    -- Khaz Algar Jewelcrafting [11.0.0]

	-- Leatherworking Skills
	[165] = 165,     -- Leatherworking [7.3.5]
	[10656] = 10656,    -- Dragonscale Leatherworking
	[10658] = 10658,    -- Elemental Leatherworking
	[10660] = 10660,    -- Tribal Leatherworking
	[2532] = 165,    -- Classic Leatherworking [8.0.1]
	[2531] = 165,    -- Outland Leatherworking [8.0.1]
	[2530] = 165,    -- Northrend Leatherworking [8.0.1]
	[2529] = 165,    -- Cataclysm Leatherworking [8.0.1]
	[2528] = 165,    -- Pandaria Leatherworking [8.0.1]
	[2527] = 165,    -- Draenor Leatherworking [8.0.1]
	[2526] = 165,    -- Legion Leatherworking [8.0.1]
	[2525] = 165,    -- Kul Tiran Leatherworking [8.0.1]
	[2758] = 165,    -- Shadowlands Leatherworking [9.0.1]
	[2830] = 165,    -- Dragon Isles Leatherworking [10.0.0]
	[2880] = 165,    -- Khaz Algar Leatherworking [11.0.0]

	-- Lockpicking Skills [Rogue Only]
	[633] = 633,     -- Lockpicking
	[181] = 633,     -- Lockpicking
	[242] = 633,     -- Lockpicking

	-- Mining Skills
	[186] = 186,     -- Mining [7.3.5]
	[2572] = 186,    -- Classic Mining [8.0.1]
	[2571] = 186,    -- Outland Mining [8.0.1]
	[2570] = 186,    -- Northrend Mining [8.0.1]
	[2569] = 186,    -- Cataclysm Mining [8.0.1]
	[2568] = 186,    -- Pandaria Mining [8.0.1]
	[2567] = 186,    -- Draenor Mining [8.0.1]
	[2566] = 186,    -- Legion Mining [8.0.1]
	[2565] = 186,    -- Kul Tiran Mining [8.0.1]
	[2761] = 186,    -- Shadowlands Mining [9.0.1]
	[2833] = 186,    -- Dragon Isles Mining [10.0.0]
	[2881] = 186,    -- Khaz Algar Mining [11.0.0]

	-- Runeforging [Deathknight Only]
	[960] = 960,     -- Runeforging
	[776] = 960,     -- Runeforging

	-- Skinning Skills
	[393] = 393,     -- Skinning [7.3.5]
	[2564] = 393,    -- Classic Skinning [8.0.1]
	[2563] = 393,    -- Outland Skinning [8.0.1]
	[2562] = 393,    -- Northrend Skinning [8.0.1]
	[2561] = 393,    -- Cataclysm Skinning [8.0.1]
	[2560] = 393,    -- Pandaria Skinning [8.0.1]
	[2559] = 393,    -- Draenor Skinning [8.0.1]
	[2558] = 393,    -- Legion Skinning [8.0.1]
	[2557] = 393,    -- Kul Tiran Skinning [8.0.1]
	[2762] = 393,    -- Shadowlands Skinning [9.0.1]
	[2834] = 393,    -- Dragon Isles Skinning [10.0.0]
	[2882] = 393,    -- Khaz Algar Skinning [11.0.0]

	-- Tailoring Skills
	[197] = 197,     -- Tailoring [7.3.5]
	[26801] = 26801,  -- Shadoweave Tailoring
	[26797] = 26797,  -- Spellfire Tailoring
	[26798] = 26798,  -- Mooncloth Tailoring
	[2540] = 197,    -- Classic Tailoring [8.0.1]
	[2539] = 197,    -- Outland Tailoring [8.0.1]
	[2538] = 197,    -- Northrend Tailoring [8.0.1]
	[2537] = 197,    -- Cataclysm Tailoring [8.0.1]
	[2536] = 197,    -- Pandaria Tailoring [8.0.1]
	[2535] = 197,    -- Draenor Tailoring [8.0.1]
	[2534] = 197,    -- Legion Tailoring [8.0.1]
	[2533] = 197,    -- Kul Tiran Tailoring [8.0.1]
	[2759] = 197,    -- Shadowlands Tailoring [9.0.1]
	[2831] = 197,    -- Dragon Isles Tailoring [10.0.0]
	[2883] = 197,    -- Khaz Algar Tailoring [11.0.0]

	-- Junkyard Tinkering [BFA]
	[2720] = 2720,   -- Junkyard Tinkering

	-- Abominable Stitching [SL]
	[2787] = 2787,   -- Abominable Stitching

	-- Ascension Crafting [SL]
	[2791] = 2791,   -- Ascension Crafting

	-- Soul Cyphering [SL]
	[2777] = 2777,   -- Soul Cyphering

	-- Stygia Crafting [SL]
	[2811] = 2811,   -- Stygia Crafting

	-- Protoform Synthesis [SL]
	[2819] = 2819,   -- Protoform Synthesis

	-- Tuskarr Fishing Gear [DF]
	[2847] = 2847,   -- Tuskarr Fishing Gear

	-- Arcana Manipulation [DF]
	[2821] = 2821,   -- Arcana Manipulation

	-- Supply Shipments [DF]
	[2886] = 2886,   -- Supply Shipments

	-- Dye Crafting [TWW]
	[2984] = 2984,   -- Dye Crafting
}

-- Export skill data into DB for addon use
-- TODO: revise how this can be cleaned up, lots of duplicated mappings and linkages that seem pretty pointless
ExportDB.SkillDB = {
	-- Mapping of Skill to Base Skill relationships
	Conversion = SKILL_ID_CONVERSION_TABLE,
	-- Mapping of Base Skill to known Spell
	SkillToSpell = {
		[171] = 2259,	-- Alchemy
		[794] = 78670,	-- Arch
		[261] = 5149,	-- Beast Training
		[164] = 2018,	-- Blacksmithing
		[185] = 2550,	-- Cooking
		[333] = 7411,	-- Enchanting
		[202] = 4036,	-- Engineering
		[356] = 7620,	-- Fishing
		[129] = 3273,	-- First Aid
		[182] = 2366,	-- Herb Gathering
		[773] = 45357,	-- Inscription
		[755] = 25229,	-- Jewelcrafting
		-- [2720] = 2720,	-- Junkyard Tinkering [Does not have a spellID]
		[165] = 2108,	-- Leatherworking
		[186] = 2575,	-- Mining
		[393] = 8613,	-- Skinning
		[197] = 3908,	-- Tailoring
		[960] = 53428,  -- Runeforging
		[40] = 2842,	-- Poisons
		[633] = 1809,	-- Lockpicking
		[921] = 921,	-- Pickpocketing

		-- Specializations
		[20219] = 20219,	-- Gnomish Engineering
		[20222] = 20222,	-- Goblin Engineering
		[9788] = 9788,		-- Armorsmith
		[9787] = 9787,		-- Weaponsmith
		[17041] = 17041,	-- Master Axesmith
		[17040] = 17040,	-- Master Hammersmith
		[17039] = 17039,	-- Master Swordsmith
		[10656] = 10656,	-- Dragonscale Leatherworking
		[10658] = 10658,	-- Elemental Leatherworking
		[10660] = 10660,	-- Tribal Leatherworking
		[26801] = 26801,	-- Shadoweave Tailoring
		[26797] = 26797,	-- Spellfire Tailoring
		[26798] = 26798,	-- Mooncloth Tailoring
		[125589] = 125589,	-- Way of the Brew
		[124694] = 124694,	-- Way of the Grill
		[125588] = 125588,	-- Way of the Oven
		[125586] = 125586,	-- Way of the Pot
		[125587] = 125587,	-- Way of the Steamer
		[125584] = 125584,	-- Way of the Wok

		-- Riding
		[762] = 33388,	-- Riding
		-- #if BEFORE TBC
		[148] = 824,	-- Horse Riding
		[713] = 18995,	-- Kodo Riding
		[553] = 10907,	-- Mechanostrider Piloting
		[152] = 826,	-- Ram Riding
		[533] = 10861,	-- Raptor Riding
		[150] = 828,	-- Tiger Riding
		[554] = 10906,	-- Undead Horsemanship
		[149] = 825,	-- Wolf Riding
		-- #endif
	},
	-- Skills with possible Specializations
	Specializations = {
		[202] = {	-- Engineering
			20219,    -- Gnomish Engineering
			20222     -- Goblin Engineering
		},
		[164] = {	-- Blacksmithing
			9788,	-- Armorsmith
			9787,	-- Weaponsmith
		}
	},
	-- Mapping of Specialization Spells to their Base Skill Spell equivalents
	SpecializationSpells = {
		[20219] = 4036,	-- Gnomish Engineering
		[20222] = 4036,	-- Goblin Engineering
		[9788] = 2018,	-- Armorsmith
		[9787] = 2018,	-- Weaponsmith
		[17041] = 2018,	-- Master Axesmith
		[17040] = 2018,	-- Master Hammersmith
		[17039] = 2018,	-- Master Swordsmith
		[10656] = 2108,	-- Dragonscale Leatherworking
		[10658] = 2108,	-- Elemental Leatherworking
		[10660] = 2108,	-- Tribal Leatherworking
		[26801] = 3908,	-- Shadoweave Tailoring
		[26797] = 3908,	-- Spellfire Tailoring
		[26798] = 3908,	-- Mooncloth Tailoring
		[125589] = 2550,-- Way of the Brew
		[124694] = 2550,-- Way of the Grill
		[125588] = 2550,-- Way of the Oven
		[125586] = 2550,-- Way of the Pot
		[125587] = 2550,-- Way of the Steamer
		[125584] = 2550,-- Way of the Wok
	},
	-- Base Skill known for an active Specialization Skill
	BaseSkills = {
		-- Engineering Skills
		[20219] = 202,  -- Gnomish Engineering
		[20222] = 202,   -- Goblin Engineering
		-- Blacksmithing Skills
		[9788] = 9788,	-- Armorsmith
		[9787] = 9787,	-- Weaponsmith
		[17041] = 17041,	-- Master Axesmith
		[17040] = 17040,	-- Master Hammersmith
		[17039] = 17039,	-- Master Swordsmith
		-- Leatherworking
		[10656] = 10656,	-- Dragonscale Leatherworking
		[10658] = 10658,	-- Elemental Leatherworking
		[10660] = 10660,	-- Tribal Leatherworking
		-- Tailoring
		[26801] = 26801,	-- Shadoweave Tailoring
		[26797] = 26797,	-- Spellfire Tailoring
		[26798] = 26798,	-- Mooncloth Tailoring
	},
	-- Skills which any character can learn without conflict/limitation
	AlwaysAvailable = {
		2720,	-- Junkyard Tinkering
		2787,	-- Abominable Stitching
		2791,	-- Ascension Crafting
		2811,	-- Stygia Crafting
		2819,	-- Protoform Synthesis
		2847,	-- Tuskarr Fishing Gear
		2886,	-- Supply Shipments
	},
}

local spellToSkill = {}
for skillID,spellID in pairs(ExportDB.SkillDB.SkillToSpell) do
	spellToSkill[spellID] = skillID
end

ExportDB.SkillDB.SpellToSkill = spellToSkill
