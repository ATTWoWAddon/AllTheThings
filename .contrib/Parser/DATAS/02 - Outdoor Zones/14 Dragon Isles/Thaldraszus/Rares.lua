---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(193243, {	-- Acrosoth
				["coord"] = { 40.5, 78.3, THALDRASZUS },
				["questID"] = 72834,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193664, {	-- Ancient Protector
				["coord"] = { 59.5, 59.2, THALDRASZUS },
				["questID"] = 74055,
				["cost"] = { { "i", 197733, 4 } },	-- 4x Unsustainable Containment Core
				["groups"] = {
					bo(69963, true),
				},
			}),
			-- n(193220),	-- Broodweaver Araznae // under DF/Timed Based Rare
			n(193658, {	-- Corrupted Proto-Dragon
				["coord"] = { 44.8, 69.0, THALDRASZUS },
				["questID"] = 74060,
				["groups"] = {
					bo(69962, true),
					i(200166),	-- Corrupted Drake Horn
				},
			}),
			n(193663, {	-- Craggravated Elemental
				["coord"] = { 45.4, 85.2, THALDRASZUS },
				["questID"] = 74061,
				["groups"] = {
					bo(69964, true),
					i(200298),	-- Stoneshaped Greatbelt
				},
			}),
			-- n(193234),	-- Eldoren the Reborn // under DF/Timed Based Rare
			n(193125, {	-- Goremaul the Gluttonous
				["coord"] = { 53.4, 41.0, THALDRASZUS },
				["questID"] = 73878,
				["groups"] = {
					i(200436),	-- Gorestained Hauberk
				},
			}),
			n(193229, {	-- Henlare
				["coord"] = { 55.6, 77.4, THALDRASZUS },
				["questID"] = 72814,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193126, {	-- Innumerable Ruination
				["description"] = "Patrols in a circle around the coordinates.",
				["coords"] = {
					{ 58.0, 83.8, THALDRASZUS },
					{ 58.4, 80.4, THALDRASZUS },
					{ 61.6, 81.0, THALDRASZUS },
					{ 60.2, 83.0, THALDRASZUS },
				},
				["questID"] = 73881,
				["groups"] = {
					i(200760),	-- Unstable Arcane Cell
				},
			}),
			n(193273, {	-- Liskron the Dazzling
				["coord"] = { 36.7, 72.8, THALDRASZUS },
				["questID"] = 72842,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193668, {	-- Lookout Mordren
				["coord"] = { 36.8, 85.6, THALDRASZUS },
				["questID"] = 72813,
				["isDaily"] = IGNORED_VALUE,
				["groups"] = {
					i(200182),	-- Riveted Drape
				},
			}),
			n(193241, {	-- Lord Epochbrgl <Time-Lost>
				["description"] = "Requires completion of the questhub in the area. Only spawns if the portal is available.",
				["coord"] = { 62.2, 81.7, THALDRASZUS },
				["questID"] = 74066,
				["groups"] = {
					bo(69882, true),
					i(200185),	-- Grips of the Everflowing Ocean
				},
			}),
			-- n(193246),	-- Matriarch Remalla // under DF/Timed Based Rare
			n(201549,	-- Morlash
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 62.1, 60.1, THALDRASZUS },
				["questID"] = 74561,
				["groups"] = {
					bo(74450, true),
					i(203666),	-- Vinelashed Bracers
				},
			})),
			n(193688, {	-- Phenran
				["coord"] = { 60.0, 61.0, THALDRASZUS },
				["questID"] = 74020,
				["groups"] = {
					i(200146),	-- Phenran's Discordant Smasher
				},
			}),
			n(201550,	-- Overloading Defense Matrix
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 59.6, 61.8, THALDRASZUS },
				["questID"] = 74565,
				["groups"] = {
					bo(74449, true),
					i(203677),	-- Watcher's 'Neck' Ring
				},
			})),
			n(201552,	-- Overseer Stonetongue
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 59.0, 56.0, THALDRASZUS },
				["questID"] = 74566,
				["groups"] = {
					bo(74448, true),
					i(203665),	-- Stonetongues Hood
				},
			})),
			n(193130, {	-- Pleasant Alpha
				["coord"] = { 37.7, 78.7, THALDRASZUS },
				["questID"] = 73889,
			}),
			n(193127, {	-- Private Shikzar
				["coord"] = { 37.6, 84.7, THALDRASZUS },
				["questID"] = 72844,
			}),
			n(193143, {	-- Razk'vex the Untamed
				["description"] = "Patrols between the coordinates.",
				["coords"] = {
					{ 49.8, 50.2, THALDRASZUS },
					{ 53.6, 42.8, THALDRASZUS },
				},
				["questID"] = 73892,
			}),
			-- n(193240),	-- Riverwalker Tamopo // under DF/Timed Based Rare
			-- n(193666),	-- Rokmur // under DF/Timed Based Rare
			n(191305, {	-- The Great Shellkhan
				["description"] = "Needs a Case of Fresh Gleamfish fish from Azure Span.",
				["coords"] = {
					{ 38.5, 68.2, THALDRASZUS },	-- Rare
					{ 45.63, 54.82, THE_AZURE_SPAN },	-- Fish
				},
				["questID"] = 74085,
				["cost"] = { { "i", 200949, 1 } },	-- 1x Case of Fresh Gleamfish
				["groups"] = {
					i(200999),	-- The Super Shellkhan Gang (TOY!)
				},
			}),
			n(183984, {	-- The Weeping Vilomah
				["description"] = "Inside cave, speak to 'Boomhooch the Lost'.",
				["crs"] = { 193206 },	-- Boomhooch the Lost
				["coords"] = {
					{ 49.6, 72.8, THALDRASZUS },
					{ 47.5, 71.7, THALDRASZUS },	-- cave
				},
				["questID"] = 74086,
				["groups"] = {
					i(200214),	-- Grasp of the Weeping Widow
				},
			}),
			-- n(193258),	-- Tempestrian // under DF/Timed Based Rare
			-- n(193146),	-- Treasure-Mad // under DF/Timed Based Rare
			n(193161, {	-- Woolfang
				["description"] = "Pet a Wooly Lamb to spawn.",
				["coord"] = { 47.9, 49.8, THALDRASZUS },
				["crs"] = { 193156 },	-- Wooly Lamb
				["questID"] = 74089,
				["groups"] = {
					bo(69850, true),
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THALDRASZUS, {
			n(RARES, {
				q(72050),	-- first kill of Ancient Protector...? maybe. Quest name is Balgar.
			}),
		}),
	}),
})));
