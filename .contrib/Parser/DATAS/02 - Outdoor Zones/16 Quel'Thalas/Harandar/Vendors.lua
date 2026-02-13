---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(VENDORS, {
			n(251259, {	-- Mothkeeper Wew'tam
				["coord"] = { 49.3, 54.3, MAP.MIDNIGHT.HARANDAR },
				["groups"] = sharedData({
					["cost"] = { { "c", 3385, 10 } },	-- Luminous Dust
				}, {
					i(222988),	-- Elder Glowmite (MOUNT!)
					i(265943),	-- Firm Haranir Pillow (DECOR!)
					i(257159),	-- Groovewarden's Buckler (COSMETIC!)
					i(263283),	-- Groovewarden's Dagger (COSMETIC!)
					i(263285),	-- Groovewarden's Greatsword (COSMETIC!)
					i(257161),	-- Groovewarden's Halberd (COSMETIC!)
					i(257155),	-- Groovewarden's Kris (COSMETIC!)
					i(257158),	-- Groovewarden's Rapier (COSMETIC!)
					i(263284),	-- Groovewarden's Staff (COSMETIC!)
					i(265946),	-- Haranir Reclined Bed (DECOR!)
					i(263580),	-- Vivid Chloroceros (MOUNT!)
					i(265945),	-- Warm Haranir Blanket (DECOR!)
				}),
			}),
			n(255114, {	-- Maku <Decor Specialist>
				["coord"] = { 62.7, 34.4, 2576 },	-- The Den, Harandar
				["groups"] = {
					-- Exo Note - TODO: Fill sourceQuests once all questIDs are sourced. Quest names in the comments are taken in-game from the items themselves. Items are left in 'Unsorted' file so that they can be quickly copy/pasted onto the quest itself.
					-- Exo Note: Something is fishy here... Some decor here and sourceQuests have no sense. Quest A, rewards Decor 1 but unlocks Decor 2 at the vendor. Quest B, rewards Decor 2 but unlocks Decor 1 at the vendor... Maybe a bug?
					i(266259, {	-- Altar of the Shul'ka (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263315, {	-- Bubbling Haranir Cauldron (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(252045, {	-- Fungal Pergola (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(265792, {	-- Fungarian Vine Fence (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(262906, {	-- Harandar Anvil (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(264178, {	-- Harandar Charcuterie Board (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263196, {	-- Harandar Glowvine Lantern (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(262614, {	-- Harandar Runestone (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(264262, {	-- Haranir Whistling Arrow (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(264266, {	-- Lightbloom Moss Mound (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(264259, {	-- On'ohia's Call (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263041, {	-- Replica Root of the World (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(253443, {	-- Replica Sky's Hope (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263037, {	-- Replica Wey'nan's Ward (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(254319, {	-- Root-Woven Door (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(254878, {	-- Root-Woven Window
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(246415, {	-- Ruddy Haranir Pigment Bowl (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(247234, {	-- Rustic Harandar Planter (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(253467, {	-- Rutaani Sporepod (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(246407, {	-- Stoppered Spring Water Gourd (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(245535, {	-- Sturdy Haranir Handcart (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263020, {	-- Ward of the Shul'ka (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(246416, {	-- Waterlogged Haranir Pigment Bowl (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
				},
			}),
		}),
	}),
}));
