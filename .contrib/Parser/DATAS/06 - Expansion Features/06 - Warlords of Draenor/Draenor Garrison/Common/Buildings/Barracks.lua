-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {	-- Buildings
				garrisonBuilding(28, {	-- Barracks (rank 1: 26, rank 2: 27, rank 3: 28)
					n(ACHIEVEMENTS, {
						ach(9498, {		-- Wingman
							["sym"] = {{"partial_achievement",9499}},	-- Wingmen
						}),
						ach(9499, {		-- Wingmen
							crit(25890),		-- Leorajh
							crit(25894),		-- Talonpriest Ishaal
							crit(25895),		-- Tormmok
							crit(25891, {["races"] = HORDE_ONLY}),		-- Aeda Brightdawn
							crit(25893, {["races"] = ALLIANCE_ONLY}),		-- Defender Illona
							crit(25889, {["races"] = ALLIANCE_ONLY}),		-- Delvar Ironfirst
							crit(25892, {["races"] = HORDE_ONLY}),		-- Vivianne
						}),
					}),
					n(FACTIONS, {
						faction(1735, {	-- Barracks Bodyguards
							["description"] = "This is a hidden reputation. It might not count towards reputation achievements.",
							["collectible"] = false,
						}),
						faction(FACTION_AEDA_BRIGHTDAWN, {["races"] = HORDE_ONLY}),	-- Aeda Brightdawn
						faction(FACTION_DEFENDER_ILLONA, {["races"] = ALLIANCE_ONLY}),	-- Defender Illona
						faction(FACTION_DELVAR_IRONFIST, {["races"] = ALLIANCE_ONLY}),	-- Delvar Ironfist
						faction(FACTION_LEORAJH),	-- Leorajh
						faction(FACTION_TALONPRIEST_ISHAAL),	-- Talonpriest Ishaal
						faction(FACTION_TORMMOK),	-- Tormmok
						faction(FACTION_VIVIANNE, {["races"] = HORDE_ONLY}),	-- Vivianne
					}),
					n(QUESTS, {
						q(37126, {	-- An Ogre Without His Sword...(A)
							["provider"] = { "n", 86682 },	-- Retired Gorian Centurion(Tormmok)
							["races"] = ALLIANCE_ONLY,
						}),
						q(37180, {	-- An Ogre Without His Sword...(H)
							["provider"] = { "n", 86682 },	-- Retired Gorian Centurion(Tormmok)
							["races"] = HORDE_ONLY,
						}),
						q(37081, {	-- Burning Rage
							["provider"] = { "n", 86933 },	-- Warspear Magus(Vivianne)
							["races"] = HORDE_ONLY,
						}),
						q(37085, {	-- Fury of the Clan
							["provider"] = { "n", 86964 },	-- Bloodmane Earthbinder(Leorajh)
							["races"] = HORDE_ONLY,
						}),
						q(37080, {	-- Glorious Slaughter
							["provider"] = { "n", 86927 },	-- Stormshield Death Knight(Delvar Ironfist)
							["races"] = ALLIANCE_ONLY,
						}),
						q(37140, {	-- Leorajh's Prayer Beads(A)
							["provider"] = { "n", 86964 },	-- Bloodmane Earthbinder(Leorajh)
							["races"] = ALLIANCE_ONLY,
						}),
						q(37181, {	-- Leorajh's Prayer Beads(H)
							["provider"] = { "n", 86964 },	-- Bloodmane Earthbinder(Leorajh)
							["races"] = HORDE_ONLY,
						}),
						q(36947, {	-- New Strength
							["provider"] = { "n", 86682 },	-- Retired Gorian Centurion(Tormmok)
						}),
						q(37070, {	-- Power of the Nether
							["provider"] = { "n", 86945 },	-- Sunsworn Warlock(Aeda Brightdawn)
							["races"] = HORDE_ONLY,
						}),
						q(37137, {	-- Scrying Hard or Hardly Scrying(A)
							["provider"] = { "n", 86946 },	-- Outcast Talonpriest(Talonpriest Ishaal)
							["races"] = ALLIANCE_ONLY,
						}),
						q(37182, {	-- Scrying Hard or Hardly Scrying(H)
							["provider"] = { "n", 86946 },	-- Outcast Talonpriest(Talonpriest Ishaal)
							["races"] = HORDE_ONLY,
						}),
						q(37128, {	-- Settling Grievances
							["provider"] = { "n", 86945 },	-- Sunsworn Warlock(Aeda Brightdawn)
							["races"] = HORDE_ONLY,
						}),
						q(37131, {	-- The Dark Lady's Concern
							["provider"] = { "n", 86933 },	-- Warspear Magus(Vivianne)
							["races"] = HORDE_ONLY,
						}),
						q(37047, {	-- The Light's Gift
							["provider"] = { "n", 86934 },	-- Sha'tari Defender(Defender Illona)
							["races"] = ALLIANCE_ONLY,
						}),
						q(37127, {	-- The Light of Exodus
							["provider"] = { "n", 86934 },	-- Sha'tari Defender(Defender Illona)
							["races"] = ALLIANCE_ONLY,
						}),
						q(37084, {	-- The Shadows Call
							["provider"] = { "n", 86946 },	-- Outcast Talonpriest(Talonpriest Ishaal)
							["races"] = HORDE_ONLY,
						}),
						q(37129, {	-- Unwelcome Memories
							["provider"] = { "n", 86927 },	-- Stormshield Death Knight(Delvar Ironfist)
							["races"] = ALLIANCE_ONLY,
						}),
					}),
					n(VENDORS, {
						n(77379, {	-- Jonathan Stephens <Steward>
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(122298, {	-- Bodyguard Miniaturization Device (TOY!)
									["cost"] = { { "c", 824, 250 }, },	-- 250x Garrison Resources
								}),
							},
						}),
						n(79812, {	-- Moz'def
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(122298, {	-- Bodyguard Miniaturization Device (TOY!)
									["cost"] = { { "c", 824, 250 }, },	-- 250x Garrison Resources
								}),
							},
						}),
					}),
				}),
			}),
		})),
	})
);

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(GARRISONS, {
		n(BUILDINGS, {	-- Buildings
			garrisonBuilding(28, {	-- Barracks
				q(36902),	-- Tracking Quest: Aeda Brightdawn (use as Body Guard)
				q(36899),	-- Tracking Quest: Defender Illona (use as Body Guard)
				q(36898),	-- Tracking Quest: Delvar Ironfist (use as Body Guard)
				q(36936),	-- Tracking Quest: Leorajh (use as Body Guard)
				q(36900),	-- Tracking Quest: Talonpriest Ishaal (use as Body Guard)
				q(36877),	-- Tracking Quest: Tormmok (use as Body Guard)
				q(36901),	-- Tracking Quest: Vivianne (use as Body Guard)
			}),
		}),
	}),
})));
