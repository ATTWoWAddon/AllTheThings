---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE 4.0.3
-- CRIEVE NOTE: This document is only relevant to Classic.
-- I wanted to add Weapon Masters to the zones without polluting the main files.
WEAPON_SKILL_BOWS = {
	["recipeID"] = 264,	-- Bows
	["classes"] = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_CROSSBOWS = {
	["recipeID"] = 5011,	-- Crossbows
	["classes"] = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_DAGGERS = {
	["recipeID"] = 1180,	-- Daggers
	["classes"] = {
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
	["recipeID"] = 15590,	-- Fist Weapons
	["classes"] = {
		DEMONHUNTER,
		DRUID,
		HUNTER,
		MONK,
		ROGUE,
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_GUNS = {
	["recipeID"] = 266,	-- Guns
	["classes"] = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_ONE_HANDED_AXES = {
	["recipeID"] = 196,	-- One-Handed Axes
	["classes"] = {
		DEATHKNIGHT,
		DEMONHUNTER,
		HUNTER,
		MONK,
		PALADIN,
		-- #if AFTER WRATH
		ROGUE,
		-- #endif
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_ONE_HANDED_MACES = {
	["recipeID"] = 198,	-- One-Handed Maces
	["classes"] = {
		DEATHKNIGHT,
		DRUID,
		MONK,
		PALADIN,
		PRIEST,
		ROGUE,
		SHAMAN,
		WARRIOR,
	},
};
WEAPON_SKILL_ONE_HANDED_SWORDS = {
	["recipeID"] = 201,	-- One-Handed Swords
	["classes"] = {
		DEATHKNIGHT,
		DEMONHUNTER,
		HUNTER,
		MAGE,
		MONK,
		PALADIN,
		ROGUE,
		WARLOCK,
		WARRIOR,
	},
};
WEAPON_SKILL_POLEARMS = {
	["recipeID"] = 200,	-- Polearms
	["classes"] = {
		DEATHKNIGHT,
		-- #if AFTER WRATH
		DRUID,
		-- #endif
		HUNTER,
		MONK,
		PALADIN,
		WARRIOR,
	},
};
WEAPON_SKILL_STAVES = {
	["recipeID"] = 227,	-- Staves
	["classes"] = {
		DRUID,
		HUNTER,
		MAGE,
		MONK,
		PRIEST,
		SHAMAN,
		WARLOCK,
		WARRIOR,
	},
};
WEAPON_SKILL_THROWN = {
	["recipeID"] = 2567,	-- Thrown
	["classes"] = {
		HUNTER,
		ROGUE,
		WARRIOR,
	},
};
WEAPON_SKILL_TWO_HANDED_AXES = {
	["recipeID"] = 197,	-- Two-Handed Axes
	["classes"] = {
		DEATHKNIGHT,
		HUNTER,
		PALADIN,
		SHAMAN,
		WARRIOR,
	},
	-- #if BEFORE TBC
	["OnUpdate"] = [[function(t)
		if _.ClassIndex == ]] .. SHAMAN .. [[ then
			rawset(t, 'collectible', nil);
			if not _.IsSpellKnown(16269) then
				rawset(t, 'collectible', false);
			end
		end
	end]],
	-- #endif
};
WEAPON_SKILL_TWO_HANDED_MACES = {
	["recipeID"] = 199,	-- Two-Handed Maces
	["classes"] = {
		DEATHKNIGHT,
		DRUID,
		PALADIN,
		SHAMAN,
		WARRIOR,
	},
	-- #if BEFORE TBC
	["OnUpdate"] = [[function(t)
		if _.ClassIndex == ]] .. SHAMAN .. [[ then
			rawset(t, 'collectible', nil);
			if not _.IsSpellKnown(16269) then
				rawset(t, 'collectible', false);
			end
		end
	end]],
	-- #endif
};
WEAPON_SKILL_TWO_HANDED_SWORDS = {
	["recipeID"] = 202,	-- Two-Handed Swords
	["classes"] = {
		DEATHKNIGHT,
		HUNTER,
		PALADIN,
		WARRIOR,
	},
};
WEAPON_SKILL_WANDS = {
	["recipeID"] = 5009,	-- Wands
	["classes"] = {
		MAGE,
		PRIEST,
		WARLOCK,
	},
};

root(ROOTS.Zones, {
	m(KALIMDOR, {
		m(DARNASSUS, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(11866, {	-- Ilyenia Moonfire <Weapon Master>
					["coord"] = { 57.5, 46.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_FIST_WEAPONS,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_THROWN,
					},
				}),
			})),
		}),
		m(ORGRIMMAR, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(2704, {	-- Hanashi <Weapon Master>
					["coord"] = { 81.6, 19.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_ONE_HANDED_AXES,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_THROWN,
						WEAPON_SKILL_TWO_HANDED_AXES,
					},
				}),
				n(11868, {	-- Sayoc <Weapon Master>
					["coord"] = { 81.6, 19.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_FIST_WEAPONS,
						WEAPON_SKILL_ONE_HANDED_AXES,
						WEAPON_SKILL_THROWN,
						WEAPON_SKILL_TWO_HANDED_AXES,
					},
				}),
			})),
		}),
		-- #if AFTER TBC
		m(THE_EXODAR, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(16773, {	-- Handiir <Weapon Master>
					["coord"] = { 53.6, 84.8, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_MACES,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_TWO_HANDED_MACES,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			})),
		}),
		-- #endif
		m(THUNDER_BLUFF, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(11869, {	-- Ansekhwa <Weapon Master>
					["coord"] = { 41.2, 61.4, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						WEAPON_SKILL_GUNS,
						WEAPON_SKILL_ONE_HANDED_MACES,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_TWO_HANDED_MACES,
					},
				}),
			})),
		}),
	}),
	m(EASTERN_KINGDOMS, {
		m(IRONFORGE, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(13084, {	-- Bixi Wobblebonk <Weapon Master>
					["coord"] = { 62.2, 89.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_THROWN,
					},
				}),
				n(11865, {	-- Buliwyf Stonehand <Weapon Master>
					["coord"] = { 61.2, 89.5, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						WEAPON_SKILL_FIST_WEAPONS,
						WEAPON_SKILL_GUNS,
						WEAPON_SKILL_ONE_HANDED_AXES,
						WEAPON_SKILL_ONE_HANDED_MACES,
						WEAPON_SKILL_TWO_HANDED_AXES,
						WEAPON_SKILL_TWO_HANDED_MACES,
					},
				}),
			})),
		}),
		-- #if AFTER TBC
		m(SILVERMOON_CITY, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(16621, {	-- Ileda <Weapon Master>
					["coord"] = { 91.0, 38.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_POLEARMS,
						WEAPON_SKILL_THROWN,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			})),
		}),
		-- #endif
		m(STORMWIND_CITY, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(11867, {	-- Woo Ping <Weapon Master>
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.8, 69.0, STORMWIND_CITY },
						-- #else
						{ 57.1, 57.7, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_POLEARMS,
						WEAPON_SKILL_STAVES,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			})),
		}),
		m(UNDERCITY, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(11870, {	-- Archibald <Weapon Master>
					["coord"] = { 57.2, 32.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						WEAPON_SKILL_CROSSBOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_POLEARMS,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			})),
		}),
		-- #if AFTER TBC
		m(EVERSONG_WOODS, {
			n(WEAPON_MASTER, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_1 } }, {
				n(17005, {	-- Duelist Larenis <Weapon Master>
					["coord"] = { 48.4, 46.0, EVERSONG_WOODS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						WEAPON_SKILL_BOWS,
						WEAPON_SKILL_DAGGERS,
						WEAPON_SKILL_ONE_HANDED_SWORDS,
						WEAPON_SKILL_POLEARMS,
						WEAPON_SKILL_THROWN,
						WEAPON_SKILL_TWO_HANDED_SWORDS,
					},
				}),
			})),
		}),
		-- #endif
	}),
});
-- #endif
