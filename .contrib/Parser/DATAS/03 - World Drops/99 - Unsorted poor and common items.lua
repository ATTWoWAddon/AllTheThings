-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------

-- ALL OF THOSE ITEMS WERE NOT SORTED IN TIME BEFORE 10.0.5

-- DO NOT REMOVE OR I WILL FIND YOU! -Darkal

-- #if NOT ANYCLASSIC
root(ROOTS.WorldDrops, bubbleDown({ ["timeline"] = ADDED_10_0_5, ["sharedDescription"] = "This item is currently in a temporary group of unsorted items under World Drops. It will be sorted soon.\nYou don't need to report this." }, {
	-- I AM HIDING THIS FOR NOW -Darkal
	--[[
	n(QUALITY_POOR, {
		n(WEAPONS, {
			filter(SHIELDS, {
				i(128824),	-- Tome of the Silver Hand	-- TODO Legion
			}),
			filter(THROWN, {	-- TODO
				-- #if NOT ANYCLASSIC
				-- The Burning Crusade
				-- CRIEVE NOTE: This one is actually NYI, as far as I can tell:
				i(28408),	-- Broken Silver Star

				-- CRIEVE NOTE: The following are common vendor items:
				i(25872),	-- Balanced Throwing Dagger
				i(29014),	-- Blacksteel Throwing Dagger
				i(25861),	-- Crude Throwing Axe
				i(25875),	-- Deadly Throwing Axe
				i(25876),	-- Gleaming Throwing Axe
				i(29009),	-- Heavy Throwing Dagger
				i(29013),	-- Jagged Throwing Axe
				i(25873),	-- Keen Throwing Knife
				i(25874),	-- Large Throwing Knife
				i(28979),	-- Light Throwing Knife
				i(29008),	-- Sharp Throwing Axe
				i(29007),	-- Weighted Throwing Axe
				i(29010),	-- Wicked Throwing Dagger

				-- Cataclysm
				-- PVP Gear (TODO: These exist in the PVP file currently, but are missing timeline data.)
				i(64759),	-- Bloodthirsty Gladiator's Hatchet
				i(64871),	-- Bloodthirsty Gladiator's War Edge
				i(70198),	-- Ruthless Gladiator's War Edge
				i(70197),	-- Ruthless Gladiator's Hatchet
				i(70232),	-- Ruthless Gladiator's War Edge
				i(70233),	-- Ruthless Gladiator's Hatchet
				i(61348),	-- Vicious Gladiator's Hatchet
				i(67466),	-- Vicious Gladiator's Hatchet
				i(73438),	-- Cataclysmic Gladiator's Hatchet
				i(73412),	-- Cataclysmic Gladiator's War Edge
				i(73471),	-- Cataclysmic Gladiator's Hatchet
				i(73445),	-- Cataclysmic Gladiator's War Edge

				-- CRIEVE NOTE: Vendor item from the Lost Isles (Brett "Coins" McQuid)
				i(49258),	-- Light Throwing Tusk
				i(49257),	-- Seashell Throwing Axe

				-- Regular vendor throwing weapons
				i(25877),	-- Master's Throwing Dagger

				-- These are all Heroic/Raid Finder versions of Valor Point Vendor items that never were implemented?
				i(78558),	-- Darting Chakram [Heroic - NYI]
				i(78638),	-- Darting Chakram [Raid Finder - NYI]
				i(78557),	-- Unexpected Backup [Heroic - NYI]
				i(78636),	-- Unexpected Backup [Raid Finder - NYI]
				i(78559),	-- Windslicer Boomerang [Heroic - NYI]
				i(78637),	-- Windslicer Boomerang [Raid Finder - NYI]
				-- #endif
			})
		}),
	}),
	--]]
	n(QUALITY_COMMON, {
		n(ARMOR, {
			filter(CLOAKS, {
			--	i(53048),	-- Doomsday Message	-- TODO Cataclysm
			}),
			filter(MISC, {
			--	i(43486),	-- Mohawk Mask	-- something removed
			}),
		}),
	}),
}));
-- #endif
