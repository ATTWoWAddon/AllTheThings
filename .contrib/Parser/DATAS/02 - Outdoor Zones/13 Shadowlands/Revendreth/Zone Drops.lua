---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(REVENDRETH, {
		n(ZONE_DROPS, {
			header(HEADERS.Spell, 921, {	-- Pickpocketing
				["classes"] = { ROGUE },
				["g"] = {
					-- both of these only have pickpocket comments on Wowhead
					i(180870),	-- Shadow's Bite
					i(180868),	-- Fear's Heartpiercer
				},
			}),
			i(179311),	-- Oxxein Lockbox
			i(187822, {	-- A Defector's Request
				["crs"] = {
					161180,	-- Maldraxxi Defector
					163245,	-- Maldraxxi Defector
					163243,	-- Maldraxxi Defector
				},
				["timeline"] = { ADDED_9_1_5 },
			}),
			i(172957, {	-- Atonement Crypt Key
				["description"] = "Used to open the crypts around |cFFFFFFFF70.1, 55.2|r.",
				["sourceQuests"] = { 57928 },	-- Atonement Crypt Key
			}),
			i(173735, {	-- Atonement Crypt Key (QI!)
				["sourceQuest"] = 57925,	-- Archivist Fane
			}),
			i(182703, {	-- Bubbling Red Muck Dye
				["description"] = "Drops from mobs or |cFFFFFFFFDiscarded Vials|r in the Blistering Bog area (|cFFFFFFFF35.7, 32.7|r).",
				["crs"] = {
					166292,	-- Bog Beast
					166320,	-- Bog Dredger
					166206,	-- Primordial Sludge
					166305,	-- Primordial Sludge
				},
			}),
			i(180602, {	-- Crimson Dredwing Pup (PET!)
				["crs"] = {
					159178,	-- Dire Evedweller
					169154,	-- Famished Fangling
					163893,	-- Fanged Dredbat
					161206,	-- Fanged Dredbat
					161207,	-- Fangling
					156077,	-- Fiendish Terrorwing
					165290,	-- Harika
					158976,	-- Shrieking Evedweller
					156395,	-- Starving Dredbat
				},
			}),
			i(182972, {	-- Critter Two-Thumbs Portrait
				["description"] = "Drops from mobs in the Endmire area (|cFFFFFFFF62.5, 44.3|r).",
				["crs"] = {
					159676,	-- Animus Mite
					160421,	-- Devourer Mite
					156061,	-- Devourer Mite
					175077,	-- Devourer Mite
					155589,	-- Dread Gorger
					165989,	-- Ebon Crawler
					166005,	-- Ebon Crawler Hatchling
					166487,	-- End Gorger
					165206,	-- Endlurker
					166521,	-- Famu the Infinite
					173782,	-- Horrific Bonemauler
					160521,	-- Manifestation of Envy
					160455,	-- Manifestation of Gluttony
					160476,	-- Manifestation of Pride
					160477,	-- Manifestation of Rage
					160454,	-- Ravenous Animite
					160436,	-- Shackled Gorger
					157698,	-- Unbidden Worldeater
				},
			}),
			i(187430),	-- Harvester's Sinvyr Chalice
			i(183420, {	-- Hopebreaker's Right Boot
				["classes"] = LEATHER_CLASSES,
				["g"] = {
					i(183418, {	-- Hopebreaker's Boots
						["cost"] = {
							{ "i", 183419, 1 },	-- Hopebreaker's Left Boot
						},
					}),
				},
			}),
			i(183417, {	-- Mail Courier's Right Runner
				["classes"] = MAIL_CLASSES,
				["g"] = {
					i(182719, {	-- Mail Courier's Runners
						["cost"] = {
							{ "i", 183416, 1 },	-- Mail Courier's Left Runner
						},
					}),
				},
			}),
			i(174378, {	-- Mortegore Scroll
				["crs"] = {
					161248,	-- Big Shiny
					161294,	-- Carved Sniffer
					161246,	-- Heftor
					173013,	-- Lichsworn Necromancer
					161180,	-- Maldraxxi Defector
					169876,	-- Retained Lookout
					161179,	-- Retained Supplier
					161178,	-- Retained Trafficker
					161257,	-- Stacka
				},
			}),
			i(183430, {	-- Researcher's Right Slipper
				["classes"] = CLOTH_CLASSES,
				["g"] = {
					i(183425, {	-- Researcher's Slippers
						["cost"] = {
							{ "i", 183427, 1 },	-- Researcher's Left Slipper
						},
					}),
				},
			}),
			i(183970, {	-- Royal Arcanist's Ritual Blade
				["crs"] = { 165270 },	-- Royal Arcanist
			}),
			i(183423, {	-- Stone Legion Right Sabaton
				["classes"] = PLATE_CLASSES,
				["g"] = {
					i(183421, {	-- Stone Legion Sabatons
						["cost"] = {
							{ "i", 183422, 1 },	-- Stone Legion Left Sabaton
						},
					}),
				},
			}),
			i(178557, {	-- Supply Chain Memo
				["cr"] = 158796,	-- Stonevigil Collector
				["coord"] = { 57.2, 68.4, REVENDRETH },
				["sourceQuests"] = { 57727 },	-- Stonevigil Unrest
			}),
			i(180595),	-- Nightforged Steel
			i(177772),	-- Avowed Tormenter's Cord
			i(177769),	-- Avowed Tormenter's Handwraps
			i(177770),	-- Avowed Tormenter's Hood
			i(177771),	-- Avowed Tormenter's Leggings
			i(177768),	-- Avowed Tormenter's Sandals
			i(177798),	-- Avowed Tormenter's Shoulderpads
			i(177767),	-- Avowed Tormenter's Vestment
			i(177773),	-- Avowed Tormenter's Wristwraps
			i(177806),	-- Banewood Dirk
			i(174655, {	-- Bell of Remembrance
				--	no questID appears to be attached to this, you can just judge souls as often as you loot bells.  this gives no rep (with court of harvesters or the avowed) and i'm not sure if there's anything interesting from the satchel either.  it gave me a buff item + some greys the first time, the second one gave me a Crumbling Sinstone that gave 8 Sinstone Fragments
				["sourceQuests"] = { 58725 },	-- Sinkeeper
				["description"] = "Use in front of the Seal of the Forgotten at |cFFFFFFFF73.2, 33.8|r.",
				["questID"] = 61194,	-- after the first day, when you can do the original quest item > second looted bell (this one), i haven't been able to loot more than one bell per day.  they also generally drop very quickly, like in < 10 mob kills, and this quest triggers on loot each time
				["isDaily"] = true,
				["crs"] = { 160716 },	-- Sinstone Rampager
				["g"] = {
					i(174652, {	-- Satchel of Forgotten Heirlooms
						["description"] = "Awarded regardless of your judgment.", -- as of December 14th 2021 she gives the satchel regardless of player's decision.
						["g"] = {
							i(180387),	-- Crumbling Sinstone
							i(180403),	-- Vessel of Distilled Regret
							i(180402),	-- Barrier of the Forgotten
							i(180396),	-- Vambraces of Fading Humanity
						},
					}),
				},
			}),
			i(174674, {	-- Bell of Remembrance (QI!)
				["crs"] = { 160716 },	-- Sinstone Rampager
			}),
			i(177800),	-- Bubbling Concoction
			i(180862),	-- Bulletslinger
			i(179319),	-- Caged Cudgel
			i(182691),	-- Darkwing Headlopper
			i(180864),	-- Decanter of Distilled Shadows
			i(177778),	-- Depraved Darkblade's Belt
			i(177779),	-- Depraved Darkblade's Bindings
			i(177777),	-- Depraved Darkblade's Breeches
			i(177797),	-- Depraved Darkblade's Epaulets
			i(177775),	-- Depraved Darkblade's Grips
			i(177776),	-- Depraved Darkblade's Helm
			i(177774),	-- Depraved Darkblade's Treads
			i(177796),	-- Depraved Darkblade's Tunic
			i(183971),	-- Depraved Ritualist's Kris
			i(177811),	-- Depraved Tutor's Signet
			i(177815),	-- Devout Archivist's Chain
			i(177816),	-- Dredhollow Cape
			i(179323),	-- Dredhollow Cudgel
			i(173939, {	-- Enticing Anima
				["description"] = "Used to summon the Worldedge Gorger.",
				["crs"] = {
					159676,	-- Animus Mite
					156061,	-- Devourer Mite
					175077,	-- Devourer Mite
					160815,	-- Encroaching Gorger
					168345,	-- Parched Gorger
				},
			}),
			i(179329),	-- Gargoyle Heartpiercer
			i(182690),	-- Gilded Crusader's Morningstar
			i(177802),	-- Hopebreaker Carbine
			i(177813),	-- Hopebreaker's Badge
			i(179333),	-- Inquisitor Cudgel
			i(177809),	-- Lithe Rapier
			i(182725),	-- Mail Courier's Wristguards
			i(177795),	-- Night Guardian Armplates
			i(177789),	-- Night Guardian Breastplate
			i(177794),	-- Night Guardian Cincture
			i(177790),	-- Night Guardian Footguards
			i(177791),	-- Night Guardian Gauntlets
			i(177788),	-- Night Guardian Helm
			i(177792),	-- Night Guardian Legguards
			i(177793),	-- Night Guardian Pauldrons
			i(173719, {	-- Pristine Dredbat Fang
				["crs"] = {
					169154,	-- Famished Fangling
					161206,	-- Fanged Dredbat
					163893,	-- Fanged Dredbat
					161207,	-- Fangling
					156077,	-- Fiendish Terrorwing
					165290,	-- Harika the Horrid
					158976,	-- Shrieking Evedweller
					156395,	-- Starving Dredbat
				},
			}),
			i(177805),	-- Redeemer's Mace
			i(177812),	-- Redelev House Band
			i(177808),	-- Reinforced Rapier
			i(177804),	-- Ritualist Dagger
			i(177787),	-- Savage Bonemauler Bracers
			i(177780),	-- Savage Bonemauler Chainmail
			i(177786),	-- Savage Bonemauler Cinch
			i(177782),	-- Savage Bonemauler Gloves
			i(177783),	-- Savage Bonemauler Helm
			i(177784),	-- Savage Bonemauler Leggings
			i(177785),	-- Savage Bonemauler Shoulderguards
			i(177781),	-- Savage Bonemauler Striders
			i(177801),	-- Sky Legion Halbard
			i(179332),	-- Stone Sentinel Poleaxe
			i(180865),	-- Stonebane Cudgel
			i(177799),	-- Stoneborn Shield
			i(177810),	-- Stonebreaker Mace
			i(180487),	-- Stonefist's Knuckle Cover
			i(187930, {	-- Technique: Mark of the Regal Dredbat (RECIPE!)
				["description"] = "Drops from Evedweller bats in Dominance Keep.",
				["timeline"] = { ADDED_9_1_5 },
				["crs"] = {
					158976,	-- Shrieking Evedweller
					159178,	-- Dire Evedweller
				},
			}),
			i(182705, {	-- Vial of Blue Muck Dye
			--	may also come from the |cFFFFFFFFDiscarded Vial object that can be found around the muck lakes - only the other itemID version shows up for that now, though|r
				["description"] = "Drops from mobs or |cFFFFFFFFDiscarded Vials|r in the Dredgewood area (|cFFFFFFFF72.9, 73.5|r).",
			--[[ commenting until we know whether it's based on the mobs being in the specific area, or the mobs themselves, most of which are in multiple areas
				["crs"] = {
					157332,	-- Bonemauler Alpha
					156077,	-- Fiendish Terrorwing
					156596,	-- Horrific Bonemauler
					157892,	-- Ravaging Devourer
				},
			--]]
			}),
			i(184446, {	-- Vial of Blue Muck Dye
				["description"] = "This version of the dye appears to only be used during the initial questline to obtain your Dredger.",
			}),
			i(179334),	-- Wingblade Staff
		}),
	}),
})));