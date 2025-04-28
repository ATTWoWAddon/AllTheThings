---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local SEEDBLOOM = 211376;
EMERALD_BOUNTY = createHeader({
	readable = "Emerald Bounty",
	icon = 464030,
	text = {
		en = "Emerald Bounty",
		ru = "Изумрудный дар",
		cn = "翡翠奖赏",
	},
});
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		n(EMERALD_BOUNTY, {
			currency(2650),	-- Emerald Dewdrop
			i(208066),	-- Small Dreamseed
			i(208067),	-- Plump Dreamseed
			i(208047),	-- Gigantic Dreamseed
			i(210224),	-- Small Emerald Bloom
			i(210225),	-- Medium Emerald Bloom
			i(210226),	-- Large Emerald Bloom
			n(ACHIEVEMENTS, {
				ach(19013, {	-- I Dream of Seeds
					crit(62396, {	-- Ageless Blossom
						["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					}),
					crit(62041, {	-- Belligerent Begonias (n: 208617)
						["coord"] = { 49.9, 35.4, EMERALD_DREAM },
					}),
					crit(62029, {	-- Chiming Foxglove (n: 208511)
						["coord"] = { 54.6, 67.6, EMERALD_DREAM },
					}),
					crit(62185, {	-- Comfy Chamomile (n: 210723)
						["coord"] = { 38.4, 59.2, EMERALD_DREAM },
					}),
					crit(62030, {	-- Dragon's Daffodil (n: 208556)
						["coord"] = { 64.0, 64.8, EMERALD_DREAM },
					}),
					crit(62037, {	-- Dreamer's Daisy (n: 208615)
						["coord"] = { 46.4, 40.5, EMERALD_DREAM },
					}),
					crit(62189, {	-- Flourishing Scurfpea (n: 210725)
						["coord"] = { 48.7, 80.5, EMERALD_DREAM },
					}),
					crit(62032, {	-- Fuzzy Licorice (n: 208605)
						["coord"] = { 63.5, 47.1, EMERALD_DREAM },
					}),
					crit(62036, {	-- Glade Goldenrod (n: 209880)
						["coord"] = { 40.7, 43.5, EMERALD_DREAM },
					}),
					crit(62027, {	-- Lavatouched Lilies (n: 209583)
						["coord"] = { 40.7, 24.8, EMERALD_DREAM },
					}),
					crit(62039, {	-- Lofty Lupin (n: 208606)
						["coord"] = { 56.7, 44.9, EMERALD_DREAM },
					}),
					crit(62040, {	-- Lullaby Lavender (n: 209599)
						["coord"] = { 56.5, 37.7, EMERALD_DREAM },
					}),
					crit(62186, {	-- Moon Tulip (n: 210724)
						["coord"] = { 42.6, 74.0, EMERALD_DREAM },
					}),
					crit(62038, {	-- Ringing Rose (n: 208607)
						["coord"] = { 49.2, 48.1, EMERALD_DREAM },
					}),
					crit(62031, {	-- Singing Weedling (n: 208563)
						["coord"] = { 63.0, 52.8, EMERALD_DREAM },
					}),
					crit(62035, {	-- Viridescent Sprout (n: 208616)
						["coord"] = { 40.0, 52.7, EMERALD_DREAM },
					}),
					crit(62397, {	-- Whisperbloom Sapling (n: 211059)
						["coord"] = { 51.2, 58.7, EMERALD_DREAM },
						["description"] = "Spawns every hour at the 50 minute mark.",
					}),
					crit(62028, {	-- Ysera's Clover (n: 208443)
						["coord"] = { 59.2, 58.8, EMERALD_DREAM },
					}),
				}),
				ach(19196),		-- Sowing the Seeds
				ach(19194),		-- The Emerald Bounty
				ach(19198, {	-- The Seeds I Sow
					title(527),	-- Blossom Bringer
				}),
			}),
			n(QUESTS,{
				q(78172, {	-- Mysterious Seeds
					--["sourceQuests"] = { xx },	-- xx
					["provider"] = { "i", 210050 },	-- Mysterious Seeds
				}),
				q(77209, {	-- Seed Legacy
					["sourceQuests"] = { 78172 },	-- Mysterious Seeds
					["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
					["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					["g"] = {
						i(210014),	-- Mysterious Ageless Seeds (QI!)
					},
				}),
				q(78170, {	-- Nurturing Ageless Seeds // 14.10 -- quest bugged (no quest item in loot table)
					["sourceQuests"] = { 77209 },	-- Seed Legacy
					["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
					["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					["g"] = {
						i(211406),	-- Ageless Dewdrops (QI!)
						i(211410),	-- Bloomed Wildling Cache
					},
				}),
				q(78171, {	-- Blossoms of the Past
					["sourceQuests"] = { 78170 },	-- Nurturing Ageless Seeds
					["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
					["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					["g"] = {
						o_repeated({
							i(210052),	-- Ageless Blossoms (QI!)
							o(410045),	-- Ageless Blossom
							o(410046),	-- Ageless Blossom
							o(410048),	-- Ageless Blossom
						}),
					},
				}),
				q(78206, {	-- Emerald Bounty
					["sourceQuests"] = { 78171 },	-- Blossoms of the Past
					["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
					["coord"] = { 59.7, 16.9, EMERALD_DREAM },
				}),
				--
				q(78821, {	-- Blooming Dreamseeds
					--["sourceQuests"] = {
					--	78206,	-- Emerald Bounty (TODO: need to confirm)
					--	77887,	-- 'World Quest Unlock' (spellID 421687)
					--},
					--["sourceQuestNumRequired"] = 1
					["provider"] = { "n", 212797 },	-- Talisa Whisperbloom
					["coord"] = { 49.7, 62.1, EMERALD_DREAM },
					["isWeekly"] = true,
					["maxReputation"] = { FACTION_DREAM_WARDENS, 20 },
					["g"] = {
						i(SEEDBLOOM, {
							["description"] = "Any item bought via Seedbloom's can also be obtained randomly from The Emerald Bounty event while planting or contributing a Small Dreamseed, Plump Dreamseed, or Gigantic Dreamseed.",
						}),
						i(211394, {	-- Harvested Dreamseed Cache
							["sym"] = {
								{"select", "itemID", 211389 },	-- Cache of Overblooming Treasures,
								{"pop"},
								{"exclude","itemID",211417},	-- Dream Wardens Insignia [Epic 1k]
								{"exclude","itemID",210243},	-- Technique: Contract: Dream Wardens (RECIPE!)
							},
						}),
					},
				}),
			}),
			n(RARES, {
				n(209915, {	-- Amalgamation of Dreams
					["providers"] = {
						{ "n", 210063 },	-- Coagulating Dreams (vignette)
					},
					["description"] = "Can randomly spawn near any planting spot.",
					["questID"] = 77856,
					["isWeekly"] = true,
				}),
			}),
			n(REWARDS, {
				["groups"] = {
					i(210219, {	-- Gigantic Dreamy Bounty
						["provider"] = {"i", 208047, 1},	-- Gigantic Dreamseed
						["sym"] = {
							{"select", "npcID", 211265 },	-- Sylvia Whisperbloom
							{"pop"},
							{"where", "filterID", MOUNTS },
							-- include possible blue seed loots (very likely so far that everything is available in higher tiers from lower)
							{"select","itemID",210218},	-- Plump Dreamy Bounty
							{"pop"},
						},
					}),
					i(210218, {	-- Plump Dreamy Bounty
						["provider"] = {"i", 208067, 1},	-- Plump Dreamseed
						["sym"] = {
							{"select", "npcID", 211265 },	-- Sylvia Whisperbloom
							{"pop"},
							{"where", "filterID", BATTLE_PETS },
							{"pop"},
						},
						["g"] = {
							i(210059),	-- Winter Night Dreamsaber (MOUNT!) / should be from any dreamseed (according to blue post)
							i(210174),	-- Formula: Illusory Adornment: Dreams (RECIPE!)
							i(207759),	-- Grotto Netherwing Drake: Cluster Spiked Back (MM!) / also was looted from purple
							i(207772),	-- Grotto Netherwing Drake: Long Horns (MM!)
							i(207769),	-- Grotto Netherwing Drake: Outcast Pattern (MM!)
							i(210241),	-- Recipe: Dreamwalker's Healing Potion (RECIPE!)
							i(210242),	-- Recipe: Slumbering Peacebloom Tea (RECIPE!)
							i(210490),	-- Technique: Vantus Rune: Amirdrassil, the Dream's Hope (RECIPE!)
							i(211065),	-- Technique: Mark of the Auric Dreamstag (RECIPE!)
							--[Mark of the Boreal Dreamtalon] from blue bag
							--[Mark of the Snowy Umbraclaw] from blue bag
						},
					}),
					i(210217, {	-- Small Dreamy Bounty
						["provider"] = {"i", 208066, 1},	-- Small Dreamseed
						-- Dont Think we should symlink this?
					}),
				},
			}),
			n(VENDORS, {
				n(211265, {	-- Sylvia Whisperbloom
					["coord"] = { 59.8, 16.9, EMERALD_DREAM },
					["g"] = bubbleDownFiltered({
						["cost"] = {{ "i", SEEDBLOOM, 1 }},
					},FILTERFUNC_itemID,{
						n(BACK, {
							i(209979),	-- Barkbloom Cloak
							i(209961),	-- Ceremonial Jacaranda Cape
							i(209988),	-- Overgrown Freyan Drape
							i(209970),	-- Pelt of the Dreamfused Skull
						}),
						filter(BATTLE_PETS, {
							i(210651),	-- Dustite (PET!)
							i(210690),	-- Elmer (PET!)
							i(210570),	-- Napps (PET!)
							i(210648),	-- Seedle (PET!)
							i(210689),	-- Snoots (PET!)
							i(210571),	-- Snoozles (PET!)
						}),
						filter(CLOTH, {
							i(209967),	-- Ceremonial Jacaranda Belt
							i(209966),	-- Ceremonial Jacaranda Branches
							i(209964),	-- Ceremonial Jacaranda Crown
							i(209963),	-- Ceremonial Jacaranda Gloves
							i(209960),	-- Ceremonial Jacaranda Gown
							i(209965),	-- Ceremonial Jacaranda Pantaloons
							i(209962),	-- Ceremonial Jacaranda Sandals
							i(209968),	-- Ceremonial Jacaranda Wraps
						}),
						filter(LEATHER, {
							i(209983),	-- Barkbloom Breeches
							i(209981),	-- Barkbloom Claws
							i(209982),	-- Barkbloom Mask
							i(209985),	-- Barkbloom Sash
							i(209984),	-- Barkbloom Shoulderpads
							i(209980),	-- Barkbloom Talons
							i(209978),	-- Barkbloom Tunic
							i(209986),	-- Barkbloom Wristguards
						}),
						filter(MAIL, {
							i(209977),	-- Bracers of the Dreamfused Skull
							i(209976),	-- Buckle of the Dreamfused Skull
							i(209971),	-- Clogs of the Dreamfused Skull
							i(209972),	-- Grips of the Dreamfused Skull
							i(209974),	-- Leggings of the Dreamfused Skull
							i(209975),	-- Pauldrons of the Dreamfused Skull
							i(209969),	-- Vest of the Dreamfused Skull
							i(209973),	-- Visage of the Dreamfused Skull
						}),
						filter(MISC, {
							i(211080),	-- Mark of the Boreal Dreamtalon (CI!)
							i(211081),	-- Mark of the Auroral Dreamtalon (CI!)
							i(210739),	-- Mark of the Snowy Umbraclaw (CI!)
						}),
						filter(MOUNTS, {
							i(209947),	-- Blossoming Dreamstag (MOUNT!)
							i(210058),	-- Evening Sun Dreamsaber (MOUNT!)
							i(207764),	-- Grotto Netherwing Drake: Head Spike (MM!)
							i(210057),	-- Morning Flourish Dreamsaber (MOUNT!)
							i(209950),	-- Rekindled Dreamstag (MOUNT!)
							i(210775),	-- Snowfluff Dreamtalon (MOUNT!)
							i(210769),	-- Springtide Dreamtalon (MOUNT!)
						}),
						filter(PLATE, {
							i(209989),	-- Overgrown Freyan Boots
							i(209994),	-- Overgrown Freyan Girdle
							i(209990),	-- Overgrown Freyan Handguards
							i(209991),	-- Overgrown Freyan Helm
							i(209992),	-- Overgrown Freyan Legguards
							i(209987),	-- Overgrown Freyan Plate
							i(209993),	-- Overgrown Freyan Shoulderguards
							i(209995),	-- Overgrown Freyan Vambraces
						}),
						n(WEAPONS, {
							i(210036),	-- Barkbloom Saber
							i(210039),	-- Barkbloom Warglaive
							i(210030),	-- Bow of the Dreamfused Skull
							i(210038),	-- Ceremonial Jacaranda Bloom
							i(210035),	-- Ceremonial Jacaranda Crook
							i(210037),	-- Ceremonial Jacaranda Slab
							i(210033),	-- Essence of the Dreamfused Skull
							i(210029),	-- Overgrown Freyan Hatchet
							i(210034),	-- Overgrown Freyan Pike
							i(210032),	-- Overgrown Freyan Smasher
							i(210031),	-- Spike of the Dreamfused Skull
						}),
					}),
				}),
				n(212797, {	-- Talisa Whisperbloom
					["sym"] = {{"sub","common_vendor",211265}},	-- Sylvia Whisperbloom
				}),
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(DRAGON_ISLES, {
		m(EMERALD_DREAM, {
			n(EMERALD_BOUNTY, {
				--I hate it >_<
				--...78975 is currently pop when looting cache in addition to loot hqt
				q(78975),	-- any plant cache that was looted after blooming (purple seed), daily/weekly?
				--as of 18.10 contrib into other player plant fire as regular self planting.
				--
				q(79306),	-- after 1st seed/plant?
				q(79305),	-- after turn in 78821/seedbloom reward lockout?
				--q(),
				--q(),
				--q(),
				--
				--1 - Ageless Blossom
				--q(),	-- plant green seed
				--q(),	-- plant blue seed
				--q(),	-- plant purple seed
				--q(),	-- contrib with dewdrop
				--q(),	-- contrib with dewdrop for green seed
				--q(),	-- contrib with dewdrop for blue seed
				--q(),	-- bloom spot (80/100)
				--q(),	-- bloom spot (100/100)
				--q(),	-- loot cache
				--2 - Belligerent Begonias (spellID 418401 as reference with qid)
				q(77359),	-- plant green seed
				q(77361),	-- plant blue seed
				q(77269),	-- plant purple seed
				q(77363),	-- contrib with dewdrop
				q(78779),	-- contrib with dewdrop for green seed
				q(78777),	-- contrib with dewdrop for blue seed
				q(78778),	-- contrib with dewdrop for purple seed
				q(77365),	-- bloom spot (80/100)
				q(77349),	-- bloom spot (100/100)
				q(77360),	-- loot cache
				--3 - Chiming Foxglove (spellID 417935 as reference with qid)
				q(77222),	-- plant green seed
				q(77223),	-- plant blue seed
				q(77219),	-- plant purple seed
				q(77234),	-- contrib with dewdrop
				q(78773),	-- contrib with dewdrop for green seed
				q(78771),	-- contrib with dewdrop for blue seed
				q(78772),	-- contrib with dewdrop for purple seed
				q(77226),	-- bloom spot (80/100)
				q(77227),	-- bloom spot (100/100) (spellID 418309)
				q(77211),	-- loot cache
				--4 - Comfy Chamomile (spellID 423188 as reference with qid)
				q(77519),	-- plant green seed
				q(77516),	-- plant blue seed
				q(77518),	-- plant purple seed
				q(77515),	-- contrib with dewdrop
				q(78810),	-- contrib with dewdrop for green seed
				q(78808),	-- contrib with dewdrop for blue seed
				q(78809),	-- contrib with dewdrop for purple seed
				q(77514),	-- bloom spot (80/100)
				q(77512),	-- bloom spot (100/100) (spellID 423152)
				q(77517),	-- loot cache
				--5 - Dragon's Daffodil (spellID 417947 as reference with qid)
				q(77224),	-- plant green seed
				q(77225),	-- plant blue seed
				q(77220),	-- plant purple seed
				q(77235),	-- contrib with dewdrop
				q(78776),	-- contrib with dewdrop for green seed
				q(78774),	-- contrib with dewdrop for blue seed
				q(78775),	-- contrib with dewdrop for purple seed
				q(77228),	-- bloom spot (80/100)
				q(77229),	-- bloom spot (100/100) (spellID 418312)
				q(77212),	-- loot cache
				--6 - Dreamer's Daisy (spellID 418781 as reference with qid)
				q(77392),	-- plant green seed
				q(77391),	-- plant blue seed
				q(77274),	-- plant purple seed
				q(77390),	-- contrib with dewdrop
				q(78795),	-- contrib with dewdrop for green seed
				q(78793),	-- contrib with dewdrop for blue seed
				q(78794),	-- contrib with dewdrop for purple seed
				q(77370),	-- bloom spot (80/100) / 'Chest' (spellID 418389)
				q(77356),	-- bloom spot (100/100)
				q(77393),	-- loot cache
				--7 - Flourishing Scurfpea (spellID 423190 as reference with qid)
				q(77538),	-- plant green seed
				q(77535),	-- plant blue seed
				q(77537),	-- plant purple seed
				q(77534),	-- contrib with dewdrop
				q(78813),	-- contrib with dewdrop for green seed
				q(78811),	-- contrib with dewdrop for blue seed
				q(78812),	-- contrib with dewdrop for purple seed
				q(77533),	-- bloom spot (80/100)
				q(77532),	-- bloom spot (100/100)
				q(77536),	-- loot cache
				--8 - Fuzzy Licorice (spellID 418626 as reference with qid)
				q(77380),	-- plant green seed
				q(77379),	-- plant blue seed
				q(77271),	-- plant purple seed
				q(77378),	-- contrib with dewdrop
				q(78785),	-- contrib with dewdrop for green seed
				q(78783),	-- contrib with dewdrop for blue seed
				q(78784),	-- contrib with dewdrop for purple seed
				q(77367),	-- bloom spot (80/100)
				q(77353),	-- bloom spot (100/100)
				q(77381),	-- loot cache
				--9 - Glade Goldenrod (spellID 421186 as reference with qid)
				q(77511),	-- plant green seed
				q(77508),	-- plant blue seed
				q(77510),	-- plant purple seed
				q(77507),	-- contrib with dewdrop
				q(78807),	-- contrib with dewdrop for green seed
				q(78805),	-- contrib with dewdrop for blue seed
				q(78806),	-- contrib with dewdrop for purple seed
				q(77505),	-- bloom spot (80/100) (spellID 421191)
				q(77504),	-- bloom spot (100/100) (spellID 421192)
				q(77509),	-- loot cache
				--10 - Lavatouched Lilies (spellID 420631 as reference with qid)
				q(77496),	-- plant green seed
				q(77493),	-- plant blue seed
				q(77495),	-- plant purple seed
				q(77492),	-- contrib with dewdrop
				q(78801),	-- contrib with dewdrop for green seed
				q(78799),	-- contrib with dewdrop for blue seed
				q(78800),	-- contrib with dewdrop for purple seed
				q(77491),	-- bloom spot (80/100) (spellID 420623)
				q(77490),	-- bloom spot (100/100) (spellID 420626)
				q(77494),	-- loot cache
				--11 - Lofty Lupin (spellID 418724 as reference with qid)
				q(77384),	-- plant green seed
				q(77383),	-- plant blue seed
				q(77272),	-- plant purple seed
				q(77382),	-- contrib with dewdrop
				q(78788),	-- contrib with dewdrop for green seed
				q(78786),	-- contrib with dewdrop for blue seed
				q(78787),	-- contrib with dewdrop for purple seed
				q(77368),	-- bloom spot (80/100) (spellID 418387)
				q(77354),	-- bloom spot (100/100) (spellID 418324)
				q(77385),	-- loot cache
				--12 - Lullaby Lavender (spellID 420757 as reference with qid)
				q(77503),	-- plant green seed
				q(77500),	-- plant blue seed
				q(77502),	-- plant purple seed
				q(77499),	-- contrib with dewdrop
				q(78804),	-- contrib with dewdrop for green seed
				q(78802),	-- contrib with dewdrop for blue seed
				q(78803),	-- contrib with dewdrop for purple seed
				q(77498),	-- bloom spot (80/100) / 'Chest' (spellID 420760)
				q(77497),	-- bloom spot (100/100) / 'Chest' (spellID 420761)
				q(77501),	-- loot cache
				--13 - Moon Tulip (spellID 423189 as reference with qid)
				q(77531),	-- plant green seed
				q(77528),	-- plant blue seed
				q(77530),	-- plant purple seed
				q(77527),	-- contrib with dewdrop
				q(78816),	-- contrib with dewdrop for green seed
				q(78814),	-- contrib with dewdrop for blue seed
				q(78815),	-- contrib with dewdrop for purple seed
				q(77526),	-- bloom spot (80/100) / 'Chest' (spellID 423213)
				q(77525),	-- bloom spot (100/100)
				q(77529),	-- loot cache
				--14 - Ringing Rose (spellID 418780 as reference with qid)
				q(77387),	-- plant green seed
				q(77386),	-- plant blue seed
				q(77273),	-- plant purple seed
				q(77388),	-- contrib with dewdrop
				q(78792),	-- contrib with dewdrop for green seed
				q(78790),	-- contrib with dewdrop for blue seed
				q(78791),	-- contrib with dewdrop for purple seed
				q(77369),	-- bloom spot (80/100) (spellID 418388)
				q(77355),	-- bloom spot (100/100)
				q(77389),	-- loot cache
				--15 - Singing Weedling (spellID 418432 as reference with qid)
				q(77375),	-- plant green seed
				q(77374),	-- plant blue seed
				q(77270),	-- plant purple seed
				q(77376),	-- contrib with dewdrop
				q(78782),	-- contrib with dewdrop for green seed
				q(78780),	-- contrib with dewdrop for blue seed
				q(78781),	-- contrib with dewdrop for purple seed
				q(77366),	-- bloom spot (80/100) (spellID 418385)
				q(77350),	-- bloom spot (100/100) (spellID 418321)
				q(77373),	-- loot cache
				--16 - Viridescent Sprout (spellID 418782 as reference with qid)
				q(77395),	-- plant green seed
				q(77394),	-- plant blue seed
				q(77275),	-- plant purple seed
				q(77371),	-- contrib with dewdrop
				q(78798),	-- contrib with dewdrop for green seed
				q(78796),	-- contrib with dewdrop for blue seed
				q(78797),	-- contrib with dewdrop for purple seed
				q(77372),	-- bloom spot (80/100)
				q(77357),	-- bloom spot (100/100) / 'Chest' (spellID 418327)
				q(77396),	-- loot cache
				--17 - Whisperbloom Sapling (spellID 423984 as reference with qid)
				q(77545),	-- plant green seed
				q(77542),	-- plant blue seed
				q(77544),	-- plant purple seed
				q(77541),	-- contrib with dewdrop
				q(78819),	-- contrib with dewdrop for green seed
				q(78817),	-- contrib with dewdrop for blue seed
				q(78818),	-- contrib with dewdrop for purple seed
				q(77540),	-- bloom spot (80/100)
				q(77539),	-- bloom spot (100/100)
				q(77543),	-- loot cache
				--18 - Ysera's Clover (spellID 417874 as reference with qid)
				q(77216),	-- plant green seed
				q(77215),	-- plant blue seed
				q(77214),	-- plant purple seed
				q(77233),	-- contrib with dewdrop
				q(78768),	-- contrib with dewdrop for green seed
				q(78769),	-- contrib with dewdrop for blue seed
				q(78770),	-- contrib with dewdrop for purple seed
				q(77217),	-- bloom spot (80/100)
				q(77218),	-- bloom spot (100/100) (spellID 418259)
				q(77210),	-- loot cache
			}),
		}),
	}),
})));