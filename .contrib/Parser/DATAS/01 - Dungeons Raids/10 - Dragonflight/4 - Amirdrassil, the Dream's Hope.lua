-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local GNARLROOT = 2564;
local IGIRA = 2554;
local VOLCOROSS = 2557;
local COUNCIL_OF_DREAMS = 2555;
local LARODAR = 2553;
local NYMUE = 2556;
local SMOLDERON = 2563;
local TINDRAL = 2565;
local FYRAKK = 2519;

local ADMIRDRASSIL_THE_DREAMS_HOPE = 2502;

local SymRaidAdmirdrassil = function(ClassID, DiffID)
	return {{"sub","instance_tier",1207,DiffID,ClassID}}
end

------ EncounterToCRS ------
local EncounterToCRS = {
	[GNARLROOT] = { 209333 },	-- Gnarlroot
	[IGIRA] = {
		206689,	-- Igira the Cruel <Zaqali Elder>
		200926,	-- Igira the Cruel <Zaqali Elder>
	},
	[VOLCOROSS] = { 208478 },	-- Volcoross
	[COUNCIL_OF_DREAMS] = {
		208365,	-- Aerwynn <Council of Dreams>
		208956,	-- Pip <Council of Dreams>
		208367,	-- Pip <Council of Dreams>
		208363,	-- Urctos <Council of Dreams>
	},
	[LARODAR] = { 208445 },	-- Larodar, Keeper of the Flame
	[NYMUE] = { 206172 },	-- Nymue <Weaver of the Cycle>
	[SMOLDERON] = { 200927 },	-- Smolderon <The Firelord>
	[TINDRAL] = {
		210601,	-- Tindral Sageswift <Seer of Flame>
		209090,	-- Tindral Sageswift <Seer of Flame> (You fight this ID)
	},
	[FYRAKK] = { 204931 },	-- Fyrakk <The Blazing>
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[GNARLROOT] = {
		i(207142),	-- Ancient Haubark
		i(207120),	-- Anguished Restraints
		i(207169),	-- Branch of the Tormented Ancient
		i(207797),	-- Defender of the Ancient
		i(207144),	-- Forlorn Leaf Clasp
		i(207800),	-- Gnarlroot's Bonecrusher
		i(207160),	-- Inflammable Drapeleaf
		i(207117),	-- Requiem Rootmantle
		i(207153),	-- Seared Ironwood Greaves
		i(207133),	-- Silent Tormentor's Hood
		i(207794),	-- Staff of Incandescent Torment
		i(207126),	-- Twisted Blossom Stompers
	},
	[IGIRA] = {
		i(207466, {	-- Dreadful Tormented Dreamheart
			i(207201),	-- Thorns of the Risen Nightmare
			i(207264),	-- Screaming Torchfiend's Grasp
			i(207273),	-- Devout Ashdevil's Claws
		}),
		i(207467, {	-- Mystic Tormented Dreamheart
			i(207255),	-- Benevolent Embersage's Talons
			i(207219),	-- Blazing Dreamstalker's Skinners
			i(207291),	-- Wayward Chronomancer's Gloves
		}),
		i(207468, {	-- Venerated Tormented Dreamheart
			i(207192),	-- Zealous Pyreknight's Jeweled Gauntlets
			i(207282),	-- Touch of Lunar Communion
			i(207210),	-- Greatwolf Outcast's Grips
		}),
		i(207469, {	-- Zenith Tormented Dreamheart
			i(207228),	-- Weyrnkeeper's Timeless Clawguards
			i(207246),	-- Mystic Heron's Glovebills
			i(207237),	-- Lucid Shadewalker's Clawgrips
			i(207183),	-- Molten Vanguard's Crushers
		}),
		i(207150),	-- Agonizing Manacles
		i(207165),	-- Bandolier of Twisted Blades
		i(207131),	-- Bloody Dragonhide Belt
		i(207783),	-- Cruel Dreamcarver
		i(207140),	-- Drakestalker's Trophy Pauldrons
		i(207118),	-- Elder's Volcanic Wrap
		i(207787),	-- Igira's Flaying Hatchet
		i(207162),	-- Signet of the Last Elder
	},
	[VOLCOROSS] = {
		i(207175),	-- Coiled Serpent Idol
		i(207130),	-- Flamewaker's Grips
		i(207146),	-- Jeweled Sash of the Viper
		i(207148),	-- Lavaforged Sollerets
		i(207122),	-- Lost Scholar's Belted Treads
		i(207785),	-- Magmatic Volcannon
		i(210214),	-- Ouroboreal Necklet
		i(207128),	-- Primordial Serpent's Bindings
		i(207141),	-- Snake Eater's Cowl
		i(207121),	-- Vesture of the Smoldering Serpent
		i(207152),	-- Volcanic Spelunker's Vents
		i(207789),	-- Volcoross's Barbed Fang
	},
	[COUNCIL_OF_DREAMS] = {
		i(207138),	-- Aerwynn's Ritual Sarong
		i(207139),	-- Cleats of the Savage Claw
		i(207151),	-- Emerald Guardian's Casque
		i(207173),	-- Gift of Ursine Vengeance
		i(207168),	-- Pip's Emerald Friendship Badge
		i(207782),	-- Sickle of the White Stag
		i(207127),	-- Strigine Epaulets
		i(207784),	-- Thorncaller Claw
		i(207796),	-- Trickster's Captivating Chime
		i(207119),	-- Urctos's Hibernal Dial
		i(210206),	-- Verdant Sanctuary Bands
		i(210205),	-- Vigilant Protector's Bracers
	},
	[LARODAR] = {
		i(207474, {	-- Dreadful Ashen Dreamheart
			i(207199),	-- Greaves of the Risen Nightmare
			i(207262),	-- Screaming Torchfiend's Blazewraps
			i(207271),	-- Devout Ashdevil's Tights
		}),
		i(207475, {	-- Mystic Ashen Dreamheart
			i(207253),	-- Benevolent Embersage's Leggings
			i(207217),	-- Blazing Dreamstalker's Shellgreaves
			i(207289),	-- Wayward Chronomancer's Pantaloons
		}),
		i(207476, {	-- Venerated Ashen Dreamheart
			i(207190),	-- Zealous Pyreknight's Cuisses
			i(207280),	-- Leggings of Lunar Communion
			i(207208),	-- Greatwolf Outcast's Fur-Lined Kilt
		}),
		i(207477, {	-- Zenith Ashen Dreamheart
			i(207226),	-- Weyrnkeeper's Timeless Breeches
			i(207244),	-- Mystic Heron's Waders
			i(207235),	-- Lucid Shadewalker's Chausses
			i(207181),	-- Molten Vanguard's Steel Tassets
		}),
		i(207159),	-- Band of Burning Thorns
		i(207790),	-- Larodar's Moonblade
		i(207116),	-- Lost Scholar's Timely Hat
		i(207149),	-- Phlegethic Girdle
		i(207129),	-- Robes of the Ashen Grove
		i(207792),	-- Scythe of the Fallen Keeper
		i(207170),	-- Smoldering Seedling
		i(207143),	-- Twisted Flamecuffs
	},
	[NYMUE] = {
		i(207462, {	-- Dreadful Verdurous Dreamheart
			i(207203),	-- Casket of the Risen Nightmare
			i(207266),	-- Screaming Torchfiend's Binding
			i(207275),	-- Devout Ashdevil's Razorhide
		}),
		i(207463, {	-- Mystic Verdurous Dreamheart
			i(207257),	-- Benevolent Embersage's Robe
			i(207221),	-- Blazing Dreamstalker's Scaled Hauberk
			i(207293),	-- Wayward Chronomancer's Patchwork
		}),
		i(207464, {	-- Venerated Verdurous Dreamheart
			i(207194),	-- Zealous Pyreknight's Warplate
			i(207284),	-- Cassock of Lunar Communion
			i(207212),	-- Greatwolf Outcast's Harness
		}),
		i(207465, {	-- Zenith Verdurous Dreamheart
			i(207230),	-- Weyrnkeeper's Timeless Raiment
			i(207248),	-- Mystic Heron's Burdens
			i(207239),	-- Lucid Shadewalker's Cuirass
			i(207185),	-- Molten Vanguard's Plackart
		}),
		i(208445),	-- Amulet of Eonar's Chosen
		i(208616),	-- Dreambinder, Loom of the Great Cycle
		i(207155),	-- Eldermoss Gauntlets
		i(207135),	-- Eternal Sentinel's Cord
		i(207123),	-- Lifewoven Slippers
		i(208615),	-- Nymue's Unraveling Spindle
		i(207798),	-- Verdant Matrix Beacon
		i(210203),	-- Wellspring Wristlets
	},
	[SMOLDERON] = {
		i(207478, {	-- Dreadful Smoldering Dreamheart
			i(207198),	-- Skewers of the Risen Nightmare
			i(207261),	-- Screaming Torchfiend's Horned Memento
			i(207270),	-- Devout Ashdevil's Hatespikes
		}),
		i(207479, {	-- Mystic Smoldering Dreamheart
			i(207252),	-- Benevolent Embersage's Wisdom
			i(207216),	-- Blazing Dreamstalker's Finest Hunt
			i(207288),	-- Wayward Chronomancer's Metronomes
		}),
		i(207480, {	-- Venerated Smoldering Dreamheart
			i(207189),	-- Zealous Pyreknight's Ailettes
			i(207279),	-- Shoulderguardians of Lunar Communion
			i(207207),	-- Greatwolf Outcast's Companions
		}),
		i(207481, {	-- Zenith Smoldering Dreamheart
			i(207225),	-- Weyrnkeeper's Timeless Sandbrace
			i(207243),	-- Mystic Heron's Hopeful Effigy
			i(207234),	-- Lucid Shadewalker's Bladed Spaulders
			i(207180),	-- Molten Vanguard's Shouldervents
		}),
		i(207167),	-- Ashes of the Embersoul
		i(207166),	-- Cataclysmic Signet Brand
		i(210204),	-- Fading Flame Wristbands
		i(207156),	-- Fused Obsidian Sabatons
		i(207799),	-- Incandescent Soulcleaver
		i(207161),	-- Mantle of Blazing Sacrifice
		i(207791),	-- Remnant Charglaive
	},
	[TINDRAL] = {
		i(207470, {	-- Dreadful Blazing Dreamheart
			i(207200),	-- Piercing Gaze of the Risen Nightmare
			i(207263),	-- Screaming Torchfiend's Burning Scowl
			i(207272),	-- Devout Ashdevil's Grimhorns
		}),
		i(207471, {	-- Mystic Blazing Dreamheart
			i(207254),	-- Benevolent Embersage's Casque
			i(207218),	-- Blazing Dreamstalker's Flamewaker Horns
			i(207290),	-- Wayward Chronomancer's Chronocap
		}),
		i(207472, {	-- Venerated Blazing Dreamheart
			i(207191),	-- Zealous Pyreknight's Barbute
			i(207281),	-- Crest of Lunar Communion
			i(207209),	-- Greatwolf Outcast's Jaws
		}),
		i(207473, {	-- Zenith Blazing Dreamheart
			i(207227),	-- Weyrnkeeper's Timeless Dracoif
			i(207245),	-- Mystic Heron's Hatsuburi
			i(207236),	-- Lucid Shadewalker's Deathmask
			i(207182),	-- Molten Vanguard's Domeplate
		}),
		i(207780),	-- Ashen Ranger's Longbow
		i(207172),	-- Belor'relos, the Suncaller
		i(207781),	-- Betrayer's Cinderblade
		i(207795),	-- Eternal Kindler's Greatstaff
		i(207163),	-- Eye of the Rising Flame
		i(207137),	-- Flameseer's Winged Grasps
		i(207157),	-- Smoldering Chevalier's Greatbelt
		i(207134),	-- Tasseted Emberwalkers
	},
	[FYRAKK] = {
		i(208614),	-- Augury of the Primal Flame
		i(207124),	-- Blooming Redeemer's Sash
		i(207171),	-- Blossom of Amirdrassil
		i(207145),	-- Boots of the Molten Hoard
		i(207154),	-- Carapace of the Unbending Flame
		i(207132),	-- Frenzied Incarnate Legwraps
		i(207174),	-- Fyrakk's Tainted Rageheart
		i(207786),	-- Gholak, the Final Conflagration
		i(207793),	-- Rashon, the Immortal Blaze
		i(207115),	-- Twisting Shadow Claws
		i(207788),	-- Vakash, the Shadowed Inferno
	},
};

------ Zone Drops ------
local ZoneDropLoot = {
	i(208442),	-- Daydreamer's Glimmering Ring [BoE]
	i(208427),	-- Insurgent Flame Warboots [BoE]
	i(208431),	-- Lost Scholar's Temporal Shoulderdials [BoE]
	i(208428),	-- Mantle of Slumbering Sands [BoE]
	i(208426),	-- Mask of the Unbidden Grim [BoE]
	i(208434),	-- Sentinel's Gilded Poulaines [BoE]
	i(208432),	-- Vengeful Bladebeak Girdle [BoE]
	i(208420),	-- Visage of the Devouring Flame [BoE]
	i(208430),	-- Whispering Fanged Cord [BoE]
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	-- Disabled in 10.2.7
	-- #IF BEFORE 10.2.7
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
	-- #ELSE
	[DIFFICULTY.RAID.LFR] = IGNORED_VALUE,
	[DIFFICULTY.RAID.NORMAL] = IGNORED_VALUE,
	[DIFFICULTY.RAID.HEROIC] = IGNORED_VALUE,
	-- #ENDIF
};

local TokenModID = {
	[DIFFICULTY.RAID.LFR] = 83,
	[DIFFICULTY.RAID.NORMAL] = 82,
	[DIFFICULTY.RAID.HEROIC] = 84,
	[DIFFICULTY.RAID.MYTHIC] = 85,
}
local TokenSymModID = {
	[DIFFICULTY.RAID.LFR] = 4,
	[DIFFICULTY.RAID.NORMAL] = 3,
	[DIFFICULTY.RAID.HEROIC] = 5,
	[DIFFICULTY.RAID.MYTHIC] = 6,
}

InstanceHelper.ExtraLoots = {
	-- Tier Tokens (has different modID than other raids because of course)
	{
		Add = function(encounter, id, difficulty, data)
			local g = data[id]
			if g then
				g = clone(g)
				-- use alternate versions of the Tokens with different ModID, but non-filling symlink to the base tokens
				-- to prevent dupes in Main & Mini
				local dropModID = TokenModID[difficulty]
				local symModID = TokenSymModID[difficulty]
				-- copied from old Castle Nathria implementation
				for _,item in ipairs(g) do
					item.modID = dropModID
					item.skipFill = true
					item.up = IGNORED_VALUE
					item.sym = {{"select","itemID",modItemId(item.itemID,symModID)},{"groupfill",true},{"pop"}}	-- Base Version & Fill
					item.timeline = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
					item.nomerge = true
				end
				encounter.groups = appendAllGroups(encounter.groups, g)
				return encounter
			end
		end,
		Data = {
			[TINDRAL] = {	-- Head
				i(217324),	-- Dreadful Decelerating Chronograph
				i(217325),	-- Mystic Decelerating Chronograph
				i(217326),	-- Venerated Decelerating Chronograph
				i(217327),	-- Zenith Decelerating Chronograph
			},
			[SMOLDERON] = {	-- Shoulder
				i(217332),	-- Dreadful Synchronous Timestrand
				i(217333),	-- Mystic Synchronous Timestrand
				i(217334),	-- Venerated Synchronous Timestrand
				i(217335),	-- Zenith Synchronous Timestrand
			},
			[NYMUE] = {	-- Chest
				i(217316),	-- Dreadful Fleeting Hourglass
				i(217317),	-- Mystic Fleeting Hourglass
				i(217318),	-- Venerated Fleeting Hourglass
				i(217319),	-- Zenith Fleeting Hourglass
			},
			[IGIRA] = {	-- Hands
				i(217320),	-- Dreadful Quickened Bronzestone
				i(217321),	-- Mystic Quickened Bronzestone
				i(217322),	-- Venerated Quickened Bronzestone
				i(217323),	-- Zenith Quickened Bronzestone
			},
			[LARODAR] = {	-- Legs
				i(217328),	-- Dreadful Ephemeral Hypersphere
				i(217329),	-- Mystic Ephemeral Hypersphere
				i(217330),	-- Venerated Ephemeral Hypersphere
				i(217331),	-- Zenith Ephemeral Hypersphere
			},
		}
	},
	-- Awakened Tempostone (has different modID than other raids because of course)
	{
		Add = function(encounter, id, difficulty, data)
			local item = data[id]
			if item then
				item = clone(item)
				item.modID = TokenModID[difficulty]
				item.up = IGNORED_VALUE
				item.sym = GET_SYM_DF_S4_TIER_TOKENS(TokenSymModID[difficulty])
				item.timeline = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH }
				encounter.groups = appendAllGroups(encounter.groups, {item});
				return encounter
			end
		end,
		Data = {
			[FYRAKK] = i(217408),	-- Awakened Tempostone
		}
	},
}

-- TODO: fix when LFR DF is available again
local TIMELINE_LFR = { ADDED_10_2_0, REMOVED_11_0_2 }

root(ROOTS.Instances, expansion(EXPANSION.DF, {
	inst(1207, {	-- Amirdrassil, the Dream's Hope
		["coord"] = { 27.3, 30.9, EMERALD_DREAM },
		["timeline"] = { ADDED_10_2_0 },
		["maps"] = {
			2232,	-- Wellspring Atrium
			2233,	-- Throne of the Firelord
			2234,	-- Amirdrassil, the Dream's Hope
			2235,	-- The Northern Boughs
			2236,	-- The Eastern Boughs
			2237,	-- The Southern Boughs
			2238,	-- Heart of Amirdrassil
			2244,	-- The Scorched Hall
			2240,	-- Verdant Terrace
		},
		["isRaid"] = true,
		["groups"] = {
			header(HEADERS.Item, 206448, {	-- Fyr'alath the Dreamrender
				n(QUESTS, bubbleDown({
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
				}, {
					q(77093, {	-- The Shadowflame Axe
						["provider"] = { "i", 207729 },	-- Fyr'alath the Dreamrender
					}),
					q(77191, {	-- Handling It
						["sourceQuests"] = { 77093 },	-- The Shadowflame Axe
						["provider"] = { "n", 206107 },	-- Eadweard Dalyngrigge
						["coord"] = { 61.6, 31.2, THALDRASZUS },
						["cost"] = {
							{ "i", 208577, 1 },	-- 1x Symbiotic Glowspore Grip
							{ "i", 208592, 1 },	-- 1x Rune of Shadowbinding
							{ "i", 208578, 1 },	-- 1x Concentrated Sophic Vellum
						},
						["groups"] = {
							i(208781),	-- Symbiotic Glowspore Grip (QI!)
						},
					}),
					q(77833, {	-- Handling It: Concentrated Sophic Vellum
						["sourceQuests"] = { 77191 },	-- Handling It
						["provider"] = { "n", 209601 },	-- Eadweard's Notes
						["coord"] = { 61.6, 31.2, THALDRASZUS },
					}),
					q(77835, {	-- Handling It: Rune of Shadowbinding
						["sourceQuests"] = { 77191 },	-- Handling It
						["provider"] = { "n", 209601 },	-- Eadweard's Notes
						["coord"] = { 61.6, 31.2, THALDRASZUS },
					}),
					q(77791, {	-- Handling It: Symbiotic Glowspore Grip
						["sourceQuests"] = { 77191 },	-- Handling It
						["provider"] = { "n", 209601 },	-- Eadweard's Notes
						["coord"] = { 61.6, 31.2, THALDRASZUS },
					}),
					q(78155, {	-- Handling It: Radiant Fleck of Ash
						["sourceQuests"] = { 77833 },	-- Handling It: Concentrated Sophic Vellum
						["provider"] = { "n", 194837 },	-- Shalasar Glimmerdusk
						["coord"] = { 62.4, 18.6, OHNAHRAN_PLAINS },
						["groups"] = {
							i(210002),	-- Ashen Dowsing Rod (QI!)
							i(210001),	-- Prototype Order Vellum (QI!)
							i(208581),	-- Radiant Fleck of Ash (QI!)
						},
					}),
					q(78003, {	-- Handling It: Taut Tethercoil
						["sourceQuests"] = { 77835 },	-- Handling It: Rune of Shadowbinding
						["provider"] = { "n", 194840 },	-- Lydiara Whisperfeather
						["coord"] = { 40.2, 64.4, THE_AZURE_SPAN },
						["groups"] = {
							i(209352),	-- Prototype Binding Rune (QI!)
							i(208595),	-- Taut Tethercoil (QI!)
							i(209996),	-- Tethercoil Rune (QI!)
						},
					}),
					q(77886, {	-- Handling It: Shadowed Dreamleaf
						["sourceQuests"] = { 77791 },	-- Handling It: Symbiotic Glowspore Grip
						["provider"] = { "n", 194842 },	-- Erden
						["coord"] = { 82.4, 50.6, OHNAHRAN_PLAINS },
						["groups"] = {
							i(210009),	-- Prototype Dreamleaf Grip (QI!)
							i(208593),	-- Shadowed Dreamleaf (QI!)
							i(210199),	-- Tattered Dreamleaf (QI!)
						},
					}),
					q(77838, {	-- Tattered Dreamleaf
						["description"] = "Appears that ANY class can be given this quest by another player with the Tattered Dreamleaf.",
						["sourceQuests"] = {
							77833,	-- Handling It: Concentrated Sophic Vellum
							77835,	-- Handling It: Rune of Shadowbinding
							77791,	-- Handling It: Symbiotic Glowspore Grip
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "i", 210199 },	-- Tattered Dreamleaf
						["classes"] = IGNORED_VALUE,	-- prevent bubbleDown... this was given to my Hunter
						["groups"] = {
							i(211927),	-- Tattered Dreamleaf
							i(208587),	-- Budding Restoration Mote (QI!)
							i(208588),	-- Burgeoning Restoration Mote (QI!)
							i(208846),	-- Restored Dreamleaf (QI!)
							i(208576),	-- Thriving Restoration Mote (QI!)
						},
					}),
					q(78156, {	-- Handling It: Radiant Vellum
						["sourceQuests"] = { 78155 },	-- Handling It: Radiant Fleck of Ash
						["provider"] = { "n", 194837 },	-- Shalasar Glimmerdusk
						["coord"] = { 62.4, 18.6, OHNAHRAN_PLAINS },
						["groups"] = {
							i(210003, {	-- Shalasar's Sophic Vellum (QI!)
								["cost"] = {
									{ "i", 190316, 100 },	-- Awakened Earth
									{ "i", 190321, 150 },	-- Awakened Fire
									{ "i", 190324, 50 },	-- Awakened Order
									{ "i", 210001, 1 },		-- Prototype Order Vellum
									{ "i", 200113, 200 },	-- Resonant Crystal
								},
							}),
							i(210011, {	-- Shalasar's Notes on Sophic Magic
								r(422338, {	-- Shalasar's Sophic Vellum
									["requireSkill"] = ENCHANTING,
									["u"] = TRAINING,
								}),
							}),
						},
					}),
					q(78153, {	-- Handling It: Prototype Rune
						["sourceQuests"] = { 78003 },	-- Handling It: Taut Tethercoil
						["provider"] = { "n", 194840 },	-- Lydiara Whisperfeather
						["coord"] = { 40.2, 64.4, THE_AZURE_SPAN },
						["groups"] = {
							i(209998, {	-- Lydiara's Binding Rune (QI!)
								["cost"] = {
									{ "i", 194754, 250 },	-- Cosmic Ink
									{ "i", 209352, 1 },		-- Prototype Binding Rune
									{ "i", 194862, 50 },	-- Runed Writhebark
									{ "i", 204464, 10 },	-- Shadowflame Essence
								},
							}),
							i(209349, {	-- Lydiara's Notes on Rune Reagents
								r(422337, {	-- Lydiara's Guidance
									["requireSkill"] = INSCRIPTION,
									["u"] = TRAINING,
								}),
							}),
						},
					}),
					q(78159, {	-- Handling It: Glowspore Grip
						["sourceQuests"] = { 77886 },	-- Handling It: Shadowed Dreamleaf
						["provider"] = { "n", 194842 },	-- Erden
						["coord"] = { 82.4, 50.6, OHNAHRAN_PLAINS },
						["groups"] = {
							i(209351, {	-- Erden's Dreamleaf Grip (QI!)
								["cost"] = {
									{ "i", 208212, 5 },	-- Dreaming Essence
									{ "i", 193229, 50 },		-- Mireslush Hide
									{ "i", 205413, 3 },	-- Obsidian Cobraskin
									{ "i", 210009, 1 },	-- Prototype Dreamleaf Grip
									{ "i", 204460, 400 },	-- Zaralek Glowspores
								},
							}),
							i(210010, {	-- Erden's Notes on Symbiotic Spores
								r(422330, {	-- Erden's Glowspore Grip
									["requireSkill"] = LEATHERWORKING,
									["u"] = TRAINING,
								}),
							}),
						},
					}),
					q(78002, {	-- To The Test: Concentrated Sophic Vellum
						["sourceQuests"] = { 78156 },	-- Handling It: Radiant Vellum
						["provider"] = { "n", 194837 },	-- Shalasar Glimmerdusk
						["coord"] = { 62.4, 18.6, OHNAHRAN_PLAINS },
						["groups"] = {
							i(210222),	-- Resolved Element (QI!)
							i(210048),	-- Shalasar's Sophic Vellum (QI!)
							i(210240),	-- Stabilized Element (QI!)
							i(211398, {	-- Attuned Sophic Vellum (QI!)
								i(208578),	-- Concentrated Sophic Vellum (QI!)
							}),
						},
					}),
					q(78154, {	-- To the Test: Rune of Shadowbinding
						["sourceQuests"] = { 78153 },	-- Handling It: Prototype Rune
						["provider"] = { "n", 194840 },	-- Lydiara Whisperfeather
						["coord"] = { 40.2, 64.4, THE_AZURE_SPAN },
						["groups"] = {
							i(209999),	-- Lydiara's Rune of Shadowbinding (QI!)
							i(211397, {	-- Attuned Rune of Shadowbinding (QI!)
								i(208592),	-- Rune of Shadowbinding (QI!)
							}),
						},
					}),
					q(78655, {	-- Adaptive Cooling Salve
						["sourceQuests"] = { 78159 },	-- Handling It: Glowspore Grip
						["provider"] = { "n", 194842 },	-- Erden
						["coord"] = { 82.4, 50.6, OHNAHRAN_PLAINS },
						["cost"] = {
							{ "i", 190329, 5 },		-- Awakened Frost
							{ "i", 208212, 1 },		-- Dreaming Essence
							{ "i", 204460, 100 },	-- Zaralek Glowspores
						},
						["isDaily"] = true,
						["groups"] = {
							i(210918),	-- Adaptive Cooling Salve (QI!)
						},
					}),
					q(78160, {	-- To the Test: Symbiotic Glowspore Grip
						["sourceQuests"] = { 78159 },	-- Handling It: Glowspore Grip
						["provider"] = { "n", 194842 },	-- Erden
						["coord"] = { 82.4, 50.6, OHNAHRAN_PLAINS },
						["groups"] = {
							i(211396, {	-- Attuned Glowspore Grip (QI!)
								i(208577),	-- Symbiotic Glowspore Grip (QI!)
							}),
							i(210207),	-- Empowered Restorative Symbiote (QI!)
							i(210012),	-- Erden's Symbiotic Glowspore Grip (QI!)
						},
					}),
					q(77192, {	-- An Axe Tempered
						["sourceQuests"] = { 77191 },	-- Handling It
						["provider"] = { "n", 206107 },	-- Eadweard Dalyngrigge
						["coord"] = { 61.6, 31.2, THALDRASZUS },
					}),
					q(77193, {	-- The Power of Temptation
						["sourceQuests"] = { 77192 },	-- An Axe Tempered
						["provider"] = { "n", 208421 },	-- Wrathion
						["coord"] = { 24.6, 60.6, THE_WAKING_SHORES },
						--["maps"] = { 2211 },	-- Aberrus, the Shadowed Crucible
						-- It seems this subzone is still in The Waking Shores (mapID 2022)
						["groups"] = {
							i(206448),	-- Fyr'alath the Dreamrender
							ach(19450),	-- Fyr'alath the Dreamrender
						},
					}),
				})),
			}),
			n(ACHIEVEMENTS, {
				ach(19344, {	-- Incarnate's Wake
					crit(63095, {	-- Gnarlroot
						["_encounter"] = { GNARLROOT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63096, {	-- Igira the Cruel
						["_encounter"] = { IGIRA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63101, {	-- Smolderon
						["_encounter"] = { SMOLDERON, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(19345, {	-- Molten Incursion
					crit(63097, {	-- Volcoross
						["_encounter"] = { VOLCOROSS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63098, {	-- Larodar, Keeper of the Flame
						["_encounter"] = { LARODAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(19346, {	-- The Viridian Weave
					crit(63099, {	-- Council of Dreams
						["_encounter"] = { COUNCIL_OF_DREAMS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63100, {	-- Nymue, Weaver of the Cycle
						["_encounter"] = { NYMUE, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(19347, {	-- Fate of Amirdrassil
					crit(63102, {	-- Tindral Sageswift, Seer of the Flame
						["_encounter"] = { TINDRAL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63103, {	-- Fyrakk the Blazing
						["_encounter"] = { FYRAKK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(19331, {	-- Amirdrassil, the Dream's Hope
					crit(63095, {	-- Gnarlroot
						["_encounter"] = { GNARLROOT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63096, {	-- Igira the Cruel
						["_encounter"] = { IGIRA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63097, {	-- Volcoross
						["_encounter"] = { VOLCOROSS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63098, {	-- Larodar, Keeper of the Flame
						["_encounter"] = { LARODAR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63099, {	-- Council of Dreams
						["_encounter"] = { COUNCIL_OF_DREAMS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63100, {	-- Nymue, Weaver of the Cycle
						["_encounter"] = { NYMUE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63101, {	-- Smolderon
						["_encounter"] = { SMOLDERON, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63102, {	-- Tindral Sageswift, Seer of the Flame
						["_encounter"] = { TINDRAL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(63103, {	-- Fyrakk the Blazing
						["_encounter"] = { FYRAKK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(19333, {	-- Heroic: Amirdrassil, the Dream's Hope
					crit(63104, {	-- Gnarlroot
						["_encounter"] = { GNARLROOT, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63105, {	-- Igira the Cruel
						["_encounter"] = { IGIRA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63106, {	-- Volcoross
						["_encounter"] = { VOLCOROSS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63107, {	-- Larodar, Keeper of the Flame
						["_encounter"] = { LARODAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63108, {	-- Council of Dreams
						["_encounter"] = { COUNCIL_OF_DREAMS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63109, {	-- Nymue, Weaver of the Cycle
						["_encounter"] = { NYMUE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63110, {	-- Smolderon
						["_encounter"] = { SMOLDERON, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63111, {	-- Tindral Sageswift, Seer of the Flame
						["_encounter"] = { TINDRAL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(63112, {	-- Fyrakk the Blazing
						["_encounter"] = { FYRAKK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(19334, {	-- Mythic: Amirdrassil, the Dream's Hope
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19335,	-- Mythic: Gnarlroot
						19336,	-- Mythic: Igira the Cruel
						19337,	-- Mythic: Volcoross
						19338,	-- Mythic: Council of Dreams
						19339,	-- Mythic: Larodar, Keeper of the Flame
						19340,	-- Mythic: Nymue, Weaver of the Cycle
						19341,	-- Mythic: Smolderon
						19342,	-- Mythic: Tindral Sageswift, Seer of the Flame
						19343,	-- Mythic: Fyrakk the Blazing
					}},
				}),
				ach(19349, {	-- Glory of the Dream Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19322,	-- Meaner Pastures
						19320,	-- Cruelty Free
						19321,	-- Swog Champion
						19193,	-- Ducks In A Row
						19089,	-- Don't Let the Doe Hit You On The Way Out
						19394,	-- A Dream Within a Dream
						19319,	-- Haven't We Done This Before?
						19393,	-- Whelp, I'm Lost
						19390,	-- Memories of Teldrassil
					}},
					["groups"] = {
						i(210060),	-- Shadow Dusk Dreamsaber (MOUNT!)
					},
				}),
				-- Awakened
				ach(19570, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Awakened Flames
					crit(64986, {	-- Gnarlroot
						["_encounter"] = { GNARLROOT, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64987, {	-- Igira the Cruel
						["_encounter"] = { IGIRA, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64988, {	-- Volcoross
						["_encounter"] = { VOLCOROSS, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64989, {	-- Council of Dreams
						["_encounter"] = { COUNCIL_OF_DREAMS, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64990, {	-- Larodar, Keeper of the Flame
						["_encounter"] = { LARODAR, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64991, {	-- Nymue, Weaver of the Cycle
						["_encounter"] = { NYMUE, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64992, {	-- Smolderon
						["_encounter"] = { SMOLDERON, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64993, {	-- Tindral Sageswift, Seer of the Flame
						["_encounter"] = { TINDRAL, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64994, {	-- Fyrakk the Blazing
						["_encounter"] = { FYRAKK, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
				})),
				ach(19571, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Heroic: Awakened Flames
					crit(64995, {	-- Gnarlroot
						["_encounter"] = { GNARLROOT, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64996, {	-- Igira the Cruel
						["_encounter"] = { IGIRA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64997, {	-- Volcoross
						["_encounter"] = { VOLCOROSS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64998, {	-- Council of Dreams
						["_encounter"] = { COUNCIL_OF_DREAMS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64999, {	-- Larodar, Keeper of the Flame
						["_encounter"] = { LARODAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(65000, {	-- Nymue, Weaver of the Cycle
						["_encounter"] = { NYMUE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(65001, {	-- Smolderon
						["_encounter"] = { SMOLDERON, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(65002, {	-- Tindral Sageswift, Seer of the Flame
						["_encounter"] = { TINDRAL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(65003, {	-- Fyrakk the Blazing
						["_encounter"] = { FYRAKK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				})),
				ach(19572, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mythic: Awakened Flames
					crit(65004, {	-- Gnarlroot
						["_encounter"] = { GNARLROOT, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65005, {	-- Igira the Cruel
						["_encounter"] = { IGIRA, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65006, {	-- Volcoross
						["_encounter"] = { VOLCOROSS, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65007, {	-- Council of Dreams
						["_encounter"] = { COUNCIL_OF_DREAMS, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65008, {	-- Larodar, Keeper of the Flame
						["_encounter"] = { LARODAR, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65009, {	-- Nymue, Weaver of the Cycle
						["_encounter"] = { NYMUE, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65010, {	-- Smolderon
						["_encounter"] = { SMOLDERON, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65011, {	-- Tindral Sageswift, Seer of the Flame
						["_encounter"] = { TINDRAL, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(65012, {	-- Fyrakk the Blazing
						["_encounter"] = { FYRAKK, DIFFICULTY.RAID.MYTHIC },
					}),
				})),
				ach(19442),	-- Fire Catwalk With Me
				-- Guild Achievements
				ach(19387),	-- Amirdrassil, the Dream's Hope Guild Run
				ach(19388),	-- Heroic: Amirdrassil, the Dream's Hope Guild Run
			}),
			o(382621, {	-- Revival Catalyst Console
				["description"] = "The Revival Catalyst is a system that lets you convert Emerald Dream's Zone Weekly Event Items (Superbloom, Dreamseeds, A Worthy Ally: Dream) & LFR Mode Non-set items from the Amirdrassil Raid into your class' LFR Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
				["coord"] = { 60.6, 53.8, THALDRASZUS },
				["modelScale"] = 4,
				["catalystID"] = 7,	-- ItemBonus.Value_0 DF:S3
				["groups"] = {
					Difficulty(DIFFICULTY.RAID.LFR, {
						["upgradeTrackID"]=UPGRADETRACKS.VETERAN,
						["timeline"] = TIMELINE_LFR,
					}).AddGroups({
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.LFR),
							["groups"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
					Difficulty(DIFFICULTY.RAID.NORMAL, {["upgradeTrackID"]=UPGRADETRACKS.CHAMPION}).AddGroups({
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.NORMAL),
							["groups"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
					Difficulty(DIFFICULTY.RAID.HEROIC, {["upgradeTrackID"]=UPGRADETRACKS.HERO}).AddGroups({
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.HEROIC),
							["groups"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
					Difficulty(DIFFICULTY.RAID.MYTHIC, {["upgradeTrackID"]=UPGRADETRACKS.MYTH}).AddGroups({
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207202),	-- Graveboots of the Risen Nightmare
								i(207197),	-- Seal of the Risen Nightmare
								i(207195),	-- Shroud of the Risen Nightmare
								i(207196),	-- Vambraces of the Risen Nightmare
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207259),	-- Screaming Torchfiend's Armlets
								i(207260),	-- Screaming Torchfiend's Clasp
								i(207265),	-- Screaming Torchfiend's Clutches
								i(207258),	-- Screaming Torchfiend's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207249),	-- Benevolent Embersage's Featherdrape
								i(207256),	-- Benevolent Embersage's Lined Boots
								i(207251),	-- Benevolent Embersage's Sagacious Sash
								i(207250),	-- Benevolent Embersage's Wristwraps
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
								i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
								i(207229),	-- Weyrnkeeper's Timeless Treads
								i(207223),	-- Weyrnkeeper's Timeless Wristlets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207214),	-- Blazing Dreamstalker's Bracers
								i(207215),	-- Blazing Dreamstalker's Spined Girdle
								i(207213),	-- Blazing Dreamstalker's Staghide
								i(207220),	-- Blazing Dreamstalker's Striders
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207286),	-- Wayward Chronomancer's Cuffs
								i(207285),	-- Wayward Chronomancer's Stole
								i(207292),	-- Wayward Chronomancer's Strapped Boots
								i(207287),	-- Wayward Chronomancer's Synchronous Belt
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207242),	-- Mystic Heron's Belt
								i(207240),	-- Mystic Heron's Feathered Mantle
								i(207241),	-- Mystic Heron's Fisticuffs
								i(207247),	-- Mystic Heron's Tabi
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207186),	-- Zealous Pyreknight's Banner
								i(207193),	-- Zealous Pyreknight's Dreamstompers
								i(207188),	-- Zealous Pyreknight's Emblem
								i(207187),	-- Zealous Pyreknight's Flameguards
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207278),	-- Cincture of Lunar Communion
								i(207276),	-- Cloak of Lunar Communion
								i(207283),	-- Poulaines of Lunar Communion
								i(207277),	-- Wristwraps of Lunar Communion
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207233),	-- Lucid Shadewalker's Baldric
								i(207232),	-- Lucid Shadewalker's Bracers
								i(207231),	-- Lucid Shadewalker's Cape
								i(207238),	-- Lucid Shadewalker's Sollerets
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207204),	-- Greatwolf Outcast's Chainweave
								i(207211),	-- Greatwolf Outcast's Footpads
								i(207206),	-- Greatwolf Outcast's Sigil Belt
								i(207205),	-- Greatwolf Outcast's Wristguards
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207268),	-- Devout Ashdevil's Bracelets
								i(207269),	-- Devout Ashdevil's Fanged Sash
								i(207267),	-- Devout Ashdevil's Fiendcloak
								i(207274),	-- Devout Ashdevil's Slippers
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.MYTHIC),
							["groups"] = {
								i(207179),	-- Molten Vanguard's Chains
								i(207184),	-- Molten Vanguard's Greatboots
								i(207177),	-- Molten Vanguard's Manacles
								i(207176),	-- Molten Vanguard's Thermal Cape
							},
						}),
					}),
				},
			}),
			CommonBossDrops({
				i(208212),	-- Dreaming Essence
			}),
			n(SPECIAL, {
				i(210783, {	-- Awakening Sunfish
					["description"] = "Fish in the lava pools of the Pit of Volcoross.",
				}),
				i(210782, {	-- Slumbering Moonfish
					["description"] = "Fish in the waters of the Wellspring Atrium.",
				}),
				i(210784, {	-- Xena, the Whimsical Whiskerfish
					["description"] = "First get the Attuned Angler Buff by returing 10 Awakening Sunfish and 10 Slumbering Moonfish. Go back into the raid and fish in the biggest pool of water within the Wellspring Atrium.",
					["cost"] = {
						{ "i", 210783, 10 },	-- Awakening Sunfish
						{ "i", 210782, 10 },	-- Slumbering Moonfish
					},
				}),
			}),
			-- #if AFTER 10.2.7
			-- #if BEFORE 11.0.0
			n(VENDORS, {
				n(213285, {	-- Theozhaklos the Curious <Novice Explorer>
					["coord"] = { 36.7, 33.3, EMERALD_DREAM },
					["groups"] = bubbleDownFiltered({
						["cost"] = {{ "i", 210944, 1 }},	-- Emerald Mark of Mastery
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
				}),
			}),
			-- #endif
			-- #endif
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					i(210780),	-- Lesser Ember of Fyr'alath
				}),
				n(QUESTS, {
					q(78355,{	-- Essence of a Broken Dream
						["provider"] = { "i", 210430 },	-- Twisted Dreaming Essence (QI!)
					}),
					q(78421, {	-- The Power of Dreams
						["sourceQuest"] = 78355,	-- Essence of a Broken Dream (QI!)
						["provider"] = { "n", 210039 },	-- Merithra
						["groups"] = {
							i(210470),	-- Echoed Ephemera (QI!)
							i(210472),	-- Igira's Cruel Nightmare (QI!)
							i(210473),	-- Larodar's Fiery Reverie (QI!)
							i(210475),	-- Smolderon's Delusions of Grandeur (QI!)
							i(210474),	-- Tindral's Fowl Fantasia (QI!)
						},
					}),
					q(78429, {	-- The Power of Dreams, Awoken
						["sourceQuest"] = 78421,	-- The Power of Dreams
						["provider"] = { "n", 210039 },	-- Merithra
						["groups"] = {
							i(210498, {	-- Fused Essence
								i(210494),	-- Incandescent Essence
							}),
						},
					}),
					q(78473, {	-- The Power of Dreams, Lost
						["description"] = "This quest allows a player to recover their Incandescent Essence if it was deleted.",
						["sourceQuest"] = 78429,	-- The Power of Dreams, Awoken
						["provider"] = { "n", 210039 },	-- Merithra
						["repeatable"] = true,
						["groups"] = {
							i(210494),	-- Incandescent Essence
						},
					}),
				}),
				BossOnly(GNARLROOT, {
					i(210170),	-- Design: Dreamtender's Charm (RECIPE!)
					i(210430),	-- Twisted Dreaming Essence
				}),
				BossOnly(IGIRA, {
					i(210148, {	-- Overflowing Satchel of Pilfered Recipes
						TempForceMisc(ig(201740, {	-- Elemental Codex of Ultimate Power
							r(370543),	-- Elemental Potion of Ultimate Power (RECIPE!)
							r(370672),	-- Potion Cauldron of Ultimate Power (RECIPE!)
						})),
						i(194642),	-- Design: Choker of Shielding (RECIPE!)
						i(204975),	-- Formula: Enchant Weapon - Shadowflame Wreathe (RECIPE!)
						i(194259),	-- Pattern: Allied Cinch of Time Dilation (RECIPE!)
						i(194266),	-- Pattern: Bronzed Grip Wrappings (RECIPE!)
						i(194260),	-- Pattern: Blue Dragon Soles (RECIPE!)
						i(193873),	-- Pattern: Old Spirit's Wristwraps (RECIPE!)
						i(193881),	-- Pattern: Scale Rein Grips (RECIPE!)
						i(204968),	-- Pattern: Shadowflame-Tempered Armor Patch (RECIPE!)
						i(193872),	-- Pattern: String of Spiritual Knick-Knacks (RECIPE!)
						i(205140),	-- Pattern: Undulating Sporecloak (RECIPE!)
						i(193880),	-- Pattern: Wind Spirit's Lasso (RECIPE!)
						i(194489),	-- Plans: Allied Chestplate of Generosity (RECIPE!)
						i(194490),	-- Plans: Allied Wristguard of Companionship (RECIPE!)
						i(205145),	-- Plans: Shadowed Impact Buckler (RECIPE!)
						i(205144),	-- Plans: Shadowed Razing Annihilator (RECIPE!)
						i(204696),	-- Recipe: Draconic Phial Cauldron (RECIPE!)
						i(191597),	-- Recipe: Potion Absorption Inhibitor (RECIPE!)
						i(205036),	-- Schematic: Tinker: Shadowflame Rockets (RECIPE!)
						i(199227),	-- Schematic: Sophisticated Problem Solver (RECIPE!)
					}),
				}),
				BossOnly(VOLCOROSS),
				BossOnly(COUNCIL_OF_DREAMS, {
					i(210169),	-- Pattern: Verdant Conduit (RECIPE!)
				}),
				BossOnly(LARODAR, {
					i(210175),	-- Formula: Enchant Weapon - Dreaming Devotion (RECIPE!)
					i(209035),	-- Hearthstone of the Flame (TOY!)
				}),
				BossOnly(NYMUE, {
					i(210670),	-- Pattern: Verdant Tether (RECIPE!)
				}),
				BossOnly(SMOLDERON),
				BossOnly(TINDRAL, {
					i(211280),	-- Feather of the Smoke Red Moon (CI!)
					i(210644),	-- Plans: Flourishing Dream Helm (RECIPE!)
				}),
				BossOnly(FYRAKK, {
					i(210871),	-- Greater Ember of Fyr'alath
					i(210536),	-- Renewed Proto-Drake: Embodiment of the Blazing (MM!)
					i(207728, {	-- Fyr'alath the Dreamrender
						["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						["groups"] = {
							i(207729),	-- Fyr'alath the Dreamrender (QI!)
						},
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades(bubbleDown({ ["timeline"] = TIMELINE_LFR }, {
				ZoneDrops({
				}),
				CommonBossDrops({
					currency(WHELPLINGS_DREAMING_CREST, {
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
				}),
				header(HEADERS.Achievement, 19344, {	-- Incarnate's Wake
					Boss(GNARLROOT),
					Boss(IGIRA),
					Boss(SMOLDERON),
				}),
				header(HEADERS.Achievement, 19345, {	-- Molten Incursion
					Boss(VOLCOROSS),
					Boss(LARODAR),
				}),
				header(HEADERS.Achievement, 19346, {	-- The Viridian Weave
					Boss(COUNCIL_OF_DREAMS),
					Boss(NYMUE),
				}),
				header(HEADERS.Achievement, 19347, {	-- Fate of Amirdrassil
					Boss(TINDRAL),
					Boss(FYRAKK, {
						i(210947, {	-- Flame-Warped Curio
							["sym"] = {{"sub","instance_tier",1207,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(GNARLROOT, {
					ach(19322),	-- Meaner Pastures
				}),
				BossOnly(IGIRA, {
					ach(19320),	-- Cruelty Free
				}),
				BossOnly(VOLCOROSS, {
					ach(19321),	-- Swog Champion
				}),
				BossOnly(COUNCIL_OF_DREAMS, {
					ach(19193, {	-- Ducks In A Row
						i(210347),	-- Sergeant Quackers (PET!)
					}),
				}),
				BossOnly(LARODAR, {
					ach(19089, {	-- Don't Let the Doe Hit You On The Way Out
						i(210556),	-- Ivy (PET!)
					}),
				}),
				BossOnly(NYMUE, {
					ach(19394),	-- A Dream Within a Dream
				}),
				BossOnly(SMOLDERON, {
					ach(19319),	-- Haven't We Done This Before?
				}),
				BossOnly(TINDRAL, {
					ach(19393),	-- Whelp, I'm Lost
				}),
				BossOnly(FYRAKK, {
					ach(19390),	-- Memories of Teldrassil
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(DRAKES_DREAMING_CREST, {
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
				}),
				n(QUESTS, {
					q(78600, {	-- Amirdrassil, the Dream's Hope: Up in Smoke (N)
						["provider"] = { "n", 210016 },	-- Tyrande Whisperwind
						["groups"] = {
							i(210791),	-- Fragment of Emberscar (QI!)
						},
					}),
				}),
				ZoneDrops({
				}),
				Boss(GNARLROOT),
				Boss(IGIRA),
				Boss(VOLCOROSS),
				Boss(COUNCIL_OF_DREAMS),
				Boss(LARODAR),
				Boss(NYMUE),
				Boss(SMOLDERON),
				Boss(TINDRAL),
				Boss(FYRAKK, {
					i(210947, {	-- Flame-Warped Curio
						["sym"] = {{"sub","instance_tier",1207,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				n(QUESTS, {
					q(78876, bubbleDownSelf({["timeline"] = { ADDED_10_2_0, REMOVED_TWW_LAUNCH } }, {	-- A Glowing Memento
						["provider"] = { "i", 211375 },	-- Everglowing Ember
						["groups"] = {
							i(210537),	-- Renewed Proto-Drake: Embodiment of Shadowflame (MM!)
						},
					})),
				}),
				BossOnly(GNARLROOT),
				BossOnly(IGIRA),
				BossOnly(VOLCOROSS),
				BossOnly(COUNCIL_OF_DREAMS),
				BossOnly(LARODAR),
				BossOnly(NYMUE),
				BossOnly(SMOLDERON),
				BossOnly(TINDRAL),
				BossOnly(FYRAKK, {
					ach(19350, {["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }}),	-- Ahead of the Curve: Fyrakk the Blazing
					i(211375),	-- Everglowing Ember (QS!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(WYRMS_DREAMING_CREST, {
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
				}),
				n(QUESTS, {
					q(78601, {	-- Amirdrassil, the Dream's Hope: Up in Smoke (H)
						["provider"] = { "n", 210016 },	-- Tyrande Whisperwind
						["groups"] = {
							i(210792),	-- Fragment of Emberscar (QI!)
						},
					}),
				}),
				ZoneDrops({
				}),
				Boss(GNARLROOT),
				Boss(IGIRA),
				Boss(VOLCOROSS),
				Boss(COUNCIL_OF_DREAMS),
				Boss(LARODAR),
				Boss(NYMUE),
				Boss(SMOLDERON),
				Boss(TINDRAL),
				Boss(FYRAKK, {
					i(210947, {	-- Flame-Warped Curio
						["sym"] = {{"sub","instance_tier",1207,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(ASPECTS_DREAMING_CREST, {
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
				}),
				n(QUESTS, {
					q(78602, {	-- Amirdrassil, the Dream's Hope: Up in Smoke (M)
						["provider"] = { "n", 210016 },	-- Tyrande Whisperwind
						["groups"] = {
							i(210793),	-- Fragment of Emberscar (QI!)
						},
					}),
				}),
				ZoneDrops({
				}),
				n(ZONE_DROPS, sharedData({	-- First 2 week BoP version drops
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 },
				},{
					i(210548),	-- Daydreamer's Glimmering Ring [BoP]
					i(210542),	-- Insurgent Flame Warboots [BoP]
					i(210545),	-- Lost Scholar's Temporal Shoulderdials [BoP]
					i(210543),	-- Mantle of Slumbering Sands [BoP]
					i(210541),	-- Mask of the Unbidden Grim [BoP]
					i(210547),	-- Sentinel's Gilded Poulaines [BoP]
					i(210546),	-- Vengeful Bladebeak Girdle [BoP]
					i(210540),	-- Visage of the Devouring Flame [BoP]
					i(210544),	-- Whispering Fanged Cord [BoP]
				})),
				Boss(GNARLROOT, {
					ach(19335),	-- Mythic: Gnarlroot
				}),
				Boss(IGIRA, {
					ach(19336),	-- Mythic: Igira the Cruel
				}),
				Boss(VOLCOROSS, {
					ach(19337),	-- Mythic: Volcoross
				}),
				Boss(COUNCIL_OF_DREAMS, {
					ach(19338),	-- Mythic: Council of Dreams
				}),
				Boss(LARODAR, {
					ach(19339),	-- Mythic: Larodar, Keeper of the Flame
				}),
				Boss(NYMUE, {
					ach(19340),	-- Mythic: Nymue, Weaver of the Cycle
				}),
				Boss(SMOLDERON, {
					ach(19341),	-- Mythic: Smolderon
				}),
				Boss(TINDRAL, {
					ach(19342),	-- Mythic: Tindral Sageswift, Seer of the Flame
				}),
				Boss(FYRAKK, {
					ach(19343, {	-- Mythic: Fyrakk the Blazing
						title(530),	-- <Name> the Blazing
					}),
					ach(19351, {["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }}),	-- Cutting Edge: Fyrakk the Blazing
					ach(19392, bubbleDownSelf({["timeline"] = { ADDED_10_2_0, REMOVED_10_2_5 } }, {	-- Hall of Fame: Fyrakk the Blazing
						title(528),	-- <Name>, Famed Slayer of Fyrakk
					})),
					ach(19389),	-- Mythic: Fyrakk the Blazing Guild Run
					i(210061, {	-- Anu'relos, Flame's Guidance (MOUNT!)
						i(210754),	-- Feather of the Blazing Somnowl (CI!)
						i(211314),	-- Cinder of Companionship (CI!)
					}),
					i(210947, {	-- Flame-Warped Curio
						["sym"] = {{"sub","instance_tier",1207,DIFFICULTY.RAID.MYTHIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
	inst(1207, {	-- Amirdrassil, the Dream's Hope
		-- Normal
		q(78311),	-- Gnalroot
		q(78312),	-- Igira the Cruel
		q(78313),	-- Volcoross
		q(78314),	-- Council of Dreams
		q(78315),	-- Larodar, Keeper of the Flame
		q(78316),	-- Nymue, Weaver of the Cycle
		q(78317),	-- Smolderon
		q(78318),	-- Tindral Sageswift, Seer of the Flame
		q(78320),	-- Fyrakk the Blazing
		--
		q(78423),	-- Account unlock quest (SpellID 425878) received after turning in (questID 78421)

		-- Fyr'alath the Dreamrender bad luck protection
		-- Greater Ember of Fyr'alath lockout
		q(78566),	-- LFR Fyrakk the Blazing
		q(78567),	-- Normal Fyrakk the Blazing
		q(78568),	-- Heroic Fyrakk the Blazing
		q(78569),	-- Mythic Fyrakk the Blazing
		-- Heroic Lesser Ember of Fyr'alath lockout
		q(78956),	-- Heroic Gnarlroot
		q(78958),	-- Heroic Igira the Cruel
		q(78960),	-- Heroic Volcoross
		q(78962),	-- Heroic Council of Dreams
		q(78964),	-- Heroic Larodar, Keeper of the Flame
		q(78966),	-- Heroic Nymue, Weaver of the Cycle
		q(78968),	-- Heroic Smolderon
		q(78970),	-- Heroic Tindral Sageswift, Seer of the Flame
		-- Mythic Lesser Ember of Fyr'alath lockout
		q(78957),	-- Mythic Gnarlroot
		q(78959),	-- Mythic Igira the Cruel
		q(78961),	-- Mythic Volcoross
		q(78963),	-- Mythic Council of Dreams
		q(78965),	-- Mythic Larodar, Keeper of the Flame
		q(78967),	-- Mythic Nymue, Weaver of the Cycle
		q(78969),	-- Mythic Smolderon
		q(78971),	-- Mythic Tindral Sageswift, Seer of the Flame
	}),
})));
