---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(ZONE_DROPS, {
			["maps"] = {	-- Note!! We can list this in these two zones due to them dropping here. If we add more to Zuldazar then we'll look into adjusting this.
				NAZMIR,
				VOLDUN,
			},
			["groups"] = {
				i(157782, {	-- Pterrordax Egg
					["crs"] = {
						126618,	-- Bloodrage Pterrordax
						125207,	-- Peering Shrieker
						126702,	-- Primal Skyterror
						122113,	-- Pterrordax Skyrender
						128647,	-- Seaspray Hatchling
						128343,	-- Skyterror Hatchling
						135853,	-- Slateclaw Whelp
						128653,	-- Young Seaspray
					},
				}),
			},
		}),
		n(ZONE_DROPS, {
			i(160127),	-- Pterroleather Cloak
			i(160146),	-- Saurifeather Crest
			i(160151),	-- Saurifeather Mantle
			i(160149),	-- Saurifeather Garments
			i(160152),	-- Saurifeather Wraps
			i(160147),	-- Saurifeather Gloves
			i(160145),	-- Saurifeather Belt
			i(160148),	-- Saurifeather Pants
			i(160150),	-- Saurifeather Treads
			i(160132),	-- Brutohide Faceguard
			i(160134),	-- Brutohide Shoulderpads
			i(160133),	-- Brutohide Vest
			i(160128),	-- Brutohide Armwraps
			i(160131),	-- Brutohide Gloves
			i(160135),	-- Brutohide Belt
			i(160130),	-- Brutohide Leggings
			i(160129),	-- Brutohide Boots
			i(160141),	-- Ravascale Helm
			i(160143),	-- Ravascale Shoulderguards
			i(160144),	-- Ravascale Hauberk
			i(160139),	-- Ravascale Gloves
			i(160138),	-- Ravascale Bracers
			i(160137),	-- Ravascale Belt
			i(160142),	-- Ravascale Legguards
			i(160140),	-- Ravascale Striders
			i(160122),	-- Direbone Frill Helmet
			i(160124),	-- Direbone Frill Pauldrons
			i(160119),	-- Direbone Frill Chestplate
			i(160126),	-- Direbone Frill Bracers
			i(160120),	-- Direbone Frill Gauntlets
			i(160121),	-- Direbone Frill Greatbelt
			i(160123),	-- Direbone Frill Legplates
			i(160125),	-- Direbone Frill Stompers
		}),
	}),
})));
