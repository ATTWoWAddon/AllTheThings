---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(161528, {	-- Aethon
				["crs"] = { 161441 },	-- Orator Kloe
				["coord"] = { 55.3, 80.3, BASTION },
				["questID"] = 58526,
				["g"] = {
					i(179487),	-- Aethon's Horn
				},
			}),
			n(170899,   {	-- Ascended Council
				["description"] = "You have to ring all 5 vespers within 5 minutes to summon the Ascended Council at |cFFFFFFFF53.5, 88.3|r.  The vespers are spread out all over the map, so this might require at least a couple people.",
				["crs"] = {
					170835,	-- Champion of Courage
					170836,	-- Champion of Humility
					170832,	-- Champion of Loyalty
					170834,	-- Champion of Purity
					170833,	-- Champion of Wisdom
				},
				["coords"] = {
					{ 53.5, 88.3, BASTION },	-- The Ascended Council
					{ 33.3, 59.7, BASTION },	-- Vesper of Courage
					{ 71.8, 38.8, BASTION },	-- Vesper of Humility
					{ 64.3, 69.8, BASTION },	-- Vesper of Purity
					{ 39.1, 20.4, BASTION },	-- Vesper of Wisdom
					{ 32.1, 17.8, BASTION },	-- Vesper of Loyalty
				},
				["questID"] = 60933,
				["g"] = {
					o(354175, {	-- Cache of the Ascended
						["coord"] = { 53.5, 88.7, BASTION },
						["questID"] = 60977,
						["isDaily"] = true,
						["g"] = {
							i(183741),	-- Ascended Skymane (MOUNT!)
						},
					}),
				},
			}),
			n(171211, {	-- Aspirant Eolis
				-- #if BEFORE DF
				["description"] = "Fragile Humility Scrolls can be found throughout the Court of Elation.  They are floating unfurled scrolls that do not sparkle, but glow purple.  After you find one, read it to Eolis to start the encounter.\n\nIf you are unable to see the scroll, your characters level is not high enough as it required max level (60) during Shadowlands (2021).",
				-- #else
				["description"] = "Fragile Humility Scrolls can be found throughout the Court of Elation.  They are floating unfurled scrolls that do not sparkle, but glow purple.  After you find one, read it to Eolis to start the encounter.\n\nOnly available to level 60 characters, both spawning and looting.",
				-- #endif
				["coord"] = { 32.6, 23.4, BASTION },
				["questID"] = 61083,
				["g"] = {
					i(183607),	-- Uncertain Aspirant's Spear
					i(180613),	-- Fragile Humility Scroll (not dropped by the boss, but putting here so that the source text associates it w/ the rare)
				},
			}),
			n(160629, {	-- Baedos
				["description"] = "To start the encounter, find casks full of Fermenting Purian Fruit near the rare and bring them to Baedos' Fruit Barrel.",
				["crs"] = { 161536 },	-- Baedos' Fruit Barrel
				["coord"] = { 51.2, 40.6, BASTION },
				["questID"] = 58648,	-- looting chest triggers this and it's repeatable
			}),
			n(170659, {	-- Basilofos, King of the Hill
				["coord"] = { 48.4, 50.4, BASTION },
				["questID"] = 60897,	-- TODO: 62158 triggered as well
				["g"] = {
					i(180704),	-- Infused Pet Biscuit (consumable, maybe ignore)
				},
			}),
			n(171189, {	-- Bookkeeper Mnemis
				["coord"] = { 57.2, 62.4, BASTION },
				["questID"] = 59022,
				["g"] = {
					i(182682),	-- Book-Borrower Identification
				},
			}),
			n(170932, {	-- Cloudfeather Guardian
				["description"] = "If the rare is not attackable, you can kill Anima-Starved Cloudfeathers in the area to provoke it.",
				["coord"] = { 50.6, 59.6, BASTION },
				["questID"] = 60978,
				["g"] = {
					i(180812),	-- Golden Teroclaw (PET!)
				},
			}),
			n(161530, {	-- Cloudtail
				["crs"] = { 161441 },	-- Orator Kloe
				["coord"] = { 55.3, 80.3, BASTION },
				["questID"] = 60571,
				["g"] = {
					i(179488),	-- Cloudtail's Paw
				},
			}),
			n(171014, {	-- Collector Astorestes
				["description"] = "First, read the 6 chapters of Mercia's Legacy in order.\n\nChapter One - |cFFFFFFFF66.1, 44.1|r, on a small table with two vases.\nChapter Two - |cFFFFFFFF65.9, 44.1|r, on a bench.\nChapter Three - |cFFFFFFFF65.7, 43.9|r, behind a bench.\nChapter Four - |cFFFFFFFF65.7, 43.4|r, on the lower-left shelf.\nChapter Five - |cFFFFFFFF65.9, 43.2|r, to the right of the bench.\nChapter Six - |cFFFFFFFF66.2, 43.2|r, on the lower-right corner of the table.\n\nSpeak to the Echo of Mercia, and she will give you a 5-minute buff allowing you to find the secret 7th chapter of the story.  It will be outside the main temple room; just look at all the tables until you find a glowing purple scroll.\n\nPick up the 7th chapter scroll, bring it to the Echo of Mercia, and the rare will appear.",
				["crs"] = { 157979 },	-- Echo of Mercia <Paragon of Humility>
				["coord"] = { 66.0, 43.6, BASTION },
				["questID"] = 61002,
				["providers"] = {
					{ "o", 354283 },	-- Mercia's Legacy: Chapter One
					{ "o", 354284 },	-- Mercia's Legacy: Chapter Two
					{ "o", 354285 },	-- Mercia's Legacy: Chapter Three
					{ "o", 354286 },	-- Mercia's Legacy: Chapter Four
					{ "o", 354287 },	-- Mercia's Legacy: Chapter Five
					{ "o", 354288 },	-- Mercia's Legacy: Chapter Six
					{ "i", 180569 },	-- Mercia's Legacy: Chapter Seven
				},
				["g"] = {
					i(183606),	-- Bulwark of Echoing Courage
					i(184295),	-- Eternal Daybreak Necklace
					i(183608),	-- Evernote Vesper
					i(183614),	-- Gavel of Harmonious Wisdom
					i(183611),	-- Humble Ophelia's Greatblade
					i(183604),	-- Piercing Timbre Crossbow
					o(354467, {	-- Mercia's Legacy: Chapter Seven
						["coords"] = {
							{ 65.3, 44.4, BASTION },
							{ 65.4, 42.9, BASTION },
							{ 65.8, 44.4, BASTION },
							{ 66.4, 43.0, BASTION },
							{ 67.3, 43.6, BASTION },
							{ 67.4, 42.8, BASTION },
						},
						["g"] = { i(180569), },	-- Mercia's Legacy: Chapter Seven (so the item is associated with the rare)
					}),
					i(183613),	-- Glinting Daybreak Dagger
					i(183612),	-- Loyal Champion's Hammer
					i(183609),	-- Re-Powered Goliath Fists
					i(183607),	-- Uncertain Aspirant's Spear
					i(183605),	-- Devourer Wrought Warglaive
					i(183610),	-- Warrior Poet's Poniard
				},
			}),
			n(171010, {	-- Corrupted Clawguard
				["description"] = "To start the encounter, you need to find a Discarded Phalynx Core and use it on the Malfunctioning Clawguard.",
				["crs"] = { 171300 },	-- Malfunctioning Clawguard
				["coord"] = { 56.4, 46.1, BASTION },
				["questID"] = 60999,
				["g"] = {
					i(182759),	-- Functioning Anima Core
					i(180651),	-- Discarded Phalynx Core (so the item is associated with the rare)
				},
			}),
			n(170623, {	-- Dark Watcher
				["description"] = "If the rare is up, you will get a debuff called Ominous Gaze when you are close to it.  To start the encounter, you need to die and speak to the NPC.",
				["coord"] = { 27.8, 30.0, BASTION },
				["questID"] = 60883,
				["g"] = {
					i(184297),	-- Death Warden's Greatblade
				},
			}),
			n(171011, {	-- Demi the Relic Hoarder
				["description"] = "As soon as Demi is pulled, she will start running east.  She will pull additional Forsworn mobs for you to contend with, and she has 100 stacks of a buff that causes her to take reduced damage.  The stacks drop each time she is attacked, so she will take progressively more damage.  Upon defeat, she drops the treasure she is holding.\n\nThis rare is soloable, but having decent gear and at least one more person may be helpful — if Demi makes it to safety, she will despawn.",
				["coord"] = { 37.0, 41.8, BASTION },
				["questID"] = 61000,
				["g"] = {
					o(354649, {	-- Relic Hoard
						i(183606),	-- Bulwark of Echoing Courage
						i(183608),	-- Evernote Vesper
						i(183614),	-- Gavel of Harmonious Wisdom
						i(183613),	-- Glinting Daybreak Dagger
						i(183611),	-- Humble Ophelia's Greatblade
						i(183612),	-- Loyal Champion's Hammer
						i(183604),	-- Piercing Timbre Crossbow
						i(183609),	-- Re-Powered Golliath Fists
						i(183607),	-- Uncertain Aspirant's Spear
						i(183610),	-- Warrior Poet's Poniard
						i(183605),	-- Devourer Wrought Warglaive
					}),
				},
			}),
			n(163460, {	-- Dionae
				["description"] = "Stewart offers you his Stewpendous Stew in thanks after you save him from Dionae.",
				["coord"] = { 40.9, 47.4, BASTION },
				["questID"] = 62650,
				["g"] = {
					o(344588, {	-- Stewart's Stewpendous Stew
						i(180856),	-- Silvershell Snapper (PET!)
					}),
				},
			}),
			n(171255, {	-- Echo of Aella <Hand of Courage>
				["coord"] = { 46.8, 64.0, BASTION },
				["questID"] = 61091,	-- looting (seems more important to track than killing)
				["g"] = {
					i(180062),	-- Heavenly Drum
				},
			}),
			n(171009, {	-- Enforcer Aegeon
				["description"] = "Force the rare to spawn by killing mobs around the Eternal Forge.  Forge-Keeper Mnemis will periodically announce the threat level, and Aegeon will be dispatched when the threat level reaches Major.",
				["coord"] = { 50.8, 19.6, BASTION },
				["questID"] = 60998,
				["g"] = {
					i(184404),	-- Ever-Abundant Hearth (TOY!)
				},
			}),
			n(160721, {	-- Fallen Acolyte Erisne
			--	you defeat a non-rare version of this mob while on 57977 'a temple in need' / 57264 'on the edge of revelation' - figure out when the rare version becomes available, these quests or later
			--	cutscene phased the area during 57717, 'step back from that ledge, my friend' and the end of that storyline is 57447, 'purity's prerogative'
				["coord"] = { 60.5, 73.4, BASTION },
				["questID"] = 58222,
				["g"] = {
					i(180444),	-- Harmonia's Chosen Belt
				},
			}),
			n(158659, {	-- Herculon
				["description"] = "Pick up anima from the Depleted Anima Canisters around the chamber and the area outside.  Feed them to Herculon to activate him.\n\nLoot will be in the Aspirant's Cache behind him after he is defeated.",
				["coord"] = { 43.0, 82.6, BASTION },
				["questID"] = 57708,
				["g"] = {
					i(182759),	-- Functioning Anima Core
				},
			}),
			n(161529, {	-- Nemaeus
				["crs"] = { 161441 },	-- Orator Kloe
				["coord"] = { 55.3, 80.3, BASTION },
				["questID"] = 60569,
				["g"] = {
					i(179485),	-- Fang of Nemaeus
				},
			}),
			n(160882, {	-- Nikara Blackheart
				["description"] = "Requires 3 people to summon.  After all 3 have channeled the incense, the vesper will ring and Sophia will appear.  Protect her by defeating 2 waves of Forsworn attackers, and then the rare will spawn.\n\nAfter Nikara is defeated, Sophia will leave behind a chest called Sophia's Gift.",
				["coord"] = { 51.8, 68.6, BASTION },
				["questID"] = 63411,
				["g"] = {
					o(339625, {	-- Sophia's Gift
						["questID"] = 58319,
						["isDaily"] = true,
					}),
				},
			}),
			n(171327, {	-- Reekmonger
				["description"] = "Killing the creatures in 'The Necrotic Wake' area will have a chance to make the dragon come down from the sky and become attackable.",
				["coord"] = { 30.3, 55.2, BASTION },
				["questID"] = 61108,
				["g"] = {
					i(182749),	-- Regurgitated Kyrian Wings
				},
			}),
			n(160985, {	-- Selena the Reborn
				["description"] = "Requires 3 people to summon.  After all 3 have channeled the incense, the vesper will ring and Sophia will appear.  Protect her by defeating 2 waves of Forsworn attackers, and then the rare will spawn.\n\nAfter Nikara is defeated, Sophia will leave behind a chest called Sophia's Radiance.",
				["crs"] = { 160875 },	-- Sophia
				["coord"] = { 61.2, 51.0, BASTION },
				["questID"] = 58320,
			}),
			n(161527, {	-- Sigilback
				["crs"] = { 161441 },	-- Orator Kloe
				["coord"] = { 55.3, 80.3, BASTION },
				["questID"] = 60570,
				["g"] = {
					i(179486),	-- Sigilback's Smashshell
				},
			}),
			n(170548, {	-- Sundancer
				["description"] = "Requires two Buffs to mount the rare. First buff is from the statue next to the rare & the second buff comes from the Skystrider Glider item.",
				["coord"] = { 60.6, 93.2, BASTION },
				["questID"] = 60862,
				["cost"] = {{ "i", 180445, 1 }},	-- 1xSkystrider Glider
				["g"] = {
					ach(14733, {	-- In the Hot Seat
						["description"] = "Requires using the Skystrider Glider to bring Sundancer down. Being present for a kill will not grant credit.",
					}),
					i(180773),	-- Sundancer (MOUNT!)
				},
			}),
			n(171012, {	-- Swelling Tear
				["description"] = "Swelling Tear has a chance to spawn Embodied Hunger, Worldfeaster Chronn, or Xixin the Ravening.",
				["coords"] = {
					{ 39.6, 45.0, BASTION },
					{ 46.8, 42.2, BASTION },
					{ 51.8, 21.0, BASTION },
					{ 52.2, 32.6, BASTION },
					{ 56.0, 14.2, BASTION },
					{ 59.8, 51.8, BASTION },
					{ 63.4, 36.0, BASTION },
				},
				["g"] = {
					n(COMMON_BOSS_DROPS, {
						i(180869, {	-- Devoured Wader (PET!)
							["crs"] = {
								171013,	-- Embodied Hunger
								171041,	-- Worldfeaster Chronn
								171040,	-- Xixin the Ravening
							},
						}),
						i(183605, {	-- Devourer Wrought Warglaive
							["crs"] = {
								171013,	-- Embodied Hunger
								171041,	-- Worldfeaster Chronn
								171040,	-- Xixin the Ravening
							},
						}),
					}),
					n(171013, {	-- Embodied Hunger
						["questID"] = 61001,
						["isDaily"] = true,
					}),
					n(171041, {	-- Worldfeaster Chronn
						["questID"] = 61047,
						["isDaily"] = true,
					}),
					n(171040, {	-- Xixin the Ravening
						["questID"] = 61046,
						["isDaily"] = true,
					}),
				},
			}),
			n(171008, {	-- Unstable Memory
				["description"] = "Get aggro on an Unstable Memory Fragment, drag it through more fragments until the mob has 10 stacks of Instability, and it will turn into the rare.\n\nIf Unstable Memory Fragments are not up, the rare is not available to summon.",
				["crs"] = { 171018 },	-- Unstable Memory Fragment
				["coord"] = { 43.4, 25.2, BASTION },
				["questID"] = 60997,
				["g"] = {
					i(184413),	-- Mnemonic Attunement Pane (TOY!)
				},
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(BASTION, {
			n(RARES, {
				q(63422),	-- Aethon secondary quest
				q(62192),	-- Baedos secondary quest
				q(62158),	-- Basilofos secondary quest
				q(62167),	-- Bookkeeper Mnemis secondary quest along with 59022
				q(62191),	-- Cloudfeather Guardian secondary quest
				q(63424),	-- Cloudtail secondary quest
				q(61069),	-- Demi the Relic Hoarder secondary quest
				q(61082),	-- Echo of Aella kill quest
				q(62251),	-- Echo of Aella secondary loot quest
				q(57705),	-- Herculon kill quest
				q(62201),	-- Herculon secondary loot quest
				q(63421),	-- Nemaeus secondary quest
				q(63410),	-- Selena the Reborn secondary quest (spellID 347866)
				q(63423),	-- Sigilback secondary quest
				q(62197),	-- Wingflayer the Cruel secondary quest
				q(62202),	-- triggers when killing Corrupted Clawguard, which drops Functioning Anima Core
				q(57741),	-- when defeating Sundancer after also having ridden Sundancer using the Skyfeather Glider
			}),
		}),
	}),
})));