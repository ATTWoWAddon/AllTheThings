-----------------------------------------------------
--   P R O M O T I O N S   ( R E T A I L )   --
-----------------------------------------------------

CN_PROMOTIONS_RETAIL = createHeader({
	readable = "CN Promotions (Retail)",
	icon = [[~_.asset("Expansion_TWW")]],
	text = {
		en = "CN Promotions (Retail)",
		-- TODO: de = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		cn = "中国促销（正式服）",
	},
	description = {
		en = "These promotions are limited to the Chinese Realms.",
		cn = "这些促销活动仅限于中国服务器。",
	},
});
root(ROOTS.Promotions, {
	cnONLY(n(CN_PROMOTIONS_RETAIL, {
		["groups"] = {
			ach(40910, {	-- Successfully Stress Test CN Realms
				["description"] = "Rewarded for the Aid in the stress testing of the realms in China.",
				["timeline"] = { ADDED_11_0_0, REMOVED_11_0_5 },
			}),
			i(190231, {	-- Ash'adar, Harbinger of Dawn (MOUNT!)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Rewarded for returning to World of Warcraft in 2024. China Only.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_0 },
				["u"] = REMOVED_FROM_GAME,	-- Probably removed in 2025
			}),
			i(210409, {	-- Aura (PET!)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Rewarded for returning to World of Warcraft in 2024. China Only.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_0 },
				["u"] = REMOVED_FROM_GAME,	-- Probably removed in 2025
			}),
			i(229128, {	-- Harmonious Salutations Bear (MOUNT!)
				["description"] = "Rewarded for returning to World of Warcraft in 2024. China Only.",
				["timeline"] = { ADDED_11_0_0 },
				["u"] = REMOVED_FROM_GAME,	-- Probably removed in 2025
			}),
			i(235344, {	-- Blazing Royal Fire Hawk (MOUNT!) (CN Only)
				["description"] = "Rewarded from the Treasure Workshop.",
				["timeline"] = { ADDED_11_0_7, "removed 11.1.0.59425" },	-- Removed February 27th, 2025
			}),
			i(235378, {	-- Landro's Loot Box (CN Only)
				-- #if AFTER 11.0.2
				-- #if BEFORE 12.0.0
				["description"] = "Can bought for ¥200 RMB (~$27 USD) in the Ingame Shop for a limited time.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_7,  "removed 11.1.0.59425" },	-- Removed February 27th, 2025
				["groups"] = {
					i(227362),	-- Golden Ashes of Al'ar (MOUNT!) (CN Only)
					i(49284),	-- Reins of the Swift Spectral Tiger (MOUNT!)
					i(49283),	-- Reins of the Spectral Tiger (MOUNT!)
					i(49286),	-- X-51 Nether-Rocket X-TREME (MOUNT!)
					i(49285),	-- X-51 Nether-Rocket (MOUNT!)
					i(45047),	-- Sandbox Tiger
					i(35223),	-- Papa Hummel's Old-Fashioned Pet Biscuit
					i(46779),	-- Path of Cenarius
				},
			}),
			i(246732, {	-- Void-Forged Overseer (MOUNT!) (CN Only)
				["description"] = "Rewarded from the Season 3 Shop Bundle.",
				["timeline"] = { ADDED_11_2_0, REMOVED_11_2_5 },
				["u"] = REAL_MONEY,
			}),
			n(TREASURE_OF_AZEROTH, sharedDataSelf({
				["timeline"] = { "added 11.2.5.64395", "removed 11.2.7" },	-- Dec 31st
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					i(223459),	-- Blackrock Warsaber (MOUNT!)
					i(79769),	-- Demon Hunter's Aspect (TOY!)
					i(72134),	-- Gregarious Grell (PET!)
					i(223471),	-- Kaldorei War Wolf (MOUNT!)
					i(252656, { -- K'areshi Scientific Expedition Supply
						["description"] = "Contains a Quantum Token and rarely a Quantum Courser.",
					}),
					i(72159),	-- Magical Ogre Idol (TOY!)
					i(252679),	-- Mechanical Prototype Panther MK-0 (MOUNT!)
					i(71726),	-- Murkablo (PET!)
					--	i(),	-- Sands of Time x10 ('Quicksand Secret Treasure Vault' event) https://warcraft.wiki.gg/wiki/Quicksand_Secret_Treasure_Vault
					i(252681),	-- Steel Prototype Panther MK-0 (MOUNT!)
				},
			})),
			n(QUICKSAND_SECRET_TREASURE_VAULT, sharedDataSelf({
				["timeline"] = { "added 11.2.5", "removed 11.2.7", "added 12.0.1", "removed 12.0.5", "added 12.1.0", "removed 12.1.5",  },	-- Nov 18 2025 - Sep 11 2026 (three separate runs)
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					i(220768, { ["timeline"] = { ADDED_12_1_0 } }),	-- Astral Emperor's Serpent (MOUNT!) (August 2026)
					i(220766, { ["timeline"] = { ADDED_12_1_0 } }),	-- August Phoenix (MOUNT!) (August 2026)
					i(38576),	-- Big Battle Bear (MOUNT!)
					i(93671),	-- Ghastly Charger's Skull (MOUNT!)
					i(229128),	-- Harmonious Salutations Bear (PET!)
					i(211087),	-- Hateforged Blazecycle (MOUNT!)
					i(204091),	-- Rocket Shredder 9001 (MOUNT!)
					i(89783, { ["timeline"] = { ADDED_12_1_0 } }),	-- Son of Galleon's Saddle (MOUNT!) (August 2026)
				},
			})),
			n(DELUXEBUNDLE2025, sharedDataSelf({
				["timeline"] = { "added 11.2.5", "removed 11.2.7" },	-- 16 July to 15 October 2025.
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					i(242534),	-- Azure Sea Skiff (TOY)
					iensemble(244231),	-- Ensemble: Stillwater Fisher Attire (COSMETIC!)
					-- 12-Month Subscription Bundle
					i(247848),	-- Astral Aurochs (MOUNT!)
					i(228751),	-- Gigantic Grrloc (MOUNT!)
					i(243194),	-- Grandiose Grrloc (MOUNT!)
					i(225250),	-- Startouched Furline (MOUNT!)
					-- 6-Month Subscription Bundle
					i(239076),	-- Herald of Sa'bak (MOUNT!)
					i(248681),	-- Scorching Valor (MOUNT!)
					i(231297),	-- Timbered Sky Snake (MOUNT!)
				},
			})),
			n(LUNARNEWYEAR, sharedDataSelf({
				["timeline"] = { ADDED_12_0_0, REMOVED_12_0_1_LAUNCH },
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					i(253404),	-- Auspicious Pixiu (PET!)
					iensemble(257547),	-- Ensemble: Scorching Conqueror (COSMETIC!)
					i(258840),	-- Gilded Fountain (TOY!)
					i(257515),	-- Lil' Coalee (PET!)
					i(253244),	-- Lunar Celebrant's Aquarium (DECOR!)
					i(253292),	-- Lunar Celebrant's Bamboo Canister (DECOR!)
					i(253291),	-- Lunar Celebrant's Compact (DECOR!)
					i(253254),	-- Lunar Celebrant's Cradle (DECOR!)
					i(253290),	-- Lunar Celebrant's Ornate Vanity (DECOR!)
					i(253256),	-- Lunar Celebrant's Pillow Roll (DECOR!)
					i(253257),	-- Lunar Celebrant's Privacy Screen (DECOR!)
					i(253293),	-- Lunar Celebrant's Tea Tray (DECOR!)
					i(253294),	-- Lunar Celebrant's Teacup (DECOR!)
					i(253295),	-- Lunar Celebrant's Teapot (DECOR!)
					i(253296),	-- Lunar Celebrant's Tea Set (DECOR!)
					i(253297),	-- Lunar Celebrant's Vase with Maple Branch (DECOR!)
					i(253255),	-- Lunar Celebrant's Wide Pillow Roll (DECOR!)
					i(253402),	-- Scorching Polearm (COSMETIC!)
					i(38311),	-- Tabard of the Void
					i(254735, {	-- Thunderhoof Celestial (MOUNT!)
						i(258136),	-- Azure Thunder Coil Pillar (TOY!)
					}),
					i(235343),	-- Topsy Turvy Joker's Mask (COSMETIC!)
					-- Piramid Gacha Golden Landro box
					i(269743, {	-- Landro's Golden Loot Box
						-- #if AFTER 12.0.0
						-- #if BEFORE 12.0.1
						["description"] = "The loot box from 2025 was brought back with new rewards. The 2026 variant works similarly where players can obtain up to 8 boxes for ¥1000 RMB (~$135 USD), while teaming up with other players and collectively spend at least ¥3000 RMB (~$405 USD), each member will receive an additional 4 boxes as a bonus.",
						-- #endif
						-- #endif
						["groups"] = {
							i(251542),	-- Azure Drakefire
							i(258135),	-- Gilded Coil Spire (TOY!) [BoE]
							i(269009),	-- Golden Ashened Cataclysm (MOUNT!) [BoE]
							i(255973),	-- Sandbox Horse
							i(254736),	-- Stormgilded Celestial (MOUNT!) [BoE]
							-- Old Loot
							i(46779),	-- Path of Cenarius
							i(49283),	-- Reins of the Spectral Tiger (MOUNT!)
							i(49285),	-- X-51 Nether-Rocket (MOUNT!)
							i(49286),	-- X-51 Nether-Rocket X-TREME (MOUNT!)
						},
					}),
				},
			})),
			n(CRIMSONTIDE_TREASURETROVE, sharedDataSelf({
				["timeline"] = { ADDED_12_0_1, REMOVED_12_0_7 },	-- April 23rd through May 23rd 2026
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					-- ===== RETAIL — Special Rewards =====
					i(262344),	-- Scarlet Lady (MOUNT!)
					i(269659),	-- The Sire's Palanquin (MOUNT!)

					-- ===== RETAIL — Regular Rewards =====
					i(273640),	-- Condensed Anima Orb (DECOR!)
					iensemble(270222),	-- Ensemble: Sire's Ornate Attire (COSMETIC!)
					i(262661),	-- Ghastropod (MOUNT!)
					i(271631, { -- Light Guardian's Reward
						["description"] = "Contains a Quantum Token and rarely a Quantum Courser.",
					}),
					i(262881),	-- Lil' Staropod (PET!)
					i(272355),	-- Orchestrion of Echoing Atonement (DECOR!)
					i(274427, { -- Sha Loot Box
						["description"] = "1.25% chance for any of the following:",
						["groups"] = {
							i(273021),	-- Sha-Warped Hippogryph Hatchling (PET!)
							i(269640),	-- Sha-Warped Owl (MOUNT!)
							i(269012),	-- Sha-Warped Riding Wolf (MOUNT!)
							i(54860),	-- X-53 Touring Rocket (MOUNT!)
						},
					}),
					i(272356),	-- Throne of Subjugated Souls (DECOR!)
					--i(ITEMID_TODO),	-- Treasure Shard (CURRENCY!)
					n(TOP_TIER_CNONLY, {
						["groups"] = {
							iensemble(270222),	-- Ensemble: Sire's Ornate Attire (COSMETIC!)
							i(262344),	-- Scarlet Lady (MOUNT!)
							i(210008),	-- Smoldering Rune of Binding (MOUNT!)
							i(269659),	-- The Sire's Palanquin (MOUNT!)
							i(246732),	-- Void-Forged Overseer (MOUNT!)
						},
					}),
					n(FIRST_TIER_CNONLY, {
						["groups"] = {
							i(223459),	-- Blackrock Warsaber (MOUNT!)
							i(262661),	-- Ghastropod (MOUNT!)
							i(228751),	-- Gigantic Grrloc (MOUNT!)
							i(203727),	-- Gleaming Moonbeast's Reins (MOUNT!)
							i(243194),	-- Grandiose Grrloc (MOUNT!)
							i(223471),	-- Kaldorei War Wolf (MOUNT!)
							i(225250),	-- Startouched Furline (MOUNT!)
						},
					}),
					n(SECOND_TIER_CNONLY, {
						["groups"] = {
							i(49704),	-- Carved Ogre Idol (TOY!)
							i(79769),	-- Demon Hunter's Aspect (TOY!)
							i(206268),	-- Ethereal Transmogrifier (TOY!)
							i(229368),	-- Gill'el (PET!)
							i(262881),	-- Lil' Staropod (PET!)
							i(71726),	-- Murky's Little Soulstone (PET!)
							i(272355),	-- Orchestrion of Echoing Atonement (DECOR!)
							i(272356),	-- Throne of Subjugated Souls (DECOR!)
							i(258482),	-- Ysergle (PET!)
						},
					}),
					n(THIRD_TIER_CNONLY, {
						["groups"] = {
							i(206174),	-- Blub (PET!)
							i(212722),	-- Buggsy (PET!)
							i(273640),	-- Condensed Anima Orb (DECOR!)
							i(33223),	-- Fishing Chair (DECOR!)
							i(213556),	-- Hoplet (PET!)
							i(223145),	-- Marrlok (PET!)
							i(211432),	-- Teele (PET!)
							i(193429),	-- Time-Lost Salamanther (PET!)
							i(223339),	-- Trishi (PET!)
							i(223474),	-- Worgli the Apprehensive (PET!)
							i(220692),	-- X-treme Water Blaster Display (DECOR!)
						},
					}),
				},
			})),
			n(LUCKY_BAMBOO_TILES, sharedDataSelf({
				["timeline"] = { ADDED_12_1_0, REMOVED_12_1_5 },
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					-- ===== RETAIL — Base Pool =====
					i(269604),	-- Auspicious Picnic Basket (DECOR!)
					i(269605),	-- Auspicious Meal Case (DECOR!)
					i(272353),	-- Auspicious Verdant Basin (DECOR!)
					i(275999),	-- Flowering Mantle (COSMETIC!)
					i(275818),	-- Pinky (PET!)
					i(274427, { -- Sha Loot Box
						["description"] = "1.25% chance for any of the following:",
						["groups"] = {
							i(273021),	-- Sha-Warped Hippogryph Hatchling (PET!)
							i(269640),	-- Sha-Warped Owl (MOUNT!)
							i(269012),	-- Sha-Warped Riding Wolf (MOUNT!)
							i(54860),	-- X-53 Touring Rocket (MOUNT!)
						},
					}),
					i(272920),	-- Spring Panda (MOUNT!)
					--	Trader's Tender x200 (CURRENCY!)
				},
			})),
			n(DELUXEBUNDLE2026, sharedDataSelf({
				["timeline"] = { ADDED_12_1_0, REMOVED_12_1_5 },
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					iensemble(272335),	-- Ensemble: Varian's Azure Dragon Attire (TRANSMOG!)
					i(274967),	-- Varian's Dragon Throne (TOY!)
					i(273655),	-- Sunflare Driftmoth (MOUNT!)
					i(247848),	-- Astral Aurochs (MOUNT!)
					i(243194),	-- Grandiose Grrloc (MOUNT!)
					i(248681),	-- Scorching Valor (MOUNT!)
					-- Duplicate Reward Program (6 August to 31 October 2026)
					i(208385),	-- Bound Blizzard (MOUNT!) [retail]
					i(199659),	-- Gargantuan Grrloc (MOUNT!) [retail]
					i(199661),	-- Telix the Stormhorn (MOUNT!) [retail]
				},
			})),
			n(AZURESPAN_TREASURETROVE, sharedDataSelf({
				["timeline"] = { ADDED_12_1_0, REMOVED_12_1_5 },
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					-- ===== RETAIL — Base Pool =====
					i(274925),	-- Delta (PET!)
					i(279006),	-- Fisher's Pack (COSMETIC!)
					i(252194),	-- Fishmonger May (PET!)
					i(271631, { -- Light Guardian's Reward
						["description"] = "Contains a Quantum Token and rarely a Quantum Courser.",
					}),
					i(276625),	-- Puffin Pack (COSMETIC!)
					i(274427, { -- Sha Loot Box
						["description"] = "1.25% chance for any of the following:",
						["groups"] = {
							i(273021),	-- Sha-Warped Hippogryph Hatchling (PET!)
							i(269640),	-- Sha-Warped Owl (MOUNT!)
							i(269012),	-- Sha-Warped Riding Wolf (MOUNT!)
							i(54860),	-- X-53 Touring Rocket (MOUNT!)
						},
					}),
					i(280457),	-- Shark Attack Pack (COSMETIC!)
					i(280523),	-- Tuskarr Fire Pit (DECOR!)
					i(280527),	-- Tuskarr Fishing Gear Rack (DECOR!)
					i(280525),	-- Tuskarr Hanging Grill (DECOR!)
					i(274037),	-- Tuskarr Hermit Crab (MOUNT!)
					i(274730),	-- Tuskarr Ice Fishing Tent (TOY!)
					--i(ITEMID_TODO),	-- Treasure Shard (CURRENCY!)
					n(TOP_TIER_CNONLY, {
						["groups"] = {
							i(279006),	-- Fisher's Pack (COSMETIC!)
							i(276625),	-- Puffin Pack (COSMETIC!)
							i(280457),	-- Shark Attack Pack (COSMETIC!)
							i(210008),	-- Smoldering Rune of Binding (MOUNT!)
							i(274037),	-- Tuskarr Hermit Crab (MOUNT!)
							i(246732),	-- Void-Forged Overseer (MOUNT!)
						},
					}),
					n(FIRST_TIER_CNONLY, {
						["groups"] = {
							-- ===== RETAIL — Bonus: First-Tier =====
							i(223459),	-- Blackrock Warsaber (MOUNT!)
							i(258427),	-- Bound Blizzard (MOUNT!)
							i(258423),	-- Gargantuan Grrloc (MOUNT!)
							i(203727),	-- Gleaming Moonbeast's Reins (MOUNT!)
							i(223471),	-- Kaldorei War Wolf (MOUNT!)
							i(225250),	-- Startouched Furline (MOUNT!)
							i(258477),	-- Telix the Stormhorn (MOUNT!)
						},
					}),
					n(SECOND_TIER_CNONLY, {
						["groups"] = {
							-- ===== RETAIL — Bonus: Second-Tier =====
							i(49704),	-- Carved Ogre Idol (TOY!)
							i(274925),	-- Delta (PET!)
							i(79769),	-- Demon Hunter's Aspect (TOY!)
							i(206268),	-- Ethereal Transmogrifier (TOY!)
							i(252194),	-- Fishmonger May (PET!)
							i(229368),	-- Gill'el (PET!)
							i(71726),	-- Murky's Little Soulstone (PET!)
							i(274730),	-- Tuskarr Ice Fishing Tent (TOY!)
							i(258482),	-- Ysergle (PET!)
						},
					}),
					n(THIRD_TIER_CNONLY, {
						["groups"] = {
							i(206174),	-- Blub (PET!)
							i(212722),	-- Buggsy (PET!)
							i(33223),	-- Fishing Chair (DECOR!)
							i(213556),	-- Hoplet (PET!)
							i(223145),	-- Marrlok (PET!)
							i(211432),	-- Teele (PET!)
							i(193429),	-- Time-Lost Salamanther (PET!)
							i(223339),	-- Trishi (PET!)
							i(280523),	-- Tuskarr Fire Pit (DECOR!)
							i(223474),	-- Worgli the Apprehensive (PET!)
							i(220692),	-- X-treme Water Blaster Display (DECOR!)
						},
					}),
				},
			})),
			n(AZEROTH_ADVENTURE_HANDBOOK, sharedDataSelf({
				["timeline"] = { "added 12.1.5" },	-- Aug 13 - Dec 2 2026 (21st Anniversary run)
				["u"] = REAL_MONEY,
			}, {
				["groups"] = {
					i(210061),	-- Anu'relos, Flame's Guidance (MOUNT!)
					i(205876),	-- Highland Drake: Embodiment of the Hellforged (MANUSCRIPT!)
					i(201790),	-- Renewed Proto-Drake: Embodiment of the Storm-Eater (MANUSCRIPT!)
					i(210536),	-- Renewed Proto-Drake: Embodiment of the Blazing (MANUSCRIPT!)
					i(276245),	-- Shadow Spirehawk (MOUNT!)
				},
			})),
			n(CN_WOW_ANNIVERSARY_TWENTYONE, {	-- Yes CN is 1year Behind and celebrates 21st Bday 2026
				["timeline"] = { ADDED_12_1_0, REMOVED_12_1_7 },	-- Ends Dec 2 2026
				["groups"] = {
					-- Login giveaway
					i(264273),	-- Fel Spirehawk (MOUNT!) (retail)
					i(87771),	-- Heavenly Onyx Cloud Serpent (MOUNT!) (retail)
					i(246917, { -- Thunder-Ridged Elekk (MOUNT!)
						-- #if BEFORE 12.2.0
						-- #if AFTER 12.1.0
						["description"] = "Rewarded from completing the quiz.",
						-- #endif
						-- #endif
					}),
					-- Deluxe Collector's Annual Pass Bundle
					iensemble(272335),	-- Ensemble: Varian's Azure Dragon Attire (COSMETIC!)
					i(274967),	-- Varian's Dragon Throne (TOY!)
				},
			}),
		},
	})),
});
