---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
	return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(RARES, {
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					203515,	-- Alcanon
					203468,	-- Aquifon
					203621,	-- Brullo the Stronk
					204093,	-- Colossian
					203646,	-- Dinn
					203664,	-- Emberdusk
					203660,	-- Flowfy
					203592,	-- General Zskorro
					203477,	-- Goopal
					-- 203611,	-- Hadexia <Ember of Twilight>
					203627,	-- Invohq
					203625,	-- Karokta
					203466,	-- Kapraku
					203618,	-- Klakatak
					203462,	-- Kob'rok
					-- 203642,	-- Kronkapace
					-- 203630,	-- Lavermix
					200111,	-- Magtembo
					203521,	-- Professor Gastrinax
					-- 204096,	-- Shadowforge Mole Machine
					203643,	-- Skornak
					203480,	-- Spinmarrow
					203662,	-- Subterrax
					203593,	-- Underlight Queen
					201029,	-- Viridian King
					-- Researchers Rares
					202270,	-- Animated Contaminant
					203355,	-- Captain Reykal
					202309,	-- Cavern Flayer Matriarch
					203834,	-- Contaminated Titan Watcher
					203846,	-- Elder Magma Serpent
					204214,	-- Monstrous Magmaclaw Snapper
					202318,	-- Response Team Watcher
				},
				["groups"] = {
					n(BACK, {
						i(205056),	-- Zaralek Surveyor's Cloak
						i(205055),	-- Zaralek Surveyor's Drape
						i(205057),	-- Zaralek Surveyor's Greatcloak
						i(205112),	-- Zaralek Surveyor's Shawl
					}),
					filter(CLOTH, {
						i(205063),	-- Zaralek Surveyor's Cord
						i(205061),	-- Zaralek Surveyor's Cowl
						i(205064),	-- Zaralek Surveyor's Cuffs
						i(205060),	-- Zaralek Surveyor's Handwraps
						i(205062),	-- Zaralek Surveyor's Leggings
						i(205059),	-- Zaralek Surveyor's Sandals
						i(205089),	-- Zaralek Surveyor's Shoulderpads
						i(205058),	-- Zaralek Surveyor's Vestment
					}),
					filter(FINGER_F, {
						i(205111),	-- Zaralek Surveyor's Band
						i(205101),	-- Zaralek Surveyor's Loop
						i(205102),	-- Zaralek Surveyor's Signet
					}),
					filter(LEATHER, {
						i(205070),	-- Zaralek Surveyor's Bindings
						i(205068),	-- Zaralek Surveyor's Breeches
						i(205088),	-- Zaralek Surveyor's Epaulets
						i(205066),	-- Zaralek Surveyor's Grips
						i(205067),	-- Zaralek Surveyor's Helm
						i(205069),	-- Zaralek Surveyor's Sash
						i(205087),	-- Zaralek Surveyor's Vest
						i(205065),	-- Zaralek Surveyor's Waders
					}),
					filter(MAIL, {
						i(205078),	-- Zaralek Surveyor's Bracers
						i(205077),	-- Zaralek Surveyor's Cinch
						i(205071),	-- Zaralek Surveyor's Chainmail
						i(205074),	-- Zaralek Surveyor's Coif
						i(205075),	-- Zaralek Surveyor's Greaves
						i(205073),	-- Zaralek Surveyor's Grips
						i(205076),	-- Zaralek Surveyor's Shoulderguards
						i(205072),	-- Zaralek Surveyor's Striders
					}),
					filter(NECK_F, {
						i(205113),	-- Zaralek Surveyor's Choker
					}),
					filter(PLATE, {
						i(205086),	-- Zaralek Surveyor's Armplates
						i(205080),	-- Zaralek Surveyor's Breastplate
						i(205082),	-- Zaralek Surveyor's Gauntlets
						i(205085),	-- Zaralek Surveyor's Girdle
						i(205079),	-- Zaralek Surveyor's Helm
						i(205083),	-- Zaralek Surveyor's Legguards
						i(205084),	-- Zaralek Surveyor's Mantle
						i(205081),	-- Zaralek Surveyor's Sabatons
					}),
					filter(TRINKET_F, {
						i(204810),	-- Drogbar Rocks
						i(204811),	-- Drogbar Stones
						i(205194),	-- Fractured Crystalspine Quill
						i(204728),	-- Friendship Censer
						i(204797),	-- Djaradin Boasting Tablets
						i(205195),	-- Drakeforged Magma Charm
						i(204714),	-- Satchel of Healing Spores
						i(205201),	-- Smoldering Howler Horn
						i(205200),	-- Stirring Twilight Ember
						i(205193),	-- Sturdy Deepflayer Scute
						i(204805),	-- Suspended Sulfuric Droplet
						i(205191),	-- Underlight Globe
						i(205192),	-- Volatile Crystal Shard
						i(205196),	-- Zaqali Hand Cauldron
					}),
					n(WEAPONS, {
						i(205090),	-- Zaralek Surveyor's Barrier
						i(205099),	-- Zaralek Surveyor's Blade
						i(205105),	-- Zaralek Surveyor's Censer
						i(205104),	-- Zaralek Surveyor's Cleaver
						i(205107),	-- Zaralek Surveyor's Cudgel
						i(205100),	-- Zaralek Surveyor's Greatsword
						i(205103),	-- Zaralek Surveyor's Hacker
						i(205108),	-- Zaralek Surveyor's Halberd
						i(205097),	-- Zaralek Surveyor's Kris
						i(205106),	-- Zaralek Surveyor's Mallet
						i(205093),	-- Zaralek Surveyor's Polearm
						i(205094),	-- Zaralek Surveyor's Rifle
						i(205091),	-- Zaralek Surveyor's Scepter
						i(205096),	-- Zaralek Surveyor's Shank
						i(205098),	-- Zaralek Surveyor's Sword
						i(205095),	-- Zaralek Surveyor's Spellblade
						i(205109),	-- Zaralek Surveyor's Staff
						i(205092),	-- Zaralek Surveyor's Wand
						i(205110),	-- Zaralek Surveyor's Warglaive
					}),
				},
			}),
		}),
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(203515, {	-- Alcanon
				["coord"] = { 56.4, 73.3, ZARALEK_CAVERN },
				["questID"] = 75284,	-- Old QuestID: 75550
				["groups"] = {
					bo(75285, true),
					i(203307),	-- Winding Slitherdrake: Plated Brow (MM!)
					i(205318),	-- Guardian Golem's Legplates
					i(205309),	-- Loyal Attendant's Gaze
				},
			}),
			n(203468, {	-- Aquifon
				["coord"] = { 47.8, 74.8, ZARALEK_CAVERN },
				["questID"] = 75270,	-- Old QuestID: 75547
				["groups"] = {
					bo(75271, true),
					i(205154),	-- Aquapo (PET!)
					i(205306),	-- Aquiferous Raiment
					i(205295),	-- Sediment Sifters
				},
			}),
			n(203621, {	-- Brullo the Stronk
				["coord"] = { 41.4, 86.1, ZARALEK_CAVERN },
				["questID"] = 75325,
				["groups"] = {
					bo(75326, true),
					o(398828, {	-- Chest of Massive Gains
						["coord"] = { 41.5, 86.2, ZARALEK_CAVERN },
						["groups"] = {
							i(205114, {	-- Brul (PET!)
								["description"] = "After defeating Brullo, eat Rocks on the Rocks to transform then open the chest.",
								["cost"] = { { "i", 204845, 1 } },	-- 1x Rocks on the Rocks
							}),
							i(204847),	-- Recipe: Rocks on the Rocks (RECIPE!)
							i(205313),	-- Brullo's Wristbraces
							i(205320),	-- Greatbelt of the Stronk
						},
					}),
				},
			}),
			n(204093, {	-- Colossian
				["coord"] = { 48.2, 24.4, ZARALEK_CAVERN },
				["questID"] = 75475,	-- Old QuestID: 75572
				["groups"] = {
					bo(75476, true),
					i(197364),	-- Renewed Proto-Drake: Short Spiked Crest (MM!)
					i(205315),	-- Colossian Cuirass
					i(205332),	-- Fist of the Demolisher
					i(205330),	-- Signet of Colossal Mastery
				},
			}),
			n(203646, {	-- Dinn
				["coord"] = { 29.2, 50.7, ZARALEK_CAVERN },
				["questID"] = 75352,	-- Old QuestID: 75564
				["groups"] = {
					bo(75353, true),
					i(205419),	-- Dinn's Drum (TOY!)
					i(203320),	-- Winding Slitherdrake: Ears (MM!)
					i(205299),	-- Rudiment Cuffs
					i(205304),	-- Snareguard Sash
				},
			}),
			n(203664, {	-- Emberdusk
				["coord"] = { 32.1, 51.2, ZARALEK_CAVERN },
				["questID"] = 75361,	-- Old QuestID: 75567
				["groups"] = {
					bo(75364, true),
					i(203363),	-- Winding Slitherdrake: Large Finned Throat (MM!)
					i(205293),	-- Emberdusk's Embrace
					i(205335),	-- Talisman of the Dusk
				},
			}),
			n(203660, {	-- Flowfy
				["coord"] = { 36.2, 44.7, ZARALEK_CAVERN },
				["questID"] = 75357,	-- Old QuestID: 75565
				["groups"] = {
					bo(75358, true),
					i(197109),	-- Highland Drake: Spiked Head (MM!)
					i(205334),	-- Flowfy's Smoldering Chain
					i(205303),	-- Leggings of Flowing Flame
				},
			}),
			n(203592, {	-- General Zskorro
				["coord"] = { 41.7, 18.4, ZARALEK_CAVERN },
				["questID"] = 75295,	-- Old QuestID: 75552
				["groups"] = {
					bo(75296, true),
					i(203334),	-- Winding Slitherdrake: Curled Horns (MM!)
					i(205321),	-- Brimstone Bracers
					i(205291),	-- Garrison General's Cape
					i(205331),	-- Zskorran Cleaver
				},
			}),
			n(203477, {	-- Goopal
				["coord"] = { 68.5, 46.4, ZARALEK_CAVERN },
				["questID"] = 75273,	-- Old QuestID: 75548
				["groups"] = {
					bo(75274, true),
					i(203309),	-- Winding Slitherdrake: Long Chin Horn (MM!)
					i(205317),	-- Crystalpod Gauntlets
					i(205296),	-- Goopal's Visage
				},
			}),
			-- n(203611, {	-- Hadexia <Ember of Twilight>
				-- ["coord"] = { , , ZARALEK_CAVERN },
				-- ["questID"] = ,	-- Old QuestID:
				-- ["groups"] = {
				-- 	bo(, true),
				-- },
			-- }),
			n(203627, {	-- Invohq
				["coord"] = { 46.0, 33.3, ZARALEK_CAVERN },
				["questID"] = 75335,	-- Old QuestID: 75558
				["groups"] = {
					bo(75336, true),
					i(205796, {	-- Molten Lava Pack (TOY!)
						-- ["description"] = "This toy is bugged for some accounts and simply does not drop. Nobody knows why.",
						-- Fixed 4 months into the patch (and 4 days after the note was added to ATT).
					}),
					i(203328),	-- Winding Slitherdrake: White Horns (MM!)
					i(205297),	-- Flamewielder's Trousers
					i(205329),	-- Loop of Burning Invocation
				},
			}),
			n(203625, {	-- Karokta
				["coord"] = { 42.2, 65.9, ZARALEK_CAVERN },
				["questID"] = 75333,	-- Old QuestID: 75557
				["groups"] = {
					bo(75334, true),
					i(205203),	-- Cobalt Shalewing (MOUNT!)
					i(205147),	-- Ridged Shalewing	(PET!)
					i(203358),	-- Winding Slitherdrake: Small Finned Tail (MM!)
					i(205298),	-- Belt of Floating Stone
					i(205292),	-- Karokta's Mane
				},
			}),
			n(203466, {	-- Kapraku
				["coord"] = { 59.3, 39.8, ZARALEK_CAVERN },
				["questID"] = 75268,	-- Old QuestID: 75546
				["groups"] = {
					bo(75269, true),
					i(205341),	-- Winding Slitherdrake: Heavy Scales (MM!)
					i(205319),	-- Deepflayer Shoulderguards
					i(205310),	-- Leggings of Kaprachu
				},
			}),
			n(203618, {	-- Klakatak
				["coord"] = { 53.9, 42.3, ZARALEK_CAVERN },
				["questID"] = 75321,	-- Old QuestID: 75555
				["groups"] = {
					bo(75322, true),
					i(205686),	-- Clacking Claw
					i(205308),	-- Clacking Clawguards
					i(205343),	-- Crude Seal of Mak'aru
				},
			}),
			n(203462, {	-- Kob'rok
				["coord"] = { 65.0, 55.8, ZARALEK_CAVERN },
				["questID"] = 75266,	-- Old QuestID: 75545
				["groups"] = {
					bo(75267, true),
					i(205152),	-- Skaarn (PET!)
					i(197021),	-- Cliffside Wylderdrake: Spiked Club Tail (MM!)
					i(205307),	-- Kob'rok's Scale Sabatons
					i(205323),	-- Rock-Lined Pauldrons
					i(206021),	-- Kob'rok's Luminescent Scale
				},
			}),
			-- n(203642, {	-- Kronkapace
			-- 	["coord"] = { , , ZARALEK_CAVERN },
			-- 	["questID"] = ,	-- Old QuestID:
			-- 	["groups"] = {
			-- 		bo(, true),
			-- 	},
			-- }),
			-- n(203630, {	-- Lavermix
			-- 	["coord"] = { , , ZARALEK_CAVERN },
			-- 	["questID"] = ,	-- Old QuestID:
			-- 	["groups"] = {
			-- 		bo(, true),
			-- 	},
			-- }),
			n(200111, {	-- Magtembo
				["coord"] = { 41.1, 37.7, ZARALEK_CAVERN },
				["questID"] = 75339,	-- Old QuestID: 75561
				["groups"] = {
					bo(75340, true),
					i(203339),	-- Winding Slitherdrake: Impaler Horns (MM!)
					i(205300),	-- Magma Waders
					i(205311),	-- Magmascale Pauldrons
				},
			}),
			n(203521, {	-- Professor Gastrinax
				["coord"] = { 55.5, 18.3, ZARALEK_CAVERN },
				["questID"] = 75291,	-- Old QuestID: 75551
				["groups"] = {
					bo(75292, true),
					i(203331),	-- Winding Slitherdrake: Cluster Horns (MM!)
					i(205322),	-- Algeth'ar Exile's Frock
					i(205333),	-- Obsidian Amulet of Transmutation
				},
			}),
			-- n(204096, {	-- Shadowforge Mole Machine
			-- 	["coord"] = { , , ZARALEK_CAVERN },
			-- 	["questID"] = ,	-- Old QuestID:
			-- 	["groups"] = {
			-- 		bo(, true),
			-- 	},
			-- }),
			n(203643, {	-- Skornak
				["coord"] = { 36.3, 52.9, ZARALEK_CAVERN },
				["questID"] = 75348,	-- Old QuestID: 75563
				["groups"] = {
					bo(75349, true),
					i(203321),	-- Winding Slitherdrake: Curled Cheek Horn (MM!)
					i(205301),	-- Hardened Lava Handwraps
					i(205294),	-- Sandals of Molten Scorn
				},
			}),
			n(203480, {	-- Spinmarrow
				["coord"] = { 53.1, 65.0, ZARALEK_CAVERN },
				["questID"] = 75275,	-- Old QuestID: 75549
				["groups"] = {
					bo(75276, true),
					i(203318),	-- Winding Slitherdrake: Hairy Chest (MM!)
					i(205326),	-- Crystalweb Chelicera
					i(205290),	-- Greatcloak of Spun Marrow
					i(205305),	-- Zaralek Arachnid Armbands
				},
			}),
			n(203662, {	-- Subterrax
				["coord"] = { 38.8, 46.5, ZARALEK_CAVERN },
				["questID"] = 75359,	-- Old QuestID: 75566
				["groups"] = {
					bo(75360, true),
					i(203338),	-- Winding Slitherdrake: Antler Horns (MM!)
					i(205328),	-- Earthen Emissary's Edge
					i(205314),	-- Greathelm of the Emissary
					i(205312),	-- Subterrax's Stout Waistguard
				},
			}),
			n(203593, {	-- Underlight Queen
				["coord"] = { 58.2, 69.1, ZARALEK_CAVERN },
				["questID"] = 75297,	-- Old QuestID: 75553
				["groups"] = {
					bo(75298, true),
					i(205159),	-- Teardrop Moth (PET!)
					i(205325),	-- Crystal Wing Shield
					i(205324),	-- Moth Queen Mantle
					i(205302),	-- Underlight Headwrap
				},
			}),
			n(201029, {	-- Viridian King
				["coord"] = { 39.2, 71.0, ZARALEK_CAVERN },
				["questID"] = 75365,	-- Old QuestID: 75570
				["groups"] = {
					bo(75366, true),
					i(203345),	-- Winding Slitherdrake: Split Jaw Horns (MM!)
					i(205316),	-- Crystal Stompers
					i(205336),	-- Glowing Veridian Necklace
					i(205327),	-- Shard of the Veridian King
				},
			}),
		})),
	}),
})));
