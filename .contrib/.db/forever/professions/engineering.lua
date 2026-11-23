-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(ENGINEERING, {
	n(ACHIEVEMENTS, {
		ach(62023, {	-- Artisan Engineer
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62022, {	-- Expert Engineer
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62021, {	-- Journeyman Engineer
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	n(REWARDS, {
		i(11423, {	-- Gnome Engineer's Renewal Gift
			description = "If you destroy your Gnome Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
			provider = { "i", 10790 },	-- Gnome Engineer Membership Card
			groups = {
				i(10603),	-- Schematic: Catseye Ultra Goggles (RECIPE!)
				i(11827, { requireSkill = IGNORED_VALUE }),	-- Schematic: Lil' Smoky (RECIPE!)
				i(10606),	-- Schematic: Parachute Cloak(RECIPE!)
			},
		}),
		i(11422, {	-- Goblin Engineer's Renewal Gift
			description = "If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
			provider = { "i", 10791 },	-- Goblin Engineer Membership Card
			groups = {
				i(4416),	-- Schematic: Goblin Land Mine (RECIPE!)
				i(4417),	-- Schematic: Large Seaforium Charge (RECIPE!)
				i(11828, { requireSkill = IGNORED_VALUE }),	-- Schematic: Pet Bombling (RECIPE!)
			},
		}),
	}),
	header(HEADERS.SpellWithRank, 4036, {	-- Engineering (Apprentice)
		symselector = SymSelector.ENGINEERING_APPRENTICE,
		groups = {
			r(4036, {	-- Engineering (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			filter(AMMO, {
				r(3920),	-- Crafted Light Shot
				r(3930),	-- Crafted Heavy Shot
			}),
			filter(MISC, {
				r(3919),	-- Rough Dynamite
				r(3923),	-- Rough Copper Bomb
				r(3931),	-- Coarse Dynamite
			}),
			filter(PROFESSION_EQUIPMENT, {
				r(7430),	-- Arclight Spanner
			}),
			filter(REAGENTS, {
				r(3918),	-- Rough Blasting Powder
				r(3922),	-- Handful of Copper Bolts
				r(3924),	-- Copper Tube
				r(3926),	-- Copper Modulator
				r(3929),	-- Coarse Blasting Powder
			}),
			n(WEAPONS, {
				r(3925),	-- Rough Boomstick
			}),
			n(WEAPON_ENCHANTMENTS, {
				r(3977),	-- Crude Scope
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 4037, {	-- Engineering (Journeyman)
		symselector = SymSelector.ENGINEERING_JOURNEYMAN,
		groups = {
			r(4037, {	-- Engineering (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			filter(AMMO, {
				r(3947),	-- Crafted Solid Shot
			}),
			n(ARMOR, {
				r(3934),	-- Flying Tiger Goggles
				r(3956),	-- Green Tinted Goggles
			}),
			filter(MISC, {
				-- Bombs
				r(3950),	-- Big Bronze Bomb
				r(3955),	-- Explosive Sheep
				r(3946),	-- Heavy Dynamite
				r(3937),	-- Large Copper Bomb
				r(3941),	-- Small Bronze Bomb
				-- Misc
				r(9271),	-- Aquadynamic Fish Attractor
				r(6458),	-- Ornate Spyglass
				r(8334),	-- Practice Lock
				r(3932),	-- Target Dummy
			}),
			filter(REAGENTS, {
				r(3953),	-- Bronze Framework
				r(3938),	-- Bronze Tube
				r(12584),	-- Gold Power Core
				r(3945),	-- Heavy Blasting Powder
				r(3973),	-- Silver Contact
				r(3942),	-- Whirring Bronze Gizmo
			}),
			n(WEAPONS, {
				r(3936),	-- Deadly Blunderbuss
				r(3949),	-- Silver-plated Shotgun
			}),
			n(WEAPON_ENCHANTMENTS, {
				r(3978),	-- Standard Scope
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 4038, {	-- Engineering (Expert)
		symselector = SymSelector.ENGINEERING_EXPERT,
		groups = {
			r(4038, {	-- Engineering (Expert)
				lvl = 20,
				rank = 3,
			}),
			filter(AMMO, {
				r(12596),	-- Hi-Impact Mithril Slugs
			}),
			n(ARMOR, {
				r(12594),	-- Fire Goggles
			}),
			filter(MISC, {
				-- Bombs
				r(3967),	-- Big Iron Bomb
				r(3962),	-- Iron Grenade
				r(12603),	-- Mithril Frag Bomb
				r(12586),	-- Solid Dynamite
				-- Misc
				r(3965),	-- Advanced Target Dummy
				r(3963),	-- Compact Harvest Reaper Kit
				r(15255),	-- Mechanical Repair Kit
			}),
			filter(PROFESSION_EQUIPMENT, {
				r(12590),	-- Gyromatic Micro-Adjustor
			}),
			filter(REAGENTS, {
				r(3961),	-- Gyrochronatom
				r(3958),	-- Iron Strut
				r(12599),	-- Mithril Casing
				r(12589),	-- Mithril Tube
				r(1249634, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Sandpaper
				r(12585),	-- Solid Blasting Powder
				r(12591),	-- Unstable Trigger
			}),
			n(WEAPONS, {
				r(12595),	-- Mithril Blunderbuss
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 12656, {	-- Engineering (Artisan)
		symselector = SymSelector.ENGINEERING_ARTISAN,
		groups = {
			r(12656, {	-- Engineering (Artisan)
				lvl = 35,
				rank = 4,
			}),
			filter(AMMO, {
				r(12621),	-- Mithril Gyro-Shot
			}),
			n(ARMOR, {
				r(12622),	-- Green Lens
				r(12618),	-- Rose Colored Goggles
			}),
			filter(MISC, {
				r(23070),	-- Dense Dynamite
				r(12619),	-- Hi-Explosive Bomb
			}),
			filter(REAGENTS, {
				r(19788),	-- Dense Blasting Powder
				r(19567),	-- Salt Shaker
			}),
		},
	}),
	header(HEADERS.SpellWithRank, GNOMISH_ENGINEERING, {	-- Gnomish Engineer
		symselector = SymSelector.ENGINEERING_GNOMISH_ENGINEERING,
		groups = bubbleDown({ requireSkill = GNOMISH_ENGINEERING }, {
			r(GNOMISH_ENGINEERING),
			n(ARMOR, {
				r(12897),	-- Gnomish Goggles
				r(12903),	-- Gnomish Harm Prevention Belt
				r(12907),	-- Gnomish Mind Control Cap
				r(12905),	-- Gnomish Rocket Boots
			}),
			filter(RECIPES, {
				r(12895),	-- Inlaid Mithril Cylinder Plans
			}),
			filter(TRINKET_F, {
				r(12906),	-- Gnomish Battle Chicken
				r(12759),	-- Gnomish Death Ray
				r(12902),	-- Gnomish Net-o-Matic Projector
				r(12899),	-- Gnomish Shrink Ray
			}),
		}),
	}),
	header(HEADERS.SpellWithRank, GOBLIN_ENGINEERING, {	-- Goblin Engineer
		symselector = SymSelector.ENGINEERING_GOBLIN_ENGINEERING,
		groups = bubbleDown({ requireSkill = GOBLIN_ENGINEERING }, {
			r(GOBLIN_ENGINEERING),
			n(ARMOR, {
				r(12718),	-- Goblin Construction Helmet
				r(12717),	-- Goblin Mining Helmet
				r(8895),	-- Goblin Rocket Boots
				r(12758),	-- Goblin Rocket Helmet
			}),
			filter(MISC, {
				r(12760),	-- Goblin Sapper Charge
				r(12754),	-- The Big One
			}),
			filter(RECIPES, {
				r(12715),	-- Goblin Rocket Fuel Recipe
			}),
			filter(TRINKET_F, {
				r(12755),	-- Goblin Bomb Dispenser
				r(12908),	-- Goblin Dragon Gun
			}),
		}),
	}),
});
