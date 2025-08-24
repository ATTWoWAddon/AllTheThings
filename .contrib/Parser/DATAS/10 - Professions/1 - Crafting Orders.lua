-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
CRAFTING_ORDERS = createHeader({
	readable = "Crafting Orders",
	icon = 4557373,
	text = {
		en = [[~PROFESSIONS_CRAFTING_ORDERS_TAB_NAME]],
	},
});
PATRON_REWARDS = createHeader({
	readable = "Patron Rewards",
	icon = 4557373,
	text = {
		en = "Patron Rewards",
		cn = "客人订单奖励",
		tw = "贊助人訂單獎勵?",
	},
});

root(ROOTS.Professions, {
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(CRAFTING_ORDERS, {
			n(ACHIEVEMENTS, {
				ach(16791, {	-- Merchant Artisan
					title(485),	-- Merchant Artisan <Name>
				}),
				ach(16799, {	-- Personal Crafter
					title(486),	-- Personal Crafter <Name>
				}),
			}),
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(CRAFTING_ORDERS, {
			n(PATRON_REWARDS, {
				i(225670),	-- Apprentice's Crafting License
				i(227713),	-- Artisan's Consortium Payout [Common]
			--	These 3 dont load ingame
			--	i(228610),	-- Artisan's Consortium Payout [Uncommon]
			--	i(228611),	-- Artisan's Consortium Payout [Rare]
			--	i(228612),	-- Artisan's Consortium Payout [Epic]
				i(225673),	-- Artisan's Consortium Seal of Approval
				i(228724),	-- Flicker of Alchemy Knowledge
				i(228726),	-- Flicker of Blacksmithing Knowledge
				i(228728),	-- Flicker of Enchanting Knowledge
				i(228730),	-- Flicker of Engineering Knowledge
				i(228732),	-- Flicker of Inscription Knowledge
				i(228734),	-- Flicker of Jewelcrafting Knowledge
				i(228736),	-- Flicker of Leatherworking Knowledge
				i(228738),	-- Flicker of Tailoring Knowledge
				i(228725),	-- Glimmer of Alchemy Knowledge
				i(228727),	-- Glimmer of Blacksmithing Knowledge
				i(228729),	-- Glimmer of Enchanting Knowledge
				i(228731),	-- Glimmer of Engineering Knowledge
				i(228733),	-- Glimmer of Inscription Knowledge
				i(228735),	-- Glimmer of Jewelcrafting Knowledge
				i(228737),	-- Glimmer of Leatherworking Knowledge
				i(228739),	-- Glimmer of Tailoring Knowledge
				i(225671),	-- Stack of Pentagold Reviews
				i(225672),	-- Unraveled Instructions
			}),
		}),
	})),
});
