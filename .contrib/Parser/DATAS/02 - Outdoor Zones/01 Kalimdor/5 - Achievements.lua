---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local ANALYNN = {
	["crs"] = { 66136 },
	["coord"] = { 20.2, 29.6, ASHENVALE },
};
local CASSANDRA_KABOOM = {
	["crs"] = { 66422 },
	["coord"] = { 39.6, 79.2, SOUTHERN_BARRENS },
};
local DAGRA_THE_FIERCE = {
	["crs"] = { 66135 },
	["coord"] = { 43.9, 28.9, DUROTAR },
};
local ELENA_FLUTTERFLY = {
	["crs"] = { 66412 },
	["coord"] = { 46.0, 60.6, MOONGLADE },
};
local GRAZZLE_THE_GREAT = {
	["crs"] = { 66436 },
	["coord"] = { 53.8, 74.8, DUSTWALLOW_MARSH },
};
local KELA_GRIMTOTEM = {
	["crs"] = { 66452 },
	["coord"] = { 31.8, 32.8, THOUSAND_NEEDLES },
};
local MERDE_STRONGHOOF = {
	["crs"] = { 66372 },
	["coord"] = { 57.2, 45.8, DESOLACE },
};
local STONE_COLD_TRIXXY = {
	["crs"] = { 66466 },
	["coord"] = { 65.6, 64.6, WINTERSPRING },
};
local TRAITOR_GLUK = {
	["crs"] = { 66352 },
	["coord"] = { 59.6, 49.6, FERALAS },
};
local ZUNTA = {
	["crs"] = { 66126 },
	["coord"] = { 43.9, 28.9, DUROTAR },
};
local ZOLTAN = {
	["crs"] = { 66442 },
	["coord"] = { 40.0, 56.6, FELWOOD },
};
local ZONYA_THE_SADIST = {
	["crs"] = { 66137 },
	["coord"] = { 20.2, 29.5, ASHENVALE },
};

root(ROOTS.Zones, m(KALIMDOR, {
	n(ACHIEVEMENTS, {
		header(HEADERS.Achievement, 61051, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Family Battler of Kalimdor
			petbattle(ach(61051, {	-- Family Battler of Kalimdor
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61041,	-- Aquatic Battler of Kalimdor
					61042,	-- Beast Battler of Kalimdor
					61043,	-- Critter Battler of Kalimdor
					61044,	-- Dragonkin Battler of Kalimdor
					61045,	-- Elemental Battler of Kalimdor
					61046,	-- Flying Battler of Kalimdor
					61047,	-- Humanoid Battler of Kalimdor
					61048,	-- Magic Battler of Kalimdor
					61049,	-- Mechanical Battler of Kalimdor
					61050,	-- Undead Battler of Kalimdor
				}},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = { i(258737) },	-- Moon Darter (PET!)
			})),
			petbattle(ach(61041, {	-- Aquatic Battler of Kalimdor
				crit(108091, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108097, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108090, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108096, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108098, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108101, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108094, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108102, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108095, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108089, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108100, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108093, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61042, {	-- Beast Battler of Kalimdor
				crit(108107, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108112, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108106, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108111, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108113, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108115, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108109, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108116, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108110, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108105, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108114, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108108, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61043, {	-- Critter Battler of Kalimdor
				crit(108119, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108124, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108118, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108123, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108125, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108127, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108121, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108128, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108122, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108117, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108126, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108120, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61044, {	-- Dragonkin Battler of Kalimdor
				crit(108131, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108136, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108130, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108135, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108137, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108139, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108133, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108140, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108134, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108129, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108138, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108132, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61045, {	-- Elemental Battler of Kalimdor
				crit(108143, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108148, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108142, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108147, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108149, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108151, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108145, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108152, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108146, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108141, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108150, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108144, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61046, {	-- Flying Battler of Kalimdor
				crit(108155, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108160, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108154, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108159, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108161, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108163, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108157, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108164, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108158, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108153, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108162, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108156, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61047, {	-- Humanoid Battler of Kalimdor
				crit(108167, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108172, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108166, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108171, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108173, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108175, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108169, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108176, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108170, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108165, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108174, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108168, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61048, {	-- Magic Battler of Kalimdor
				crit(108179, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108184, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108178, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108183, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108185, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108187, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108181, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108188, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108182, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108177, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108186, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108180, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61049, {	-- Mechanical Battler of Kalimdor
				crit(108191, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108195, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108190, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108200, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108196, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108198, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108193, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108199, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108194, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108189, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108197, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108192, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
			petbattle(ach(61050, {	-- Undead Battler of Kalimdor
				crit(108203, {	-- Analynn
					["crs"] = ANALYNN.crs,
					["coord"] = ANALYNN.coord,
				}),
				crit(108208, {	-- Cassandra Kaboom
					["crs"] = CASSANDRA_KABOOM.crs,
					["coord"] = CASSANDRA_KABOOM.coord,
				}),
				crit(108202, {	-- Dagra the Fierce
					["crs"] = DAGRA_THE_FIERCE.crs,
					["coord"] = DAGRA_THE_FIERCE.coord,
				}),
				crit(108207, {	-- Elena Flutterfly
					["crs"] = ELENA_FLUTTERFLY.crs,
					["coord"] = ELENA_FLUTTERFLY.coord,
				}),
				crit(108209, {	-- Grazzle the Great
					["crs"] = GRAZZLE_THE_GREAT.crs,
					["coord"] = GRAZZLE_THE_GREAT.coord,
				}),
				crit(108211, {	-- Kela Grimtotem
					["crs"] = KELA_GRIMTOTEM.crs,
					["coord"] = KELA_GRIMTOTEM.coord,
				}),
				crit(108205, {	-- Merda Stronghoof
					["crs"] = MERDE_STRONGHOOF.crs,
					["coord"] = MERDE_STRONGHOOF.coord,
				}),
				crit(108212, {	-- Stone Cold Trixxy
					["crs"] = STONE_COLD_TRIXXY.crs,
					["coord"] = STONE_COLD_TRIXXY.coord,
				}),
				crit(108206, {	-- Traitor Gluk
					["crs"] = TRAITOR_GLUK.crs,
					["coord"] = TRAITOR_GLUK.coord,
				}),
				crit(108201, {	-- Zunta
					["crs"] = ZUNTA.crs,
					["coord"] = ZUNTA.coord,
				}),
				crit(108210, {	-- Zoltan
					["crs"] = ZOLTAN.crs,
					["coord"] = ZOLTAN.coord,
				}),
				crit(108204, {	-- Zonya the Sadist
					["crs"] = ZONYA_THE_SADIST.crs,
					["coord"] = ZONYA_THE_SADIST.coord,
				}),
			})),
		})),
	}),
}));
