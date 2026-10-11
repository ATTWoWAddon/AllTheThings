---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- CRIEVE NOTE: I wanted to add Weapon Masters to the zones without polluting the main files.
WEAPON_SKILL_BOWS = {
	recipeID = 264,	-- Bows
	classes = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_CROSSBOWS = {
	recipeID = 5011,	-- Crossbows
	classes = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_DAGGERS = {
	recipeID = 1180,	-- Daggers
	classes = {
		DRUID,
		HUNTER,
		MAGE,
		PRIEST,
		ROGUE,
		SHAMAN,
		WARLOCK,
		WARRIOR,
	},
};
WEAPON_SKILL_FIST_WEAPONS = {
	recipeID = 15590,	-- Fist Weapons
	classes = {
		DRUID,
		HUNTER,
		ROGUE,
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_GUNS = {
	recipeID = 266,	-- Guns
	classes = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_ONE_HANDED_AXES = {
	recipeID = 196,	-- One-Handed Axes
	classes = {
		HUNTER,
		PALADIN,
		ROGUE,	-- New with Forever
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_ONE_HANDED_MACES = {
	recipeID = 198,	-- One-Handed Maces
	classes = {
		DRUID,
		PALADIN,
		PRIEST,
		ROGUE,
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_ONE_HANDED_SWORDS = {
	recipeID = 201,	-- One-Handed Swords
	classes = {
		HUNTER,
		MAGE,
		PALADIN,
		ROGUE,
		WARLOCK,
		WARRIOR,
	},
};
WEAPON_SKILL_POLEARMS = {
	recipeID = 200,	-- Polearms
	classes = {
		DRUID,	-- New with Forever
		HUNTER,
		PALADIN,
		WARRIOR,
	},
};
WEAPON_SKILL_STAVES = {
	recipeID = 227,	-- Staves
	classes = {
		DRUID,
		HUNTER,
		MAGE,
		PRIEST,
		SHAMAN,
		WARLOCK,
		WARRIOR,
	},
};
WEAPON_SKILL_THROWN = {
	recipeID = 2567,	-- Thrown
	classes = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_TWO_HANDED_AXES = {
	recipeID = 197,	-- Two-Handed Axes
	classes = {
		HUNTER,
		PALADIN,
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_TWO_HANDED_MACES = {
	recipeID = 199,	-- Two-Handed Maces
	classes = {
		DRUID,
		PALADIN,
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_TWO_HANDED_SWORDS = {
	recipeID = 202,	-- Two-Handed Swords
	classes = {
		HUNTER,
		PALADIN,
		WARRIOR,
	},
};
WEAPON_SKILL_WANDS = {
	recipeID = 5009,	-- Wands
	classes = {
		MAGE,
		PRIEST,
		WARLOCK,
	},
};

root(ROOTS.Zones, {
	m(MAP.KALIMDOR, {
		m(MAP.DARNASSUS, {
			n(WEAPON_MASTER, {
				n(11866, {	-- Ilyenia Moonfire <Weapon Master>
					coord = { 57.5, 46.8, MAP.DARNASSUS },
					races = ALLIANCE_ONLY,
					groups = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_FIST_WEAPONS,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_THROWN,
					},
				}),
			}),
		}),
		m(MAP.ORGRIMMAR, {
			n(WEAPON_MASTER, {
				n(2704, {	-- Hanashi <Weapon Master>
					coord = { 81.6, 19.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					groups = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_ONE_HANDED_AXES,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_THROWN,
						WEAPON_SKILL_TWO_HANDED_AXES,
					},
				}),
				n(11868, {	-- Sayoc <Weapon Master>
					coord = { 81.6, 19.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					groups = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_FIST_WEAPONS,
						WEAPON_SKILL_ONE_HANDED_AXES,
						WEAPON_SKILL_THROWN,
						WEAPON_SKILL_TWO_HANDED_AXES,
					},
				}),
			}),
		}),
		m(MAP.THUNDER_BLUFF, {
			n(WEAPON_MASTER, {
				n(11869, {	-- Ansekhwa <Weapon Master>
					coord = { 41.2, 61.4, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					groups = {
						WEAPON_SKILL_GUNS,
						WEAPON_SKILL_ONE_HANDED_MACES,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_TWO_HANDED_MACES,
					},
				}),
			}),
		}),
	}),
	m(MAP.EASTERN_KINGDOMS, {
		m(MAP.IRONFORGE, {
			n(WEAPON_MASTER, {
				n(13084, {	-- Bixi Wobblebonk <Weapon Master>
					coord = { 62.2, 89.6, MAP.IRONFORGE },
					races = ALLIANCE_ONLY,
					groups = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_THROWN,
					},
				}),
				n(11865, {	-- Buliwyf Stonehand <Weapon Master>
					coord = { 61.2, 89.5, MAP.IRONFORGE },
					races = ALLIANCE_ONLY,
					groups = {
						WEAPON_SKILL_FIST_WEAPONS,
						WEAPON_SKILL_GUNS,
						WEAPON_SKILL_ONE_HANDED_AXES,
						WEAPON_SKILL_ONE_HANDED_MACES,
						WEAPON_SKILL_TWO_HANDED_AXES,
						WEAPON_SKILL_TWO_HANDED_MACES,
					},
				}),
			}),
		}),
		m(MAP.STORMWIND_CITY, {
			n(WEAPON_MASTER, {
				n(11867, {	-- Woo Ping <Weapon Master>
					coords = { 63.8, 69.0, MAP.STORMWIND_CITY },
					races = ALLIANCE_ONLY,
					groups = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_POLEARMS,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			}),
		}),
		m(MAP.UNDERCITY, {
			n(WEAPON_MASTER, {
				n(11870, {	-- Archibald <Weapon Master>
					coord = { 57.2, 32.4, MAP.UNDERCITY },
					races = HORDE_ONLY,
					groups = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_POLEARMS,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			}),
		}),
	}),
});
