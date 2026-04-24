---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(185545, {	-- Conflago <Alchemy Trainer>
					["coord"] = { 36.6, 72.6, VALDRAKKEN },
					["groups"] = DF_ALCHEMY,
				}),
			}),
			prof(BLACKSMITHING, {
				n(185546, {	-- Metalshaper Kuroko <Blacksmithing Trainer>
					["coord"] = { 37.2, 47.8, VALDRAKKEN },
					["groups"] = DF_BLACKSMITHING,
				}),
			}),
			prof(COOKING, {
				n(185556, {	-- Erugosa <Cooking Trainer>
					["coord"] = { 46.6, 46.6, VALDRAKKEN },
					["groups"] = DF_COOKING,
				}),
			}),
			prof(ENCHANTING, {
				n(193744, {	-- Soragosa <Enchanting Trainer>
					["coord"] = { 30.8, 61.4, VALDRAKKEN },
					["groups"] = DF_ENCHANTING,
				}),
			}),
			prof(ENGINEERING, {
				n(185548, {	-- Clinkyclick Shatterboom <Engineering Trainer>
					["coord"] = { 42.2, 48.8, VALDRAKKEN },
					["groups"] = DF_ENGINEERING,
				}),
			}),
			prof(FISHING, {
				n(185359, {	-- Toklo <Fishing Trainer>
					["coord"] = { 44.6, 74.6, VALDRAKKEN },
					["groups"] = DF_FISHING,
				}),
			}),
			prof(HERBALISM, {
				n(185549, {	-- Agrikus <Herbalism Trainer>
					["coord"] = { 38.0, 68.6, VALDRAKKEN },
					["groups"] = DF_HERBALISM,
				}),
			}),
			prof(LEATHERWORKING, {
				n(185551, {	-- Hideshaper Koruz <Leatherworking Trainer>
					["coord"] = { 28.8, 61.6, VALDRAKKEN },
					["groups"] = DF_LEATHERWORKING,
				}),
			}),
			prof(INSCRIPTION, {
				n(185540, {	-- Talendara <Inscription Trainer>
					["coord"] = { 38.8, 72.4, VALDRAKKEN },
					["groups"] = DF_INSCRIPTION,
				}),
			}),
			prof(JEWELCRAFTING, {
				n(190094, {	-- Tuluradormi <Jewelcrafting Trainer>
					["coord"] = { 40.6, 61.2, VALDRAKKEN },
					["groups"] = DF_JEWELCRAFTING,
				}),
			}),
			prof(MINING, {
				n(185553, {	-- Sekita the Burrower <Mining Trainer>
					["coord"] = { 39.0, 51.8, VALDRAKKEN },
					["groups"] = DF_MINING,
				}),
			}),
			prof(SKINNING, bubbleDownSelf({ ["requireSkill"] = SKINNING }, {
				n(193846, {	-- Ralathor the Rugged <Skinning Trainer>
					["coord"] = { 28.6, 60.4, VALDRAKKEN },
					["groups"] = DF_SKINNING,
				}),
			})),
			prof(TAILORING, {
				n(193649, {	-- Threadfinder Fulafong <Tailoring Trainer>
					["coord"] = { 31.8, 68.2, VALDRAKKEN },
					["groups"] = DF_TAILORING,
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(VALDRAKKEN, {
			n(PROFESSIONS, {
				q(74430),	-- Weekly Profession completed
				q(77888, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77889 (A Fiery Proposal)
				q(77909, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77912 (Unmodern Jewelry)
				q(77913, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77914 (Burning Runes)
				q(77915, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77892 (Pearls Of Great Value)
				q(77917, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77932 (Warmth of Life)
				q(77918, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77933 (Bubbling Discoveries)
				q(77919, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77935 (A-Sword-ed Needs)
				q(77920, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77936 (A Warm Harvest)
				q(77921, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77947 (Primalist Fashion)
				q(77923, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77949 (Fashion Feathers)
				q(77924, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77945 (Boots on the Ground)
				q(77927, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77891 (Fixing The Dream)
				q(77929, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77938 (An Unlikely Engineer)
				q(77930, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77910 (Enchanted Shrubbery)
				q(77931, {["timeline"] = {ADDED_10_2_0}}),	-- after turn in qID 77937 (Forbidden Sugar)
			}),
		}),
	}),
})));
