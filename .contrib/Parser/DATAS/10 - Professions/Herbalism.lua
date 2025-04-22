-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local DF_HERBALISM_KNOWLEDGE = 2034;
local TWW_HERBALISM_KNOWLEDGE = 2789;
local function LifebloodRank(rankID)
	-- #if BEFORE CATA
	local rankID = rankID-1
	-- #endif
	return rankID
end
root(ROOTS.Professions, prof(HERBALISM, bubbleDownSelf({ ["requireSkill"] = HERBALISM }, {
	n(DISCOVERY, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2, REMOVED_6_0_2 } }, {
		r(81708, {	-- Lifeblood [Rank 1] [CATA]
			["rank"] = 1,
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 }
		}),
		r(55428, {	-- Lifeblood [Rank 1] / Rank 2 [CATA]
			["rank"] = LifebloodRank(2),
		}),
		r(55480, {	-- Lifeblood [Rank 2] / Rank 3 [CATA]
			["rank"] = LifebloodRank(3),
		}),
		r(55500, {	-- Lifeblood [Rank 3] / Rank 4 [CATA]
			["rank"] = LifebloodRank(4),
		}),
		r(55501, {	-- Lifeblood [Rank 4] / Rank 5 [CATA]
			["rank"] = LifebloodRank(5),
		}),
		r(55502, {	-- Lifeblood [Rank 5] / Rank 6 [CATA]
			["rank"] = LifebloodRank(6),
		}),
		r(55503, {	-- Lifeblood [Rank 6] / Rank 7 [CATA]
			["rank"] = LifebloodRank(7),
			["timeline"] = { ADDED_3_0_3, REMOVED_6_0_2 }
		}),
		r(74497, {	-- Lifeblood [Rank 8] [CATA]
			["rank"] = 8,
			["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_6_0_2 }
		}),
		r(121279, {	-- Lifeblood [Rank 9] [MOP]
			["rank"] = 9,
			["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 }
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18837, {	-- Broken Isles Herbalism Techniques
				crit(61501, {	-- Aethril
					["sourceQuests"] = { 40017 },	-- A Slip of the Hand
				}),
				crit(61507, {	-- Astral Glory
					["sourceQuests"] = { 48029 },	-- The Heart of It
				}),
				crit(61502, {	-- Dreamleaf
					["sourceQuests"] = { 40023 },	-- The Last Straw
				}),
				crit(61506, {	-- Felwort
					["sourceQuests"] = { 40042 },	-- The Emerald Nightmare: Felwort Mastery
				}),
				crit(61504, {	-- Fjarnskaggl
					["sourceQuests"] = { 40033 },	-- Fjarnskaggl
				}),
				crit(61503, {	-- Foxflower
					["sourceQuests"] = { 40028 },	-- The Pied Picker
				}),
				crit(61505, {	-- Starlight Rose
					["sourceQuests"] = { 40039 },	-- Tharillon's Fall
				}),
			}),
		})),
		header(HEADERS.Spell, 193294, {	-- Aethril [Rank 3]
			["provider"] = { "o", 244774 },	-- Aethril
			["maps"] = { AZSUNA },
			["g"] = {
				q(40013, {	-- Aethril Sample
					["provider"] = { "i", 129117 },	-- Aethril Sample
				}),
				q(40014, {	-- Spayed by the Spade
					["sourceQuests"] = { 40013 },	-- Aethril Sample
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193292),	-- Aethril [Rank 1]
						i(129128),	-- Pristine Pistil (QI!)
						i(129131),	-- Stainless Stamen (QI!)
					},
				}),
				q(40015, {	-- Ragged Strips of Silk
					["sourceQuests"] = { 40014 },	-- Spayed by the Spade
					["provider"] = { "i", 129135 },	-- Ragged Strips of Silk
				}),
				q(40016, {	-- Desperation Breeds Ingenuity
					["sourceQuests"] = { 40015 },	-- Ragged Strips of Silk
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193293),	-- Aethril [Rank 2]
						i(129153),	-- Chewed Aethril Stem
					},
				}),
				q(40017, {	-- A Slip of the Hand
					["description"] = "Farm around 1000-4000 Aethrils to make this quest spawn.",
					["sourceQuests"] = { 40016 },	-- Desperation Breeds Ingenuity
					["groups"] = {
						r(193294),	-- Aethril [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 247814, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Astral Glory [Rank 3]
			["providers"] = {
				{ "o", 272782 },	-- Astral Glory
				{ "o", 273052 },	-- Fel-Encrusted Herb
				{ "o", 273053 },	-- Fel-Encrusted Herb Cluster
			},
			["maps"] = {
				ANTORAN_WASTES,
				KROKUUN,
				EREDATH,
			},
			["g"] = {
				q(48027, {	-- The Glory of Argus
					["provider"] = { "i", 151856 },	-- Withered Astral Glory
					["groups"] = {
						r(247812),	-- Astral Glory [Rank 1]
					},
				}),
				q(48028, {	-- Youthful Resistance
					["sourceQuests"] = { 48027 },	-- The Glory of Argus
					["provider"] = { "i", 151857 },	-- Adolescent Astral Glory
					["groups"] = {
						r(247813),	-- Astral Glory [Rank 2]
					},
				}),
				q(48029, {	-- The Heart of It
					["sourceQuests"] = { 48028 },	-- Youthful Resistance
					["provider"] = { "i", 151858 },	-- Astral Glory Root Cluster
					["groups"] = {
						r(247814),	-- Astral Glory [Rank 3]
					},
				}),
			},
		})),
		header(HEADERS.Spell, 193297, {	-- Dreamleaf [Rank 3]
			["providers"] = {
				{ "o", 244776 },	-- Dreamleaf
				{ "o", 244775 },	-- Dreamleaf
			},
			["maps"] = { VALSHARAH },
			["g"] = {
				q(40018, {	-- Dreamleaf Sample
					["provider"] = { "i", 129118 },	-- Dreamleaf Sample
				}),
				q(40019, {	-- An Empathetic Herb
					["sourceQuests"] = { 40018 },	-- Dreamleaf Sample
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193295),	-- Dreamleaf [Rank 1]
						i(129151),	-- Blight-Infested Dreamleaf (QI!)
						i(129150),	-- Healthy Dreamleaf
					},
				}),
				q(40020, {	-- Twisted to Death
					["sourceQuests"] = { 40019 },	-- An Empathetic Herb
					["provider"] = { "i", 129136 },	-- Blight-Twisted Herb
				}),
				q(40021, {	-- One Dead Plant is One Too Many
					["sourceQuests"] = { 40020 },	-- Twisted to Death
					["provider"] = { "n", 98135 },	-- Wildcrafter Osme <Herbalism Trainer>
					["groups"] = {
						r(193296),	-- Dreamleaf [Rank 2]
					},
				}),
				q(40022, {	-- Choked by Nightmare
					["sourceQuests"] = { 40021 },	-- One Dead Plant is One Too Many
					["provider"] = { "i", 129141 },	-- Blight-Choked Herb
				}),
				q(40023, {	-- The Last Straw
					["description"] = "Farm around 1000-4000 Dreamleaves to make this quest spawn.",
					["sourceQuests"] = { 40022 },	-- Choked by Nightmare
					["provider"] = { "n", 98135 },	-- Wildcrafter Osme <Herbalism Trainer>
					["groups"] = {
						r(193297),	-- Dreamleaf [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 193309, {	-- Felwort [Rank 3]
			["providers"] = {
				{ "o", 244786 },	-- Felwort
				{ "o", 252404 },	-- Felwort
				{ "o", 247999 },	-- Felwort
				{ "o", 248001 },	-- Felwort
				{ "o", 248004 },	-- Felwort
				{ "o", 248010 },	-- Felwort
				{ "o", 248002 },	-- Felwort
				{ "o", 248011 },	-- Felwort
				{ "o", 248009 },	-- Felwort
				{ "o", 248012 },	-- Felwort
				{ "o", 248007 },	-- Felwort
				{ "o", 248005 },	-- Felwort
				{ "o", 248006 },	-- Felwort
				{ "o", 248003 },	-- Felwort
				{ "o", 248000 },	-- Felwort
				{ "o", 248008 },	-- Felwort
			},
			["maps"] = {
				AZSUNA,
				HIGHMOUNTAIN,
				STORMHEIM,
				SURAMAR,
				VALSHARAH,
			},
			["g"] = {
				q(40040, {	-- Felwort Sample
					["provider"] = { "i", 129122 },	-- Felwort Sample
					["groups"] = {
						r(193307),	-- Felwort [Rank 1]
					},
				}),
				q(40041, {	-- Felwort Analysis
					["description"] = "Available after obtaining All other herbs at Rank 1.",
					["sourceQuests"] = {
						40040,	-- Felwort Sample
						40014,	-- Spayed by the Spade (Aethril)
						40019,	-- An Empathetic Herb (Dreamleaf)
						40029,	-- Fjarnskaggl Sample (Fjarnskaggl)
						40024,	-- Foxflower Sample (Foxflower)
						40035,	-- The Gentlest Touch (Starlight Rose)
					},
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193308),	-- Felwort [Rank 2]
						i(129213),	-- Dani Earthtouch's Analysis (QI!)
						i(129214),	-- Lohor's Analysis (QI!)
						i(129212),	-- Ryno Bloomfield's Analysis (QI!)
					},
				}),
				q(40042, {	-- The Emerald Nightmare: Felwort Mastery
					["description"] = "Available after obtaining All other herbs at Rank 2.",
					["sourceQuests"] = {
						40041,	-- Felwort Analysis
						40016,	-- Desperation Breeds Ingenuity (Aethril)
						40021,	-- One Dead Plant is One Too Many (Dreamleaf)
						40031,	-- Vrykul Herblore (Fjarnskaggl)
						40026,	-- Chase the Culprit (Foxflower)
						40037,	-- The Spade's Blade (Starlight Rose)
					},
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, },	-- The Emerald Nightmare
					["groups"] = {
						r(193309),	-- Felwort [Rank 3]
						i(136413),	-- Seed of Corruption (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 193303, {	-- Fjarnskaggl [Rank 3]
			["provider"] = { "o", 244777 },	-- Fjarnskaggl
			["maps"] = { STORMHEIM },
			["g"] = {
				q(40029, {	-- Fjarnskaggl Sample
					["provider"] = { "i", 129120 },	-- Fjarnskaggl Sample
					["cost"] = {{ "i", 124104, 20 }},	-- 20x Fjarnskaggl
					["groups"] = {
						r(193301),	-- Fjarnskaggl [Rank 1]
					},
				}),
				q(40030, {	-- Ram's-Horn Trowel
					["sourceQuests"] = { 40029 },	-- Fjarnskaggl Sample
					["provider"] = { "i", 129138 },	-- Ram's-Horn Trowel
				}),
				q(40031, {	-- Vrykul Herblore
					["sourceQuests"] = { 40030 },	-- Ram's-Horn Trowel
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193302),	-- Fjarnskaggl [Rank 2]
						i(129202),	-- Herblore of the Ancients (QI!)
						i(129200),	-- The Fjarnskaggl Fjormula (QI!)
						i(129201),	-- The Tangled Beard (QI!)
					},
				}),
				q(40032, {	-- The Missing Page
					["description"] = "Farm around 1000-4000 Fjarnskaggls to make this quest spawn.",
					["sourceQuests"] = { 40031 },	-- Vrykul Herblore
					["provider"] = { "i", 129142 },	-- Runed Journal Page
				}),
				q(40033, {	-- Fjarnskaggl
					["sourceQuests"] = { 40032 },	-- The Missing Page
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["cost"] = {{ "i", 124104, 20 }},	-- 20x Fjarnskaggl
					["groups"] = {
						r(193303),	-- Fjarnskaggl [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 193300, {	-- Foxflower [Rank 3]
			["provider"] = { "o", 241641 },	-- Foxflower
			["maps"] = { HIGHMOUNTAIN },
			["g"] = {
				q(40024, {	-- Foxflower Sample
					["provider"] = { "i", 129119 },	-- Foxflower Sample
					["cost"] = {{ "i", 124103, 20 }},	-- 20x Foxflower
					["groups"] = {
						r(193298),	-- Foxflower [Rank 1]
					},
				}),
				q(40025, {	-- Teeny Bite Marks
					["sourceQuests"] = { 40024 },	-- Foxflower Sample
					["provider"] = { "i", 129137 },	-- Nibbled Foxflower Stem
				}),
				q(40026, {	-- Chase the Culprit
					["sourceQuests"] = { 40025 },	-- Teeny Bite Marks
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193299),	-- Foxflower [Rank 2]
						i(129220),	-- Chewed Foxflower Bit (QI!)
					},
				}),
				q(40028, {	-- The Pied Picker
					["description"] = "Farm around 1000-4000 Foxflowers to make this quest spawn.",
					["sourceQuests"] = { 40026 },	-- Chase the Culprit
					["provider"] = { "i", 129278 },	-- Foxflower Scent Gland
					["groups"] = {
						r(193300),	-- Foxflower [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 193306, {	-- Starlight Rose [Rank 3]
			["provider"] = { "o", 244778 },	-- Starlight Rose
			["maps"] = { SURAMAR },
			["g"] = {
				q(40034, {	-- Starlight Rosedust
					["provider"] = { "i", 129121 },	-- Starlight Rosedust
				}),
				q(40035, {	-- The Gentlest Touch
					["sourceQuests"] = { 40034 },	-- Starlight Rosedust
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193304),	-- Starlight Rose [Rank 1]
					},
				}),
				q(40036, {	-- Jeweled Spade Handle
					["sourceQuests"] = { 40035 },	-- The Gentlest Touch
					["provider"] = { "i", 129140 },	-- Jeweled Spade Handle
				}),
				q(40037, {	-- The Spade's Blade
					["sourceQuests"] = { 40036 },	-- Jeweled Spade Handle
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["groups"] = {
						r(193305),	-- Starlight Rose [Rank 2]
						i(129155),	-- Broken Herbalist's Blade (QI!)
					},
				}),
				q(40038, {	-- Insane Ramblings
					["description"] = "Farm around 1000-4000 Starlight Roses to make this quest spawn.",
					["sourceQuests"] = { 40037 },	-- The Spade's Blade
					["provider"] = { "i", 129143 },	-- Scribbled Ramblings
				}),
				q(40039, {	-- Tharillon's Fall
					["sourceQuests"] = { 40038 },	-- Insane Ramblings
					["provider"] = { "n", 92464 },	-- Kuhuine Tenderstride <Herbalism Trainer>
					["coord"] = { 42.9, 33.8, LEGION_DALARAN },
					["cost"] = {{ "i", 129158, 20 }},	-- 20x Starlight Rosedust
					["groups"] = {
						r(193306),	-- Starlight Rose [Rank 3]
						i(129209),	-- Tharillon's Notebook (QI!)
					},
				}),
			},
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18838, {	-- Fourth War Herbalism Techniques
				crit(61510, {	-- Akunda's Bite
					["sourceQuests"] = { 51404 },	-- What Happens Next
				}),
				crit(61514, {	-- Anchor Weed
					["sourceQuests"] = {
						51361,	-- More Anchor Pods [A]
						51481,	-- More Anchor Pods [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61508, {	-- Riverbud
					["sourceQuests"] = {
						48754,	-- Breaking the Food Chain [A]
						51243,	-- Breaking the Food Chain [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61513, {	-- Sea Stalk
					["sourceQuests"] = {
						48769,	-- Gathering Mementos [A]
						51503,	-- Gathering Mementos [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61512, {	-- Siren's Pollen
					["sourceQuests"] = {
						48755,	-- Pollen Punching [A]
						51452,	-- Pollen Punching [H]
					},
				}),
				crit(61509, {	-- Star Moss
					["sourceQuests"] = {
						48757,	-- Ghost Busting [A]
						51478,	-- Ghost Busting [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
				crit(61511, {	-- Winter's Kiss
					["sourceQuests"] = { 48763 },	-- The Frigid Boon
				}),
				crit(61515, {	-- Zin'anthid
					["sourceQuests"] = {
						56098,	-- Defensive in Death [A]
						56430,	-- Defensive in Death [H]
					},
					["sourceQuestNumRequired"] = 1,
				}),
			}),
		})),
		header(HEADERS.Spell, 252413, {	-- Akunda's Bite [Rank 3]
			["provider"] = { "o", 276237 },	-- Akunda's Bite
			["maps"] = { VOLDUN },
			["g"] = {
				q(51398, {	-- An Unusual Mentor [A]
					["description"] = "Requires 50 Kul Tiran Herbalism.",
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(51432, {	-- An Unusual Mentor [H]
					["description"] = "Requires 50 Zandalari Herbalism.",
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(51399, {	-- Foul Harvest
					["sourceQuests"] = {
						51398,	-- An Unusual Mentor [A]
						51432,	-- An Unusual Mentor [H]
					},
					["provider"] = { "n", 137572 },	-- Patu
					["coord"] = { 62.21, 25.81, VOLDUN },
					["sourceQuestNumRequired"] = 1,
					["g"] = {
						i(160108),	-- Digested Akunda's Bite Seed (QI!)
					},
				}),
				q(51408, {	-- Giving Back to Nature
					["sourceQuests"] = { 51399 },	-- Foul Harvest
					["provider"] = { "n", 137572 },	-- Patu
					["coord"] = { 62.21, 25.81, VOLDUN },
					["groups"] = {
						r(252412),	-- Akunda's Bite [Rank 2]
						i(160187),	-- Akunda's Bite Sapling (QI!)
					},
				}),
				q(51404, {	-- What Happens Next
					["description"] = "This can drop from |cFFFFD700Akunda's Bite|r at any herbalism level. You can only turn it in at Level 150 Kul Tiran / Zandalari Herbalism.",
					["sourceQuests"] = { 51408 },	-- Giving Back to Nature
					["provider"] = { "i", 160117 },	-- Fully Charged Lightning Pod
					["groups"] = {
						r(252413),	-- Akunda's Bite [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 252426, {	-- Anchor Weed [Rank 3]
			["providers"] = {
				{ "o", 294125 },	-- Anchor Weed
				{ "o", 276242 },	-- Anchor Weed
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["g"] = {
				q(51016, {	-- Seeking More Knowledge
					["description"] = "Requires 100 Kul Tiran Herbalism.",
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["maps"] = { 1015, 1016, 1017, 1018, 1029 },	-- Waycrest Manor
					["groups"] = {
						r(252425),	-- Anchor Weed [Rank 2]
						i(159960),	-- A Treatise on Anchor Weed (QI!)
					},
				}),
				q(51482, {	-- Seeking More Knowledge [H]
					["description"] = "Requires 100 Zandalari Herbalism.",
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["maps"] = { 1015, 1016, 1017, 1018, 1029 },	-- Waycrest Manor
					["groups"] = {
						r(252425),	-- Anchor Weed [Rank 2]
						i(159960),	-- A Treatise on Anchor Weed (QI!)
					},
				}),
				q(51360, {	-- Enormous Anchor Pod [A]
					["description"] = "This can drop from |cFFFFD700Anchor Weed|r at any herbalism level. You can only turn it in at Level 150 Kul Tiran Herbalism.",
					["sourceQuests"] = { 51016 },	-- Seeking More Knowledge [A]
					["provider"] = { "i", 160035 },	-- Enormous Anchor Pod
					["races"] = ALLIANCE_ONLY,
				}),
				q(51480, {	-- Enormous Anchor Pod [H]
					["description"] = "This can drop from |cFFFFD700Anchor Weed|r at any herbalism level. You can only turn it in at Level 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51482 },	-- Seeking More Knowledge [H]
					["provider"] = { "i", 160035 },	-- Enormous Anchor Pod
					["races"] = HORDE_ONLY,
					["g"] = {
						i(160550),	-- Enormous Anchor Pod (QI!)
					},
				}),
				q(51361, {	-- More Anchor Pods [A]
					["description"] = "Requires 150 Kul Tiran Herbalism.",
					["sourceQuests"] = { 51360 },	-- Enormous Anchor Pod [A]
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252426),	-- Anchor Weed [Rank 3]
						i(160036),	-- Mature Anchor Pod (QI!)
					},
				}),
				q(51481, {	-- More Anchor Pods [H]
					["description"] = "Requires 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51480 },	-- Enormous Anchor Pod [H]
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252426),	-- Anchor Weed [Rank 3]
						i(160036),	-- Mature Anchor Pod (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 252407, {	-- Riverbud [Rank 3]
			["providers"] = {
				{ "o", 281870 },	-- Riverbud
				{ "o", 276234 },	-- Riverbud
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["g"] = {
				q(48753, {	-- Emergency Transplants [A]
					["description"] = "Requires 50 Kul Tiran Herbalism.",
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252406),	-- Riverbud [Rank 2]
					},
				}),
				q(51230, {	-- Emergency Transplants [H]
					["description"] = "Requires 50 Zandalari Herbalism.",
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252406),	-- Riverbud [Rank 2]
					},
				}),
				q(48754, {	-- Breaking the Food Chain [A]
					["description"] = "Requires 150 Kul Tiran Herbalism.",
					["sourceQuests"] = { 48753 },	-- Emergency Transplants [A]
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252407),	-- Riverbud [Rank 3]
					},
				}),
				q(51243, {	-- Breaking the Food Chain [H]
					["description"] = "Requires 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51230 },	-- Emergency Transplants
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252407),	-- Riverbud [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 252423, {	-- Sea Stalk [Rank 3]
			["providers"] = {
				{ "o", 276240 },	-- Sea Stalk
				{ "o", 281872 },	-- Sea Stalk
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["g"] = {
				q(51365, {	-- Cultural Signifcance [A]
					["description"] = "Requires 50 Kul Tiran Herbalism.",
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252422),	-- Sea Stalk [Rank 2]
					},
				}),
				q(51498, {	-- Cultural Signifcance [H]
					["description"] = "Requires 50 Zandalari Herbalism.",
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252422),	-- Sea Stalk [Rank 2]
					},
				}),
				q(48769, {	-- Gathering Mementos [A]
					["description"] = "Requires 150 Kul Tiran Herbalism.",
					["sourceQuests"] = { 51365 },	-- Cultural Significance [A]
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252423),	-- Sea Stalk [Rank 3]
						i(160057),	-- Sailor's Cutlass (QI!)
					},
				}),
				q(51503, {	-- Gathering Mementos [H]
					["description"] = "Requires 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51498 },	-- Cultural Significance [H]
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252423),	-- Sea Stalk [Rank 3]
						i(160314),	-- Sailor's Necklace (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 252420, {	-- Siren's Pollen [Rank 3]
			["providers"] = {
				{ "o", 276239 },	-- Siren's Sting
				{ "o", 281869 },	-- Siren's Sting
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
				-- #if AFTER 8.2.0
				MECHAGON,
				-- #endif
			},
			["g"] = {
				q(51312, {	-- Aromatic Pollenator [A]
					["description"] = "This can drop from |cFFFFD700Siren's Pollen|r at any herbalism level. You can only turn it in at Level 50 Kul Tiran Herbalism.",
					["provider"] = { "i", 159877 },	-- Dead Pollen-Covered Bee
					["races"] = ALLIANCE_ONLY,
				}),
				q(51447, {	-- Aromatic Pollenator [H]
					["description"] = "This can drop from |cFFFFD700Siren's Pollen|r at any herbalism level. You can only turn it in at Level 50 Zandalari Herbalism.",
					["provider"] = { "i", 160250 },	-- Dead Pollen-Covered Bee
					["races"] = HORDE_ONLY,
				}),
				q(51313, {	-- Learn From the Best [A]
					["description"] = "Requires 50 Kul Tiran Herbalism.",
					["sourceQuests"] = { 51312 },	-- Aromatic Pollenator [A]
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252419),	-- Siren's Pollen [Rank 2]
						i(159881),	-- Declan's Potion of Plant Shape (QI!)
					},
				}),
				q(51448, {	-- Learn From the Best [H]
					["description"] = "Requires 50 Zandalari Herbalism.",
					["sourceQuests"] = { 51447 },	-- Aromatic Pollenator [H]
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252419),	-- Siren's Pollen [Rank 2]
						i(160252),	-- Jahden's Potion of Plant Shape (QI!)
					},
				}),
				q(48758, {	-- Disgustingly Damp Flower [A]
					["description"] = "This can drop from |cFFFFD700Siren's Pollen|r at any herbalism level. You can only turn it in at Level 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51313 },	-- Learn From the Best
					["provider"] = { "i", 159956 },	-- Disgustingly Damp Flower
					["races"] = ALLIANCE_ONLY,
				}),
				q(51451, {	-- Disgustingly Damp Flower [H]
					["description"] = "This can drop from |cFFFFD700Siren's Pollen|r at any herbalism level. You can only turn it in at Level 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51448 },	-- Learn From the Best
					["provider"] = { "i", 160301 },	-- Disgustingly Damp Flower
					["races"] = HORDE_ONLY,
				}),
				q(48755, {	-- Pollen Punching [A]
					["description"] = "Requires 150 Kul Tiran Herbalism.",
					["sourceQuests"] = { 48758 },	-- Disgustingly Damp Flower [A]
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252420),	-- Siren's Pollen [Rank 3]
						i(159957),	-- Heaping Handful of Damp Pollen (QI!)
					},
				}),
				q(51452, {	-- Pollen Punching [H]
					["description"] = "Requires 150 Zandalari Herbalism.",
					["sourceQuests"] = { 48758 },	-- Disgustingly Damp Flower [H]
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252420),	-- Siren's Pollen [Rank 3]
						i(159957),	-- Heaping Handful of Damp Pollen (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 252410, {	-- Star Moss [Rank 3]
			["providers"] = {
				{ "o", 281868 },	-- Star Moss
				{ "o", 276236 },	-- Star Moss
				{ "o", 281079 },	-- Star Moss
				{ "o", 281867 },	-- Star Moss
			},
			["maps"] = {
				DRUSTVAR,
				NAZMIR,
				STORMSONG_VALLEY,
				TIRAGARDE_SOUND,
				VOLDUN,
				ZULDAZAR,
			},
			["g"] = {
				q(48756, {	-- Here in Spirit [A]
					["description"] = "Requires 50 Kul Tiran Herbalism.",
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(252409),	-- Star Moss [Rank 2]
						i(159830),	-- Fresh Star Moss (QI!)
					},
				}),
				q(51464, {	-- Here in Spirit [H]
					["description"] = "Requires 50 Zandalari Herbalism.",
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252409),	-- Star Moss [Rank 2]
						i(159830),	-- Fresh Star Moss (QI!)
					},
				}),
				q(48757, {	-- Ghost Busting [A]
					["description"] = "Requires 150 Kul Tiran Herbalism.",
					["sourceQuests"] = { 48756 },	-- Here in Spirit [A]
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["groups"] = {
						r(252410),	-- Star Moss [Rank 3]
						i(159833),	-- Smoldering Bundle of Star Moss (QI!)
					},
				}),
				q(51478, {	-- Ghost Busting [H]
					["description"] = "Requires 150 Zandalari Herbalism.",
					["sourceQuests"] = { 51464 },	-- Here in Spirit [H]
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(252410),	-- Star Moss [Rank 3]
						i(160299),	-- Smoldering Bundle of Star Moss (QI!)
					},
				}),
			},
		}),
		header(HEADERS.Spell, 252417, {	-- Winter's Kiss [Rank 3]
			["provider"] = { "o", 276238 },	-- Winter's Kiss
			["maps"] = { DRUSTVAR },
			["g"] = {
				q(48762, {	-- Meet Sweetflower [A]
					["description"] = "Requires 50 Kul Tiran Herbalism.",
					["provider"] = { "n", 136096 },	-- Declan Senal
					["coord"] = { 70.45, 5.13, BORALUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(51446, {	-- Meet Sweetflower [H]
					["description"] = "Requires 50 Zandalari Herbalism.",
					["provider"] = { "n", 122704 },	-- Jahden Fla
					["coord"] = { 42.2, 35.6, DAZARALOR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(51376, {	-- Can't Teach on an Empty Stomach
					["sourceQuests"] = {
						48762,	-- Meet Sweetflower [A]
						51446,	-- Meet Sweetflower [H]
					},
					["provider"] = { "n", 136141 },	-- Xun Xun Sweetflower
					["coord"] = { 20.61, 45.61, DRUSTVAR },
					["cost"] = {{ "i", 152546, 7 }},	-- 7x Lane Snapper
					["sourceQuestNumRequired"] = 1,
					["groups"] = {
						r(252416),	-- Winter's Kiss [Rank 2]
					},
				}),
				q(48763, {	-- The Frigid Boon
					["description"] = "This can drop from |cFFFFD700Winter's Kiss|r at any herbalism level. You can only turn it in at Level 150 Kul Tiran / Zandalari Herbalism.",
					["sourceQuests"] = { 51376 },	-- Can't Teach on an Empty Stomach
					["provider"] = { "i", 160064 },	-- The Frigid Boon
					["groups"] = {
						r(252417),	-- Winter's Kiss [Rank 3]
					},
				}),
			},
		}),
		header(HEADERS.Spell, 298144, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Zin'anthid [Rank 3]
			["provider"] = { "o", 326598 },	-- Zin'anthid
			["maps"] = { NAZJATAR },
			["g"] = {
				q(56098, {	-- Defensive in Death [A]
					["provider"] = { "i", 168919 },	-- Zin'anthid Tentacle
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						r(298144),	-- Zin'anthid [Rank 3]
					},
				}),
				q(56430, {	-- Defensive in Death [H]
					["provider"] = { "i", 169596 },	-- Zin'anthid Tentacle
					["races"] = HORDE_ONLY,
					["groups"] = {
						r(298144),	-- Zin'anthid [Rank 3]
					},
				}),
			},
		})),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18828, {	-- Botanist's Log: Dragon Isles
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					18824,	-- Botanist's Log - Bubble Poppy
					18822,	-- Botanist's Log - Hochenblume
					18829,	-- Botanist's Log - Overloaded Elements
					18823,	-- Botanist's Log - Saxifrage
					18825,	-- Botanist's Log - Writhebark
				}},
				["g"] = {
					crit(61434),	-- Infused Pollen Recovered
					crit(61433),	-- Dreambloom Recovered
				},
			}),
			ach(18824, {	-- Botanist's Log - Bubble Poppy
				crit(61406, {	-- Bubble Poppy
					["providers"] = {
						{ "o", 375241 },	-- Bubble Poppy
						{ "o", 398755 },	-- Bubble Poppy
					},
					["_quests"] = { 71972 },	-- Bubble Poppy
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61407, {	-- Lush Bubble Poppy
					["providers"] = {
						{ "o", 381957 },	-- Lush Bubble Poppy
						{ "o", 398751 },	-- Lush Bubble Poppy
					},
					["_quests"] = { 71973 },	-- Lush Bubble Poppy
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61408, {	-- Windswept Bubble Poppy
					["provider"] = { "o", 375245 },	-- Windswept Bubble Poppy
					["_quests"] = { 71978 },	-- Windswept Bubble Poppy
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(61409, {	-- Frigid Bubble Poppy
					["provider"] = { "o", 375244 },	-- Frigid Bubble Poppy
					["_quests"] = { 71982 },	-- Frigid Bubble Poppy
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
					},
				}),
				crit(61410, {	-- Titan-Touched Bubble Poppy
					["providers"] = {
						{ "o", 375242 },	-- Titan-Touched Bubble Poppy
						{ "o", 398759 },	-- Titan-Touched Bubble Poppy
					},
					["_quests"] = { 71986 },	-- Titan-Touched Bubble Poppy
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61411, {	-- Decayed Bubble Poppy
					["provider"] = { "o", 375246 },	-- Decayed Bubble Poppy
					["_quests"] = { 71990 },	-- Decayed Bubble Poppy
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(61412, {	-- Infurious Bubble Poppy
					["providers"] = {
						{ "o", 375243 },	-- Infurious Bubble Poppy
						{ "o", 398764 },	-- Infurious Bubble Poppy
					},
					["_quests"] = { 71994 },	-- Infurious Bubble Poppy
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61413, {	-- Lambent Bubble Poppy
					["provider"] = { "o", 390142 },	-- Lambent Bubble Poppy
					["_quests"] = { 75142 },	-- Lambent Bubble Poppy
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
			ach(18822, {	-- Botanist's Log - Hochenblume
				crit(61391, {	-- Lush Hochenblume
					["providers"] = {
						{ "o", 381960 },	-- Lush Hochenblume
						{ "o", 398753 },	-- Lush Hochenblume
					},
					["_quests"] = { 71969 },	-- Lush Hochenblume
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61392, {	-- Windswept Hochenblume
					["provider"] = { "o", 381213 },	-- Windswept Hochenblume
					["_quests"] = { 71976 },	-- Windswept Hochenblume
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(61393, {	-- Frigid Hochenblume
					["provider"] = { "o", 381214 },	-- Frigid Hochenblume
					["_quests"] = { 71980 },	-- Frigid Hochenblume
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
					},
				}),
				crit(61394, {	-- Titan-Touched Hochenblume
					["providers"] = {
						{ "o", 381210 },	-- Titan-Touched Hochenblume
						{ "o", 398761 },	-- Titan-Touched Hochenblume
					},
					["_quests"] = { 71984 },	-- Titan-Touched Hochenblume
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61395, {	-- Decayed Hochenblume
					["provider"] = { "o", 381212 },	-- Decayed Hochenblume
					["_quests"] = { 71988 },	-- Decayed Hochenblume
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(61396, {	-- Infurious Hochenblume
					["providers"] = {
						{ "o", 381211 },	-- Infurious Hochenblume
						{ "o", 398766 },	-- Infurious Hochenblume
					},
					["_quests"] = { 71992 },	-- Infurious Hochenblume
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61397, {	-- Lambent Hochenblume
					["provider"] = { "o", 390139 },	-- Lambent Hochenblume
					["_quests"] = { 75141 },	-- Lambent Hochenblume
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
			ach(18829, {	-- Botanist's Log - Overloaded Elements
				crit(61422, {	-- Overload Windswept Herb
					["providers"] = {
						{ "o", 375245 },	-- Windswept Bubble Poppy
						{ "o", 381213 },	-- Windswept Hochenblume
						{ "o", 381202 },	-- Windswept Saxifrage
						{ "o", 381199 },	-- Windswept Writhebark
					},
					["_quests"] = { 72342 },	-- Overload Windswept Herb
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(61423, {	-- Overload Frigid Herb
					["providers"] = {
						{ "o", 375244 },	-- Frigid Bubble Poppy
						{ "o", 381214 },	-- Frigid Hochenblume
						{ "o", 381201 },	-- Frigid Saxifrage
						{ "o", 381200 },	-- Frigid Writhebark
					},
					["_quests"] = { 72343 },	-- Overload Frigid Herb
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
					},
				}),
				crit(61424, {	-- Overload Titan-Touched Herb
					["providers"] = {
						{ "o", 375242 },	-- Titan-Touched Bubble Poppy
						{ "o", 398759 },	-- Titan-Touched Bubble Poppy
						{ "o", 381210 },	-- Titan-Touched Hochenblume
						{ "o", 398761 },	-- Titan-Touched Hochenblume
						{ "o", 381205 },	-- Titan-Touched Saxifrage
						{ "o", 398762 },	-- Titan-Touched Saxifrage
						{ "o", 381196 },	-- Titan-Touched Writhebark
						{ "o", 398760 },	-- Titan-Touched Writhebark
					},
					["_quests"] = { 72344 },	-- Overload Titan-Touched Herb
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61425, {	-- Overload Decayed Herb
					["providers"] = {
						{ "o", 375246 },	-- Decayed Bubble Poppy
						{ "o", 381212 },	-- Decayed Hochenblume
						{ "o", 381203 },	-- Decayed Saxifrage
						{ "o", 381198 },	-- Decayed Writhebark
					},
					["_quests"] = { 72345 },	-- Overload Decayed Herb
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(61426, {	-- Overload Infurious Herb
					["providers"] = {
						{ "o", 375243 },	-- Infurious Bubble Poppy
						{ "o", 398764 },	-- Infurious Bubble Poppy
						{ "o", 381211 },	-- Infurious Hochenblume
						{ "o", 398766 },	-- Infurious Hochenblume
						{ "o", 381204 },	-- Infurious Saxifrage
						{ "o", 398767 },	-- Infurious Saxifrage
						{ "o", 381197 },	-- Infurious Writhebark
						{ "o", 398765 },	-- Infurious Writhebark
					},
					["_quests"] = { 72348 },	-- Overload Infurious Herb
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61427, {	-- Overload Lambent Herb
					["providers"] = {
						{ "o", 390142 },	-- Lambent Bubble Poppy
						{ "o", 390139 },	-- Lambent Hochenblume
						{ "o", 390140 },	-- Lambent Saxifrage
						{ "o", 390141 },	-- Lambent Writhebark
					},
					["_quests"] = { 75138 },	-- Overload Lambent Herb
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
			ach(18823, {	-- Botanist's Log - Saxifrage
				crit(61398, {	-- Saxifrage
					["providers"] = {
						{ "o", 381207 },	-- Saxifrage
						{ "o", 398758 },	-- Saxifrage
					},
					["_quests"] = { 71974 },	-- Saxifrage
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61399, {	-- Lush Saxifrage
					["providers"] = {
						{ "o", 381959 },	-- Lush Saxifrage
						{ "o", 398754 },	-- Lush Saxifrage
					},
					["_quests"] = { 71975 },	-- Lush Saxifrage
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61400, {	-- Windswept Saxifrage
					["provider"] = { "o", 381202 },	-- Windswept Saxifrage
					["_quests"] = { 71979 },	-- Windswept Saxifrage
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(61401, {	-- Frigid Saxifrage
					["provider"] = { "o", 381201 },	-- Frigid Saxifrage
					["_quests"] = { 71983 },	-- Frigid Saxifrage
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
					},
				}),
				crit(61402, {	-- Titan-Touched Saxifrage
					["providers"] = {
						{ "o", 381205 },	-- Titan-Touched Saxifrage
						{ "o", 398762 },	-- Titan-Touched Saxifrage
					},
					["_quests"] = { 71987 },	-- Titan-Touched Saxifrage
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61403, {	-- Decayed Saxifrage
					["provider"] = { "o", 381203 },	-- Decayed Saxifrage
					["_quests"] = { 71991 },	-- Decayed Saxifrage
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(61404, {	-- Infurious Saxifrage
					["providers"] = {
						{ "o", 381204 },	-- Infurious Saxifrage
						{ "o", 398767 },	-- Infurious Saxifrage
					},
					["_quests"] = { 72341 },	-- Infurious Saxifrage
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61405, {	-- Lambent Saxifrage
					["provider"] = { "o", 390140 },	-- Lambent Saxifrage
					["_quests"] = { 75143 },	-- Lambent Saxifrage
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
			ach(18825, {	-- Botanist's Log - Writhebark
				crit(61414, {	-- Writhebark
					["providers"] = {
						{ "o", 381154 },	-- Writhebark
						{ "o", 398756 },	-- Writhebark
					},
					["_quests"] = { 71970 },	-- Writhebark
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61415, {	-- Lush Writhebark
					["providers"] = {
						{ "o", 381958 },	-- Lush Writhebark
						{ "o", 398752 },	-- Lush Writhebark
					},
					["_quests"] = { 71971 },	-- Lush Writhebark
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61416, {	-- Windswept Writhebark
					["provider"] = { "o", 381199 },	-- Windswept Writhebark
					["_quests"] = { 71977 },	-- Windswept Writhebark
					["maps"] = { OHNAHRAN_PLAINS },
				}),
				crit(61417, {	-- Frigid Writhebark
					["provider"] = { "o", 381200 },	-- Frigid Writhebark
					["_quests"] = { 71981 },	-- Frigid Writhebark
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
					},
				}),
				crit(61418, {	-- Titan-Touched Writhebark
					["providers"] = {
						{ "o", 381196 },	-- Titan-Touched Writhebark
						{ "o", 398760 },	-- Titan-Touched Writhebark
					},
					["_quests"] = { 71985 },	-- Titan-Touched Writhebark
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61419, {	-- Decayed Writhebark
					["provider"] = { "o", 381198 },	-- Decayed Writhebark
					["_quests"] = { 71989 },	-- Decayed Writhebark
					["maps"] = { THE_AZURE_SPAN },
				}),
				crit(61420, {	-- Infurious Writhebark
					["providers"] = {
						{ "o", 381197 },	-- Infurious Writhebark
						{ "o", 398765 },	-- Infurious Writhebark
					},
					["_quests"] = { 71993 },	-- Infurious Writhebark
					["maps"] = {
						OHNAHRAN_PLAINS,
						THALDRASZUS,
						THE_AZURE_SPAN,
						THE_WAKING_SHORES,
						ZARALEK_CAVERN,
					},
				}),
				crit(61421, {	-- Lambent Writhebark
					["provider"] = { "o", 390141 },	-- Lambent Writhebark
					["_quests"] = { 75144 },	-- Lambent Writhebark
					["maps"] = { ZARALEK_CAVERN },
				}),
			}),
		})),
		n(QUESTS, {
			q(70364, {	-- Dragon Isles Herbalism
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Herbalism.",
				["provider"] = { "n", 192010 },	-- Szarostrasza <Herbalism Trainer>
				["coord"] = { 57.4, 65.8, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366242,	-- Dragon Isles Herbalism
					"questID", 72243,	-- Dragon Isles Herbalism
				},
			}),
			q(72243, {	-- Dragon Isles Herbalism
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Herbalism.",
				["provider"] = { "n", 192549 },	-- Feilin Kuan
				["coord"] = { 76.8, 34.0, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366242,	-- Dragon Isles Herbalism
					"questID", 70364,	-- Dragon Isles Herbalism
				},
			}),
			q(70026, {	-- Artisan's Supply: Lava Beetles
				["provider"] = { "n", 192549 },	-- Feilin Kuan
				["coord"] = { 76.8, 34.0, THE_WAKING_SHORES },
				["cost"] = {{ "i", 197755, 5 }},	-- 5x Lava Beetle
				["_drop"] = { "g" },
			}),
			q(70253, {	-- Hidden Profession Master Herbalism
				["name"] = "Hidden Profession Master: Herbalism",
				["provider"] = { "n", 194839 },	-- Hua Greenpaw
				["coord"] = { 58.4, 50.0, OHNAHRAN_PLAINS },
			}),
			q(70190, {	-- Specialized Secrets: Herbalism
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- 1x Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["g"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["sharedDescription"] = "Requires 25 Skill.",
			["provider"] = { "n", 185549 },	-- Agrikus
			["coord"] = { 38.2, 68.6, VALDRAKKEN },
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["g"] = {
				i(199115),	-- Herbalism Field Notes
			},
		},{
			q(70614),	-- Bubble Craze
			q(70613),	-- Get Their Bark Before They Bite
			q(70616),	-- How Many??
			q(70615),	-- The Case of the Missing Herbs
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", DF_HERBALISM_KNOWLEDGE, 1 }} }, {
				r(391088),	-- Refine Herbs++
				r(391089),	-- Refine Herbs+++
				r(390392, {["timeline"] = {ADDED_10_0_5}}),	-- Overload Elemental Herb
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(DF_HERBALISM_KNOWLEDGE),
			},
		},{
			i(199115),	-- Herbalism Field Notes
			q(74107, {	-- DF Inscription Order: Herbalism
				["name"] = "DF Inscription Order: Herbalism",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194704 },	-- Draconic Treatise on Herbalism
			}),
			q(71857, {	-- DF Weekly Herbalism Knowledgepoint #1
				["name"] = "DF Weekly Herbalism Knowledgepoint #1",
				["provider"] = { "i", 200677 },	-- Dreambloom Petal
			}),
			q(71858, {	-- DF Weekly Herbalism Knowledgepoint #2
				["name"] = "DF Weekly Herbalism Knowledgepoint #2",
				["provider"] = { "i", 200677 },	-- Dreambloom Petal
			}),
			q(71859, {	-- DF Weekly Herbalism Knowledgepoint #3
				["name"] = "DF Weekly Herbalism Knowledgepoint #3",
				["provider"] = { "i", 200677 },	-- Dreambloom Petal
			}),
			q(71860, {	-- DF Weekly Herbalism Knowledgepoint #4
				["name"] = "DF Weekly Herbalism Knowledgepoint #4",
				["provider"] = { "i", 200677 },	-- Dreambloom Petal
			}),
			q(71861, {	-- DF Weekly Herbalism Knowledgepoint #5
				["name"] = "DF Weekly Herbalism Knowledgepoint #5",
				["provider"] = { "i", 200677 },	-- Dreambloom Petal
			}),
			q(71864, {	-- DF Weekly Herbalism Knowledgepoint #6
				["name"] = "DF Weekly Herbalism Knowledgepoint #6",
				["provider"] = { "i", 200678 },	-- Dreambloom
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["sharedDescription"] = "Requires 25 Skill.",
			["provider"] = { "n", 219101 },	-- Akdan <Herbalism Trainer>
			["coord"] = { 44.8, 69.3, DORNOGAL },
			["isWeekly"] = true,
			["g"] = {
				i(224817),	-- Algari Herbalism Notes
			},
		},{
			q(82970),	-- A Bloom and A Blossom
			q(82962),	-- A handful of Luredrops
			q(82965),	-- Light and Shadow
			q(82916),	-- When Fungi Bloom
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", TWW_HERBALISM_KNOWLEDGE, 1 }} }, {
				r(442990),	-- Empowered Mulch
				r(442989),	-- Imbued Mulch
				r(442988),	-- Magical Mulch
				r(438811),	-- Refine Herbs++
				r(438812),	-- Refine Herbs+++
			}),
		}),
		n(QUESTS, sharedData({
			["provider"] = { "n", 219101 },	-- Akdan <Herbalism Trainer>
			["coord"] = { 44.8, 69.4, DORNOGAL },
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["g"] = {
				i(224817),	-- Algari Herbalist's Notes
			},
		},{
			q(82965),	-- Light and Shadow
			q(82958),	-- Little Blessings
		})),
		n(TREASURES, {
			o(455993, {	-- Ancient Flower
				["coord"] = { 57.5, 61.5, ISLE_OF_DORN },
				["questID"] = 83874,
				["g"] = {
					i(226300),	-- Ancient Flower
				},
			}),
			o(455989, {	-- Arathi Garden Trowel
				["coord"] = { 47.7, 63.3, HALLOWFALL },
				["questID"] = 83878,
				["g"] = {
					i(226304),	-- Arathi Garden Trowel
				},
			}),
			o(455988, {	-- Arathi Herb Pruner
				["coord"] = { 36.0, 55.0, HALLOWFALL },
				["questID"] = 83879,
				["g"] = {
					i(226305),	-- Arathi Herb Pruner
				},
			}),
			o(455992, {	-- Dornogal Gardening Scythe
				["coord"] = { 59.2, 23.5, DORNOGAL },
				["questID"] = 83875,
				["g"] = {
					i(226301),	-- Dornogal Gardening Scythe
				},
			}),
			o(455991, {	-- Earthen Digging Fork
				["coord"] = { 48.2, 35.0, THE_RINGING_DEEPS },
				["questID"] = 83876,
				["g"] = {
					i(226302),	-- Earthen Digging Fork
				},
			}),
			o(455990, {	-- Fungarian Slicer's Knife
				["coord"] = { 52.8, 65.8, THE_RINGING_DEEPS },
				["questID"] = 83877,
				["g"] = {
					i(226303),	-- Fungarian Slicer's Knife
				},
			}),
			o(455986, {	-- Tunneler's Shovel
				["coord"] = { 46.8, 16.1, NERUBAR },
				["questID"] = 83881,
				["g"] = {
					i(226307),	-- Tunneler's Shovel
				},
			}),
			o(455987, {	-- Web-Entangled Lotus
				["coord"] = { 54.6, 20.9, NERUBAR },
				["questID"] = 83880,
				["g"] = {
					i(226306),	-- Web-Entangled Lotus
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(TWW_HERBALISM_KNOWLEDGE),
			},
		},{
			i(224817),	-- Algari Herbalism Notes
			q(81416, {	-- TWW Weekly Herbalism Knowledgepoint #1
				["name"] = "TWW Weekly Herbalism Knowledgepoint #1",
				["provider"] = { "i", 224264 },	-- Deepgrove Petal
			}),
			q(81417, {	-- TWW Weekly Herbalism Knowledgepoint #2
				["name"] = "TWW Weekly Herbalism Knowledgepoint #2",
				["provider"] = { "i", 224264 },	-- Deepgrove Petal
			}),
			q(81418, {	-- TWW Weekly Herbalism Knowledgepoint #3
				["name"] = "TWW Weekly Herbalism Knowledgepoint #3",
				["provider"] = { "i", 224264 },	-- Deepgrove Petal
			}),
			q(81419, {	-- TWW Weekly Herbalism Knowledgepoint #4
				["name"] = "TWW Weekly Herbalism Knowledgepoint #4",
				["provider"] = { "i", 224264 },	-- Deepgrove Petal
			}),
			q(81420, {	-- TWW Weekly Herbalism Knowledgepoint #5
				["name"] = "TWW Weekly Herbalism Knowledgepoint #5",
				["provider"] = { "i", 224264 },	-- Deepgrove Petal
			}),
			q(81421, {	-- TWW Weekly Herbalism Knowledgepoint #6
				["name"] = "TWW Weekly Herbalism Knowledgepoint #6",
				["provider"] = { "i", 224265 },	-- Deepgrove Rose
			}),
		})),
	})),
})));