-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	inst(1198, {	-- The Nokhud Offensive
		["coord"] = { 60.9, 39.1, OHNAHRAN_PLAINS },
		["maps"] = { 2093 },	-- The Nokhud Offensive
		["groups"] = {
			n(FLIGHT_PATHS, {
				fp(2847, {	-- Maruukai, The Nokhud Offensive
					-- ["coord"] = { XX.Y, XX.Y, 2093 },	-- The Nokhud Offensive
					["crs"] = { 199615 },	-- Salukan
				}),
				fp(2851, {	-- Ohn'iri Springs, The Nokhud Offensive
					-- ["coord"] = { XX.Y, XX.Y, 2093 },	-- The Nokhud Offensive
					["crs"] = { 199617 },	-- Huraq
				}),
				fp(2850, {	-- Teerakai, The Nokhud Offensive
					-- ["coord"] = { XX.Y, XX.Y, 2093 },	-- The Nokhud Offensive
					["crs"] = { 199618 },	-- Carseng
				}),
				fp(2849, {	-- The Battle of Spears, The Nokhud Offensive
					-- ["coord"] = { XX.Y, XX.Y, 2093 },	-- The Nokhud Offensive
					["crs"] = { 199619 },	-- Baqir
				}),
				fp(2848, {	-- The Nokhud Approach, The Nokhud Offensive
					-- ["coord"] = { XX.Y, XX.Y, 2093 },	-- The Nokhud Offensive
					["crs"] = { 199616 },	-- Washengtu
				}),
			}),
			n(QUESTS, {
				q(66690, {	-- The Final Ancestor
					["sourceQuests"] = {
						70374,	-- Himia, The Blessed
						66834,	-- Rellen, the Learned
					},
					["provider"] = { "n", 190164 },	-- Elder Nazuun
					["coord"] = { 41.6, 56.7, OHNAHRAN_PLAINS },
					["groups"] = {
						i(193483),	-- Medallion of the Ancestors (QI!)
						i(200251),	-- Medallion of the Ancestors
					},
				}),
				q(66658, {	-- The Nokhud Offensive: Founders Keepers
					["sourceQuests"] = { 66657 },	-- And Stay Dead!
					["provider"] = { "n", 193985 },	-- Initiate Zorig
					["coord"] = { 31.4, 71.0, OHNAHRAN_PLAINS },	-- Follows you
					["groups"] = {
						i(200100),	-- Batubar the Relentless (QI!)
						i(200115),	-- Sarantuya the Ever-True (QI!)
						i(197891),	-- Embroidered Broadhoof Cowl
						i(197889),	-- Geyserwalker Visage
						i(197897),	-- Keratin-Reinforced Coif
						i(197899),	-- Speakbreaker Barbuta
						i(197359),	-- Renewed Proto-Drake: Hairy Brow (MM!)
					},
				}),
				q(66339, {	-- The Wind Belongs to the Sky
					["sourceQuests"] = { 66783 },	-- Renewal of Vows
					["provider"] = { "n", 188601 },	-- Khanam Matra Sarest
					["coord"] = { 22.3, 51.0, OHNAHRAN_PLAINS },
					["groups"] = {
						i(197666),	-- Maruuk Ring of Bravery
						i(197665),	-- Ohn'Ahra's Gratitude
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2498, {	-- Granyth
					["crs"] = { 186616 },	-- Granyth
					["groups"] = {
						i(193690),	-- Drake Hunter Shoulderpads
						i(193694),	-- Drake Slayer's Greaves
						i(193689, {	-- Granyth's Enduring Scale
							["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_6 },
						}),
						i(212757, {	-- Granyth's Enduring Scale
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(193695),	-- Quarry Slayer Glaive
						i(193693),	-- Shikaar Ranger Bracers
						i(193692),	-- Stoneroot Headdress
					},
				}),
				e(2497, {	-- The Raging Tempest
					["crs"] = { 186615 },	-- The Raging Tempest
					["groups"] = {
						i(193697),	-- Bottle of Spiraling Winds
						i(193699),	-- Staff of Violent Storms
						i(193700),	-- Strike Twice
						i(193698),	-- Thrashing Wind Vambraces
						i(193696),	-- Thunderous Downburst Ring
					},
				}),
				e(2478, {	-- Teera and Maruuk
					["crs"] = {
						186338,	-- Maruuk
						186339,	-- Teera
					},
					["groups"] = {
						i(193681),	-- Bow of the First Khanam
						i(193677),	-- Furious Ragefeather
						i(193679),	-- Idol of Trampling Hooves
						i(193678),	-- Miniature Singing Stone
						i(193680),	-- Tunic of the Eternal Hunt
						i(193676),	-- Ukhel Ancestry Beads
					},
				}),
				e(2477, {	-- Balakar Khan
					["crs"] = { 186151 },	-- Balakar Khan
					["groups"] = {
						ach(16275),	-- The Nokhud Offensive
						i(193683),	-- Blessed Ohn'ir Robes
						i(193687),	-- Koroleth's Crackling Dagger
						i(193684),	-- Legguards of Adamant Rule
						i(193685),	-- Lightning-Charged Striders
						i(193686),	-- Nokhud Traditionalist's Pauldrons
						i(193688),	-- Stormslash
						i(201929),	-- Stolen Breath of Ohn'ahra
						i(201743),	-- Technique: Windborne Velocidrake: Silver and Blue Armor (RECIPE!)
						i(197625),	-- Windborne Velocidrake: Feathery Tail (MM!)
						i(197635),	-- Windborne Velocidrake: Reaver Pattern (MM!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2477, {	-- Balakar Khan
					["crs"] = { 186151 },	-- Balakar Khan
					["groups"] = {
						ach(16276),	-- Heroic: The Nokhud Offensive
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				n(ACHIEVEMENTS, {
					ach(16620),	-- Ohuna Incubation
				}),
				e(2497, {	-- The Raging Tempest
					["crs"] = { 186615 },	-- The Raging Tempest
					["groups"] = {
						ach(16447),	-- What Are The Chances...
					},
				}),
				e(2478, {	-- Teera and Maruuk
					["crs"] = {
						186338,	-- Maruuk
						186339,	-- Teera
					},
					["groups"] = {
						ach(16456),	-- Weapons of the Maruukai
					},
				}),
				e(2477, {	-- Balakar Khan
					["crs"] = { 186151 },	-- Balakar Khan
					["groups"] = {
						ach(16277),	-- Mythic: The Nokhud Offensive
						ach(17102),	-- Mythic: The Nokhud Offensive Guild Run
						ach(16602),	-- Nokhud Deed Goes Unnoticed
					},
				}),
			}),
		},
	})
})));
