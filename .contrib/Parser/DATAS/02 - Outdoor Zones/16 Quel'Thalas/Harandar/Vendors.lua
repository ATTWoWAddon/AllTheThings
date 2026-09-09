---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(VENDORS, {
			n(251259, {	-- Mothkeeper Wew'tam
				["coord"] = { 49.3, 54.3, MAP.MIDNIGHT.HARANDAR },
				["groups"] = sharedData({
					["cost"] = {
						-- #if AFTER 12.0.7
						{ "c", VOIDLIGHT_MARL, 150 },
						-- #else
						{ "c", 3385, 10 },	-- Luminous Dust
						-- #endif
					},
				}, {
					-- #if AFTER 12.0.7
					i(264243),	-- Firm Haranir Pillow (DECOR!)
					i(263038, {	-- Haranir Reclined Bed (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(264245),	-- Warm Haranir Blanket (DECOR!)
					-- Removed with 12.0.7, since the new quests reward the buyable version instead
					i(265943, {["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_7 }}),	-- Firm Haranir Pillow
					i(265946, {["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_7 }}),	-- Haranir Reclined Bed
					i(265945, {["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_7 }}),	-- Warm Haranir Blanket
					-- #else
					i(222988),	-- Elder Glowmite (MOUNT!)
					i(265943, {	-- Firm Haranir Pillow (DECOR!)
						i(264243, {	-- Firm Haranir Pillow (DECOR!) (Available for Marl after first dust purchase)
							["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
						}),
					}),
					i(257159),	-- Groovewarden's Buckler (COSMETIC!)
					i(263283),	-- Groovewarden's Dagger (COSMETIC!)
					i(263285),	-- Groovewarden's Greatsword (COSMETIC!)
					i(257161),	-- Groovewarden's Halberd (COSMETIC!)
					i(257155),	-- Groovewarden's Kris (COSMETIC!)
					i(257158),	-- Groovewarden's Rapier (COSMETIC!)
					i(263284),	-- Groovewarden's Staff (COSMETIC!)
					i(265946, {	-- Haranir Reclined Bed (DECOR!)
						i(263038, {	-- Haranir Reclined Bed (DECOR!) (Available for Marl after first dust purchase)
							["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
						}),
					}),
					i(263580),	-- Vivid Chloroceros (MOUNT!)
					i(265945, {	-- Warm Haranir Blanket (DECOR!)
						i(264245, {	-- Warm Haranir Blanket (DECOR!) (Available for Marl after first dust purchase)
							["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
						}),
					}),
					-- #endif
				}),
			}),
			n(255114, {	-- Maku <Decor Specialist>
				["coord"] = { 62.7, 34.4, 2576 },	-- The Den, Harandar
				["groups"] = {
					i(266259, {	-- Altar of the Shul'ka (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(263315, {	-- Bubbling Haranir Cauldron (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(252045, {	-- Fungal Pergola (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(265792, {	-- Fungarian Vine Fence (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(262906, {	-- Harandar Anvil (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(264178, {	-- Harandar Charcuterie Board (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(263196, {	-- Harandar Glowvine Lantern (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(262614, {	-- Harandar Runestone (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(264262, {	-- Haranir Whistling Arrow (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(264266, {	-- Lightbloom Moss Mound (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(264259, {	-- On'ohia's Call (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(263041, {	-- Replica Root of the World (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(253443, {	-- Replica Sky's Hope (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(263037, {	-- Replica Wey'nan's Ward (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(254319, {	-- Root-Woven Door (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(254878, {	-- Root-Woven Window (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(246415, {	-- Ruddy Haranir Pigment Bowl (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(247234, {	-- Rustic Harandar Planter (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(253467, {	-- Rutaani Sporepod (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(246407, {	-- Stoppered Spring Water Gourd (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(245535, {	-- Sturdy Haranir Handcart (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(263020, {	-- Ward of the Shul'ka (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(246416, {	-- Waterlogged Haranir Pigment Bowl (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
				},
			}),
			n(274363, {	-- Showena <Mounts and More>
				["coord"] = { 61.8, 67.7, 2576 },	-- The Den, Harandar
				["timeline"] = { ADDED_12_1_5 },	-- No "Timeline Out" to avoid the "This has been removed" message showing on the vendor herself when items get timelined out
				["groups"] = {
					filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { REMOVED_13_0_0 } }, {	-- TODO: Timeline out correctly
						i(282414, {	-- Sporebearer Fungal Strider (MOUNT!)
							["cost"] = 50000000000,	-- 5,000,000g
							["groups"] = { ach(63830) },	-- Fungal Not Frugal
						}),
					})),
					-- Exo Note: AH and Transmog Module CAN be bought even after 13.0.0 Launches however, I is no point in adding the REMOVED timeline only on the mount if only those that bought the mount can buy and use the Modules
					filter(MISC, bubbleDownSelf({ ["timeline"] = { REMOVED_13_0_0 } }, {	-- TODO: Timeline out correctly
						i(284186, {	-- Unlock Auction House (CI!)
							["cost"] = 15000000000,	-- 1,500,000g
						}),
						i(284191, {	-- Unlock Transmogrifier (CI!)
							["cost"] = 5000000000,	-- 500,000g
						}),
					})),
				},
			}),
		}),
	}),
}));
