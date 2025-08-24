-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldDrops, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	n(ARMOR, {
		filter(CLOTH, {
			i(163940),	-- Extra-Light Light Emitting Cord
			i(163941),	-- Hauer's Gloves of Strategy
			i(163938),	-- Kalieve's Kickers
			i(163939),	-- Mallusof's Pantaloons of Stability
			i(154793),	-- Unraveling Cloth Amice
			i(154792),	-- Unraveling Cloth Cord
			i(154791),	-- Unraveling Cloth Cowl
			i(154790),	-- Unraveling Cloth Handwraps
			i(154789),	-- Unraveling Cloth Pants
			i(154788),	-- Unraveling Cloth Sandals
			i(154787),	-- Unraveling Cloth Shirt
			i(154786),	-- Unraveling Cloth Wristwraps
		}),
		filter(LEATHER, {
			i(154770),	-- Cracked Hide Belt
			i(154771),	-- Cracked Hide Boots
			i(154772),	-- Cracked Hide Gloves
			i(154773),	-- Cracked Hide Hood
			i(154774),	-- Cracked Hide Pants
			i(154776),	-- Cracked Hide Vest
			i(154775),	-- Cracked Hide Shoulders
			i(154777),	-- Cracked Hide Wristguards
			i(163945),	-- Mystra's Magnificient Mitts
			i(163943),	-- Neleimour's Patterned Leggings
			i(163942),	-- Slippers of the Unruly Fairies
			i(163944),	-- Waatah's Double-Knotted Cord
		}),
		filter(MAIL, {
			i(154801),	-- Crumbling Chain Belt
			i(154800),	-- Crumbling Chain Coif
			i(154799),	-- Crumbling Chain Gloves
			i(154798),	-- Crumbling Chain Hauberk
			i(154796),	-- Crumbling Chain Sabatons
			i(154797),	-- Crumbling Chain Leggings
			i(154795),	-- Crumbling Chain Spaulders
			i(154794),	-- Crumbling Chain Wristguards
			i(163931),	-- Chain Links of Fraying Awe
			i(163946),	-- Gayeong's Gentle Step
			i(163948),	-- Moarse's Coarse-Chain Gauntlets
			i(163947),	-- Robust Legwraps of D'nusa
		}),
		filter(PLATE, {
			i(163949),	-- Celedhring's Unrelenting Stride
			i(163951),	-- Cinch of the Sainted General
			i(163950),	-- Edla's Embellished Legguards
			i(163952),	-- Oprescu's Gilded Touch
			i(154785),	-- Ruptured Plate Belt
			i(154784),	-- Ruptured Plate Breastplate
			i(154783),	-- Ruptured Plate Gauntlets
			i(154782),	-- Ruptured Plate Helmet
			i(154781),	-- Ruptured Plate Leggings
			i(154780),	-- Ruptured Plate Pauldrons
			i(154779),	-- Ruptured Plate Stompers
			i(154778),	-- Ruptured Plate Vambraces
		}),
		filter(CLOAKS, {
			i(163953),	-- Jula's Jovial Drape
			i(163932),	-- Wolfpelt Greatcloak
		}),
		filter(FINGER_F, {
			i(163933),	-- Aguas' Band of Augury
			i(163934),	-- Gnarled Mood Ring
			i(160136),	-- Golden City Signet
		}),
		filter(TRINKET_F, {
			i(163936),	-- 'Bygone Bee' Almanac
			i(163935),	-- Landoi's Scrutiny
			i(163937),	-- Leyshock's Grand Compilation
		}),
	}),
	n(WEAPONS, {	-- [Epic -- No adjustments]
		i(163969),	-- Ameelton's Shot-Thrower
		i(163957),	-- Carmodius Crystalline Stylus
		i(163962),	-- Decapitator of Alireza
		i(163960),	-- Flaming Gavel of Truth
		i(163958),	-- Freezie's Bubble Popper
		i(163965),	-- Glave's Angular Glaive
		i(163961),	-- Kelada's Elucidation
		i(163955),	-- Khayurn, Blade of the Wolves
		i(163966),	-- Miss Miggi's Towering Spire
		i(163954),	-- Oswain's Impassive Guard
		i(163959),	-- Self-Rotating Dagger of Xing
		i(163967),	-- Shtuf's Ruler
		i(163963),	-- Silirrion's Tenderizer
		i(159840),	-- Teebu's Scorching Straight Sword
		i(158180),	-- The Glazer
		i(163956),	-- Treiya's Shining Pillar
		i(163968),	-- Yang's Other Recurve
	}),
	n(WEAPONS, {	-- [Uncommon -- needs ID's]
		i(159545),	-- Bleached Bone Club
		i(159595),	-- Bleached Bone Cutlass
		i(159508),	-- Bleached Bone Glaive
		i(159480),	-- Bleached Bone Handaxe
		i(159529),	-- Bleached Bone Knife
		i(159489),	-- Bleached Bone Longbow
		i(159808),	-- Bleached Bone Shield
		i(159558),	-- Bleached Bone Skullcracker
		i(159573),	-- Bleached Bone Staff
		i(159606),	-- Bleached Bone Wand
		i(159492),	-- Golden Fleet Bow
		i(159811),	-- Golden Fleet Buckler
		i(159532),	-- Golden Fleet Dagger
		i(159516),	-- Golden Fleet Fists
		i(159485),	-- Golden Fleet Greataxe
		i(159598),	-- Golden Fleet Longsword
		i(159548),	-- Golden Fleet Mace
		i(159823),	-- Golden Fleet Mojo Charm
		i(159609),	-- Golden Fleet Wand
		i(159476),	-- Golden Fleet Waraxe
		i(159576),	-- Golden Fleet Warstaff
		i(159487),	-- Loa-Blessed Battleaxe
		i(159600),	-- Loa-Blessed Broadsword
		i(159506),	-- Loa-Blessed Crescent
		i(159527),	-- Loa-Blessed Fang
		i(159556),	-- Loa-Blessed Greathammer
		i(159478),	-- Loa-Blessed Headchopper
		i(159563),	-- Loa-Blessed Longspear
		i(159543),	-- Loa-Blessed Maul
		i(159578),	-- Loa-Blessed Stave
		i(159813),	-- Loa-Blessed Warshield
		i(159546),	-- Rivermarsh Basher
		i(159514),	-- Rivermarsh Claws
		i(159490),	-- Rivermarsh Composite
		i(159530),	-- Rivermarsh Dagger
		i(159809),	-- Rivermarsh Defender
		i(159821),	-- Rivermarsh Juju
		i(159596),	-- Rivermarsh Machete
		i(159574),	-- Rivermarsh Spellstaff
		i(159607),	-- Rivermarsh Wand
		i(159481),	-- Rivermarsh Waraxe
		i(159810),	-- Warport Aegis
		i(159547),	-- Warport Clobberer
		i(159531),	-- Warport Dirk
		i(159482),	-- Warport Handaxe
		i(159822),	-- Warport Hex Focus
		i(159608),	-- Warport Hexxer
		i(159515),	-- Warport Knuckles
		i(159575),	-- Warport Longstaff
		i(159597),	-- Warport Quickblade
		i(159491),	-- Warport Short Bow
		i(159807),	-- Zem'lan Buckler
		i(159479),	-- Zem'lan Chopper
		i(159488),	-- Zem'lan Cleaver
		i(159528),	-- Zem'lan Dagger
		i(159557),	-- Zem'lan Headsmasher
		i(159601),	-- Zem'lan Longsword
		i(159572),	-- Zem'lan Pummeler
		i(159594),	-- Zem'lan Saber
		i(159544),	-- Zem'lan Smasher
		i(159507),	-- Zem'lan Warglaive
		i(159477),	-- Zocali Carver
		i(159517),	-- Zocali Claws
		i(159599),	-- Zocali Greatsword
		i(159577),	-- Zocali Longstaff
		i(159533),	-- Zocali Ripper
		i(159812),	-- Zocali Shield
		i(159824),	-- Zocali Voodoo Idol
		i(159486),	-- Zocali Waraxe
		i(159505),	-- Zocali Warglaive
		i(159549),	-- Zocali Warhammer
		i(159525),	-- Coldscale Dagger
		i(159604),	-- Coldscale Rod
		i(159584),	-- Coldscale Saber
		i(159803),	-- Coldscale Shield
		i(159805),	-- Coralshell Barrier
		i(159520),	-- Coralshell Dagger
		i(159501),	-- Coralshell Glaives
		i(159540),	-- Coralshell Hammer
		i(159497),	-- Deepwarden Flintlock
		i(159537),	-- Deepwarden Gavel
		i(159802),	-- Deepwarden Redoubt
		i(159571),	-- Deepwarden Staff
		i(159818),	-- Deepwarden Torch
		i(159473),	-- Dockyard Axe
		i(159587),	-- Dockyard Cutlass
		i(159521),	-- Dockyard Dagger
		i(159560),	-- Dockyard Pike
		i(159806),	-- Dockyard Targe
		i(159493),	-- Gnarlwood Crossbow
		i(159509),	-- Gnarlwood Spikes
		i(159496),	-- Gol Osigr Crossbow
		i(159602),	-- Gol Osigr Wand
		i(159605),	-- Ironcrest Baton
		i(159539),	-- Ironcrest Club
		i(159519),	-- Ironcrest Knife
		i(159820),	-- Ironcrest Lantern
		i(159585),	-- Ironcrest Sword
		i(159475),	-- Shipwrecker Axe
		i(159590),	-- Shipwrecker Blade
		i(159504),	-- Shipwrecker Crescents
		i(159524),	-- Shipwrecker Knife
		i(159797),	-- Shipwrecker Shield
		i(159566),	-- Shipwrecker Spire
		i(159522),	-- Stagheart Knife
		i(159564),	-- Stagheart Staff
		i(159502),	-- Stagheart Warglaives
		i(159474),	-- Tideguard Handaxe
		i(159551),	-- Tideguard Maul
		i(159523),	-- Tideguard Shanker
		i(159589),	-- Tideguard Sword
		i(159800),	-- Wavecaller Buckler
		i(159593),	-- Wavecaller Cutlass
		i(159511),	-- Wavecaller Fists
		i(159535),	-- Wavecaller Mace
		i(159569),	-- Wavecaller Spire
		i(159799),	-- Wintersail Bulwark
		i(159494),	-- Wintersail Repeater
		i(159568),	-- Wintersail Staff
	}),
	n(WEAPONS, {	-- [Poor]
		i(160937),	-- Arrow-Pocked Aegis
		i(160935),	-- Backfiring Blunderbuss
		i(160930),	-- Barnacled Greataxe
		i(154803),	-- Battered Greatmaul
		i(160938),	-- Bent Punching Blade
		i(160926),	-- Broken Mooring Post
		i(160927),	-- Chipped Stone Hatchet
		i(154804),	-- Chipped-Blade Scimitar
		i(160929),	-- Cracked Cannon Ram
		i(158078),	-- Cracked Overlord's Scepter
		i(160925),	-- Crusty Cutlass
		i(160936),	-- Depleted Arcane Scepter
		i(160934),	-- Mud-Soaked Crossbow
		i(154802),	-- Notched Handaxe
		i(154805),	-- Rottingwood Quarterstaff
		i(160931),	-- Rough Cooking Spit
		i(160924),	-- Scored Antique Blade
		i(160933),	-- Splintered Longbow
		i(160932),	-- Termite-Addled Staff
		i(160928),	-- Weathered Greatsword
	}),
	filter(REAGENTS, {
		i(152631),	-- Briny Flesh
		i(163782),	-- Cursed Haunch
		i(152577),	-- Deep Sea Satin
		i(167738, {["timeline"] = {ADDED_8_1_5}}),	-- Gilded Seaweave
		i(154898),	-- Meaty Haunch
		i(168645, {["timeline"] = {ADDED_8_2_0}}),	-- Moist Fillet
		i(174353, {["timeline"] = {ADDED_8_3_0}}),	-- Questionable Meat
		i(168303, {["timeline"] = {ADDED_8_2_0}}),	-- Rubbery Flank
		i(168138, {["timeline"] = {ADDED_8_1_5}}),	-- Spirit of the Bested
		i(154897),	-- Stringy Loins
		i(154899),	-- Thick Paleo Steak
		i(152576),	-- Tidespray Linen
	}),
	filter(RECIPES, {
		prof(BLACKSMITHING, {
			i(166260),	-- Plans: Monel-Hardened Hoofplates [Rank 3] (RECIPE!)
		}),
		prof(LEATHERWORKING, {
			i(166313),	-- Pattern: Coarse Leather Barding [Rank 3] (RECIPE!)
		}),
		prof(TAILORING, {
			i(163027, {	-- Pattern: Embroidered Deep Sea Bag [Rank 1] (RECIPE!)
				["description"] = "Dropped by naga.",
			}),
		}),
	}),
})));
