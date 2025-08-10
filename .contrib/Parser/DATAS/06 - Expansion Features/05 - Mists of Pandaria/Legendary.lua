-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
LEGENDARY_THE_BLACK_PRINCE = createHeader({
	readable = "Legendary: The Black Prince",
	icon = 656543,
	text = {
		en = "Legendary: The Black Prince",
		de = "Legendäre: Der Schwarze Prinz",
		es = "Legendario: El Príncipe negro",
		mx = "Legendario: El Príncipe negro",
		fr = "Légendaire: Le prince noir",
		it = "Leggendario: Principe Nero",
		pt = "Lendário: O Príncipe Negro",
		ru = "Легендарное: Черный принц",
		ko = "전설: 검은 왕자",
		cn = "传说：黑王子",
		tw = "傳奇：黑龍王子",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
	n(LEGENDARY_THE_BLACK_PRINCE, {
		["isRaid"] = true,
		["maps"] = { THE_VEILED_STAIR },
		["groups"] = appendGroups(
			applyclassicphase(MOP_PHASE_ONE, bubbleDown({["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
				------ Chapter 1 ------
				q(31488, {	-- Stranger in a Strange Land
					["providers"] = {
						-- There are many providers choosing only two
						{ "n", 64047 },	-- Kurong Caskhead <Bartender>
						{ "n", 64144 },	-- Brewmaster Tsu
					},
					["coords"] = {
						{ 59.6, 75.8, SHRINE_OF_TWO_MOONS },
						{ 36.6, 76.6, SHRINE_OF_SEVEN_STARS },
					},
					["classes"] = exclude(ROGUE, ALL_CLASSES),
				}),
				q(31489, {	-- Stranger in a Strange Land
					["providers"] = {
						-- There are many providers choosing only two
						{ "n", 64047 },	-- Kurong Caskhead <Bartender>
						{ "n", 64144 },	-- Brewmaster Tsu
					},
					["coords"] = {
						{ 59.6, 75.8, SHRINE_OF_TWO_MOONS },
						{ 36.6, 76.6, SHRINE_OF_SEVEN_STARS },
					},
					["classes"] = { ROGUE },
				}),
				q(31454, {	-- A Legend in the Making
					["sourceQuests"] = {
						31488,	-- Stranger in a Strange Land
						31489,	-- Stranger in a Strange Land
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
				}),
				q(31468, {	-- Trial of the Black Prince
					["sourceQuests"] = { 31454 },	-- A Legend in the Making
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["minReputation"] = { FACTION_THE_BLACK_PRINCE, HONORED },
					-- Rogues can skip this if they done Patricide Rogue Leggo
				}),
				q(31473, {	-- The Strength of One's Foes
					["sourceQuests"] = { 31454 },	-- A Legend in the Making
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["maps"] = {
						471, 472, 473,	-- Mogu'shan Vaults
						474, 475,		-- Heart of Fear
						456,			-- Terrace of Endless Spring
					},
					["groups"] = {
						objective(1, {	-- 0/10 Sigil of Power
							["provider"] = { "i", 87208 },	-- Sigil of Power
						}),
						objective(2, {	-- 0/10 Sigil of Wisdom
							["provider"] = { "i", 87209 },	-- Sigil of Wisdom
						}),
					},
				}),
				q(31481, {	-- Fear Itself
					["sourceQuests"] = {
						31468,	-- Trial of the Black Prince
						31473,	-- The Strength of One's Foes
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["maps"] = { 456 },	-- Terrace of Endless Spring
				}),
				q(31482, {	-- Breath of the Black Prince
					["sourceQuests"] = { 31481 },	-- Fear Itself
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["groups"] = {
						ach(7533),	-- Chapter I: Trial of the Black Prince
						i(89873),	-- Crystallized Dread
						i(89882),	-- Crystallized Horror
						i(89881),	-- Crystallized Terror
					},
				}),
				q(31483, {	-- Incoming...
					["sourceQuests"] = { 31482 },	-- Breath of the Black Prince
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["isBreadcrumb"] = true,
				}),
			})),
			applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 } }, {
				------ Chapter 2 ------
				q(32373, {	-- The Measure of a Leader (A)
					["sourceQuests"] = {
						31482,	-- Breath of the Black Prince
						32109,	-- Lion's Landing
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(32427, {	-- The Measure of a Leader (H)
					["sourceQuests"] = {
						31482,	-- Breath of the Black Prince
						32108,	-- Domination Point
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = HORDE_ONLY,
				}),
				q(32374, {	-- The Prince's Pursuit (A)
					["sourceQuests"] = { 32373 },	-- The Measure of a Leader (A)
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(32429, {	-- The Prince's Pursuit (H)
					["sourceQuests"] = { 32427 },	-- The Measure of a Leader (H)
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = HORDE_ONLY,
				}),
				q(32474, {	-- A Test of Valor (A)
					["sourceQuests"] = { 32373 },	-- The Measure of a Leader (A)
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["cost"] = { { "c", 396, 3000 }, },	-- 3000 Valor
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						ach(8030, {	-- A Test of Valor (A)
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),
				q(32476, {	-- A Test of Valor (H)
					["sourceQuests"] = { 32427 },	-- The Measure of a Leader (H)
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["cost"] = { { "c", 396, 3000 }, },	-- 3000 Valor
					["races"] = HORDE_ONLY,
					["groups"] = {
						ach(8031, {	-- A Test of Valor (H)
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				q(32388, {	-- A Change of Command (A)
					["sourceQuests"] = {
						32374,	-- The Prince's Pursuit (A)
						32474,	-- A Test of Valor (A)
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = ALLIANCE_ONLY,
				}),
				q(32430, {	-- A Change of Command (H)
					["sourceQuests"] = {
						32429,	-- The Prince's Pursuit (H)
						32476,	-- A Test of Valor (H)
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = HORDE_ONLY,
				}),
				pvp(q(32389, {	-- The Lion Roars
					["sourceQuests"] = {
						32374,	-- The Prince's Pursuit (A)
						32474,	-- A Test of Valor (A)
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = ALLIANCE_ONLY,
				})),
				pvp(q(32431, {	-- Glory to the Horde
					["sourceQuests"] = {
						32429,	-- The Prince's Pursuit (H)
						32476,	-- A Test of Valor (H)
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = HORDE_ONLY,
				})),
				q(32390, {	-- Call of the Packmaster
					["sourceQuests"] = {
						32388,	-- A Change of Command (A)
						32389,	-- The Lion Roars
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						ach(7534),	-- Chapter II: Wrathion's War
						i(93403),	-- Eye of the Black Prince
					},
				}),
				q(32432, {	-- The Soul of the Horde
					["sourceQuests"] = {
						32430,	-- A Change of Command (H)
						32431,	-- Glory to the Horde
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						ach(8008),	-- Chapter II: Wrathion's War
						i(93403),	-- Eye of the Black Prince
					},
				}),
				q(32457, {	-- The Thunder King
					["sourceQuests"] = {
						32390,	-- Call of the Packmaster
						32432,	-- The Soul of the Horde
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["timeline"] = {
						ADDED_5_1_0,
						-- #if AFTER WOD
						REMOVED_5_2_0,
						-- #endif
					},
					["isBreadcrumb"] = true,
				}),
			})),
			applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, bubbleDown({ ["timeline"] = { ADDED_5_2_0, REMOVED_6_0_2 } }, {
				------ Chapter 3 ------
				q(32590, {	-- Meet Me Upstairs
					["sourceQuests"] = {
						32390,	-- Call of the Packmaster
						32432,	-- The Soul of the Horde
					},
					["provider"] = { "n", 64616 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
				}),
				q(32592, {	-- I Need a Champion
					["sourceQuests"] = {
						-- #if BEFORE 5.2.0
						32457,	-- The Thunder King
						-- #else
						32590,	-- Meet Me Upstairs
						-- #endif
					},
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["minReputation"] = { FACTION_THE_BLACK_PRINCE, EXALTED },
				}),
				q(32591, {	-- Secrets of the First Empire
					["sourceQuests"] = {
						-- #if BEFORE 5.2.0
						32457,	-- The Thunder King
						-- #else
						32590,	-- Meet Me Upstairs
						-- #endif
					},
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["cost"] = { { "i", 72095, 40 }, },	-- 40 Trillium Bar
				}),
				q(32593, {	-- The Thunder Forge
					["sourceQuests"] = {
						32592,	-- I Need a Champion
						32591,	-- Secrets of the First Empire
					},
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
				}),
				q(32594, {	-- Spirit of the Storm Lord
					["sourceQuests"] = { 32593 },	-- The Thunder Forge
					["provider"] = { "n", 70100 },	-- Wrathion
					["coord"] = { 60.0, 28.6, ISLE_OF_THUNDER },
				}),
				q(32595, {	-- The Crown of Heaven
					["sourceQuests"] = { 32594 },	-- Spirit of the Storm Lord
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["groups"] = {
						i(95346),	-- Capacitive Primal Diamond
						i(95345),	-- Courageous Primal Diamond
						i(95344),	-- Indomitable Primal Diamond
						i(95347),	-- Sinister Primal Diamond
					},
				}),
				q(32596, {	-- Echoes of the Titans
					["sourceQuests"] = { 32595 },	-- The Crown of Heaven
					["provider"] = { "n", 70476 },	-- Wrathion <The Black Prince>
					["coord"] = { 75.2, 76.4, THE_VEILED_STAIR },
					["maps"] = { 508, 509, 510, 511, 512, 513, 514, 515 },	-- Throne of Thunder
				}),
				q(32597, {	-- Heart of the Thunder King
					["sourceQuests"] = { 32595 },	-- The Crown of Heaven
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["maps"] = { 508, 509, 510, 511, 512, 513, 514, 515 },	-- Throne of Thunder
					["groups"] = {
						ach(7535),	-- Chapter III: Two Princes
					},
				}),
				q(32598, {	-- A Reckoning
					["sourceQuests"] = {
						32596,	-- Echoes of the Titans
						32597,	-- Heart of the Thunder King
					},
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
					["timeline"] = {
						ADDED_5_2_0,
						-- #if AFTER WOD
						REMOVED_5_3_0,
						-- #endif
					},
					["isBreadcrumb"] = true,
				}),
			})),
			applyclassicphase(MOP_PHASE_ESCALATION, bubbleDown({ ["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 } }, {
				------ Chapter 4 ------
				q(32805, {	-- Celestial Blessings
					["sourceQuests"] = {
						-- #if BEFORE 5.3.0
						32598,	-- A Reckoning
						-- #else
						32596,	-- Echoes of the Titans
						32597,	-- Heart of the Thunder King
						-- #endif
					},
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
				}),
				q(32861, {	-- Cloak of Virtue
					["sourceQuests"] = { 32805 },	-- Celestial Blessings
					["provider"] = { "n", 71424 },	-- Wrathion <The Black Prince>
					["coord"] = { 73.2, 79.6, THE_VEILED_STAIR },
					["groups"] = {
						ach(7536),	-- Chapter IV: Celestial Blessings
						i(98149),	-- Cranewing Cloak
						i(98150),	-- Jadefire Drape
						i(98335),	-- Oxhoof Greatcloak
						i(98146),	-- Oxhorn Bladebreaker
						i(98147),	-- Tigerclaw Cape
						i(98148),	-- Tigerfang Wrap
					},
				}),
				q(32870, {	-- Preparing to Strike
					["sourceQuests"] = { 32805 },	-- Celestial Blessings
					["provider"] = { "n", 71426 },	-- Wrathion <The Black Prince>
					["coord"] = { 73.2, 79.6, THE_VEILED_STAIR },
					["isBreadcrumb"] = true,
				}),
			})),
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, bubbleDown({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {
				------ Chapter 5 ------
				q(33087, {	-- Meet Me Back at the Inn
					["sourceQuests"] = { 32805 },	-- Celestial Blessings
					["provider"] = { "n", 71426 },	-- Wrathion <The Black Prince>
					["coord"] = { 73.2, 79.6, THE_VEILED_STAIR },
				}),
				q(33088, {	-- A Timeless Discovery
					["sourceQuests"] = {
						-- #if BEFORE 5.4.0
							32870,	-- Preparing to Strike
						-- #else
							33087,	-- Meet Me Back at the Inn
						-- #endif
					},
					["provider"] = { "n", 69782 },	-- Wrathion <The Black Prince>
					["coord"] = { 54.6, 72.6, THE_VEILED_STAIR },
				}),
				q(33098, {	-- Secrets of the Timeless Isle
					["sourceQuests"] = { 33088 },	-- A Timeless Discovery
					["provider"] = { "n", 72695 },	-- Wrathion <The Black Prince>
					["coord"] = { 34.6, 53.8, TIMELESS_ISLE },
					["cost"] = { { "c", 777, 5000 }, },	-- 5000 Timeless Coin
				}),
				q(33100, {	-- The Emperor's Way
					["sourceQuests"] = { 33088 },	-- A Timeless Discovery
					["provider"] = { "n", 72695 },	-- Wrathion <The Black Prince>
					["coord"] = { 34.6, 53.8, TIMELESS_ISLE },
				}),
				q(33104, {	-- A Pandaren Legend
					["sourceQuests"] = {
						33098,	-- Secrets of the Timeless Isle
						33100,	-- The Emperor's Way
					},
					["provider"] = { "n", 72695 },	-- Wrathion <The Black Prince>
					["coord"] = { 34.6, 53.8, TIMELESS_ISLE },
					["groups"] = {
						i(102457),	-- Timeless Essence of the Black Dragonflight
					},
				}),
				q(33105, {	-- Judgment of the Black Prince
					["sourceQuests"] = { 33104 },	-- A Pandaren Legend
					["provider"] = { "n", 72723 },	-- Wrathion <The Black Prince>
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570 },	-- Siege of Orgrimmar
					["groups"] = {
						ach(8325),	-- Chapter V: Judgment of the Black Prince
						title(306),	-- <Name>, Legend of Pandaria
					},
				}),
			})),
			applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, bubbleDown({
				["timeline"] = { ADDED_5_4_0 },
				-- #if AFTER WOD
				["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,
				-- #endif
			}, {
				i(102248, {		-- Fen-Yu, Fury of Xuen
					["cost"] = {
						{ "i", 98148, 1 },	-- Tigerfang Wrap
						{ "i", 102457, 1 },	-- Timeless Essence of the Black Dragonflight
					},
				}),
				i(102249, {		-- Gon-Lu, Strength of Xuen
					["cost"] = {
						{ "i", 98147, 1 },	-- Tigerclaw Cape
						{ "i", 102457, 1 },	-- Timeless Essence of the Black Dragonflight
					},
				}),
				i(102247, {		-- Jina-Kang, Kindness of Chi-Ji
					["cost"] = {
						{ "i", 98149, 1 },	-- Cranewing Cloak
						{ "i", 102457, 1 },	-- Timeless Essence of the Black Dragonflight
					},
				}),
				i(102245, {		-- Qian-Le, Courage of Niuzao
					["cost"] = {
						{ "i", 98335, 1 },	-- Oxhoof Greatcloak
						{ "i", 102457, 1 },	-- Timeless Essence of the Black Dragonflight
					},
				}),
				i(102250, {		-- Qian-Ying, Fortitude of Niuzao
					["cost"] = {
						{ "i", 98146, 1 },	-- Oxhorn Bladebreaker
						{ "i", 102457, 1 },	-- Timeless Essence of the Black Dragonflight
					},
				}),
				i(102246, {		-- Xing-Ho, Breath of Yu'lon
					["cost"] = {
						{ "i", 98150, 1 },	-- Jadefire Drape
						{ "i", 102457, 1 },	-- Timeless Essence of the Black Dragonflight
					},
				}),
			})),
		{}),
	}),
})));
