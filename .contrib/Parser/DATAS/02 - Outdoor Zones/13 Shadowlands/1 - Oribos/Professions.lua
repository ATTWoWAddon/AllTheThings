---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ORIBOS, {
		n(PROFESSIONS, {
			n(156692, {	-- Distributor Au'burk <Engineering Supplies>
				["coord"] = { 37.8, 43.6, ORIBOS },
				["groups"] = {
					i(183952),	-- Machinist's Oil
				},
			}),
			n(156733, {	-- Distributor Au'kharn <Jewelcrafting Supplies>
				["coord"] = { 39.2, 39.8, ORIBOS },
				["groups"] = {
					i(173168),	-- Laestrite Setting
					i(183954),	-- Malleable Wire
				},
			}),
			n(156689, {	-- Distributor Au'naci <Alchemy Supplies>
				["coord"] = { 39.2, 39.8, ORIBOS },
				["groups"] = {
					i(183950),	-- Distilled Death Extract
					i(180732),	-- Rune Etched Vial
				},
			}),
			n(156694, {	-- Distributor Au'resh <Enchanting Supplies>
				["coord"] = { 47.6, 28.6, ORIBOS },
				["groups"] = {
					i(183951),	-- Immortal Shard
				},
			}),
			n(156732, {	-- Distributor Au'sha <Inscription Supplies>
				["coord"] = { 36.2, 38.6, ORIBOS },
				["groups"] = {
					i(173060),	-- Aerated Water
					i(175886),	-- Dark Parchment
					i(183953),	-- Sealing Wax
					i(177061),	-- Twilight Bark
				},
			}),
			n(156696, {	-- Distributor Au'tem <Leatherworking & Tailoring Supplies>
				["coord"] = { 44.6, 27.0, ORIBOS },
				["groups"] = {
					i(183955),	-- Curing Salt
					i(177062),	-- Penumbra Thread
				},
			}),
			n(156777, {	-- Distributor Au'til <Trade Supplies>
				["coord"] = { 39.6, 33.2, ORIBOS },
				["groups"] = {
					i(180733),	-- Luminous Flux
					i(178787),	-- Orboreal Shard
				},
			}),
			n(168353, {	-- Distributor Au'van <Cooking Vendor>
				["coord"] = { 47.2, 23.8, ORIBOS },
				["groups"] = {
					i(187812, {	-- Empty Kettle
						["timeline"] = { ADDED_9_2_0 },
					}),
					i(172057),	-- Inconceivably Aged Vinegar
					i(178786),	-- Lusterwheat Flour
					i(172056),	-- Medley of Transplanar Spices
					i(172059),	-- Rich Grazer Milk
					i(172058),	-- Smuggled Azerothian Produce
				},
			}),
			prof(ALCHEMY, {
				n(156687, {	-- Elixirist Au'pyr <Alchemy Trainer>
					["coord"] = { 39.2, 40.4, ORIBOS },
					["groups"] = SL_ALCHEMY,
				}),
			}),
			prof(BLACKSMITHING, {
				n(156666, {	-- Smith Au'berk <Blacksmithing Trainer>
					["coord"] = { 40.5, 31.4, ORIBOS },
					["groups"] = SL_BLACKSMITHING,
				}),
			}),
			prof(COOKING, {
				n(156672, {	-- Chef Au'krut <Cooking Trainer>
					["coord"] = { 47.0, 23.6, ORIBOS },
					["groups"] = SL_COOKING,
				}),
			}),
			prof(ENCHANTING, {
				n(156683, {	-- Imbuer Au'vresh <Enchanting Trainer>
					["coord"] = { 48.2, 29.0, ORIBOS },
					["groups"] = SL_ENCHANTING,
				}),
			}),
			prof(ENGINEERING, {
				n(156691, {	-- Machinist Au'gur <Engineering Trainer>
					["coord"] = { 37.8, 44.6, ORIBOS },
					["groups"] = SL_ENGINEERING,
				}),
			}),
			prof(FISHING, {
				n(156671, {	-- Retriever Au'prin <Fishing Trainer>
					["coord"] = { 47.6, 24.0, ORIBOS },
					["groups"] = SL_FISHING,
				}),
			}),
			prof(HERBALISM, {
				n(156686, {	-- Selector Au'mar <Herbalism Trainer>
					["coord"] = { 39.8, 38.6, ORIBOS },
					["groups"] = SL_HERBALISM,
				}),
			}),
			prof(INSCRIPTION, {
				n(156685, {	-- Scribe Au'tehshi <Inscription Trainer>
					["coord"] = { 36.8, 36.4, ORIBOS },
					["groups"] = SL_INSCRIPTION,
				}),
				n(164736, {	-- Distributor Au'bic <Ink Trader>
					["coord"] = { 37.6, 35.6, ORIBOS },
					["crs"] = {
						-- Various Ink Traders
						30729,	-- Ickabod Pimlen
						30731,	-- Illianna Moonscribe
						33027,	-- Jessica Sellers
						93532,	-- Jessica Sellers
						30727,	-- Lelorian
						30724,	-- Mertle Murkpen
						46718,	-- Moraka
						52031,	-- Sarana Damir
						30732,	-- Sessoh
						52032,	-- Sinzi Sparkscribe
						30730,	-- Stanly McCormick
						30733,	-- Thargen Heavyquill
						30723,	-- Xantili
					},
					["groups"] = {
						i(43125, {	-- Darkflame Ink
							["cost"] = {{ "i", 173058, 10 }},	-- 10x Umbral Ink
						}),
						i(61981, {	-- Inferno Ink
							["cost"] = {{ "i", 173058, 10 }},	-- 10x Umbral Ink
						}),
						i(43127, {	-- Snowfall Ink
							["cost"] = {{ "i", 173058, 10 }},	-- 10x Umbral Ink
						}),
						i(79255, {	-- Starlight Ink
							["cost"] = {{ "i", 173058, 10 }},	-- 10x Umbral Ink
						}),
						i(158189, {	-- Viridescent Ink
							["cost"] = {{ "i", 173058, 10 }},	-- 10x Umbral Ink
						}),
						-- Common Inks, x1 Cost
						i(129032, {	-- Roseate Pigment
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(129034, {	-- Sallow Pigment
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(113111, {	-- Warbinder's Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(79254, {	-- Ink of Dreams
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(61978, {	-- Blackfallow Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(43124, {	-- Ethereal Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(43126, {	-- Ink of the Sea
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(43122, {	-- Shimmering Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(43120, {	-- Celestial Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(43118, {	-- Jadefire Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(43116, {	-- Lion's Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(39774, {	-- Midnight Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(39469, {	-- Moonglow Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(158187, {	-- Ultramarine Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(158188, {	-- Crimson Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
						i(168663, {	-- Maroon Ink
							["cost"] = {{ "i", 173058, 1 }},	-- 1x Umbral Ink
						}),
					},
				}),
			}),
			prof(JEWELCRAFTING, {
				n(156670, {	-- Appraiser Au'vesk <Jewelcrafting Trainer>
					["coord"] = { 35.8, 41.8, ORIBOS },
					["groups"] = SL_JEWELCRAFTING,
				}),
			}),
			prof(LEATHERWORKING, {
				n(156669, {	-- Tanner Au'qil <Leatherworking Trainer>
					["coord"] = { 42.6, 26.8, ORIBOS },
					["groups"] = SL_LEATHERWORKING,
				}),
			}),
			prof(MINING, {
				n(156668, {	-- Excavationist Au'fer <Mining Trainer>
					["coord"] = { 39.6, 33.6, ORIBOS },
					["groups"] = SL_MINING,
				}),
			}),
			prof(TAILORING, {
				n(156681, {	-- Stitcher Au'phes <Tailoring Trainer>
					["coord"] = { 45.2, 31.6, ORIBOS },
					["groups"] = SL_TAILORING,
				}),
			}),
		}),
	}),
})));
