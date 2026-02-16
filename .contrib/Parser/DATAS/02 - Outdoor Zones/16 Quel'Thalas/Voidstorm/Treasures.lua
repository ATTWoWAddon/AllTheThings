---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(TREASURES, {
			-- From Voidstorm Treasures
			i(259373),	-- Formula: Ren'dorei Postage Repository (RECIPE!)
			i(247498),	-- Recipe: Entropic Illuminant (RECIPE)
			--Treasures
			o(612891, {	-- Bloody Sack
				["provider"] = { "n", 254756 },	-- Forgotten Oubliette
				["coord"] = { 64.4, 75.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93431,
				["groups"] = {
					i(267139),	-- Hungry Black Hole (TOY!)
				},
			}),
			o(613351, {	-- Discarded Energy Pike
				["coord"] = { 35.8, 41.4, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93496,
				["groups"] = {
					i(266100),	-- Barbed Riftwalker Dirk (COSMETIC!)
				},
			}),
			o(612270, {	-- Embedded Spear
				["coord"] = { 55.4, 75.4, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93553,
				["groups"] = {
					i(266075),	-- Harpoon of Extirpation (COSMETIC!)
				},
			}),
			o(613327, {	-- Faindel's Quiver
				["coord"] = { 43.0, 81.9, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93493,
				["groups"] = {
					i(266098),	-- Faindel's Longbow (COSMETIC!)
				},
			}),
			o(605169, {	-- Final Cluth of Predaxas
				["coord"] = { 49.9, 79.3, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93237,
				["groups"] = {
					i(257446),	-- Reins of the Insatiable Shredclaw (MOUNT!)
				},
			}),
			o(613317, {	-- Half-Digested Viscera
				["coord"] = { 37.7, 69.7, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93467,
				["groups"] = {
					i(264303),	-- Willie (PET!)
				},
			}),
			o(554678, {	-- Lost Shadowstep
				["coord"] = { 39.3, 63.8, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91308,
				["groups"] = {
					-- TODO: Blizzard bug, STILL PH
				},
			}),
			o(617163, {	-- Malignant Chest
				["coord"] = { 53.4, 42.7, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93840,
				["groups"] = {
					i(264482),	-- Void Elf Torch (DECOR!)
				},
			}),
			o(613368, {	-- Quivering Egg
				["coord"] = { 31.5, 44.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 93500,
				["groups"] = {
					i(266076),	-- Nether Siphoner (PET!)
				},
			}),
			o(618536, {	-- Scout's Pack
				["coord"] = { 49.1, 20.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 94387,
				["groups"] = {
					i(266101),	-- Unused Initiate's Bulwark (COSMETIC!)
				},
			}),
			o(618016, {	-- Stellar Stash
				["provider"] = { "n", 257141 },	-- Stellar Stash
				["coord"] = { 53.3, 32.2, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["questID"] = 93996,
				["groups"] = {
					i(262467),	-- Void Elf Round Table (DECOR!)
				},
			}),
			o(560300, {	-- Unpublished Manuscript
				["coord"] = { 53.4, 68.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 91699,
				["groups"] = {
					i(246268),	-- A Steamy Romance Novel: Voidlust
				},
			}),
			--Lore
			o(618558, {	-- Abandoned Telescope
				["coord"] = { 40.5, 58.6, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94395,
			}),
			o(618571, {	-- Shadowgraft Harness
				["coord"] = { 27.8, 54.0, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94398,
			}),
			o(618569, {	-- Tattered Page
				["coord"] = { 60.4, 45.5, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94387,
			}),
			o(618542, {	-- Void Armor
				["coord"] = { 63.4, 78.2, MAP.MIDNIGHT.VOIDSTORM },
				["questID"] = 94389,
			}),
			--Repeatable
			o(587240, {	-- Mysterious Domanaar Vessel
				["maps"] = { MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
				},
			}),
			o(587194, {	-- Stashed Singularity Supplies
				["maps"] = { MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
					i(259126),	-- Housing Dye: Void Violet (DECOR!)
				},
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(TREASURES, {
				q(94005),	-- Stellar Stash (TODO: Blizzard bug - it "ACCEPTED" near treasure but not "COMPLETED", not as WQ either)
				--lack of in-game objectIDs
				q(93812),	-- maligant node #1
				q(93813),	-- maligant node #2
				q(93814),	-- maligant node #3
				q(93815),	-- maligant node #4
			}),
		}),
	}),
}));
