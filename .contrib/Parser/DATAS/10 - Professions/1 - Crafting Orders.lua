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
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "客人订单奖励",
		tw = "贊助人訂單獎勵?",
	},
});

root(ROOTS.Professions, n(CRAFTING_ORDERS, {
	["timeline"] = { ADDED_10_0_2_LAUNCH },
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(16791, {	-- Merchant Artisan
				title(485),	-- Merchant Artisan <Name>
			}),
			ach(16799, {	-- Personal Crafter
				title(486),	-- Personal Crafter <Name>
			}),
		}),
		n(PATRON_REWARDS, {
			expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
				i(225670),	-- Apprentice's Crafting License
				i(227713),	-- Artisan's Consortium Payout
				i(225673),	-- Artisan's Consortium Seal of Approval
				i(228724, {	-- Flicker of Alchemy Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.ALCHEMY),
				}),
				i(228726, {	-- Flicker of Blacksmithing Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.BLACKSMITHING),
				}),
				i(228728, {	-- Flicker of Enchanting Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.ENCHANTING),
				}),
				i(228730, {	-- Flicker of Engineering Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.ENGINEERING),
				}),
				i(228732, {	-- Flicker of Inscription Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.INSCRIPTION),
				}),
				i(228734, {	-- Flicker of Jewelcrafting Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.JEWELCRAFTING),
				}),
				i(228736, {	-- Flicker of Leatherworking Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.LEATHERWORKING),
				}),
				i(228738, {	-- Flicker of Tailoring Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.TAILORING),
				}),
				i(228725, {	-- Glimmer of Alchemy Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.ALCHEMY),
				}),
				i(228727, {	-- Glimmer of Blacksmithing Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.BLACKSMITHING),
				}),
				i(228729, {	-- Glimmer of Enchanting Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.ENCHANTING),
				}),
				i(228731, {	-- Glimmer of Engineering Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.ENGINEERING),
				}),
				i(228733, {	-- Glimmer of Inscription Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.INSCRIPTION),
				}),
				i(228735, {	-- Glimmer of Jewelcrafting Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.JEWELCRAFTING),
				}),
				i(228737, {	-- Glimmer of Leatherworking Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.LEATHERWORKING),
				}),
				i(228739, {	-- Glimmer of Tailoring Knowledge
					currency(PROFESSION_KNOWLEDGE.TWW.TAILORING),
				}),
				i(225671),	-- Stack of Pentagold Reviews
				i(225672),	-- Unraveled Instructions
			})),
			expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
				i(246320, {	-- Flicker of Midnight Alchemy Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.ALCHEMY),
				}),
				i(246322, {	-- Flicker of Midnight Blacksmithing Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.BLACKSMITHING),
				}),
				i(246324, {	-- Flicker of Midnight Enchanting Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.ENCHANTING),
				}),
				i(246326, {	-- Flicker of Midnight Engineering Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.ENGINEERING),
				}),
				i(246328, {	-- Flicker of Midnight Inscription Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.INSCRIPTION),
				}),
				i(246330, {	-- Flicker of Midnight Jewelcrafting Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.JEWELCRAFTING),
				}),
				i(246332, {	-- Flicker of Midnight Leatherworking Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.LEATHERWORKING),
				}),
				i(246334, {	-- Flicker of Midnight Tailoring Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.TAILORING),
				}),
				i(246321, {	-- Glimmer of Midnight Alchemy Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.ALCHEMY),
				}),
				i(246323, {	-- Glimmer of Midnight Blacksmithing Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.BLACKSMITHING),
				}),
				i(246325, {	-- Glimmer of Midnight Enchanting Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.ENCHANTING),
				}),
				i(246327, {	-- Glimmer of Midnight Engineering Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.ENGINEERING),
				}),
				i(246329, {	-- Glimmer of Midnight Inscription Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.INSCRIPTION),
				}),
				i(246331, {	-- Glimmer of Midnight Jewelcrafting Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.JEWELCRAFTING),
				}),
				i(246333, {	-- Glimmer of Midnight Leatherworking Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.LEATHERWORKING),
				}),
				i(246335, {	-- Glimmer of Midnight Tailoring Knowledge
					currency(PROFESSION_KNOWLEDGE.MID.TAILORING),
				}),
			})),
		}),
	},
}));
