-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldDrops, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	filter(MISC, {
		i(158932, { -- Secretest Fish
			["description"] = "Can be found in any Shadowlands zone when wearing the googles.",
			["provider"] = {"i", 167698},	-- Secret Fish Goggles
			["maps"] = {
				ARDENWEALD,
				BASTION,
				MALDRAXXUS,
				REVENDRETH,
				ORIBOS,
			},
		}),
	}),
	filter(REAGENTS, {
		i(172052),	-- Aethereal Meat
		i(179314),	-- Creeping Crawler Meat
		i(173204),	-- Lightless Silk
		i(172055),	-- Phantasmal Haunch
		i(172054),	-- Raw Seraphic Wing
		i(179315),	-- Shadowy Shanks
		i(173202),	-- Shrouded Cloth
		i(172053),	-- Tenebrous Ribs
	}),
	filter(RECIPES, {
		i(186995, {	-- Pattern: Shrouded Hand Towel (RECIPE!)
			["timeline"] = { ADDED_9_1_0 },
		}),
	}),
	n(ARMOR, {
		filter(CLOTH, {
			i(176945),	-- Decayed Cloth Armbands
			i(176951),	-- Decayed Cloth Cincture
			i(176947),	-- Decayed Cloth Footpads
			i(176949),	-- Decayed Cloth Grips
			i(176950),	-- Decayed Cloth Hood
			i(176948),	-- Decayed Cloth Legwraps
			i(176952),	-- Decayed Cloth Mantle
			i(176946),	-- Decayed Cloth Vestments
			i(184787),	-- Elohin's Burden of Patience
			i(177756),	-- Ember-Bleached Cloth Armbands
			i(177762),	-- Ember-Bleached Cloth Cincture
			i(177760),	-- Ember-Bleached Cloth Grips
			i(177761),	-- Ember-Bleached Cloth Hood
			i(177759),	-- Ember-Bleached Cloth Legwraps
			i(177763),	-- Ember-Bleached Cloth Mantle
			i(177758),	-- Ember-Bleached Cloth Slippers
			i(177757),	-- Ember-Bleached Cloth Tunic
			i(184788),	-- Kit Jin's Sultry Cinch
			i(184786),	-- Joyia's Raiment of Conviction
			i(176312),	-- Parched Silk Amice
			i(176311),	-- Parched Silk Cord
			i(176310),	-- Parched Silk Cowl
			i(176309),	-- Parched Silk Handwraps
			i(176308),	-- Parched Silk Pants
			i(176307),	-- Parched Silk Sandals
			i(176306),	-- Parched Silk Shirt
			i(176305),	-- Parched Silk Wristwraps
			i(176426),	-- Stained Cloth Armbands
			i(176432),	-- Stained Cloth Cincture
			i(176430),	-- Stained Cloth Grips
			i(176431),	-- Stained Cloth Hood
			i(176429),	-- Stained Cloth Legwraps
			i(176433),	-- Stained Cloth Mantle
			i(176428),	-- Stained Cloth Slippers
			i(176427),	-- Stained Cloth Tunic
		}),
		filter(LEATHER, {
			i(184790),	-- Archdruid Van-Yali's Greenthumbs
			i(184791),	-- Azsharys' Lunar Veil
			i(177755),	-- Mire-Stained Leather Bracers
			i(177748),	-- Mire-Stained Leather Cinch
			i(177749),	-- Mire-Stained Leather Footwraps
			i(177751),	-- Mire-Stained Leather Guise
			i(177750),	-- Mire-Stained Leather Handwraps
			i(177754),	-- Mire-Stained Leather Jerkin
			i(177752),	-- Mire-Stained Leather Leggings
			i(177753),	-- Mire-Stained Leather Shoulderpads
			i(184789),	-- Nyte's Mischievous Treads
			i(176936),	-- Putrefied Leather Bracers
			i(176929),	-- Putrefied Leather Cinch
			i(176930),	-- Putrefied Leather Footwraps
			i(176932),	-- Putrefied Leather Guise
			i(176931),	-- Putrefied Leather Handwraps
			i(176935),	-- Putrefied Leather Jerkin
			i(176933),	-- Putrefied Leather Leggings
			i(176934),	-- Putrefied Leather Shoulderpads
			i(176417),	-- Twisted Leather Bracers
			i(176410),	-- Twisted Leather Cinch
			i(176413),	-- Twisted Leather Guise
			i(176411),	-- Twisted Leather Footwraps
			i(176412),	-- Twisted Leather Handwraps
			i(176416),	-- Twisted Leather Jerkin
			i(176414),	-- Twisted Leather Leggings
			i(176415),	-- Twisted Leather Shoulderpads
			i(176289),	-- Withered Leather Belt
			i(176290),	-- Withered Leather Boots
			i(176291),	-- Withered Leather Gloves
			i(176292),	-- Withered Leather Hood
			i(176293),	-- Withered Leather Pants
			i(176294),	-- Withered Leather Shoulders
			i(176295),	-- Withered Leather Vest
			i(176296),	-- Withered Leather Wristguards
		}),
		filter(MAIL, {
			i(176953),	-- Brittle Chain Armguards
			i(176956),	-- Brittle Chain Breeches
			i(176960),	-- Brittle Chain Clasp
			i(176955),	-- Brittle Chain Footguards
			i(176958),	-- Brittle Chain Gauntlets
			i(176959),	-- Brittle Chain Helm
			i(176954),	-- Brittle Chain Spaulders
			i(176957),	-- Brittle Chain Vest
			i(176434),	-- Defiled Chain Armguards
			i(176437),	-- Defiled Chain Breeches
			i(176441),	-- Defiled Chain Clasp
			i(176436),	-- Defiled Chain Footguards
			i(176439),	-- Defiled Chain Gauntlets
			i(176440),	-- Defiled Chain Helm
			i(176435),	-- Defiled Chain Spaulders
			i(176438),	-- Defiled Chain Vest
			i(176320),	-- Desiccated Scale Belt
			i(176319),	-- Desiccated Scale Coif
			i(176318),	-- Desiccated Scale Gloves
			i(176317),	-- Desiccated Scale Hauberk
			i(176316),	-- Desiccated Scale Leggings
			i(176315),	-- Desiccated Scale Sabatons
			i(176314),	-- Desiccated Scale Spaulders
			i(176313),	-- Desiccated Scale Wristguards
			i(177740),	-- Dredged Chain Armguards
			i(177743),	-- Dredged Chain Breeches
			i(177747),	-- Dredged Chain Clasp
			i(177742),	-- Dredged Chain Footguards
			i(177745),	-- Dredged Chain Gauntlets
			i(177746),	-- Dredged Chain Helm
			i(177741),	-- Dredged Chain Spaulders
			i(177744),	-- Dredged Chain Vest
			i(184792),	-- Haru Kiemund's Sabatons
			i(184793),	-- Huntmaster Sullivan's Greaves
			i(184794),	-- Viller's Traveling Chain
		}),
		filter(PLATE, {
			i(184796),	-- Baetheas' Ironclad Warboots
			i(177738),	-- Crumbling Plate Chestpiece
			i(177736),	-- Crumbling Plate Faceguard
			i(177737),	-- Crumbling Plate Gloves
			i(177739),	-- Crumbling Plate Greatbelt
			i(177735),	-- Crumbling Plate Legguards
			i(177734),	-- Crumbling Plate Shoulderguards
			i(177732),	-- Crumbling Plate Vambraces
			i(177733),	-- Crumbling Plate Warboots
			i(184808),	-- Desm's Fistos
			i(176424),	-- Distorted Plate Chestpiece
			i(176422),	-- Distorted Plate Faceguard
			i(176423),	-- Distorted Plate Gloves
			i(176425),	-- Distorted Plate Greatbelt
			i(176421),	-- Distorted Plate Legguards
			i(176420),	-- Distorted Plate Shoulderguards
			i(176418),	-- Distorted Plate Vambraces
			i(176419),	-- Distorted Plate Warboots
			i(176304),	-- Gorm-Eaten Belt
			i(176303),	-- Gorm-Eaten Breastplate
			i(176302),	-- Gorm-Eaten Gauntlets
			i(176301),	-- Gorm-Eaten Helmet
			i(176300),	-- Gorm-Eaten Leggings
			i(176299),	-- Gorm-Eaten Pauldrons
			i(176298),	-- Gorm-Eaten Stompers
			i(176297),	-- Gorm-Eaten Vambraces
			i(176943),	-- Marred Plate Chestpiece
			i(176941),	-- Marred Plate Faceguard
			i(176942),	-- Marred Plate Gloves
			i(176944),	-- Marred Plate Greatbelt
			i(176940),	-- Marred Plate Legguards
			i(176939),	-- Marred Plate Shoulderguards
			i(176937),	-- Marred Plate Vambraces
			i(176938),	-- Marred Plate Warboots
			i(184809),	-- Tabone's Branded Pauldrons
			i(184795),	-- Tharatos' Charred Chestplate
		}),
		filter(CLOAKS, {
			i(184781),	-- Fate-Sewn Shawl
			i(184782),	-- Gast's Cloak of Compression
		}),
		filter(NECK_F, {
			i(184785),	-- Gaiazelle's Spiked Collar
		}),
		filter(FINGER_F, {
			i(184783),	-- Muirnne's Stormforged Signet
			i(184784),	-- Punishing Loop
		}),
		filter(TRINKET_F, {
			i(184807),	-- Relic of the First Ones
		}),
	}),
	n(WEAPONS, {
		i(184805),	-- Ballista of Buried Kings
		i(184803),	-- Halberd of Agthia
		i(184798),	-- Hishtar's Severe Stiletto
		i(184802),	-- Jenrette's Jagged Warglaive
		i(184800),	-- Klontzas' Precise Pummeler
		i(184806),	-- Kudebeh's Remarkable Targe
		i(184801),	-- Locke's Essential Scepter
		i(181393),	-- Sylvan Whiteshield
		i(184804),	-- Ulfius' Calming Claymore
		i(184799),	-- Wolf-Fanged Fist
		i(184797),	-- Zink's Subtle Shank
	}),
})));