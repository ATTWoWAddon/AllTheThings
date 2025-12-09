---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(PROFESSIONS, {
		prof(ALCHEMY, {
			n(153811, {	-- Instructor Okanu <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.2, NAZJATAR },
				["groups"] = NAZJATAR_ALCHEMY,
			}),
			n(154393, {	-- Narv <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_ALCHEMY,
			}),
		}),
		prof(BLACKSMITHING, {
			n(153817, {	-- Instructor Alikana <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.6, NAZJATAR },
				["groups"] = NAZJATAR_BLACKSMITHING,
			}),
			n(154321, {	-- Jada <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.0, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_BLACKSMITHING,
			}),
		}),
		prof(COOKING, {
			n(154257, {	-- Instructor Ulooaka <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.0, NAZJATAR },
				["groups"] = NAZJATAR_COOKING,
			}),
			n(154408, {	-- Rolm <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.8, NAZJATAR },
				["groups"] = NAZJATAR_COOKING,
			}),
		}),
		prof(ENCHANTING, {
			n(153811, {	-- Instructor Okanu <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.2, NAZJATAR },
				["groups"] = NAZJATAR_ENCHANTING,
			}),
			n(154393, {	-- Narv <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_ENCHANTING,
			}),
		}),
		prof(ENGINEERING, {
			n(153817, {	-- Instructor Alikana <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.6, NAZJATAR },
				["groups"] = NAZJATAR_ENGINEERING,
			}),
			n(154321, {	-- Jada <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.0, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_ENGINEERING,
			}),
		}),
		prof(HERBALISM, {
			n(154257, {	-- Instructor Ulooaka <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.0, NAZJATAR },
				["groups"] = NAZJATAR_HERBALISM,
			}),
			n(154408, {	-- Rolm <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.8, NAZJATAR },
				["groups"] = NAZJATAR_HERBALISM,
			}),
		}),
		prof(INSCRIPTION, {
			n(153811, {	-- Instructor Okanu <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.2, NAZJATAR },
				["groups"] = NAZJATAR_INSCRIPTION,
			}),
			n(154393, {	-- Narv <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_INSCRIPTION,
			}),
		}),
		prof(JEWELCRAFTING, {
			n(153811, {	-- Instructor Okanu <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.2, NAZJATAR },
				["groups"] = NAZJATAR_JEWELCRAFTING,
			}),
			n(154393, {	-- Narv <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_JEWELCRAFTING,
			}),
		}),
		prof(LEATHERWORKING, {
			n(153817, {	-- Instructor Alikana <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.6, NAZJATAR },
				["groups"] = NAZJATAR_LEATHERWORKING,
			}),
			n(154321, {	-- Jada <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.0, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_LEATHERWORKING,
			}),
		}),
		prof(MINING, {
			n(154257, {	-- Instructor Ulooaka <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.0, NAZJATAR },
				["groups"] = NAZJATAR_MINING,
			}),
			n(154408, {	-- Rolm <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.2, 61.8, NAZJATAR },
				["groups"] = NAZJATAR_MINING,
			}),
		}),
		prof(SKINNING, {
			q(56565, {	-- Hanging by a Thread [A]
				["provider"] = { "i", 169767 },	-- Deteriorating Cragscales
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					recipe(302016),	-- Skinning Technique: Cragscale (Rank 3)
				},
			}),
			q(56566, {	-- Hanging by a Thread [H]
				["provider"] = { "i", 169779 },	-- Deteriorating Cragscales
				["races"] = HORDE_ONLY,
				["groups"] = {
					recipe(302016),	-- Skinning Technique: Cragscale (Rank 3)
				},
			}),
			q(56562, {	-- The Problem with Shrinkage [A]
				["provider"] = { "i", 169775 },	-- Shriveled Leather Hide
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					recipe(302011),	-- Skinning Technique: Dredged Leather (Rank 3)
				},
			}),
			q(56563, {	-- The Problem with Shrinkage [H]
				["provider"] = { "i", 169772 },	-- Shriveled Leather Hide
				["races"] = HORDE_ONLY,
				["groups"] = {
					recipe(302011),	-- Skinning Technique: Dredged Leather (Rank 3)
				},
			}),
		}),
		prof(TAILORING, {
			n(153817, {	-- Instructor Alikana <Profession Trainer> [Alliance]
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 38.0, 53.6, NAZJATAR },
				["groups"] = NAZJATAR_TAILORING,
			}),
			n(154321, {	-- Jada <Profession Trainer> [Horde]
				["races"] = HORDE_ONLY,
				["coord"] = { 49.0, 61.6, NAZJATAR },
				["groups"] = NAZJATAR_TAILORING,
			}),
		}),
	}),
})));
