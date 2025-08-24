---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(PANDARIA, {
		m(THE_VEILED_STAIR, {
			["icon"] = 656543,
			["groups"] = {
				battlepets({
					pet(706),	-- Bandicoon (PET!)
					pet(708),	-- Malayan Quillrat (PET!)
					pet(709),	-- Malayan Quillrat Pup (PET!)
				}),
				explorationHeader({
					visit_exploration(6377,{coord={55.7,55.4,THE_VEILED_STAIR}}),	-- Hatescale Burrow
					visit_exploration(6382,{coord={69.4,78.6,THE_VEILED_STAIR}}),	-- Mason's Folly
					exploration(6380),	-- Path of a Hundred Steps
					exploration(6375),	-- Tavern in the Mists
					exploration(6373),	-- The Secret Aerie
					exploration(6381),	-- The Spring Road
				}),
				n(FLIGHT_PATHS, {
					fp(1029, {	-- Tavern in the Mists
						["cr"] = 61759,	-- Shin the Weightless <Flight Master>
						["coord"] = { 56.6, 75.8, THE_VEILED_STAIR },
					}),
				}),
				n(QUESTS, {
					q(31287, {	-- Educating Saurok
						["qg"] = 63484,	-- Len the Whisperer
						["coord"] = { 53.51, 65.75, THE_VEILED_STAIR },
						["lvl"] = lvlsquish(87, 87, 20),
						["groups"] = {
							objective(1, {	-- 0/1 Leechfingers slain
								["provider"] = { "n", 63494 },	-- Leechfingers <Shaman of the Hatescale>
								["coord"] = { 51.0, 43.6, THE_VEILED_STAIR },
							}),
						},
					}),
					q(31286, {	-- Robbing Robbers of Robbers
						["qg"] = 63484,	-- Len the Whisperer
						["coord"] = { 53.51, 65.75, THE_VEILED_STAIR },
						["lvl"] = lvlsquish(87, 87, 20),
						["groups"] = {
							objective(1, {	-- 0/7 Black Market Merchandise
								["providers"] = {
									{ "i",  85981 },	-- Black Market Merchandise
									{ "o", 213519 },	-- Cursed Hozen Totem
									{ "o", 213517 },	-- Evil Monkey Idol
									{ "o", 213520 },	-- Priceless Mogu Artifact
									{ "o", 213516 },	-- Smuggled Brewfather Statue
									{ "o", 213518 },	-- Smuggled Cannon
								},
								["coord"] = { 49.1, 47.4, THE_VEILED_STAIR },
							}),
						},
					}),
					q(31285, {	-- The Spring Drifter
						["qg"] = 63367,	-- Brewmaster Boof
						["coord"] = { 51.90, 43.73, THE_VEILED_STAIR },
						["maps"] = { KUN_LAI_SUMMIT },
						["lvl"] = lvlsquish(87, 87, 20),
						["groups"] = {
							objective(1, {	-- Survive a ride on the Spring Drifter
								["provider"] = { "n", 63517 },	-- The Spring Drifter
								["coord"] = { 52.0, 43.6, THE_VEILED_STAIR },
							}),
						},
					}),
				}),
				n(TREASURES, {
					o(214325, {	-- Forgotten Lockbox
						["questID"] = 31867, -- Forgotten Lockbox
						["description"] = "Located on a barrel on the second floor of the inn",
						["coord"] = { 54.66, 71.67, THE_VEILED_STAIR },
					}),
					o(213845, {	-- The Hammer of Folly
						["questID"] = 31428,
						["coord"] = { 74.92, 76.47, THE_VEILED_STAIR },
						["groups"] = {
							i(86473),	-- The Hammer of Folly
						},
					}),
				}),
				n(VENDORS, {
					n(70436, {	-- Blacktalon Quartermaster <Supplier to the Black Prince>
						["coord"] = { 54.2, 72.9, THE_VEILED_STAIR },
						["timeline"] = { ADDED_5_2_0 },
						["groups"] = appendGroups(
							applyclassicphase(MOP_PHASE_ONE_MOGUSHAN_VAULTS, bubbleDown({
								["sourceAchievement"] = 7533,	-- Chapter I: Trial of the Black Prince
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = 100000000,	-- 10,000g
								-- #if AFTER WOD
								["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,
								-- #endif
							}, {
								i(89873),	-- Crystallized Dread
								i(89882),	-- Crystallized Horror
								i(89881),	-- Crystallized Terror
							})),
							applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, bubbleDown({
								["sourceAchievements"] = {
									7534,	-- Chapter II: Wrathion's War
									8008,	-- Chapter II: Wrathion's War
								},
								["timeline"] = { ADDED_5_1_0 },
								["cost"] = 25000000,	-- 2,500g
								-- #if AFTER WOD
								["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,
								-- #endif
							}, {
								i(93403),	-- Eye of the Black Prince
							})),
							applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, bubbleDown({
								["sourceQuest"] = 32595,	-- The Crown of Heaven
								["timeline"] = { ADDED_5_2_0 },
								["cost"] = {{ "i", 76132, 5 }},	-- Primal Diamond
								-- #if AFTER WOD
								["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,
								-- #endif
							}, {
								i(95346),	-- Capacitive Primal Diamond
								i(95345),	-- Courageous Primal Diamond
								i(95344),	-- Indomitable Primal Diamond
								i(95347),	-- Sinister Primal Diamond
							})),
							applyclassicphase(MOP_PHASE_ESCALATION, bubbleDown({
								["sourceAchievement"] = 7536,	-- Chapter IV: Celestial Blessings
								["timeline"] = { ADDED_5_3_0 },
								["cost"] = 100000000,	-- 10,000g
								-- #if AFTER WOD
								["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,
								-- #endif
							}, {
								i(98149),	-- Cranewing Cloak
								i(98150),	-- Jadefire Drape
								i(98335),	-- Oxhoof Greatcloak
								i(98146),	-- Oxhorn Bladebreaker
								i(98147),	-- Tigerclaw Cape
								i(98148),	-- Tigerfang Wrap
							})),
							applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {
								i(102457, {	-- Timeless Essence of the Black Dragonflight
									["sourceAchievement"] = 8325,	-- Chapter V: Judgment of the Black Prince
									["timeline"] = { ADDED_5_4_0 },
									-- #if AFTER WOD
									["u"] = TEMP_MOP_LEGENDARY_CLOAK_PHASE,
									-- #endif
								}),
							}),
						{}),
					}),
				}),
			},
		}),
	}),
});
