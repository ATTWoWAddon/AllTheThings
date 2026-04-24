-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(753, {	-- Vault of Archavon
		["mapID"] = VAULT_OF_ARCHAVON,
		["coord"] = { 50.0, 11.9, WINTERGRASP },
		-- #if NOT ANYCLASSIC
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = 80,
		["groups"] = {
			n(COMMON_BOSS_DROPS, {
				["description"] = "These can drop from any of the bosses on any difficulty.",
				["crs"] = {
					35013,	-- Koralon the Flame Watcher
					33993,	-- Emalon the Storm Watcher
					38433,	-- Toravon the Ice Watcher
					31125,	-- Archavon the Stone Watcher
				},
				["groups"] = {
					ach(2081, {	-- Grand Black War Mammoth
						["providers"] = {
							{ "i", 43959 },	-- Grand Black War Mammoth (A) (MOUNT!)
							{ "i", 44083 },	-- Grand Black War Mammoth (H) (MOUNT!)
						},
						["filterID"] = MOUNTS,
					}),
					a(i(43959)),	-- Grand Black War Mammoth (A) (MOUNT!)
					h(i(44083)),	-- Grand Black War Mammoth (H) (MOUNT!)
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				applyclassicphase(WRATH_PHASE_THREE, ach(4016, {	-- Earth, Wind & Fire (10 player)
					["timeline"] = { ADDED_3_2_0 },
					["crs"] = {
						35013,	-- Koralon the Flame Watcher
						33993,	-- Emalon the Storm Watcher
						31125,	-- Archavon the Stone Watcher
					},
				})),
				applyclassicphase(WRATH_PHASE_THREE, e(1599, bubbleDownSelf({ ["timeline"] = { ADDED_3_2_0 } }, {	-- Koralon the Flame Watcher
					["creatureID"] = 35013,
					["groups"] = {
						ach(3836),		-- Koralon the Flame Watcher (10 player)
						i(42037),	-- Furious Gladiator's Pendant of Ascendancy
						i(42039),	-- Furious Gladiator's Pendant of Deliverance
						i(42036),	-- Furious Gladiator's Pendant of Dominance
						i(42040),	-- Furious Gladiator's Pendant of Salvation
						i(42038),	-- Furious Gladiator's Pendant of Subjugation
						i(46373),	-- Furious Gladiator's Pendant of Sundering
						i(42034),	-- Furious Gladiator's Pendant of Triumph
						i(42035),	-- Furious Gladiator's Pendant of Victory
						i(42071),	-- Furious Gladiator's Cloak of Ascendancy
						i(42073),	-- Furious Gladiator's Cloak of Deliverance
						i(42069),	-- Furious Gladiator's Cloak of Dominance
						i(42072),	-- Furious Gladiator's Cloak of Salvation
						i(42070),	-- Furious Gladiator's Cloak of Subjugation
						i(42074),	-- Furious Gladiator's Cloak of Triumph
						i(42075),	-- Furious Gladiator's Cloak of Victory
						i(41640),	-- Furious Gladiator's Armwraps of Dominance
						i(41625),	-- Furious Gladiator's Armwraps of Salvation
						i(41840),	-- Furious Gladiator's Armwraps of Triumph
						i(40983),	-- Furious Gladiator's Bracers of Salvation
						i(40889),	-- Furious Gladiator's Bracers of Triumph
						i(41909),	-- Furious Gladiator's Cuffs of Dominance
						i(41893),	-- Furious Gladiator's Cuffs of Salvation
						i(41065),	-- Furious Gladiator's Wristguards of Dominance
						i(41060),	-- Furious Gladiator's Wristguards of Salvation
						i(41225),	-- Furious Gladiator's Wristguards of Triumph
						i(41143),	-- Furious Gladiator's Chain Gauntlets
						i(41773),	-- Furious Gladiator's Dragonhide Gloves
						i(40809),	-- Furious Gladiator's Dreadplate Gauntlets
						i(42017),	-- Furious Gladiator's Felweave Handguards
						i(41287),	-- Furious Gladiator's Kodohide Gloves
						i(41767),	-- Furious Gladiator's Leather Gloves
						i(41137),	-- Furious Gladiator's Linked Gauntlets
						i(41007),	-- Furious Gladiator's Mail Gauntlets
						i(41874),	-- Furious Gladiator's Mooncloth Gloves
						i(40927),	-- Furious Gladiator's Ornamented Gloves
						i(40807),	-- Furious Gladiator's Plate Gauntlets
						i(41001),	-- Furious Gladiator's Ringmail Gauntlets
						i(41940),	-- Furious Gladiator's Satin Gloves
						i(40808),	-- Furious Gladiator's Scaled Gauntlets
						i(41971),	-- Furious Gladiator's Silk Handguards
						i(41293),	-- Furious Gladiator's Wyrmhide Gloves
						-- Alliance-only hands start
						a(i(47783)),	-- Kel'Thuzad's Gloves of Conquest
						a(i(47752)),	-- Khadgar's Gauntlets of Conquest
						a(i(48162)),	-- Malfurion's Gloves of Conquest
						a(i(48213)),	-- Malfurion's Handgrips of Conquest
						a(i(48132)),	-- Malfurion's Handguards of Conquest
						a(i(48312)),	-- Nobundo's Gloves of Conquest
						a(i(48342)),	-- Nobundo's Grips of Conquest
						a(i(48284)),	-- Nobundo's Handguards of Conquest
						a(i(48480)),	-- Thassarian's Gauntlets of Conquest
						a(i(48537)),	-- Thassarian's Handguards of Conquest
						a(i(48603)),	-- Turalyon's Gauntlets of Conquest
						a(i(48574)),	-- Turalyon's Gloves of Conquest
						a(i(48633)),	-- Turalyon's Handguards of Conquest
						a(i(48222)),	-- VanCleef's Gauntlets of Conquest
						a(i(47982)),	-- Velen's Gloves of Conquest
						a(i(48072)),	-- Velen's Handwraps of Conquest
						a(i(48254)),	-- Windrunner's Handguards of Conquest
						a(i(48375)),	-- Wrynn's Gauntlets of Conquest
						a(i(48449)),	-- Wrynn's Handguards of Conquest
						-- Horde-only hands start
						h(i(48244)),	-- Garona's Gauntlets of Conquest
						h(i(47802)),	-- Gul'dan's Gloves of Conquest
						h(i(48387)),	-- Hellscream's Gauntlets of Conquest
						h(i(48457)),	-- Hellscream's Handguards of Conquest
						h(i(48630)),	-- Liadrin's Gauntlets of Conquest
						h(i(48598)),	-- Liadrin's Gloves of Conquest
						h(i(48653)),	-- Liadrin's Handguards of Conquest
						h(i(48502)),	-- Koltira's Gauntlets of Conquest
						h(i(48559)),	-- Koltira's Handguards of Conquest
						h(i(48183)),	-- Runetotem's Gloves of Conquest
						h(i(48192)),	-- Runetotem's Handgrips of Conquest
						h(i(48153)),	-- Runetotem's Handguards of Conquest
						h(i(47773)),	-- Sunstrider's Gauntlets of Conquest
						h(i(48337)),	-- Thrall's Gloves of Conquest
						h(i(48367)),	-- Thrall's Grips of Conquest
						h(i(48296)),	-- Thrall's Handguards of Conquest
						h(i(48276)),	-- Windrunner's Handguards of Conquest
						h(i(48067)),	-- Zabra's Gloves of Conquest
						h(i(48097)),	-- Zabra's Handwraps of Conquest
						-- Faction-specific hands end
						i(41630),	-- Furious Gladiator's Belt of Dominance
						i(41617),	-- Furious Gladiator's Belt of Salvation
						i(41832),	-- Furious Gladiator's Belt of Triumph
						i(41898),	-- Furious Gladiator's Cord of Dominance
						i(41881),	-- Furious Gladiator's Cord of Salvation
						i(40976),	-- Furious Gladiator's Girdle of Salvation
						i(40881),	-- Furious Gladiator's Girdle of Triumph
						i(41070),	-- Furious Gladiator's Waistguard of Dominance
						i(41051),	-- Furious Gladiator's Waistguard of Salvation
						i(41235),	-- Furious Gladiator's Waistguard of Triumph
						i(41205),	-- Furious Gladiator's Chain Leggings
						i(41667),	-- Furious Gladiator's Dragonhide Legguards
						i(40848),	-- Furious Gladiator's Dreadplate Legguards
						i(42005),	-- Furious Gladiator's Felweave Trousers
						i(41298),	-- Furious Gladiator's Kodohide Legguards
						i(41655),	-- Furious Gladiator's Leather Legguards
						i(41199),	-- Furious Gladiator's Linked Leggings
						i(41033),	-- Furious Gladiator's Mail Leggings
						i(41864),	-- Furious Gladiator's Mooncloth Leggings
						i(40939),	-- Furious Gladiator's Ornamented Legplates
						i(40847),	-- Furious Gladiator's Plate Legguards
						i(41027),	-- Furious Gladiator's Ringmail Leggings
						i(41927),	-- Furious Gladiator's Satin Leggings
						i(40849),	-- Furious Gladiator's Scaled Legguards
						i(41959),	-- Furious Gladiator's Silk Trousers
						i(41304),	-- Furious Gladiator's Wyrmhide Legguards
						-- Alliance-only legs start
						a(i(47785)),	-- Kel'Thuzad's Leggings of Conquest
						a(i(47750)),	-- Khadgar's Leggings of Conquest
						a(i(48130)),	-- Malfurion's Leggings of Conquest
						a(i(48215)),	-- Malfurion's Legguards of Conquest
						a(i(48160)),	-- Malfurion's Trousers of Conquest
						a(i(48314)),	-- Nobundo's Kilt of Conquest
						a(i(48282)),	-- Nobundo's Legguards of Conquest
						a(i(48344)),	-- Nobundo's War-Kilt of Conquest
						a(i(48533)),	-- Thassarian's Legguards of Conquest
						a(i(48476)),	-- Thassarian's Legplates of Conquest
						a(i(48568)),	-- Turalyon's Greaves of Conquest
						a(i(48635)),	-- Turalyon's Legguards of Conquest
						a(i(48605)),	-- Turalyon's Legplates of Conquest
						a(i(48220)),	-- VanCleef's Legplates of Conquest
						a(i(47980)),	-- Velen's Leggings of Conquest
						a(i(48074)),	-- Velen's Pants of Conquest
						a(i(48252)),	-- Windrunner's Legguards of Conquest
						a(i(48445)),	-- Wrynn's Legguards of Conquest
						a(i(48373)),	-- Wrynn's Legplates of Conquest
						-- Horde-only legs start
						h(i(48246)),	-- Garona's Legplates of Conquest
						h(i(47800)),	-- Gul'dan's Leggings of Conquest
						h(i(48459)),	-- Hellscream's Legguards of Conquest
						h(i(48389)),	-- Hellscream's Legplates of Conquest
						h(i(48561)),	-- Koltira's Legguards of Conquest
						h(i(48504)),	-- Koltira's Legplates of Conquest
						h(i(48596)),	-- Liadrin's Greaves of Conquest
						h(i(48655)),	-- Liadrin's Legguards of Conquest
						h(i(48628)),	-- Liadrin's Legplates of Conquest
						h(i(48155)),	-- Runetotem's Leggings of Conquest
						h(i(48190)),	-- Runetotem's Legguards of Conquest
						h(i(48185)),	-- Runetotem's Trousers of Conquest
						h(i(47775)),	-- Sunstrider's Leggings of Conquest
						h(i(48339)),	-- Thrall's Kilt of Conquest
						h(i(48298)),	-- Thrall's Legguards of Conquest
						h(i(48369)),	-- Thrall's War-Kilt of Conquest
						h(i(48278)),	-- Windrunner's Legguards of Conquest
						h(i(48069)),	-- Zabra's Leggings of Conquest
						h(i(48099)),	-- Zabra's Pants of Conquest
						-- Faction-specific legs end
						i(41635),	-- Furious Gladiator's Boots of Dominance
						i(41621),	-- Furious Gladiator's Boots of Salvation
						i(41836),	-- Furious Gladiator's Boots of Triumph
						i(40977),	-- Furious Gladiator's Greaves of Salvation
						i(40882),	-- Furious Gladiator's Greaves of Triumph
						i(41075),	-- Furious Gladiator's Sabatons of Dominance
						i(41055),	-- Furious Gladiator's Sabatons of Salvation
						i(41230),	-- Furious Gladiator's Sabatons of Triumph
						i(41903),	-- Furious Gladiator's Slippers of Dominance
						i(41885),	-- Furious Gladiator's Slippers of Salvation
						i(42116),	-- Furious Gladiator's Band of Dominance
						i(42117),	-- Furious Gladiator's Band of Triumph
					},
				}))),
				applyclassicphase(WRATH_PHASE_TWO, e(1598, bubbleDownSelf({ ["timeline"] = { ADDED_3_1_0 } }, {	-- Emalon the Storm Watcher
					["creatureID"] = 33993,
					["groups"] = {
						ach(3136),		-- Emalon the Storm Watcher (10 player)
						i(42030),	-- Deadly Gladiator's Pendant of Ascendancy
						i(42032),	-- Deadly Gladiator's Pendant of Deliverance
						i(42029),	-- Deadly Gladiator's Pendant of Dominance
						i(42033),	-- Deadly Gladiator's Pendant of Salvation
						i(42031),	-- Deadly Gladiator's Pendant of Subjugation
						i(42027),	-- Deadly Gladiator's Pendant of Triumph
						i(42028),	-- Deadly Gladiator's Pendant of Victory
						i(42064),	-- Deadly Gladiator's Cloak of Ascendancy
						i(42066),	-- Deadly Gladiator's Cloak of Deliverance
						i(42062),	-- Deadly Gladiator's Cloak of Dominance
						i(42065),	-- Deadly Gladiator's Cloak of Salvation
						i(42063),	-- Deadly Gladiator's Cloak of Subjugation
						i(42067),	-- Deadly Gladiator's Cloak of Triumph
						i(42068),	-- Deadly Gladiator's Cloak of Victory
						i(41639),	-- Deadly Gladiator's Armwraps of Dominance
						i(41624),	-- Deadly Gladiator's Armwraps of Salvation
						i(41839),	-- Deadly Gladiator's Armwraps of Triumph
						i(40982),	-- Deadly Gladiator's Bracers of Salvation
						i(40888),	-- Deadly Gladiator's Bracers of Triumph
						i(41908),	-- Deadly Gladiator's Cuffs of Dominance
						i(41892),	-- Deadly Gladiator's Cuffs of Salvation
						i(41064),	-- Deadly Gladiator's Wristguards of Dominance
						i(41059),	-- Deadly Gladiator's Wristguards of Salvation
						i(41224),	-- Deadly Gladiator's Wristguards of Triumph
						i(41142),	-- Deadly Gladiator's Chain Gauntlets
						i(41772),	-- Deadly Gladiator's Dragonhide Gloves
						i(40806),	-- Deadly Gladiator's Dreadplate Gauntlets
						i(42016),	-- Deadly Gladiator's Felweave Handguards
						i(41286),	-- Deadly Gladiator's Kodohide Gloves
						i(41766),	-- Deadly Gladiator's Leather Gloves
						i(41136),	-- Deadly Gladiator's Linked Gauntlets
						i(41006),	-- Deadly Gladiator's Mail Gauntlets
						i(41873),	-- Deadly Gladiator's Mooncloth Gloves
						i(40926),	-- Deadly Gladiator's Ornamented Gloves
						i(40804),	-- Deadly Gladiator's Plate Gauntlets
						i(41000),	-- Deadly Gladiator's Ringmail Gauntlets
						i(41939),	-- Deadly Gladiator's Satin Gloves
						i(40805),	-- Deadly Gladiator's Scaled Gauntlets
						i(41970),	-- Deadly Gladiator's Silk Handguards
						i(41292),	-- Deadly Gladiator's Wyrmhide Gloves
						i(45376),	-- Valorous Aegis Gauntlets
						i(45370),	-- Valorous Aegis Gloves
						i(45383),	-- Valorous Aegis Handguards
						i(45341),	-- Valorous Darkruned Gauntlets
						i(45337),	-- Valorous Darkruned Handguards
						i(45419),	-- Valorous Deathbringer Gloves
						i(45387),	-- Valorous Gloves of Sanctification
						i(45392),	-- Valorous Handwraps of Sanctification
						i(46131),	-- Valorous Kirin Tor Gauntlets
						i(45351),	-- Valorous Nightsong Gloves
						i(45355),	-- Valorous Nightsong Handgrips
						i(45345),	-- Valorous Nightsong Handguards
						i(45360),	-- Valorous Scourgestalker Handguards
						i(45430),	-- Valorous Siegebreaker Gauntlets
						i(45426),	-- Valorous Siegebreaker Handguards
						i(45397),	-- Valorous Terrorblade Gauntlets
						i(45406),	-- Valorous Worldbreaker Gloves
						i(45414),	-- Valorous Worldbreaker Grips
						i(45401),	-- Valorous Worldbreaker Handguards
						i(41629),	-- Deadly Gladiator's Belt of Dominance
						i(41616),	-- Deadly Gladiator's Belt of Salvation
						i(41831),	-- Deadly Gladiator's Belt of Triumph
						i(41897),	-- Deadly Gladiator's Cord of Dominance
						i(41880),	-- Deadly Gladiator's Cord of Salvation
						i(40974),	-- Deadly Gladiator's Girdle of Salvation
						i(40879),	-- Deadly Gladiator's Girdle of Triumph
						i(41069),	-- Deadly Gladiator's Waistguard of Dominance
						i(41048),	-- Deadly Gladiator's Waistguard of Salvation
						i(41234),	-- Deadly Gladiator's Waistguard of Triumph
						i(41204),	-- Deadly Gladiator's Chain Leggings
						i(41666),	-- Deadly Gladiator's Dragonhide Legguards
						i(40845),	-- Deadly Gladiator's Dreadplate Legguards
						i(42004),	-- Deadly Gladiator's Felweave Trousers
						i(41297),	-- Deadly Gladiator's Kodohide Legguards
						i(41654),	-- Deadly Gladiator's Leather Legguards
						i(41198),	-- Deadly Gladiator's Linked Leggings
						i(41032),	-- Deadly Gladiator's Mail Leggings
						i(41863),	-- Deadly Gladiator's Mooncloth Leggings
						i(40938),	-- Deadly Gladiator's Ornamented Legplates
						i(40844),	-- Deadly Gladiator's Plate Legguards
						i(41026),	-- Deadly Gladiator's Ringmail Leggings
						i(41926),	-- Deadly Gladiator's Satin Leggings
						i(40846),	-- Deadly Gladiator's Scaled Legguards
						i(41958),	-- Deadly Gladiator's Silk Trousers
						i(41303),	-- Deadly Gladiator's Wyrmhide Legguards
						i(45371),	-- Valorous Aegis Greaves
						i(45384),	-- Valorous Aegis Legguards
						i(45379),	-- Valorous Aegis Legplates
						i(45338),	-- Valorous Darkruned Legguards
						i(45343),	-- Valorous Darkruned Legplates
						i(45420),	-- Valorous Deathbringer Leggings
						i(45367),	-- Valorous Kirin Tor Leggings
						i(45388),	-- Valorous Leggings of Sanctification
						i(45347),	-- Valorous Nightsong Leggings
						i(45357),	-- Valorous Nightsong Legguards
						i(45353),	-- Valorous Nightsong Trousers
						i(45394),	-- Valorous Pants of Sanctification
						i(45362),	-- Valorous Scourgestalker Legguards
						i(45427),	-- Valorous Siegebreaker Legguards
						i(45432),	-- Valorous Siegebreaker Legplates
						i(45399),	-- Valorous Terrorblade Legplates
						i(45409),	-- Valorous Worldbreaker Kilt
						i(45403),	-- Valorous Worldbreaker Legguards
						i(45416),	-- Valorous Worldbreaker War-Kilt
						i(41634),	-- Deadly Gladiator's Boots of Dominance
						i(41620),	-- Deadly Gladiator's Boots of Salvation
						i(41835),	-- Deadly Gladiator's Boots of Triumph
						i(40975),	-- Deadly Gladiator's Greaves of Salvation
						i(40880),	-- Deadly Gladiator's Greaves of Triumph
						i(41074),	-- Deadly Gladiator's Sabatons of Dominance
						i(41054),	-- Deadly Gladiator's Sabatons of Salvation
						i(41229),	-- Deadly Gladiator's Sabatons of Triumph
						i(41902),	-- Deadly Gladiator's Treads of Dominance
						i(41884),	-- Deadly Gladiator's Treads of Salvation
						i(42114),	-- Deadly Gladiator's Band of Ascendancy
						i(42115),	-- Deadly Gladiator's Band of Victory
					},
				}))),
				applyclassicphase(WRATH_PHASE_FOUR, e(1600, bubbleDownSelf({ ["timeline"] = { ADDED_3_3_2 } }, {	-- Toravon the Ice Watcher
					["creatureID"] = 38433,
					["groups"] = {
						ach(4585),		-- Toravon the Ice Watcher (10 player)
						i(42044),	-- Relentless Gladiator's Pendant of Ascendancy
						i(42046),	-- Relentless Gladiator's Pendant of Deliverance
						i(42043),	-- Relentless Gladiator's Pendant of Dominance
						i(42047),	-- Relentless Gladiator's Pendant of Salvation
						i(42045),	-- Relentless Gladiator's Pendant of Subjugation
						i(46374),	-- Relentless Gladiator's Pendant of Sundering
						i(42041),	-- Relentless Gladiator's Pendant of Triumph
						i(42042),	-- Relentless Gladiator's Pendant of Victory
						i(42078),	-- Relentless Gladiator's Cloak of Ascendancy
						i(42080),	-- Relentless Gladiator's Cloak of Deliverance
						i(42076),	-- Relentless Gladiator's Cloak of Dominance
						i(42079),	-- Relentless Gladiator's Cloak of Salvation
						i(42077),	-- Relentless Gladiator's Cloak of Subjugation
						i(42081),	-- Relentless Gladiator's Cloak of Triumph
						i(42082),	-- Relentless Gladiator's Cloak of Victory
						i(41641),	-- Relentless Gladiator's Armwraps of Dominance
						i(41626),	-- Relentless Gladiator's Armwraps of Salvation
						i(41841),	-- Relentless Gladiator's Armwraps of Triumph
						i(40984),	-- Relentless Gladiator's Bracers of Salvation
						i(40890),	-- Relentless Gladiator's Bracers of Triumph
						i(41910),	-- Relentless Gladiator's Cuffs of Dominance
						i(41894),	-- Relentless Gladiator's Cuffs of Salvation
						i(41066),	-- Relentless Gladiator's Wristguards of Dominance
						i(41061),	-- Relentless Gladiator's Wristguards of Salvation
						i(41226),	-- Relentless Gladiator's Wristguards of Triumph
						i(50114),	-- Ahn'Kahar Blood Hunter's Handguards
						i(50275),	-- Bloodmage Gloves
						i(50766),	-- Crimson Acolyte Gloves
						i(50391),	-- Crimson Acolyte Handwraps
						i(50240),	-- Dark Coven Gloves
						i(50842),	-- Frost Witch's Gloves
						i(50831),	-- Frost Witch's Grips
						i(50836),	-- Frost Witch's Handguards
						i(50107),	-- Lasherweave Gauntlets
						i(50822),	-- Lasherweave Gloves
						i(50827),	-- Lasherweave Handgrips
						i(50327),	-- Lightsworn Gauntlets
						i(50868),	-- Lightsworn Gloves
						i(50863),	-- Lightsworn Handguards
						i(41144),	-- Relentless Gladiator's Chain Gauntlets
						i(41774),	-- Relentless Gladiator's Dragonhide Gloves
						i(40811),	-- Relentless Gladiator's Dreadplate Gauntlets
						i(42018),	-- Relentless Gladiator's Felweave Handguards
						i(41288),	-- Relentless Gladiator's Kodohide Gloves
						i(41768),	-- Relentless Gladiator's Leather Gloves
						i(41138),	-- Relentless Gladiator's Linked Gauntlets
						i(41008),	-- Relentless Gladiator's Mail Gauntlets
						i(41875),	-- Relentless Gladiator's Mooncloth Gloves
						i(40928),	-- Relentless Gladiator's Ornamented Gloves
						i(40810),	-- Relentless Gladiator's Plate Gauntlets
						i(41002),	-- Relentless Gladiator's Ringmail Gauntlets
						i(41941),	-- Relentless Gladiator's Satin Gloves
						i(40812),	-- Relentless Gladiator's Scaled Gauntlets
						i(41972),	-- Relentless Gladiator's Silk Handguards
						i(41294),	-- Relentless Gladiator's Wyrmhide Gloves
						i(50095),	-- Scourgelord Gauntlets
						i(50856),	-- Scourgelord Handguards
						i(50088),	-- Shadowblade Gauntlets
						i(50079),	-- Ymirjar Lord's Gauntlets
						i(50849),	-- Ymirjar Lord's Handguards
						i(41631),	-- Relentless Gladiator's Belt of Dominance
						i(41618),	-- Relentless Gladiator's Belt of Salvation
						i(41833),	-- Relentless Gladiator's Belt of Triumph
						i(41899),	-- Relentless Gladiator's Cord of Dominance
						i(41882),	-- Relentless Gladiator's Cord of Salvation
						i(40978),	-- Relentless Gladiator's Girdle of Salvation
						i(40883),	-- Relentless Gladiator's Girdle of Triumph
						i(41071),	-- Relentless Gladiator's Waistguard of Dominance
						i(41052),	-- Relentless Gladiator's Waistguard of Salvation
						i(41236),	-- Relentless Gladiator's Waistguard of Triumph
						i(50116),	-- Ahn'Kahar Blood Hunter's Legguards
						i(50277),	-- Bloodmage Leggings
						i(50769),	-- Crimson Acolyte Leggings
						i(50393),	-- Crimson Acolyte Pants
						i(50242),	-- Dark Coven Leggings
						i(50844),	-- Frost Witch's Kilt
						i(50838),	-- Frost Witch's Legguards
						i(50833),	-- Frost Witch's War-Kilt
						i(50825),	-- Lasherweave Legguards
						i(50109),	-- Lasherweave Legplates
						i(50820),	-- Lasherweave Trousers
						i(50866),	-- Lightsworn Greaves
						i(50861),	-- Lightsworn Legguards
						i(50325),	-- Lightsworn Legplates
						i(41206),	-- Relentless Gladiator's Chain Leggings
						i(41668),	-- Relentless Gladiator's Dragonhide Legguards
						i(40851),	-- Relentless Gladiator's Dreadplate Legguards
						i(42006),	-- Relentless Gladiator's Felweave Trousers
						i(41299),	-- Relentless Gladiator's Kodohide Legguards
						i(41656),	-- Relentless Gladiator's Leather Legguards
						i(41200),	-- Relentless Gladiator's Linked Leggings
						i(41034),	-- Relentless Gladiator's Mail Leggings
						i(41865),	-- Relentless Gladiator's Mooncloth Leggings
						i(40940),	-- Relentless Gladiator's Ornamented Leggings
						i(40850),	-- Relentless Gladiator's Plate Legguards
						i(41028),	-- Relentless Gladiator's Ringmail Leggings
						i(41928),	-- Relentless Gladiator's Satin Leggings
						i(40852),	-- Relentless Gladiator's Scaled Legguards
						i(41960),	-- Relentless Gladiator's Silk Trousers
						i(41305),	-- Relentless Gladiator's Wyrmhide Legguards
						i(50854),	-- Scourgelord Legguards
						i(50097),	-- Scourgelord Legplates
						i(50090),	-- Shadowblade Legplates
						i(50847),	-- Ymirjar Lord's Legguards
						i(50081),	-- Ymirjar Lord's Legplates
						i(41636),	-- Relentless Gladiator's Boots of Dominance
						i(41622),	-- Relentless Gladiator's Boots of Salvation
						i(41837),	-- Relentless Gladiator's Boots of Triumph
						i(40979),	-- Relentless Gladiator's Greaves of Salvation
						i(40884),	-- Relentless Gladiator's Greaves of Triumph
						i(41076),	-- Relentless Gladiator's Sabatons of Dominance
						i(41056),	-- Relentless Gladiator's Sabatons of Salvation
						i(41231),	-- Relentless Gladiator's Sabatons of Triumph
						i(41904),	-- Relentless Gladiator's Treads of Dominance
						i(41886),	-- Relentless Gladiator's Treads of Salvation
						i(42118),	-- Relentless Gladiator's Band of Ascendancy
						i(42119),	-- Relentless Gladiator's Band of Victory
					},
				}))),
				e(1597, {	-- Archavon the Stone Watcher
					["creatureID"] = 31125,
					["groups"] = {
						ach(1722),		-- Archavon the Stone Watcher (10 player)
						i(41085),	-- Hateful Gladiator's Chain Armor
						i(41659),	-- Hateful Gladiator's Dragonhide Robes
						i(40781),	-- Hateful Gladiator's Dreadplate Chestpiece
						i(42001),	-- Hateful Gladiator's Felweave Raiment
						i(41308),	-- Hateful Gladiator's Kodohide Robes
						i(41648),	-- Hateful Gladiator's Leather Tunic
						i(41079),	-- Hateful Gladiator's Linked Armor
						i(40989),	-- Hateful Gladiator's Mail Armor
						i(41857),	-- Hateful Gladiator's Mooncloth Robe
						i(40904),	-- Hateful Gladiator's Ornamented Chestguard
						i(40783),	-- Hateful Gladiator's Plate Chestpiece
						i(40988),	-- Hateful Gladiator's Ringmail Armor
						i(41919),	-- Hateful Gladiator's Satin Robe
						i(40782),	-- Hateful Gladiator's Scaled Chestpiece
						i(41950),	-- Hateful Gladiator's Silk Raiment
						i(41314),	-- Hateful Gladiator's Wyrmhide Robes
						i(39558),	-- Heroes' Bonescythe Breastplate
						i(39579),	-- Heroes' Cryptstalker Tunic
						i(39606),	-- Heroes' Dreadnaught Battleplate
						i(39611),	-- Heroes' Dreadnaught Breastplate
						i(39554),	-- Heroes' Dreamwalker Raiments
						i(39538),	-- Heroes' Dreamwalker Robe
						i(39547),	-- Heroes' Dreamwalker Vestments
						i(39597),	-- Heroes' Earthshatter Chestguard
						i(39592),	-- Heroes' Earthshatter Hauberk
						i(39588),	-- Heroes' Earthshatter Tunic
						i(39492),	-- Heroes' Frostfire Robe
						i(39497),	-- Heroes' Plagueheart Robe
						i(39523),	-- Heroes' Raiments of Faith
						i(39638),	-- Heroes' Redemption Breastplate
						i(39633),	-- Heroes' Redemption Chestpiece
						i(39629),	-- Heroes' Redemption Tunic
						i(39515),	-- Heroes' Robe of Faith
						i(39617),	-- Heroes' Scourgeborne Battleplate
						i(39623),	-- Heroes' Scourgeborne Chestguard
						i(41141),	-- Hateful Gladiator's Chain Gauntlets
						i(41771),	-- Hateful Gladiator's Dragonhide Gloves
						i(40803),	-- Hateful Gladiator's Dreadplate Gauntlets
						i(42015),	-- Hateful Gladiator's Felweave Handguards
						i(41284),	-- Hateful Gladiator's Kodohide Gloves
						i(41765),	-- Hateful Gladiator's Leather Gloves
						i(41135),	-- Hateful Gladiator's Linked Gauntlets
						i(41005),	-- Hateful Gladiator's Mail Gauntlets
						i(41872),	-- Hateful Gladiator's Mooncloth Gloves
						i(40925),	-- Hateful Gladiator's Ornamented Gloves
						i(40801),	-- Hateful Gladiator's Plate Gauntlets
						i(40999),	-- Hateful Gladiator's Ringmail Gauntlets
						i(41938),	-- Hateful Gladiator's Satin Gloves
						i(40802),	-- Hateful Gladiator's Scaled Gauntlets
						i(41969),	-- Hateful Gladiator's Silk Handguards
						i(41291),	-- Hateful Gladiator's Wyrmhide Gloves
						i(39560),	-- Heroes' Bonescythe Gauntlets
						i(39582),	-- Heroes' Cryptstalker Handguards
						i(39609),	-- Heroes' Dreadnaught Gauntlets
						i(39622),	-- Heroes' Dreadnaught Handguards
						i(39544),	-- Heroes' Dreamwalker Gloves
						i(39557),	-- Heroes' Dreamwalker Handgrips
						i(39543),	-- Heroes' Dreamwalker Handguards
						i(39593),	-- Heroes' Earthshatter Gloves
						i(39601),	-- Heroes' Earthshatter Grips
						i(39591),	-- Heroes' Earthshatter Handguards
						i(39495),	-- Heroes' Frostfire Gloves
						i(39519),	-- Heroes' Gloves of Faith
						i(39530),	-- Heroes' Handwraps of Faith
						i(39500),	-- Heroes' Plagueheart Gloves
						i(39634),	-- Heroes' Redemption Gauntlets
						i(39632),	-- Heroes' Redemption Gloves
						i(39639),	-- Heroes' Redemption Handguards
						i(39618),	-- Heroes' Scourgeborne Gauntlets
						i(39624),	-- Heroes' Scourgeborne Handguards
						i(41203),	-- Hateful Gladiator's Chain Leggings
						i(41665),	-- Hateful Gladiator's Dragonhide Legguards
						i(40841),	-- Hateful Gladiator's Dreadplate Legguards
						i(42003),	-- Hateful Gladiator's Felweave Trousers
						i(41296),	-- Hateful Gladiator's Kodohide Legguards
						i(41653),	-- Hateful Gladiator's Leather Legguards
						i(41162),	-- Hateful Gladiator's Linked Leggings
						i(41031),	-- Hateful Gladiator's Mail Leggings
						i(41862),	-- Hateful Gladiator's Mooncloth Leggings
						i(40937),	-- Hateful Gladiator's Ornamented Legplates
						i(40840),	-- Hateful Gladiator's Plate Legguards
						i(41025),	-- Hateful Gladiator's Ringmail Leggings
						i(41925),	-- Hateful Gladiator's Satin Leggings
						i(40842),	-- Hateful Gladiator's Scaled Legguards
						i(41957),	-- Hateful Gladiator's Silk Trousers
						i(41302),	-- Hateful Gladiator's Wyrmhide Legguards
						i(39564),	-- Heroes' Bonescythe Legplates
						i(39580),	-- Heroes' Cryptstalker Legguards
						i(39612),	-- Heroes' Dreadnaught Legguards
						i(39607),	-- Heroes' Dreadnaught Legplates
						i(39539),	-- Heroes' Dreamwalker Leggings
						i(39555),	-- Heroes' Dreamwalker Legguards
						i(39546),	-- Heroes' Dreamwalker Trousers
						i(39595),	-- Heroes' Earthshatter Kilt
						i(39589),	-- Heroes' Earthshatter Legguards
						i(39603),	-- Heroes' Earthshatter War-Kilt
						i(39493),	-- Heroes' Frostfire Leggings
						i(39517),	-- Heroes' Leggings of Faith
						i(39528),	-- Heroes' Pants of Faith
						i(39498),	-- Heroes' Plagueheart Leggings
						i(39630),	-- Heroes' Redemption Greaves
						i(39641),	-- Heroes' Redemption Legguards
						i(39636),	-- Heroes' Redemption Legplates
						i(39626),	-- Heroes' Scourgeborne Legguards
						i(39620),	-- Heroes' Scourgeborne Legplates
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				applyclassicphase(WRATH_PHASE_THREE, ach(4017, {	-- Earth, Wind & Fire (25 player)
					["timeline"] = { ADDED_3_2_0 },
					["crs"] = {
						35013,	-- Koralon the Flame Watcher
						33993,	-- Emalon the Storm Watcher
						31125,	-- Archavon the Stone Watcher
					},
				})),
				applyclassicphase(WRATH_PHASE_THREE, e(1599, bubbleDownSelf({ ["timeline"] = { ADDED_3_2_0 } }, {	-- Koralon the Flame Watcher
					["creatureID"] = 35013,
					["groups"] = {
						ach(3837),		-- Koralon the Flame Watcher (25 player)
						i(42044),	-- Relentless Gladiator's Pendant of Ascendancy
						i(42046),	-- Relentless Gladiator's Pendant of Deliverance
						i(42043),	-- Relentless Gladiator's Pendant of Dominance
						i(42047),	-- Relentless Gladiator's Pendant of Salvation
						i(42045),	-- Relentless Gladiator's Pendant of Subjugation
						i(46374),	-- Relentless Gladiator's Pendant of Sundering
						i(42041),	-- Relentless Gladiator's Pendant of Triumph
						i(42042),	-- Relentless Gladiator's Pendant of Victory
						i(42078),	-- Relentless Gladiator's Cloak of Ascendancy
						i(42080),	-- Relentless Gladiator's Cloak of Deliverance
						i(42076),	-- Relentless Gladiator's Cloak of Dominance
						i(42079),	-- Relentless Gladiator's Cloak of Salvation
						i(42077),	-- Relentless Gladiator's Cloak of Subjugation
						i(42081),	-- Relentless Gladiator's Cloak of Triumph
						i(42082),	-- Relentless Gladiator's Cloak of Victory
						i(41641),	-- Relentless Gladiator's Armwraps of Dominance
						i(41626),	-- Relentless Gladiator's Armwraps of Salvation
						i(41841),	-- Relentless Gladiator's Armwraps of Triumph
						i(40984),	-- Relentless Gladiator's Bracers of Salvation
						i(40890),	-- Relentless Gladiator's Bracers of Triumph
						i(41910),	-- Relentless Gladiator's Cuffs of Dominance
						i(41894),	-- Relentless Gladiator's Cuffs of Salvation
						i(41066),	-- Relentless Gladiator's Wristguards of Dominance
						i(41061),	-- Relentless Gladiator's Wristguards of Salvation
						i(41226),	-- Relentless Gladiator's Wristguards of Triumph
						-- Alliance-only hands start
						a(i(47782)),	-- Kel'Thuzad's Gloves of Triumph
						a(i(47753)),	-- Khadgar's Gauntlets of Triumph
						a(i(48163)),	-- Malfurion's Gloves of Triumph
						a(i(48212)),	-- Malfurion's Handgrips of Triumph
						a(i(48133)),	-- Malfurion's Handguards of Triumph
						a(i(48317)),	-- Nobundo's Gloves of Triumph
						a(i(48347)),	-- Nobundo's Grips of Triumph
						a(i(48286)),	-- Nobundo's Handguards of Triumph
						-- Horde-only hands start
						h(i(48241)),	-- Garona's Gauntlets of Triumph
						h(i(47803)),	-- Gul'dan's Gloves of Triumph
						h(i(48392)),	-- Hellscream's Gauntlets of Triumph
						h(i(48462)),	-- Hellscream's Handguards of Triumph
						h(i(48499)),	-- Koltira's Gauntlets of Triumph
						h(i(48556)),	-- Koltira's Handguards of Triumph
						h(i(48625)),	-- Liadrin's Gauntlets of Triumph
						h(i(48593)),	-- Liadrin's Gloves of Triumph
						h(i(48658)),	-- Liadrin's Handguards of Triumph
						-- Faction-specific hands interrupted to match Dungeon Journal order
						i(41144),	-- Relentless Gladiator's Chain Gauntlets
						i(41774),	-- Relentless Gladiator's Dragonhide Gloves
						i(40811),	-- Relentless Gladiator's Dreadplate Gauntlets
						i(42018),	-- Relentless Gladiator's Felweave Handguards
						i(41288),	-- Relentless Gladiator's Kodohide Gloves
						i(41768),	-- Relentless Gladiator's Leather Gloves
						i(41138),	-- Relentless Gladiator's Linked Gauntlets
						i(41008),	-- Relentless Gladiator's Mail Gauntlets
						i(41875),	-- Relentless Gladiator's Mooncloth Gloves
						i(40928),	-- Relentless Gladiator's Ornamented Gloves
						i(40810),	-- Relentless Gladiator's Plate Gauntlets
						i(41002),	-- Relentless Gladiator's Ringmail Gauntlets
						i(41941),	-- Relentless Gladiator's Satin Gloves
						i(40812),	-- Relentless Gladiator's Scaled Gauntlets
						i(41972),	-- Relentless Gladiator's Silk Handguards
						i(41294),	-- Relentless Gladiator's Wyrmhide Gloves
						-- Alliance-only hands start again
						a(i(48482)),	-- Thassarian's Gauntlets of Triumph
						a(i(48539)),	-- Thassarian's Handguards of Triumph
						a(i(48608)),	-- Turalyon's Gauntlets of Triumph
						a(i(48576)),	-- Turalyon's Gloves of Triumph
						a(i(48640)),	-- Turalyon's Handguards of Triumph
						a(i(48224)),	-- VanCleef's Gauntlets of Triumph
						a(i(47983)),	-- Velen's Gloves of Triumph
						a(i(48077)),	-- Velen's Handwraps of Triumph
						a(i(48256)),	-- Windrunner's Handguards of Triumph
						a(i(48377)),	-- Wrynn's Gauntlets of Triumph
						a(i(48452)),	-- Wrynn's Handguards of Triumph
						-- Horde-only hands start again
						h(i(48182)),	-- Runetotem's Gloves of Triumph
						h(i(48193)),	-- Runetotem's Handgrips of Triumph
						h(i(48152)),	-- Runetotem's Handguards of Triumph
						h(i(47772)),	-- Sunstrider's Gauntlets of Triumph
						h(i(48334)),	-- Thrall's Gloves of Triumph
						h(i(48364)),	-- Thrall's Grips of Triumph
						h(i(48301)),	-- Thrall's Handguards of Triumph
						h(i(48273)),	-- Windrunner's Handguards of Triumph
						h(i(48066)),	-- Zabra's Gloves of Triumph
						h(i(48096)),	-- Zabra's Handwraps of Triumph
						-- Faction-specific hands end
						i(41631),	-- Relentless Gladiator's Belt of Dominance
						i(41618),	-- Relentless Gladiator's Belt of Salvation
						i(41833),	-- Relentless Gladiator's Belt of Triumph
						i(41899),	-- Relentless Gladiator's Cord of Dominance
						i(41882),	-- Relentless Gladiator's Cord of Salvation
						i(40978),	-- Relentless Gladiator's Girdle of Salvation
						i(40883),	-- Relentless Gladiator's Girdle of Triumph
						i(41071),	-- Relentless Gladiator's Waistguard of Dominance
						i(41052),	-- Relentless Gladiator's Waistguard of Salvation
						i(41236),	-- Relentless Gladiator's Waistguard of Triumph
						-- Alliance-only legs start
						a(i(47780)),	-- Kel'Thuzad's Leggings of Triumph
						a(i(47755)),	-- Khadgar's Leggings of Triumph
						a(i(48135)),	-- Malfurion's Leggings of Triumph
						a(i(48210)),	-- Malfurion's Legguards of Triumph
						a(i(48165)),	-- Malfurion's Trousers of Triumph
						a(i(48319)),	-- Nobundo's Kilt of Triumph
						a(i(48288)),	-- Nobundo's Legguards of Triumph
						a(i(48349)),	-- Nobundo's War-Kilt of Triumph
						-- Horde-only legs start
						h(i(48239)),	-- Garona's Legplates of Triumph
						h(i(47805)),	-- Gul'dan's Leggings of Triumph
						h(i(48464)),	-- Hellscream's Legguards of Triumph
						h(i(48394)),	-- Hellscream's Legplates of Triumph
						h(i(48554)),	-- Koltira's Legguards of Triumph
						h(i(48497)),	-- Koltira's Legplates of Triumph
						h(i(48591)),	-- Liadrin's Greaves of Triumph
						h(i(48660)),	-- Liadrin's Legguards of Triumph
						h(i(48623)),	-- Liadrin's Legplates of Triumph
						-- Faction-specific legs interrupted to match Dungeon Journal Order
						i(41206),	-- Relentless Gladiator's Chain Leggings
						i(41668),	-- Relentless Gladiator's Dragonhide Legguards
						i(40851),	-- Relentless Gladiator's Dreadplate Legguards
						i(42006),	-- Relentless Gladiator's Felweave Trousers
						i(41299),	-- Relentless Gladiator's Kodohide Legguards
						i(41656),	-- Relentless Gladiator's Leather Legguards
						i(41200),	-- Relentless Gladiator's Linked Leggings
						i(41034),	-- Relentless Gladiator's Mail Leggings
						i(41865),	-- Relentless Gladiator's Mooncloth Leggings
						i(40940),	-- Relentless Gladiator's Ornamented Leggings
						i(40850),	-- Relentless Gladiator's Plate Legguards
						i(41028),	-- Relentless Gladiator's Ringmail Leggings
						i(41928),	-- Relentless Gladiator's Satin Leggings
						i(40852),	-- Relentless Gladiator's Scaled Legguards
						i(41960),	-- Relentless Gladiator's Silk Trousers
						i(41305),	-- Relentless Gladiator's Wyrmhide Legguards
						-- Alliance-only legs start again
						a(i(48541)),	-- Thassarian's Legguards of Triumph
						a(i(48484)),	-- Thassarian's Legplates of Triumph
						a(i(48578)),	-- Turalyon's Greaves of Triumph
						a(i(48638)),	-- Turalyon's Legguards of Triumph
						a(i(48610)),	-- Turalyon's Legplates of Triumph
						a(i(48226)),	-- VanCleef's Legplates of Triumph
						a(i(47985)),	-- Velen's Leggings of Triumph
						a(i(48079)),	-- Velen's Pants of Triumph
						a(i(48258)),	-- Windrunner's Legguards of Triumph
						a(i(48446)),	-- Wrynn's Legguards of Triumph
						a(i(48379)),	-- Wrynn's Legplates of Triumph
						-- Horde-only legs start again
						h(i(48150)),	-- Runetotem's Leggings of Triumph
						h(i(48195)),	-- Runetotem's Legguards of Triumph
						h(i(48180)),	-- Runetotem's Trousers of Triumph
						h(i(47770)),	-- Sunstrider's Leggings of Triumph
						h(i(48332)),	-- Thrall's Kilt of Triumph
						h(i(48303)),	-- Thrall's Legguards of Triumph
						h(i(48362)),	-- Thrall's War-Kilt of Triumph
						h(i(48271)),	-- Windrunner's Legguards of Triumph
						h(i(48064)),	-- Zabra's Leggings of Triumph
						h(i(48094)),	-- Zabra's Pants of Triumph
						-- Faction-specific legs end
						i(41636),	-- Relentless Gladiator's Boots of Dominance
						i(41622),	-- Relentless Gladiator's Boots of Salvation
						i(41837),	-- Relentless Gladiator's Boots of Triumph
						i(40979),	-- Relentless Gladiator's Greaves of Salvation
						i(40884),	-- Relentless Gladiator's Greaves of Triumph
						i(41076),	-- Relentless Gladiator's Sabatons of Dominance
						i(41056),	-- Relentless Gladiator's Sabatons of Salvation
						i(41231),	-- Relentless Gladiator's Sabatons of Triumph
						i(41904),	-- Relentless Gladiator's Treads of Dominance
						i(41886),	-- Relentless Gladiator's Treads of Salvation
						i(42118),	-- Relentless Gladiator's Band of Ascendancy
						i(42119),	-- Relentless Gladiator's Band of Victory
					},
				}))),
				applyclassicphase(WRATH_PHASE_TWO, e(1598, bubbleDownSelf({ ["timeline"] = { ADDED_3_1_0 } }, {	-- Emalon the Storm Watcher
					["creatureID"] = 33993,
					["groups"] = {
						ach(3137),		-- Emalon the Storm Watcher (25 player)
						i(42037),	-- Furious Gladiator's Pendant of Ascendancy
						i(42039),	-- Furious Gladiator's Pendant of Deliverance
						i(42036),	-- Furious Gladiator's Pendant of Dominance
						i(42040),	-- Furious Gladiator's Pendant of Salvation
						i(42038),	-- Furious Gladiator's Pendant of Subjugation
						i(46373),	-- Furious Gladiator's Pendant of Sundering
						i(42034),	-- Furious Gladiator's Pendant of Triumph
						i(42035),	-- Furious Gladiator's Pendant of Victory
						i(42071),	-- Furious Gladiator's Cloak of Ascendancy
						i(42073),	-- Furious Gladiator's Cloak of Deliverance
						i(42069),	-- Furious Gladiator's Cloak of Dominance
						i(42072),	-- Furious Gladiator's Cloak of Salvation
						i(42070),	-- Furious Gladiator's Cloak of Subjugation
						i(42074),	-- Furious Gladiator's Cloak of Triumph
						i(42075),	-- Furious Gladiator's Cloak of Victory
						i(41640),	-- Furious Gladiator's Armwraps of Dominance
						i(41625),	-- Furious Gladiator's Armwraps of Salvation
						i(41840),	-- Furious Gladiator's Armwraps of Triumph
						i(40983),	-- Furious Gladiator's Bracers of Salvation
						i(40889),	-- Furious Gladiator's Bracers of Triumph
						i(41909),	-- Furious Gladiator's Cuffs of Dominance
						i(41893),	-- Furious Gladiator's Cuffs of Salvation
						i(41065),	-- Furious Gladiator's Wristguards of Dominance
						i(41060),	-- Furious Gladiator's Wristguards of Salvation
						i(41225),	-- Furious Gladiator's Wristguards of Triumph
						i(46155),	-- Conqueror's Aegis Gauntlets
						i(46179),	-- Conqueror's Aegis Gloves
						i(46174),	-- Conqueror's Aegis Handguards
						i(46113),	-- Conqueror's Darkruned Gauntlets
						i(46119),	-- Conqueror's Darkruned Handguards
						i(46135),	-- Conqueror's Deathbringer Gloves
						i(46188),	-- Conqueror's Gloves of Sanctification
						i(46163),	-- Conqueror's Handwraps of Sanctification
						i(46132),	-- Conqueror's Kirin Tor Gauntlets
						i(46189),	-- Conqueror's Nightsong Gloves
						i(46158),	-- Conqueror's Nightsong Handgrips
						i(46183),	-- Conqueror's Nightsong Handguards
						i(46142),	-- Conqueror's Scourgestalker Handguards
						i(46148),	-- Conqueror's Siegebreaker Gauntlets
						i(46164),	-- Conqueror's Siegebreaker Handguards
						i(46124),	-- Conqueror's Terrorblade Gauntlets
						i(46207),	-- Conqueror's Worldbreaker Gloves
						i(46200),	-- Conqueror's Worldbreaker Grips
						i(46199),	-- Conqueror's Worldbreaker Handguards
						i(41143),	-- Furious Gladiator's Chain Gauntlets
						i(41773),	-- Furious Gladiator's Dragonhide Gloves
						i(40809),	-- Furious Gladiator's Dreadplate Gauntlets
						i(42017),	-- Furious Gladiator's Felweave Handguards
						i(41287),	-- Furious Gladiator's Kodohide Gloves
						i(41767),	-- Furious Gladiator's Leather Gloves
						i(41137),	-- Furious Gladiator's Linked Gauntlets
						i(41007),	-- Furious Gladiator's Mail Gauntlets
						i(41874),	-- Furious Gladiator's Mooncloth Gloves
						i(40927),	-- Furious Gladiator's Ornamented Gloves
						i(40807),	-- Furious Gladiator's Plate Gauntlets
						i(41001),	-- Furious Gladiator's Ringmail Gauntlets
						i(41940),	-- Furious Gladiator's Satin Gloves
						i(40808),	-- Furious Gladiator's Scaled Gauntlets
						i(41971),	-- Furious Gladiator's Silk Handguards
						i(41293),	-- Furious Gladiator's Wyrmhide Gloves
						i(41630),	-- Furious Gladiator's Belt of Dominance
						i(41617),	-- Furious Gladiator's Belt of Salvation
						i(41832),	-- Furious Gladiator's Belt of Triumph
						i(41898),	-- Furious Gladiator's Cord of Dominance
						i(41881),	-- Furious Gladiator's Cord of Salvation
						i(40976),	-- Furious Gladiator's Girdle of Salvation
						i(40881),	-- Furious Gladiator's Girdle of Triumph
						i(41070),	-- Furious Gladiator's Waistguard of Dominance
						i(41051),	-- Furious Gladiator's Waistguard of Salvation
						i(41235),	-- Furious Gladiator's Waistguard of Triumph
						i(46181),	-- Conqueror's Aegis Greaves
						i(46176),	-- Conqueror's Aegis Legguards
						i(46153),	-- Conqueror's Aegis Legplates
						i(46121),	-- Conqueror's Darkruned Legguards
						i(46116),	-- Conqueror's Darkruned Legplates
						i(46139),	-- Conqueror's Deathbringer Leggings
						i(46133),	-- Conqueror's Kirin Tor Leggings
						i(46195),	-- Conqueror's Leggings of Sanctification
						i(46185),	-- Conqueror's Nightsong Leggings
						i(46160),	-- Conqueror's Nightsong Legguards
						i(46192),	-- Conqueror's Nightsong Trousers
						i(46170),	-- Conqueror's Pants of Sanctification
						i(46144),	-- Conqueror's Scourgestalker Legguards
						i(46169),	-- Conqueror's Siegebreaker Legguards
						i(46150),	-- Conqueror's Siegebreaker Legplates
						i(46126),	-- Conqueror's Terrorblade Legplates
						i(46210),	-- Conqueror's Worldbreaker Kilt
						i(46202),	-- Conqueror's Worldbreaker Legguards
						i(46208),	-- Conqueror's Worldbreaker War-Kilt
						i(41205),	-- Furious Gladiator's Chain Leggings
						i(41667),	-- Furious Gladiator's Dragonhide Legguards
						i(40848),	-- Furious Gladiator's Dreadplate Legguards
						i(42005),	-- Furious Gladiator's Felweave Trousers
						i(41298),	-- Furious Gladiator's Kodohide Legguards
						i(41655),	-- Furious Gladiator's Leather Legguards
						i(41199),	-- Furious Gladiator's Linked Leggings
						i(41033),	-- Furious Gladiator's Mail Leggings
						i(41864),	-- Furious Gladiator's Mooncloth Leggings
						i(40939),	-- Furious Gladiator's Ornamented Legplates
						i(40847),	-- Furious Gladiator's Plate Legguards
						i(41027),	-- Furious Gladiator's Ringmail Leggings
						i(41927),	-- Furious Gladiator's Satin Leggings
						i(40849),	-- Furious Gladiator's Scaled Legguards
						i(41959),	-- Furious Gladiator's Silk Trousers
						i(41304),	-- Furious Gladiator's Wyrmhide Legguards
						i(41635),	-- Furious Gladiator's Boots of Dominance
						i(41621),	-- Furious Gladiator's Boots of Salvation
						i(41836),	-- Furious Gladiator's Boots of Triumph
						i(40977),	-- Furious Gladiator's Greaves of Salvation
						i(40882),	-- Furious Gladiator's Greaves of Triumph
						i(41075),	-- Furious Gladiator's Sabatons of Dominance
						i(41055),	-- Furious Gladiator's Sabatons of Salvation
						i(41230),	-- Furious Gladiator's Sabatons of Triumph
						i(41903),	-- Furious Gladiator's Slippers of Dominance
						i(41885),	-- Furious Gladiator's Slippers of Salvation
						i(42116),	-- Furious Gladiator's Band of Dominance
						i(42117),	-- Furious Gladiator's Band of Triumph
					},
				}))),
				applyclassicphase(WRATH_PHASE_FOUR, e(1600, bubbleDownSelf({ ["timeline"] = { ADDED_3_3_2 } }, {	-- Toravon the Ice Watcher
					["creatureID"] = 38433,
					["groups"] = {
						ach(4586),		-- Toravon the Ice Watcher (25 player)
						i(51335),	-- Wrathful Gladiator's Pendant of Ascendancy
						i(51349),	-- Wrathful Gladiator's Pendant of Deliverance
						i(51331),	-- Wrathful Gladiator's Pendant of Dominance
						i(51347),	-- Wrathful Gladiator's Pendant of Salvation
						i(51333),	-- Wrathful Gladiator's Pendant of Subjugation
						i(51353),	-- Wrathful Gladiator's Pendant of Sundering
						i(51355),	-- Wrathful Gladiator's Pendant of Triumph
						i(51357),	-- Wrathful Gladiator's Pendant of Victory
						i(51334),	-- Wrathful Gladiator's Cloak of Ascendancy
						i(51348),	-- Wrathful Gladiator's Cloak of Deliverance
						i(51330),	-- Wrathful Gladiator's Cloak of Dominance
						i(51346),	-- Wrathful Gladiator's Cloak of Salvation
						i(51332),	-- Wrathful Gladiator's Cloak of Subjugation
						i(51354),	-- Wrathful Gladiator's Cloak of Triumph
						i(51356),	-- Wrathful Gladiator's Cloak of Victory
						i(51345),	-- Wrathful Gladiator's Armwraps of Dominance
						i(51342),	-- Wrathful Gladiator's Armwraps of Salvation
						i(51370),	-- Wrathful Gladiator's Armwraps of Triumph
						i(51361),	-- Wrathful Gladiator's Bracers of Salvation
						i(51364),	-- Wrathful Gladiator's Bracers of Triumph
						i(51329),	-- Wrathful Gladiator's Cuffs of Dominance
						i(51367),	-- Wrathful Gladiator's Cuffs of Salvation
						i(51376),	-- Wrathful Gladiator's Wristguards of Dominance
						i(51373),	-- Wrathful Gladiator's Wristguards of Salvation
						i(51352),	-- Wrathful Gladiator's Wristguards of Triumph
						i(51154),	-- Sanctified Ahn'Kahar Blood Hunter's Handguards
						i(51159),	-- Sanctified Bloodmage Gloves
						i(51179),	-- Sanctified Crimson Acolyte Gloves
						i(51183),	-- Sanctified Crimson Acolyte Handwraps
						i(51209),	-- Sanctified Dark Coven Gloves
						i(51201),	-- Sanctified Frost Witch's Gloves
						i(51196),	-- Sanctified Frost Witch's Grips
						i(51191),	-- Sanctified Frost Witch's Handguards
						i(51138),	-- Sanctified Lasherweave Gauntlets
						i(51148),	-- Sanctified Lasherweave Gloves
						i(51144),	-- Sanctified Lasherweave Handgrips
						i(51163),	-- Sanctified Lightsworn Gauntlets
						i(51169),	-- Sanctified Lightsworn Gloves
						i(51172),	-- Sanctified Lightsworn Handguards
						i(51128),	-- Sanctified Scourgelord Gauntlets
						i(51132),	-- Sanctified Scourgelord Handguards
						i(51188),	-- Sanctified Shadowblade Gauntlets
						i(51213),	-- Sanctified Ymirjar Lord's Gauntlets
						i(51217),	-- Sanctified Ymirjar Lord's Handguards
						i(51459),	-- Wrathful Gladiator's Chain Gauntlets
						i(51426),	-- Wrathful Gladiator's Dragonhide Gloves
						i(51414),	-- Wrathful Gladiator's Dreadplate Gauntlets
						i(51537),	-- Wrathful Gladiator's Felweave Handguards
						i(51420),	-- Wrathful Gladiator's Kodohide Gloves
						i(51493),	-- Wrathful Gladiator's Leather Gloves
						i(51504),	-- Wrathful Gladiator's Linked Gauntlets
						i(51510),	-- Wrathful Gladiator's Mail Gauntlets
						i(51483),	-- Wrathful Gladiator's Mooncloth Gloves
						i(51469),	-- Wrathful Gladiator's Ornamented Gloves
						i(51542),	-- Wrathful Gladiator's Plate Gauntlets
						i(51498),	-- Wrathful Gladiator's Ringmail Gauntlets
						i(51488),	-- Wrathful Gladiator's Satin Gloves
						i(51475),	-- Wrathful Gladiator's Scaled Gauntlets
						i(51464),	-- Wrathful Gladiator's Silk Handguards
						i(51434),	-- Wrathful Gladiator's Wyrmhide Gloves
						i(51343),	-- Wrathful Gladiator's Belt of Dominance
						i(51340),	-- Wrathful Gladiator's Belt of Salvation
						i(51368),	-- Wrathful Gladiator's Belt of Triumph
						i(51327),	-- Wrathful Gladiator's Cord of Dominance
						i(51365),	-- Wrathful Gladiator's Cord of Salvation
						i(51359),	-- Wrathful Gladiator's Girdle of Salvation
						i(51362),	-- Wrathful Gladiator's Girdle of Triumph
						i(51374),	-- Wrathful Gladiator's Waistguard of Dominance
						i(51371),	-- Wrathful Gladiator's Waistguard of Salvation
						i(51350),	-- Wrathful Gladiator's Waistguard of Triumph
						i(51152),	-- Sanctified Ahn'Kahar Blood Hunter's Legguards
						i(51157),	-- Sanctified Bloodmage Leggings
						i(51177),	-- Sanctified Crimson Acolyte Leggings
						i(51181),	-- Sanctified Crimson Acolyte Pants
						i(51207),	-- Sanctified Dark Coven Leggings
						i(51203),	-- Sanctified Frost Witch's Kilt
						i(51193),	-- Sanctified Frost Witch's Legguards
						i(51198),	-- Sanctified Frost Witch's War-Kilt
						i(51142),	-- Sanctified Lasherweave Legguards
						i(51136),	-- Sanctified Lasherweave Legplates
						i(51146),	-- Sanctified Lasherweave Trousers
						i(51168),	-- Sanctified Lightsworn Greaves
						i(51171),	-- Sanctified Lightsworn Legguards
						i(51161),	-- Sanctified Lightsworn Legplates
						i(51131),	-- Sanctified Scourgelord Legguards
						i(51126),	-- Sanctified Scourgelord Legplates
						i(51186),	-- Sanctified Shadowblade Legplates
						i(51216),	-- Sanctified Ymirjar Lord's Legguards
						i(51211),	-- Sanctified Ymirjar Lord's Legplates
						i(51461),	-- Wrathful Gladiator's Chain Leggings
						i(51428),	-- Wrathful Gladiator's Dragonhide Legguards
						i(51416),	-- Wrathful Gladiator's Dreadplate Legguards
						i(51539),	-- Wrathful Gladiator's Felweave Trousers
						i(51422),	-- Wrathful Gladiator's Kodohide Legguards
						i(51495),	-- Wrathful Gladiator's Leather Legguards
						i(51506),	-- Wrathful Gladiator's Linked Leggings
						i(51512),	-- Wrathful Gladiator's Mail Leggings
						i(51485),	-- Wrathful Gladiator's Mooncloth Leggings
						i(51471),	-- Wrathful Gladiator's Ornamented Legplates
						i(51544),	-- Wrathful Gladiator's Plate Legguards
						i(51500),	-- Wrathful Gladiator's Ringmail Leggings
						i(51490),	-- Wrathful Gladiator's Satin Leggings
						i(51477),	-- Wrathful Gladiator's Scaled Legguards
						i(51466),	-- Wrathful Gladiator's Silk Trousers
						i(51436),	-- Wrathful Gladiator's Wyrmhide Legguards
						i(51344),	-- Wrathful Gladiator's Boots of Dominance
						i(51341),	-- Wrathful Gladiator's Boots of Salvation
						i(51369),	-- Wrathful Gladiator's Boots of Triumph
						i(51360),	-- Wrathful Gladiator's Greaves of Salvation
						i(51363),	-- Wrathful Gladiator's Greaves of Triumph
						i(51375),	-- Wrathful Gladiator's Sabatons of Dominance
						i(51372),	-- Wrathful Gladiator's Sabatons of Salvation
						i(51351),	-- Wrathful Gladiator's Sabatons of Triumph
						i(51328),	-- Wrathful Gladiator's Treads of Dominance
						i(51366),	-- Wrathful Gladiator's Treads of Salvation
						i(51336),	-- Wrathful Gladiator's Band of Dominance
						i(51358),	-- Wrathful Gladiator's Band of Triumph
					},
				}))),
				e(1597, {	-- Archavon the Stone Watcher
					["creatureID"] = 31125,
					["groups"] = {
						ach(1721),		-- Archavon the Stone Watcher (25 player)
						i(41086),	-- Deadly Gladiator's Chain Armor
						i(41660),	-- Deadly Gladiator's Dragonhide Robes
						i(40784),	-- Deadly Gladiator's Dreadplate Chestpiece
						i(41997),	-- Deadly Gladiator's Felweave Raiment
						i(41309),	-- Deadly Gladiator's Kodohide Robes
						i(41649),	-- Deadly Gladiator's Leather Tunic
						i(41080),	-- Deadly Gladiator's Linked Armor
						i(40991),	-- Deadly Gladiator's Mail Armor
						i(41858),	-- Deadly Gladiator's Mooncloth Robe
						i(40905),	-- Deadly Gladiator's Ornamented Chestguard
						i(40786),	-- Deadly Gladiator's Plate Chestpiece
						i(40990),	-- Deadly Gladiator's Ringmail Armor
						i(41920),	-- Deadly Gladiator's Satin Robe
						i(40785),	-- Deadly Gladiator's Scaled Chestpiece
						i(41951),	-- Deadly Gladiator's Silk Raiment
						i(41315),	-- Deadly Gladiator's Wyrmhide Robes
						i(40495),	-- Valorous Bonescythe Breastplate
						i(40503),	-- Valorous Cryptstalker Tunic
						i(40525),	-- Valorous Dreadnaught Battleplate
						i(40544),	-- Valorous Dreadnaught Breastplate
						i(40471),	-- Valorous Dreamwalker Raiments
						i(40463),	-- Valorous Dreamwalker Robe
						i(40469),	-- Valorous Dreamwalker Vestments
						i(40523),	-- Valorous Earthshatter Chestguard
						i(40514),	-- Valorous Earthshatter Hauberk
						i(40508),	-- Valorous Earthshatter Tunic
						i(40418),	-- Valorous Frostfire Robe
						i(40423),	-- Valorous Plagueheart Robe
						i(40458),	-- Valorous Raiments of Faith
						i(40579),	-- Valorous Redemption Breastplate
						i(40574),	-- Valorous Redemption Chestpiece
						i(40569),	-- Valorous Redemption Tunic
						i(40449),	-- Valorous Robe of Faith
						i(40550),	-- Valorous Scourgeborne Battleplate
						i(40559),	-- Valorous Scourgeborne Chestguard
						i(41142),	-- Deadly Gladiator's Chain Gauntlets
						i(41772),	-- Deadly Gladiator's Dragonhide Gloves
						i(40806),	-- Deadly Gladiator's Dreadplate Gauntlets
						i(42016),	-- Deadly Gladiator's Felweave Handguards
						i(41286),	-- Deadly Gladiator's Kodohide Gloves
						i(41766),	-- Deadly Gladiator's Leather Gloves
						i(41136),	-- Deadly Gladiator's Linked Gauntlets
						i(41006),	-- Deadly Gladiator's Mail Gauntlets
						i(41873),	-- Deadly Gladiator's Mooncloth Gloves
						i(40926),	-- Deadly Gladiator's Ornamented Gloves
						i(40804),	-- Deadly Gladiator's Plate Gauntlets
						i(41000),	-- Deadly Gladiator's Ringmail Gauntlets
						i(41939),	-- Deadly Gladiator's Satin Gloves
						i(40805),	-- Deadly Gladiator's Scaled Gauntlets
						i(41970),	-- Deadly Gladiator's Silk Handguards
						i(41292),	-- Deadly Gladiator's Wyrmhide Gloves
						i(40496),	-- Valorous Bonescythe Gauntlets
						i(40504),	-- Valorous Cryptstalker Handguards
						i(40527),	-- Valorous Dreadnaught Gauntlets
						i(40545),	-- Valorous Dreadnaught Handguards
						i(40466),	-- Valorous Dreamwalker Gloves
						i(40472),	-- Valorous Dreamwalker Handgrips
						i(40460),	-- Valorous Dreamwalker Handguards
						i(40515),	-- Valorous Earthshatter Gloves
						i(40520),	-- Valorous Earthshatter Grips
						i(40509),	-- Valorous Earthshatter Handguards
						i(40415),	-- Valorous Frostfire Gloves
						i(40445),	-- Valorous Gloves of Faith
						i(40454),	-- Valorous Handwraps of Faith
						i(40575),	-- Valorous Redemption Gauntlets
						i(40570),	-- Valorous Redemption Gloves
						i(40580),	-- Valorous Redemption Handguards
						i(40552),	-- Valorous Scourgeborne Gauntlets
						i(40563),	-- Valorous Scourgeborne Handguards
						i(41204),	-- Deadly Gladiator's Chain Leggings
						i(41666),	-- Deadly Gladiator's Dragonhide Legguards
						i(40845),	-- Deadly Gladiator's Dreadplate Legguards
						i(42004),	-- Deadly Gladiator's Felweave Trousers
						i(41297),	-- Deadly Gladiator's Kodohide Legguards
						i(41654),	-- Deadly Gladiator's Leather Legguards
						i(41198),	-- Deadly Gladiator's Linked Leggings
						i(41032),	-- Deadly Gladiator's Mail Leggings
						i(41863),	-- Deadly Gladiator's Mooncloth Leggings
						i(40938),	-- Deadly Gladiator's Ornamented Legplates
						i(40844),	-- Deadly Gladiator's Plate Legguards
						i(41026),	-- Deadly Gladiator's Ringmail Leggings
						i(41926),	-- Deadly Gladiator's Satin Leggings
						i(40846),	-- Deadly Gladiator's Scaled Legguards
						i(41958),	-- Deadly Gladiator's Silk Trousers
						i(41303),	-- Deadly Gladiator's Wyrmhide Legguards
						i(40500),	-- Valorous Bonescythe Legplates
						i(40506),	-- Valorous Cryptstalker Legguards
						i(40547),	-- Valorous Dreadnaught Legguards
						i(40529),	-- Valorous Dreadnaught Legplates
						i(40462),	-- Valorous Dreamwalker Leggings
						i(40493),	-- Valorous Dreamwalker Legguards
						i(40468),	-- Valorous Dreamwalker Trousers
						i(40517),	-- Valorous Earthshatter Kilt
						i(40512),	-- Valorous Earthshatter Legguards
						i(40522),	-- Valorous Earthshatter War-Kilt
						i(40417),	-- Valorous Frostfire Leggings
						i(40448),	-- Valorous Leggings of Faith
						i(40457),	-- Valorous Pants of Faith
						i(40422),	-- Valorous Plagueheart Leggings
						i(40572),	-- Valorous Redemption Greaves
						i(40583),	-- Valorous Redemption Legguards
						i(40577),	-- Valorous Redemption Legplates
						i(40567),	-- Valorous Scourgeborne Legguards
						i(40556),	-- Valorous Scourgeborne Legplates
					},
				}),
			}),
		},
	}),
}))));
