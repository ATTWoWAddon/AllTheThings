-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local SCRAP = createHeader({
	readable = "S.C.R.A.P.",
	constant = "SCRAP",
	text = {
		en = "S.C.R.A.P.",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	n(CARTELS_OF_UNDERMINE, {
		n(SCRAP, {
			n(ACHIEVEMENTS, {
				ach(41590),	-- No Littering
				ach(41591),	-- Really No Littering
				ach(41592),	-- Absolutely Zero Littering
				ach(41593),	-- Cleanin' the Streets
				ach(41594),	-- Can You Believe What People Throw Away?
			}),
			n(QUESTS, {
				q(85879, {	-- Reduce, Reuse, Resell
					["sourceQuests"] = { 86934 },	-- Trash to Profit
					["providers"] = {
						{ "n", 237659 },	-- Carlo Greasegrind
						{ "n", 231409 },	-- Smaks Topskimmer
					},
					["coords"] = {
						{ 26.6, 37.2, UNDERMINE },	-- Carlo Greasegrind
						{ 43.9, 50.9, UNDERMINE },	-- Smaks Topskimmer
					},
					["isWeekly"] = true,
				}),
			}),
			n(REWARDS, {
				currency(3218),	-- Empty Kaja'Cola Can
				--
				i(236181),	-- Center-Stage Remover (COSMETIC!)
				i(236178),	-- Gammy's Hand-Me-Down Bow (COSMETIC!)
				i(236191),	-- Mechanic's Best Motivator (COSMETIC!)
			}),
			n(VENDORS, {
				n(234776, {	-- Angelo Rustbin <S.C.R.A.P. Exchange>
					["coord"] = { 25.8, 38.1, UNDERMINE },
					["g"] = {
						i(233557, {	-- Sifted Pile of Scrap
							["cost"] = {{ "c", 3218, 333 }},	-- Empty Kaja'Cola Can
						}),
						--i(233557, {	-- Sifted Pile of Scrap
						--	["cost"] = {{ "c", 3220, 1 }},	-- Vintage Kaja'Cola Can (TODO: assume it will change with renown level?)
						--}),
						i(232858, {	-- Cruncher (PET!)
							["cost"] = {{ "c", 3220, 1 }},	-- Vintage Kaja'Cola Can
						}),
						i(232859, {	-- Lab Rat (PET!)
							["cost"] = {{ "c", 3220, 1 }},	-- Vintage Kaja'Cola Can
						}),
						i(232986, {	-- GE86 Advance (MM!)
							["cost"] = {{ "c", 3220, 1 }},	-- Vintage Kaja'Cola Can
						}),
						i(233558, {	-- S.C.R.A.P. Scrubber Deluxe (TODO: some exchange game thing?)
							["cost"] = {{ "i", 233246, 1 }},	-- S.C.R.A.P. Scrubber Deluxe
						}),
					},
				}),
				n(234362, {	-- Kaja'Cola Dispenser
					["coord"] = { 67.3, 28.5, UNDERMINE },
					["g"] = {
						i(233444),	-- Kaja'Cola X-Treme [reqire renown 7]
						i(233445),	-- Kaja'Cola X-Treme Mega-Can [reqire renown 16]
						i(233446),	-- Multi-Pack of Kaja'Cola [reqire renown 16]
					},
				}),
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	n(CARTELS_OF_UNDERMINE, {
		n(SCRAP, {
			-- Location quests
			-- Fire only once per spot (for character?)
			q(87316),	-- Blackwater Marina
			q(87315),	-- Emerald Hills Golf Course
			q(87310),	-- Hovel Hill (North)
			q(87311),	-- Hovel Hill (South)
			q(87314),	-- The Heaps
			q(87312),	-- The VatWorks
			q(87313),	-- Venturewood
			-- Dented Crates (repeatable)
			q(87269),	-- 516153 @ 31.9, 21.3, UNDERMINE (Hovel Hill (North))
			q(87273),	-- 516157 @ 38.4, 80.9, UNDERMINE (The VatWorks)
			q(87275),	-- 516159 @ 50.6, 63.8, UNDERMINE (Venturewood)
			q(87279),	-- 516164 @ 69.7, 76.5, UNDERMINE (Emerald Hills Golf Course)
			q(87281),	-- 516166 @ 67.4, 29.3, UNDERMINE (Blackwater Marina)
			--q(),	-- objectID @ x, y, UNDERMINE (The Heaps)
			q(87271),	-- objectID @ x, y, UNDERMINE (Hovel Hill (South))
		}),
	}),
})));