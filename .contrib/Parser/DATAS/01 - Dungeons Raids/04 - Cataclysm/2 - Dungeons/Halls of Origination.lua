-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_0_3 }, {
	applyclassicphase(CATA_PHASE_ONE, inst(70, {	-- Halls of Origination
		["mapID"] = 297,
		["maps"] = { 298, 299 },
		["coord"] = { 71.81, 52.16, ULDUM },	-- Halls of Origination
		["groups"] = {
			n(QUESTS, {
				q(28746, {	-- Penetrating Their Defenses
					["sourceQuest"] = 28654,	-- The Heart of the Matter
					["qg"] = 39908,	-- Brann Bronzebeard
					["groups"] = {
						i(66913),	-- Repository Gauntlets
						i(66911),	-- Offline Greaves
						i(66914),	-- Boots of the Hard Way
					},
				}),
				q(28753, {	-- Doing it the Hard Way
					["sourceQuest"] = 28746,	-- Penetrating Their Defenses
					["qg"] = 39908,	-- Brann Bronzebeard
					["groups"] = {
						i(66917),	-- True Archaeologist's Bracers
						i(66921),	-- Helm of Reorigination
						i(66915),	-- Treasure Hunter's Gloves
					},
				}),
				q(28802, {	-- Map of the Architects
					["provider"] = { "o", 207410 },	-- Large Stone Obelisk
					["requireSkill"] = ARCHAEOLOGY,
					["isRepeatable"] = true,
				}),
			}),
			n(ZONE_DROPS, {
				i(56109),	-- Book of Origination
				i(56110),	-- Charm of the Muse
				i(56111),	-- Temple Band
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, bubbleDownSelf({ ["timeline"] = REMOVED_7_3_5 }, {
				e(124, {	-- Temple Guardian Anhuur
					["crs"] = { 39425 },	-- Temple Guardian Anhuur
					["groups"] = {
						i(55889),	-- Anhuur's Hymnal
						i(55890),	-- Awakening Footfalls
						i(55887),	-- Belt of Petrified Tears
						i(55888),	-- Darkhowl Amulet
						i(55886),	-- Poison Fang Bracers
					},
				}),
				e(125, {	-- Earthrager Ptah
					["crs"] = { 39428 },	-- Earthrager Ptah
					["groups"] = {
						i(56093),	-- Breastplate of the Risen Land
						i(56096),	-- Bulwark of the Primordial Mound
						i(56095),	-- Mouth of the Earth
						i(56097),	-- Soul Releaser
						i(56094),	-- Underworld Cord
					},
				}),
				e(126, {	-- Anraphet
					["crs"] = { 39788 },	-- Anraphet
					["groups"] = {
						i(57855),	-- Alpha Bracers
						i(57860),	-- Anraphet's Regalia
						i(57857),	-- Boots of Crumbling Ruin
						i(57858),	-- Mantle of Soft Shadows
						i(57856),	-- Omega Breastplate
					},
				}),
				e(127, {	-- Isiset, Construct of Magic
					["crs"] = { 39587 },	-- Isiset, Construct of Magic
					["groups"] = {
						i(55992),	-- Armguards of Unearthly Light
						i(55995),	-- Blood of Isiset
						i(55993),	-- Legwraps of Astral Rain
						i(55996),	-- Nova Band
						i(55994),	-- Ring of Blinding Stars
					},
				}),
				e(128, {	-- Ammunae, Construct of Life
					["crs"] = { 39731 },	-- Ammunae, Construct of Life
					["groups"] = {
						i(56000),	-- Band of Life Energy
						i(55997),	-- Bloodpetal Mantle
						i(55998),	-- Robes of Rampant Growth
						i(55999),	-- Seedling Pod
						-- #if BEFORE MOP
						i(56001, {	-- Slashing Thorns
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				e(129, {	-- Setesh, Construct of Destruction
					["crs"] = { 39732 },	-- Setesh, Construct of Destruction
					["groups"] = {
						i(57862),	-- Chaotic Wrappings
						i(57861),	-- Helm of Setesh
						i(57864),	-- Helm of the Typhonic Beast
						i(57863),	-- Hieroglyphic Vest
						i(57865),	-- Scepter of Power
					},
				}),
				e(130, {	-- Rajh, Construct of Sun
					["crs"] = { 39378 },	-- Rajh, Construct of Sun
					["groups"] = {
						-- #if BEFORE 7.3.5
						ach(4841),	-- Halls of Origination
						-- #endif
						i(56106),	-- Band of Rays
						i(56108),	-- Blade of the Burning Sun
						i(56099),	-- Fingers of Light
						i(56105),	-- Hekatic Slippers
						i(56102),	-- Left Eye of Rajh
						i(56104),	-- Legguards of Noon
						i(56098),	-- Red Beam Cord
						i(56100),	-- Right Eye of Rajh
						i(56107),	-- Solar Wind Cloak
						i(56101),	-- Sun Strike
					},
				}),
			})),
			-- #if BEFORE 7.3.5
			d(DIFFICULTY.DUNGEON.HEROIC, {
				n(ACHIEVEMENTS, {
					ach(5296),	-- Faster Than the Speed of Light
				}),
				n(ZONE_DROPS, {
					i(56438, {	-- Book of Origination (H)
						["timeline"] = { CREATED_4_1_0 },
					}),
				}),
				e(124, {	-- Temple Guardian Anhuur
					["crs"] = { 39425 },	-- Temple Guardian Anhuur
					["groups"] = {
						ach(5293),	-- I Hate That Song
						i(56407),	-- Anhuur's Hymnal
						i(56408),	-- Awakening Footfalls
						i(56410),	-- Belt of Petrified Tears
						i(56411),	-- Darkhowl Amulet
						i(56409),	-- Poison Fang Bracers
					},
				}),
				e(125, {	-- Earthrager Ptah
					["crs"] = { 39428 },	-- Earthrager Ptah
					["groups"] = {
						ach(5294),	-- Straw That Broke the Camel's Back
						i(56425),	-- Breastplate of the Risen Land
						i(56426),	-- Bulwark of the Primordial Mound
						i(56422),	-- Mouth of the Earth
						i(56424),	-- Soul Releaser
						i(56423),	-- Underworld Cord
					},
				}),
				e(126, {	-- Anraphet
					["crs"] = { 39788 },	-- Anraphet
					["groups"] = {
						i(57870),	-- Alpha Bracers
						i(57868),	-- Anraphet's Regalia
						i(57867),	-- Boots of Crumbling Ruin
						i(57866),	-- Mantle of Soft Shadows
						i(57869),	-- Omega Breastplate
					},
				}),
				e(127, {	-- Isiset, Construct of Magic
					["crs"] = { 39587 },	-- Isiset, Construct of Magic
					["groups"] = {
						i(56416),	-- Armguards of Unearthly Light
						i(56414),	-- Blood of Isiset
						i(56413),	-- Legwraps of Astral Rain
						i(56415),	-- Nova Band
						i(56412),	-- Ring of Blinding Stars
					},
				}),
				e(128, {	-- Ammunae, Construct of Life
					["crs"] = { 39731 },	-- Ammunae, Construct of Life
					["groups"] = {
						i(56418),	-- Band of Life Energy
						i(56419),	-- Bloodpetal Mantle
						i(56417),	-- Robes of Rampant Growth
						i(56421),	-- Seedling Pod
						-- #if BEFORE MOP
						i(56420, {	-- Slashing Thorns
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				e(129, {	-- Setesh, Construct of Destruction
					["crs"] = { 39732 },	-- Setesh, Construct of Destruction
					["groups"] = {
						i(57875),	-- Chaotic Wrappings
						i(57871),	-- Helm of the Typhonic Beast
						i(57873),	-- Helm of Setesh
						i(57874),	-- Hieroglyphic Vest
						i(57872),	-- Scepter of Power
					},
				}),
				e(130, {	-- Rajh, Construct of Sun
					["crs"] = { 39378 },	-- Rajh, Construct of Sun
					["groups"] = {
						ach(5065),	-- Heroic: Halls of Origination
						ach(5139),	-- Heroic: Halls of Origination Guild Run
						ach(5295),	-- Sun of a...
						i(56432),	-- Band of Rays
						i(56433),	-- Blade of the Burning Sun
						i(56428),	-- Fingers of Light
						i(56436),	-- Hekatic Slippers
						i(56427),	-- Left Eye of Rajh
						i(56435),	-- Legguards of Noon
						i(56429),	-- Red Beam Cord
						i(56431),	-- Right Eye of Rajh
						i(56434),	-- Solar Wind Cloak
						i(56430),	-- Sun Strike
					},
				}),
			}),
			-- #else
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				e(124, {	-- Temple Guardian Anhuur
					["crs"] = { 39425 },	-- Temple Guardian Anhuur
					["groups"] = {
						i(56407),	-- Anhuur's Hymnal
						i(56408),	-- Awakening Footfalls
						i(56410),	-- Belt of Petrified Tears
						i(56411),	-- Darkhowl Amulet
						i(56409),	-- Poison Fang Bracers
					},
				}),
				e(125, {	-- Earthrager Ptah
					["crs"] = { 39428 },	-- Earthrager Ptah
					["groups"] = {
						i(56425),	-- Breastplate of the Risen Land
						i(56426),	-- Bulwark of the Primordial Mound
						i(56422),	-- Mouth of the Earth
						i(56424),	-- Soul Releaser
						i(56423),	-- Underworld Cord
					},
				}),
				e(126, {	-- Anraphet
					["crs"] = { 39788 },	-- Anraphet
					["groups"] = {
						i(57870),	-- Alpha Bracers
						i(57868),	-- Anraphet's Regalia
						i(57867),	-- Boots of Crumbling Ruin
						i(157611, {	-- Crown of Patient Vigil
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(57866),	-- Mantle of Soft Shadows
						i(57869),	-- Omega Breastplate
					},
				}),
				e(127, {	-- Isiset, Construct of Magic
					["crs"] = { 39587 },	-- Isiset, Construct of Magic
					["groups"] = {
						i(56416),	-- Armguards of Unearthly Light
						i(56414),	-- Blood of Isiset
						i(56413),	-- Legwraps of Astral Rain
						i(56415),	-- Nova Band
						i(56412),	-- Ring of Blinding Stars
						i(157609, {	-- Scepter of Stargazing
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				e(128, {	-- Ammunae, Construct of Life
					["crs"] = { 39731 },	-- Ammunae, Construct of Life
					["groups"] = {
						i(56418),	-- Band of Life Energy
						i(56419),	-- Bloodpetal Mantle
						i(56417),	-- Robes of Rampant Growth
						i(56421),	-- Seedling Pod
					},
				}),
				e(129, {	-- Setesh, Construct of Destruction
					["crs"] = { 39732 },	-- Setesh, Construct of Destruction
					["groups"] = {
						i(57875),	-- Chaotic Wrappings
						i(57871),	-- Helm of the Typhonic Beast
						i(57873),	-- Helm of Setesh
						i(57874),	-- Hieroglyphic Vest
						i(57872),	-- Scepter of Power
					},
				}),
				e(130, {	-- Rajh, Construct of Sun
					["crs"] = { 39378 },	-- Rajh, Construct of Sun
					["groups"] = {
						ach(4841),	-- Halls of Origination
						i(56432),	-- Band of Rays
						i(56433),	-- Blade of the Burning Sun
						i(56428),	-- Fingers of Light
						i(56436),	-- Hekatic Slippers
						i(56427),	-- Left Eye of Rajh
						i(56435),	-- Legguards of Noon
						i(56429),	-- Red Beam Cord
						i(56431),	-- Right Eye of Rajh
						i(56434),	-- Solar Wind Cloak
						i(56430),	-- Sun Strike
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				n(ACHIEVEMENTS, {
					ach(5296),	-- Faster Than the Speed of Light
				}),
				n(ZONE_DROPS, {
					i(56438, {	-- Book of Origination (H)
						["timeline"] = { CREATED_4_1_0 },
					}),
				}),
				e(124, {	-- Temple Guardian Anhuur
					["crs"] = { 39425 },	-- Temple Guardian Anhuur
					["groups"] = {
						ach(5293),	-- I Hate That Song
					},
				}),
				e(125, {	-- Earthrager Ptah
					["crs"] = { 39428 },	-- Earthrager Ptah
					["groups"] = {
						ach(5294),	-- Straw That Broke the Camel's Back
					},
				}),
				e(130, {	-- Rajh, Construct of Sun
					["crs"] = { 39378 },	-- Rajh, Construct of Sun
					["groups"] = {
						ach(5065),	-- Heroic: Halls of Origination
						ach(5139),	-- Heroic: Halls of Origination Guild Run
						ach(5295),	-- Sun of a...
					},
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				["groups"] = {
					e(130, {	-- Rajh, Construct of Sun
						["crs"] = { 39378 },	-- Rajh, Construct of Sun
						["groups"] = {
							ach(41144),	-- Protocol Inferno: Halls of Origination
						},
					}),
				},
			})),
			-- #endif
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(70, {
		q(35415),	-- Halls of Origination Reward Quest
		q(35424),	-- Halls of Origination Reward Quest
		q(35420),	-- Halls of Origination Bonus Rewards
		q(35426),	-- Halls of Origination Bonus Rewards
	}),
})));
