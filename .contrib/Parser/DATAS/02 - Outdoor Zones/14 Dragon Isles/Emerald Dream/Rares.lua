---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(RARES, sharedData({ ["isDaily"] = true },{
			n(COMMON_BOSS_DROPS, {
				["crs"] = {	-- Probably all, but going w/ only confirmed
					209929,	-- Envoy of Winter
					209893,	-- Firebrand Fystia
					209913,	-- Fruitface
					209936,	-- Greedy Gessie
					210075,	-- Henri Snufftail
					210046,	-- Keen-eyed Cian
					210051,	-- Matriarch Keevah
					208658,	-- Moltenbinder's Disciple
					210045,	-- Moragh the Slothful
					209113,	-- Nouberon
					210161,	-- Ristar, the Rabid
					209358,	-- Splinterlimb
					210111,	-- Surging Lasher
					209902,	-- Talthonei Ashwhisper
					209911,	-- The Apostle
					210508,	-- Voracious Mikanji
				},
				["groups"] = {
					i(210171),	-- Formula: Enchanted Aspect's Dreaming Crest (RECIPE!)
					i(210173),	-- Formula: Enchanted Whelpling's Dreaming Crest (RECIPE!)
					i(210172),	-- Formula: Enchanted Wyrm's Dreaming Crest (RECIPE!)
					i(210492),	-- Technique: Grotto Netherwing Drake: Chin Tendrils (RECIPE!)
					i(210493),	-- Technique: Grotto Netherwing Drake: Spiked Jaw (RECIPE!)
					i(210491),	-- Technique: Winding Slitherdrake: Hairy Chin (RECIPE!)
				},
			}),
			n(210559, {	-- Balboan
				["questID"] = 78039,
				["coord"] = { 22.8, 32.3, EMERALD_DREAM },
				["groups"] = {
					i(208356),	-- Earthbound Furbolg's Shroud
				},
			}),
			n(210050, {	-- Bloodstripe Great Ray
				["questID"] = 77942,
				["coord"] = { 51.1, 31.7, EMERALD_DREAM },
				["groups"] = {
					i(208376),	-- Great Ray's Longbow
					i(208347),	-- Stone Wolf's Cuffs
					i(208326),	-- Vest of the Flametide
				},
			}),
			n(209909, {	-- Crabtankerous
				["questID"] = 77862,
				["coord"] = { 66.1, 63.5, EMERALD_DREAM },
				["groups"] = {
					i(208333),	-- Fallen Flame's Crown
					i(208364),	-- Falling Leaf Saber
					i(208341),	-- Fire-Runed Spaulders
				},
			}),
			n(209929, {	-- Envoy of Winter
				["providers"] = {
					{ "n", 210132 },	-- The Envoy Tribute (vignette)
					{ "n", 214131 },	-- Envoy of Winter (vignette)
				},
				["description"] = "Finish bonus objective in marked area to make him spawn.",
				["coord"] = { 34.5, 63.2, EMERALD_DREAM },
				["groups"] = {
					i(208332),	-- Horns of the Envoy
					i(208340),	-- Stag's Flourishing Mantle
					i(208337),	-- Leaf Steward's Leggings
					i(208365, {	-- Winter's Stand
						i(209948),	-- Spring's Keeper
					}),
					o(408054, {	-- Shiversnap Blossom
						i(208881),	-- Shiversnap Blossom (QI!)
					}),
					bo(77878, true),	-- Envoy of Winter bonus objective
				},
			}),
			n(209893, {	-- Firebrand Fystia
				["providers"] = {
					{ "n", 210516 },	-- Primalist Punishment [DNT] (vignette)
				},
				["description"] = "Finish bonus objective in marked area to make him spawn.",
				["coord"] = { 30.0, 20.7, EMERALD_DREAM },
				["groups"] = {
					i(208371),	-- Fire Assassin's Boots
					i(208328),	-- Fystia's Deft Hands
					i(209881),	-- Fystia's Fiery Kris
					i(208331),	-- Cowl of the Flame
					bo(78015, true),	-- Firebrand Fystia bonus objective
				},
			}),
			n(209913, {	-- Fruitface
				["description"] = "Help Mylune by picking up Missing Fruit from floor until npc yell 'I see the podling who took the fruit!', attack enemy once and follow him.",
				["crs"] = {
					209950,	-- Mylune
					209980,	-- Thieving Podling
				},
				["questID"] = 77846,
				["coords"] = {
					{ 63.5, 71.7, EMERALD_DREAM },	-- Entrance
					{ 60.3, 68.7, 2254 },	-- Mylune
					{ 54.3, 35.7, 2254 },	-- Rare
				},
				["groups"] = {
					i(208388),	-- Leafster's Magic Wand
					i(208837),	-- Missing Fruit (QI!)
					i(208344),	-- Sash of the Fruit Thief
					i(208372),	-- Trickster's Tip Toers
				},
			}),
			n(209936, {	-- Greedy Gessie
				["providers"] = {
					{ "n", 210300 },	-- Controller Bunny (vignette)
				},
				["description"] = "Finish bonus objective in marked area to make him spawn.",
				["coord"] = { 53.8, 40.7, EMERALD_DREAM },
				["groups"] = {
					i(208355),	-- String of Delicacies
					bo(77982, true),	-- Greedy Gessie bonus objective
				},
			}),
			n(210075, {	-- Henri Snufftail
				["questID"] = 77944,
				["coord"] = { 47.1, 29.8, EMERALD_DREAM },
				["groups"] = {
					i(208357),	-- Henri's Warm Coat
				},
			}),
			n(209620, {	-- Ignit the Firebranded
				["questID"] = 77864,
				["coord"] = { 58.7, 51.2, EMERALD_DREAM },
				["groups"] = {
					i(208338),	-- Furious Flame's Shoulders
					i(208325),	-- Ignit's Fiery Heart
					i(208383),	-- Pommel of Fire
				},
			}),
			n(209919, {	-- Isaqa
				["questID"] = 77989,
				["coord"] = { 37.4, 31.7, EMERALD_DREAM },
				["groups"] = {
					i(208348),	-- Binds of the Shatterer
					i(208345),	-- Forgebreaker's Belt
					i(208385),	-- Flame Endowed Blade
				},
			}),
			n(210046, {	-- Keen-eyed Cian
				["questID"] = 78211,
				["coord"] = { 40.5, 49.6, EMERALD_DREAM },
				["groups"] = {
					i(208336),	-- Legguards of the Dreamsaber
					i(208342),	-- Girdle of Nature's Fury
					i(208363),	-- Twinfang of the Cian
					i(210650),	-- Mark of the Keen-Eyed Dreamsaber (CI!)
				},
			}),
			n(210051, {	-- Matriarch Keevah
				["questID"] = 78213,
				["coord"] = { 41.1, 73.3, EMERALD_DREAM },
				["groups"] = {
					i(210683),	-- Mark of the Dreamtalon Matriarch (CI!)
					i(208379),	-- Keevah's Extended Claw
					i(208343),	-- Matriarch's Flowery Band
					i(208339),	-- Saber's Stone Pauldrons
				},
			}),
			n(210064, {	-- Molten Leadspike
				["questID"] = 77943,
				["coord"] = { 63.9, 36.1, EMERALD_DREAM },
				["groups"] = {
					i(208323),	-- Nature's Firebathed Robes
					i(208349),	-- Burning Leather Cuffs
					i(208358),	-- Sunset's Bulwark
				},
			}),
			n(208658, {	-- Moltenbinder's Disciple
				["questID"] = 77941,
				["coord"] = { 45.8, 18.8, EMERALD_DREAM },
				["groups"] = {
					i(208353),	-- Djaradin's Molten Band
					i(205463),	-- Molten Lava Ball (TOY!)
				},
			}),
			n(210045, {	-- Moragh the Slothful
				["questID"] = 78210,
				["coords"] = {
					{ 38.8, 71.6, EMERALD_DREAM },	-- Entrance
					{ 40.5, 72.6, EMERALD_DREAM },	-- Moragh
				},
				["groups"] = {
					i(210729),	-- Mark of the Verdant Bristlebruin (CI!)
					i(209954),	-- Moragh's Favorite Rock (TODO: remove if it will drop somewhere else)
					i(208380),	-- Moragh's Kneading Claw
					i(208329),	-- Warm Grasp of the Dream
				},
			}),
			n(210070, {	-- Mosa Umbramane
				["questID"] = 77940,
				["coord"] = { 55.0, 36.8, EMERALD_DREAM },
				["groups"] = {
					i(210647),	-- Mark of the Umbramane (CI!)
					i(208375),	-- Owlbear's Decisive Strike
					i(209958),	-- Rune of the Umbramane (TODO: unless it is really zone drop)
				},
			}),
			n(209113, {	-- Nouberon
				["providers"] = {
					{ "n", 209264 },	-- Nuo Bunny (vignette)
				},
				["description"] = "Finish bonus objective in marked area to make him spawn.",
				["coord"] = { 61.0, 70.3, EMERALD_DREAM },
				["groups"] = {
					i(209880),	-- Curve of Starry Dusks
					bo(77570, true),	-- Nouberon bonus objective
				},
			}),
			n(209912, {	-- Raszageth's Last Breath
				["providers"] = {
					{ "n", 210083 },	-- Primalist Portal (vignette)
				},
				["description"] = "Can randomly spawn in zone.",
				["coords"] = {
					{ 26.3, 28.5, EMERALD_DREAM },
					-- { 65.4, 43.5, EMERALD_DREAM },
					-- { 67.5, 66.2, EMERALD_DREAM },
					-- { 41.5, 31.1, EMERALD_DREAM },
				},
				["groups"] = {
					i(208373),	-- Band of Bated Breath
					bo(77859, true),	-- Raszageth's Last Breath bonus objective
				},
			}),
			n(209898, {	-- Reefbreaker Moruud
				["providers"] = {
					{ "n", 210155 },	-- Generic - Empty Bunny (vignette)
				},
				["description"] = "Finish bonus objective in marked area to make him spawn.",
				["coord"] = { 65.0, 84.2, EMERALD_DREAM },
				["groups"] = {
					i(208327),	-- Maruud's Piercing Hands
					i(208334),	-- Legplates of the Krakken
					i(209882),	-- Maruud's Undertow
					bo(77867, true),	-- Reefbreaker Moruud bonus objective
				},
			}),
			n(210161, {	-- Ristar, the Rabid
				["questID"] = 77890,
				["coord"] = { 44.5, 39.3, EMERALD_DREAM },
				["groups"] = {
					i(210674),	-- Mark of the Sable Dreamtalon (CI!)
					i(208359),	-- Nightclaw's Bauble
					i(209957),	-- Fang of the Frenzied Nightclaw
					i(208322),	-- Treads of the Nightclaw
				},
			}),
			n(210047, {	-- Somnambulant Ori
				["description"] = "Fly around assigned coords",
				["questID"] = 78212,
				["coord"] = { 43.5, 47.0, EMERALD_DREAM },
				["groups"] = {
					i(209956),	-- Ori's Verdant Feather
					i(208381),	-- Scepter of Still Waters
				},
			}),
			n(209358, {	-- Splinterlimb
				["description"] = "Gain one stack of 'Corrupting Sparks' per cycle of his route, at 8th stack become enemy (rare)",
				["crs"] = {
					209365,	-- Splinterlimb
				},
				["questID"] = 77863,
				["coord"] = { 61.9, 52.2, EMERALD_DREAM },
				["groups"] = {
					i(209955),	-- Root of Fire
					i(208346),	-- Singed Barkbands
					i(208361),	-- Splinterlimb's Branch
				},
			}),
			n(210111, {	-- Surging Lasher
				["providers"] = {
					{ "n", 210663 },	-- Surge Widget (vignette)
				},
				["description"] = "Can spawn during Emerald Frenzy event.",
				["questID"] = 78263,
				["coords"] = {
					{ 60.0, 63.3, EMERALD_DREAM },
					{ 59.0, 71.9, EMERALD_DREAM },
					{ 57.1, 52.5, EMERALD_DREAM },
				},
				["groups"] = {
					i(208367),	-- Lasher's Red Thorn
					i(208330),	-- Piercing Touch of the Vine
					i(208335),	-- Vibrant Fall Leggings
				},
			}),
			n(209902, {	-- Talthonei Ashwhisper
				["description"] = "Killing Druids of the Flame can make her spawn in areas where they are present.",
				["questID"] = 77994,
				["coords"] = {
					{ 61.5, 67.5, EMERALD_DREAM },
					{ 59.2, 43.7, EMERALD_DREAM },
					{ 62.8, 52.1, EMERALD_DREAM },
					{ 63.8, 69.9, EMERALD_DREAM },
					{ 35.1, 22.6, EMERALD_DREAM },
					{ 36.9, 22.4, EMERALD_DREAM },
				},
				["groups"] = {
					i(208369),	-- Druid's Vengeful Gaze
					i(210736),	-- Mark of the Smoldering Dreamstag (CI!)
					i(208374),	-- Talthonei's Wrath
				},
			}),
			n(209911, {	-- The Apostle
				["questID"] = 77990,
				["coord"] = { 26.0, 26.6, EMERALD_DREAM },
				["groups"] = {
					i(208324),	-- Scorching Dryad's Chestpiece
					i(208389),	-- Spear of the Wilds
					i(208370),	-- The Apostle's Steps
				},
			}),
			n(210508, {	-- Voracious Mikanji
				["questID"] = 78214,
				["coord"] = { 38.4, 62.1, EMERALD_DREAM },
				["groups"] = {
					i(208354),	-- Cerulean Turtle's Pendant
				},
			}),
		})),
	}),
})));
