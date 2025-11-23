---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(RARES, {
			n(COMMON_BOSS_DROPS, {
				i(189715, {	-- Pocopoc's Diamond Vambraces
					["questID"] = 65481,
				}),
			}),
		}),
		n(RARES, {
			header(HEADERS.Achievement, 15392, {	-- Dune Dominance
				["description"] = "Upon defeat of any other Rare creature in ZM, there is a small chance that one of these 'special' rares will begin to activate.\nIt is not currently known whether there is a minimum cooldown between spawns, though it's been reported as quick as 50 min.",
				["groups"] = bubbleDownFiltered({["isDaily"]=true},FILTERFUNC_questID,{
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							182155,	-- High Reaver Damaris
							182114,	-- Iska, Outrider of Ruin
							182158,	-- Reanimatrox Marzan
						},
						["groups"] = {
							i(190104),	-- Deadeye's Spirit Piercer
							i(190463),	-- Dismal Mystic's Glaive
							i(190050),	-- Entropic Broker's Ripper
							i(190124),	-- Interrogator's Vicious Dirk
							i(190107),	-- Staff of Broken Coils
						},
					}),
					n(182155, {	-- High Reaver Damaris
						["crs"] = { 182156 },	-- Edra, the Will Grazer
						["coord"] = { 63.8, 27, ZERETH_MORTIS },
						["questID"] = 65586,
						["groups"] = {
							i(190106),	-- Approaching Terror's Torch
							i(190105),	-- Chilling Domination Mace
							i(190459),	-- Cold Dispiriting Barricade
							i(190460),	-- High Reaver's Sickle
						},
					}),
					n(182114, {	-- Iska, Outrider of Ruin
						["coord"] = { 63.8, 27, ZERETH_MORTIS },
						["questID"] = 65585,
						["groups"] = {
							n(182120, {	-- Rhuv, Gorger of Ruin
								["coord"] = { 63.8, 27, ZERETH_MORTIS },
								["questID"] = 65706,
								["groups"] = {
									i(190765),	-- Colossal Plaguespew Mawrat (MOUNT!)
								},
							}),
							i(190458),	-- Atrophy's Omnious Bulwark
							i(190102),	-- Chains of Infectious Serrations
							i(190103),	-- Pillar of Noxious Dissemination
							i(190126),	-- Rotculler's Encroaching Shears
						},
					}),
					n(182158, {	-- Reanimatrox Marzan
						["crs"] = { 182161 },	-- Phalangax, the Final Grasp
						["coord"] = { 63.8, 27, ZERETH_MORTIS },
						["questID"] = 65587,
						["groups"] = {
							i(190108),	-- Aegis of Laughing Souls
							i(190109),	-- Cudgel of Mortality's Chains
							i(190127),	-- Marzan's Dancing Twin-Scythe
							i(190461),	-- Reanimator's Beguiling Baton
						},
					}),
				}),
			}),
		}),
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(179006, {	-- Akkaris <Annelid Prime>
				["coord"] = { 64.7, 33.7, ZERETH_MORTIS },
				["questID"] = 65552,
				["groups"] = {
					i(190733),	-- Circle of Akkaris
					i(189903),	-- Sand Sifting Sandals
					i(189958),	-- Tunneler's Penetrating Greathelm
					i(190053),	-- Underground Circler's Crossbow
				},
			}),
			n(183596, {	-- Chitali the Eldest <Cervid Prime>
				["coord"] = { 50.3, 69, ZERETH_MORTIS },
				["questID"] = 65553,
				["groups"] = {
					i(189994),	-- Chitali's Command
					i(189906),	-- Mask of the Resolute Cervid
					i(189947),	-- Majestic Watcher's Girdle
					i(190729),	-- Vigorous Sentinel's Seal
				},
			}),
			n(183953, {	-- Corrupted Architect
				["coord"] = { 47.5, 62.2, ZERETH_MORTIS },
				["questID"] = 65273,
				["groups"] = {
					i(189940),	-- Architect's Polluting Touch
					i(189907),	-- Crown of Contorted Thought
					i(190009),	-- Hammer of Shattered Works
					i(190732),	-- Strand of Tainted Relics
				},
			}),
			n(180917, {	-- Destabilized Core
				["coord"] = { 53.6, 44.4, ZERETH_MORTIS },
				["questID"] = 64716,
				["groups"] = {
					i(189910),	-- Adornment of Jingling Fractals
					i(189985),	-- Curtain of Untold Realms
					i(189999),	-- Dark Sky Gavel
					i(189930),	-- Restraints of Boundless Chaos
					i(187837),	-- Schematic: Erratic Genesis Matrix (RECIPE!)
				},
			}),
			n(184409, {	-- Euv'ouk
				["coord"] = { 47.5, 45.1, ZERETH_MORTIS },
				["questID"] = 65555,
				["groups"] = {
					i(190047),	-- Converted Broker's Staff
					i(189956),	-- Perverse Champion's Handguards
					i(189949),	-- Shackles of the Bound Guardian
					i(189993),	-- Twisted Judicator's Gavel
				},
			}),
			n(178229, {	-- Feasting
				["description"] = "You might need to kill some vespoids in close by area.",
				["coord"] = { 61.8, 60.5, ZERETH_MORTIS },
				["questID"] = 65557,
				["groups"] = {
					i(189936),	-- Feasting's Feeding Cloak
					i(189969),	-- Vespoid's Clanging Legguards
					i(189970),	-- Visor of Visceral Cravings
					i(187848),	-- Recipe: Sustaining Armor Polish (RECIPE!)
				},
			}),
			n(183646, {	-- Furidian
				["description"] = "To open the vault there is corresponding symbols in the area. Click those to open the vault.",
				["coord"] = { 64.5, 58.7, ZERETH_MORTIS },
				["questID"] = 65544,
				["groups"] = {
					i(190004),	-- Furidian's Inscribed Barb
					i(189963),	-- Sculpted Ouroboros Clasp
					i(189932),	-- Slick Scale Chitinous
					i(189920),	-- Viperid Keeper's Gloves
				},
			}),
			n(180924, {	-- Garudeon <Raptora Prime>
				["description"] = "Feed its kids with three Energizing Leporid(183562, Bunnies in the area)",
				["coord"] = { 68.9, 36.9, ZERETH_MORTIS },
				["questID"] = 64719,
				["groups"] = {
					i(189937),	-- Garudeon's Blanket of Feathers
					i(189951),	-- Sunbathed Avian Armor
					i(190602),	-- Symbol of the Raptora
					i(190057),	-- Protective Raptora's Wing-Glaive
					i(187832),	-- Schematic: Pure-Air Sail Extensions (RECIPE!)
				},
			}),
			n(182318, {	-- General Zarathura <Army of the Endless>
				["coord"] = { 59.6, 18.6, ZERETH_MORTIS },
				["questID"] = 65583,
				["groups"] = {
					i(190731),	-- Deceiver's Illusionary Signet
					i(189968),	-- Dreadlord General's Tunic
					i(190125, {	-- Kris of Intricate Secrets
						["filterID"] = DAGGERS,
					}),
					i(189948),	-- Strangulating Chainlink Lasso
				},
			}),
			n(178778, {	-- Gluttonous Overgrowth
				["description"] = "Need to pull 5 Bulging Roots (184048) that are in the close by area. Use target macro to find them easily.",
				["coord"] = { 52.9, 93.3, ZERETH_MORTIS },
				["questID"] = 65579,
				["groups"] = {
					i(190008),	-- Enlightened Botanist's Machete
					i(189953),	-- Lush-Stained Footguards
					i(190049),	-- Perennial Punching Dagger
					i(189929),	-- Vinebound Strap
				},
			}),
			n(178963, {	-- Gorkek <Bufonid Prime>
				["description"] = "Multiple Spawn locations.",
				["coords"] = {
					{ 76.1, 45.3, ZERETH_MORTIS },
					{ 75.7, 60.4, ZERETH_MORTIS },
					{ 80.4, 46.3, ZERETH_MORTIS },
				},
				["questID"] = 63988,
				["groups"] = {
					i(189960),	-- Crouching Legs of the Bufonid
					i(190001),	-- Gorkek's Glistening Throatguard
					i(189926),	-- Posion-Licked Spaulders
				},
			}),
			n(178563, {	-- Hadeon the Stonebreaker <Scarabid Prime>
				["coord"] = { 52.6, 25.1, ZERETH_MORTIS },
				["questID"] = 65581,
				["groups"] = {
					i(190000),	-- Carapace of Gliding Sands
					i(190051),	-- Elder's Opulent Stave
					i(189942),	-- Hadeon's Indomitable Faceguard
					i(189919),	-- Skittering Scarabid Treads
				},
			}),
			n(183748, {	-- Helmix
				["description"] = "Will call out an emote\"The ground vibrates... something burrows beneath the surface!\" in the zone when spawned",
				["crs"] = {
					183749,	-- Helmix
					184804,	-- Helmix
				},
				["coord"] = { 58.2, 68.3, ZERETH_MORTIS },
				["questID"] = 65551,
				["groups"] = {
					i(189931),	-- Annelid's Hinge Wrappings
					i(189965),	-- Armored Cuffs of the Unbroken
					i(190056),	-- Enlightened Explorer's Lantern
					i(190054),	-- Facet Sharpening Crossbow
				},
			}),
			n(180978, {	-- Hirukon <Aurelid Prime>
				["coord"] = { 52.2, 75.2, ZERETH_MORTIS },
				["cost"] = {{"i",187923,1}},	-- Aurelid Lure
				["questID"] = 65548,
				["groups"] = {
					i(187676, {	-- Deepstar Polyp (MOUNT!)
						["description"] = "This mount has 100% drop chance if you do the summon.",
					}),
					i(190005),	-- Hirukon's Radiant Reach
					i(189905),	-- Hirukon's Syrupy Squeezers
					i(189946),	-- Jellied Aurelid Mantle
				},
			}),
			n(178508, {	-- Mother Phestis <Tarachnid Prime>
				["coord"] = { 54, 34, ZERETH_MORTIS },
				["questID"] = 65547,
				["groups"] = {
					i(189950),	-- Constrained Prey's Binds
					i(189769),	-- Fang of Phestis (Not Confirmed)
					i(190045),	-- Flowing Sandbender's Staff
					i(189923),	-- Tarachnid's Terrifying Visage
				},
			}),
			n(179043, {	-- Orixal <Helicid Prime>
				["coord"] = { 56.6, 69, ZERETH_MORTIS },
				["questID"] = 65582,
				["groups"] = {
					i(189952),	-- Celestial Mollusk's Chestshell
					i(189912),	-- Orixal's Moist Sash
					i(189934),	-- Slime-Wake Sabatons
				},
			}),
			n(183814, {	-- Otaris the Provoked
				["coord"] = { 58.6, 39, ZERETH_MORTIS },
				["questID"] = 65257,
				["groups"] = {
					i(189957),	-- Colossus' Focusing Headpiece
					i(189909),	-- Pantaloons of Cold Recesses
					i(189945),	-- Shoulders of the Missing Giant
				},
			}),
			n(183746, {	-- Otiosen
				["coord"] = { 43.4, 87.6, ZERETH_MORTIS },
				["questID"] = 65556,
				["groups"] = {
					i(187634),	-- Ambystan Lattice
					i(189925),	-- Amphibian's Nimble Leggings
					i(190046),	-- Broker's Stolen Cane
					i(189995),	-- Builder's Alignment Hammer
					i(189914),	-- Otiosen's Regenerative Wristwraps
				},
			}),
			n(180746, {	-- Protector of the First Ones
				["description"] = "Pylons show what rune you need to bring here. Needs at least two persons.\nPosition of runes:\nRune (V-like symbol) @ 43.0 21.5\nRune (Diamonds-like symbol) @ 44.9 22.4\nRune (M-like symbol) @ 46.8 23.3\nRune (H-llke symbol) @ 48.4 24.1",	-- See if symbols rotate
				["coord"] = { 39.5, 26.8, ZERETH_MORTIS },
				["questID"] = 64668,
				["groups"] = {
					i(190002),	-- Bulwark of the Broken
					i(189984),	-- Drape of Idolized Symmetry
					i(189961),	-- Enduring Protector's Shoulderguards
					i(190390),	-- Protector's Diffusion Implement
					i(189177),	-- Revelation Key (PS)
				},
			}),
			n(183927, {	-- Sand Matriarch Ileus
				["coords"] = {
					{ 53, 47.6, ZERETH_MORTIS },
					{ 53.4, 47.2, ZERETH_MORTIS },
				},
				["questID"] = 65574,
				["groups"] = {
					i(189927),	-- Broker's Gnawed Spaulders
					i(190730),	-- Matriarch's Shell Band
					i(189998),	-- Ornate Stone Mallet
					i(189955),	-- Scarabid's Clattering Handguards
				},
			}),
			n(184413, {	-- Shifting Stargorger
				["coord"] = { 42, 21.9, ZERETH_MORTIS },
				["questID"] = 65549,
				["groups"] = {
					i(189908),	-- Gorger's Leggings of Famine
					i(189916),	-- Mutated Devourer's Harness
					i(189941),	-- Voracious Diadem
					i(189972),	-- Scorpid Soul (SOUL!)
					i(187847),	-- Design: Devourer Essence Stone (RECIPE!)
				},
			}),
			n(183722, {	-- Sorranos <Vombata Prime>
				["coord"] = { 35.8, 71.2, ZERETH_MORTIS },
				["questID"] = 65240,
				["groups"] = {
					i(189944),	-- Immovable Stance of the Vombata
					i(189962),	-- Sorrano's Gleaming Pauldrons
					i(189911),	-- Sublime Fur Mantle
					i(190582),	-- Symbol of the Vombata
					i(187826),	-- Formula: Cosmic Protoweave (RECIPE!)
				},
			}),
			n(183925, {	-- Tahkwitz
				["description"] = "Use the cosmic energy system behind the mountain. Work your way to the top level and then jump down to be able to pull him.",
				["coord"] = { 50.4, 39.8, ZERETH_MORTIS },
				["questID"] = 65272,
				["groups"] = {
					i(189954),	-- Lustrous Sentinel's Sabatons
					i(190003),	-- Skyward Savior's Talon
					i(189915),	-- Tahkwitz' Cloth Ribbon
					i(189933),	-- Vigilant Raptora's Crest
					i(187832),	-- Schematic: Pure-Air Sail Extensions (RECIPE!)
				},
			}),
			n(181249, {	-- Tethos
				["coord"] = { 54.5, 73.4, ZERETH_MORTIS },
				["questID"] = 65550,
				["groups"] = {
					i(189928),	-- Centripetal Waistband
					i(190055),	-- Coalescing Energy Implement
					i(189967),	-- Hood of Star Topology
					i(189966),	-- Singing Metal Wristbands
					i(187830),	-- Design: Aealic Harmonizing Stone (RECIPE!)
				},
			}),
			n(183516, {	-- The Engulfer
				["description"] = "Need to complete The Matriarch Event. See emote call in the zone",
				["crs"] = { 183505 },	-- The Matriarch
				["coord"] = { 44, 75, ZERETH_MORTIS },
				["questID"] = 65580,
				["groups"] = {
					i(190006),	-- Anima-Siphoning Sword
					i(189921),	-- Devourer's Insaitable Grips
					i(189913),	-- Engulfer's Tightening Cinch
					i(187847),	-- Design: Devourer Essence Stone (RECIPE!)
				},
			}),
			n(181360, {	-- Vexis <Lupine Prime>
				["coord"] = { 39.5, 57.1, ZERETH_MORTIS },
				["questID"] = 65239,
				["groups"] = {
					i(189959),	-- Legs of Graceful Landing
					i(190597),	-- Symbol of the Lupine
					i(189997),	-- The Lupine Prime's Might
					i(189900),	-- Vexis' Gentle Heartcloth
					i(190048),	-- Vexis' Wisest Fang
				},
			}),
			n(183747, {	-- Vitiane
				["coord"] = { 47, 47, ZERETH_MORTIS },
				["questID"] = 65584,
				["groups"] = {
					i(189922),	-- Cowl of Shameful Proliferation
					i(189935),	-- Harrowing Hope Squashers
					i(189901),	-- Vitiane's Defiled Vestment
				},
			}),
			n(183737, {	-- Xy'rath the Covetous
				["coord"] = { 63.7, 49.1, ZERETH_MORTIS },
				["questID"] = 65241,
				["groups"] = {
					i(189918),	-- Fleeting Broker's Strides
					i(189964),	-- Multi-Faceted Belt
					i(190238, {	-- Xy'rath's Booby-Trapped Cache (TOY!)
						o(375536, {	-- Xy'rath's Booby-Trapped Cache
							i(190242),	-- Red Velvet Delicacy
							i(190241),	-- Xy'rath's Spare Outfit
						}),
					}),
					i(190052),	-- Xy'rath's Letter Opener
					i(190007),	-- Xy'rath's Signature Saber
					i(187828),	-- Recipe: Infusion: Corpse Purification (RECIPE!)
				},
			}),
			n(183764, {	-- Zatojin <Vespoid Prime>
				["description"] = "Pull the bugs but do not kill them. Wait until reaching 20 stacks of the debuff.",
				["coord"] = { 43.3, 32.9, ZERETH_MORTIS },
				["questID"] = 65251,
				["groups"] = {
					i(189924),	-- Buzzing Predator's Legs
					i(190726),	-- Extract of Prodigious Sands
					i(189902),	-- Hapless Traveler's Treads
					i(189939),	-- Zatojin's Paralytic Grip
					i(187848),	-- Recipe: Sustaining Armor Polish (RECIPE!)
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(SHADOWLANDS, {
		m(ZERETH_MORTIS, {
			n(RARES, {
				q(65707),	-- Triggered when killing Phalangax, the Final Grasp
				q(65558),	-- Triggered when killing Edra, the Will Grazer
				-- q(65637),	-- Triggered when killing General Zarathura <Army of the Endless>
				-- q(65631),	-- Triggered when killing Akkaris
				-- q(65629),	-- Triggered when killing Akkaris
				-- q(65626),	-- Triggered when killing Mother Phestis <Tarachnid Prime>
			}),
		}),
	}),
})));
