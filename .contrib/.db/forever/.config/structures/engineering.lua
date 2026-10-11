-----------------
-- ENGINEERING --
-----------------
ENGINEERING_RECIPES = {
	APPRENTICE = {
		r(4036, {	-- Engineering (Apprentice)
			["lvl"] = 5,
			["rank"] = 1,
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
			r(3924, {["timeline"] = {REMOVED_4_3_0}}),	-- Copper Tube
			r(3926, {["timeline"] = {REMOVED_4_3_0}}),	-- Copper Modulator
			r(3929),	-- Coarse Blasting Powder
		}),
		n(WEAPONS, {
			r(3925),	-- Rough Boomstick
		}),
		n(WEAPON_ENCHANTMENTS, {
			r(3977),	-- Crude Scope
		}),
	};
	JOURNEYMAN = {
		r(4037, {	-- Engineering (Journeyman)
			["lvl"] = 10,
			["rank"] = 2,
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
	};
	EXPERT = {
		r(4038, {	-- Engineering (Expert)
			["lvl"] = 20,
			["rank"] = 3,
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
			r(1249634, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Sandpaper
			r(12585),	-- Solid Blasting Powder
			r(12591),	-- Unstable Trigger
		}),
		n(WEAPONS, {
			r(12595),	-- Mithril Blunderbuss
		}),
	};
	ARTISAN = {
		r(12656, {	-- Engineering (Artisan)
			["lvl"] = 35,
			["rank"] = 4,
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
	};
	GNOMISH_ENGINEERING = {
		r(20219),	-- Gnomish Engineer
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
	};
	GOBLIN_ENGINEERING = {
		r(20222),	-- Goblin Engineer
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
	};
	MERCHANTS_FAVOR_RECIPES_ALLIANCE = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
		{	-- Neutral
			i(271625, {	-- Engineering Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(264205, {	-- Schematic: EZ-Thro Copper Bomb XL (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264204, {	-- Schematic: EZ-Thro Wrap (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264206, {	-- Schematic: No Slip SAF-T Padding (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264203, {	-- Schematic: SAF-T Copper Bomb (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264202, {	-- Schematic: SAF-T Dynamite (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264201, {	-- Schematic: SAF-T Tabs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(285285, {	-- Schematic: Satchel of Copper Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
		}, {	-- Friendly
			i(280326, {	-- Schematic: Bent Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280323, {	-- Schematic: Clanking Cord (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280328, {	-- Schematic: Dented Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(264211, {	-- Schematic: EZ-Thro Fireproof Fuse (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280325, {	-- Schematic: Floppy Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280322, {	-- Schematic: Gizmo Girdle (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(264209, {	-- Schematic: SAF-T Bell (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(285286, {	-- Schematic: Satchel of Bronze Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280327, {	-- Schematic: Stuckbutton Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280321, {	-- Schematic: Whimsical Waistwrap (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
		}, {	-- Honored
			i(264217, {	-- Schematic: Compact Critter Carrier (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264216, {	-- Schematic: Emergency Field Cloak 270 (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264221, {	-- Schematic: Gnomish Army Knife (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264234, {	-- Schematic: Gnomish Poultryizer (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
			i(264222, {	-- Schematic: Loot-A-Rang (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264220, {	-- Schematic: SAF-T Disposable Parachute (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(285288, {	-- Schematic: Satchel of Dark Iron Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(285287, {	-- Schematic: Satchel of Iron Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264237, {	-- Schematic: Stealthman 52 (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
			i(264235, {	-- Schematic: Ultralight Goblin Glider (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
			i(264232, {	-- Schematic: Ultrasafe Rechargeable Battery (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	MERCHANTS_FAVOR_RECIPES_HORDE = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
				{	-- Neutral
			i(271625, {	-- Engineering Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(264205, {	-- Schematic: EZ-Thro Copper Bomb XL (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264204, {	-- Schematic: EZ-Thro Wrap (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264206, {	-- Schematic: No Slip SAF-T Padding (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264203, {	-- Schematic: SAF-T Copper Bomb (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264202, {	-- Schematic: SAF-T Dynamite (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(264201, {	-- Schematic: SAF-T Tabs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(285285, {	-- Schematic: Satchel of Copper Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
		}, {	-- Friendly
			i(280326, {	-- Schematic: Bent Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280323, {	-- Schematic: Clanking Cord (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280328, {	-- Schematic: Dented Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(264211, {	-- Schematic: EZ-Thro Fireproof Fuse (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280325, {	-- Schematic: Floppy Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280322, {	-- Schematic: Gizmo Girdle (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(264209, {	-- Schematic: SAF-T Bell (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(285286, {	-- Schematic: Satchel of Bronze Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280327, {	-- Schematic: Stuckbutton Goggles (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(280321, {	-- Schematic: Whimsical Waistwrap (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
		}, {	-- Honored
			i(264217, {	-- Schematic: Compact Critter Carrier (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264216, {	-- Schematic: Emergency Field Cloak 270 (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264221, {	-- Schematic: Gnomish Army Knife (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264234, {	-- Schematic: Gnomish Poultryizer (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
			i(264222, {	-- Schematic: Loot-A-Rang (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264220, {	-- Schematic: SAF-T Disposable Parachute (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(285288, {	-- Schematic: Satchel of Dark Iron Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(285287, {	-- Schematic: Satchel of Iron Bombs (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 270}},
			}),
			i(264237, {	-- Schematic: Stealthman 52 (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
			i(264235, {	-- Schematic: Ultralight Goblin Glider (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
			i(264232, {	-- Schematic: Ultrasafe Rechargeable Battery (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 360}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
};
