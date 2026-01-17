---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(THE_FORBIDDEN_REACH, {
		n(QUESTS, {
			header(HEADERS.Achievement, 17739, {	-- Embers of Neltharion
				------ Prologue ------
				q(74381, {	-- Hidden Legacies
					["maps"] = { VALDRAKKEN },
				}),
				q(73076, {	-- Return to the Reach
					["sourceQuests"] = { 74381 },	-- Hidden Legacies
					["provider"] = { "n", 201398 },	-- Kurazidaia
					["coord"] = { 60.8, 26.4, VALDRAKKEN },
					["groups"] = {
						i(203646),	-- Primalist Cloak
					},
				}),
				q(75050, {	-- An Eclectic Accord
					["sourceQuests"] = { 73076 },	-- Return to the Reach
					["provider"] = { "n", 199201 },	-- Scalecommander Viridia
					["coord"] = { 34.6, 57.7, THE_FORBIDDEN_REACH },
				}),
				q(74769, {	-- Stemming the Irontide
					["sourceQuests"] = { 73076 },	-- Return to the Reach
					["provider"] = { "n", 199201 },	-- Scalecommander Viridia
					["coord"] = { 34.6, 57.7, THE_FORBIDDEN_REACH },
				}),
				q(73157, {	-- Wings of Mercy
					["sourceQuests"] = { 73076 },	-- Return to the Reach
					["provider"] = { "n", 199201 },	-- Scalecommander Viridia
					["coord"] = { 34.6, 57.7, THE_FORBIDDEN_REACH },
					["groups"] = {
						i(202868),	-- Mender's Signal (QI!)
					},
				}),
				q(74847, {	-- Emberthal Awaits
					["sourceQuests"] = {
						75050,	-- An Eclectic Accord
						74769,	-- Stemming the Irontide
						73157,	-- Wings of Mercy
					},
					["provider"] = { "n", 199201 },	-- Scalecommander Viridia
					["coord"] = { 34.6, 57.7, THE_FORBIDDEN_REACH },
					["timeline"] = { REMOVED_10_1_0 },
					["groups"] = {
						i(204276),	-- Untapped Forbidden Knowledge
					},
				}),
				q(72712, {	-- The Best We Have
					["sourceQuests"] = { 73076 },	-- Return to the Reach
					["provider"] = { "n", 199532 },	-- Scalecommander Emberthal
					["coord"] = { 32.6, 60.3, THE_FORBIDDEN_REACH },
				}),
				q(72713, {	-- Inheritance
					["sourceQuests"] = { 72712 },	-- The Best We Have
					["provider"] = { "n", 200403 },	-- Talon Damos
					["coord"] = { 55.0, 37.2, THE_FORBIDDEN_REACH },
				}),
				q(72545, {	-- Creche Fallen
					["sourceQuests"] = { 72713 },	-- Inheritance
					["provider"] = { "n", 199531 },	-- Scalecommander Emberthal
					["coord"] = { 55.1, 35.8, THE_FORBIDDEN_REACH },
					["groups"] = {
						i(203692),	-- Horn Signet of Arrosh (QI!)
						i(203697),	-- Horn Signet of Ekrati (QI!)
						i(203698),	-- Horn Signet of Talon Hermin (QI!)
						i(203689),	-- Horn Signet of Tetsos (QI!)
					},
				}),
				q(73094, {	-- Aiding the Expedition
					["sourceQuests"] = { 72545 },	-- Creche Fallen
					["provider"] = { "n", 199531 },	-- Scalecommander Emberthal
					["coord"] = { 55.1, 35.8, THE_FORBIDDEN_REACH },
				}),
				q(72715, {	-- Keeping the Flame at Bay
					["sourceQuests"] = { 73094 },	-- Aiding the Expedition
					["provider"] = { "n", 199175 },	-- Scalecommander Emberthal
					["coord"] = { 61.4, 61.5, THE_FORBIDDEN_REACH },
				}),
				q(72714, {	-- An Interdisciplinary Approach
					["sourceQuests"] = { 73094 },	-- Aiding the Expedition
					["provider"] = { "n", 199520 },	-- Ebyssian
					["coord"] = { 61.6, 61.4, THE_FORBIDDEN_REACH },
				}),
				q(73137, {	-- Chasing the Flame
					["sourceQuests"] = {
						72715,	-- Keeping the Flame at Bay
						72714,	-- An Interdisciplinary Approach
					},
					["provider"] = { "n", 199521 },	-- Scalecommander Emberthal
					["coord"] = { 58.7, 70.2, THE_FORBIDDEN_REACH },
				}),
				q(72717, {	-- A Creche Divided
					["sourceQuests"] = { 73137 },	-- Chasing the Flame
					["provider"] = { "n", 199538 },	-- Scalecommander Emberthal
					["coord"] = { 74.3, 36.9, THE_FORBIDDEN_REACH },
					["groups"] = {
						i(204182),	-- Cloak of Dark Descent
					},
				}),
				q(73156, {	-- Return to Viridia
					["sourceQuests"] = { 72717 },	-- A Creche Divided
					["provider"] = { "n", 199539 },	-- Scalecommander Emberthal
					["coord"] = { 76.6, 38.6, THE_FORBIDDEN_REACH },
				}),
				------ Continues in Zaralek Cavern ------
			}),
			q(74359, {	-- Plunder Siege
				["sourceQuests"] = {
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
				},
				["provider"] = { "n", 200010 },	-- Atrenosh Hailstone
				["coord"] = { 34.7, 57.6, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(203463),	-- Atrenosh's Journal (QI!)
				},
			}),
			q(74379, {	-- Still Within Reach
				["sourceQuests"] = {
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
				},
				["provider"] = { "n", 200559 },	-- Treysh
				["coord"] = { 35.6, 59.5, THE_FORBIDDEN_REACH },
			}),
			-- Evoker Tablets
			q(74866, {	-- Journal Entry: Experiments (A)
				["provider"] = { "i", 204200 },	-- Journal Entry: Experiments [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(73110, {	-- Journal Entry: Experiments (H)
				["provider"] = { "i", 202329 },	-- Journal Entry: Experiments [H]
				["races"] = HORDE_ONLY,
			}),
			q(73113, {	-- Journal Entry: Relics (A)
				["provider"] = { "i", 202335 },	-- Journal Entry: Relics [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(74880, {	-- Journal Entry: Relics (H)
				["provider"] = { "i", 204221 },	-- Journal Entry: Relics [H]
				["races"] = HORDE_ONLY,
			}),
			q(73109, {	-- Receiving Stone: Final Warning (A)
				["provider"] = { "i", 202328 },	-- Receiving Stone: Final Warning [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(74900, {	-- Receiving Stone: Final Warning (H)
				["provider"] = { "i", 204250 },	-- Receiving Stone: Final Warning [H]
				["races"] = HORDE_ONLY,
			}),
			q(73107, {	-- Sending Stone: Initial Report (A)
				["provider"] = { "i", 202326 },	-- Sending Stone: Initial Report [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(74902, {	-- Sending Stone: Initial Report (H)
				["provider"] = { "i", 204252 },	-- Sending Stone: Initial Report [H]
				["races"] = HORDE_ONLY,
			}),
			q(72944, {	-- Sending Stone: Protest (A)
				["provider"] = { "i", 202203 },	-- Sending Stone: Protest [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(74901, {	-- Sending Stone: Protest (H)
				["provider"] = { "i", 204251 },	-- Sending Stone: Protest [H]
				["races"] = HORDE_ONLY,
			}),
			-- Envoy
			-- Dragonscale
			q(74908, {	-- New Adventures
				["sourceQuests"] = {
					-- #IF AFTER 11.0.2
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
					-- #ELSE
					74381,	-- Hidden Legacies
					-- #ENDIF
				},
				["coord"] = { 34.2, 59.9, THE_FORBIDDEN_REACH },
			}),
			q(74389, {	-- Filming the Caldera
				["sourceQuests"] = { 74908 },	-- New Adventures
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200566 },	-- Cataloger Daela
				["coord"] = { 34.3, 60.0, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			q(74118, {	-- Spelunking the Den
				["sourceQuests"] = { 74908 },	-- New Adventures
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200566 },	-- Cataloger Daela
				["coord"] = { 34.3, 60.0, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
				["groups"] = {
					i(204561),	-- Primalist Cache Key
					i(204852),	-- Primalist Scriptures
				},
			}),
			-- Iskaara
			q(74909, {	-- New Catches
				["sourceQuests"] = {
					-- #IF AFTER 11.0.2
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
					-- #ELSE
					74381,	-- Hidden Legacies
					-- #ENDIF
				},
				["coord"] = { 34.2, 59.9, THE_FORBIDDEN_REACH },
			}),
			q(74119, {	-- Angler's Challenge
				["sourceQuests"] = { 74909 },	-- New Catches
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200562 },	-- Turik
				["coord"] = { 34.2, 60.0, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			q(74391, {	-- Harpooner's Challenge
				["sourceQuests"] = { 74909 },	-- New Catches
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200562 },	-- Turik
				["coord"] = { 34.2, 60.0, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
				["groups"] = {
					i(204093),	-- Lunker Morsel (QI!)
				},
			}),
			-- Maruuk
			q(74910, {	-- New Foes
				["sourceQuests"] = {
					-- #IF AFTER 11.0.2
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
					-- #ELSE
					74381,	-- Hidden Legacies
					-- #ENDIF
				},
				["coord"] = { 34.2, 59.9, THE_FORBIDDEN_REACH },
			}),
			q(74390, {	-- Brutal Prey
				["sourceQuests"] = { 74910 },	-- New Foes
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200564 },	-- Storykeeper Ashekh
				["coord"] = { 34.1, 59.9, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			q(74117, {	-- Rare Prey
				["sourceQuests"] = { 74910 },	-- New Foes
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200564 },	-- Storykeeper Ashekh
				["coord"] = { 34.1, 59.9, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			-- Valdrakken
			q(74911, {	-- New Horizons
				["sourceQuests"] = {
					-- #IF AFTER 11.0.2
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
					-- #ELSE
					74381,	-- Hidden Legacies
					-- #ENDIF
				},
				["coord"] = { 34.2, 59.9, THE_FORBIDDEN_REACH },
			}),
			q(75261, {	-- Reach Center
				["sourceQuests"] = { 74911 },	-- New Horizons
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200563 },	-- Kraxxus
				["coord"] = { 34.0, 59.8, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			q(75263, {	-- Reach South
				["sourceQuests"] = { 74911 },	-- New Horizons
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200563 },	-- Kraxxus
				["coord"] = { 34.0, 59.8, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			q(75237, {	-- Reach West
				["sourceQuests"] = { 74911 },	-- New Horizons
				["sourceQuestNumRequired"] = 0,	-- TODO: This relies on the relevant envoy being unlocked, but we need to map which HQT is which envoy to match them properly
				["provider"] = { "n", 200563 },	-- Kraxxus
				["coord"] = { 34.0, 59.8, THE_FORBIDDEN_REACH },
				["isDaily"] = true,
			}),
			-- Augmentation Evoker questline
			q(72513, {	-- Our Destiny
				["description"] = "You get this anywhere in the Dragon Isles when you specialize in Augmentation for the first time.",
				["timeline"] = { ADDED_10_1_5 },
			}),
			q(72514, {	-- The High Creche
				["sourceQuests"] = { 72513 },	-- Our Destiny
				["provider"] = { "n", 199135 },	-- Scalecommander Emberthal
				["coord"] = { 58.6, 68.5, THE_FORBIDDEN_REACH },
				["timeline"] = { ADDED_10_1_5 },
			}),
			q(72515, {	-- Augmenting a Dragon
				["sourceQuests"] = { 72514 },	-- The High Creche
				["provider"] = { "n", 199141 },	-- Scalecommander Emberthal
				["coord"] = { 58.7, 70.4, THE_FORBIDDEN_REACH },
				["timeline"] = { ADDED_10_1_5 },
				["groups"] = {
					i(205162),	-- Nelthara (PET!)
				},
			}),
		}),
		n(BONUS_OBJECTIVES, {
			q(74377, {	-- Capsize a Crab
				["coord"] = { 37.4, 81.7, THE_FORBIDDEN_REACH },
			}),
		}),
		n(QUESTS, sharedData({
				["isWeekly"] = true,
				["sourceQuests"] = {
					-- #IF AFTER 11.0.2
					75050,	-- An Eclectic Accord
					74769,	-- Stemming the Irontide
					73157,	-- Wings of Mercy
					-- #ELSE
					74381,	-- Hidden Legacies
					-- #ENDIF
				},}, {
			q(75025, {	-- A Good Day for Rolling
				["provider"] = { "n", 201291 },	-- Cataloger Coralie
				["coord"] = { 34.4, 59.3, THE_FORBIDDEN_REACH },
			}),
			q(73142, {	-- Busting Blues
				["provider"] = { "n", 199199 },	-- Scalecommander Cindrethresh
				["coord"] = { 35.3, 59.5, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202362),	-- Arcane Focus (QI!)
				},
			}),
			q(73189, {	-- Creche Cache
				["provider"] = { "n", 200727 },	-- Volethi
				["coord"] = { 32.4, 52.9, THE_FORBIDDEN_REACH },
				["groups"] = {
					o(385990, {	-- Mender Supplies
						["coord"] = { 33.8, 56.2, 2101 },	-- The Support Creche
						["groups"] = { i(202619) },	-- Mender Supplies (QI!)
					}),
					i(202620),	-- Toxin Antidote (QI!)
					i(203657),	-- Toxin Antidote (QI!)
				},
			}),
			q(73139, {	-- Deep Sea Supplies
				["provider"] = { "n", 200558 },	-- Tukkaraq
				["coord"] = { 31.8, 54.2, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202361),	-- Farscale Supplies
				},
			}),
			q(73715, {	-- Driftwood Derby
				["provider"] = { "n", 200558 },	-- Tukkaraq
				["coord"] = { 31.8, 54.2, THE_FORBIDDEN_REACH },
			}),
			q(73141, {	-- Everburning Embers
				["provider"] = { "n", 200558 },	-- Tukkaraq
				["coord"] = { 31.8, 54.2, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202364),	-- Everburning Ember
				},
			}),
			q(73178, {	-- Hands Off Our Booty!
				["provider"] = { "n", 199204 },	-- Scalecommander Azurathel
				["coord"] = { 35.4, 58.6, THE_FORBIDDEN_REACH },
				["groups"] = {
					o(385999, {	-- Stolen Booty
						i(202647),	-- Stolen Goods (QI!)
					}),
				},
			}),
			q(73191, {	-- Snake Wrangling
				["provider"] = { "n", 201291 },	-- Cataloger Coralie
				["coord"] = { 34.4, 59.3, THE_FORBIDDEN_REACH },
			}),
			q(73179, {	-- Soupocalypse Now!
				["provider"] = { "n", 199199 },	-- Scalecommander Cindrethresh
				["coord"] = { 35.3, 59.5, THE_FORBIDDEN_REACH },
			}),
			q(73140, {	-- Sunder the Crater
				["provider"] = { "n", 199204 },	-- Scalecommander Azurathel
				["coord"] = { 35.4, 58.6, THE_FORBIDDEN_REACH },
			}),
			q(75024, {	-- Sneaky Pebbles
				["provider"] = { "n", 200727 },	-- Volethi
				["coord"] = { 32.4, 52.9, THE_FORBIDDEN_REACH },
			}),
			q(73694, {	-- Stuck in Stasis
				["provider"] = { "n", 199201 },	-- Scalecommander Viridia
				["coord"] = { 34.6, 57.7, THE_FORBIDDEN_REACH },
			}),
			q(73398, {	-- Too Far Forward
				["provider"] = { "n", 199204 },	-- Scalecommander Azurathel
				["coord"] = { 35.4, 58.6, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202874),	-- Healing Draught
				},
			}),
			q(73190, {	-- Toxic Infestation
				["provider"] = { "n", 199199 },	-- Scalecommander Cindrethresh
				["coord"] = { 35.3, 59.5, THE_FORBIDDEN_REACH },
			}),
			q(73194, {	-- Up Close and Personal
				["provider"] = { "n", 199199 },	-- Scalecommander Cindrethresh
				["coord"] = { 35.3, 59.5, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202642),	-- Proto-Killing Spear
				},
			}),
			q(75026, {	-- Up to the Highest Height!
				["provider"] = { "n", 200558 },	-- Tukkaraq
				["coord"] = { 31.8, 54.2, THE_FORBIDDEN_REACH },
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(DRAGON_ISLES, {
		m(THE_FORBIDDEN_REACH, {
			n(QUESTS, {
				q(74767),	-- Valdrakken Accord Envoy Tasks Unlock (spellID 402876)
				q(74766),	-- Maruuk Centaur Envoy Tasks Unlock (spellID 402875)
				q(74765),	-- Iskaara Tuskarr Envoy Tasks Unlock (spellID 402874)
				q(74764),	-- Dragonscale Expedition Envoy Tasks Unlock (spellID 402873)
				q(75240),	-- Unlocking Researcher Imareth as a vendor (spellID 406060)
			}),
		}),
	}),
})));
