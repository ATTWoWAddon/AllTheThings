---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(ZONE_REWARDS, {
			["description"] = "These items can drop from repeatable treasure chests and are sometimes awarded from world quests or table missions.",
			["groups"] = {
				i(181721),	-- Ascendant Valor Signet
				i(181603),	-- Forgehand's Chain
				i(181591),	-- Forgehand's Chainmail
				i(181596),	-- Forgehand's Handguards
				i(181599),	-- Forgehand's Headgear
				i(181601),	-- Forgehand's Legguards
				i(181594),	-- Forgehand's Sabatons
				i(181602),	-- Forgehand's Spaulders
				i(181604),	-- Forgehand's Wristguards
				i(181635),	-- Honortoll Gavel
				i(181630),	-- Honortoll Spear
				i(184840),	-- Hymnal of the Path
				i(184842, {	-- Instructor's Divine Bell
					["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_2_0 },
				}),
				i(190641, {	-- Instructor's Divine Bell
					["timeline"] = { ADDED_9_2_0 },
				}),
				i(181627),	-- Lifepath Crossbow
				i(181637),	-- Lifepath Hammer
				i(184841),	-- Lyre of Sacred Purpose
				i(181628),	-- Memoria Glaive
				i(181634),	-- Memoria Greatblade
				i(181636),	-- Memoria Spellblade
				i(184839);	-- Misfiring Centurion Controller
				i(181631),	-- Requiem Chime
				i(181632),	-- Requiem Handscythes
				i(181702),	-- Sanctified Guardian's Signet
				i(181605),	-- Shieldguard's Breastplate
				i(181608),	-- Shieldguard's Gauntlets
				i(181612),	-- Shieldguard's Girdle
				i(181609),	-- Shieldguard's Greathelm
				i(181610),	-- Shieldguard's Greaves
				i(181611),	-- Shieldguard's Shoulderplates
				i(181614),	-- Shieldguard's Vambraces
				i(181606),	-- Shieldguard's Warboots
				i(181704),	-- Silvernote Cloak
				i(181703),	-- Skychime Necklace
				i(181587),	-- Soulbearer's Belt
				i(181578),	-- Soulbearer's Boots
				i(181589),	-- Soulbearer's Bracers
				i(181583),	-- Soulbearer's Breeches
				i(181580),	-- Soulbearer's Gloves
				i(181581),	-- Soulbearer's Helm
				i(181585),	-- Soulbearer's Shoulderpads
				i(181577),	-- Soulbearer's Vest
				i(181575),	-- Spiritmender's Cord
				i(181576),	-- Spiritmender's Cuffs
				i(181571),	-- Spiritmender's Handwraps
				i(181572),	-- Spiritmender's Hood
				i(181573),	-- Spiritmender's Leggings
				i(181574),	-- Spiritmender's Mantle
				i(181569),	-- Spiritmender's Robe
				i(181570),	-- Spiritmender's Slippers
				i(181633),	-- Waylight Blade
				i(181629),	-- Waylight Defender
			},
		}),
	}),
})));
