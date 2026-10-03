---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(VENDORS, {
			n(208170, {	-- Mythrin'dir <Trade Goods>
				["coord"] = { 49.6, 62.8, EMERALD_DREAM },
				["groups"] = {
					i(211399),	-- Technique: Glyph of the Lunar Chameleon (RECIPE!)
				},
			}),
			n(212903, {	-- Thaelishar Groveheart <Fauna Specialist>
				["coord"] = { 60.3, 16.9, EMERALD_DREAM },
				["groups"] = {
					i(210764),	-- Silent Mark of the Dreamtalon
					i(210767),	-- Silent Mark of the Dreamstag
					i(210755),	-- Silent Mark of the Dreamsaber
					i(210766),	-- Silent Mark of the Umbraclaw
				},
			}),
			n(213285, bubbleDown({ ["timeline"] = { REMOVED_11_0_0 } }, {	-- Theozhaklos the Curious <Novice Explorer>
				["coord"] = { 36.7, 33.3, EMERALD_DREAM },
				["groups"] = bubbleDownFiltered({
					["cost"] = { { "i", 210944, 1 } },	-- Emerald Mark of Mastery
					["bonusID"] = 7532,
				},FILTERFUNC_itemID,{
					cl(DEATHKNIGHT, {
						i(207203),	-- Casket of the Risen Nightmare
						i(207199),	-- Greaves of the Risen Nightmare
						i(207200),	-- Piercing Gaze of the Risen Nightmare
						i(207198),	-- Skewers of the Risen Nightmare
						i(207201),	-- Thorns of the Risen Nightmare
					}),
					cl(DEMONHUNTER, {
						i(207266),	-- Screaming Torchfiend's Binding
						i(207262),	-- Screaming Torchfiend's Blazewraps
						i(207263),	-- Screaming Torchfiend's Burning Scowl
						i(207264),	-- Screaming Torchfiend's Grasp
						i(207261),	-- Screaming Torchfiend's Horned Memento
					}),
					cl(DRUID, {
						i(207254),	-- Benevolent Embersage's Casque
						i(207253),	-- Benevolent Embersage's Leggings
						i(207257),	-- Benevolent Embersage's Robe
						i(207255),	-- Benevolent Embersage's Talons
						i(207252),	-- Benevolent Embersage's Wisdom
					}),
					cl(EVOKER, {
						i(207226),	-- Weyrnkeeper's Timeless Breeches
						i(207228),	-- Weyrnkeeper's Timeless Clawguards
						i(207227),	-- Weyrnkeeper's Timeless Dracoif
						i(207230),	-- Weyrnkeeper's Timeless Raiment
						i(207225),	-- Weyrnkeeper's Timeless Sandbrace
					}),
					cl(HUNTER, {
						i(207216),	-- Blazing Dreamstalker's Finest Hunt
						i(207218),	-- Blazing Dreamstalker's Flamewaker Horns
						i(207221),	-- Blazing Dreamstalker's Scaled Hauberk
						i(207217),	-- Blazing Dreamstalker's Shellgreaves
						i(207219),	-- Blazing Dreamstalker's Skinners
					}),
					cl(MAGE, {
						i(207290),	-- Wayward Chronomancer's Chronocap
						i(207291),	-- Wayward Chronomancer's Gloves
						i(207288),	-- Wayward Chronomancer's Metronomes
						i(207289),	-- Wayward Chronomancer's Pantaloons
						i(207293),	-- Wayward Chronomancer's Patchwork
					}),
					cl(MONK, {
						i(207243),	-- Mystic Heron's Hopeful Effigy
						i(207244),	-- Mystic Heron's Waders
						i(207245),	-- Mystic Heron's Hatsuburi
						i(207246),	-- Mystic Heron's Glovebills
						i(207248),	-- Mystic Heron's Burdens
					}),
					cl(PALADIN, {
						i(207189),	-- Zealous Pyreknight's Ailettes
						i(207191),	-- Zealous Pyreknight's Barbute
						i(207190),	-- Zealous Pyreknight's Cuisses
						i(207192),	-- Zealous Pyreknight's Jeweled Gauntlets
						i(207194),	-- Zealous Pyreknight's Warplate
					}),
					cl(PRIEST, {
						i(207284),	-- Cassock of Lunar Communion
						i(207281),	-- Crest of Lunar Communion
						i(207280),	-- Leggings of Lunar Communion
						i(207282),	-- Touch of Lunar Communion
						i(207279),	-- Shoulderguardians of Lunar Communion
					}),
					cl(ROGUE, {
						i(207234),	-- Lucid Shadewalker's Bladed Spaulders
						i(207235),	-- Lucid Shadewalker's Chausses
						i(207237),	-- Lucid Shadewalker's Clawgrips
						i(207239),	-- Lucid Shadewalker's Cuirass
						i(207236),	-- Lucid Shadewalker's Deathmask
					}),
					cl(SHAMAN, {
						i(207207),	-- Greatwolf Outcast's Companions
						i(207208),	-- Greatwolf Outcast's Fur-Lined Kilt
						i(207210),	-- Greatwolf Outcast's Grips
						i(207212),	-- Greatwolf Outcast's Harness
						i(207209),	-- Greatwolf Outcast's Jaws
					}),
					cl(WARLOCK, {
						i(207273),	-- Devout Ashdevil's Claws
						i(207272),	-- Devout Ashdevil's Grimhorns
						i(207270),	-- Devout Ashdevil's Hatespikes
						i(207275),	-- Devout Ashdevil's Razorhide
						i(207271),	-- Devout Ashdevil's Tights
					}),
					cl(WARRIOR, {
						i(207183),	-- Molten Vanguard's Crushers
						i(207182),	-- Molten Vanguard's Domeplate
						i(207185),	-- Molten Vanguard's Plackart
						i(207180),	-- Molten Vanguard's Shouldervents
						i(207181),	-- Molten Vanguard's Steel Tassets
					}),
				}),
			})),
			n(211328, {	-- Vaskarn <Dreaming Crest Exchange>
				["coord"] = { 49.8, 62.9, EMERALD_DREAM },
				["groups"] = {
					-- Trade Up
					i(210756, {	-- Gleaming Satchel of Drake's Dreaming Crests
						["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
						["cost"] = { { "c", ASPECTS_DREAMING_CREST, 90 } },
						["groups"] = {
							currency(DRAKES_DREAMING_CREST),
						},
					}),
					i(210762, {	-- Shimmering Clutch of Wyrm's Dreaming Crests
						["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
						["cost"] = { { "c", ASPECTS_DREAMING_CREST, 50 } },
						["groups"] = {
							currency(WYRMS_DREAMING_CREST),
						},
					}),
					i(210768, {	-- Viridescent Bouquet of Aspect's Dreaming Crests
						["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
						["cost"] = { { "c", ASPECTS_DREAMING_CREST, 30 } },
						["groups"] = {
							currency(ASPECTS_DREAMING_CREST),
						},
					}),
					-- Trade Down
					i(210923, {	-- Clutch of Wyrm's Dreaming Crests
						["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
						["cost"] = { { "c", ASPECTS_DREAMING_CREST, 15 } },
						["groups"] = {
							currency(WYRMS_DREAMING_CREST),
						},
					}),
					i(210917, {	-- Pouch of Whelpling's Dreaming Crests
						["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
						["cost"] = { { "c", DRAKES_DREAMING_CREST, 15 } },
						["groups"] = {
							currency(WHELPLINGS_DREAMING_CREST),
						},
					}),
					i(210770, {	-- Satchel of Drake's Dreaming Crests
						["timeline"] = { REMOVED_10_2_6_SEASON_FOUR },
						["cost"] = { { "c", WYRMS_DREAMING_CREST, 15 } },
						["groups"] = {
							currency(DRAKES_DREAMING_CREST),
						},
					}),
				},
			}),
		}),
	}),
})));
