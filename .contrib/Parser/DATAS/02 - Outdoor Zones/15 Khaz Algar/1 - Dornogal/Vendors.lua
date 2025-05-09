---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local ALGARI_TOKEN_OF_MERIT_S1 = 220769;
local ALGARI_TOKEN_OF_MERIT_S2 = 230793;
--local ALGARI_TOKEN_OF_MERIT_S3 = xx;
--local ALGARI_TOKEN_OF_MERIT_S4 = xx;
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(DORNOGAL, {
		n(VENDORS, {
			n(222561, {	-- Agmera <Dungeon Exploration Equipment>
				["coord"] = { 53.8, 38.2, DORNOGAL },
				["g"] = {
					i(225948, {	-- Harbinger's Equipment Chest
						["timeline"] = { ADDED_11_0_5, REMOVED_11_1_0 },
						["cost"] = {{ "c", 3008, 350 }},	-- 350x Valorstones
					}),
					i(229422, {	-- Undermine Equipment Chest
						["timeline"] = { ADDED_11_1_5, REMOVED_11_2_0 },
						["cost"] = {{ "c", 3008, 350 }},	-- 350x Valorstones
					}),
				},
			}),
			n(219036, {	-- Ardgaz <Token Exchange>
				["coord"] = { 54.8, 42.5, DORNOGAL },
				["g"] = {
					-- All seasons
					i(226814, {	-- Chest of Gold
						["cost"] = {
							-- #if BEFORE 11.1.0
							{"i", ALGARI_TOKEN_OF_MERIT_S1, 2},
							-- #else
							{"i", ALGARI_TOKEN_OF_MERIT_S2, 2},
							-- #endif
						},
					}),
					-- Season 1
					i(220773, {	-- Celebratory Pack of Runed Harbinger Crests
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S1, 2}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(226813, {	-- Golden Valorstone
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S1, 1}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(226505, {	-- Nerubian Gemweaver
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S1, 6}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(220767, {	-- Triumphant Satchel of Carved Harbinger Crests
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S1, 1}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					-- Season 2
					i(232382, {	-- Golden Valorstone
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S2, 2}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(231153, {	-- Triumphant Satchel of Carved Undermine Crests
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S2, 2}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(231154, {	-- Celebratory Pack of Runed Undermine Crests
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S2, 2}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(232386, {	-- S.A.D.
						["cost"] = {{"i", ALGARI_TOKEN_OF_MERIT_S2, 2}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
				},
			}),
			n(240481, {	-- Consultant Wrexxle <Undermine Dealer>
				["coord"] = { 52.0, 46.0, DORNOGAL },
				["timeline"] = { ADDED_11_1_5 },
				["g"] = sharedData({
					["cost"] = {{ "i", 237502, 3 }},	-- 3x Puzzling Cartel Chip
				}, {
					-- Vexie
					i(231268),	-- Blastfurious Machete
					i(230197),	-- Geargrinder's Spare Keys
					i(228892),	-- Greasemonkey's Shift-Stick
					i(230019),	-- Vexie's Pit Whistle
					-- Cauldron
					i(228904),	-- Crowd Favorite
					i(230191),	-- Flarendo's Pilot Light
					i(228890),	-- Superfan's Beater-Buzzer
					i(230190),	-- Torq's Big Red Button
					i(228900),	-- Tournament Arc
					-- Rik
					i(231311),	-- Frontman's Wondrous Wall
					i(228897),	-- Pyrotechnic Needle-Dropper
					i(228895),	-- Remixed Ignition Saber
					i(230194),	-- Reverb Radio
					-- Stix
					i(228903),	-- Dumpster Diver
					i(230189),	-- Junkmaestro's Mega Magnet
					i(230026),	-- Scrapfield 9001
					i(228896),	-- Stix's Metal Detector
					-- Sprocket
					i(228898),	-- Alphacoil Ba-Boom Stick
					i(228894),	-- GIGADEATH Chainblade
					i(230193),	-- Mister Lock-N-Stalk
					i(230186),	-- Mister Pick-Me-Up
					i(228844),	-- Test Pilot's Go-Pack
					-- Bandit
					i(232526,{provider={"i",232805}}),	-- Best-in-Slots
					i(232805,{provider={"i",232526}}),	-- Best-in-Slots
					i(230188),	-- Gallagio Bottle Service
					i(228905),	-- Giga Bank-Breaker
					i(230027),	-- House of Cards
					i(228906),	-- Operator's Fraud Detector
					i(231266),	-- Random Number Perforator
					-- Mug'Zee
					i(228893),	-- "Tiny Pal"
					i(228901),	-- Big Earner's Bludgeon
					i(232804),	-- Capo's Molten Knuckles
					i(230192),	-- Mug's Moxie Jug
					i(228902),	-- Wiseguy's Refused Offer
					i(230199),	-- Zee's Thug Hotline
					-- Gallywix
					i(228891),	-- Capital Punisher
					i(230029),	-- Chromebustible Bomb Suit
					i(230198),	-- Eye of Kezan
					i(228899),	-- Gallywix's Iron Thumb
					i(231265),	-- The Jastor Diamond
					i(228889),	-- Titan of Industry
					-- Motherlode
					i(159612),	-- Azerokk's Resonating Heart
					i(159611),	-- Razdunk's Big Red Button
					-- Operation: Mechagon
					i(169344),	-- Ingenious Mana Battery
					i(232546),	-- K.U.-J.0.'s Flame Vents
					i(168965),	-- Modular Platinum Plating
					-- Theater of Pain
					i(178811),	-- Grim Codex
					i(178809),	-- Soulletting Ruby
					i(178810),	-- Vial of Vampiric Essence
					i(178808),	-- Viscera of Coalesced Hatred
					-- Cinderbrew Meadery
					i(219297),	-- Cinderbrew Stein
					i(219298),	-- Ravenous Honey Buzzer
					i(219299),	-- Synergistic Brewterializer
					-- Darkflame Cleft
					i(219306),	-- Burin of the Candle King
					i(219305),	-- Carved Blazikon Wax
					i(219304),	-- Conductor's Wax Whistle
					i(219307),	-- Remnant of Darkness
					-- Priory
					i(219310),	-- Bursting Lightshard
					i(219308),	-- Signet of the Priory
					i(219309),	-- Tome of Light's Devotion
					-- The Rookery
					i(219294),	-- Charged Stormrook Plume
					i(219296),	-- Entropic Skardyn Core
					i(219295),	-- Sigil of Algari Concordance
					-- Operation: Floodgate
					i(232542),	-- Darkfuse Medichopper
					i(232545),	-- Gigazap's Zap-Cap
					i(232541),	-- Improvised Seaforium Pacemaker
					i(232543),	-- Ringing Ritual Mud
				}),
			}),
			n(219230, {	-- Erani <Pet Charm Trader>
				["coord"] = { 58.5, 64.9, DORNOGAL },
				["g"] = {
					i(224101, {	-- Brown Leafbug (PET!)
						["cost"] = {{ "i", POLISHED_PET_CHARM, 50 }},
					}),
					i(222978, {	-- Sandstone Ramolith (PET!)
						["cost"] = {{ "i", POLISHED_PET_CHARM, 50 }},
					}),
					i(221494, {	-- Skippy (PET!)
						["cost"] = {{ "i", POLISHED_PET_CHARM, 50 }},
					}),
					i(221811, {	-- Starkstripe Hopper (PET!)
						["cost"] = {{ "i", POLISHED_PET_CHARM, 50 }},
					}),
					i(221761, {	-- Venomwing (PET!)
						["cost"] = {{ "i", POLISHED_PET_CHARM, 50 }},
					}),
				},
			}),
			n(219197, {	-- Griftah <Amazing Amulets>
				["coord"] = { 62.5, 50.9, DORNOGAL },
				["g"] = {
					i(224763),	-- Design: Cubic Blasphemia (RECIPE!)
					i(228921),	-- Griftah's Heavy-Duty Embellishing Powder
				},
			}),
			n(219255, {	-- Karbath <Weapon Trader>
				["coord"] = { 47.3, 64.8, DORNOGAL },
				["g"] = {
					i(227699, {	-- Earthen Ceremonial Chopper
						["cost"] = {{"c", RESONANCE_CRYSTALS, 500}},
					}),
					i(227701, {	-- Preserved Defender's Kris
						["cost"] = {{"c", RESONANCE_CRYSTALS, 500}},
					}),
					i(227700, {	-- Preserved Defender's Spear
						["cost"] = {{"c", RESONANCE_CRYSTALS, 500}},
					}),
				},
			}),
			n(219376, {	-- Kargand <Stable Master>
				["coord"] = { 55.4, 67.1, DORNOGAL },
				["sym"] = {{"sub", "common_vendor", 219230}},	-- Erani <Pet Charm Trader>
			}),
			n(219051, {	-- Lyrendal <Artisan's Consortium Quartermaster>
				["coord"] = { 59.8, 56.4, DORNOGAL },
				["g"] = {
					i(228379, {	-- Design: Captured Starlight (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223090, {	-- Design: Enchanter's Crystal (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223089, {	-- Design: Extravagant Loupes (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223091, {	-- Design: Forger's Font Inspector (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223092, {	-- Design: Novelist's Specs (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(228329, {	-- Design: Remembrance Stone (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223129, {	-- Formula: Enchant Tool - Algari Deftness (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223130, {	-- Formula: Enchant Tool - Algari Finesse (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223131, {	-- Formula: Enchant Tool - Algari Perception (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223132, {	-- Formula: Enchant Tool - Algari Resourcefulness (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223113, {	-- Formula: Enchant Boots - Cavalry's March (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223124, {	-- Formula: Runed Null Stone Rod (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223110, {	-- Pattern: Arathi Leatherworker's Smock (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(224422, {	-- Pattern: Artisan Enchanter's Hat (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(224421, {	-- Pattern: Artisan Fishing Cap (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(224420, {	-- Pattern: Artisan Gardening Hat (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223107, {	-- Pattern: Charged Scrapmaster's Gauntlets (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223104, {	-- Pattern: Defender's Armor Kit (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223106, {	-- Pattern: Earthen Forgemaster's Apron (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223109, {	-- Pattern: Earthen Jeweler's Cover (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223108, {	-- Pattern: Stonebound Herbalist's Pack (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223053, {	-- Plans: Artisan Leatherworker's Knife (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223054, {	-- Plans: Artisan Leatherworker's Toolset (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223052, {	-- Plans: Artisan Needle Set (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223050, {	-- Plans: Artisan Pickaxe (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223049, {	-- Plans: Artisan Sickle (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223037, {	-- Plans: Charged Facesmasher (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223068, {	-- Technique: Algari Missive of Crafting Speed (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223071, {	-- Technique: Algari Missive of Deftness (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223069, {	-- Technique: Algari Missive of Finesse (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223065, {	-- Technique: Algari Missive of Ingenuity (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223067, {	-- Technique: Algari Missive of Multicraft (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223070, {	-- Technique: Algari Missive of Perception (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					i(223066, {	-- Technique: Algari Missive of Resourcefulness (RECIPE!)
						["cost"] = {{"i", ARTISANS_ACUITY, 150}},
					}),
					-- Profession Books
					i(227420, {	-- Exceptional Alchemist's Research (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = ALCHEMY,
					}),
					i(227418, {	-- Exceptional Blacksmith's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = BLACKSMITHING,
					}),
					i(227422, {	-- Exceptional Enchanter's Research (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = ENCHANTING,
					}),
					i(227423, {	-- Exceptional Engineer's Scribblings (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = ENGINEERING,
					}),
					i(227426, {	-- Exceptional Herbalist's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = HERBALISM,
					}),
					i(227424, {	-- Exceptional Jeweler's Illustrations (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = JEWELCRAFTING,
					}),
					i(227425, {	-- Exceptional Leatherworker's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = LEATHERWORKING,
					}),
					i(227427, {	-- Exceptional Miner's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = MINING,
					}),
					i(227419, {	-- Exceptional Scribe's Runic Drawings (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = INSCRIPTION,
					}),
					i(227428, {	-- Exceptional Skinner's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = SKINNING,
					}),
					i(227421, {	-- Exceptional Tailor's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 300}},
						["requireSkill"] = TAILORING,
					}),
					i(227409, {	-- Faded Alchemist's Research (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = ALCHEMY,
					}),
					i(227407, {	-- Faded Blacksmith's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = BLACKSMITHING,
					}),
					i(227411, {	-- Faded Enchanter's Research (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = ENCHANTING,
					}),
					i(227412, {	-- Faded Engineer's Scribblings (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = ENGINEERING,
					}),
					i(227415, {	-- Faded Herbalist's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = HERBALISM,
					}),
					i(227413, {	-- Faded Jeweler's Illustrations (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = JEWELCRAFTING,
					}),
					i(227414, {	-- Faded Leatherworker's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = LEATHERWORKING,
					}),
					i(227416, {	-- Faded Miner's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = MINING,
					}),
					i(227408, {	-- Faded Scribe's Runic Drawings (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = INSCRIPTION,
					}),
					i(227417, {	-- Faded Skinner's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = SKINNING,
					}),
					i(227410, {	-- Faded Tailor's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 200}},
						["requireSkill"] = TAILORING,
					}),
					i(227431, {	-- Pristine Alchemist's Research (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = ALCHEMY,
					}),
					i(227429, {	-- Pristine Blacksmith's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = BLACKSMITHING,
					}),
					i(227433, {	-- Pristine Enchanter's Research (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = ENCHANTING,
					}),
					i(227434, {	-- Pristine Engineer's Scribblings (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = ENGINEERING,
					}),
					i(227437, {	-- Pristine Herbalist's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = HERBALISM,
					}),
					i(227435, {	-- Pristine Jeweler's Illustrations (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = JEWELCRAFTING,
					}),
					i(227436, {	-- Pristine Leatherworker's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = LEATHERWORKING,
					}),
					i(227438, {	-- Pristine Miner's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = MINING,
					}),
					i(227430, {	-- Pristine Scribe's Runic Drawings (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = INSCRIPTION,
					}),
					i(227439, {	-- Pristine Skinner's Notes (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = SKINNING,
					}),
					i(227432, {	-- Pristine Tailor's Diagrams (CI!)
						["cost"] = {{"i", ARTISANS_ACUITY, 400}},
						["requireSkill"] = TAILORING,
					}),
					-- Surplus Bags
					i(227682, {	-- Satchel of Surplus Cloth
						["cost"] = {{"i", ARTISANS_ACUITY, 600}},
					}),
					i(228337, {	-- Satchel of Surplus Dust
						["cost"] = {{"i", ARTISANS_ACUITY, 600}},
					}),
					i(227675, {	-- Satchel of Surplus Herbs
						["cost"] = {{"i", ARTISANS_ACUITY, 600}},
					}),
					i(227681, {	-- Satchel of Surplus Leather
						["cost"] = {{"i", ARTISANS_ACUITY, 600}},
					}),
					i(227676, {	-- Satchel of Surplus Ore
						["cost"] = {{"i", ARTISANS_ACUITY, 600}},
					}),
				},
			}),
			n(224294, {	-- Osidion <Ensemble Vendor>
				["description"] = "Cost is based on if a Earth-Encrusted Gem is in your inventory. If none then the ensembles are available for Resonance Crystals.",
				["coord"] = { 57.3, 60.8, DORNOGAL },
				["g"] = sharedData({
					["cost"] = {
						{"i", 223951, 1},	-- 1x Earth-Encrusted Gem
						{"c", RESONANCE_CRYSTALS, 9750},
					},
				}, {
					iensemble(219116),	-- Arcane Peddler's Trinkets
					iensemble(219100),	-- Cardinal Educator's Knowledge
					iensemble(219127),	-- Cast Artisan's Talent
					iensemble(219113),	-- Celestial Patron's Elegance
					iensemble(219103),	-- Cobalt Educator's Knowledge
					iensemble(219114),	-- Court Patron's Elegance
					iensemble(219117),	-- Curious Peddler's Trinkets
					iensemble(219133),	-- Deep Cartographer's Orientation
					iensemble(219107),	-- Earthy Quotidian Wear
					iensemble(219102),	-- Leafy Educator's Knowledge
					iensemble(219101),	-- Lilac Educator's Knowledge
					iensemble(219106),	-- Maroon Quotidian Wear
					iensemble(219104),	-- Midnight Educator's Knowledge
					iensemble(219134),	-- Mossy Cartographer's Orientation
					iensemble(219119),	-- Occult Peddler's Trinkets
					iensemble(219131),	-- Oceanic Cartographer's Orientation
					iensemble(219118),	-- Peculiar Peddler's Trinkets
					iensemble(219111),	-- Royal Patron's Elegance
					iensemble(219130),	-- Saffron Cartographer's Orientation
					iensemble(219129),	-- Sooty Artisan's Talent
					iensemble(219128),	-- Stained Artisan's Talent
					iensemble(219109),	-- Taupe Quotidian Wear
					iensemble(219123),	-- Toiler's Beige Uniform
					iensemble(219122),	-- Toiler's Burgundy Uniform
					iensemble(219120),	-- Toiler's Khaki Uniform
					iensemble(219124),	-- Toiler's Navy Uniform
					iensemble(219121),	-- Toiler's Ochre Uniform
					iensemble(219108),	-- Umber Quotidian Wear
					iensemble(219112),	-- Verdant Patron's Elegance
					iensemble(219126),	-- Woven Artisan's Talent
				}),
			}),
			n(234906, {	-- Syenite
				["coord"] = { 58.0, 56.8, DORNOGAL },
				["timeline"] = { ADDED_11_1_0 },
				["g"] = {
					i(230937),	-- Enchanted Weathered Undermine Crest
					i(230936),	-- Enchanted Runed Undermine Crest
					i(230935),	-- Enchanted Gilded Undermine Crest
					i(239146, {	-- Gilded Augmentation Matrix
						["timeline"] = { ADDED_11_1_5 },
					}),
					i(239203, {	-- Runed Augmentation Matrix
						["timeline"] = { ADDED_11_1_5 },
					}),
				},
			}),
			n(219226, {	-- Vaskarn
				["coord"] = { 52.1, 42.2, DORNOGAL },
				["g"] = {
					-- Season 1
					-- Trade DOWN
					i(221268, {	-- Pouch of Weathered Harbinger Crests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Normal Crest\nReceive: LFR Crest",
						["cost"] = {{"c", CARVED_HARBINGER_CREST, 15}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(221373, {	-- Satchel of Carved Harbinger Crests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Heroic Crest\nReceive: Normal Crest",
						["cost"] = {{"c", RUNED_HARBINGER_CREST, 15}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(221375, {	-- Pack of Runed Harbinger Crests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Mythic Crest\nReceive: Heroic Crest",
						["cost"] = {{"c", GILDED_HARBINGER_CREST, 15}},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					-- Trade UP
					i(220767, {	-- Triumphant Satchel of Carved Harbinger Crests
						["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: LFR Crest\nReceive: Normal Crest",
						["cost"] = {{ "c", WEATHERED_HARBINGER_CREST, 90 }},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(220773, {	-- Celebratory Pack of Runed Harbinger Crests
						["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: Normal Crest\nReceive: Heroic Crest",
						["cost"] = {{ "c", CARVED_HARBINGER_CREST, 90 }},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					i(220776, {	-- Glorious Cluster of Gilded Harbinger Crests
						["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: Heroic Crest\nReceive: Mythic Crest",
						["cost"] = {{ "c", RUNED_HARBINGER_CREST, 90 }},
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0 },
					}),
					-- Season 2
					-- Trade DOWN
					i(231267, {	-- Pouch of Weathered Undermine Crests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Normal Crest\nReceive: LFR Crest",
						["cost"] = {{"c", CARVED_UNDERMINE_CREST, 15}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(231269, {	--  Satchel of Carved Undermine Crests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Heroic Crest\nReceive: Normal Crest",
						["cost"] = {{"c", RUNED_UNDERMINE_CREST, 15}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(231270, {	--  Pack of Runed Undermine Crests
						["description"] = "\n|cffff0000 -- DOWNGRADE --|r\n\nCost: Mythic Crest\nReceive: Heroic Crest",
						["cost"] = {{"c", GILDED_UNDERMINE_CREST, 15}},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					-- Trade UP
					i(231153, {	-- Triumphant Satchel of Carved Undermine Crests
						["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: LFR Crest\nReceive: Normal Crest",
						["cost"] = {{ "c", WEATHERED_UNDERMINE_CREST, 45 }},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(231154, {	-- Celebratory Pack of Runed Undermine Crests
						["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: Normal Crest\nReceive: Heroic Crest",
						["cost"] = {{ "c", CARVED_UNDERMINE_CREST, 45 }},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					i(231264, {	-- Glorious Cluster of Gilded Undermine Crests
						["description"] = "\n|cff4caf50 -- UPGRADE --|r\n\nCost: Heroic Crest\nReceive: Mythic Crest",
						["cost"] = {{ "c", RUNED_UNDERMINE_CREST, 45 }},
						["timeline"] = { ADDED_11_1_0, REMOVED_11_2_0 },
					}),
					-- Season 3
				},
			}),
		}),
	}),
})));
