---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		n(RARES, sharedData({ ["isDaily"] = true },{
			n(193168, {	-- Biryuk
				["coord"] = { 72.5, 56.2, OHNAHRAN_PLAINS },
				["questID"] = 73903,
			}),
			n(193128, {	-- Blightpaw the Depraved
				["description"] = "Speak to nearby NPC to spawn.",
				["cr"] = 193222,	-- Archaeologist Koranir
				["coord"] = { 90.2, 40.2, OHNAHRAN_PLAINS },
				["questID"] = 74096,
				["groups"] = {
					bo(73869, true),
				},
			}),
			n(201535,	-- Bloodbeak the Ravenous
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 37.3, 38.5, OHNAHRAN_PLAINS },
				["questID"] = 74467,
				["groups"] = {
					i(203673),	-- Bloodbeak's Ravenor
				},
			})),
			n(195186, {	-- Cinta the Forgotten
				["description"] = "Only spawns if the Aylaag Camp is stationed west.",
				["coord"] = { 31.3, 76.0, OHNAHRAN_PLAINS },
				["questID"] = 73950,
			}),
			n(189652, {	-- Deadwaker Ghendish
				["coord"] = { 30.8, 66.6, OHNAHRAN_PLAINS },
				["questID"] = 73872,
				["groups"] = {
					i(189055),	-- Ghendish's Backup Talisman
				},
			}),
			n(192020, {	-- Eaglemaster Niraak
				["coord"] = { 49.5, 67.0, OHNAHRAN_PLAINS },
				["description"] = "Chance to spawn after killing any nearby Nokhud Mobs. Yells 'Filth! I will end you for your actions!' upon spawning.",
				["questID"] = 74063,
				["groups"] = {
					-- #if AFTER 10.0.5
					bo(74441, true),	-- Bonus Objective was added in 10.0.5
					-- #endif
					i(200536),	-- Tamed Eagle
				},
			}),
			n(193142, {	-- Enraged Sapphire
				["coord"] = { 56.6, 81.4, OHNAHRAN_PLAINS },
				["questID"] = 73875,
				["groups"] = {
					i(200309),	-- Rock Encrusted Chestguard
				},
			}),
			-- n(193170),	-- Fulgurb // under DF/Timed Based Rare
			n(201537,	-- Groffnar
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 35.0, 41.1, OHNAHRAN_PLAINS },
				["questID"] = 74549,
				["groups"] = {
					bo(74463, true),
					i(203671),	-- Pack Leader's Pelt
				},
			})),
			n(187781, {	-- Hamett <Rockfang Matriarch>
				["description"] = "Only available if the Aylaag Camp is stationed north.\nChance to spawn upon killing Sutaan.",
				["coord"] = { 85.4, 15.8, OHNAHRAN_PLAINS },
				["questID"] = 73951,
			}),
			n(188095, {	-- Hunter of the Deep
				["description"] = "Only spawns if the Aylaag Camp is stationed north.\nThere will be some glowing fish in the water when he is summonable. Click on the weapon rack, shoot the fish. When all fish are eliminated, the boss will spawn.",
				["coord"] = { 80.5, 42.2, OHNAHRAN_PLAINS },
				["questID"] = 73966,
			}),
			n(201538,	-- Huntmaster Yrgena
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 33.5, 38.7, OHNAHRAN_PLAINS },
				["questID"] = 74548,
				["groups"] = {
					bo(74466, true),
					i(203672),	-- Master Huntmaster's Wristguards
				},
			})),
			n(188124, {	-- Irontree
				["description"] = "Only spawns if the Aylaag Camp is stationed north.\nCave Entrance: 79.2, 36.6.",
				["coords"] = {
					{ 79.2, 36.6, OHNAHRAN_PLAINS },	-- Cave Entrance
					{ 80.5, 37.8, OHNAHRAN_PLAINS },	-- Boss
				},
				["questID"] = 73967,
				["groups"] = {
					bo(66356, true),
					i(203672),	-- Master Huntmaster's Wristguards
				},
			}),
			n(197009, {	-- Liskheszaera
				["coord"] = { 87.4, 61.4, OHNAHRAN_PLAINS },
				["questID"] = 73882,
			}),
			n(201540,	-- Lurgan
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 33.7, 34.8, OHNAHRAN_PLAINS },
				["questID"] = 74546,
				["groups"] = {
					bo(74464, true),
					i(203674),	-- Brutal Tramplers
				},
			})),
			n(195409, {	-- Makhra the Ashtouched <Corrupted Child of Ohn'ahra>
				["description"] = "Only spawns if the Aylaag Camp is stationed west.",
				["coord"] = { 32.7, 38.1, OHNAHRAN_PLAINS },
				["questID"] = 73968,
			}),
			-- n(193212),	-- Malsegan // under DF/Timed Based Rare
			-- n(193173),	-- Mikrin of the Raging Winds // under DF/Timed Based Rare
			n(195895, {	-- Nergazurai
				["coord"] = { 60.0, 71.3, OHNAHRAN_PLAINS },
				["questID"] = 74093,
			}),
			n(187219, {	-- Nokhud Warmaster
				["description"] = "Spawns during the Aylaag Caravan escort from River Camp to Eaglewatch Outpost.",
				-- ["coord"] = { X, Y, OHNAHRAN_PLAINS },
				-- ["questID"] = ,
				-- ["groups"] = {
				-- },
			}),
			n(196350, {	-- Old Stormhide
				["description"] = "Spawns during the Aylaag Caravan escort from Eaglewatch Outlook to Aylaag Outpout.",
				-- ["coord"] = { X, Y, OHNAHRAN_PLAINS },
				-- ["questID"] = ,
				-- ["groups"] = {
				-- },
			}),
			-- n(193235),	-- Oshigol // under DF/Timed Based Rare
			n(191950, {	-- Porta the Overgrown
				["description"] = "Only available if the Aylaag Camp is stationed at the south east.\nRequires 5 Enriched Soil used on the mushroom in the cave at 59.71, 68.10 to spawn this rare. The Enriched Soil can be looted from piles of dirt scattered around the bottom of the lake in Mirror of the Sky and underwater in the surrounding area. The coordinates indicate possible spots for the Dirt Piles.",
				["coords"] = {
					{ 59.6, 68.0, OHNAHRAN_PLAINS },	-- Boss
					{ 50.5, 70.2, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 52.7, 65.8, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 54.6, 69.4, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 52.1, 70.5, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 53.1, 72.0, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 49.7, 68.7, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 54.1, 66.9, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
					{ 53.77, 67.45, OHNAHRAN_PLAINS },	-- Soil Spawn posibility
				},
				["questID"] = 73971,
			}),
			n(193669, {	-- Prozela Galeshot
				["coord"] = { 59.9, 66.9, OHNAHRAN_PLAINS },
				["questID"] = 72815,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(192557, {	-- Quackers the Terrible
				-- #if BEFORE 10.0.5
				["description"] = "Requires Duck Trap Kit, purchased from a nearby camp (northern waypoint).\n\nYou'll need a rank 1 of these reagents:\n\n1 x Primal Molten Alloy\n\n3 x Resilient Leather\n\n4 x Spool of Wilderthread\n\nUse the item to trap a duck and then go to southern waypoint & put the trapped duck into the nest.",
				-- #else
				["description"] = "Requires Duck Trap Kit, purchased from a nearby camp (northern waypoint).\n\nYou'll need a rank 1 of these reagents:\n\n1 x Large Sturdy Femur\n\n3 x Contoured Fowlfeather\n\n2 x Tallstrider Sinew\n\nUse the item to trap a duck and then go to southern waypoint & put the trapped duck into the nest.",
				-- #endif
				["coords"] = {
					{ 68.2, 79.2, OHNAHRAN_PLAINS },
					{ 70.43, 63.49, OHNAHRAN_PLAINS },
				},
				["cost"] = { { "i", 194739, 1 } },	-- Trapped Duck
				["questID"] = 73972,
			}),
			-- n(196010),	-- Researcher Sneakwing // under DF/Timed Based Rare
			-- n(193227),	-- Ronsak the Decimator // under DF/Timed Based Rare
			n(193153, {	-- Ripsaw the Stalker
				["coord"] = { 26.3, 65.4, OHNAHRAN_PLAINS },
				["questID"] = 72845,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(195223, {	-- Rustlily <Nimblewing Matriarch>
				["description"] = "Only spawns if the Aylaag Camp is stationed west.",
				["coord"] = { 42.6, 44.6, OHNAHRAN_PLAINS },
				["questID"] = 73973,
			}),
			n(193215, {	-- Scaleseeker Mezeri
				["crs"] = { 193224 },	-- Dawnbell
				["description"] = "Feed Dawnbell at the southern waypoint a Sugarwing Cupcake & then follow her to the rare.",
				["coords"] = {
					{ 16.6, 51.2, OHNAHRAN_PLAINS },	-- Dawnbell
					{ 20.3, 43.7, OHNAHRAN_PLAINS },	-- Rare
				},
				["questID"] = 74073,
				["cost"] = {{"i", 194681, 1}},	-- Sugarwing Cupcake
				["groups"] = {
					bo(69865, true),
					i(200735),	-- Magically Magical Faerie Flower
				},
			}),
			n(193136, {	-- Scav Notail
				["coord"] = { 50.1, 75.2, OHNAHRAN_PLAINS },
				["questID"] = 73893,
				["groups"] = {
					i(200168),	-- Gnoll Hide Belt
				},
			}),
			n(193188, {	-- Seeker Teryx
				["coord"] = { 61.9, 13.0, OHNAHRAN_PLAINS },
				["questID"] = 73894,
				["groups"] = {
					i(200875),	-- Seeker's Bands
				},
			}),
			n(187559, {	-- Shade of Grief
				["crs"] = { 193166 },	-- Solethus's Gravestone
				["coord"] = { 29.9, 41.1, OHNAHRAN_PLAINS },
				["questID"] = 74075,
				["groups"] = {
					i(196996),	-- Cliffside Wylderdrake: Branched Horns (MM!)
					i(200437),	-- Dreamsong Censer
					i(197115),	-- Highland Drake: Thorned Jaw (MM!)
					i(200444),	-- Mantle of the Gatekeeper
				},
			}),
			n(192949, {	-- Skaara
				["coord"] = { 44.9, 49.2, OHNAHRAN_PLAINS },
				["questID"] = 72847,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193165, {	-- Sparkspitter Vrak
				["coord"] = { 22.1, 38.8, OHNAHRAN_PLAINS },
				["questID"] = 73896,
				["groups"] = {
					i(200234),	-- Vrak's Embossed Aegis
				},
			}),
			-- n(193123),	-- Steamgill // under DF/Timed Based Rare
			n(201539,	-- Stormcaller Narkena
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 32.5, 42.3, OHNAHRAN_PLAINS },
				["questID"] = 74547,
				["groups"] = {
					bo(74465, true),
					i(203676),	-- Stormcaller's Grounding Shoes
					i(197367),	-- Renewed Proto-Drake: Gray Hair (MM!)
				},
			})),
			n(191842, {	-- Sulfurion
				["description"] = "Only spawns if the Aylaag Camp is stationed at the south east.",
				["coord"] = { 78.3, 83.0, OHNAHRAN_PLAINS },
				["questID"] = 73974,
			}),
			n(193133, {	-- Sunscale Behemoth
				["coord"] = { 63.2, 48.6, OHNAHRAN_PLAINS },
				["questID"] = 72849,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193163, {	-- Territorial Coastling
				["coord"] = { 22.7, 67.6, OHNAHRAN_PLAINS },
				["questID"] = 72851,
				["isDaily"] = IGNORED_VALUE,
				["groups"] = {
					i(200212, {	-- Sand-Encrusted Graves
						["description"] = "While this item can drop from almost every Dragonflight Rare, its best farmed by killing the Territorial Coastling Rare.\n\nDroprate is around 75%.\n\nThe Rare is once per Character.",
					}),
				},
			}),
			n(196334, {	-- The Great Enla <Scourge of the Plains>
				["description"] = "Spawns during the Aylaag Caravan escort from Eaglewatch Outpost to Aylaag Outpost.",
				-- ["coord"] = { X, Y, OHNAHRAN_PLAINS },
				-- ["questID"] = ,
				-- ["groups"] = {
				-- },
			}),
			n(195204, {	-- The Jolly Giant
				["description"] = "Only spawns if the Aylaag Camp is stationed west.",
				["coord"] = { 27.6, 55.6, OHNAHRAN_PLAINS },
				["questID"] = 73976,
			}),
			n(191354, {	-- Ty'foon the Ascended
				["coord"] = { 26.1, 34.2, OHNAHRAN_PLAINS },
				["questID"] = 72852,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(192453, {	-- Vaniik the Stormtouched <Corrupted Child of Ohn'ahra>
				["description"] = "Only spawns if the Aylaag Camp is stationed at the south east.",
				["coord"] = { 82.0, 63.0, OHNAHRAN_PLAINS },
				["questID"] = 73978,
			}),
			n(192983, {	-- Web-Queen Ashkaz
				["coord"] = { 43.3, 47.2, OHNAHRAN_PLAINS },
				["questID"] = 74095,
				["groups"] = {
					bo(67717, true),
				},
			}),
			n(192364, {	-- Windscale the Stormborn
				["description"] = "Only available if the Aylaag Camp is stationed at the south east.\nSpawns from the egg after killing 5 nearby egg channelers.",
				["crs"] = {
					192367,	-- Nokhud Galebringer
					192357,	-- Storm-touched Egg
				},
				["coord"] = { 84.2, 47.8, OHNAHRAN_PLAINS },
				["questID"] = 73979,
			}),
			n(192045,	-- Windseeker Avash
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 58.6, 68.2, OHNAHRAN_PLAINS },
				["questID"] = 74088,
				["groups"] = {
					bo(74440, true),
					i(200141),	-- Wind Generating Band
				},
			})),
			n(193209, {	-- Zenet Avis <The Hard Wind>
				["coord"] = { 31.5, 64.0, OHNAHRAN_PLAINS },
				["questID"] = 73901,
				["groups"] = {
					i(200879, {	-- Zenet Egg
						i(198825),	-- Zenet Hatchling (MOUNT!)
					}),
				},
			}),
			n(188451, {	-- Zerimek <The Darkened Cloud>
				["description"] = "Only spawns if the Aylaag Camp is stationed north.",
				["coord"] = { 72.2, 23.2, OHNAHRAN_PLAINS },
				["questID"] = 73980,
			}),
			n(193140, {	-- Zarizz
				["description"] = "Use /hiss on 4 nearby Juvenile Wind Serpents to spawn.",
				["coord"] = { 30.3, 62.1, OHNAHRAN_PLAINS },
				["questID"] = 74091,
				["groups"] = {
					i(200215),	-- Plumed Shoulderguards of the Hunt
				},
			}),
		})),
	}),
})));
