---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local TEMPORARY_SOURCEQUEST = 80434;
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(THE_RINGING_DEEPS, {
		n(QUESTS, {
			header(HEADERS.Achievement, 19560, {	-- The Ringing Deeps
				------ Chapter 1 ------
				q(80434, {	-- Into the Deeps
					["sourceQuests"] = { 78546 },	-- Recompense
					["provider"] = { "n", 217887 },	-- Moira Thaurissan
					["coord"] = { 32.0, 59.8, DORNOGAL },
				}),
				q(78555, {	-- Underground and Overhelmed
					["sourceQuests"] = { 80434 },	-- Into the Deeps
					["provider"] = { "n", 212592 },	-- Speaker Brinthe
					["coord"] = { 42.1, 28.3, THE_RINGING_DEEPS },
					["g"] = {
						o(425875, {	-- Priority Transport Crate
							i(216720),	-- Valuable Parts (QI!)
						}),
					},
				}),
				q(78557, {	-- Getting Off Track
					["sourceQuests"] = { 80434 },	-- Into the Deeps
					["provider"] = { "n", 218290 },	-- Foreman Uzjax
					["coord"] = { 42.1, 28.3, THE_RINGING_DEEPS },
				}),
				q(78837, {	-- Pomp and Dire Circumstance
					["sourceQuests"] = {
						78557,	-- Getting Off Track
						78555,	-- Underground and Overhelmed
					},
					["provider"] = { "n", 212592 },	-- Speaker Brinthe
					["coord"] = { 42.1, 28.3, THE_RINGING_DEEPS },
				}),
				q(78838, {	-- Cogs in the Machine
					["sourceQuests"] = { 78837 },	-- Pomp and Dire Circumstance
					["provider"] = { "n", 212741 },	-- Speaker Brinthe
					["coord"] = { 47.2, 34.2, THE_RINGING_DEEPS },
				}),
				q(78631, {	-- Speaking to the Speakers
					["sourceQuests"] = { 78838 },	-- Cogs in the Machine
					["provider"] = { "n", 212741 },	-- Speaker Brinthe
					["coord"] = { 47.2, 34.2, THE_RINGING_DEEPS },
				}),
				q(78635, {	-- Death and Waxes
					["sourceQuests"] = { 78631 },	-- Speaking to the Speakers
					["provider"] = { "n", 212269 },	-- Skitter
					["coord"] = { 57.7, 29.2, THE_RINGING_DEEPS },
					["g"] = {
						i(210878),	-- Flickerflame Candle (QI!)
						i(219361),	-- Earthen Traveler's Cord
						i(219363),	-- Earthen Traveler's Waders
						i(219368),	-- Earthen Traveler's Grips
						i(219375),	-- Earthen Traveler's Mantle
					},
				}),
				q(78634, {	-- Leave No Stone Behind
					["sourceQuests"] = { 78631 },	-- Speaking to the Speakers
					["provider"] = { "n", 212519 },	-- Speaker Brinthe
					["coord"] = { 57.7, 29.1, THE_RINGING_DEEPS },
					["g"] = {
						i(212178),	-- Faded Memory Gem (QS!)/(QI!)
						i(217695),	-- Earthen Identification Plaque 3481a662 (QI!)
						i(217694),	-- Earthen Identification Plaque 1103a572 (QI!)
						i(217696),	-- Earthen Identification Plaque 2672b138 (QI!)
						i(217699),	-- Earthen Identification Plaque 0985e438 (QI!)
					},
				}),
				q(78839, {	-- Kobold Shoulder
					["sourceQuests"] = { 78631 },	-- Speaking to the Speakers
					["provider"] = { "n", 212519 },	-- Speaker Brinthe
					["coord"] = { 57.7, 29.1, THE_RINGING_DEEPS },
				}),
				q(78637, {	-- Cracking Cogchewer
					["sourceQuests"] = {
						78635,	-- Death and Waxes
						78634,	-- Leave No Stone Behind
					},
					["provider"] = { "n", 212269 },	-- Skitter
					["coord"] = { 57.7, 29.2, THE_RINGING_DEEPS },
					["g"] = {
						i(211865),	-- Cogchewer's Keys (QI!)
					},
				}),
				q(78638, {	-- Engeneering Destruction
					["sourceQuests"] = {
						78635,	-- Death and Waxes
						78634,	-- Leave No Stone Behind
					},
					["provider"] = { "n", 212519 },	-- Speaker Brinthe
					["coord"] = { 57.7, 29.1, THE_RINGING_DEEPS },
				}),
				q(78636, {	-- Retaking the Mines
					["sourceQuests"] = {
						78637,	-- Cracking Cogchewer
						78638,	-- Engeneering Destruction
					},
					["provider"] = { "n", 212519 },	-- Speaker Brinthe
					["coord"] = { 57.7, 29.1, THE_RINGING_DEEPS },
					["g"] = {
						i(219014),	-- Vengeful Fire Spirit
						i(218307),	-- Wildfire Wick
					},
				}),
				q(78640, {	-- Manifesto Destiny
					["sourceQuests"] = { 78636 },	-- Retaking the Mines
					["provider"] = { "n", 215672 },	-- Skitter
					["coord"] = { 59.5, 21.8, THE_RINGING_DEEPS },
				}),
				q(78639, {	-- Ko-Boldening
					["sourceQuests"] = { 78640 },	-- Manifesto Destiny
					["provider"] = { "n", 212991 },	-- Skitter
					["coord"] = { 61.5, 32.0, THE_RINGING_DEEPS },
					["g"] = {
						i(219378),	-- Earthen Traveler's Shoulderpads
						i(219365),	-- Earthen Traveler's Sash
						i(219367),	-- Earthen Traveler's Striders
						i(219374),	-- Earthen Traveler's Gauntlets
					},
				}),
				q(79205, {	-- Not Waste, Not Want
					["sourceQuests"] = { 78640 },	-- Manifesto Destiny
					["provider"] = { "n", 212991 },	-- Skitter
					["coord"] = { 61.5, 32.0, THE_RINGING_DEEPS },
					["g"] = {
						o(428699, {	-- Sizzling Barrel
							i(217015),	-- Unstable Cinderbrew Barrel (QI!)
						}),
						o_repeated({
							i(212177),	-- Useful Looking Scrap (QI!)
							o(417136),	-- Intriguing Scrap
							o(417137),	-- Intriguing Scrap
							o(417138),	-- Intriguing Scrap
							o(411878),	-- Intriguing Scrap
						}),
					},
				}),
				q(78641, {	-- Tackling Torchsnarl
					["sourceQuests"] = {
						78639,	-- Ko-Boldening
						79205,	-- Not Waste, Not Want
					},
					["provider"] = { "n", 212991 },	-- Skitter
					["coord"] = { 61.5, 32.0, THE_RINGING_DEEPS },
				}),
				q(79267, {	-- Wax On, Pot Off
					["sourceQuests"] = {
						78639,	-- Ko-Boldening
						79205,	-- Not Waste, Not Want
					},
					["provider"] = { "n", 212992 },	-- Speaker Brinthe
					["coord"] = { 61.5, 32.0, THE_RINGING_DEEPS },
				}),
				q(78642, {	-- New Candle, New Hope
					["sourceQuests"] = {
						78641,	-- Tackling Torchsnarl
						79267,	-- Wax On, Pot Off
					},
					["provider"] = { "n", 212991 },	-- Skitter
					["coord"] = { 61.5, 32.0, THE_RINGING_DEEPS },
					["maps"] = { 2304 },	-- DarkFlame Scenario (Darkflame Cleft)
					["g"] = {
						i(210882),	-- Candle Crown (QI!)
						i(212575),	-- The Candle Keys (QI!)
						i(219464),	-- Earthen Traveler's Boomstick
						i(219466),	-- Earthen Traveler's Chopper
						i(219462),	-- Earthen Traveler's Claymore
						i(219465),	-- Earthen Traveler's Crossbow
						i(219458),	-- Earthen Traveler's Dagger
						i(219467),	-- Earthen Traveler's Fist
						i(219461),	-- Earthen Traveler's Gavel
						i(219460),	-- Earthen Traveler's Handaxe
						i(219463),	-- Earthen Traveler's Javelin
						i(219457),	-- Earthen Traveler's Saber
						i(219459),	-- Earthen Traveler's Staff
					},
				}),
				q(80082, {	-- Back to Gundargaz
					["sourceQuests"] = { 78642 },	-- New Candle, New Hope
					["provider"] = { "n", 212992 },	-- Speaker Brinthe
					["coord"] = { 61.5, 32.0, THE_RINGING_DEEPS },
				}),
				------ Chapter 2 ------
				q(80079, {	-- A Wrench in the Works
					["sourceQuests"] = { 80082 },	-- Back to Gundargaz
					["provider"] = { "n", 218714 },	-- Moira Thaurissan
					["coord"] = { 47.1, 33.2, THE_RINGING_DEEPS },
				}),
				q(78685, {	-- The Tunnel's End
					["sourceQuests"] = { 80079 },	-- A Wrench in the Works
					["provider"] = { "n", 218715 },	-- Speaker Brinthe
					["coord"] = { 47.1, 33.2, THE_RINGING_DEEPS },
				}),
				q(78696, {	-- We Don't Go to Taelloch
					["sourceQuests"] = { 78685 },	-- The Tunnel's End
					["provider"] = { "n", 213612 },	-- Magni Bronzebeard
					["coord"] = { 60.4, 59.9, THE_RINGING_DEEPS },
					["g"] = {
						i(219359),	-- Earthen Traveler's Vestment
						i(219364),	-- Earthen Traveler's Breeches
						i(219369),	-- Earthen Traveler's Coif
						i(219373),	-- Earthen Traveler's Breastplate
					},
				}),
				------ Stay awhile and listen ------
				hqt(84620, {	-- Stay awhile and listen: Magni Bronzebeard
					["name"] = "Stay awhile and listen: Magni Bronzebeard",
					["sourceQuests"] = { 78696 },	-- We Don't Go to Taelloch
					["provider"] = { "n", 213633 },	-- Magni Bronzebeard
					["coord"] = { 62.3, 58.0, THE_RINGING_DEEPS },
				}),
				--
				q(78697, {	-- Ghost of a Company Town
					["sourceQuests"] = { 78696 },	-- We Don't Go to Taelloch
					["provider"] = { "n", 213634 },	-- Dagran Thaurissan II
					["coord"] = { 62.3, 58.1, THE_RINGING_DEEPS },
				}),
				q(78700, {	-- Controlled Demolition
					["sourceQuests"] = { 78697 },	-- Ghost of a Company Town
					["providers"] = {
						{ "n", 216479 },	-- Magni Bronzebeard (static ID)
						{ "n", 214890 },	-- Magni Bronzebeard (when near player)
					},
					["coord"] = { 66.2, 58.4, THE_RINGING_DEEPS },
					["g"] = {
						i(219380),	-- Earthen Traveler's Shawl
						i(219383),	-- Earthen Traveler's Cloak
					},
				}),
				q(78701, {	-- The Truth in Chalk
					["sourceQuests"] = { 78697 },	-- Ghost of a Company Town
					["providers"] = {
						{ "n", 216480 },	-- Dagran Thaurissan II (static ID)
						{ "n", 214892 },	-- Dagran Thaurissan II (when near player)
					},
					["coord"] = { 66.1, 58.3, THE_RINGING_DEEPS },
				}),
				q(78703, {	-- Buried in Stone
					["sourceQuests"] = {
						78700,	-- Controlled Demolition
						78701,	-- The Truth in Chalk
					},
					["provider"] = { "n", 214892 },	-- Dagran Thaurissan II
				}),
				q(78704, {	-- Find the Foreman
					["sourceQuests"] = { 78703 },	-- Buried in Stone
					["provider"] = { "n", 214890 },	-- Magni Bronzebeard
					["g"] = {
						i(219362),	-- Earthen Traveler's Cuffs
						i(219366),	-- Earthen Traveler's Bindings
						i(219371),	-- Earthen Traveler's Bracers
						i(219376),	-- Earthen Traveler's Armplates
					},
				}),
				q(78705, {	-- What She Saw
					["sourceQuests"] = { 78704 },	-- Find the Foreman
					["provider"] = { "n", 214892 },	-- Dagran Thaurissan II
				}),
				q(78706, {	-- The High Speaker's Secret
					["sourceQuests"] = { 78705 },	-- What She Saw
					["provider"] = { "n", 219452 },	-- Magni Bronzebeard
					["coord"] = { 68.5, 64.3, THE_RINGING_DEEPS },
				}),
				------ Chapter 3 ------
				q(78738, {	-- Absent Speaker
					["sourceQuests"] = { 78706 },	-- The High Speaker's Secret
					["provider"] = { "n", 212741 },	-- Speaker Brinthe
					["coord"] = { 47.2, 34.2, THE_RINGING_DEEPS },
				}),
				------ Stay awhile and listen ------
				hqt(84699, {	-- Stay awhile and listen: Moira Thaurissan
					["name"] = "Stay awhile and listen: Moira Thaurissan",
					["sourceQuests"] = { 78738 },	-- Absent Speaker
					["provider"] = { "n", 213763 },	-- Moira Thaurissan
					["coord"] = { 47.0, 20.7, THE_RINGING_DEEPS },
				}),
				--
				q(78742, {	-- Battle of the Earthenworks
					["sourceQuests"] = { 78738 },	-- Absent Speaker
					["provider"] = { "n", 213763 },	-- Moira Thaurissan
					["coord"] = { 47.1, 20.7, THE_RINGING_DEEPS },
					["g"] = {
						i(219360),	-- Earthen Traveler's Leggings
						i(219377),	-- Earthen Traveler's Vest
						i(219370),	-- Earthen Traveler's Greaves
						i(219372),	-- Earthen Traveler's Helm
					},
				}),
				q(78741, {	-- Sympathetic Speaker
					["sourceQuests"] = { 78738 },	-- Absent Speaker
					["provider"] = { "n", 213569 },	-- Speaker Brinthe
					["coord"] = { 47.1, 20.7, THE_RINGING_DEEPS },
				}),
				q(81798, {	-- Return to Moira
					["sourceQuests"] = {
						78741,	-- Sympathetic Speaker
						78742,	-- Battle of the Earthenworks
					},
					["provider"] = { "n", 213672 },	-- Foreman Uzjax
					["coord"] = { 49.0, 17.5, THE_RINGING_DEEPS },
					["isBreadcrumb"] = true,
				}),
				q(78760, {	-- Dark Iron from Above
					["sourceQuests"] = {
						78741,	-- Sympathetic Speaker
						78742,	-- Battle of the Earthenworks
						81798,	-- Return to Moira
					},
					["provider"] = { "n", 213763 },	-- Moira Thaurissan
					["coord"] = { 47.1, 20.7, THE_RINGING_DEEPS },
				}),
				q(78761, {	-- Into the Machine
					["sourceQuests"] = { 78760 },	-- Dark Iron from Above
					["provider"] = { "n", 213796 },	-- Moira Thaurissan
					["coord"] = { 46.7, 10.3, THE_RINGING_DEEPS },
					["maps"] = { 2368 },	-- Hall of Awakening
					["g"] = {
						i(219018),	-- Esteemed Earthen Emblem
					},
				}),
				q(79354, {	-- The Machine Speakers
					["sourceQuests"] = { 78761 },	-- Into the Machine
					["provider"] = { "n", 212742 },	-- Moira Thaurissan
					["coord"] = { 47.2, 34.1, THE_RINGING_DEEPS },
				}),
				q(81689, {	-- Orientation: Gundargaz
					--also look like not story quest, tbf... Very Weird...
					["sourceQuests"] = { 79354 },	-- The Machine Speakers
					["provider"] = { "n", 212742 },	-- Moira Thaurissan
					["coord"] = { 47.2, 34.1, THE_RINGING_DEEPS },
				}),
			}),
			header(HEADERS.AchCriteria, 40799.01, {	-- The Caretaker of Brunwin's Terrace
				q(80392, {	-- The Caretaker of Brunwin's Terrace
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 219784 },	-- Batzvara
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 51.3, 30.2, THE_RINGING_DEEPS },
				}),
				q(80408, {	-- Shimmermist Falls
					["sourceQuests"] = { 80392 },	-- The Caretaker of Brunwin's Terrace
					["provider"] = { "n", 224362 },	-- Batzvara
					["coord"] = { 50.8, 40.6, THE_RINGING_DEEPS },
				}),
				q(80401, {	-- A Perfect Sponge
					["sourceQuests"] = { 80408 },	-- Shimmermist Falls
					["provider"] = { "n", 219899 },	-- Batzvara
					["coord"] = { 46.3, 36.8, THE_RINGING_DEEPS },
					["g"] = {
						i(218131),	-- Perfect Lashroom Cap (QI!)
					},
				}),
				q(80402, {	-- Buckets and Bloom
					["sourceQuests"] = { 80408 },	-- Shimmermist Falls
					["provider"] = { "n", 219899 },	-- Batzvara
					["coord"] = { 46.3, 36.8, THE_RINGING_DEEPS },
					["g"] = {
						i(218187),	-- Caustic Bloom (QI!)
						i(218355),	-- Missing Bucket (QI!)
					},
				}),
				q(80404, {	-- Mossy Earthen
					["sourceQuests"] = {
						80401,	-- A Perfect Sponge
						80402,	-- Buckets and Bloom
					},
					["provider"] = { "n", 219899 },	-- Batzvara
					["coord"] = { 46.3, 36.8, THE_RINGING_DEEPS },
					["g"] = {
						i(218353),	-- Caustic Solvent (QI!)
					},
				}),
				q(80689, {	-- Tending to Ausgazur
					["sourceQuests"] = { 80404 },	-- Mossy Earthen
					["provider"] = { "n", 219899 },	-- Batzvara
					["coord"] = { 46.3, 36.8, THE_RINGING_DEEPS },
				}),
				q(80405, {	-- Too Much Drip
					["sourceQuests"] = { 80689 },	-- Tending to Ausgazur
					["provider"] = { "n", 220784 },	-- Batzvara
					["coord"] = { 44.1, 40.2, THE_RINGING_DEEPS },
					["g"] = {
						i(219216),	-- Stolen Gem (QI!)
					},
				}),
				q(80406, {	-- Seeking Ausgazur's Gems
					["sourceQuests"] = { 80405 },	-- Too Much Drip
					["provider"] = { "n", 220784 },	-- Batzvara
					["coord"] = { 44.1, 40.2, THE_RINGING_DEEPS },
					["g"] = {
						i(219015),	-- Gem of Ausgazur (QI!)
					},
				}),
				q(80407, {	-- Glintwick the Gem Grabber
					["sourceQuests"] = {
						80406,	-- Seeking Ausgazur's Gems
						80405,	-- Too Much Drip
					},
					["provider"] = { "n", 220784 },	-- Batzvara
					["coord"] = { 44.1, 40.2, THE_RINGING_DEEPS },
					["g"] = {
						i(219213),	-- Unfaceted Purple Gemstone (QI!)
						i(228658),	-- Batzvara's Gratitude
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.02, {	-- Broken Tools
				q(78562, {	-- Discarded and Broken
					["sourceQuests"] = {
						78838,	-- Cogs in the Machine
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 212695 },	-- Machinist Kittrin
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 48.2, 33.4, THE_RINGING_DEEPS },
					["g"] = {
						o(411622, {	-- Machinist Plinth
							i(210732),	-- Machinist's Calipers (QI!)
						}),
						o(411623, {	-- Machinist Plinth
							i(210733),	-- Machinist's Gauge (QI!)
						}),
						o(411624, {	-- Machinist Plinth
							i(210734),	-- Machinist's Wrench (QI!)
						}),
					},
				}),
				q(78563, {	-- The Weight of a World
					["sourceQuests"] = { 78562 },	-- Discarded and Broken
					["provider"] = { "n", 212695 },	-- Machinist Kittrin
					["coord"] = { 48.2, 33.4, THE_RINGING_DEEPS },
					["g"] = {
						i(210740),	-- Machinist's Calibrated Weight (QI!)
					},
				}),
				q(78564, {	-- Reforged Purpose
					["sourceQuests"] = { 78563 },	-- The Weight of a World
					["provider"] = { "n", 212695 },	-- Machinist Kittrin
					["coord"] = { 48.2, 33.4, THE_RINGING_DEEPS },
					["g"] = {
						i(210740),	-- Machinist's Calibrated Weight (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.03, {	-- Routine Maintenance
				q(82773, {	-- A Functional Favor
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 224602 },	-- Speaker Danagh
					["coord"] = { 59.0, 64.2, THE_RINGING_DEEPS },
					["sourceQuestNumRequired"] = 1,
					["g"] = {
						i(224271),	-- Galvanic Gland (QI!)
					},
				}),
				q(82774, {	-- Antifogmatic
					["sourceQuests"] = { 82773 },	-- A Functional Favor
					["provider"] = { "n", 224602 },	-- Speaker Danagh
					["coord"] = { 59.0, 64.2, THE_RINGING_DEEPS },
					["g"] = {
						i(224438),	-- Antifogmatic (QI!)
					},
				}),
				q(82785, {	-- Ghosts in the Machine
					["sourceQuests"] = { 82774 },	-- Antifogmatic
					["provider"] = { "n", 224602 },	-- Speaker Danagh
					["coord"] = { 59.0, 64.2, THE_RINGING_DEEPS },
				}),
				q(82990, {	-- Undoing the Damage
					["sourceQuests"] = { 82785 },	-- Ghosts in the Machine
					["provider"] = { "n", 224602 },	-- Speaker Danagh
					["coord"] = { 58.3, 62.0, THE_RINGING_DEEPS },
				}),
				q(82786, {	-- Duty of Care
					["sourceQuests"] = { 82990 },	-- Undoing the Damage
					["provider"] = { "n", 224602 },	-- Speaker Danagh
					["coord"] = { 59.0, 64.1, THE_RINGING_DEEPS },
				}),
				q(82969, {	-- Stone Tracing
					["sourceQuests"] = { 82990 },	-- Undoing the Damage
					["provider"] = { "n", 216311 },	-- Clive DefGando
					["coord"] = { 58.9, 64.1, THE_RINGING_DEEPS },
					["g"] = {
						i(224451),	-- Triangulation Matrix (QI!)
					},
				}),
				q(82814, {	-- Decommissioning Darkness
					["sourceQuests"] = {
						82786,	-- Duty of Care
						82969,	-- Stone Tracing
					},
					["provider"] = { "n", 224618 },	-- Danagh's Cogwalker
					["g"] = {
						i(224555),	-- Arbauch's Memory Gem (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.04, {	-- Dread in the Den
				q(80508, {	-- Dread in the Den
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 222234 },	-- Scrit
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 62.6, 45.6, THE_RINGING_DEEPS },
				}),
				q(80509, {	-- A Suit of Slime
					["sourceQuests"] = { 80508 },	-- Dread in the Den
					["provider"] = { "n", 222234 },	-- Scrit
					["coord"] = { 69.6, 41.1, THE_RINGING_DEEPS },
					["g"] = {
						i(220218),	-- Sticky Wax (QI!)
					},
				}),
				q(80510, {	-- Healing the Headwaters
					["sourceQuests"] = { 80508 },	-- Dread in the Den
					["provider"] = { "n", 222234 },	-- Scrit
					["coord"] = { 69.6, 41.1, THE_RINGING_DEEPS },
				}),
				q(80511, {	-- Casing the Camp
					["sourceQuests"] = {
						80509,	-- A Suit of Slime
						80510,	-- Healing the Headwaters
					},
					["provider"] = { "n", 222234 },	-- Scrit
					["coord"] = { 69.6, 41.1, THE_RINGING_DEEPS },
				}),
				q(80512, {	-- Beat the Best
					["sourceQuests"] = { 80511 },	-- Casing the Camp
					["provider"] = { "n", 222239 },	-- Scrit
				}),
				q(80513, {	-- Snouty Sabotage
					["sourceQuests"] = { 80511 },	-- Casing the Camp
					["provider"] = { "n", 222239 },	-- Scrit
				}),
				q(80514, {	-- Break out Berrund!
					["sourceQuests"] = {
						80512,	-- Beat the Best
						80513,	-- Snouty Sabotage
					},
					["provider"] = { "n", 222239 },	-- Scrit
				}),
				q(80515, {	-- Put the Shine On
					["sourceQuests"] = { 80514 },	-- Break out Berrund!
					["provider"] = { "n", 222234 },	-- Scrit
					["coord"] = { 69.6, 41.1, THE_RINGING_DEEPS },
					["g"] = {
						i(220485),	-- Candlefly Luminescence (QI!)
					},
				}),
				q(80516, {	-- Bump off the Boss
					["sourceQuests"] = { 80515 },	-- Put the Shine On
					["provider"] = { "n", 220220 },	-- Berrund the Gleaming
					["coord"] = { 69.6, 40.9, THE_RINGING_DEEPS },
					["g"] = {
						i(228657),	-- Scrit's Handmade Girdle
						i(228655),	-- Scrit's Handmade Gloves
						i(228654),	-- Scrit's Handmade Shoes
						i(228656),	-- Scrit's Handmade Shoulders
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.05, {	-- Envenomed Invasion
				q(79367, {	-- A Nebb in Need
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 215737 },	-- Nebb
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 65.9, 42.6, THE_RINGING_DEEPS },
					["g"] = {
						i(217116),	-- Bundle of Candles (QI!)
					},
				}),
				q(79368, {	-- Hair of the Spider
					["sourceQuests"] = { 79367 },	-- A Nebb in Need
					["provider"] = { "n", 215737 },	-- Nebb
					["coord"] = { 65.9, 42.6, THE_RINGING_DEEPS },
					["g"] = {
						i(213178),	-- Undercrawler Venom (QI!)
					},
				}),
				q(79369, {	-- Protecting the Harvest
					["sourceQuests"] = { 79367 },	-- A Nebb in Need
					["provider"] = { "n", 217152 },	-- Snubjaw
					["coord"] = { 65.9, 42.7, THE_RINGING_DEEPS },
					["g"] = {
						i(213209),	-- Grub Egg (QI!)
					},
				}),
				q(79481, {	-- Tending to the Terrified
					["sourceQuests"] = { 79367 },	-- A Nebb in Need
					["provider"] = { "n", 217152 },	-- Snubjaw
					["coord"] = { 65.9, 42.7, THE_RINGING_DEEPS },
				}),
				q(79370, {	-- A Poultice for Poison
					["sourceQuests"] = {
						79368,	-- Hair of the Spider
						79369,	-- Protecting the Harvest
						79481,	-- Tending to the Terrified
					},
					["provider"] = { "n", 215737 },	-- Nebb
					["coord"] = { 65.9, 42.6, THE_RINGING_DEEPS },
					["g"] = {
						i(213539),	-- Nebb's Poultice (QI!)
					},
				}),
				q(79371, {	-- A Royal Cure
					["sourceQuests"] = { 79370 },	-- A Poultice for Poison
					["provider"] = { "n", 215737 },	-- Nebb
					["coord"] = { 65.9, 42.6, THE_RINGING_DEEPS },
					["g"] = {
						i(213218),	-- Queen Rickiticka's Venom (QI!)
						i(217159),	-- Nebb's Improved Poultice (QI!)
					},
				}),
				q(79372, {	-- A Cluth of Hope
					["sourceQuests"] = { 79371 },	-- A Royal Cure
					["provider"] = { "o", 423581 },	-- Broodmother's Egg
					["coord"] = { 68.1, 39.0, THE_RINGING_DEEPS },
					["g"] = {
						i(215164),	-- Broodmother's Egg (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.06, {	-- Fearbreaker
				q(79256, {	-- A Hint of Fear
					["sourceQuests"] = { 78761 },	-- Into the Machine
					["provider"] = { "n", 212742 },	-- Moira Thaurissan
					["coord"] = { 47.2, 34.1, THE_RINGING_DEEPS },
				}),
				q(79258, {	-- Mineral Water Woes
					["sourceQuests"] = { 79256 },	-- A Hint of Fear
					["provider"] = { "n", 215788 },	-- Berrund the Gleaming
					["coord"] = { 55.0, 63.3, THE_RINGING_DEEPS },
				}),
				q(79259, {	-- Put On a Good Face
					["sourceQuests"] = { 79256 },	-- A Hint of Fear
					["provider"] = { "n", 215781 },	-- Moira Thaurissan
					["coord"] = { 55.0, 63.3, THE_RINGING_DEEPS },
					["g"] = {
						i(212490),	-- Lashroom Dust (QI!)
					},
				}),
				q(79260, {	-- Epicenter
					["sourceQuests"] = {
						79258,	-- Mineral Water Woes
						79259,	-- Put On a Good Face
					},
					["provider"] = { "n", 215822 },	-- Berrund the Gleaming
					["coord"] = { 54.0, 66.6, THE_RINGING_DEEPS },
				}),
				q(79261, {	-- Boiling Mad
					["sourceQuests"] = { 79260 },	-- Epicenter
					["provider"] = { "n", 215821 },	-- Moira Thaurissan
					["coord"] = { 54.4, 65.4, THE_RINGING_DEEPS },
				}),
				q(79263, {	-- Fault Lines
					["sourceQuests"] = { 79261 },	-- Boiling Mad
					["provider"] = { "n", 215824 },	-- Moira Thaurissan
					["coord"] = { 56.1, 50.0, THE_RINGING_DEEPS },
				}),
				q(79262, {	-- Clean Up House
					["sourceQuests"] = { 79261 },	-- Boiling Mad // but require 79263 in quest log
					["provider"] = { "n", 215824 },	-- Moira Thaurissan
					["coord"] = { 56.1, 50.0, THE_RINGING_DEEPS },
				}),
				q(79264, {	-- These Strong Hands
					["sourceQuests"] = {
						79262,	-- Clean Up House	// probably not required
						79263,	-- Fault Lines
					},
					["provider"] = { "n", 215836 },	-- Berrund the Gleaming
					["coord"] = { 57.2, 45.5, THE_RINGING_DEEPS },
				}),
				q(79265, {	-- Fearbreaker
					["sourceQuests"] = { 79264 },	-- These Strong Hands
					["provider"] = { "n", 217598 },	-- Moira Thaurissan
					["coord"] = { 57.2, 45.6, THE_RINGING_DEEPS },
				}),
				q(79266, {	-- The Bronzebeard Legacy
					["sourceQuests"] = { 79265 },	-- Fearbreaker
					["provider"] = { "n", 216085 },	-- Moira Thaurissan
					["coord"] = { 61.8, 46.6, THE_RINGING_DEEPS },
					["g"] = {
						i(224449),	-- Fearbreaker's Echo
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.07, {	-- Into the Fog
				q(81556, {	-- Foreign Fog
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 221043 },	-- Noli Marlen
					["coord"] = { 58.4, 62.3, THE_RINGING_DEEPS },
					["sourceQuestNumRequired"] = 1,
				}),
				q(81557, {	-- Fog Tags
					["sourceQuests"] = { 81556 },	-- Foreign Fog
					["provider"] = { "n", 221043 },	-- Noli Marlen
					["coord"] = { 58.4, 62.3, THE_RINGING_DEEPS },
					["g"] = {
						i(219469),	-- Fog Beast Tracker (QI!)
					},
				}),
				q(81558, {	-- Unnatural Predators
					["sourceQuests"] = { 81556 },	-- Foreign Fog
					["provider"] = { "n", 221043 },	-- Noli Marlen
					["coord"] = { 58.4, 62.3, THE_RINGING_DEEPS },
				}),
				q(81559, {	-- Fog Follower
					["sourceQuests"] = {
						81557,	-- Fog Tags
						81558,	-- Unnatural Predators
					},
					["provider"] = { "n", 221043 },	-- Noli Marlen
					["coord"] = { 58.4, 62.3, THE_RINGING_DEEPS },
				}),
			}),
			header(HEADERS.AchCriteria, 40799.08, {	-- Magma-nificence
				-- TODO: CHECK THIS QUESTLINE AGAIN...
				q(83092, {	-- An Igneous End
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 225582 },	-- Foreman Duinth
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 41.1, 21.4, THE_RINGING_DEEPS },
				}),
				q(83160, {	-- Cinderbrew Reserve
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 225616 },	-- Cogwin
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 41.4, 22.5, THE_RINGING_DEEPS },
				}),
				q(83152, {	-- Magmamagement
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 225582 },	-- Foreman Duinth
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 41.1, 21.4, THE_RINGING_DEEPS },
				}),
				q(83153, {	-- Sampling Steam
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 225583 },	-- Machinist Kilton
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 41.1, 21.4, THE_RINGING_DEEPS },
					["g"] = {
						i(219464),	-- Earthen Traveler's Boomstick
						i(219466),	-- Earthen Traveler's Chopper
						i(219462),	-- Earthen Traveler's Claymore
						i(219465),	-- Earthen Traveler's Crossbow
						i(219458),	-- Earthen Traveler's Dagger
						i(219467),	-- Earthen Traveler's Fist
						i(219461),	-- Earthen Traveler's Gavel
						i(219460),	-- Earthen Traveler's Handaxe
						i(219463),	-- Earthen Traveler's Javelin
						i(219457),	-- Earthen Traveler's Saber
						i(219456),	-- Earthen Traveler's Scepter
						i(219455),	-- Earthen Traveler's Shield
						i(219459),	-- Earthen Traveler's Staff
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.09, {	-- Kobold Candles
				q(82946, {	-- Rollin' Down In the Deeps
					["isDaily"] = true,
					["sourceQuests"] = {
						80082,	-- Back to Gundargaz
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 216164 },	-- Gnawbles
					["coord"] = { 47.7, 35.3, THE_RINGING_DEEPS },
					["sourceQuestNumRequired"] = 1,
					["g"] = {
						i(227792),	-- Everyday Cache
					},
				}),
				q(79343, {	-- Everyday I'm Snufflin'
					["isDaily"] = true,
					["sourceQuests"] = {
						80082,	-- Back to Gundargaz
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "i", 228228 },	-- Strange Lump of Wax
					["coord"] = { 47.7, 35.3, THE_RINGING_DEEPS },
					["sourceQuestNumRequired"] = 1,
					["description"] = "Strange Lump of Wax is a somewhat rare drop from the continent of Khaz Algar",
				}),
				q(79683, {	-- Home is Where the Candle Is
					["sourceQuests"] = {
						80082,	-- Back to Gundargaz
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["providers"] = {
						{ "n", 222803 },	-- Skitter
						{ "n", 213152 },	-- Skitter
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 47.1, 33.3, THE_RINGING_DEEPS },
					["g"] = {
						i(223625),	-- Cinderwold Sizzlestinger (PET!)
					},
				}),
				q(81999, {	-- New Home, New Candle!
					--["sourceQuests"] = { 80082 },	-- Back to Gundargaz
					["provider"] = { "n", 216567 },	-- Janky
					["coord"] = { 47.8, 35.4, THE_RINGING_DEEPS },
				}),
				q(79552, {	-- Hot Wax
					["sourceQuests"] = { 81999 },	-- New Home, New Candle!
					["provider"] = { "n", 219674 },	-- Janky
					["coord"] = { 72.1, 42.1, ISLE_OF_DORN },
					["g"] = {
						o(430215, {	-- Molten Wax
							i(216670),	-- Fire Bee Wax (QI!)
						}),
					},
				}),
				q(79998, {	-- Mite Not Right
					["sourceQuests"] = { 81999 },	-- New Home, New Candle!
					["provider"] = { "n", 219674 },	-- Janky
					["coord"] = { 72.1, 42.1, ISLE_OF_DORN },
				}),
				q(80000, {	-- Beebiter
					["sourceQuests"] = {
						79552,	-- How Wax
						79998,	-- Mite Not Right
					},
					["provider"] = { "n", 219674 },	-- Janky
					["coord"] = { 72.1, 42.1, ISLE_OF_DORN },
				}),
				q(80202, {	-- Hot Pollenate-o
					["sourceQuests"] = {
						79552,	-- How Wax
						79998,	-- Mite Not Right
					},
					["provider"] = { "n", 219674 },	-- Janky
					["coord"] = { 72.1, 42.1, ISLE_OF_DORN },
				}),
				q(79565, {	-- Janky Candles
					["sourceQuests"] = {
						80000,	-- Beebiter
						80202,	-- Hot Pollenate-o
					},
					["provider"] = { "n", 219674 },	-- Janky
					["coord"] = { 72.1, 42.1, ISLE_OF_DORN },
					["g"] = {
						i(224262),	-- Begrudgingly Poured Cinderbrew (QI!)
						o(430551, {	-- Coal Shipment
							i(224253),	-- Elementally Active Coal (QI!)
						}),
						i(217395),	-- Freshly Smithed Tools (QI!)
						i(216681),	-- Merchant Stall Parts (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.10, {	-- Kobold Work Crew
				q(80058, {	-- Kobold Kleanup
					--["sourceQuests"] = { 80082 },	-- Back to Gundargaz
					["provider"] = { "n", 216568 },	-- Fourman Grimes
					["coord"] = { 47.8, 35.4, THE_RINGING_DEEPS },
				}),
				q(79556, {	-- On the Job Training
					["sourceQuests"] = { 80058 },	-- Kobold Kleanup
					["provider"] = { "n", 217131 },	-- Fourman Grimes
					["coord"] = { 47.3, 31.9, THE_RINGING_DEEPS },
				}),
				q(79680, {	-- Pipe Patching
					["sourceQuests"] = { 79556 },	-- On the Job Training
					["provider"] = { "n", 217131 },	-- Fourman Grimes
					["coord"] = { 47.3, 31.9, THE_RINGING_DEEPS },
				}),
				q(79681, {	-- Plumber Power
					["sourceQuests"] = { 79556 },	-- On the Job Training
					["provider"] = { "n", 217131 },	-- Fourman Grimes
					["coord"] = { 47.3, 31.9, THE_RINGING_DEEPS },
				}),
				q(79682, {	-- Critical Pressure!
					["sourceQuests"] = {
						79680,	-- Pipe Patching
						79681,	-- Plumber Power
					},
					["provider"] = { "n", 217131 },	-- Fourman Grimes
					["coord"] = { 47.3, 31.9, THE_RINGING_DEEPS },
					["g"] = {
						--currency(2902),	-- The Assembly of the Deeps Commendation, one-time Warband bonus
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.11, {	-- Kobold Story Time
				q(79504, {	-- Dripsy Forgot Her Candle
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 216438 },	-- Granny Scribbles
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 48.0, 35.7, THE_RINGING_DEEPS },
					-- Instance ID 2601
					--["maps"] = { x },	-- could be scenario mapID but it is not here?
					["g"] = {
						o(421525, {	-- Shinies
							i(217997),	-- Shiny Rock (QI!)
						}),
						i(217998),	-- Sweetmeat (QI!)
					},
				}),
				q(79505, {	-- Chomps and the Cave-In
					["sourceQuests"] = { 79504 },	-- Dripsy Forgot Her Candle
					["provider"] = { "n", 216438 },	-- Granny Scribbles
					["coord"] = { 48.0, 35.7, THE_RINGING_DEEPS },
					-- Instance ID 2601
					--["maps"] = { x },	-- could be scenario mapID
				}),
				q(79507, {	-- The Day the Stoneheads Came
					["sourceQuests"] = { 79505 },	-- Chomps and the Cave-In
					["provider"] = { "n", 216438 },	-- Granny Scribbles
					["coord"] = { 48.0, 35.7, THE_RINGING_DEEPS },
					-- Instance ID 2601
					--["maps"] = { x },	-- could be scenario mapID
					["g"] = {
						o(421597, {	-- Village Center
							i(224403),	-- Heirloom Wax (QI!)
						}),
						o(421599, {	-- Local Industry
							i(224402),	-- Krafting Tools (QI!)
						}),
						o(421594, {	-- Gainful Employment
							i(224401),	-- Run Far Food (QI!)
						}),
						o(421592, {	-- Life Savings
							i(224400),	-- See Where Running Candles (QI!)
						}),
						o(436933, {	-- Softsnout's Favourite Shovel
							i(218249),	-- Softsnout's Favorite Shovel (QI!)
						}),
					},
				}),
				q(79508, {	-- Mipsy Mole-Rider
					["sourceQuests"] = { 79507 },	-- The Day the Stoneheads Came
					["provider"] = { "n", 216438 },	-- Granny Scribbles
					["coord"] = { 48.0, 35.7, THE_RINGING_DEEPS },
					-- Instance ID 2601
					--["maps"] = { x },	-- could be scenario mapID
				}),
				q(79510, {	-- The Wickless Candle
					["sourceQuests"] = { 79508 },	-- Mipsy Mole-Rider
					["provider"] = { "n", 216438 },	-- Granny Scribbles
					["coord"] = { 48.0, 35.7, THE_RINGING_DEEPS },
					-- Instance ID 2601
					--["maps"] = { x },	-- could be scenario mapID
					["g"] = {
						o(421735, {	-- Prooftelling Flower
							i(219224),	-- Prooftelling Flower (QI!)
						}),
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.12, {	-- Rampage at Nibelgaz Mine
				q(79148, {	-- The Nibelgaz Refinery
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 215208 },	-- Orsenth
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 51.0, 14.9, THE_RINGING_DEEPS },
					["g"] = {
						i(218356),	-- Healing Clay (QI!)
					},
				}),
				q(79149, {	-- Rampage in the Refinery
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 215234 },	-- Ferdagor
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 51.4, 14.3, THE_RINGING_DEEPS },
				}),
				q(79679, {	-- Muddled Mind in the Mine
					["sourceQuests"] = {
						79149,	-- Rampage in the Refinery
						79148,	-- The Nibelgaz Refinery
					},
					["provider"] = { "n", 215208 },	-- Orsenth
					["coord"] = { 51.0, 14.9, THE_RINGING_DEEPS },
				}),
				q(79193, {	-- Spinning Spore Spines
					["sourceQuests"] = { 79679 },	-- Muddled Mind in the Mine
					["provider"] = { "n", 215209 },	-- Munderut
					["coord"] = { 52.8, 8.8, THE_RINGING_DEEPS },
					["g"] = {
						i(212529),	-- Spore Spines (QI!)
					},
				}),
				q(79194, {	-- To the Source
					["sourceQuests"] = { 79193 },	-- Spinning Spore Spines
					["provider"] = { "n", 217474 },	-- Keldaz
					["coord"] = { 51.1, 14.8, THE_RINGING_DEEPS },
				}),
				q(79944, {	-- Raging Rifts
					["sourceQuests"] = { 79194 },	-- To the Source
					["provider"] = { "n", 223000 },	-- Keldaz
					["coord"] = { 55.3, 11.1, THE_RINGING_DEEPS },
					["g"] = {
						i(226672),	-- Band of Elemental Chaos
					},
				}),
				q(79327, {	-- The Glittering Shard
					["sourceQuests"] = { 79944 },	-- Raging Rifts
					["provider"] = { "i", 212595 },	-- Glittering Shard
					["coord"] = { 57, 16, THE_RINGING_DEEPS },
				}),
			}),
			header(HEADERS.AchCriteria, 40799.13, {	-- Abysmal Extraction
				q(83155, {	-- Tired of Tripping
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 225608 },	-- Prospera Cogwall
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 63.7, 79.2, THE_RINGING_DEEPS },
				}),
				q(83159, {	-- A Little Off the Top
					["sourceQuests"] = { 83155 },	-- Tired of Tripping
					["provider"] = { "n", 225608 },	-- Prospera Cogwall
					["coord"] = { 63.7, 79.2, THE_RINGING_DEEPS },
					["g"] = {
						i(224779),	-- Alhainr's Skull (QI!)
					},
				}),
				q(83162, {	-- Put it Back, Put it Back!
					["sourceQuests"] = { 83159 },	-- A Little Off the Top
					["provider"] = { "n", 226336 },	-- Prospera Cogwall
					["coord"] = { 63.7, 79.2, THE_RINGING_DEEPS },
				}),
			}),
			header(HEADERS.AchCriteria, 40799.14, {	-- Revenge in the Rumbling Wastes
				q(81655, {	-- Juicy Krolusk Meat
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 220417 },	-- Kagfritha
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 62.2, 46.9, THE_RINGING_DEEPS },
					["g"] = {
						i(219493),	-- Juicy Krolusk Meat (QI!)
					},
				}),
				q(81669, {	-- Sticks and Bones
					["sourceQuests"] = { 81655 },	-- Juicy Krolusk Meat
					["provider"] = { "n", 220417 },	-- Kagfritha
					["coord"] = { 62.2, 46.9, THE_RINGING_DEEPS },
				}),
				q(81672, {	-- In a Pinch
					["sourceQuests"] = {
						81655,	-- Juicy Krolusk Meat
						81669,	-- Sticks and Bones
					},
					["provider"] = { "n", 220417 },	-- Kagfritha
					["coord"] = { 62.2, 46.9, THE_RINGING_DEEPS },
					["g"] = {
						i(219510),	-- Scorpion Bait (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.15, {	-- Tired of Rest
				q(80576, {	-- Listener Lost
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 220600 },	-- Haimaz
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 60.4, 45.7, THE_RINGING_DEEPS },
				}),
				q(80676, {	-- Defragmenting Memory
					["sourceQuests"] = { 80576 },	-- Listener Lost
					["provider"] = { "n", 220597 },	-- Brennok
					["coord"] = { 63.4, 43.4, THE_RINGING_DEEPS },
					["g"] = {
						i(220999),	-- Missing Page (QI!)
					},
				}),
				q(81613, {	-- Let's Not Worry Her
					["sourceQuests"] = { 80676 },	-- Defragmenting Memory
					["provider"] = { "n", 220597 },	-- Brennok
					["coord"] = { 63.4, 43.4, THE_RINGING_DEEPS },
				}),
				q(80577, {	-- Readying the Recitation
					["sourceQuests"] = { 81613 },	-- Let's Not Worry Her
					["provider"] = { "n", 220600 },	-- Haimaz
					["coord"] = { 62.0, 45.5, THE_RINGING_DEEPS },
					["g"] = {
						i(224008),	-- Mislaid Tool (QI!)
					},
				}),
				q(82224, {	-- Check on the Compiler
					["sourceQuests"] = { 80577 },	-- Readying the Recitation
					["provider"] = { "n", 220600 },	-- Haimaz
					["coord"] = { 62.8, 44.2, THE_RINGING_DEEPS },
					["isBreadcrumb"] = true,
				}),
				q(80578, {	-- The Common Costume
					["sourceQuests"] = {
						82224,	-- Check on the Compiler
						81613,	-- Let's Not Worry Her
					},
					["provider"] = { "n", 220597 },	-- Brennok
					["coord"] = { 61.9, 45.5, THE_RINGING_DEEPS },
					["sourceQuestNumRequired"] = 1,
					["g"] = {
						i(221472),	-- Miner's Clothes (QI!)
					},
				}),
				q(80593, {	-- A Sip of Cinder
					["sourceQuests"] = {
						80577,	-- Readying the Recitation
						--80578,	-- The Common Costume // unsure about this one
					},
					["provider"] = { "n", 220600 },	-- Haimaz
					["coord"] = { 62.0, 45.5, THE_RINGING_DEEPS },
					["g"] = {
						i(221001),	-- Cinderbrew Flask (QI!)
						i(221000),	-- Nearly-empty Cask (QI!)
					},
				}),
				q(80682, {	-- One Last Story
					["sourceQuests"] = { 80593 },	-- A Sip of Cinder
					["provider"] = { "n", 220597 },	-- Brennok
					["coord"] = { 61.9, 45.5, THE_RINGING_DEEPS },
				}),
				q(82144, {	-- On the Road
					["sourceQuests"] = { 80682 },	-- One Last Story
					["provider"] = { "n", 220600 },	-- Haimaz
					["coord"] = { 57.4, 43.1, THE_RINGING_DEEPS },
					["g"] = {
						i(228673),	-- Compiler's Chain Clasp
						i(228674),	-- Compiler's Greaves
						i(228668),	-- Compiler's Handwraps
						i(228671),	-- Compiler's Shoulderguards
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40799.16, {	-- Frolicking in the Fetid Grotto
				q(81693, {	-- Desparately Seeking Skorthuz
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["provider"] = { "n", 220415 },	-- Hrandaz
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 62.4, 48.0, THE_RINGING_DEEPS },
				}),
				q(81712, {	-- Lisky Business
					["sourceQuests"] = { 81693 },	-- Desparately Seeking Skorthuz
					["provider"] = { "n", 220446 },	-- Skorthuz
					["coord"] = { 64.9, 41.5, THE_RINGING_DEEPS },
				}),
				q(81713, {	-- Oozemodious
					["sourceQuests"] = {
						81693,	-- Desparately Seeking Skorthuz
						81712,	-- Lisky Business
					},
					["provider"] = { "n", 220446 },	-- Skorthuz
					["coord"] = { 64.9, 41.5, THE_RINGING_DEEPS },
				}),
			}),
			header(HEADERS.Item, 221765, {	-- Stonevault Mechsuit
				q(84020, {	-- A Mech in Need
					["provider"] = { "i", 226683 },	-- Malfunctioning Mechsuit
					["coord"] = { 47.0, 32.4, THE_RINGING_DEEPS },
				}),
				q(84021, {	-- Machine Without Cogs
					["sourceQuest"] = 84020,	-- A Mech in Need
					["provider"] = { "n", 213875  },	-- Speaker Jurlax
					["coord"] = { 47.0, 32.4, THE_RINGING_DEEPS },
					["cost"] = { { "i", 219301, 1 }, },	-- 1x Overclocked Gear-a-Rang Launcher
				}),
				q(84023, {	-- Orienting Ourselves
					["sourceQuest"] = 84021,	-- Machine Without Cogs
					["provider"] = { "n", 213875  },	-- Speaker Jurlax
					["coord"] = { 47.0, 32.4, THE_RINGING_DEEPS },
					["cost"] = { { "i", 219299, 1 }, },	-- 1x Synergistic Brewterializer
				}),
				q(84024, {	-- Clutching Control
					["sourceQuest"] = 84023,	-- Orienting Ourselves
					["provider"] = { "n", 213875  },	-- Speaker Jurlax
					["coord"] = { 47.0, 32.4, THE_RINGING_DEEPS },
					["cost"] = { { "i", 219306, 1 }, },	-- 1x Burin of the Candle King
				}),
				q(84025, {	-- Repurposed, Restored
					["sourceQuest"] = 84024,	-- Clutching Control
					["provider"] = { "n", 213875  },	-- Speaker Jurlax
					["coord"] = { 47.0, 32.4, THE_RINGING_DEEPS },
					["g"] = {
						i(221765, {	-- Stonevault Mechsuit (MOUNT!)
							-- tagged with cost here so that it shows under the start of the quest chain item as well
							["cost"] = { { "i", 226683, 1 } },	-- Malfunctioning Mechsuit
						}),
					},
				}),
			}),
			-- Area where Janky quest leads (New Home, New Candle)
			q(82952, {	-- An Opportunity to Relax
				["sourceQuests"] = {
					TEMPORARY_SOURCEQUEST,
					TWW_ACCOUNT_CAMPAIGN_QUEST,
				},
				["provider"] = { "n", 224966 },	-- Mindi Maxlof
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 53.8, 43.8, THE_RINGING_DEEPS },
				["g"] = {
					i(224417),	-- Stack of Flyers (QI!)
				},
			}),
			q(82956, {	-- To Opportunity Point
				["sourceQuests"] = { 82952 },	-- An Opportunity to Relax
				["provider"] = { "n", 224966 },	-- Mindi Maxlof
				["coord"] = { 53.8, 43.8, THE_RINGING_DEEPS },
				["g"] = {
					i(224551),	-- Drink Voucher (QI!)
				},
			}),
			q(82195, {	-- Rust and Redemption
				["sourceQuests"] = {
					TEMPORARY_SOURCEQUEST,
					TWW_ACCOUNT_CAMPAIGN_QUEST,
				},
				["provider"] = { "o", 443532 },	-- Rusted Lever
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 53.3, 44.6, THE_RINGING_DEEPS },
				["g"] = {
					i(221970),	-- Pure Crawler Extract (QI!)
				},
			}),
			-- ?
			q(83165, {	-- Badly Behaved Bot
				--["sourceQuests"] = { x },	-- ?
				["provider"] = { "n", 223759 },	-- Sinruna
				["coord"] = { 60.2, 57.0, THE_RINGING_DEEPS },
			}),
			------ Class Specific ------
			q(78895, {	-- A Shadow Over Gundargaz
				["sourceQuests"] = { 78838 },	-- Cogs in the Machine
				["provider"] = { "n", 213869 },	-- Watcher Toki
				["coord"] = { 48.0, 34.8, THE_RINGING_DEEPS },
				["classes"] = { DEMONHUNTER, WARLOCK },
				["g"] = {
					i(219919),	-- Blade of Hatred [Demon Hunter]
					i(219923),	-- Blade of Hatred [Warlock]
				},
			}),
			q(78877, {	-- Bless These Homes
				--["sourceQuests"] = { x },	-- ?
				["provider"] = { "n", 213875 },	-- Speaker Jurlax
				["coord"] = { 47.0, 32.4, THE_RINGING_DEEPS },
				["classes"] = { PRIEST, PALADIN },
			}),
			q(78874, {	-- Conjured Help
				--["sourceQuests"] = { x },	-- ?
				["provider"] = { "n", 213840 },	-- Innkeeper Brax <Innkeeper>
				["coord"] = { 48.0, 32.2, THE_RINGING_DEEPS },
				["classes"] = { MAGE },
			}),
			q(78879, {	-- Evoking the Forge
				--["sourceQuests"] = { x },	-- ?
				["provider"] = { "n", 213841 },	-- Foreman Svart
				["coord"] = { 47.4, 28.4, THE_RINGING_DEEPS },
				["classes"] = { EVOKER },
			}),
			q(78827, {	-- Go Take Candle!
				--["sourceQuests"] = { x },	-- ?
				["provider"] = { "o", 413694 },	-- Suspicious Vent
				["coord"] = { 48.1, 32.0, THE_RINGING_DEEPS },
				["classes"] = { ROGUE },
			}),
			q(78860, {	-- More Candles!
				["sourceQuests"] = { 78827 },	-- Go Take Candle!
				["provider"] = { "o", 413694 },	-- Suspicious Vent
				["coord"] = { 48.1, 32.0, THE_RINGING_DEEPS },
				["classes"] = { ROGUE },
			}),
			q(83326, {	-- The Final Candle
				["sourceQuests"] = { 78860 },	-- More Candles!
				["provider"] = { "o", 413694 },	-- Suspicious Vent
				["coord"] = { 48.1, 32.0, THE_RINGING_DEEPS },
				["classes"] = { ROGUE },
			}),
			------ Miscellaneous ------
			q(78918, {	-- Brax's Brass Knuckles
				["sourceQuests"] = {
					TEMPORARY_SOURCEQUEST,
					TWW_ACCOUNT_CAMPAIGN_QUEST,
				},
				["provider"] = { "n", 213840 },	-- Inkeeper Brax
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 48.0, 32.2, THE_RINGING_DEEPS },
				["g"] = {
					i(211493),	-- Brax's Brass Knuckles (QI!)
					i(219379),	-- Brax's Brass Knuckle
				},
			}),
			q(79206, {	-- Broken Memories
				["sourceQuests"] = { 78634 },	-- Leave No Stone Behind
				["provider"] = { "i", 212178 },	-- Faded Memory Gem
			}),
			q(78900, {	-- On Cold, Dark Wings
				["sourceQuests"] = {
					78838,	-- Cogs in the Machine
					TWW_ACCOUNT_CAMPAIGN_QUEST,
				},
				["provider"] = { "n", 213869 },	-- Watcher Toki
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 48.0, 34.8, THE_RINGING_DEEPS },
			}),
			q(82226, {	-- Papers? Please!
				["sourceQuests"] = {
					TEMPORARY_SOURCEQUEST,
					TWW_ACCOUNT_CAMPAIGN_QUEST,
				},
				["provider"] = { "n", 223184 },	-- Garv Gearwhistle
				["sourceQuestNumRequired"] = 1,
				["coord"] = { 64.9, 78.6, THE_RINGING_DEEPS },
			}),
			q(83331, {	-- Preserve and Pretend
				["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
				["provider"] = { "n", 226255 },	-- Chive
				["coord"] = { 58.3, 32.1, THE_RINGING_DEEPS },
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 80 },
			},{
				q(82615, {	-- Reclaiming the Waterworks
					["coord"] = { 44.7, 44.5, THE_RINGING_DEEPS },
					["g"] = {
						i(223888),	-- Unstable Dynamite (QI!)
					},
				}),
				q(79257, {	-- Grotto Grievances
					["coord"] = { 54.6, 71.2, THE_RINGING_DEEPS },
				}),
				q(81981, {	-- What Army?
					["sourceQuests"] = {
						80514,	-- Break out Berrund!
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 70.7, 39.8, THE_RINGING_DEEPS },
				}),
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(KHAZ_ALGAR, {
		m(THE_RINGING_DEEPS, {
			n(QUESTS, {
				-- During questing
				q(83613),	-- [DNT] Zone 2 Bread Crumb Completed Organically (spellID 456929), after turn in questID 80434 (Into the Deeps)
				q(79635),	-- [DNT] The Assembly of the Deeps Renown Unlock (spellID 448654)
				-- Side quests
				q(82652),	-- 'Stay a while and listen' - Brennok, in the end of whole speach during questID 80682 (One Last Story)
				-- A Suit of Slime (80509) Choices
				q(81927),	-- interact a things from table (left-ish one)
				q(81925),	-- Choosing Flappy Bits
				q(81926),	-- Choosing Pokey Bits
				-- ?
				q(82991),	-- Talking to Ferno (225018) inside Camp Murrock, When bind hearthstone location to Camp Murroch tavern
				q(82116),	-- First option selected with ZZ-01-47 during 79023 'Small Friend, Big Plans' (2nd/3rd options have no HQT)
				hqt(84585, name(HEADERS.Object, 457120, {	-- Rappelling Anchor
					["coord"] = { 51, 47.6, THE_RINGING_DEEPS },
				})),
			}),
		}),
	}),
})));