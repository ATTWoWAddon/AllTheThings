-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	n(FACTION_HEADER_ALLIANCE, {
		symselector=SymSelector.CLASSIC_PVP_ALLIANCE,
		races = ALLIANCE_ONLY,
		groups = {
			-- Back
			i(16342),	-- Sergeant's Cape (58)
			i(18441),	-- Sergeant's Cape (45)
			i(18440),	-- Sergeant's Cape (30)

			-- Wrist
			i(18448, {	-- Sergeant Major's Chain Armguards (58)
				classes = { HUNTER, SHAMAN },
			}),
			i(18449, {	-- Sergeant Major's Chain Armguards (45)
				classes = { HUNTER, SHAMAN },
			}),
			i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
				classes = { DRUID },
			}),
			i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
				classes = { DRUID },
			}),
			i(18452, {	-- Sergeant Major's Leather  (58)
				classes = { ROGUE },
			}),
			i(18453, {	-- Sergeant Major's Leather Armsplints (45)
				classes = { ROGUE },
			}),
			i(18445, {	-- Sergeant Major's Plate Wristguards (58)
				classes = { PALADIN, WARRIOR },
			}),
			i(18447, {	-- Sergeant Major's Plate Wristguards (45)
				classes = { PALADIN, WARRIOR },
			}),
			i(18456, {	-- Sergeant Major's Silk Cuffs (58)
				classes = { MAGE, PRIEST, WARLOCK },
			}),
			i(18457, {	-- Sergeant Major's Silk Cuffs (45)
				classes = { MAGE, PRIEST, WARLOCK },
			}),

			-- Necks
			i(18443),	-- Master Sergeant's Insignia (58)
			i(18444),	-- Master Sergeant's Insignia (45)
			i(18442),	-- Master Sergeant's Insignia (30)

			-- Trinkets
			i(18863, { classes = { DRUID }   }),	-- Insignia of the Alliance
			i(18856, { classes = { HUNTER }  }),	-- Insignia of the Alliance
			i(18859, { classes = { MAGE }    }),	-- Insignia of the Alliance
			i(18864, { classes = { PALADIN } }),	-- Insignia of the Alliance
			i(18862, { classes = { PRIEST }  }),	-- Insignia of the Alliance
			i(18857, { classes = { ROGUE }   }),	-- Insignia of the Alliance
			i(18858, { classes = { WARLOCK } }),	-- Insignia of the Alliance
			i(18854, { classes = { WARRIOR } }),	-- Insignia of the Alliance
		},
	}),
	n(FACTION_HEADER_HORDE, {
		symselector=SymSelector.CLASSIC_PVP_HORDE,
		races = HORDE_ONLY,
		groups = {
			-- Back
			i(18461),	-- Sergeant's Cloak (58)
			i(16341),	-- Sergeant's Cloak (45)
			i(18427),	-- Sergeant's Cloak (30)

			-- Wrist
			i(18434, { classes = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (58)
			i(18436, { classes = { DRUID }					}),	-- First Sergeant's Dragonhide Armguards (45)
			i(16497, { classes = { ROGUE }					}),	-- First Sergeant's Leather Armguards (58)
			i(18435, { classes = { ROGUE }					}),	-- First Sergeant's Leather Armguards (45)
			i(16532, { classes = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (58)
			i(18432, { classes = { HUNTER, SHAMAN }			}),	-- First Sergeant's Mail Wristguards (45)
			i(18429, { classes = { PALADIN, WARRIOR }		}),	-- First Sergeant's Plate Bracers (58)
			i(18430, { classes = { PALADIN, WARRIOR }		}),	-- First Sergeant's Plate Bracers (45)
			i(16486, { classes = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (58)
			i(18437, { classes = { MAGE, PRIEST, WARLOCK }	}),	-- First Sergeant's Silk Cuffs (45)

			-- Necks
			i(16335),	-- Senior Sergeant's Insignia (58)
			i(18428),	-- Senior Sergeant's Insignia (45)
			i(15200),	-- Senior Sergeant's Insignia (30)

			-- Trinkets
			i(18853, { classes = { DRUID }	}),	-- Insignia of the Horde
			i(18846, { classes = { HUNTER }	}),	-- Insignia of the Horde
			i(18850, { classes = { MAGE }	}),	-- Insignia of the Horde
			i(18851, { classes = { PRIEST }	}),	-- Insignia of the Horde
			i(18849, { classes = { ROGUE }	}),	-- Insignia of the Horde
			i(18845, { classes = { SHAMAN }	}),	-- Insignia of the Horde
			i(18852, { classes = { WARLOCK }	}),	-- Insignia of the Horde
			i(18834, { classes = { WARRIOR }	}),	-- Insignia of the Horde
		},
	}),
});
