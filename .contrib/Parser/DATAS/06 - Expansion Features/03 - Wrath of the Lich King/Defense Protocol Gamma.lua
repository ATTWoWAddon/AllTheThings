---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if ANYCLASSIC
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_FOUR, {
	n(DEFENSE_PROTOCOL_GAMMA, bubbleDownSelf({ ["timeline"] = { ADDED_3_4_3 } }, {
		["lvl"] = 80,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19439, {	-- Defense Protocol Gamma: Terminated (A)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19430,	-- Defense Protocol Gamma: Ahn'kahet: The Old Kingdom
						19429,	-- Defense Protocol Gamma: Azjol-Nerub
						19431,	-- Defense Protocol Gamma: Drak'Tharon Keep
						19433,	-- Defense Protocol Gamma: Gundrak
						19435,	-- Defense Protocol Gamma: Halls of Lightning
						19434,	-- Defense Protocol Gamma: Halls of Stone
						19438,	-- Defense Protocol Gamma: The Culling of Stratholme
						19428,	-- Defense Protocol Gamma: The Nexus
						19436,	-- Defense Protocol Gamma: The Oculus
						19432,	-- Defense Protocol Gamma: The Violet Hold
						19426,	-- Defense Protocol Gamma: Trial of the Champion (A)
						19427,	-- Defense Protocol Gamma: Utgarde Keep
						19437,	-- Defense Protocol Gamma: Utgarde Pinnacle
					}},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(211082),	-- Arfus
					},
				}),
				ach(19440, {	-- Defense Protocol Gamma: Terminated (H)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19430,	-- Defense Protocol Gamma: Ahn'kahet: The Old Kingdom
						19429,	-- Defense Protocol Gamma: Azjol-Nerub
						19431,	-- Defense Protocol Gamma: Drak'Tharon Keep
						19433,	-- Defense Protocol Gamma: Gundrak
						19435,	-- Defense Protocol Gamma: Halls of Lightning
						19434,	-- Defense Protocol Gamma: Halls of Stone
						19438,	-- Defense Protocol Gamma: The Culling of Stratholme
						19428,	-- Defense Protocol Gamma: The Nexus
						19436,	-- Defense Protocol Gamma: The Oculus
						19432,	-- Defense Protocol Gamma: The Violet Hold
						19425,	-- Defense Protocol Gamma: Trial of the Champion (H)
						19427,	-- Defense Protocol Gamma: Utgarde Keep
						19437,	-- Defense Protocol Gamma: Utgarde Pinnacle
					}},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(211082),	-- Arfus
					},
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(
					424196,	-- Arcane Rune Buff
					424203,	-- Blood Rune Buff
					424194,	-- Frost Rune Buff
					424211,	-- Gladiator Rune Buff
					424210,	-- Plague Rune Buff
					424201,	-- Shadow Rune Buff
					424205	-- Titan Rune Buff
				),
				["description"] = "Defeating any boss on Defense Protocol Gamma will reward 1 Defiler's Scourgestone.",
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
					-- Ahn'kahet: The Old Kingdom
					29309,	-- Elder Nadox
					29308,	-- Prince Taldaram
					30258,	-- Amanitar
					29310,	-- Jedoga Shadowseeker
					29311,	-- Herald Volazj
					-- Azjol-Nerub
					28684,	-- Krik'thir the Gatewatcher
					28921,	-- Hadronox
					29120,	-- Anub'arak
					-- Drak'Tharon Keep
					26630,	-- Trollgore
					26631,	-- Novos the Summoner
					27483,	-- King Dred
					26632,	-- The Prophet Tharon'ja
					-- Gundrak
					29304,	-- Slad'ran
					29307,	-- Drakkari Colossus
					29305,	-- Moorabi
					29932,	-- Eck the Ferocious
					29306,	-- Gal'darah
					-- Halls of Lightning
					28586,	-- General Bjarngrim
					28587,	-- Volkhan
					28546,	-- Ionar
					28923,	-- Loken
					-- Halls of Stone
					27977,	-- Krystallus
					27975,	-- Maiden of Grief
					28234,	-- Tribunal of Ages
					27978,	-- Sjonnir The Ironshaper
					-- The Culling of Stratholme
					26529,	-- Meathook
					26530,	-- Salramm the Fleshcrafter
					26532,	-- Chrono-Lord Epoch
					-- 32273,	-- Infinite Corruptor [??]
					26533,	-- Mal'Ganis
					-- The Nexus
					26796,	-- Commander Kolurg (A)
					26798,	-- Commander Stoutbeard (H)
					26731,	-- Grand Magus Telestra
					26763,	-- Anomalus
					26794,	-- Ormorok the Tree-Shaper
					26723,	-- Keristrasza
					-- The Oculus
					27654,	-- Drakos the Interrogator
					27447,	-- Varos Cloudstrider
					27655,	-- Mage-Lord Urom
					27656,	-- Ley-Guardian Eregos
					-- The Violet Hold (Wrath)
					29315,	-- Erekem
					29316,	-- Moragg
					29313,	-- Ichoron
					29266,	-- Xevozz
					29312,	-- Levanthor
					29314,	-- Zuramat the Obliterator
					31134,	-- Cyanigosa
					-- Trial of the Champion
					34705,	-- Marshal Jacob Alerius
					34702,	-- Ambrose Boltspark
					34701,	-- Colosos
					34657,	-- Jaelyne Evensong
					34703,	-- Lana Stouthammer
					35572,	-- Mokra the Skullcrusher
					35569,	-- Eressea Dawnsinger
					35571,	-- Runok Wildmane
					35570,	-- Zul'tore
					35617,	-- Deathstalker Visceri
					35119,	-- Eadric the Pure
					34928,	-- Argent Confessor Paletress
					35451,	-- The Black Knight
					-- Utgarde Keep
					23953,	-- Prince Keleseth <The San'layn>
					24200,	-- Skarvald the Constructor
					24201,	-- Dalronn the Controller
					23954,	-- Ingvar the Plunderer
					-- Utgarde Pinnacle
					26668,	-- Svala Sorrowgrave
					26687,	-- Gortok Palehoof
					26693,	-- Skadi the Ruthless
					26861,	-- King Ymiron
				},
				["groups"] = {
					i(211206),	-- Defiler's Medallion (QI!)
					currency(DEFILERS_SCOURGESTONE),
				},
			}),
			n(VENDORS, {
				n(211340, {	-- Kolara Dreamsmasher <Defiler's Scourgestone Exchange>
					["coord"] = { 65.8, 24.8, NORTHREND_DALARAN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						defilersscourgestone(1, currency(SIDEREAL_ESSENCE)),	-- Sidereal Essence
						defilersscourgestone(12, i(49908)),	-- Primordial Saronite
						defilersscourgestone(20, i(47242)),	-- Trophy of the Crusade

						-- Ulduar 25 HM Items
						defilersscourgestone(60, i(45461)),	-- Drape of Icy Intent
						defilersscourgestone(60, i(45242)),	-- Drape of Mortal Downfall
						defilersscourgestone(60, i(45486)),	-- Drape of the Sullen Goddess
						defilersscourgestone(60, i(45496)),	-- Titanskin Cloak
						defilersscourgestone(60, i(45495)),	-- Conductive Seal
						defilersscourgestone(60, i(45471)),	-- Fate's Clutch
						defilersscourgestone(60, i(45534)),	-- Seal of the Betrayed King
						defilersscourgestone(60, i(45485)),	-- Bronze Pendant of the Vanir
						defilersscourgestone(60, i(45443)),	-- Charm of Meticulous Timing
						defilersscourgestone(60, i(45459)),	-- Frigid Strength of Hodir
						defilersscourgestone(60, i(45133)),	-- Pendant of Fiery Havoc
						defilersscourgestone(60, i(45517)),	-- Pendulum of Infinity
						defilersscourgestone(60, i(45243)),	-- Sapphire Amulet of Renewal
						defilersscourgestone(60, i(45609)),	-- Comet's Trail
						defilersscourgestone(60, i(45518)),	-- Flare of the Heavens
						defilersscourgestone(60, i(45535)),	-- Show of Faith

						-- TOC 25 Items (Horde)
						defilersscourgestone(30, i(47257)),	-- Cloak of the Untamed Predator
						defilersscourgestone(30, i(47256)),	-- Drape of the Refreshing Winds
						defilersscourgestone(30, i(47328)),	-- Maiden's Adoration
						defilersscourgestone(30, i(47320)),	-- Might of the Nerub
						defilersscourgestone(30, i(47275)),	-- Pride of the Demon Lord
						defilersscourgestone(30, i(47291)),	-- Shroud of Displacement
						defilersscourgestone(38, i(47262)),	-- Boots of the Harsh Winter
						defilersscourgestone(38, i(47321)),	-- Boots of the Icy Floe
						defilersscourgestone(38, i(47269)),	-- Dawnbreaker Sabatons
						defilersscourgestone(38, i(47296)),	-- Greaves of Ruthless Judgment
						defilersscourgestone(38, i(47312)),	-- Greaves of the Saronite Citadel
						defilersscourgestone(38, i(47284)),	-- Icewalker Treads
						defilersscourgestone(38, i(47263)),	-- Sabatons of the Courageous
						defilersscourgestone(38, i(47295)),	-- Sabatons of Tremoring Earth
						defilersscourgestone(38, i(47293)),	-- Sandals of the Mourning Widow
						defilersscourgestone(30, i(47282)),	-- Band of Callous Aggression
						defilersscourgestone(30, i(47315)),	-- Band of the Traitor King
						defilersscourgestone(30, i(47278)),	-- Circle of the Darkmender
						defilersscourgestone(30, i(47327)),	-- Lurid Manifestation
						defilersscourgestone(30, i(47252)),	-- Ring of the Violent Temperament
						defilersscourgestone(30, i(47309)),	-- Mystifying Charm
						defilersscourgestone(30, i(47276)),	-- Talisman of Heedless Sins
						defilersscourgestone(60, i(47261)),	-- Barb of Tarasque
						defilersscourgestone(60, i(47322)),	-- Suffering's End
						defilersscourgestone(30, i(47272)),	-- Charge of the Eredar
						defilersscourgestone(30, i(47307)),	-- Cry of the Val'kyr
						defilersscourgestone(30, i(47305)),	-- Legionnaire's Gorget
						defilersscourgestone(30, i(47297)),	-- The Executioner's Vice
						defilersscourgestone(50, i(47266)),	-- Blood Fury
						defilersscourgestone(50, i(47300)),	-- Gouge of the Frigid Heart
						defilersscourgestone(50, i(47314)),	-- Hellscream Slicer
						defilersscourgestone(50, i(47255)),	-- Stygian Bladebreaker
						defilersscourgestone(76, i(47267)),	-- Death's Head Crossbow
						defilersscourgestone(50, i(47287)),	-- Bastion of Resolve
						defilersscourgestone(50, i(47260)),	-- Forlorn Barrier
						defilersscourgestone(38, i(47303)),	-- Death's Choice
						defilersscourgestone(38, i(47290)),	-- Juggernaut's Vitality
						defilersscourgestone(38, i(47316)),	-- Reign of the Dead
						defilersscourgestone(38, i(47271)),	-- Solace of the Fallen
						defilersscourgestone(76, i(47285)),	-- Dual-blade Butcher
						defilersscourgestone(76, i(47329)),	-- Hellion Glaive
						defilersscourgestone(76, i(47302)),	-- Twin's Pact
						defilersscourgestone(38, i(47286)),	-- Belt of Biting Cold
						defilersscourgestone(38, i(47283)),	-- Belt of Bloodied Scars
						defilersscourgestone(38, i(47308)),	-- Belt of Pale Thorns
						defilersscourgestone(38, i(47299)),	-- Belt of the Pitiless Killer
						defilersscourgestone(38, i(47258)),	-- Belt of the Tenebrous Mist
						defilersscourgestone(38, i(47265)),	-- Binding of the Ice Burrower
						defilersscourgestone(38, i(47268)),	-- Bloodbath Girdle
						defilersscourgestone(38, i(47323)),	-- Girdle of the Forgotten Martyr
						defilersscourgestone(38, i(47311)),	-- Waistguard of Deathly Dominion

						defilersscourgestone(30, i(47313)),	-- Armbands of Dark Determination
						defilersscourgestone(30, i(47298)),	-- Armguards of the Shieldmaiden
						defilersscourgestone(30, i(47324)),	-- Bindings of the Ashen Saint
						defilersscourgestone(30, i(47277)),	-- Bindings of the Autumn Willow
						defilersscourgestone(30, i(47253)),	-- Boneshatter Vambraces
						defilersscourgestone(30, i(47294)),	-- Bracers of the Broken Bond
						defilersscourgestone(30, i(47281)),	-- Bracers of the Silent Massacre
						defilersscourgestone(30, i(47306)),	-- Dark Essence Bindings
						defilersscourgestone(30, i(47280)),	-- Wristwraps of Cloudy Omen
					},
				}),
				n(211332, {	-- Korralin Hoperender <Defiler's Scourgestone Exchange>
					["coord"] = { 37.2, 56.0, NORTHREND_DALARAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						defilersscourgestone(1, currency(SIDEREAL_ESSENCE)),	-- Sidereal Essence
						defilersscourgestone(12, i(49908)),	-- Primordial Saronite
						defilersscourgestone(20, i(47242)),	-- Trophy of the Crusade

						-- Ulduar 25 HM Items
						defilersscourgestone(60, i(45461)),	-- Drape of Icy Intent
						defilersscourgestone(60, i(45242)),	-- Drape of Mortal Downfall
						defilersscourgestone(60, i(45486)),	-- Drape of the Sullen Goddess
						defilersscourgestone(60, i(45496)),	-- Titanskin Cloak
						defilersscourgestone(60, i(45495)),	-- Conductive Seal
						defilersscourgestone(60, i(45471)),	-- Fate's Clutch
						defilersscourgestone(60, i(45534)),	-- Seal of the Betrayed King
						defilersscourgestone(60, i(45485)),	-- Bronze Pendant of the Vanir
						defilersscourgestone(60, i(45443)),	-- Charm of Meticulous Timing
						defilersscourgestone(60, i(45459)),	-- Frigid Strength of Hodir
						defilersscourgestone(60, i(45133)),	-- Pendant of Fiery Havoc
						defilersscourgestone(60, i(45517)),	-- Pendulum of Infinity
						defilersscourgestone(60, i(45243)),	-- Sapphire Amulet of Renewal
						defilersscourgestone(60, i(45609)),	-- Comet's Trail
						defilersscourgestone(60, i(45518)),	-- Flare of the Heavens
						defilersscourgestone(60, i(45535)),	-- Show of Faith

						-- TOC 25 Items (Alliance)
						defilersscourgestone(30, i(47089)),	-- Cloak of Displacement
						defilersscourgestone(30, i(46970)),	-- Drape of the Untamed Predator
						defilersscourgestone(30, i(47225)),	-- Maiden's Favor
						defilersscourgestone(30, i(47042)),	-- Pride of the Eredar
						defilersscourgestone(30, i(46976)),	-- Shawl of the Refreshing Winds
						defilersscourgestone(30, i(47183)),	-- Strength of the Nerub
						defilersscourgestone(38, i(46985)),	-- Boots of the Courageous
						defilersscourgestone(38, i(47092)),	-- Boots of the Mourning Widow
						defilersscourgestone(38, i(46988)),	-- Boots of the Unrelenting Storm
						defilersscourgestone(38, i(47090)),	-- Boots of Tremoring Earth
						defilersscourgestone(38, i(46997)),	-- Dawnbreaker Greaves
						defilersscourgestone(38, i(47194)),	-- Footpads of the Icy Floe
						defilersscourgestone(38, i(47150)),	-- Greaves of the 7th Legion
						defilersscourgestone(38, i(47106)),	-- Sabatons of Ruthless Judgment
						defilersscourgestone(38, i(47071)),	-- Treads of the Icewalker
						defilersscourgestone(30, i(47054)),	-- Band of Deplorable Violence
						defilersscourgestone(30, i(46959)),	-- Band of the Violent Temperment
						defilersscourgestone(30, i(47070)),	-- Ring of Callous Aggression
						defilersscourgestone(30, i(47223)),	-- Ring of the Darkmender
						defilersscourgestone(30, i(47149)),	-- Signet of the Traitor King
						defilersscourgestone(30, i(47138)),	-- Chalice of Searing Light
						defilersscourgestone(30, i(47053)),	-- Symbol of Transgression
						defilersscourgestone(60, i(46979)),	-- Blade of Tarasque
						defilersscourgestone(60, i(47193)),	-- Misery's End
						defilersscourgestone(30, i(47043)),	-- Charge of the Demon Lord
						defilersscourgestone(30, i(47116)),	-- The Arbiter's Muse
						defilersscourgestone(30, i(47105)),	-- The Executioner's Malice
						defilersscourgestone(30, i(47139)),	-- Wail of the Val'kyr
						defilersscourgestone(50, i(46996)),	-- Lionhead Slasher
						defilersscourgestone(50, i(46958)),	-- Steel Bladebreaker
						defilersscourgestone(50, i(47148)),	-- Stormpike Cleaver
						defilersscourgestone(50, i(47104)),	-- Twin Spike
						defilersscourgestone(76, i(46994)),	-- Talonstrike
						defilersscourgestone(50, i(47079)),	-- Bastion of Purity
						defilersscourgestone(50, i(46963)),	-- Crystal Plated Vanguard
						defilersscourgestone(38, i(47115)),	-- Death's Verdict
						defilersscourgestone(38, i(47182)),	-- Reign of the Unliving
						defilersscourgestone(38, i(47080)),	-- Satrina's Impeding Scarab
						defilersscourgestone(38, i(47041)),	-- Solace of the Defeated
						defilersscourgestone(76, i(47233)),	-- Archon Glaive
						defilersscourgestone(76, i(47069)),	-- Justicebringer
						defilersscourgestone(76, i(47114)),	-- Lupine Longstaff
						defilersscourgestone(38, i(47152)),	-- Belt of Deathly Dominion
						defilersscourgestone(38, i(47195)),	-- Belt of the Forgotten Martyr
						defilersscourgestone(38, i(46990)),	-- Belt of the Ice Burrower
						defilersscourgestone(38, i(47107)),	-- Belt of the Merciless Killer
						defilersscourgestone(38, i(46999)),	-- Bloodbath Belt
						defilersscourgestone(38, i(47081)),	-- Cord of Biting Cold
						defilersscourgestone(38, i(47140)),	-- Cord of Pale Thorns
						defilersscourgestone(38, i(46972)),	-- Cord of the Tenebrous Mist
						defilersscourgestone(38, i(47072)),	-- Girdle of Bloodied Scars

						defilersscourgestone(30, i(47203)),	-- Armbands of the Ashen Saint
						defilersscourgestone(30, i(47141)),	-- Bindings of Dark Essence
						defilersscourgestone(30, i(46961)),	-- Boneshatter Armplates
						defilersscourgestone(30, i(47056)),	-- Bracers of Cloudy Omen
						defilersscourgestone(30, i(47151)),	-- Bracers of Dark Determination
						defilersscourgestone(30, i(47055)),	-- Bracers of the Autumn Willow
						defilersscourgestone(30, i(47108)),	-- Bracers of the Shieldmaiden
						defilersscourgestone(30, i(47073)),	-- Bracers of the Untold Massacre
						defilersscourgestone(30, i(47093)),	-- Vambraces of the Broken Bond
					},
				}),
			}),
		},
	})),
})));
-- #endif
