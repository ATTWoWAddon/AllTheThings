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
						--["sourceQuest"] = ,	-- The Foundation of Aln
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263315, {	-- Bubbling Haranir Cauldron (DECOR!)
						--["sourceQuest"] = ,	-- The Traveling Flowers	// An example of wrong sourceQuest
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(252045, {	-- Fungal Pergola (DECOR!)
						--["sourceQuest"] = ,	-- Herding Manifestations
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(265792, {	-- Fungarian Vine Fence (DECOR!)
						["sourceAchievement"] = 62290,	-- Harandar: The Highest Peaks
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(262906, {	-- Harandar Anvil (DECOR!)
						["sourceQuest"] = 88996,	-- Russula's Outreach
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(264178, {	-- Harandar Charcuterie Board (DECOR!)
						--["sourceQuest"] = ,	-- Root Dash Delivery
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263196, {	-- Harandar Glowvine Lantern (DECOR!)
						["sourceQuest"] = 88995,	-- Aln'hara's Bloom
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(262614, {	-- Harandar Runestone (DECOR!)
						["sourceQuest"] = 88994,	-- The Cauldron of Echoes	// An example of wrong sourceQuest
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(264262, {	-- Haranir Whistling Arrow (DECOR!)
						["sourceQuest"] = 88996,	-- The Echoless Flame
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(264266, {	-- Lightbloom Moss Mound (DECOR!)
						["sourceAchievement"] = 61264,	-- Leaf None Behind
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(264259, {	-- On'ohia's Call (DECOR!)
						["sourceAchievement"] = 61574,	-- Legends Never Die
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263041, {	-- Replica Root of the World (DECOR!)
						--["sourceQuest"] = ,	-- Root of the World
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(253443, {	-- Replica Sky's Hope (DECOR!)
						--["sourceQuest"] = ,	-- Sky's Hope
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263037, {	-- Replica Wey'nan's Ward (DECOR!)
						["sourceQuest"] = 88993,	-- Wey'nan's Ward
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(254319, {	-- Root-Woven Door (DECOR!)
						--["sourceQuest"] = ,	-- Can We Heal This?
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(254878, {	-- Root-Woven Window
						--["sourceQuest"] = ,	-- A Last Resort (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(246415, {	-- Ruddy Haranir Pigment Bowl (DECOR!)
						--["sourceQuest"] = ,	-- Echoes and Memories
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(247234, {	-- Rustic Harandar Planter (DECOR!)
						--["sourceQuest"] = ,	-- Light Finds a Way
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(253467, {	-- Rutaani Sporepod (DECOR!)
						--["sourceQuest"] = ,	-- Into the Lightbloom
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(246407, {	-- Stoppered Spring Water Gourd (DECOR!)
						--["sourceQuest"] = ,	-- Descent into the Rift
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(245535, {	-- Sturdy Haranir Handcart (DECOR!)
						--["sourceQuest"] = ,	-- Halting Harm in Har'mara
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
					i(263020, {	-- Ward of the Shul'ka (DECOR!)
						--["sourceQuest"] = ,	-- From This Point Forward
						["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
					}),
					i(246416, {	-- Waterlogged Haranir Pigment Bowl (DECOR!)
						--["sourceQuest"] = ,	-- QuestID Triggered when looting 'Reliquary's Lost Paint Supplies' treasure
						["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
					}),
				},
			}),
		}),
	}),
}));
