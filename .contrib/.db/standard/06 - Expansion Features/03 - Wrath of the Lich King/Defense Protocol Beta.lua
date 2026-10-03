---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if ANYCLASSIC
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_THREE, {
	n(DEFENSE_PROTOCOL_BETA, bubbleDownSelf({ ["timeline"] = { ADDED_3_4_2 } }, {
		["lvl"] = 80,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(18614, {	-- Defense Protocol Beta: Terminated (A)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18593,	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
						18592,	-- Defense Protocol Beta: Azjol-Nerub
						18594,	-- Defense Protocol Beta: Drak'Tharon Keep
						18596,	-- Defense Protocol Beta: Gundrak
						18598,	-- Defense Protocol Beta: Halls of Lightning
						18597,	-- Defense Protocol Beta: Halls of Stone
						18601,	-- Defense Protocol Beta: The Culling of Stratholme
						18591,	-- Defense Protocol Beta: The Nexus
						18599,	-- Defense Protocol Beta: The Oculus
						18595,	-- Defense Protocol Beta: The Violet Hold
						18677,	-- Defense Protocol Beta: Trial of the Champion (A)
						18590,	-- Defense Protocol Beta: Utgarde Keep
						18600,	-- Defense Protocol Beta: Utgarde Pinnacle
					}},
					["races"] = ALLIANCE_ONLY,
				}),
				ach(18688, {	-- Defense Protocol Beta: Terminated (H)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18593,	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
						18592,	-- Defense Protocol Beta: Azjol-Nerub
						18594,	-- Defense Protocol Beta: Drak'Tharon Keep
						18596,	-- Defense Protocol Beta: Gundrak
						18598,	-- Defense Protocol Beta: Halls of Lightning
						18597,	-- Defense Protocol Beta: Halls of Stone
						18601,	-- Defense Protocol Beta: The Culling of Stratholme
						18591,	-- Defense Protocol Beta: The Nexus
						18599,	-- Defense Protocol Beta: The Oculus
						18595,	-- Defense Protocol Beta: The Violet Hold
						18678,	-- Defense Protocol Beta: Trial of the Champion (H)
						18590,	-- Defense Protocol Beta: Utgarde Keep
						18600,	-- Defense Protocol Beta: Utgarde Pinnacle
					}},
					["races"] = HORDE_ONLY,
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
					412991, 424196,	-- Arcane Rune Buffs
					413169, 424203,	-- Blood Rune Buffs
					412770, 424194,	-- Frost Rune Buffs
					413573, 424211,	-- Gladiator Rune Buffs
					412867, 424210,	-- Plague Rune Buffs
					412470, 424201,	-- Shadow Rune Buffs
					413078, 424205	-- Titan Rune Buffs
				),
				["description"] = "Defeating the final boss encounter on Defense Protocol Beta will reward 1 Sidereal Essence and can also drop T8 tokens.",
				["maps"] = {
					AHNKAHET_THE_OLD_KINGDOM,
					AZJOL_NERUB, AZJOL_NERUB_FLOOR2, AZJOL_NERUB_FLOOR3,
					DRAKTHARON_KEEP, DRAKTHARON_KEEP_FLOOR2,
					GUNDRAK, GUNDRAK_FLOOR2,
					HALLS_OF_LIGHTNING, HALLS_OF_LIGHTNING_FLOOR2,
					HALLS_OF_STONE,
					THE_CULLING_OF_STRATHOLME, THE_CULLING_OF_STRATHOLME_FLOOR2,
					THE_NEXUS,
					THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5,
					THE_VIOLET_HOLD_WRATH,
					TRIAL_OF_THE_CHAMPION,
					UTGARDE_KEEP, UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3,
					UTGARDE_PINNACLE, UTGARDE_PINNACLE_FLOOR2,
				},
				["crs"] = {
					29311,	-- Herald Volazj [Ahn'kahet: The Old Kingdom]
					29120,	-- Anub'arak [Azjol-Nerub]
					26632,	-- The Prophet Tharon'ja [Drak'Tharon Keep]
					29306,	-- Gal'darah [Gundrak]
					28923,	-- Loken [Halls of Lightning]
					27978,	-- Sjonnir The Ironshaper [Halls of Stone]
					26533,	-- Mal'Ganis [The Culling of Stratholme]
					26723,	-- Keristrasza [The Nexus]
					27656,	-- Ley-Guardian Eregos [The Oculus]
					31134,	-- Cyanigosa [The Violet Hold (Wrath)]
					35451,	-- The Black Knight [Trial of the Champion]
					23954,	-- Ingvar the Plunderer [Utgarde Keep]
					26861,	-- King Ymiron [Utgarde Pinnacle]
				},
				["groups"] = {
					currency(SIDEREAL_ESSENCE),
					i(45647),	-- Helm of the Wayward Conqueror
					i(45648),	-- Helm of the Wayward Protector
					i(45649),	-- Helm of the Wayward Vanquisher
					i(45659),	-- Spaulders of the Wayward Conqueror
					i(45660),	-- Spaulders of the Wayward Protector
					i(45661),	-- Spaulders of the Wayward Vanquisher
					i(45635),	-- Chestguard of the Wayward Conqueror
					i(45636),	-- Chestguard of the Wayward Protector
					i(45637),	-- Chestguard of the Wayward Vanquisher
					i(45644),	-- Gloves of the Wayward Conqueror
					i(45645),	-- Gloves of the Wayward Protector
					i(45646),	-- Gloves of the Wayward Vanquisher
					i(45650),	-- Leggings of the Wayward Conqueror
					i(45651),	-- Leggings of the Wayward Protector
					i(45652),	-- Leggings of the Wayward Vanquisher
				},
			}),
			n(VENDORS, {
				n(207128, {	-- Animated Constellation <Sidereal Essence Exchange>
					["aqd"] = {
						["coord"] = { 38.0, 56.6, NORTHREND_DALARAN },
					},
					["hqd"] = {
						["coord"] = { 66.4, 24.6, NORTHREND_DALARAN },
					},
					["groups"] = {
						siderealessence(3, i(47556)),	-- Crusader Orb
						siderealessence(38, i(45868)),	-- Aesir's Edge
						siderealessence(38, i(46035)),	-- Aesuga, Hand of the Ardent Champion
						siderealessence(19, i(46068)),	-- Amice of Inconceivable Horror
						siderealessence(19, i(46048)),	-- Band of Lights
						siderealessence(19, i(45455)),	-- Belt of the Crystal Tree
						siderealessence(15, i(45888)),	-- Bitter Cold Armguards
						siderealessence(25, i(45867)),	-- Breastplate of the Stoneshaper
						siderealessence(32, i(46039)),	-- Breastplate of the Timeless
						siderealessence(25, i(46097)),	-- Caress of Insanity
						siderealessence(25, i(45930)),	-- Combatant's Bootblade
						siderealessence(24, i(46038)),	-- Dark Matter
						siderealessence(15, i(46032)),	-- Drape of the Faceless General
						siderealessence(19, i(46042)),	-- Drape of the Messenger
						siderealessence(15, i(45946)),	-- Fire Orchid Signet
						siderealessence(15, i(45869)),	-- Fluxing Energy Coils
						siderealessence(25, i(45982)),	-- Fused Alloy Legplates
						siderealessence(38, i(45990)),	-- Fusion Blade
						siderealessence(19, i(45928)),	-- Gauntlets of the Thunder God
						siderealessence(25, i(45295)),	-- Gilded Steel Legplates
						siderealessence(24, i(46043)),	-- Gloves of the Endless Dark
						siderealessence(19, i(45943)),	-- Gloves of Whispering Winds
						siderealessence(19, i(45988)),	-- Greaves of the Iron Army
						siderealessence(38, i(46067)),	-- Hammer of Crushing Whispers
						siderealessence(19, i(45293)),	-- Handguards of Potent Cures
						siderealessence(25, i(45887)),	-- Ice Layered Barrier
						siderealessence(38, i(45886)),	-- Icecore Staff
						siderealessence(25, i(46034)),	-- Leggings of Profound Darkness
						siderealessence(15, i(45456)),	-- Loop of the Agile
						siderealessence(38, i(45870)),	-- Magnetized Projectile Emitter
						siderealessence(19, i(45300)),	-- Mantle of Fiery Vengeance
						siderealessence(24, i(46051)),	-- Meteorite Crystal
						siderealessence(25, i(45993)),	-- Mimiron's Flight Goggles
						siderealessence(19, i(45931)),	-- Mjolnir Runestone
						siderealessence(19, i(46046)),	-- Nebula Band
						siderealessence(24, i(46044)),	-- Observer's Mantle
						siderealessence(15, i(45933)),	-- Pendant of the Shallow Grave
						siderealessence(19, i(46047)),	-- Pendant of the Somber Witness
						siderealessence(25, i(45448)),	-- Perilous Bite
						siderealessence(15, i(45294)),	-- Petrified Ivy Sprig
						siderealessence(24, i(46045)),	-- Pulsar Gloves
						siderealessence(15, i(45871)),	-- Seal of Ulduar
						siderealessence(15, i(45945)),	-- Seed of Budding Carnage
						siderealessence(25, i(45947)),	-- Serilas, Blood Blade of Invar One-Arm
						siderealessence(15, i(45297)),	-- Shimmering Seal
						siderealessence(25, i(45876)),	-- Shiver
						siderealessence(24, i(46037)),	-- Shoulderplates of the Celestial Watch
						siderealessence(19, i(45929)),	-- Sif's Remembrance
						siderealessence(15, i(46096)),	-- Signet of Soft Lament
						siderealessence(19, i(46095)),	-- Soul-Devouring Cinch
						siderealessence(24, i(46041)),	-- Starfall Girdle
						siderealessence(24, i(46050)),	-- Starlight Treads
						siderealessence(19, i(46040)),	-- Strength of the Heavens
						siderealessence(19, i(45989)),	-- Tempered Mercury Greaves
						siderealessence(25, i(45877)),	-- The Boreal Guard
						siderealessence(25, i(45449)),	-- The Masticator
						siderealessence(38, i(46033)),	-- Tortured Earth
						siderealessence(15, i(45296, {	-- Twirling Blades
							["timeline"] = { ADDED_3_4_2, REMOVED_5_0_4 },
						})),
						siderealessence(25, i(46036)),	-- Void Sabre
						siderealessence(15, i(45447)),	-- Watchful Eye of Fate
						siderealessence(32, i(46049)),	-- Zodiac Leggings
					},
				}),
			}),
		},
	})),
})));
-- #endif
