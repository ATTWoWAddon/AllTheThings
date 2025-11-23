-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

local TWILIGHTS_BLADE_INSIGNIA = 3319;

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, {
	expansion(EXPANSION.MID, {
		["forcetimeline"] = { ADDED_12_0_0, REMOVED_12_0_0_LAUNCH },
	}),
	expansion(EXPANSION.MID, {
		n(ACHIEVEMENTS, {
			ach(61430),	-- Crunching for Cultists
			ach(42300, {	-- Two Minutes to Midnight
				["groups"] = {
					title(642),	-- %s, Thorn of Twilight
					i(246594),	-- Light-Forged Mechsuit (MOUNT!)
				},
			}),
		}),
		n(BOSSES, {
			-- Exo Note: Events (Bonus Objectives) that need to be completed in order for boss to be killed rotate every 30 minutes.
			n(246462, {	-- Archbishop Benedictus
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246343, {	-- Asira Dawnslayer
				["coord"] = { 45.4, 49.1, TWILIGHT_HIGHLANDS },
			}),
			n(237853, {	-- Berg the Spellfist
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246478, {	-- Commander Ix'vaarha
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(237997, {	-- Corla, Herald of Twilight
				["coord"] = { 71.0, 30.6, TWILIGHT_HIGHLANDS },
			}),
			n(246840, {	-- Executioner Lynthelma
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246549, {	-- Ez'Haadosh the Liminality
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246565, {	-- Gustavan, Herald of the End
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246471, {	-- Ix the Bloodfallen
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246566, {	-- Mirrorvise
				["coord"] = { 45.4, 49.1, TWILIGHT_HIGHLANDS },
			}),
			n(246577, {	-- Nedrand the Eyegorger
				["coord"] = { 45.4, 49.1, TWILIGHT_HIGHLANDS },
			}),
			n(246460, {	-- Ray of Putrescence
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246572, {	-- Redeye the Skullchewer
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246558, {	-- Saligrum the Observer
				["coord"] = { 42.6, 17.2, TWILIGHT_HIGHLANDS },
			}),
			n(246559, {	-- Sharfadi, Bulwark of the Night
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246844, {	-- T'aavihan the Unbound
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(253378, {	-- Voice of the Eclipse
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
			n(246272, {	-- Void Zealot Devinda
				["coord"] = { 46.8, 25.1, TWILIGHT_HIGHLANDS },
			}),
			n(246578, {	-- Voidclaw Hexathor
				--["coord"] = { X, Y, TWILIGHT_HIGHLANDS },
			}),
		}),
		n(QUESTS, {
			--[[q(XXXXX, {	-- The Cult Within
				["qgs"] = {
					XXXXXX,	-- Stormwind NPC
					XXXXXX,	-- Orgrimmar NPC
				},
				},
				["coords"] = {
					{ X, Y, STORMWIND_CITY },
					{ X, Y, ORGRIMMAR },
				},
			}),--]]
		}),
		n(SPECIAL, {
		}),
		n(VENDORS, {
			n(249197, {	-- Armorer Kalinovan
				["coord"] = { 49.7, 81.3, TWILIGHT_HIGHLANDS },
				["groups"] = sharedData({
					["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 40 }},
				}, {
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
						i(246664),	-- Ascension Arrestor's Cudgel
						i(246995),	-- Ascension Arrestor's Dagger
						i(246667),	-- Ascension Arrestor's Greatsword
						i(246663),	-- Ascension Arrestor's Mace
						i(246669),	-- Ascension Arrestor's Shield
						i(246665),	-- Ascension Arrestor's Spear
						i(246666),	-- Ascension Arrestor's Staff
						i(246670),	-- Ascension Arrestor's Warglaive
					}),
				}),
			}),
			n(249196, {	-- Materialist Ophinell
				["coord"] = { 49.8, 81.3, TWILIGHT_HIGHLANDS },
				["groups"] = {
					iensemble(248218, {	-- Arsenal: Weathered Twilight's Hammer Armaments
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 40 }},
					}),
					i(246628, {	-- Emerald Sporbit (PET!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 30 }},
					}),
					i(245330, {	-- Enchanted Blood Elven Candelabra (DECOR!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 50 }},
					}),
					iensemble(249438, {	-- Ensemble: Well-Worn Twilight Cultist's Attire
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 40 }},
					}),
					i(224148, {	-- Retrained Skyrazor (MOUNT!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 100 }},
					}),
					i(244911, {	-- Rhay'Dahr (PET!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 30 }},
					}),
					i(232856, {	-- Scruff (PET!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 30 }},
					}),
					i(245284, {	-- Silvermoon Wooden Chair (DECOR!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 50 }},
					}),
					i(251997, {	-- Sin'dorei Winged Chaise (DECOR!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 75 }},
					}),
					i(249468, {	-- Twilight's Blade Top Secret Strategy Training Guide (TOY!)
						["cost"] = {{ "c", TWILIGHTS_BLADE_INSIGNIA, 30 }},
					}),
				},
			}),
		}),
	}),
}))

--[[
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(EXPANSION_PRELAUNCH, {
		["timeline"] = { ADDED_12_0_0 },
		["groups"] = {
			n(QUESTS, {
				
			}),
		},
	}),
}))--]]
