-------------
-- ALCHEMY --
-------------
local SECRET_OF_DRAENOR_ALCHEMY = 118700;
APPRENTICE_JOURNEYMAN_ALCHEMY = {
	r(2259,	{	-- Alchemy (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(3101,	{	-- Alchemy (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264211, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Alchemy
	filter(CONSUMABLES, {
		r(7934, {["timeline"] = {ADDED_8_0_1}}),	-- Anti-Venom
		r(3177),	-- Elixir of Defense
		r(7845),	-- Elixir of Firepower
		r(2329),	-- Elixir of Lion's Strength
		r(63732, {["timeline"] = {ADDED_3_1_0}}),	-- Elixir of Minor Accuracy
		r(7183),	-- Elixir of Minor Defense
		r(2334),	-- Elixir of Minor Fortitude
		r(7179),	-- Elixir of Water Breathing
		r(3171),	-- Elixir of Wisdom
		r(3447),	-- Healing Potion
		r(2337),	-- Lesser Healing Potion
		r(3173),	-- Lesser Mana Potion
		r(2330),	-- Minor Healing Potion
		r(2331),	-- Minor Mana Potion
		r(2332),	-- Minor Rejuvenation Potion
		r(3176),	-- Strong Troll's Blood Elixir[Wrath+] / Strong Troll's Blood Potion
		r(7841),	-- Swim Speed Potion
		r(3170),	-- Weak Troll's Blood Elixir / Weak Troll's Blood Potion
	}),
	filter(REAGENTS, {
		r(7836),	-- Blackmouth Oil
		r(7837),	-- Fire Oil
	}),
};
EXPERT_ARTISAN_ALCHEMY = {
	r(3464,	{	-- Alchemy (Expert)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 26 or 20;
		end]],
		-- #else
		["lvl"] = 20,
		-- #endif
		-- #endif
		["rank"] = 3,
	}),
	r(11611, {	-- Alchemy (Artisan)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 41 or 35;
		end]],
		-- #else
		["lvl"] = 35,
		-- #endif
		-- #endif
		["rank"] = 4,
	}),
	filter(CONSUMABLES, {
		r(11461),	-- Arcane Elixir
		r(12609),	-- Catseye Elixir
		r(15833),	-- Dreamless Sleep Potion
		r(11449),	-- Elixir of Agility
		r(17557, {["timeline"] = {ADDED_4_0_3}}),	-- Elixir of Brute Force
		r(11478),	-- Elixir of Detect Demon
		r(11460),	-- Elixir of Detect Undead
		r(11467),	-- Elixir of Greater Agility
		r(11450),	-- Elixir of Greater Defense
		r(11465),	-- Elixir of Greater Intellect
		r(22808),	-- Elixir of Greater Water Breathing
		r(17555, {["timeline"] = {ADDED_4_0_3}}),	-- Elixir of the Sages
		r(17573, {["timeline"] = {ADDED_3_0_2}}),	-- Greater Arcane Elixir
		r(7181),	-- Greater Healing Potion
		r(11448),	-- Greater Mana Potion
		r(3448),	-- Lesser Invisibility Potion
		r(17556, {["timeline"] = {ADDED_2_0_1}}),	-- Major Healing Potion
		r(3452),	-- Mana Potion
		r(17552, {["timeline"] = {ADDED_4_0_3}}),	-- Mighty Rage Potion
		r(11451),	-- Oil of Immolation
		r(17572, {["timeline"] = {ADDED_2_0_1}}),	-- Purification Potion
		r(3449, {["timeline"] = {ADDED_4_1_0}}),	-- Shadow Oil
		r(11457),	-- Superior Healing Potion
		r(17553, {["timeline"] = {ADDED_2_0_1}}),	-- Superior Mana Potion
	}),
	filter(REAGENTS, {
		r(17551),	-- Stonescale Oil
	}),
	filter(TRINKET_F, {
		r(114786, {["timeline"] = {ADDED_5_0_4}}),	-- Alchemist's Flask
	}),
};
CLASSIC_ALCHEMY = appendGroups(APPRENTICE_JOURNEYMAN_ALCHEMY,
-- #if AFTER 2.1.0
EXPERT_ARTISAN_ALCHEMY
-- #else
	{}
-- #endif
);
TBC_ALCHEMY = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(28596, {	-- ALchemy (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264213, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Alchemy
		filter(CONSUMABLES, {
			r(33740, {["timeline"] = {ADDED_2_1_0}}),	-- Adept's Elixir
			r(39638, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Draenic Wisdom
			r(28545, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Healing Power
			r(28544),	-- Elixir of Major Strength
			r(39636, {["timeline"] = {ADDED_2_1_0}}),	-- Elixir of Major Fortitude
			r(33741),	-- Elixir of Mastery
			r(45061, {["timeline"] = {ADDED_2_3_0}}),	-- Mad Alchemist's Potion
			r(33738),	-- Onslaught Elixir
			r(28551),	-- Super Healing Potion
			r(33733),	-- Unstable Mana Potion
			r(33732),	-- Volatile Healing Potion
		}),
		filter(TRINKET_F, {
			r(38070),	-- Mercurial Stone
		}),
	}));
WRATH_ALCHEMY = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51304, {	-- Alchemy (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264220, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Alchemy
	r(53042, {["timeline"] = {ADDED_3_0_3, REMOVED_4_0_1}}),	-- Mixology
	r(60893),	-- Northrend Alchemy Research
	filter(CONSUMABLES, {
		r(53840),	-- Elixir of Mighty Agility
		r(53898),	-- Elixir of Mighty Fortitude
		r(54218),	-- Elixir of Mighty Strength
		r(60367),	-- Elixir of Mighty Thoughts
		r(53847),	-- Elixir of Versatility[Legion+] / Elixir of Spirit
		r(58871),	-- Endless Healing Potion
		r(58868),	-- Endless Mana Potion
		r(53903),	-- Flask of Endless Rage
		r(54213),	-- Flask of Pure Mojo
		r(53902),	-- Flask of Stoneblood
		r(53901),	-- Flask of the Frost Wyrm
		r(67025, {["timeline"] = {ADDED_3_2_0, REMOVED_5_0_4}}),	-- Flask of the North
		r(53848),	-- Guru's Elixir
		r(53839),	-- Icy Mana Potion
		r(53905),	-- Indestructible Potion
		r(62213, {["timeline"] = {ADDED_3_0_8, REMOVED_5_0_4}}),	-- Lesser Flask of Resistance
		r(53899),	-- Lesser Flask of Toughness
		r(53900),	-- Potion of Nightmares
		r(53838),	-- Resurgent Healing Potion
		r(53836),	-- Runic Healing Potion
		r(53837),	-- Runic Mana Potion
		r(53842),	-- Spellpower Elixir
		r(53841),	-- Wrath Elixir
	}),
	filter(REAGENTS, {
		r(62409, {["timeline"] = {ADDED_3_0_8}}),	-- Ethereal Oil
		r(53812),	-- Pygmy Oil
		applyclassicphase(WRATH_PHASE_THREE, r(66658, {["timeline"] = {ADDED_3_2_0}})),	-- Transmute: Ametrine
		r(57427),	-- Transmute: Earthsiege Diamond
		applyclassicphase(WRATH_PHASE_THREE, r(66662, {["timeline"] = {ADDED_3_2_0}})),	-- Transmute: Dreadstone
		applyclassicphase(WRATH_PHASE_THREE, r(66664, {["timeline"] = {ADDED_3_2_0}})),	-- Transmute: Eye of Zul
		applyclassicphase(WRATH_PHASE_THREE, r(66660, {["timeline"] = {ADDED_3_2_0}})),	-- Transmute: King's Amber
		applyclassicphase(WRATH_PHASE_THREE, r(66663, {["timeline"] = {ADDED_3_2_0}})),	-- Transmute: Majestic Zircon
		r(57425),	-- Transmute: Skyflare Diamond
		r(60350),	-- Transmute: Titanium
	}),
	filter(TRINKET_F, {
		r(60403),	-- Indestructible Alchemist Stone
		r(60396),	-- Mercurial Alchemist Stone
		r(60405),	-- Mighty Alchemist Stone
	}),
}));
CATA_ALCHEMY = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	r(80731, {	-- Alchemy (Illustrious)
		["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264243, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Alchemy
	filter(CONSUMABLES, {
		r(80479),	-- Deathblood Venom
		r(93935),	-- Draught of War
		r(80478),	-- Earthen Potion
		r(80488),	-- Elixir of Deep Earth
		r(80491),	-- Elixir of Impossible Accuracy
		r(80493),	-- Elixir of Mighty Speed
		r(80484),	-- Elixir of the Cobra
		r(80497),	-- Elixir of the Master
		r(80480),	-- Elixir of the Naga
		r(80724, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_5_0_4}}),	-- Flask of Enhancement
		r(94162),	-- Flask of Flowing Water
		r(80719),	-- Flask of Steelskin
		r(80720),	-- Flask of the Draconic Mind
		r(80721),	-- Flask of the Winds
		r(80723),	-- Flask of Titanic Strength
		r(80477),	-- Ghost Elixir
		r(80496),	-- Golemblood Potion
		r(80508),	-- Lifebound Alchemist Stone
		r(80490),	-- Mighty Rejuvenation Potion
		r(80487),	-- Mysterious Potion
		r(80498),	-- Mythical Healing Potion
		r(80494),	-- Mythical Mana Potion
		r(80482),	-- Potion of Concentration
		r(80725),	-- Potion of Deepholm
		r(80269),	-- Potion of Illusion
		r(80495),	-- Potion of the Tol'vir
		r(80726),	-- Potion of Treasure Finding
		r(80492),	-- Prismatic Elixir
		r(80481),	-- Volcanic Potion
	}),
	filter(REAGENTS, {
		r(80486),	-- Deepstone Oil
		r(80247),	-- Transmute: Amberjewel
		r(80248),	-- Transmute: Demonseye
		r(80251),	-- Transmute: Dream Emerald
		r(80250),	-- Transmute: Ember Topaz
		r(80245),	-- Transmute: Inferno Ruby
		r(78866),	-- Transmute: Living Elements
		r(80246),	-- Transmute: Ocean Sapphire
		r(80244),	-- Transmute: Pyrium Bar
		r(80237),	-- Transmute: Shadowspirit Diamond
		r(80243),	-- Transmute: Truegold
	}),
	filter(TRINKET_F, {
		r(80508),	-- Lifebound Alchemist Stone
		r(96253, {["timeline"] = {ADDED_4_0_6}}),	-- Quicksilver Alchemist Stone
		r(96254, {["timeline"] = {ADDED_4_0_6}}),	-- Vibrant Alchemist Stone
		r(96252, {["timeline"] = {ADDED_4_0_6}}),	-- Volatile Alchemist Stone
	}),
}));
MOP_ALCHEMY = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(105206, {	-- Alchemy (Zen Master)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264245, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Alchemy
	r(114751),	-- Alchemist's Rejuvenation
	r(114752),	-- Master Healing Potion
	r(136197, {["timeline"] = {ADDED_5_2_0}}),	-- Zen Alchemist Stone
}));
DRAENOR_ALCHEMY = applyclassicphase(WOD_PHASE_ONE, i(109558, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This is a reward for completing the introductory Alchemy questline that can drop from any Draenor mob.",
	["g"] = {
		r(156606, {	-- Alchemy (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264247, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Alchemy
		r(156587),	-- Alchemical Catalyst
		r(156585),	-- Crescent Oil
		r(175865),	-- Draenic Invisibility Potion
		r(175867),	-- Draenic Living Action Potion
		r(156582),	-- Draenic Mana Potion
		r(175853),	-- Draenic Swiftness Potion
		r(175866),	-- Draenic Water Breathing Elixir
		r(175869),	-- Draenic Water Walking Elixir
		r(175868),	-- Pure Rage Potion
		r(175880),	-- Secrets of Draenor Alchemy
	},
})));
COMMON_DRAENOR_ALCHEMY_RECIPES = applyclassicphase(WOD_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(160662, {["timeline"] = {ADDED_8_0_1}}),	-- Recipe: Blackwater Anti-Venom (RECIPE!)
	i(112024, {	-- Recipe: Draenic Agility Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
	i(112038),	-- Recipe: Draenic Agility Potion (RECIPE!)
	i(112042),	-- Recipe: Draenic Channeled Mana Potion (RECIPE!)
	i(112026, {	-- Recipe: Draenic Intellect Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
	i(112039),	-- Recipe: Draenic Intellect Potion (RECIPE!)
	i(112023, {	-- Recipe: Draenic Philosopher's Stone (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
	i(112045, {	-- Recipe: Draenic Rejuvenation Potion (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
	i(112030, {	-- Recipe: Draenic Stamina Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
	i(112027, {	-- Recipe: Draenic Strength Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
	i(112040),	-- Recipe: Draenic Strength Potion (RECIPE!)
	i(112041),	-- Recipe: Draenic Versatility Potion / Draenic Armor Potion (RECIPE!)
	i(160661, {["timeline"] = {ADDED_8_0_1}}),	-- Recipe: Fire Ammonite Oil (RECIPE!)
	i(112031, {	-- Recipe: Greater Draenic Agility Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 5 }},
	}),
	i(112033, {	-- Recipe: Greater Draenic Intellect Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 5 }},
	}),
	i(112037, {	-- Recipe: Greater Draenic Stamina Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 5 }},
	}),
	i(112034, {	-- Recipe: Greater Draenic Strength Flask (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 5 }},
	}),
	i(160663, {["timeline"] = {ADDED_8_0_1}}),	-- Recipe: Healing Tonic (RECIPE!)
	i(112047, {	-- Recipe: Transmorphic Tincture (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ALCHEMY, 1 }},
	}),
}));
BFA_ALCHEMY = applyclassicphase(BFA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	filter(CONSUMABLES, {
		r(279159),	-- Battle Potion of Agility [Rank 1]
		r(279160),	-- Battle Potion of Agility [Rank 2]
		r(279162),	-- Battle Potion of Intellect [Rank 1]
		r(279163),	-- Battle Potion of Intellect [Rank 2]
		r(279165),	-- Battle Potion of Stamina [Rank 1]
		r(279166),	-- Battle Potion of Stamina [Rank 2]
		r(279168),	-- Battle Potion of Strength [Rank 1]
		r(279169),	-- Battle Potion of Strength [Rank 2]
		r(252382),	-- Coastal Healing Potion [Rank 1]
		r(252383),	-- Coastal Healing Potion [Rank 2]
		r(252385),	-- Coastal Mana Potion [Rank 1]
		r(252386),	-- Coastal Mana Potion [Rank 2]
		r(252388),	-- Coastal Rejuvenation Potion [Rank 1]
		r(252389),	-- Coastal Rejuvenation Potion [Rank 2]
		r(252391),	-- Demitri's Draught of Deception [Rank 1]
		r(252392),	-- Demitri's Draught of Deception [Rank 2]
		r(252351),	-- Flask of Endless Fathoms [Rank 1]
		r(252352),	-- Flask of Endless Fathoms [Rank 2]
		r(252348),	-- Flask of the Currents [Rank 1]
		r(252349),	-- Flask of the Currents [Rank 2]
		r(252357),	-- Flask of the Undertow [Rank 1]
		r(252358),	-- Flask of the Undertow [Rank 2]
		r(252354),	-- Flask of the Vast Horizon [Rank 1]
		r(252355),	-- Flask of the Vast Horizon [Rank 2]
		r(252394),	-- Lightfoot Potion [Rank 1]
		r(252395),	-- Lightfoot Potion [Rank 2]
		r(276975),	-- Mystical Cauldron [Rank 1]
		r(252341),	-- Potion of Bursting Blood [Rank 1]
		r(252342),	-- Potion of Bursting Blood [Rank 2]
		r(252400),	-- Potion of Concealment [Rank 1]
		r(252401),	-- Potion of Concealment [Rank 2]
		r(252337),	-- Potion of Replenishment [Rank 1]
		r(252339),	-- Potion of Replenishment [Rank 2]
		r(252344),	-- Potion of Rising Death [Rank 1]
		r(252345),	-- Potion of Rising Death [Rank 2]
		r(287447, {["timeline"] = {ADDED_8_1_0}}),	-- Potion of the Unveiling Eye [Rank 1]
		r(252397),	-- Sea Mist Potion [Rank 1]
		r(252398),	-- Sea Mist Potion [Rank 2]
		r(252334),	-- Steelskin Potion [Rank 1]
		r(252335),	-- Steelskin Potion [Rank 2]
	}),
	filter(MISC, {
		r(287234, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Dilution
		r(278420),	-- Potion of Herb Tracking
		r(286630, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Dilution
		r(251314),	-- Transmute: Cloth to Skins
		r(251832),	-- Transmute: Expulsom
		r(251822),	-- Transmute: Fish to Gems
		r(286547, {["timeline"] = {ADDED_8_1_0}}),	-- Transmute: Herbs to Anchors
		r(251306),	-- Transmute: Herbs to Cloth
		r(251305),	-- Transmute: Herbs to Ore
		r(251808),	-- Transmute: Meat to Pet
		r(251310),	-- Transmute: Ore to Cloth
		r(251311),	-- Transmute: Ore to Gems
		r(251309),	-- Transmute: Ore to Herbs
		r(287288, {["timeline"] = {ADDED_8_1_0}}),	-- Vial of Obfuscation
	}),
	filter(TRINKET_F, {
		r(252376),	-- Endless Tincture of Fractional Power [Rank 1]
		r(252377),	-- Endless Tincture of Fractional Power [Rank 2]
		r(252361),	-- Endless Tincture of Renewed Combat [Rank 1]
		r(252362),	-- Endless Tincture of Renewed Combat [Rank 2]
		r(291084, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Alchemist Stone
		r(252368),	-- Siren's Alchemist Stone [Rank 1]
		r(252369),	-- Siren's Alchemist Stone [Rank 2]
		r(252379),	-- Surging Alchemist Stone [Rank 1]
		r(252380),	-- Surging Alchemist Stone [Rank 2]
		r(286921, {["timeline"] = {ADDED_8_1_0}}),	-- Tidal Alchemist Stone
	}),
}));
NAZJATAR_ALCHEMY = applyclassicphase(BFA_PHASE_THREE, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	filter(CONSUMABLES, {
		r(301310),	-- Abyssal Healing Potion [Rank 1]
		r(301311),	-- Abyssal Healing Potion [Rank 2]
		r(298846),	-- Greater Flask of Endless Fathoms [Rank 1]
		r(298847),	-- Greater Flask of Endless Fathoms [Rank 2]
		r(298842),	-- Greater Flask of the Currents [Rank 1]
		r(298843),	-- Greater Flask of the Currents [Rank 2]
		r(298853),	-- Greater Flask of the Undertow [Rank 1]
		r(298854),	-- Greater Flask of the Undertow [Rank 2]
		r(298850),	-- Greater Flask of the Vast Horizon [Rank 1]
		r(298851),	-- Greater Flask of the Vast Horizon [Rank 2]
		r(298862),	-- Greater Mystical Cauldron [Rank 1]
		r(298863),	-- Greater Mystical Cauldron [Rank 2]
		r(298726),	-- Potion of Empowered Proximity [Rank 1]
		r(298727),	-- Potion of Empowered Proximity [Rank 2]
		r(298744),	-- Potion of Focused Resolve [Rank 1]
		r(298745),	-- Potion of Focused Resolve [Rank 2]
		r(300749),	-- Potion of Unbridled Fury [Rank 1]
		r(300750),	-- Potion of Unbridled Fury [Rank 2]
		r(300752),	-- Potion of Wild Mending [Rank 1]
		r(300753),	-- Potion of Wild Mending [Rank 2]
		r(298729),	-- Superior Battle Potion of Agility [Rank 1]
		r(298730),	-- Superior Battle Potion of Agility [Rank 2]
		r(298741),	-- Superior Battle Potion of Intellect [Rank 1]
		r(298742),	-- Superior Battle Potion of Intellect [Rank 2]
		r(298747),	-- Superior Battle Potion of Stamina [Rank 1]
		r(298748),	-- Superior Battle Potion of Stamina [Rank 2]
		r(298750),	-- Superior Battle Potion of Strength [Rank 1]
		r(298751),	-- Superior Battle Potion of Strength [Rank 2]
		r(298734),	-- Superior Steelskin Potion [Rank 1]
		r(298735),	-- Superior Steelskin Potion [Rank 2]
	}),
	filter(TRINKET_F, {
		r(298995),	-- Abyssal Alchemist Stone
	}),
}));
SL_ALCHEMY = applyclassicphase(SHADOWLANDS_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309822),	-- Shadowlands Alchemy
	filter(CONSUMABLES, {
		r(359870, {["timeline"] = {ADDED_9_2_0}}),	-- Cosmic Healing Potion
		r(307119),	-- Embalmer's Oil
		r(307384),	-- Potion of Deathly Fixation
		r(307383),	-- Potion of Divine Awakening
		r(307381),	-- Potion of Empowered Exorcisms
		r(307094),	-- Potion of Hardened Shadows
		r(307382),	-- Potion of Phantom Fire
		r(322301),	-- Potion of Sacrificial Anima
		r(295084),	-- Potion of Shaded Sight
		r(256134),	-- Potion of Soul Purity
		r(256133),	-- Potion of Specter Swiftness
		r(307093),	-- Potion of Spectral Agility
		r(307096),	-- Potion of Spectral Intellect
		r(307097),	-- Potion of Spectral Stamina
		r(307098),	-- Potion of Spectral Strength
		r(307095),	-- Potion of Spiritual Clarity
		r(261424),	-- Potion of the Hidden Spirit
		r(344316),	-- Potion of the Psychopomp's Speed
		r(342887),	-- Potion of Unhindered Passing
		r(307118),	-- Shadowcore Oil
		r(307101),	-- Spectral Flask of Power
		r(307103),	-- Spectral Flask of Stamina
		r(307100),	-- Spiritual Anti-Venom
		r(301578),	-- Spiritual Healing Potion
		r(301683),	-- Spiritual Mana Potion
		r(261423),	-- Spiritual Rejuvenation Potion
	}),
	filter(MISC, {
		r(343679),	-- Crafter's Mark I
		r(343675),	-- Novice Crafter's Mark
		r(307142),	-- Shadowghast Ingot
	}),
	filter(REAGENTS, {
		r(307120),	-- Ground Death Blossom
		r(307123),	-- Ground Marrowroot
		r(307125),	-- Ground Nightshade
		r(307124),	-- Ground Rising Glory
		r(307121),	-- Ground Vigil's Torch
		r(307122),	-- Ground Widowbloom
	}),
	filter(TRINKET_F, {
		r(307200),	-- Spiritual Alchemy Stone
	}),
}));
DF_ALCHEMY = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366261),	-- Dragon Isles Alchemy
	r(370746),	-- Basic Phial Experimentation
	r(370743),	-- Basic Potion Experimentation
	filter(CONSUMABLES, {
		r(370547),	-- Aerated Mana Potion
		r(370551),	-- Elemental Potion of Power
		r(370465),	-- Phial of Tepid Versatility
		r(370539),	-- Refreshing Healing Potion
		r(370731),	-- Writhefire Oil
	}),
	filter(MISC, {
		r(389190),	-- Recraft Equipment
		r(370711),	-- Transmute: Awakened Air
	}),
	filter(REAGENTS, {
		r(370722),	-- Omnium Draconis
		r(370717),	-- Primal Convergent
		r(370748),	-- Reclaim Concoctions
	}),
}));
TWW_ALCHEMY = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423321),	-- Khaz Algar Alchemy
	r(427174),	-- Wild Experimentation
	filter(CONSUMABLES, {
		r(430590),	-- Algari Healing Potion
	}),
	filter(MISC, {
		r(425137),	-- Recraft Equipment
	}),
	filter(REAGENTS, {
		r(462121),	-- Bubbling Mycobloom Culture
		r(427214),	-- Neutralize Concoctions
		r(462122),	-- Petal Powder
	}),
});