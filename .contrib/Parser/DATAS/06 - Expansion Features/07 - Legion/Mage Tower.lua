-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

-- #if BEFORE BFA
local MageTowerFilter = {["u"] = 41};
-- #else
local MageTowerFilter =
{["timeline"] = {
	ADDED_7_2_0,
	REMOVED_8_0_1,
}};
local MageTowerFilter92 =
{["timeline"] = {
	ADDED_9_2_0,
	REMOVED_10_0_0,
	ADDED_10_0_5,
}};
-- #endif

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, {
	-- Original Legion content
	n(MAGE_TOWER, bubbleDown(MageTowerFilter, {
		["description"] = "The Mage Tower Challenges were solo encounters designed for all of the 36 talent specializations in the game during Legion. They were designed to be challenging, but beatable. Access to these challenges was removed with the BFA Prepatch, 8.0.1.\n\nCongratulations to everyone that worked really hard attempting to collect all of these appearances!\n\n - Crieve (31/36)",
		["g"] = {
			ach(11611, {	-- A Challenging Look
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(11612, {	-- Fighting with Style: Challenging
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			q(46065, {	-- An Impossible Foe
				["classes"] = {
					DEATHKNIGHT,	-- Unholy
					DRUID,			-- Feral
					MAGE,			-- Fire
					ROGUE,			-- Outlaw
					SHAMAN,			-- Elemental
					WARRIOR,		-- Fury
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					115638,	-- Agatha
					115719,	-- Imp Servant
					115641,	-- Smoldering Imp
					115642,	-- Umbral Imp
					115640,	-- Fuming Imp
				},
				["g"] = {
					artifact(947, {	-- Apocalypse
						["classes"] = { DEATHKNIGHT },
					}),
					artifact(435, {	-- Fangs of Ashamane
						["classes"] = { DRUID },
					}),
					artifact(489, {	-- Felo'melorn
						["classes"] = { MAGE },
					}),
					artifact(702, {	-- The Dreadblades
						["classes"] = { ROGUE },
					}),
					artifact(684, {	-- The Fist of Ra-den
						["classes"] = { SHAMAN },
					}),
					artifact(665, {	-- Warswords of the Valarjar
						["classes"] = { WARRIOR },
					}),
				},
			}),
			q(44925, {	-- Closing the Eye
				["classes"] = {
					DEATHKNIGHT,	-- Frost
					DEMONHUNTER,	-- Havoc
					HUNTER,			-- Survival
					ROGUE,			-- Subtlety
					WARRIOR,		-- Arms
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					115244,	-- Archmage Xylem
					116839,	-- Corrupting Shadows
				},
				["g"] = {
					artifact(383, {	-- Blades of the Fallen Prince
						["classes"] = { DEATHKNIGHT },
					}),
					artifact(39, {	-- Twinblades of the Deceiver
						["classes"] = { DEMONHUNTER },
					}),
					artifact(973, {	-- Talonclaw
						["classes"] = { HUNTER },
					}),
					artifact(84, {	-- Fangs of the Devourer
						["classes"] = { ROGUE },
					}),
					artifact(806, {	-- Strom'kar, the Warbreaker
						["classes"] = { WARRIOR },
					}),
				},
			}),
			q(46035, {	-- End of the Risen Threat
				["classes"] = {
					DRUID,		-- Restoration
					PALADIN,	-- Holy
					MONK,		-- Mistweaver
					PRIEST,		-- Holy
					SHAMAN,		-- Restoration
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					118447,	-- Commander Jarod Shadowsong
					118448,	-- Granny Marl
					118451,	-- Callie Carrington
					118982,	-- Lord Erdris Thorn <The Rooksguard>
					122397,	-- Corrupted Risen Arbalest
					119478,	-- Corrupted Risen Mage
					119474,	-- Corrupted Risen Soldier
				},
				["g"] = {
					artifact(875, {	-- G'Hanir, the Mother Tree
						["classes"] = { DRUID },
					}),
					artifact(584, {	-- The Silver Hand
						["classes"] = { PALADIN },
					}),
					artifact(933, {	-- Sheilun, Staff of the Mists
						["classes"] = { MONK },
					}),
					artifact(758, {	-- T'uure, Beacon of the Naaru
						["classes"] = { PRIEST },
					}),
					artifact(787, {	-- Sharas'dal, Scepter of Tides
						["classes"] = { SHAMAN },
					}),
				},
			}),
			q(45627, {	-- Feltotem's Fall
				["classes"] = {
					HUNTER,		-- Beast Mastery
					MONK,		-- Windwalker
					PRIEST,		-- Discipline
					WARLOCK,	-- Destruction
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					117230,	-- Tugar Bloodtotem
					117484,	-- Jormog the Behemoth
				},
				["g"] = {
					artifact(466, {	-- Titanstrike
						["classes"] = { HUNTER },
					}),
					artifact(941, {	-- Fists of the Heavens
						["classes"] = { MONK },
					}),
					artifact(956, {	-- Light's Wrath
						["classes"] = { PRIEST },
					}),
					artifact(915, {	-- Scepter of Sargeras
						["classes"] = { WARLOCK },
					}),
				},
			}),
			q(45526, {	-- The God-Queen's Fury
				["classes"] = {
					MAGE,		-- Arcane
					PALADIN,	-- Retribution
					ROGUE,		-- Assassination
					SHAMAN,		-- Enhancemeent
					WARLOCK,	-- Demonology
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					116484,	-- Sigryn
					116499,	-- Jarl Velbrand
					116496,	-- Runeseer Faljar
				},
				["g"] = {
					artifact(144, {	-- Aluneth
						["classes"] = { MAGE },
					}),
					artifact(23, {	-- Ashbringer
						["classes"] = { PALADIN },
					}),
					artifact(901, {	-- The Kingslayers
						["classes"] = { ROGUE },
					}),
					artifact(301, {	-- Doomhammer
						["classes"] = { SHAMAN },
					}),
					artifact(828, {	-- Skull of the Man'ari
						["classes"] = { WARLOCK },
					}),
				},
			}),
			q(45416, {	-- The Highlord's Return
				["classes"] = {
					DEATHKNIGHT,	-- Blood
					DEMONHUNTER,	-- Vengeance
					DRUID,			-- Guardian
					MONK,			-- Brewmaster
					PALADIN,		-- Protection
					WARRIOR,		-- Protection
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					117933,	-- Inquisitor Variss
					118032,	-- Tormenting Eye
					103928,	-- Smoldering Infernal
					118044,	-- Nether Horror
					117198,	-- Highlord Kruul
				},
				["g"] = {
					artifact(364, {	-- Maw of the Damned
						["classes"] = { DEATHKNIGHT },
					}),
					artifact(857, {	-- Aldrachi Warblades
						["classes"] = { DEMONHUNTER },
					}),
					artifact(990, {	-- Claws of Ursoc
						["classes"] = { DRUID },
					}),
					artifact(352, {	-- Fu Zan, the Wanderer's Companion
						["classes"] = { MONK },
					}),
					artifact(718, {	-- Truthguard
						["classes"] = { PALADIN },
					}),
					artifact(861, {	-- Scale of the Earth-Warder
						["classes"] = { WARRIOR },
					}),
				},
			}),
			q(46127, {	-- Thwarting the Twins
				["classes"] = {
					DRUID,		-- Balance
					HUNTER,		-- Marksmanship
					MAGE,		-- Frost
					PRIEST,		-- Shadow
					WARLOCK,	-- Affliction
				},
				["provider"] = { "n", 117871 },	-- War Councilor Victoria
				["crs"] = {
					116410,	-- Karam Magespear
					116409,	-- Raest Magespear
					118698,	-- Hand from Beyond
					119098,	-- Thing of Nightmare
				},
				["g"] = {
					artifact(929, {	-- Scythe of Elune
						["classes"] = { DRUID },
					}),
					artifact(965, {	-- Thas'dorah, Legacy of the Windrunners
						["classes"] = { HUNTER },
					}),
					artifact(885, {	-- Ebonchill
						["classes"] = { MAGE },
					}),
					artifact(261, {	-- Xal'atath, Blade of the Black Empire
						["classes"] = { PRIEST },
					}),
					artifact(972, {	-- Ulthalesh, the Deadwind Harvester
						["classes"] = { WARLOCK },
					}),
				},
			}),
		},
	})),
	-- Rehashed Permanent content
	n(MAGE_TOWER, bubbleDown(MageTowerFilter92, {
		["description"] = "The Mage Tower Challenges are back, more challenging than ever. Good luck everyone!",
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(15309),	-- A Towering Success
				ach(15310, {	-- A Tour of Towers
					i(188674),	-- Mage-Bound Spelltome (MOUNT!)
				}),
				ach(15308),	-- Tower Overwhelming
			}),
			cl(DEATHKNIGHT, {	-- Gravewarden Armaments set
				i(188537),	-- Gravewarden Armplates
				i(188532),	-- Gravewarden Chestplate
				i(188628),	-- Gravewarden Cloak
				i(188538),	-- Gravewarden Greatbelt
				i(188533),	-- Gravewarden Handguards
				i(188535),	-- Gravewarden Legplates
				i(188536),	-- Gravewarden Pauldrons
				i(188539),	-- Gravewarden Sabatons
				i(188534),	-- Gravewarden Visage
			}),
			cl(DEMONHUNTER, {	-- Demonbane Armor set
				i(188545),	-- Demonbane Bracers
				i(188542),	-- Demonbane Faceguard
				i(188541),	-- Demonbane Gauntlets
				i(188540),	-- Demonbane Harness
				i(188543),	-- Demonbane Leggings
				i(188544),	-- Demonbane Shoulderpads
				i(188629),	-- Demonbane Shroud
				i(188547),	-- Demonbane Treads
				i(188546),	-- Demonbane Waistguard
			}),
			cl(DRUID, {	-- Stormheart Raiment set
				i(188554),	-- Stormheart Cinch
				i(188630),	-- Stormheart Drape
				i(188549),	-- Stormheart Gloves
				i(188550),	-- Stormheart Headdress
				i(188642),	-- Stormheart Jerkin
				i(188551),	-- Stormheart Legguards
				i(188552),	-- Stormheart Mantle
				i(188555),	-- Stormheart Moccasins
				i(188548),	-- Stormheart Tunic
				i(188553),	-- Stormheart Wristguards
			}),
			cl(HUNTER, {	-- Wildstalker Armor set
				i(188561),	-- Wildstalker Armguards
				i(188562),	-- Wildstalker Belt
				i(188631),	-- Wildstalker Cape
				i(188556),	-- Wildstalker Chestguard
				i(188557),	-- Wildstalker Gauntlets
				i(188558),	-- Wildstalker Helmet
				i(188559),	-- Wildstalker Leggings
				i(188560),	-- Wildstalker Spaulders
				i(188563),	-- Wildstalker Treads
			}),
			cl(MAGE, {	-- Regalia of the Arcane Tempest set
				i(188565),	-- Crown of the Arcane Tempest
				i(188569),	-- Cuffs of the Arcane Tempest
				i(188632),	-- Drape of the Arcane Tempest
				i(188564),	-- Gloves of the Arcane Tempest
				i(188566),	-- Leggings of the Arcane Tempest
				i(188568),	-- Mantle of the Arcane Tempest
				i(188567),	-- Robes of the Arcane Tempest
				i(188570),	-- Sash of the Arcane Tempest
				i(188571),	-- Slippers of the Arcane Tempest
			}),
			cl(MONK, {	-- Xuen's Battlegear set
				i(188633),	-- Xuen's Cloak
				i(188579),	-- Xuen's Footpads
				i(188573),	-- Xuen's Gauntlets
				i(188574),	-- Xuen's Helm
				i(188575),	-- Xuen's Legguards
				i(188576),	-- Xuen's Shoulderguards
				i(188572),	-- Xuen's Tunic
				i(188578),	-- Xuen's Waistband
				i(188577),	-- Xuen's Wraps
			}),
			cl(PALADIN, {	-- Radiant Lightbringer Armor set
				i(188580),	-- Radiant Lightbringer Breastplate
				i(188634),	-- Radiant Lightbringer Cape
				i(188582),	-- Radiant Lightbringer Crown
				i(188581),	-- Radiant Lightbringer Gauntlets
				i(188587),	-- Radiant Lightbringer Greatboots
				i(188583),	-- Radiant Lightbringer Greaves
				i(188584),	-- Radiant Lightbringer Shoulderguards
				i(188585),	-- Radiant Lightbringer Vambraces
				i(188586),	-- Radiant Lightbringer Waistguard
			}),
			cl(PRIEST, {	-- Vestments of Blind Absolution set
				i(188593),	-- Bracelets of Blind Absolution
				i(188588),	-- Gloves of Blind Absolution
				i(188589),	-- Hood of Blind Absolution
				i(188590),	-- Leggings of Blind Absolution
				i(188592),	-- Mantle of Blind Absolution
				i(188591),	-- Robes of Blind Absolution
				i(188595),	-- Sandals of Blind Absolution
				i(188635),	-- Shawl of Blind Absolution
				i(188644),	-- Vestments of Blind Absolution
				i(188594),	-- Waistwrap of Blind Absolution
			}),
			cl(ROGUE, {	-- Fanged Slayer's Armor set
				i(188596),	-- Fanged Slayer's Chestguard
				i(188602),	-- Fanged Slayer's Cord
				i(188603),	-- Fanged Slayer's Footwraps
				i(188597),	-- Fanged Slayer's Handguards
				i(188598),	-- Fanged Slayer's Helm
				i(188599),	-- Fanged Slayer's Legguards
				i(188600),	-- Fanged Slayer's Shoulderpads
				i(188636),	-- Fanged Slayer's Shroud
				i(188601),	-- Fanged Slayer's Wristband
			}),
			cl(SHAMAN, {	-- Regalia of the Skybreaker set
				i(188609),	-- Armbands of the Skybreaker
				i(188637),	-- Drape of the Skybreaker
				i(188611),	-- Greaves of the Skybreaker
				i(188605),	-- Grips of the Skybreaker
				i(188641),	-- Harness of the Skybreaker
				i(188604),	-- Hauberk of the Skybreaker
				i(188606),	-- Helmet of the Skybreaker
				i(188607),	-- Legguards of the Skybreaker
				i(188608),	-- Pauldrons of the Skybreaker
				i(188610),	-- Waistguard of the Skybreaker
			}),
			cl(WARLOCK, {	-- Diabolic Raiment set
				i(188618),	-- Diabolic Cinch
				i(188617),	-- Diabolic Cuffs
				i(188619),	-- Diabolic Footwraps
				i(188612),	-- Diabolic Gloves
				i(188613),	-- Diabolic Helm
				i(188614),	-- Diabolic Leggings
				i(188616),	-- Diabolic Mantle
				i(188615),	-- Diabolic Robe
				i(188638),	-- Diabolic Shroud
				i(188645),	-- Diabolic Tunic
			}),
			cl(WARRIOR, {	-- Titanic Onslaught Armor set
				i(188620),	-- Titanic Onslaught Breastplate
				i(188639),	-- Titanic Onslaught Cloak
				i(188626),	-- Titanic Onslaught Girdle
				i(188622),	-- Titanic Onslaught Greathelm
				i(188623),	-- Titanic Onslaught Greaves
				i(188621),	-- Titanic Onslaught Handguards
				i(188624),	-- Titanic Onslaught Pauldrons
				i(188627),	-- Titanic Onslaught Warboots
				i(188625),	-- Titanic Onslaught Wristplates
			}),
		},
	})),
}));
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.SL, {
		q(64923),	-- unlocking Gravewarden Armaments set
		q(64924),	-- unlocking Demonbane Armor set
		q(64925),	-- unlocking Stormheart Raiment set
		q(64926),	-- unlocking Wildstalker Armor set
		q(64927),	-- unlocking Regalia of the Arcane Tempest set
		q(64928),	-- unlocking Xuen's Battlegear set
		q(64929),	-- unlocking Radiant Lightbringer Armor set
		q(64930),	-- unlocking Vestments of Blind Absolution set
		q(64931),	-- unlocking Fanged Slayer's Armor set
		q(64932),	-- unlocking Regalia of the Skybreaker set
		q(64933),	-- unlocking Diabolic Raiment set
		q(64934),	-- unlocking Titanic Onslaught Armor set
		q(64922),	-- unlocking what I assume is the Fel Bear druid form, popped at the same time as 64925
	}),
});