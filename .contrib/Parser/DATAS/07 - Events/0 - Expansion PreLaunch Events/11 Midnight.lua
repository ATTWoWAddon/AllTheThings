-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

local TWILIGHTS_BLADE_INSIGNIA = 3319;

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, {
	expansion(EXPANSION.MID, {
		["forcetimeline"] = { ADDED_12_0_0, REMOVED_12_0_X_LAUNCH },
	}),
	expansion(EXPANSION.MID, {
		n(ACHIEVEMENTS, {
			["maps"] = { TWILIGHT_HIGHLANDS },
			["groups"] = {
				ach(61430, {	-- Crunching for Cultists
					["coords"] = {
						{ 49.4, 80.2, TWILIGHT_HIGHLANDS },	-- Blood Elf Campsite
						{ 50.3, 89.4, TWILIGHT_HIGHLANDS },	-- Void Elf Campsite
						{ 58.7, 51.9, TWILIGHT_HIGHLANDS },	-- Floating in the sky!
					},
					["providers"] = {
						{ "o", 566765 },	-- Stolen Twilight's Blade Stratagem, Blood Elf Campsite
						-- The below is Portal to Stormwind and no other object is showing in wowhead
						-- { "o", 508350 },	-- Stolen Twilight's Blade Stratagem, Void Elf Campsite
					},
				}),
				ach(42300, {	-- Two Minutes to Midnight (automated)
					title(642),	-- <Name>, Thorn of Twilight
					i(246594),	-- Light-Forged Mechsuit (MOUNT!)
				}),
			},
		}),
		n(QUESTS, {
			q(90759, {	-- The Cult Within [A]
				["description"] = "Pops-up upon login",
				["races"] = ALLIANCE_ONLY,
			}),
			q(90764, {	-- The Cult Within [H]
				["description"] = "Pops-up upon login",
				["races"] = HORDE_ONLY,
			}),
			q(90760, {	-- Avoiding Blame [A]
				["sourceQuest"] = 90759,	-- The Cult Within [A]
				["qg"] = 246156,	-- Magister Umbric
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 71.9, 60.0, STORMWIND_CITY },
			}),
			q(90761, {	-- Avoiding Blame [H]
				["sourceQuest"] = 90764,	-- The Cult Within [H]
				["qg"] = 246158,	-- Grand Magister Rommath
				["races"] = HORDE_ONLY,
				["coord"] = { 42.1, 60.4, ORGRIMMAR },
			}),
			q(90762, {	-- The Twilight Highlands [A]
				["sourceQuest"] = 90760,	-- Avoiding Blame [A]
				["qg"] = 246156,	-- Magister Umbric
				["races"] = ALLIANCE_ONLY,
				["coord"] = { 71.9, 60.0, STORMWIND_CITY },
			}),
			q(90763, {	-- The Twilight Highlands [H]
				["sourceQuest"] = 90761,	-- Avoiding Blame [H]
				["qg"] = 246158,	-- Grand Magister Rommath
				["races"] = HORDE_ONLY,
				["coord"] = { 42.1, 60.4, ORGRIMMAR },
			}),
			q(90765, {	-- Midnight Dress
				["sourceQuests"] = {
					90762,	-- The Twilight Highlands [A]
					90763,	-- The Twilight Highlands [H]
				},
				["sourceQuestNumRequired"] = 1,
				["qg"] = 237504,	-- Grand Magister Rommath
				["coord"] = { 49.9, 80.7, TWILIGHT_HIGHLANDS },
				["groups"] = {
					o(619217, {	-- Overtaken Voidcaster
						["coord"] = { 47.2, 72.9, TWILIGHT_HIGHLANDS },
						["groups"] = { i(246398) },	-- Cultist Cowl (QI!)
					}),
					o(553558, {	-- Cultist Dagger
						["coord"] = { 46.5, 72.0, TWILIGHT_HIGHLANDS },
						["groups"] = { i(246399) },	-- Cultist Dagger (QI!)
					}),
					i(246400),	-- Cultist Robes (QI!)
				},
			}),
			------ Stay awhile and listen ------
			hqt(92103, {	-- Stay awhile and listen: Squabble Amongst Ministers
				["name"] = "Stay awhile and listen: Squabble Amongst Ministers",
				["description"] = "Dialogue becomes available after accepting 'Midnight Dress' (90765).",
				["sourceQuest"] = 90765,	-- Midnight Dress
				["qg"] = 237506,	-- Magister Umbric
				["coord"] = { 49.9, 80.8, TWILIGHT_HIGHLANDS },
			}),
			--
			q(90766, {	-- Xal'atath's Proven Faithful
				["sourceQuest"] = 90765,	-- Midnight Dress
				["qg"] = 246021,	-- Gehl Harrowtongue
				["coord"] = { 46.4, 72.0, TWILIGHT_HIGHLANDS },
			}),
			q(90767, {	-- More Doom
				["sourceQuest"] = 90766,	-- Xal'atath's Proven Faithful
				["qg"] = 246022,	-- Gehl Harrowtongue
				["coord"] = { 52.2, 70.8, TWILIGHT_HIGHLANDS },
				["groups"] = {
					o(570882, {	-- Inert Shadow Crystal
						["coord"] = { 52.9, 69.5, TWILIGHT_HIGHLANDS },
						["groups"] = { i(250465) },	-- Shadow Crystal (QI!)
					}),
				},
			}),
			q(90768, {	-- Cult It Out
				["sourceQuest"] = 90767,	-- More Doom
				["qg"] = 246025,	-- Magister Umbric
				["coord"] = { 52.4, 70.5, TWILIGHT_HIGHLANDS },
				["groups"] = {
					i(246627),	-- Twilight's Blade Tabard
					title(643),	-- <Name>, Definitely Not a Cultist
				},
			}),
			-- Repeatable Quests
			q(87308, {	-- Twilight's Dawn
				["sourceQuest"] = 90768,	-- Cult It Out
				["qg"] = 237504,	-- Grand Magister Rommath
				["coord"] = { 49.9, 80.7, TWILIGHT_HIGHLANDS },
				["isWeekly"] = true,
			}),
			q(91795, {	-- Disrupt the Call
				["sourceQuest"] = 90768,	-- Cult It Out
				["qg"] = 237504,	-- Grand Magister Rommath
				["coord"] = { 49.9, 80.7, TWILIGHT_HIGHLANDS },
				["isWeekly"] = true,
			}),
		}),
		n(RARES, {
			-- Several rares share Spawn Points. Location depends on which Rare is conducting the Ritual.
			n(246462, {	-- Archbishop Benedictus
				["coord"] = { 42.6, 17.2, TWILIGHT_HIGHLANDS },
			}),
			n(246343, {	-- Asira Dawnslayer
				["coord"] = { 45.4, 49.1, TWILIGHT_HIGHLANDS },
			}),
			n(237853, {	-- Berg the Spellfist
				["coord"] = { 57.5, 75.4, TWILIGHT_HIGHLANDS },
			}),
			n(246478, {	-- Commander Ix'vaarha
				["coord"] = { 45.4, 49.1, TWILIGHT_HIGHLANDS },
			}),
			n(237997, {	-- Corla, Herald of Twilight
				["coord"] = { 71.0, 30.6, TWILIGHT_HIGHLANDS },
			}),
			n(246840, {	-- Executioner Lynthelma
				["coord"] = { 57.5, 75.4, TWILIGHT_HIGHLANDS },
			}),
			n(246549, {	-- Ez'Haadosh the Liminality
				["coord"] = { 64.9, 52.5, TWILIGHT_HIGHLANDS },
			}),
			n(246565, {	-- Gustavan, Herald of the End
				["coord"] = { 71.0, 30.6, TWILIGHT_HIGHLANDS },
			}),
			n(246471, {	-- Ix the Bloodfallen
				["coord"] = { 46.8, 25.1, TWILIGHT_HIGHLANDS },
			}),
			n(246566, {	-- Mirrorvise
				["coord"] = { 45.4, 49.1, TWILIGHT_HIGHLANDS },
			}),
			n(246577, {	-- Nedrand the Eyegorger
				["coord"] = { 64.9, 52.5, TWILIGHT_HIGHLANDS },
			}),
			n(246460, {	-- Ray of Putrescence
				["coord"] = { 71.0, 30.6, TWILIGHT_HIGHLANDS },
			}),
			n(246572, {	-- Redeye the Skullchewer
				["coord"] = { 64.9, 52.5, TWILIGHT_HIGHLANDS },
			}),
			n(246558, {	-- Saligrum the Observer
				["coord"] = { 42.6, 17.2, TWILIGHT_HIGHLANDS },
			}),
			n(246559, {	-- Sharfadi, Bulwark of the Night
				["coord"] = { 42.6, 17.2, TWILIGHT_HIGHLANDS },
			}),
			n(246844, {	-- T'aavihan the Unbound
				["coord"] = { 57.5, 75.4, TWILIGHT_HIGHLANDS },
			}),
			n(253378, {	-- Voice of the Eclipse
				["description"] = "This Rare has a chance to be summoned anywhere in Twilight Highlands.\n\nDestroy Disparate Ephemera to force the Ephemeral Void to coalesce and bring forth the Voice of the Eclipse.",
				["crs"] = {
					253329,	-- Disparate Ephemera
					253605,	-- Ephemeral Void
				},
				["maps"] = { TWILIGHT_HIGHLANDS },
			}),
			n(246272, {	-- Void Zealot Devinda
				["coord"] = { 46.8, 25.1, TWILIGHT_HIGHLANDS },
			}),
			n(246578, {	-- Voidclaw Hexathor
				["coord"] = { 46.8, 25.1, TWILIGHT_HIGHLANDS },
			}),
		}),
		n(REWARDS, {
			currency(TWILIGHTS_BLADE_INSIGNIA),
		}),
		n(VENDORS, {
			n(249197, {	-- Armorer Kalinovan
				["coord"] = { 49.7, 81.3, TWILIGHT_HIGHLANDS },
				["groups"] = {
					n(LEVELING_CHARACTERS, bubbleDownFiltered({
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 10 } },
					},FILTERFUNC_itemID,{
						filter(CLOAKS, {
							i(251610),	-- Ascension Agitator's Cape
							i(251607),	-- Ascension Agitator's Cloak
							i(251611),	-- Ascension Agitator's Cowl
							i(251612),	-- Ascension Agitator's Shawl
						}),
						filter(CLOTH, {
							i(251599),	-- Ascension Agitator's Amice
							i(251598),	-- Ascension Agitator's Cincture
							i(251600),	-- Ascension Agitator's Leggings
							i(251601),	-- Ascension Agitator's Mitre
							i(251602),	-- Ascension Agitator's Mitts
							i(251604),	-- Ascension Agitator's Robe
							i(251603),	-- Ascension Agitator's Soles
							i(251597),	-- Ascension Agitator's Wraps
						}),
						filter(FINGER_F, {
							i(251605),	-- Ascension Agitator's Band
							i(251606),	-- Ascension Agitator's Ring
						}),
						filter(LEATHER, {
							i(251589),	-- Ascension Agitator's Bindings
							i(251592),	-- Ascension Agitator's Breeches
							i(251590),	-- Ascension Agitator's Clasp
							i(251596),	-- Ascension Agitator's Doublet
							i(251594),	-- Ascension Agitator's Gloves
							i(251593),	-- Ascension Agitator's Hood
							i(251591),	-- Ascension Agitator's Mantle
							i(251595),	-- Ascension Agitator's Shoes
						}),
						filter(MAIL, {
							i(251587),	-- Ascension Agitator's Boots
							i(251582),	-- Ascension Agitator's Girdle
							i(251586),	-- Ascension Agitator's Grips
							i(251588),	-- Ascension Agitator's Hauberk
							i(251585),	-- Ascension Agitator's Helmet
							i(251581),	-- Ascension Agitator's Mail Cuffs
							i(251584),	-- Ascension Agitator's Petticoat
							i(251583),	-- Ascension Agitator's Spaulders
						}),
						filter(NECK_F, {
							i(251609),	-- Ascension Agitator's Choker
							i(251608),	-- Ascension Agitator's Pendant
						}),
						filter(PLATE, {
							i(251577),	-- Ascension Agitator's Bascinet
							i(251573),	-- Ascension Agitator's Bracers
							i(251578),	-- Ascension Agitator's Gauntlets
							i(251574),	-- Ascension Agitator's Greatbelt
							i(251576),	-- Ascension Agitator's Greaves
							i(251575),	-- Ascension Agitator's Pauldrons
							i(251579),	-- Ascension Agitator's Sollerets
							i(251580),	-- Ascension Agitator's Surcoat
						}),
						n(WEAPONS, {
							i(251572),	-- Ascension Agitator's Axe
							i(251565),	-- Ascension Agitator's Censer
							i(269898),	-- Ascension Arrestor's Crossbow
							i(251569),	-- Ascension Agitator's Cudgel
							i(251571),	-- Ascension Agitator's Dagger
							i(251566),	-- Ascension Agitator's Greatsword
							i(251570),	-- Ascension Agitator's Mace
							i(251564),	-- Ascension Agitator's Shield
							i(251568),	-- Ascension Agitator's Spear
							i(251567),	-- Ascension Agitator's Staff
							i(251563),	-- Ascension Agitator's Warglaive
						}),
					})),
					n(MAX_LEVEL_CHARACTERS, bubbleDownFiltered({
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 20 } },
					},FILTERFUNC_itemID,{
						filter(CLOAKS, {
							i(246674),	-- Ascension Arrestor's Cape
							i(246675),	-- Ascension Arrestor's Cloak
							i(246673),	-- Ascension Arrestor's Cowl
							i(246672),	-- Ascension Arrestor's Shawl
						}),
						filter(CLOTH, {
							i(246634),	-- Ascension Arrestor's Amice
							i(246635),	-- Ascension Arrestor's Cincture
							i(246633),	-- Ascension Arrestor's Leggings
							i(246632),	-- Ascension Arrestor's Mitre
							i(246631),	-- Ascension Arrestor's Mitts
							i(246629),	-- Ascension Arrestor's Robe
							i(246630),	-- Ascension Arrestor's Soles
							i(246636),	-- Ascension Arrestor's Wraps
						}),
						filter(FINGER_F, {
							i(246677),	-- Ascension Arrestor's Band
							i(246676),	-- Ascension Arrestor's Ring
						}),
						filter(LEATHER, {
							i(246644),	-- Ascension Arrestor's Bindings
							i(246641),	-- Ascension Arrestor's Breeches
							i(246643),	-- Ascension Arrestor's Clasp
							i(246637),	-- Ascension Arrestor's Doublet
							i(246639),	-- Ascension Arrestor's Gloves
							i(246640),	-- Ascension Arrestor's Hood
							i(246642),	-- Ascension Arrestor's Mantle
							i(246638),	-- Ascension Arrestor's Shoes
						}),
						filter(MAIL, {
							i(246646),	-- Ascension Arrestor's Boots
							i(246651),	-- Ascension Arrestor's Girdle
							i(246647),	-- Ascension Arrestor's Grips
							i(246645),	-- Ascension Arrestor's Hauberk
							i(246648),	-- Ascension Arrestor's Helmet
							i(246652),	-- Ascension Arrestor's Mail Cuffs
							i(246649),	-- Ascension Arrestor's Petticoat
							i(246650),	-- Ascension Arrestor's Spaulders
						}),
						filter(NECK_F, {
							i(246678),	-- Ascension Arrestor's Choker
							i(246679),	-- Ascension Arrestor's Pendant
						}),
						filter(PLATE, {
							i(246656),	-- Ascension Arrestor's Bascinet
							i(246660),	-- Ascension Arrestor's Bracers
							i(246655),	-- Ascension Arrestor's Gauntlets
							i(246659),	-- Ascension Arrestor's Greatbelt
							i(246657),	-- Ascension Arrestor's Greaves
							i(246658),	-- Ascension Arrestor's Pauldrons
							i(246654),	-- Ascension Arrestor's Sollerets
							i(246653),	-- Ascension Arrestor's Surcoat
						}),
						n(WEAPONS, {
							i(246662),	-- Ascension Arrestor's Axe
							i(246668),	-- Ascension Arrestor's Censer
							i(269897),	-- Ascension Arrestor's Crossbow
							i(246664),	-- Ascension Arrestor's Cudgel
							i(246995),	-- Ascension Arrestor's Dagger
							i(246667),	-- Ascension Arrestor's Greatsword
							i(246663),	-- Ascension Arrestor's Mace
							i(246669),	-- Ascension Arrestor's Shield
							i(246665),	-- Ascension Arrestor's Spear
							i(246666),	-- Ascension Arrestor's Staff
							i(246670),	-- Ascension Arrestor's Warglaive
						}),
					})),
				},
			}),
			n(249196, {	-- Materialist Ophinell
				["coord"] = { 49.8, 81.3, TWILIGHT_HIGHLANDS },
				["groups"] = {
					iensemble(248218, {	-- Arsenal: Weathered Twilight's Hammer Armaments
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 40 } },
					}),
					iensemble(249438, {	-- Ensemble: Well-Worn Twilight Cultist's Attire
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 40 } },
					}),
					i(246628, {	-- Emerald Sporbit (PET!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 30 } },
					}),
					i(245330, {	-- Enchanted Blood Elven Candelabra (DECOR!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 50 } },
					}),
					i(224148, {	-- Retrained Skyrazor (MOUNT!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 100 } },
					}),
					i(244911, {	-- Rhay'Dahr (PET!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 30 } },
					}),
					i(232856, {	-- Scruff (PET!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 30 } },
					}),
					i(245284, {	-- Silvermoon Wooden Chair (DECOR!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 50 } },
					}),
					i(251997, {	-- Sin'dorei Winged Chaise (DECOR!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 75 } },
					}),
					i(249468, {	-- Twilight's Blade Top Secret Strategy Training Guide (TOY!)
						["cost"] = { { "c", TWILIGHTS_BLADE_INSIGNIA, 30 } },
					}),
				},
			}),
		}),
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
		}, {
			q(86951, {	-- Ascended, Descending
				["coord"] = { 39.4, 73.8, TWILIGHT_HIGHLANDS },
			}),
			q(86959, {	-- Bloodeye Prisoners
				["coord"] = { 40.8, 66.7, TWILIGHT_HIGHLANDS },
			}),
			q(91779, {	-- Combat Training for Cultists
				["coord"] = { 51.3, 71.3, TWILIGHT_HIGHLANDS },
			}),
			q(91759, {	-- Don't Bring That Here
				["coord"] = { 58.9, 12.3, TWILIGHT_HIGHLANDS },
			}),
			q(86957, {	-- Drakgor's Revenge
				["coord"] = { 40.6, 17.5, TWILIGHT_HIGHLANDS },
			}),
			q(86941, {	-- Elemental Infusion
				["coord"] = { 57.8, 31.1, TWILIGHT_HIGHLANDS },
				["groups"] = { i(235666) },	-- Shadow Infused Shard (QI!)
			}),
			q(86945, {	-- Shadowed Supplies
				["coord"] = { 40.6, 46.6, TWILIGHT_HIGHLANDS },
			}),
			q(91778, {	-- Too Deep and Too Dark
				["coord"] = { 37.4, 89.0, TWILIGHT_HIGHLANDS },
				["groups"] = { i(248205) },	-- Surplus Elementium (QI!)
			}),
			q(86948, {	-- Twilight Bonds
				["coord"] = { 35.3, 70.5, TWILIGHT_HIGHLANDS },
			}),
			q(86939, {	-- Twilight's Wedge
				["coord"] = { 39.0, 29.2, TWILIGHT_HIGHLANDS },
				["groups"] = { i(235663) },	-- Captured Twilight's Blade Banner (PQI!)
			}),
			q(86938, {	-- Void Perforations
				["coord"] = { 40.6, 46.6, TWILIGHT_HIGHLANDS },
			}),
			q(91776, {	-- Wildhammer and Free
				["coord"] = { 20.3, 57.8, TWILIGHT_HIGHLANDS },
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(EXPANSION_PRELAUNCH, {
		["timeline"] = { ADDED_12_0_0, REMOVED_12_0_0 },
		["groups"] = {
			n(QUESTS, {	-- Rare questIDs were removed third day of the pre-patch to make them always drop the gear
				q(91473),	-- Archbishop Benedictus
				q(91472),	-- Asira Dawnslayer
				q(94507),	-- Berg the Spellfist
				q(94517),	-- Commander Ix'vaarha
				q(91470),	-- Corla, Herald of Twilight
				q(94508),	-- Executioner Lynthelma
				q(91469),	-- Ez'Haadosh the Liminality
				q(94509),	-- Gustavan, Herald of the End
				q(94516),	-- Ix the Bloodfallen
				q(94511),	-- Mirrorvise
				q(91474),	-- Nedrand the Eyegorger
				q(91468),	-- Ray of Putrescence
				q(94513),	-- Redeye the Skullchewer
				q(94512),	-- Saligrum the Observer
				q(94518),	-- Sharfadi, Bulwark of the Night
				q(94514),	-- T'aavihan the Unbound
				q(94506),	-- Voice of the Eclipse
				q(91471),	-- Void Zealot Devinda
				q(94510),	-- Voidclaw Hexathor
			}),
		},
	}),
}));
