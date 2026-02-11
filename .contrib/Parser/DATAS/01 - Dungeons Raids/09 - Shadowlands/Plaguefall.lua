-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1183, {	-- Plaguefall
		["coord"] = { 59.3, 64.8, MALDRAXXUS },
		["maps"] = {
			1674,	-- Plaguefall
			1697,	-- The Festering Sanctum
		},
		["groups"] = {
			n(QUESTS, {
				q(59520, {	-- Plaguefall: Knee Deep In It
					["sourceQuests"] = { 59223 },	-- By Any Other Name
					["provider"] = { "n", 165052 },	-- Vial Master Lurgy
					["coord"] = { 59.4, 72.9, MALDRAXXUS },
					["groups"] = {
						i(176057),	-- Margrave Stradama's Plasm (QI!)
						i(183724),	-- Poxedskin Sample (QI!)
						i(175533),	-- Corpse-Stitcher's Amice
						i(175532),	-- Cruel Executioner's Pauldrons
						i(175531),	-- Deceitful Agent's Shoulderpads
						i(175534),	-- Flesh Architect's Epaulets
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2419, {	-- Globgrog
					["crs"] = { 164255 },	-- Globgrog
					["groups"] = {
						-- Conduits
						i(181786),	-- Eternal Hunger
						i(183506),	-- Lethal Poisons
						i(182465),	-- Truth's Wake
						i(183486),	-- Well-Honed Instincts
						-- Items
						i(178762),	-- Blightborne Chain Legguards
						i(178760),	-- Disgested Interrogator's Gaze
						i(178773),	-- Plague Handler's Greathelm
						i(178770),	-- Slimy Consumptive Organ
						i(178756),	-- Stradama's Misplaced Slippers
						i(178753),	-- Surgical Pustule Extractor
					},
				}),
				e(2403, {	-- Doctor Ickus
					["crs"] = { 164967 },	-- Doctor Ickus
					["groups"] = {
						-- Conduits
						i(180933),	-- Ashen Juggernaut
						i(182140),	-- Dissonant Echoes
						i(182752),	-- Fel Commando
						i(182126),	-- High Voltage
						i(181455),	-- Icy Propulsion
						i(181495),	-- Jade Bond
						-- Items
						i(178759),	-- Depraved Physician's Mask
						i(178775),	-- Fleshfused Crushers
						i(178763),	-- Malodorous Gristle-Sown Spaulders
						i(178771),	-- Phial of Putrefaction
						i(178752),	-- Sophisticated Bonecracker
						i(178767),	-- Tortured Assistant's Bindings
					},
				}),
				e(2423, {	-- Domina Venomblade
					["crs"] = { 164266 },	-- Domina Venomblade
					["groups"] = {
						-- Legendaries
						i(183345),	-- Memory of the Rotten
						i(183260),	-- Memory of the Serpentstalker's Trickery
						-- Conduits
						i(182208),	-- Lingering Plague
						i(182368),	-- Relentless Onslaught
						i(183167),	-- Strength of the Pack
						-- Items
						i(178933),	-- Arachnid Cipher Ring
						i(178932),	-- Belt of Wretched Manipulations
						i(178928),	-- Domina's Oozing Shiv
						i(178934),	-- Fastened Venombarb Binds
						i(178929),	-- Halberd of the Aranakk
						i(178930),	-- Mitts of Flawless Duplication
						i(178931),	-- Scarred Bloodbound Girdle
					},
				}),
				e(2404, {	-- Margrave Stradama
					["crs"] = { 164267 },	-- Margrave Stradama
					["groups"] = {
						ach(14369),	-- Plaguefall
						-- Legendaries
						i(183212),	-- Memory of a Darkglare Medallion
						i(182637),	-- Memory of Death's Certainty
						i(183319),	-- Memory of my Crystalline Reflection
						-- Conduits
						i(182747),	-- Cold Embrace
						i(183478),	-- Fury of the Skies
						i(181504),	-- Infernal Cascade
						i(182139),	-- Rabid Shadows
						-- Items
						i(178755),	-- Blighted Margrave's Cloak
						i(178757),	-- Gloves of Obscure Rituals
						i(178769),	-- Infinitely Divisible Ooze
						i(178761),	-- Leggings of the Erudite Scholar
						i(178774),	-- Muckwallow Stompers
						i(178764),	-- Plagueborne Shoulderguards
						i(178754),	-- Poxstorm, Longsword of Pestilence
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				n(SPECIAL, {
					mount(346141, {	-- Slime Serpent (MOUNT!)
						["description"] = "Requires solo kill of all bosses in either Heroic or Mythic Plaguefall.",
					}),
				}),
				e(2404, {	-- Margrave Stradama
					["crs"] = { 164267 },	-- Margrave Stradama
					["groups"] = {
						ach(14414),	-- Heroic: Plaguefall
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(14292),	-- Riding with my Slimes
				}),
				e(2419, {	-- Globgrog
					["crs"] = { 164255 },	-- Globgrog
					["groups"] = {
						ach(14347),	-- Full Gores Meal
					},
				}),
				e(2403, {	-- Doctor Ickus
					["crs"] = { 164967 },	-- Doctor Ickus
					["groups"] = {
						ach(14296),	-- Going Viral
					},
				}),
				e(2404, {	-- Margrave Stradama
					["crs"] = { 164267 },	-- Margrave Stradama
					["groups"] = {
						ach(14415),	-- Mythic: Plaguefall
						ach(14383),	-- Mythic: Plaguefall Guild Run
						i(181271),	-- Sludge Feeler (PET!)
					},
				}),
			}),
		},
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1183, {	-- Plaguefall
		q(62685),	-- Triggers when solo killing last boss of heroic/mythic Plaguefall for collecting the Slime Serpent mount (spellID 303424)
	}),
})));
