-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(COMMON_DUNGEON_DROPS, {
		["description"] = "The following items can be obtained in the mentioned dungeons.",
		["g"] = {
			i(141643, {	-- Technique: Codex of the Clear Mind (RECIPE!)
				["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS },
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(HANDS, bubbleDown({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109861),	-- Felflame Grips
					i(109845),	-- Frost-Touched Gloves
					i(109847),	-- Lightbinder Gloves
					i(109844),	-- Gloves of Arcane Mystery
					i(109846),	-- Gloves of Swirling Light
					i(109848),	-- Gauntlets of Burning Focus
					i(109862),	-- Blackwater Grips
					i(109849),	-- Bloodfeather Grips
					i(109850),	-- Crystalbinder Gloves
					i(109851),	-- Leafmender Grips
					i(109855),	-- Lavalink Grips
					i(109863),	-- Morningscale Gauntlet
					i(109854),	-- Rockhide Gloves
					i(109853),	-- Sharpeye Gauntlets
					i(109852),	-- Streamslither Gauntlets
					i(109858),	-- Goldsteel Gloves
					i(109859),	-- Gutcrusher Gauntlets
					i(109856),	-- Incarnadine Gauntlets
					i(109860),	-- Rivet-Sealed Crushers
					i(109857),	-- Verdant Plate Grips
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109861),	-- Felflame Grips
						i(109845),	-- Frost-Touched Gloves
						i(109847),	-- Lightbinder Gloves
						i(109844),	-- Gloves of Arcane Mystery
						i(109846),	-- Gloves of Swirling Light
						i(109848),	-- Gauntlets of Burning Focus
						i(109862),	-- Blackwater Grips
						i(109849),	-- Bloodfeather Grips
						i(109850),	-- Crystalbinder Gloves
						i(109851),	-- Leafmender Grips
						i(109855),	-- Lavalink Grips
						i(109863),	-- Morningscale Gauntlet
						i(109854),	-- Rockhide Gloves
						i(109853),	-- Sharpeye Gauntlets
						i(109852),	-- Streamslither Gauntlets
						i(109858),	-- Goldsteel Gloves
						i(109859),	-- Gutcrusher Gauntlets
						i(109856),	-- Incarnadine Gauntlets
						i(109860),	-- Rivet-Sealed Crushers
						i(109857),	-- Verdant Plate Grips
					})),
				})),
				n(WAIST, bubbleDown({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109828),	-- Felflame Belt
					i(109825),	-- Frost-Touched Cord
					i(109827),	-- Lightbinder Girdle
					i(109824),	-- Cord of Arcane Mystery
					i(109826),	-- Cord of Swirling Light
					i(109829),	-- Belt of Burning Focus
					i(109842),	-- Blackwater Belt
					i(109830),	-- Bloodfeather Girdle
					i(109831),	-- Crystalbinder Belt
					i(109832),	-- Leafmender Girdle
					i(109836),	-- Lavalink Girdle
					i(109843),	-- Morningscale Waistguard
					i(109835),	-- Rockhide Links
					i(109834),	-- Sharpeye Belt
					i(109833),	-- Streamslither Belt
					i(109839),	-- Goldsteel Belt
					i(109840),	-- Gutcrusher Greatbelt
					i(109837),	-- Incarnadine Girdle
					i(109841),	-- Rivet-Sealed Waistplate
					i(109838),	-- Verdant Plate Belt
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109828),	-- Felflame Belt
						i(109825),	-- Frost-Touched Cord
						i(109827),	-- Lightbinder Girdle
						i(109824),	-- Cord of Arcane Mystery
						i(109826),	-- Cord of Swirling Light
						i(109829),	-- Belt of Burning Focus
						i(109842),	-- Blackwater Belt
						i(109830),	-- Bloodfeather Girdle
						i(109831),	-- Crystalbinder Belt
						i(109832),	-- Leafmender Girdle
						i(109836),	-- Lavalink Girdle
						i(109843),	-- Morningscale Waistguard
						i(109835),	-- Rockhide Links
						i(109834),	-- Sharpeye Belt
						i(109833),	-- Streamslither Belt
						i(109839),	-- Goldsteel Belt
						i(109840),	-- Gutcrusher Greatbelt
						i(109837),	-- Incarnadine Girdle
						i(109841),	-- Rivet-Sealed Waistplate
						i(109838),	-- Verdant Plate Belt
					})),
				})),
				n(LEGS, bubbleDown({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SKY, BLOOM, UBRS }, },{
					i(109808),	-- Felflame Legwraps
					i(109805),	-- Frost-Touched Legwraps
					i(109807),	-- Lightbinder Leggings
					i(109804),	-- Trousers of Arcane Mystery
					i(109806),	-- Leggings of Swirling Light
					i(109809),	-- Legguards of Burning Focus
					i(109823),	-- Blackwater Leggings
					i(109810),	-- Bloodfeather Leggings
					i(109811),	-- Crystalbinder Legwraps
					i(109812),	-- Leafmender Legwraps
					i(109816),	-- Lavalink Legguards
					i(109817),	-- Morningscale Leggings
					i(109815),	-- Rockhide Leggings
					i(109814),	-- Sharpeye Legguards
					i(109813),	-- Streamslither Legguards
					i(109820),	-- Goldsteel Legplates
					i(109821),	-- Gutcrusher Legplates
					i(109818),	-- Incarnadine Legplates
					i(109822),	-- Rivet-Sealed Legplates
					i(109819),	-- Verdant Plate Legguards
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109808),	-- Felflame Legwraps
						i(109805),	-- Frost-Touched Legwraps
						i(109807),	-- Lightbinder Leggings
						i(109804),	-- Trousers of Arcane Mystery
						i(109806),	-- Leggings of Swirling Light
						i(109809),	-- Legguards of Burning Focus
						i(109823),	-- Blackwater Leggings
						i(109810),	-- Bloodfeather Leggings
						i(109811),	-- Crystalbinder Legwraps
						i(109812),	-- Leafmender Legwraps
						i(109816),	-- Lavalink Legguards
						i(109817),	-- Morningscale Leggings
						i(109815),	-- Rockhide Leggings
						i(109814),	-- Sharpeye Legguards
						i(109813),	-- Streamslither Legguards
						i(109820),	-- Goldsteel Legplates
						i(109821),	-- Gutcrusher Legplates
						i(109818),	-- Incarnadine Legplates
						i(109822),	-- Rivet-Sealed Legplates
						i(109819),	-- Verdant Plate Legguards
					})),
				})),
				n(CHEST, bubbleDown({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, BLOOM, UBRS }, },{
					i(109903),	-- Felflame Robes
					i(109900),	-- Frost-Touched Robes
					i(109902),	-- Lightbinder Robes
					i(109899),	-- Robes of Arcane Mystery
					i(109901),	-- Robes of Swirling Light
					i(109884),	-- Chestguard of Burning Focus
					i(109898),	-- Blackwater Wrap
					i(109885),	-- Bloodfeather Chestwrap
					i(109886),	-- Crystalbinder Chestguard
					i(109897),	-- Leafmender Robes
					i(109890),	-- Lavalink Ringmail
					i(109891),	-- Morningscale Chestguard
					i(109889),	-- Rockhide Ringmail
					i(109888),	-- Sharpeye Chestguard
					i(109887),	-- Streamslither Chestguard
					i(109894),	-- Goldsteel Chestguard
					i(109895),	-- Gutcrusher Chestplate
					i(109892),	-- Incarnadine Breastplate
					i(109896),	-- Rivet-Sealed Breastplate
					i(109893),	-- Verdant Plate Chest
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109903),	-- Felflame Robes
						i(109900),	-- Frost-Touched Robes
						i(109902),	-- Lightbinder Robes
						i(109899),	-- Robes of Arcane Mystery
						i(109901),	-- Robes of Swirling Light
						i(109884),	-- Chestguard of Burning Focus
						i(109898),	-- Blackwater Wrap
						i(109885),	-- Bloodfeather Chestwrap
						i(109886),	-- Crystalbinder Chestguard
						i(109897),	-- Leafmender Robes
						i(109890),	-- Lavalink Ringmail
						i(109891),	-- Morningscale Chestguard
						i(109889),	-- Rockhide Ringmail
						i(109888),	-- Sharpeye Chestguard
						i(109887),	-- Streamslither Chestguard
						i(109894),	-- Goldsteel Chestguard
						i(109895),	-- Gutcrusher Chestplate
						i(109892),	-- Incarnadine Breastplate
						i(109896),	-- Rivet-Sealed Breastplate
						i(109893),	-- Verdant Plate Chest
					})),
				})),
				n(FEET, bubbleDown({ ["crs"] = { AUCH, BSM, SBG, SKY, BLOOM, UBRS }, },{
					i(109797),	-- Felflame Sandals
					i(109785),	-- Frost-Touched Boots
					i(109796),	-- Lightbinder Treads
					i(109784),	-- Sandals of Arcane Mystery
					i(109786),	-- Sandals of Swirling Light
					i(109787),	-- Boots of Burning Focus
					i(109799),	-- Blackwater Boots
					i(109788),	-- Bloodfeather Treads
					i(109789),	-- Crystalbinder Sandals
					i(109798),	-- Leafmender Sandals
					i(109800),	-- Lavalink Stompers
					i(109801),	-- Morningscale Treads
					i(109792),	-- Rockhide Treads
					i(109791),	-- Sharpeye Greaves
					i(109790),	-- Streamslither Boots
					i(109795),	-- Goldsteel Sabatons
					i(109802),	-- Gutcrusher Stompers
					i(109793),	-- Incarnadine Greaves
					i(109803),	-- Rivet-Sealed Treads
					i(109794),	-- Verdant Plate Treads
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109797),	-- Felflame Sandals
						i(109785),	-- Frost-Touched Boots
						i(109796),	-- Lightbinder Treads
						i(109784),	-- Sandals of Arcane Mystery
						i(109786),	-- Sandals of Swirling Light
						i(109787),	-- Boots of Burning Focus
						i(109799),	-- Blackwater Boots
						i(109788),	-- Bloodfeather Treads
						i(109789),	-- Crystalbinder Sandals
						i(109798),	-- Leafmender Sandals
						i(109800),	-- Lavalink Stompers
						i(109801),	-- Morningscale Treads
						i(109792),	-- Rockhide Treads
						i(109791),	-- Sharpeye Greaves
						i(109790),	-- Streamslither Boots
						i(109795),	-- Goldsteel Sabatons
						i(109802),	-- Gutcrusher Stompers
						i(109793),	-- Incarnadine Greaves
						i(109803),	-- Rivet-Sealed Treads
						i(109794),	-- Verdant Plate Treads
					})),
				})),
				n(HEAD, bubbleDown({ ["crs"] = { BSM, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109974),	-- Felflame Hood
					i(109971),	-- Frost-Touched Hood
					i(109973),	-- Lightbinder Cover
					i(109970),	-- Hood of Arcane Mystery
					i(109972),	-- Hood of Swirling Light
					i(109975),	-- Hood of Burning Focus
					i(109979),	-- Blackwater Helm
					i(109976),	-- Bloodfeather Cowl
					i(109977),	-- Crystalbinder Helm
					i(109978),	-- Leafmender Hood
					i(109983),	-- Lavalink Helm
					i(109984),	-- Morningscale Cowl
					i(109982),	-- Rockhide Casque
					i(109981),	-- Sharpeye Gleam
					i(109980),	-- Streamslither Helm
					i(109987),	-- Goldsteel Greathelm
					i(109988),	-- Gutcrusher Coronet
					i(109985),	-- Incarnadine Greathelm
					i(109989),	-- Rivet-Sealed Casque
					i(109986),	-- Verdant Plate Crown
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109974),	-- Felflame Hood
						i(109971),	-- Frost-Touched Hood
						i(109973),	-- Lightbinder Cover
						i(109970),	-- Hood of Arcane Mystery
						i(109972),	-- Hood of Swirling Light
						i(109975),	-- Hood of Burning Focus
						i(109979),	-- Blackwater Helm
						i(109976),	-- Bloodfeather Cowl
						i(109977),	-- Crystalbinder Helm
						i(109978),	-- Leafmender Hood
						i(109983),	-- Lavalink Helm
						i(109984),	-- Morningscale Cowl
						i(109982),	-- Rockhide Casque
						i(109981),	-- Sharpeye Gleam
						i(109980),	-- Streamslither Helm
						i(109987),	-- Goldsteel Greathelm
						i(109988),	-- Gutcrusher Coronet
						i(109985),	-- Incarnadine Greathelm
						i(109989),	-- Rivet-Sealed Casque
						i(109986),	-- Verdant Plate Crown
					})),
				})),
				n(WRIST, bubbleDown({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109881),	-- Felflame Bracers
					i(109865),	-- Frost-Touched Wristwraps
					i(109867),	-- Lightbinder Wristwraps
					i(109864),	-- Bracers of Arcane Mystery
					i(109866),	-- Bracers of Swirling Light
					i(109868),	-- Bracers of Burning Focus
					i(109882),	-- Blackwater Wristguards
					i(109869),	-- Bloodfeather Bracers
					i(109870),	-- Crystalbinder Wristguards
					i(109871),	-- Leafmender Wraps
					i(109875),	-- Lavalink Bracers
					i(109883),	-- Morningscale Bracers
					i(109874),	-- Rockhide Wristguards
					i(109873),	-- Sharpeye Bracers
					i(109872),	-- Streamslither Bracers
					i(109878),	-- Goldsteel Bindings
					i(109879),	-- Gutcrusher Bracers
					i(109876),	-- Incarnadine Bracers
					i(109880),	-- Rivet-Sealed Bracers
					i(109877),	-- Verdant Plate Wristguards
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109881),	-- Felflame Bracers
						i(109865),	-- Frost-Touched Wristwraps
						i(109867),	-- Lightbinder Wristwraps
						i(109864),	-- Bracers of Arcane Mystery
						i(109866),	-- Bracers of Swirling Light
						i(109868),	-- Bracers of Burning Focus
						i(109882),	-- Blackwater Wristguards
						i(109869),	-- Bloodfeather Bracers
						i(109870),	-- Crystalbinder Wristguards
						i(109871),	-- Leafmender Wraps
						i(109875),	-- Lavalink Bracers
						i(109883),	-- Morningscale Bracers
						i(109874),	-- Rockhide Wristguards
						i(109873),	-- Sharpeye Bracers
						i(109872),	-- Streamslither Bracers
						i(109878),	-- Goldsteel Bindings
						i(109879),	-- Gutcrusher Bracers
						i(109876),	-- Incarnadine Bracers
						i(109880),	-- Rivet-Sealed Bracers
						i(109877),	-- Verdant Plate Wristguards
					})),
				})),
				n(SHOULDER, bubbleDown({ ["crs"] = { BSM, DOCKS, SKY, BLOOM, UBRS }, },{
					i(109948),	-- Felflame Spaulders
					i(109931),	-- Frost-Touched Shoulderpads
					i(109933),	-- Lightbinder Shoulderpads
					i(109930),	-- Mantle of Arcane Mystery
					i(109932),	-- Mantle of Swirling Light
					i(109934),	-- Spaulders of Burning Focus
					i(109938),	-- Blackwater Spaulders
					i(109935),	-- Bloodfeather Spaulders
					i(109936),	-- Crystalbinder Shoulderpads
					i(109937),	-- Leafmender Mantle
					i(109942),	-- Lavalink Spaulders
					i(109949),	-- Morningscale Spaulders
					i(109941),	-- Rockhide Shoulderguards
					i(109940),	-- Sharpeye Shoulderguards
					i(109939),	-- Streamslither Spaulders
					i(109945),	-- Goldsteel Shouldercaps
					i(109946),	-- Gutcrusher Shoulderplates
					i(109943),	-- Incarnadine Shoulderguard
					i(109947),	-- Rivet-Sealed Shoulderplates
					i(109944),	-- Verdant Plate Spaulders
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109948),	-- Felflame Spaulders
						i(109931),	-- Frost-Touched Shoulderpads
						i(109933),	-- Lightbinder Shoulderpads
						i(109930),	-- Mantle of Arcane Mystery
						i(109932),	-- Mantle of Swirling Light
						i(109934),	-- Spaulders of Burning Focus
						i(109938),	-- Blackwater Spaulders
						i(109935),	-- Bloodfeather Spaulders
						i(109936),	-- Crystalbinder Shoulderpads
						i(109937),	-- Leafmender Mantle
						i(109942),	-- Lavalink Spaulders
						i(109949),	-- Morningscale Spaulders
						i(109941),	-- Rockhide Shoulderguards
						i(109940),	-- Sharpeye Shoulderguards
						i(109939),	-- Streamslither Spaulders
						i(109945),	-- Goldsteel Shouldercaps
						i(109946),	-- Gutcrusher Shoulderplates
						i(109943),	-- Incarnadine Shoulderguard
						i(109947),	-- Rivet-Sealed Shoulderplates
						i(109944),	-- Verdant Plate Spaulders
					})),
				})),
				n(BACK, bubbleDown({ ["crs"] = { AUCH, BSM, SBG, BLOOM, UBRS }, },{
					i(109912),	-- Bloody-Blade Drape
					i(109911),	-- Cloak of Annealing Flesh
					i(109908),	-- Cloak of Arcane Mysteries
					i(109904),	-- Cloak of Cascading Blades
					i(109910),	-- Cloak of Mending Magics
					i(109929),	-- Cloak of Steeled Nerves
					i(109906),	-- Cloak of Violent Harmony
					i(109905),	-- Deadshot Greatcloak
					i(109914),	-- Drape of Dripping Runnels
					i(109926),	-- Drape of Frozen Dreams
					i(109909),	-- Drape of Iron Sutures
					i(109916),	-- Drape of Swirling Deflection
					i(109907),	-- Felbone Drape
					i(109925),	-- Forgeflame Greatcloak
					i(109913),	-- Headscythe Greatcloak
					i(109927),	-- Mistwoven Windcloak
					i(109915),	-- Rigid Scale Cloak
					i(109928),	-- Skullcracker Cloak
					i(109918),	-- Soot-Scarred Longcloak
					i(109917),	-- Three-Clefthoof Cape
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109912),	-- Bloody-Blade Drape
						i(109911),	-- Cloak of Annealing Flesh
						i(109908),	-- Cloak of Arcane Mysteries
						i(109904),	-- Cloak of Cascading Blades
						i(109910),	-- Cloak of Mending Magics
						i(109929),	-- Cloak of Steeled Nerves
						i(109906),	-- Cloak of Violent Harmony
						i(109905),	-- Deadshot Greatcloak
						i(109914),	-- Drape of Dripping Runnels
						i(109926),	-- Drape of Frozen Dreams
						i(109909),	-- Drape of Iron Sutures
						i(109916),	-- Drape of Swirling Deflection
						i(109907),	-- Felbone Drape
						i(109925),	-- Forgeflame Greatcloak
						i(109913),	-- Headscythe Greatcloak
						i(109927),	-- Mistwoven Windcloak
						i(109915),	-- Rigid Scale Cloak
						i(109928),	-- Skullcracker Cloak
						i(109918),	-- Soot-Scarred Longcloak
						i(109917),	-- Three-Clefthoof Cape
					})),
				})),
				n(NECK, bubbleDown({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109957),	-- Alc's Pendant of Fiery Dreams
					i(109962),	-- Bloodmist Pendant
					i(109959),	-- Chain of Soothing Light
					i(109969),	-- Choker of Weeping Viscera
					i(109955),	-- Demonbinder Cabochon
					i(109951),	-- Fireblade Collar
					i(109965),	-- Fistbreak Choker
					i(109968),	-- Flesh Beetle Brooch
					i(109963),	-- Goreclasp Choker
					i(109958),	-- Healing Leaf Necklace
					i(109954),	-- Magister's Chain
					i(109956),	-- Necklace of Endless Shadow
					i(109964),	-- Necklace of Furious Zeal
					i(109967),	-- Necklace of Holy Deflection
					i(109961),	-- Pendant of Purifying Mists
					i(109966),	-- Reinforced Bloodsteel Gorget
					i(109952),	-- Skulltooth Chain
					i(109950),	-- Stormshot Choker
					i(109960),	-- Wavesurge Choker
					i(109953),	-- Windseal Necklace
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109957),	-- Alc's Pendant of Fiery Dreams
						i(109962),	-- Bloodmist Pendant
						i(109959),	-- Chain of Soothing Light
						i(109969),	-- Choker of Weeping Viscera
						i(109955),	-- Demonbinder Cabochon
						i(109951),	-- Fireblade Collar
						i(109965),	-- Fistbreak Choker
						i(109968),	-- Flesh Beetle Brooch
						i(109963),	-- Goreclasp Choker
						i(109958),	-- Healing Leaf Necklace
						i(109954),	-- Magister's Chain
						i(109956),	-- Necklace of Endless Shadow
						i(109964),	-- Necklace of Furious Zeal
						i(109967),	-- Necklace of Holy Deflection
						i(109961),	-- Pendant of Purifying Mists
						i(109966),	-- Reinforced Bloodsteel Gorget
						i(109952),	-- Skulltooth Chain
						i(109950),	-- Stormshot Choker
						i(109960),	-- Wavesurge Choker
						i(109953),	-- Windseal Necklace
					})),
				})),
				n(FINGER, bubbleDown({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109779),	-- Ancient Draenic Loop
					i(109768),	-- Band of Growing Leaves
					i(109773),	-- Band of Iron Scale
					i(109783),	-- Band of the Stalwart Stanchion
					i(109775),	-- Bladebinder Ring
					i(109771),	-- Bloodied Ring of Mytosis
					i(109761),	-- Bloodthorn Band
					i(109760),	-- Ced's Chiming Circle
					i(109766),	-- Darkflame Loop
					i(109763),	-- Diamondglow Circle
					i(109782),	-- Disease-Binder Seal
					i(109765),	-- Golem's Gleaming Eye
					i(109772),	-- Knucklebone of Lo'Dronar
					i(109764),	-- Mark of Ice
					i(109767),	-- Ring of Purified Light
					i(109774),	-- Ring of Ripped Flesh
					i(109759),	-- Ro-Ger's Brown Diamond Seal
					i(109776),	-- Seal of Resilient Fortitude
					i(109781),	-- Seal of Vindication
					i(109770),	-- Signet of Crashing Waves
					i(109762),	-- Signet of Radiant Leaves
					i(109780),	-- Signet of Shifting Magics
					i(109778),	-- Signet of the Glorious Protector
					i(109769),	-- Slicebinder Loop
					i(109777),	-- Unsullied Signet
					n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
						i(109779),	-- Ancient Draenic Loop
						i(109768),	-- Band of Growing Leaves
						i(109773),	-- Band of Iron Scale
						i(109783),	-- Band of the Stalwart Stanchion
						i(109775),	-- Bladebinder Ring
						i(109771),	-- Bloodied Ring of Mytosis
						i(109761),	-- Bloodthorn Band
						i(109760),	-- Ced's Chiming Circle
						i(109766),	-- Darkflame Loop
						i(109763),	-- Diamondglow Circle
						i(109782),	-- Disease-Binder Seal
						i(109765),	-- Golem's Gleaming Eye
						i(109772),	-- Knucklebone of Lo'Dronar
						i(109764),	-- Mark of Ice
						i(109767),	-- Ring of Purified Light
						i(109774),	-- Ring of Ripped Flesh
						i(109759),	-- Ro-Ger's Brown Diamond Seal
						i(109776),	-- Seal of Resilient Fortitude
						i(109781),	-- Seal of Vindication
						i(109770),	-- Signet of Crashing Waves
						i(109762),	-- Signet of Radiant Leaves
						i(109780),	-- Signet of Shifting Magics
						i(109778),	-- Signet of the Glorious Protector
						i(109769),	-- Slicebinder Loop
						i(109777),	-- Unsullied Signet
					})),
				})),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				n(HANDS, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109861),	-- Felflame Grips
					i(109845),	-- Frost-Touched Gloves
					i(109847),	-- Lightbinder Gloves
					i(109844),	-- Gloves of Arcane Mystery
					i(109846),	-- Gloves of Swirling Light
					i(109848),	-- Gauntlets of Burning Focus
					i(109862),	-- Blackwater Grips
					i(109849),	-- Bloodfeather Grips
					i(109850),	-- Crystalbinder Gloves
					i(109851),	-- Leafmender Grips
					i(109855),	-- Lavalink Grips
					i(109863),	-- Morningscale Gauntlet
					i(109854),	-- Rockhide Gloves
					i(109853),	-- Sharpeye Gauntlets
					i(109852),	-- Streamslither Gauntlets
					i(109858),	-- Goldsteel Gloves
					i(109859),	-- Gutcrusher Gauntlets
					i(109856),	-- Incarnadine Gauntlets
					i(109860),	-- Rivet-Sealed Crushers
					i(109857),	-- Verdant Plate Grips
				})),
				n(WAIST, sharedData({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109828),	-- Felflame Belt
					i(109825),	-- Frost-Touched Cord
					i(109827),	-- Lightbinder Girdle
					i(109824),	-- Cord of Arcane Mystery
					i(109826),	-- Cord of Swirling Light
					i(109829),	-- Belt of Burning Focus
					i(109842),	-- Blackwater Belt
					i(109830),	-- Bloodfeather Girdle
					i(109831),	-- Crystalbinder Belt
					i(109832),	-- Leafmender Girdle
					i(109836),	-- Lavalink Girdle
					i(109843),	-- Morningscale Waistguard
					i(109835),	-- Rockhide Links
					i(109834),	-- Sharpeye Belt
					i(109833),	-- Streamslither Belt
					i(109839),	-- Goldsteel Belt
					i(109840),	-- Gutcrusher Greatbelt
					i(109837),	-- Incarnadine Girdle
					i(109841),	-- Rivet-Sealed Waistplate
					i(109838),	-- Verdant Plate Belt
				})),
				n(LEGS, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SKY, BLOOM, UBRS }, },{
					i(109808),	-- Felflame Legwraps
					i(109805),	-- Frost-Touched Legwraps
					i(109807),	-- Lightbinder Leggings
					i(109804),	-- Trousers of Arcane Mystery
					i(109806),	-- Leggings of Swirling Light
					i(109809),	-- Legguards of Burning Focus
					i(109823),	-- Blackwater Leggings
					i(109810),	-- Bloodfeather Leggings
					i(109811),	-- Crystalbinder Legwraps
					i(109812),	-- Leafmender Legwraps
					i(109816),	-- Lavalink Legguards
					i(109817),	-- Morningscale Leggings
					i(109815),	-- Rockhide Leggings
					i(109814),	-- Sharpeye Legguards
					i(109813),	-- Streamslither Legguards
					i(109820),	-- Goldsteel Legplates
					i(109821),	-- Gutcrusher Legplates
					i(109818),	-- Incarnadine Legplates
					i(109822),	-- Rivet-Sealed Legplates
					i(109819),	-- Verdant Plate Legguards
				})),
				n(CHEST, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, BLOOM, UBRS }, },{
					i(109903),	-- Felflame Robes
					i(109900),	-- Frost-Touched Robes
					i(109902),	-- Lightbinder Robes
					i(109899),	-- Robes of Arcane Mystery
					i(109901),	-- Robes of Swirling Light
					i(109884),	-- Chestguard of Burning Focus
					i(109898),	-- Blackwater Wrap
					i(109885),	-- Bloodfeather Chestwrap
					i(109886),	-- Crystalbinder Chestguard
					i(109897),	-- Leafmender Robes
					i(109890),	-- Lavalink Ringmail
					i(109891),	-- Morningscale Chestguard
					i(109889),	-- Rockhide Ringmail
					i(109888),	-- Sharpeye Chestguard
					i(109887),	-- Streamslither Chestguard
					i(109894),	-- Goldsteel Chestguard
					i(109895),	-- Gutcrusher Chestplate
					i(109892),	-- Incarnadine Breastplate
					i(109896),	-- Rivet-Sealed Breastplate
					i(109893),	-- Verdant Plate Chest
				})),
				n(FEET, sharedData({ ["crs"] = { AUCH, BSM, SBG, SKY, BLOOM, UBRS }, },{
					i(109797),	-- Felflame Sandals
					i(109785),	-- Frost-Touched Boots
					i(109796),	-- Lightbinder Treads
					i(109784),	-- Sandals of Arcane Mystery
					i(109786),	-- Sandals of Swirling Light
					i(109787),	-- Boots of Burning Focus
					i(109799),	-- Blackwater Boots
					i(109788),	-- Bloodfeather Treads
					i(109789),	-- Crystalbinder Sandals
					i(109798),	-- Leafmender Sandals
					i(109800),	-- Lavalink Stompers
					i(109801),	-- Morningscale Treads
					i(109792),	-- Rockhide Treads
					i(109791),	-- Sharpeye Greaves
					i(109790),	-- Streamslither Boots
					i(109795),	-- Goldsteel Sabatons
					i(109802),	-- Gutcrusher Stompers
					i(109793),	-- Incarnadine Greaves
					i(109803),	-- Rivet-Sealed Treads
					i(109794),	-- Verdant Plate Treads
				})),
				n(HEAD, sharedData({ ["crs"] = { BSM, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109974),	-- Felflame Hood
					i(109971),	-- Frost-Touched Hood
					i(109973),	-- Lightbinder Cover
					i(109970),	-- Hood of Arcane Mystery
					i(109972),	-- Hood of Swirling Light
					i(109975),	-- Hood of Burning Focus
					i(109979),	-- Blackwater Helm
					i(109976),	-- Bloodfeather Cowl
					i(109977),	-- Crystalbinder Helm
					i(109978),	-- Leafmender Hood
					i(109983),	-- Lavalink Helm
					i(109984),	-- Morningscale Cowl
					i(109982),	-- Rockhide Casque
					i(109981),	-- Sharpeye Gleam
					i(109980),	-- Streamslither Helm
					i(109987),	-- Goldsteel Greathelm
					i(109988),	-- Gutcrusher Coronet
					i(109985),	-- Incarnadine Greathelm
					i(109989),	-- Rivet-Sealed Casque
					i(109986),	-- Verdant Plate Crown
				})),
				n(WRIST, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109881),	-- Felflame Bracers
					i(109865),	-- Frost-Touched Wristwraps
					i(109867),	-- Lightbinder Wristwraps
					i(109864),	-- Bracers of Arcane Mystery
					i(109866),	-- Bracers of Swirling Light
					i(109868),	-- Bracers of Burning Focus
					i(109882),	-- Blackwater Wristguards
					i(109869),	-- Bloodfeather Bracers
					i(109870),	-- Crystalbinder Wristguards
					i(109871),	-- Leafmender Wraps
					i(109875),	-- Lavalink Bracers
					i(109883),	-- Morningscale Bracers
					i(109874),	-- Rockhide Wristguards
					i(109873),	-- Sharpeye Bracers
					i(109872),	-- Streamslither Bracers
					i(109878),	-- Goldsteel Bindings
					i(109879),	-- Gutcrusher Bracers
					i(109876),	-- Incarnadine Bracers
					i(109880),	-- Rivet-Sealed Bracers
					i(109877),	-- Verdant Plate Wristguards
				})),
				n(SHOULDER, sharedData({ ["crs"] = { BSM, DOCKS, SKY, BLOOM, UBRS }, },{
					i(109948),	-- Felflame Spaulders
					i(109931),	-- Frost-Touched Shoulderpads
					i(109933),	-- Lightbinder Shoulderpads
					i(109930),	-- Mantle of Arcane Mystery
					i(109932),	-- Mantle of Swirling Light
					i(109934),	-- Spaulders of Burning Focus
					i(109938),	-- Blackwater Spaulders
					i(109935),	-- Bloodfeather Spaulders
					i(109936),	-- Crystalbinder Shoulderpads
					i(109937),	-- Leafmender Mantle
					i(109942),	-- Lavalink Spaulders
					i(109949),	-- Morningscale Spaulders
					i(109941),	-- Rockhide Shoulderguards
					i(109940),	-- Sharpeye Shoulderguards
					i(109939),	-- Streamslither Spaulders
					i(109945),	-- Goldsteel Shouldercaps
					i(109946),	-- Gutcrusher Shoulderplates
					i(109943),	-- Incarnadine Shoulderguard
					i(109947),	-- Rivet-Sealed Shoulderplates
					i(109944),	-- Verdant Plate Spaulders
				})),
				n(BACK, sharedData({ ["crs"] = { AUCH, BSM, SBG, BLOOM, UBRS }, },{
					i(109912),	-- Bloody-Blade Drape
					i(109911),	-- Cloak of Annealing Flesh
					i(109908),	-- Cloak of Arcane Mysteries
					i(109904),	-- Cloak of Cascading Blades
					i(109910),	-- Cloak of Mending Magics
					i(109929),	-- Cloak of Steeled Nerves
					i(109906),	-- Cloak of Violent Harmony
					i(109905),	-- Deadshot Greatcloak
					i(109914),	-- Drape of Dripping Runnels
					i(109926),	-- Drape of Frozen Dreams
					i(109909),	-- Drape of Iron Sutures
					i(109916),	-- Drape of Swirling Deflection
					i(109907),	-- Felbone Drape
					i(109925),	-- Forgeflame Greatcloak
					i(109913),	-- Headscythe Greatcloak
					i(109927),	-- Mistwoven Windcloak
					i(109915),	-- Rigid Scale Cloak
					i(109928),	-- Skullcracker Cloak
					i(109918),	-- Soot-Scarred Longcloak
					i(109917),	-- Three-Clefthoof Cape
				})),
				n(NECK, sharedData({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109957),	-- Alc's Pendant of Fiery Dreams
					i(109962),	-- Bloodmist Pendant
					i(109959),	-- Chain of Soothing Light
					i(109969),	-- Choker of Weeping Viscera
					i(109955),	-- Demonbinder Cabochon
					i(109951),	-- Fireblade Collar
					i(109965),	-- Fistbreak Choker
					i(109968),	-- Flesh Beetle Brooch
					i(109963),	-- Goreclasp Choker
					i(109958),	-- Healing Leaf Necklace
					i(109954),	-- Magister's Chain
					i(109956),	-- Necklace of Endless Shadow
					i(109964),	-- Necklace of Furious Zeal
					i(109967),	-- Necklace of Holy Deflection
					i(109961),	-- Pendant of Purifying Mists
					i(109966),	-- Reinforced Bloodsteel Gorget
					i(109952),	-- Skulltooth Chain
					i(109950),	-- Stormshot Choker
					i(109960),	-- Wavesurge Choker
					i(109953),	-- Windseal Necklace
				})),
				n(FINGER, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
					i(109779),	-- Ancient Draenic Loop
					i(109768),	-- Band of Growing Leaves
					i(109773),	-- Band of Iron Scale
					i(109783),	-- Band of the Stalwart Stanchion
					i(109775),	-- Bladebinder Ring
					i(109771),	-- Bloodied Ring of Mytosis
					i(109761),	-- Bloodthorn Band
					i(109760),	-- Ced's Chiming Circle
					i(109766),	-- Darkflame Loop
					i(109763),	-- Diamondglow Circle
					i(109782),	-- Disease-Binder Seal
					i(109765),	-- Golem's Gleaming Eye
					i(109772),	-- Knucklebone of Lo'Dronar
					i(109764),	-- Mark of Ice
					i(109767),	-- Ring of Purified Light
					i(109774),	-- Ring of Ripped Flesh
					i(109759),	-- Ro-Ger's Brown Diamond Seal
					i(109776),	-- Seal of Resilient Fortitude
					i(109781),	-- Seal of Vindication
					i(109770),	-- Signet of Crashing Waves
					i(109762),	-- Signet of Radiant Leaves
					i(109780),	-- Signet of Shifting Magics
					i(109778),	-- Signet of the Glorious Protector
					i(109769),	-- Slicebinder Loop
					i(109777),	-- Unsullied Signet
				})),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					n(HANDS, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
						i(109861),	-- Felflame Grips
						i(109845),	-- Frost-Touched Gloves
						i(109847),	-- Lightbinder Gloves
						i(109844),	-- Gloves of Arcane Mystery
						i(109846),	-- Gloves of Swirling Light
						i(109848),	-- Gauntlets of Burning Focus
						i(109862),	-- Blackwater Grips
						i(109849),	-- Bloodfeather Grips
						i(109850),	-- Crystalbinder Gloves
						i(109851),	-- Leafmender Grips
						i(109855),	-- Lavalink Grips
						i(109863),	-- Morningscale Gauntlet
						i(109854),	-- Rockhide Gloves
						i(109853),	-- Sharpeye Gauntlets
						i(109852),	-- Streamslither Gauntlets
						i(109858),	-- Goldsteel Gloves
						i(109859),	-- Gutcrusher Gauntlets
						i(109856),	-- Incarnadine Gauntlets
						i(109860),	-- Rivet-Sealed Crushers
						i(109857),	-- Verdant Plate Grips
					})),
					n(WAIST, sharedData({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
						i(109828),	-- Felflame Belt
						i(109825),	-- Frost-Touched Cord
						i(109827),	-- Lightbinder Girdle
						i(109824),	-- Cord of Arcane Mystery
						i(109826),	-- Cord of Swirling Light
						i(109829),	-- Belt of Burning Focus
						i(109842),	-- Blackwater Belt
						i(109830),	-- Bloodfeather Girdle
						i(109831),	-- Crystalbinder Belt
						i(109832),	-- Leafmender Girdle
						i(109836),	-- Lavalink Girdle
						i(109843),	-- Morningscale Waistguard
						i(109835),	-- Rockhide Links
						i(109834),	-- Sharpeye Belt
						i(109833),	-- Streamslither Belt
						i(109839),	-- Goldsteel Belt
						i(109840, { ["ItemAppearanceModifierID"] = 1 }),	-- Gutcrusher Greatbelt
						i(109837),	-- Incarnadine Girdle
						i(109841),	-- Rivet-Sealed Waistplate
						i(109838),	-- Verdant Plate Belt
					})),
					n(LEGS, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SKY, BLOOM, UBRS }, },{
						i(109808),	-- Felflame Legwraps
						i(109805),	-- Frost-Touched Legwraps
						i(109807),	-- Lightbinder Leggings
						i(109804),	-- Trousers of Arcane Mystery
						i(109806),	-- Leggings of Swirling Light
						i(109809),	-- Legguards of Burning Focus
						i(109823),	-- Blackwater Leggings
						i(109810),	-- Bloodfeather Leggings
						i(109811),	-- Crystalbinder Legwraps
						i(109812),	-- Leafmender Legwraps
						i(109816),	-- Lavalink Legguards
						i(109817),	-- Morningscale Leggings
						i(109815),	-- Rockhide Leggings
						i(109814),	-- Sharpeye Legguards
						i(109813),	-- Streamslither Legguards
						i(109820),	-- Goldsteel Legplates
						i(109821),	-- Gutcrusher Legplates
						i(109818),	-- Incarnadine Legplates
						i(109822),	-- Rivet-Sealed Legplates
						i(109819),	-- Verdant Plate Legguards
					})),
					n(CHEST, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, BLOOM, UBRS }, },{
						i(109903),	-- Felflame Robes
						i(109900),	-- Frost-Touched Robes
						i(109902),	-- Lightbinder Robes
						i(109899),	-- Robes of Arcane Mystery
						i(109901),	-- Robes of Swirling Light
						i(109884),	-- Chestguard of Burning Focus
						i(109898),	-- Blackwater Wrap
						i(109885),	-- Bloodfeather Chestwrap
						i(109886),	-- Crystalbinder Chestguard
						i(109897),	-- Leafmender Robes
						i(109890),	-- Lavalink Ringmail
						i(109891),	-- Morningscale Chestguard
						i(109889),	-- Rockhide Ringmail
						i(109888),	-- Sharpeye Chestguard
						i(109887),	-- Streamslither Chestguard
						i(109894),	-- Goldsteel Chestguard
						i(109895),	-- Gutcrusher Chestplate
						i(109892),	-- Incarnadine Breastplate
						i(109896),	-- Rivet-Sealed Breastplate
						i(109893),	-- Verdant Plate Chest
					})),
					n(FEET, sharedData({ ["crs"] = { AUCH, BSM, SBG, SKY, BLOOM, UBRS }, },{
						i(109797),	-- Felflame Sandals
						i(109785),	-- Frost-Touched Boots
						i(109796),	-- Lightbinder Treads
						i(109784),	-- Sandals of Arcane Mystery
						i(109786),	-- Sandals of Swirling Light
						i(109787),	-- Boots of Burning Focus
						i(109799),	-- Blackwater Boots
						i(109788),	-- Bloodfeather Treads
						i(109789),	-- Crystalbinder Sandals
						i(109798),	-- Leafmender Sandals
						i(109800),	-- Lavalink Stompers
						i(109801),	-- Morningscale Treads
						i(109792),	-- Rockhide Treads
						i(109791),	-- Sharpeye Greaves
						i(109790),	-- Streamslither Boots
						i(109795),	-- Goldsteel Sabatons
						i(109802),	-- Gutcrusher Stompers
						i(109793),	-- Incarnadine Greaves
						i(109803),	-- Rivet-Sealed Treads
						i(109794),	-- Verdant Plate Treads
					})),
					n(HEAD, sharedData({ ["crs"] = { BSM, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
						i(109974),	-- Felflame Hood
						i(109971),	-- Frost-Touched Hood
						i(109973),	-- Lightbinder Cover
						i(109970),	-- Hood of Arcane Mystery
						i(109972),	-- Hood of Swirling Light
						i(109975),	-- Hood of Burning Focus
						i(109979),	-- Blackwater Helm
						i(109976),	-- Bloodfeather Cowl
						i(109977),	-- Crystalbinder Helm
						i(109978),	-- Leafmender Hood
						i(109983),	-- Lavalink Helm
						i(109984),	-- Morningscale Cowl
						i(109982),	-- Rockhide Casque
						i(109981),	-- Sharpeye Gleam
						i(109980),	-- Streamslither Helm
						i(109987),	-- Goldsteel Greathelm
						i(109988),	-- Gutcrusher Coronet
						i(109985),	-- Incarnadine Greathelm
						i(109989),	-- Rivet-Sealed Casque
						i(109986),	-- Verdant Plate Crown
					})),
					n(WRIST, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
						i(109881),	-- Felflame Bracers
						i(109865),	-- Frost-Touched Wristwraps
						i(109867),	-- Lightbinder Wristwraps
						i(109864),	-- Bracers of Arcane Mystery
						i(109866),	-- Bracers of Swirling Light
						i(109868),	-- Bracers of Burning Focus
						i(109882),	-- Blackwater Wristguards
						i(109869),	-- Bloodfeather Bracers
						i(109870),	-- Crystalbinder Wristguards
						i(109871),	-- Leafmender Wraps
						i(109875),	-- Lavalink Bracers
						i(109883),	-- Morningscale Bracers
						i(109874),	-- Rockhide Wristguards
						i(109873),	-- Sharpeye Bracers
						i(109872),	-- Streamslither Bracers
						i(109878),	-- Goldsteel Bindings
						i(109879),	-- Gutcrusher Bracers
						i(109876),	-- Incarnadine Bracers
						i(109880),	-- Rivet-Sealed Bracers
						i(109877),	-- Verdant Plate Wristguards
					})),
					n(SHOULDER, sharedData({ ["crs"] = { BSM, DOCKS, SKY, BLOOM, UBRS }, },{
						i(109948),	-- Felflame Spaulders
						i(109931),	-- Frost-Touched Shoulderpads
						i(109933),	-- Lightbinder Shoulderpads
						i(109930),	-- Mantle of Arcane Mystery
						i(109932),	-- Mantle of Swirling Light
						i(109934),	-- Spaulders of Burning Focus
						i(109938),	-- Blackwater Spaulders
						i(109935),	-- Bloodfeather Spaulders
						i(109936),	-- Crystalbinder Shoulderpads
						i(109937),	-- Leafmender Mantle
						i(109942),	-- Lavalink Spaulders
						i(109949),	-- Morningscale Spaulders
						i(109941),	-- Rockhide Shoulderguards
						i(109940),	-- Sharpeye Shoulderguards
						i(109939),	-- Streamslither Spaulders
						i(109945),	-- Goldsteel Shouldercaps
						i(109946),	-- Gutcrusher Shoulderplates
						i(109943),	-- Incarnadine Shoulderguard
						i(109947),	-- Rivet-Sealed Shoulderplates
						i(109944),	-- Verdant Plate Spaulders
					})),
					n(BACK, sharedData({ ["crs"] = { AUCH, BSM, SBG, BLOOM, UBRS }, },{
						i(109912),	-- Bloody-Blade Drape
						i(109911),	-- Cloak of Annealing Flesh
						i(109908),	-- Cloak of Arcane Mysteries
						i(109904),	-- Cloak of Cascading Blades
						i(109910),	-- Cloak of Mending Magics
						i(109929),	-- Cloak of Steeled Nerves
						i(109906),	-- Cloak of Violent Harmony
						i(109905),	-- Deadshot Greatcloak
						i(109914),	-- Drape of Dripping Runnels
						i(109926),	-- Drape of Frozen Dreams
						i(109909),	-- Drape of Iron Sutures
						i(109916),	-- Drape of Swirling Deflection
						i(109907),	-- Felbone Drape
						i(109925),	-- Forgeflame Greatcloak
						i(109913),	-- Headscythe Greatcloak
						i(109927),	-- Mistwoven Windcloak
						i(109915),	-- Rigid Scale Cloak
						i(109928),	-- Skullcracker Cloak
						i(109918),	-- Soot-Scarred Longcloak
						i(109917),	-- Three-Clefthoof Cape
					})),
					n(NECK, sharedData({ ["crs"] = { AUCH, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
						i(109957),	-- Alc's Pendant of Fiery Dreams
						i(109962),	-- Bloodmist Pendant
						i(109959),	-- Chain of Soothing Light
						i(109969),	-- Choker of Weeping Viscera
						i(109955),	-- Demonbinder Cabochon
						i(109951),	-- Fireblade Collar
						i(109965),	-- Fistbreak Choker
						i(109968),	-- Flesh Beetle Brooch
						i(109963),	-- Goreclasp Choker
						i(109958),	-- Healing Leaf Necklace
						i(109954),	-- Magister's Chain
						i(109956),	-- Necklace of Endless Shadow
						i(109964),	-- Necklace of Furious Zeal
						i(109967),	-- Necklace of Holy Deflection
						i(109961),	-- Pendant of Purifying Mists
						i(109966),	-- Reinforced Bloodsteel Gorget
						i(109952),	-- Skulltooth Chain
						i(109950),	-- Stormshot Choker
						i(109960),	-- Wavesurge Choker
						i(109953),	-- Windseal Necklace
					})),
					n(FINGER, sharedData({ ["crs"] = { AUCH, BSM, RAIL, DOCKS, SBG, SKY, BLOOM, UBRS }, },{
						i(109779),	-- Ancient Draenic Loop
						i(109768),	-- Band of Growing Leaves
						i(109773),	-- Band of Iron Scale
						i(109783),	-- Band of the Stalwart Stanchion
						i(109775),	-- Bladebinder Ring
						i(109771),	-- Bloodied Ring of Mytosis
						i(109761),	-- Bloodthorn Band
						i(109760),	-- Ced's Chiming Circle
						i(109766),	-- Darkflame Loop
						i(109763),	-- Diamondglow Circle
						i(109782),	-- Disease-Binder Seal
						i(109765),	-- Golem's Gleaming Eye
						i(109772),	-- Knucklebone of Lo'Dronar
						i(109764),	-- Mark of Ice
						i(109767),	-- Ring of Purified Light
						i(109774),	-- Ring of Ripped Flesh
						i(109759),	-- Ro-Ger's Brown Diamond Seal
						i(109776),	-- Seal of Resilient Fortitude
						i(109781),	-- Seal of Vindication
						i(109770),	-- Signet of Crashing Waves
						i(109762),	-- Signet of Radiant Leaves
						i(109780),	-- Signet of Shifting Magics
						i(109778),	-- Signet of the Glorious Protector
						i(109769),	-- Slicebinder Loop
						i(109777),	-- Unsullied Signet
					})),
				},
			}),
		},
	}),
})));