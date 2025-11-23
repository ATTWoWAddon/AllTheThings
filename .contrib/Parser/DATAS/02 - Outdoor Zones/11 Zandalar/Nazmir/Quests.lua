---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(QUESTS, {
			-- TODO: shit that needs solving:
			-- *someting* unlocks "into the darkness" other than the pre-nazmir questline that starts from the dazar'alor scouting map. it was already available with no prereqs when i was in the middle of questing through zuldazar. figure out what quest triggers its availability, and figure out if it makes the scouting map questline invalid/if those should all be marked as breadcrumbs or with altQuests.
			-- figure out if "'til death do us part" is available any earlier than turning in "a tribute for death."  it wasn't available w/0 prereqs, just need to make sure we have the availability trigger correct.
			-- verify SQ for "the forlorn soul" also, picked up at the same time as above. actual non-breadcrumb SQ seems to be "A Tribute for Death," but could be something else?
			-- verify SQ for "a poisonous touch."  it wasn't available w/0 prereqs and i didn't see it until after turning in "staying hidden," but it may be available earlier.
			-- verify whether or not "crawg free zone" is needed for "it seems you've made a friend" by turning it in last of the 4 quests. i turned it in second to last, and the previous person who quested through turned in "bad juju"/"off with her head" last, so it seems those 3 are required)
			-- figure out if "what rots beneath" is a breadcrumb
			-- this question is also in the dazar'alor file, but verify SQ for "the blood gate."  it may become available after "ateena's fall," not "halting the empire's fall."  also, is "halting the empire's fall" (which sends you to baine, who offers this quest) a breadcrumb?  "the blood gate" isn't hidden like quests typically are when you have their breadcrumb in their log, so i'm not sure if "halting" is optional/disappears/becomes unavailable after doing "the blood gate."  also, is it available with *only* having done nazmir, or do you also have to finish the main zuldazar questline as well?
			q(50934, {	-- A Chance Sighting
				["sourceQuests"] = { 47696 },	-- Krag'wa the Terrible
				["provider"] = { "n", 131993 },	-- Yash
				["coord"] = { 66.9, 41.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["groups"] = { i(153676) },	-- Vial of Liquid (QI!)
			}),
			q(47244, {	-- A Culling of Souls
				["sourceQuests"] = { 47241 },	-- The Shadow of Death
				["provider"] = { "n", 122102 },	-- Hanzabu
				["coord"] = { 36.6, 54.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49348, {	-- A Desecrated Temple
				["sourceQuests"] = { 47880 },	-- A Tribute for Death
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47493, {	-- A Lonely Spirit
				["sourceQuests"] = {
					49348,	-- A Desecrated Temple
					47247,	-- That Which Haunts the Dead
					47491,	-- Remnants of the Damned
				},
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(47622, {	-- A Magical Glow
				["sourceQuests"] = { 47623 },	-- The Last Witch Doctor of Krag'wa
				["provider"] = { "n", 120551 },	-- Krag'wa the Huge
				["coord"] = { 75.3, 56.4, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151237),	-- Glowfly Bottle (QI!)
					i(158972),	-- Alluring Glowfly Lantern
					i(158975),	-- Gilded Lilypad
				},
			}),
			q(50085, {	-- A Message of Blood and Fire
				["sourceQuests"] = { 50083 },	-- The Crawg Ma'da
				["provider"] = { "n", 133338 },	-- Rokhan
				["coord"] = { 48.3, 53.4, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156931),	-- Wand of Embers (QI!)
				},
			}),
			q(54964, {	-- A One-Way Ticket to the Heart
				["sourceQuests"] = { 54940 },	-- Necessity is the MOTHER
				["provider"] = { "n", 149823 },	-- Magni Bronzebeard
				["coord"] = { 52.3, 68.6, 1382 },
				["timeline"] = {
					ADDED_8_1_5,
					REMOVED_8_2_0,	-- Retired with the implementation of 8.2
					ADDED_9_2_0,	-- Reported available again 2022-03-21
				},
			}),
			q(48402, {	-- A Poisonous Touch
				["sourceQuests"] = { 47525 },	-- Staying Hidden
				["provider"] = { "n", 126039 },	-- Mag'ash the Poisonous
				["coord"] = { 69.1, 50.4, NAZMIR },
				["races"] = HORDE_ONLY,
				-- SQ needs confirmation. i didn't see it until after i finished "staying hidden" and picked up the next 2 quests for the area, but maybe it opens sooner. was NOT available with 0 prereqs prior to starting dazar'alor.
			}),
			q(47263, {	-- A Time of Revelation
				["sourceQuests"] = { 47262 },	-- Ending the Blood Trolls
				["provider"] = { "n", 130844 },	-- Princess Talanji
				["coord"] = { 45.2, 71.1, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47880, {	-- A Tribute for Death
				["sourceQuests"] = { 47868 },	-- The Necropolis
				["provider"] = { "n", 124513 },	-- Hanzabu
				["coord"] = { 39.5, 32.6, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47621, {	-- A True Loa Feast
				["sourceQuests"] = { 47623 },	-- The Last Witch Doctor of Krag'wa
				["provider"] = { "n", 120551 },	-- Krag'wa the Huge
				["coord"] = { 75.3, 56.4, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151040),	-- Chunky Meat (QI!)
				},
			}),
			q(49366, {	-- Aid the Wounded
				["sourceQuests"] = { 50934 },	-- A Chance Sighting
				["provider"] = { "o", 278197 },	-- Vial of Antidote
				["coord"] = { 64.0, 50.3, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48857, {	-- All Hope is Lost
				["sourceQuests"] = {
					48825,	-- Power Denied
					48823,	-- Projection Destruction
				},
				["provider"] = { "n", 127212 },	-- Ka'dran
				["coord"] = { 30.9, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(50976, {	-- An Ancient Curse
				["provider"] = { "o", 287081 },	-- Ancient Tablet
				["coord"] = { 52.9, 75.9, NAZMIR },
			}),
			q(50933, {	-- An Unfortunate Event
				["provider"] = { "n", 135784 },	-- Imperial Guard
				["coord"] = { 29.2, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(50087, {	-- Ateena's Fall
				["sourceQuests"] = { 52073 },	-- Petitioning Krag'wa
				["provider"] = { "n", 133476 },	-- Princess Talanji
				["coord"] = { 49.3, 57.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					azeriteItem(155335),	-- Death-Pledged Shoulderguards
					azeriteItem(159011),	-- Death-Pledged Hauberk
					azeriteItem(155334),	-- Loa Speaker's Epaulets
					azeriteItem(159029),	-- Loa Speaker's Vestments
					azeriteItem(159010),	-- Nazmani Warplate Chestpiece
					azeriteItem(155333),	-- Nazmani Warplate Spaulders
					azeriteItem(155332),	-- Ritual Flayer's Spaulders
					azeriteItem(159012),	-- Ritual Flayer's Jerkin
					azewrongItem(175337),	-- Death-Pledged Shoulderguards no azerite version
					azewrongItem(175376),	-- Death-Pledged Hauberk no azerite version
					azewrongItem(175336),	-- Loa Speaker's Epaulets no azerite version
					azewrongItem(175378),	-- Loa Speaker's Vestments no azerite version
					azewrongItem(175375),	-- Nazmani Warplate Chestpiece no azerite version
					azewrongItem(175335),	-- Nazmani Warplate Spaulders no azerite version
					azewrongItem(175334),	-- Ritual Flayer's Spaulders no azerite version
					azewrongItem(175377),	-- Ritual Flayer's Jerkin no azerite version
				},
			}),
			q(49380, {	-- Bad Juju
				["sourceQuests"] = { 49366 },	-- Aid the Wounded
				["provider"] = { "n", 129165 },	-- Guard Satao
				["coord"] = { 63.1, 52.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = { i(153678) },	-- Sample Bottle (QI!)
			}),
			q(49779, {	-- Bad to the Bone
				["sourceQuests"] = { 49778 },	-- Don't Go into the Light
				["provider"] = { "n", 130930 },	-- Zaluto
				["coord"] = { 24.1, 53.2, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49067, {	-- Beseeching Bwonsamdi
				["sourceQuests"] = { 49064 },	-- Torga, the Turtle Loa
				["provider"] = { "n", 127961 },	-- Princess Talanji
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49950, {	-- Blood Purification
				["sourceQuests"] = {
					49938,	-- Corrupted Earth
					49935,	-- How to Repair a Titan Keeper
					49937,	-- Recovering Remnants
				},
				["provider"] = { "n", 133941 },	-- Minor Corruption
				["coord"] = { 69.2, 33.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49440, {	-- Blood Troll on the Outside
				["sourceQuests"] = { 49278 },	-- Spiritual Restoration
				["provider"] = { "n", 122795 },	-- Witch Doctor Kejabu
				["coord"] = { 39.5, 43.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152785),	-- Jomubu's Juju Powder (QI!)
				},
			}),
			q(49941, {	-- Bone Procession
				["sourceQuests"] = {
					49938,	-- Corrupted Earth
					49935,	-- How to Repair a Titan Keeper
					49937,	-- Recovering Remnants
				},
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 68.6, 35.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156527),	-- Reanimated Monstrosity Bones (QI!)
					i(156528),	-- Titan Manipulator (QI!)
					i(159078),	-- Potency Manipulator
				},
			}),
			q(48479, {	-- Bones for Protection
				["sourceQuests"] = {
					48468,	-- Bwonsamdi's Deliverance
					48473,	-- Respecting the Rites
				},
				["provider"] = { "n", 126079 },	-- Koj'jun Deathwalker
				["coord"] = { 38.9, 59.9, NAZMIR },
				["groups"] = {
					i(153346),	-- Cursed Bone (QI!)
				},
			}),
			q(50079, {	-- Boom goes the Bomb
				["sourceQuests"] = {
					50138,	-- The Battle of Bloodfire Ravine
					50078,	-- Undying Totems
				},
				["provider"] = { "n", 132988 },	-- Patch
				["coord"] = { 44.9, 68.3, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156847),	-- Seaforium Smoke Grenade (QI!)
					i(159827),	-- Bomb-samdi Mojo Bombs
				},
			}),
			q(48468, {	-- Bwonsamdi's Deliverance
				["provider"] = { "n", 130481 },	-- Shinga Deathwalker
				["coord"] = { 39.0, 59.9, NAZMIR },
				["groups"] = {
					i(153178),	-- Cremation Torch (QI!)
				}
			}),
			q(49781, {	-- Catch Me if you Can
				["sourceQuests"] = {
					49779,	-- Bad To The Bone
					49780,	-- Recovering Ancient Fire
				},
				["provider"] = { "n", 130930 },	-- Zaluto
				["coord"] = { 24.1, 53.2, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156481),	-- Jin'Tiki's Empowered Fetish (QI!)
					i(155556),	-- Jin'Tiki's Signet
					i(159046),	-- Loa Speaker's Footpads
					i(159048),	-- Ritual Flayer's Treads
					i(159047),	-- Death-Pledged Striders
					i(159045),	-- Nazmani Warplate Boots
				},
			}),
			q(49185, {	-- Catching Up
				["sourceQuests"] = {
					49082,	-- Upward and Onward
					47250,	-- We'll Meet Again
				},
				["provider"] = { "n", 127961 },	-- Princess Talanji
				["coord"] = { 39.4, 44.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49080, {	-- Cease all Summoning
				["sourceQuests"] = { 49067 },	-- Beseeching Bwonsamdi
				["provider"] = { "n", 127961 },	-- Princess Talanji
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158981),	-- Death-Pledged Footguards
					i(158974),	-- Fen Summoner's Cloak
					i(158980),	-- Loa Speaker's Slippers
					i(158979),	-- Nazmani Warplate Footguards
					i(158982),	-- Ritual Flayer's Striders
				},
			}),
			q(48856, {	-- Conduit Interruption
				["sourceQuests"] = {
					48825,	-- Power Denied
					48823,	-- Projection Destruction
				},
				["provider"] = { "n", 127215 },	-- Shadow Hunter Da'jul
				["coord"] = { 31.0, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(54147, {	-- Confront the Val'kyr
				["sourceQuests"] = { 53781 },	-- Eyir
				["provider"] = { "n", 146877 },	-- Princess Talanji
				["coord"] = { 61.2, 68.1, STORMHEIM },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(49980, {	-- Containment Procedure
				["sourceQuests"] = {
					49955,	-- Not Fit for This Plane
					49957,	-- Protocol Recovery
					49956,	-- Void is Prohibited
				},
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 72.5, 29.4, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159085),	-- Ancient Loa-Blessed Mace
					i(159086),	-- Corrupted Tribe Headsmasher
					i(159083),	-- Degraded Empire Shortblade
					i(159082),	-- Fallen Nation Recurve
					i(159081),	-- Fallen Nation Carver
					i(159084),	-- Handscythe of the First City
					i(159088),	-- Nazmani Hexblade
					i(159087),	-- Nazmani Longstaff
					--
					a(i(161299)),	-- Stoat-Trapper's Bladefist
				},
			}),
			q(49938, {	-- Corrupted Earth
				["sourceQuests"] = { 49932 },	-- Slumber No More
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 66.9, 38.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49379, {	-- Crawg Free Zone
				["sourceQuests"] = { 49370 },	-- Rescue the Chronicler
				["provider"] = { "n", 129164 },	-- Chronicler Jabari
				["coord"] = { 62.7, 53.5, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48573, {	-- Crocolisk Life
				["sourceQuests"] = { 48669 },	-- Urok, Terror of the Wetlands
				["provider"] = { "n", 126713 },	-- Sur'jan
				["coord"] = { 38.8, 77.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152596),	-- Sur'jan's Ritual Dagger (QI!)
				},
			}),
			q(49132, {	-- Crushing the Skullcrushers
				["sourceQuests"] = { 49126 },	-- Forcing Fate's Hand
				["provider"] = { "n", 127960 },	-- Lashk
				["coord"] = { 58.5, 13.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49479, {	-- Didn't Stop to Think if They Should
				["sourceQuests"] = {
					-- not linking "Reuniting the Company" here to avoid infinite loop, since "No Mercy" isn't available until you're on "Reuniting"
					48498,	-- No Mercy for Sithis
					48497,	-- Show of Force
				},
				["provider"] = { "n", 126346 },	-- Chadwick Paxton
				["coord"] = { 25.9, 36.1, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49778, {	-- Don't Go into the Light
				["sourceQuests"] = {
					49776,	-- No Problem Tar Can't Solve
					49777,	-- On The Run
					49774,	-- Won't Leaf Him to Die
				},
				["provider"] = { "n", 131231 },	-- Jin'Tiki
				["coord"] = { 24.1, 53.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156519),	-- Camoflauge Kit (QI!)
				},
			}),
			q(49569, {	-- Down by the Riverside
				["sourceQuests"] = {
					47602,	-- Ready For Action
					49985,	-- Return to Gloom Hollow
				},
				["provider"] = { "n", 126213 },	-- Princess Talanji
				["coord"] = { 67.4, 42.2, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49071, {	-- Dreadtick Combustion
				["sourceQuests"] = { 49067 },	-- Beseeching Bwonsamdi
				["provider"] = { "n", 127960 },	-- Lashk
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153024),	-- Scroll of Combustion (QI!)
				},
			}),
			q(49378, {	-- Earn Their Trust
				["sourceQuests"] = { 49370 },	-- Rescue the Chronicler
				["provider"] = { "n", 129164 },	-- Chronicler Jabari
				["coord"] = { 62.7, 53.5, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47262, {	-- Ending the Blood Trolls
				["sourceQuests"] = {
					47264,	-- Leave None Standing
					47130,	-- Improper Burial
				},
				["provider"] = { "n", 121241 },	-- Princess Talanji
				["coord"] = { 45.6, 74.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47660, {	-- Fallen Idols
				["sourceQuests"] = { 47525 },	-- Staying Hidden
				["provider"] = { "n", 124376 },	-- Witch Doctor Zentimo
				["coord"] = { 68.6, 46.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o_repeated({
						i(151113),	-- Stolen Idol of Krag'wa
						o(271648),	-- Stolen Idol of Krag'wa
						o(293211),	-- Stolen Idol of Krag'wa
					}),
				},
			}),
			q(47601, {	-- Field Evaluation
				["sourceQuests"] = {
					47711,	-- Head of the Viper
					47598,	-- Pilfering and Fencing
					47596,	-- There Is No Plan "B"
				},
				["provider"] = { "n", 123544 },	-- Patch
				["coord"] = { 82.4, 27.3, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158993),	-- Death-Pledged Legguards
					i(158992),	-- Loa Speaker's Trousers
					i(158991),	-- Nazmani Warplate Wargreaves
					i(158994),	-- Ritual Flayer's Legwraps
					i(155382),	-- Spare Stabilizer Band
				},
			}),
			q(49126, {	-- Forcing Fate's Hand
				["sourceQuests"] = { 49125 },	-- Negative Blood
				["provider"] = { "n", 127958 },	-- Kisha
				["coord"] = { 65.6, 17.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158973),	-- Band of Destiny
					i(153058),	-- Scroll of Fate's Hand (PQI!)
				},
			}),
			q(48492, {	-- Getting a Leg Up
				["sourceQuests"] = { 49477 },	-- Surprise Backup
				["provider"] = { "n", 126289 },	-- Chadwick Paxton (with no legs)
				["coord"] = { 28.6, 43.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47245, {	-- Getting the Message
				["sourceQuests"] = { 49902 },	-- To Gloom Hollow
				["provider"] = { "n", 131213 },	-- Rokhan
				["coord"] = { 67.3, 42.3, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(50808, {	-- Halting the Empire's Fall
				["sourceQuests"] = { 51244 },	-- What Rots Beneath
				["provider"] = { "n", 137113 },	-- Rokhan
				["coord"] = { 51.8, 65.5, NAZMIR },
				["races"] = HORDE_ONLY,
				-- is this a breadcrumb?
				["groups"] = {
					i(245491, {	-- Bwonsamdi's Golden Gong (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			q(47711, {	-- Head of the Viper
				["sourceQuests"] = {
					47599,	-- Revenge: Served Hot
					47597,	-- No Goblin Left Behind
				},
				["provider"] = { "n", 123544 },	-- Patch
				["coord"] = { 82.3, 27.2, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49079, {	-- Hir'eek, the Bat Loa
				["sourceQuests"] = {
					49078,	-- Poisoning the Brood
					48800,	-- Mark of the Bat
				},
				["provider"] = { "n", 129378 },	-- Jo'chunga
				["coord"] = { 33.3, 45.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153694),	-- Poisoned Dagger (PQI!)
				},
			}),
			q(48890, {	-- How to Be a Blood Troll
				["sourceQuests"] = { 48699 },	-- Sneaking into Zalamar
				["provider"] = { "n", 127391 },	-- Bloodseeker Jo'chunga
				["coord"] = { 33.3, 45.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49935, {	-- How to Repair a Titan Keeper
				["sourceQuests"] = { 49932 },	-- Slumber No More
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 66.9, 38.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156522),	-- Keeper Bolcan's Core (QI!)
					o(281417, {	-- Keeper Shavras's Core
						["coord"] = { 69.3, 39.8, NAZMIR },
						["groups"] = { i(156521) },	-- Keeper Shavras's Core (QI!)
					}),
				},
			}),
			q(48855, {	-- Humbling the Terrors
				["sourceQuests"] = {
					48825,	-- Power Denied
					48823,	-- Projection Destruction
				},
				["provider"] = { "n", 127215 },	-- Shadow Hunter Da'jul
				["coord"] = { 31.0, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153483),	-- Modified Blood Fetish (QI!)
				},
			}),
			q(47659, {	-- Hunt the Hunter
				["sourceQuests"] = { 47525 },	-- Staying Hidden
				["provider"] = { "n", 124376 },	-- Witch Doctor Zentimo
				["coord"] = { 68.6, 46.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155383),	-- Bloody Warmother's Greatcloak
					i(159040),	-- Death-Pledged Bindings
					i(159038),	-- Loa Speaker's Bands
					i(159039),	-- Nazmani Warplate Armguards
					i(159041),	-- Ritual Flayer's Armbands
					--
					a(i(158632)), 	-- Banisher Bindings
					a(i(158633)), 	-- Crone-Seeker's Bindings
					a(i(158634)), 	-- Waycrest Militia Wristguards
					a(i(158631)), 	-- Wickerwoven Bindings
				},
			}),
			q(49314, {	-- Hunting Zardrax
				["sourceQuests"] = {
					47250,	-- We'll Meet Again
					49082,	-- Upward and Onward
				},
				["provider"] = { "n", 122795 },	-- Witch Doctor Kejabu
				["coord"] = { 39.5, 43.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(47130, {	-- Improper Burial
				["sourceQuests"] = { 47105 },	-- Into The Darkness
				["qgs"] = {
					121241,	-- Princess Talanji
					130844,	-- Princess Talanji
				},
				["coord"] = { 47.2, 79.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(154724),	-- Ceremonial Torch (QI!)
					i(155322),	-- Death-Pledged Gauntlets
					i(155329),	-- Death-Pledged Leggings
					i(155321),	-- Loa Speaker's Gloves
					i(155328),	-- Loa Speaker's Leggings
					i(155320),	-- Nazmani Warplate Gauntlets
					i(155327),	-- Nazmani Warplate Greaves
					i(155330),	-- Ritual Flayer's Breeches
					i(155319),	-- Ritual Flayer's Gloves
				},
			}),
			q(47105, {	-- Into The Darkness
				["sourceQuests"] = { 48535 },	-- Nazmir, the Forbidden Swamp
				["provider"] = { "n", 120904 },	-- Princess Talanji
				["coord"] = { 43.0, 86.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),


			q(48801, {	-- Isolating Zalamar
				["sourceQuests"] = { 48699 },	-- Sneaking into Zalamar
				["provider"] = { "n", 127391 },	-- Bloodseeker Jo'chunga
				["coord"] = { 33.3, 45.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152989),	-- Kruga's Poisoned Claw (QI!)
				},
			}),
			q(49382, {	-- It Seems You've Made a Friend
				["sourceQuests"] = {
					49380,	-- Bad Juju
					-- 49379,	-- Crawg Free Zone (may be required)
					49378,	-- Earn Their Trust
					49377,	-- Off With Her Head
				},
				["provider"] = { "n", 129164 },	-- Chronicler Jabari
				["coord"] = { 63.1, 52.7, NAZMIR },
				["races"] = HORDE_ONLY,
				-- verify whether or not "crawg free zone" is needed
				["groups"] = {
					i(156566),	-- Dart (PET!)
				},
			}),
			q(49136, {	-- Jungo, Herald of G'huun
				["sourceQuests"] = {
					49132,	-- Crushing the Skullcrushers,
					49131,	-- Sanctifying Ground,
					49130,	-- Loa-Free Diet
				},
				["provider"] = { "n", 127961 },	-- Princess Talanji
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47919, {	-- Just Say No to Cannibalism
				["sourceQuests"] = { 47924 },	-- Profanity Filter
				["qgs"] = {
					125024,	-- Kajosh
					124933,	-- Kajosh
				},
				["coord"] = { 51.7, 33.2, NAZMIR },
			}),
			q(48478, {	-- Kel'vax's Home
				["sourceQuests"] = {
					48468,	-- Bwonsamdi's Deliverance
					48473,	-- Respecting the Rites
				},
				["provider"] = { "n", 126080 },	-- Shinga Deathwalker
				["coord"] = { 39.0, 59.9, NAZMIR },
				["groups"] = {	-- quest is neutral, but rewards are Horde-only
					i(158943, {	-- Nazmani Warplate Treads
						["races"] = HORDE_ONLY,
					}),
					i(158944, {	-- Loa Speaker's Footwraps
						["races"] = HORDE_ONLY,
					}),
					i(158945, {	-- Death-Pledged Treads
						["races"] = HORDE_ONLY,
					}),
					i(158946, {	-- Ritual Flayer's Footpads
						["races"] = HORDE_ONLY,
					}),
					i(155519, {	-- Loa Speaker's Cuffs
						["races"] = HORDE_ONLY,
					}),
					i(155343, {	-- Ritual Flayer's Bindings
						["races"] = HORDE_ONLY,
					}),
					i(155521, {	-- Death-Pledged Bracers
						["races"] = HORDE_ONLY,
					}),
					i(155341, {	-- Nazmani Warplate Vambraces
						["races"] = HORDE_ONLY,
					}),
					o(278341, {	-- Ancient Phylactery
						["coord"] = { 39.4, 57.4, NAZMIR },
						["groups"] = { i(154136) },	-- Ancient Phylactery (QI!)
					}),
					o(278342, {	-- Pristine Phylactery
						["coord"] = { 38.4, 54.5, NAZMIR },
						["groups"] = { i(154137) },	-- Pristine Phylactery (QI!)
					}),
					o(278337, {	-- Repaired Phylactery
						["coord"] = {  40.9, 52, NAZMIR },
						["groups"] = { i(152468) },	-- epaired Phylactery (QI!)
					}),
					i(154130),	-- Spirit Powder (QI!)
				},
			}),
			q(47998, {	-- Killing Cannibals
				["sourceQuests"] = { 47924 },	-- Profanity Filter
				["provider"] = { "n", 124933 },	-- Kajosh
				["coord"] = { 51.7, 33.2, NAZMIR },
			}),
			q(47697, {	-- Krag'wa's Aid
				["sourceQuests"] = { 47696 },	-- Krag'wa the Terrible
				["provider"] = { "n", 124641 },	-- Shadow Hunter Mutumba
				["coord"] = { 75.1, 56.5, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48090, {	-- Krag'wa's Chosen
				["sourceQuest"] = 47918,	-- To Serve Krag'wa
				["provider"] = { "n", 125317 },	-- Shadow Hunter Narez
				["coord"] = { 77.7, 53.2, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158071),	-- Empowerment Potion (QI!)
				},
			}),
			q(47696, {	-- Krag'wa the Terrible
				["sourceQuests"] = { 47540 },	-- Totemic Restoration
				["provider"] = { "n", 120551 },	-- Krag'wa the Huge
				["coord"] = { 75.3, 56.4, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159015),	-- Death-Pledged Boots
					i(158986),	-- Death-Pledged Gloves
					i(158985),	-- Loa Speaker's Handwraps
					i(159014),	-- Loa Speaker's Sandals
					i(158984),	-- Nazmani Warplate Battlegloves
					i(159013),	-- Nazmani Warplate Stompers
					i(159016),	-- Ritual Flayer's Footwraps
					i(158983),	-- Ritual Flayer's Grips
					--
					a(i(158589)),	-- Banisher Striders
					a(i(158590)),	-- Crone-Seeker's Striders
					a(i(158591)),	-- Waycrest Militia Footguards
					a(i(158588)),	-- Wickerwoven Walkers
				},
			}),
			q(47264, {	-- Leave None Standing
				["sourceQuests"] = { 47105 },	-- Into The Darkness
				["provider"] = { "n", 130844 },	-- Princess Talanji
				["coord"] = { 47.2, 79.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49130, {	-- Loa-Free Diet
				["sourceQuests"] = { 49126 },	-- Forcing Fate's Hand
				["provider"] = { "n", 127958 },	-- Kisha
				["coord"] = { 58.5, 13.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153070),	-- Parts of Torga (QI!)
				},
			}),
			q(48800, {	-- Mark of the Bat
				["sourceQuests"] = {
					48890,	-- How to Be a Blood Troll
					48801,	-- Isolating Zalamar
				},
				["provider"] = { "n", 127391 },	-- Bloodseeker Jo'chunga
				["coord"] = { 33.3, 45.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153672),	-- Vashera's Talisman (QI!)
					i(153671),	-- Yialu's Talisman (QI!)
					i(153674),	-- Zu'Anji's Talisman (QI!)
					i(159075),	-- Bloodhex Talisman
					i(158970),	-- Death-Pledged Vambraces
					i(158968),	-- Loa Speaker's Wraps
					i(158969),	-- Nazmani Warplate Bracers
					i(158971),	-- Ritual Flayer's Wristguards
				},
			}),
			q(48590, {	-- My Head and Shoulders
				["sourceQuests"] = {
					48576,	-- Safe Flying
					48577,	-- Terrorizing Their Eggs
					48578,	-- There's No Eye in Skyterror
				},
				["provider"] = { "n", 126713 },
				["coord"] = { 34.0, 78.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156621),	-- Sur'jan's Helm (QI!)
					i(156620),	-- Sur'jan's Left Shoulderpad (QI!)
					i(156619),	-- Sur'jan's Right Shoulderpad (QI!)
				},
			}),
			q(54940, {	-- Necessity is the MOTHER
				["sourceQuests"] = { 54939 },	-- Stubborn as a Bronzebeard
				["provider"] = { "n", 149823 },
				["coord"] = { 47.6, 16.2, 1381 },
				["timeline"] = {
					ADDED_8_1_5,
					REMOVED_8_2_0,	-- Retired with the implementation of 8.2
					ADDED_9_2_0,	-- Reported available again 2022-03-21
				},
				["maps"] = { 1382 },	-- Uldir (Scenario)
			}),
			q(49125, {	-- Negative Blood
				["sourceQuests"] = { 49120 },	-- Speaking with the Dead
				["provider"] = { "n", 127958 },	-- Kisha
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(280347, {	-- Scroll of Fate's Hand
						["coord"] = { 62.3, 24.6, NAZMIR },
						["groups"] = { i(156568) },	-- Damaged Scroll of Fate's Hand (QI!)
					}),
					i(160559),	-- Scroll of Purification (QI!)
				},
			}),
			q(47597, {	-- No Goblin Left Behind
				["sourceQuests"] = { 47631 },	-- Rendezvous with the Libation
				["provider"] = { "n", 123178 },	-- Patch
				["coord"] = { 74.5, 38.9, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48498, {	-- No Mercy for Sithis
				["sourceQuests"] = { 48496 },	-- Reuniting the Company
				["provider"] = { "n", 126377 },	-- Ingrid Bellix
				["coord"] = { 26.6, 37.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(154892),	-- Skycaller Gem (QI!)
				},
			}),
			q(49776, {	-- No Problem Tar Can't Solve
				["sourceQuests"] = { 50933 },	-- An Unfortunate Event
				["provider"] = { "n", 131231 },	-- Jin'Tiki
				["coord"] = { 24.1, 53.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155913),	-- Sticky Tar (QI!)
				},
			}),
			q(49955, {	-- Not Fit for This Plane
				["sourceQuests"] = {
					49950,	-- Blood Purification
					49941,	-- Bone Procession
					49949,	-- Unwelcome Undead
				},
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 68.6, 35.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49377, {	-- Off With Her Head
				["sourceQuests"] = { 49366 },	-- Aid the Wounded
				["provider"] = { "n", 129165 },	-- Guard Satao
				["coord"] = { 63.1, 52.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153572),	-- Nagla's Head (QI!)
					i(159089),	-- Amaki Scalper
					i(159095),	-- Bloodhunter Greatblade
					i(159091),	-- Bloodrite Sticker
					i(159094),	-- Bloodsinger Wand
					i(159090),	-- Crawgmother's Shortbow
					i(159092),	-- Grim Ritual Mace
					i(159093),	-- Marrow Drained Bonestaff
					i(159096),	-- Nagla's Headcracker
					--
					a(i(161293)),	-- Thrasneck Greatblade
				},
			}),
			q(48854, {	-- Offer of Power
				["sourceQuests"] = { 49314 },	-- Hunting Zardrax
				["provider"] = { "n", 127216 },	-- Zardrax the Empowerer
				["coord"] = { 30.9, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49777, {	-- On the Run
				["sourceQuests"] = { 50933 },	-- An Unfortunate Event
				["provider"] = { "n", 130930 },	-- Zaluto
				["coord"] = { 24.1, 53.1, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48869, {	-- Payback's a Lich
				["sourceQuests"] = {
					48857,	-- All Hope is Lost
					48856,	-- Conduit Interruption
					48855,	-- Humbling the Terrors
				},
				["provider"] = { "n", 127215 },	-- Shadow Hunter Da'jul
				["coord"] = { 30.9, 52.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155378),	-- Zardax's Tattered Drape
					i(155374),	-- Death Defier's Aegis
					i(155375),	-- Ghoulish Blood Idol
				},
			}),
			q(52073, {	-- Petitioning Krag'wa
				["sourceQuests"] = { 50082 },	-- Target of Opportunity
				["provider"] = { "n", 133125 },	-- Princess Talanji
				["coord"] = { 45.2, 60.5, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47598, {	-- Pilfering and Fencing
				["sourceQuests"] = {
					47599,	-- Revenge: Served Hot
					47597,	-- No Goblin Left Behind
				},
				["provider"] = { "n", 123545 },	-- Newt
				["coord"] = { 82.2, 27.3, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151202),	-- Ancient Titan Relics (QI!)
				},
			}),
			q(49078, {	-- Poisoning the Brood
				["sourceQuests"] = {
					48890,	-- How to Be a Blood Troll
					48801,	-- Isolating Zalamar
				},
				["provider"] = { "n", 127391 },	-- Bloodseeker Jo'chunga
				["coord"] = { 33.3, 45.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153012),	-- Poisoned Mojo Flask (QI!)
				},
			}),
			q(48825, {	-- Power Denied
				["sourceQuests"] = { 48854 },	-- Offer of Power
				["provider"] = { "n", 127212 },	-- Kal'dran
				["coord"] = { 30.9, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153482),	-- Blood Fetish (QI!)
				},
			}),
			q(47924, {	-- Profanity Filter
				["provider"] = { "n", 124666 },	-- Kajosh
				["coord"] = { 55.1, 36.7, NAZMIR },
				["groups"] = {
					i(151849),	-- Scroll of Inferno (QI!)
				},
			}),
			q(49957, {	-- Protocol Recovery
				["sourceQuests"] = {
					49950,	-- Blood Purification
					49941,	-- Bone Procession
					49949,	-- Unwelcome Undead
				},
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 68.6, 35.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156537),	-- Containment Protocol (QI!)
				},
			}),
			q(48574, {	-- Pulling Fangs
				["sourceQuests"] = { 48669 },	-- Urok, Terror of the Wetlands
				["provider"] = { "n", 126713 },	-- Sur'jan
				["coord"] = { 38.8, 77.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152595),	-- Saurid Teeth (QI!)
				},
			}),
			q(50076, {	-- Rally the Warriors
				["sourceQuests"] = { 49569 },	-- Down by the Riverside
				["provider"] = { "n", 121288 },	-- Princess Talanji
				["coord"] = { 39.3, 78.1, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47602, {	-- Ready For Action
				["sourceQuests"] = { 47601 },	-- Field Evaluation
				["provider"] = { "n", 123878 },	-- Patch
				["coord"] = { 81.4, 26.2, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49780, {	-- Recovering Ancient Fire
				["sourceQuests"] = { 49778 },	-- Don't Go into the Light
				["provider"] = { "n", 131231 },	-- Jin'Tiki
				["coord"] = { 24.1, 53.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156480),	-- Jin'Tiki's Fetish (QI!)
				},
			}),
			q(49937, {	-- Recovering Remnants
				["sourceQuests"] = { 49932 },	-- Slumber No More
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 66.9, 38.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156524),	-- Titan Plating (QI!)
				},
			}),
			q(47491, {	-- Remnants of the Damned
				["sourceQuests"] = { 47880 },	-- A Tribute for Death
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(278691, {	-- Sarcophagus Lid
						["coord"] = { 39.6, 34.9, NAZMIR },
						["groups"] = { i(150753) },	-- Decaying Bloodstone (QI!)
					}),
				},
			}),
			q(47631, {	-- Rendezvous with the Libation
				["sourceQuests"] = { 47245 },	-- Getting the Message
				["provider"] = { "n", 131213 },	-- Rokhan
				["coord"] = { 67.4, 42.4, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49370, {	-- Rescue the Chronicler
				["sourceQuests"] = { 49366 },	-- Aid the Wounded
				["provider"] = { "n", 129165 },	-- Guard Satao
				["coord"] = { 63.1, 52.6, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48473, {	-- Respecting the Rites
				["provider"] = { "n", 130481 },	-- Shinga Deathwalker
				["coord"] = { 39.0, 59.9, NAZMIR },
				["groups"] = {
					o(281361, {	-- Ritual Powder
						["coord"] = { 41.3, 62.7, NAZMIR },
						["groups"] = { i(157793) },	-- Ritual Powder (QI!)
					}),
				}
			}),
			q(48499, {	-- Return to Dust
				["sourceQuests"] = { 49479 },	-- Didn't Stop to Think if They Should
				["provider"] = { "n", 126346 },	-- Chadwick Paxton
				["coord"] = { 25.9, 36.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153519),	-- Skycaller Gem (QI!)
				},
			}),
			q(49985, {	-- Return to Gloom Hollow
				["sourceQuests"] = { 49980 },	-- Containment Procedure
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 72.4, 29.3, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48496, {	-- Reuniting the Company
				["sourceQuests"] = { 48492 },	-- Getting a Leg Up
				["provider"] = { "n", 126346 },	-- Chadwick Paxton
				["coord"] = { 28.6, 43.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158950),	-- Death-Pledged Grips
					i(155342),	-- Death-Pledged Wristguards
					i(158949),	-- Loa Speaker's Grips
					i(155340),	-- Loa Speaker's Wristwraps
					i(155520),	-- Nazmani Warplate Bracelets
					i(158948),	-- Nazmani Warplate Handguards
					i(158947),	-- Ritual Flayer's Handguards
					i(155522),	-- Ritual Flayer's Wristwraps
				},
			}),
			q(47599, {	-- Revenge: Served Hot
				["sourceQuests"] = { 47631 },	-- Rendezvous with the Libation
				["qgs"] = {
					123526,	-- Ticker
					123436,	-- Ticker
				},
				["coord"] = { 74.7, 39.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151363),	-- Ticker's Rocket Launcher (QI!)
					i(159002),	-- Death-Pledged Girdle
					i(159001),	-- Loa Speaker's Cinch
					i(159000),	-- Nazmani Warplate Waistguard
					i(159003),	-- Ritual Flayer's Waistwrap
					i(159077),	-- Ticker's Spare Catalyst
				},
			}),
			q(48576, {	-- Safe Flying
				["sourceQuests"] = {
					48573,	-- Crocolisk Life
					48574,	-- Pulling Fangs
				},
				["provider"] = { "n", 126713 },	-- Sur'jan
				["coord"] = { 34.0, 78.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152610),	-- Sur'jan's Grappling Hook (QI!)
				},
			}),
			q(49131, {	-- Sanctifying Ground
				["sourceQuests"] = { 49126 },	-- Forcing Fate's Hand
				["provider"] = { "n", 127961 },	-- Princess Talanji
				["coord"] = { 58.5, 13.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47925, {	-- Shoak's on the Menu
				["description"] = "You must complete this storyline for Shoak to appear in Gloom Hollow.",
				["sourceQuests"] = { 47924 },	-- Profanity Filter
				["qgs"] = {
					125024,	-- Kajosh
					124933,	-- Kajosh
				},
				["coord"] = { 51.7, 33.2, NAZMIR },
				["groups"] = {
					n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({["races"] = ALLIANCE_ONLY},{
						["description"] = "Alliance rewards are only earned when completing this on a Horde character, not as Alliance.",
						["groups"] = {
							i(155465),	-- Wickerwoven Cord
							i(155462),	-- Wickerwoven Legwraps
							i(155481),	-- Crone-Seeker's Chain
							i(155489),	-- Waycrest Militia Belt
						},
					})),
					n(FACTION_HEADER_HORDE, bubbleDownSelf({["races"] = HORDE_ONLY},{
						i(158957),	-- Death-Pledged Greaves
						i(158966),	-- Death-Pledged Links
						i(158956),	-- Loa Speaker's Pants
						i(158965),	-- Loa Speaker's Sash
						i(158955),	-- Nazmani Warplate Legguards
						i(158964),	-- Nazmani Warplate Waistplate
						i(158958),	-- Ritual Flayer's Trousers
						i(158967),	-- Ritual Flayer's Waistband
					})),
				},
			}),
			q(48497, {	-- Show of Force
				["sourceQuests"] = { 48492 },	-- Getting a Leg Up
				["provider"] = { "n", 126346 },	-- Chadwick Paxton
				["coord"] = { 28.6, 43.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49932, {	-- Slumber No More
				["sourceQuests"] = {
					47697,	-- Krag'wa's Aid
					47602,	-- Ready For Action
				},
				["provider"] = { "n", 131978 },	-- Lashk
				["coord"] = { 67.4, 41.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(280480, {	-- Damaged Core
						["coord"] = { 66.9, 38.8, NAZMIR },
						["groups"] = { i(156593) },	-- Damaged Core (QI!)
					}),
				},
			}),
			q(48699, {	-- Sneaking into Zalamar
				["sourceQuests"] = { 49440 },	-- Blood Troll on the Outside
				["provider"] = { "n", 122795 },	-- Witch Doctor Kejabu
				["coord"] = { 39.6, 43.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152785),	-- Jomubu's Juju Powder (QI!)
				},
			}),
			q(47249, {	-- Soulbound
				["sourceQuests"] = {
					49432,	-- The Forlorn Soul
					49348,	-- A Desecrated Temple
					47491,	-- Remnants of the Damned
					-- may also require this quest. definitely doesn't require "'til death do us part"
					-- 47247,	-- That Which Haunts the Dead
				},
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155347),	-- Bloodrite Headchopper
					i(155344),	-- Ceremonial Limb Chopper
					i(155350),	-- Death Sworn Blade
					i(155348),	-- Death's Hunter Greatbow
					i(155365),	-- Grave Watcher's Longstaff
					i(155346),	-- Mambo Hex Axe
					i(155369),	-- Spooky-Mon Choppa
					i(155351),	-- Strong Juju Bloodletter
				},
			}),
			q(49070, {	-- Souls for the Death Loa
				["sourceQuests"] = { 49067 },	-- Beseeching Bwonsamdi
				["provider"] = { "n", 128096 },	-- Bwonsamdi
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49120, {	-- Speaking with the Dead
				["sourceQuests"] = {
					49080,	-- Cease all Summoning
					49071,	-- Dreadtick Combustion
					49070,	-- Souls for the Death Loa
				},
				["provider"] = { "n", 128096 },	-- Bwonsamdi
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49278, {	-- Spiritual Restoration
				["sourceQuests"] = { 47244 },	-- A Culling of Souls
				["provider"] = { "n", 124428 },	-- Hanzabu
				["coord"] = { 39.5, 43.9, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153514),	-- Hanzabu's Charm (QI!)
				},
			}),
			q(47525, {	-- Staying Hidden
				["sourceQuests"] = { 49902 },	-- To Gloom Hollow
				["provider"] = { "n", 122991 },	-- Shadow Hunter Mutumba
				["coord"] = { 67.3, 42.1, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(54939, {	-- Stubborn as a Bronzebeard
				["sourceQuests"] = { 54938 },	-- A Brother's Help
				["provider"] = { "n", 149867 },	-- Magni Bronzebeard
				["coord"] = { 57.8, 50.4, NAZMIR },
				["timeline"] = {
					ADDED_8_1_5,
					REMOVED_8_2_0,	-- Retired with the implementation of 8.2
					ADDED_9_2_0,	-- Reported available again 2022-03-21
				},
			}),
			q(49477, {	-- Surprise Backup
				["provider"] = { "o", 278577 },	-- Torn Horde Missive
				["coord"] = { 34.0, 39.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(50444, {	-- Taking the Loa Road
				["sourceQuests"] = {
					51145,	-- Curse of Jani [Alliance]
					47442,	-- Curse of Jani [Horde]
				},
				["provider"] = { "n", 136608 },	-- Jani
				["coord"] = { 53.9, 74.1, NAZMIR },
			}),
			q(50082, {	-- Target of Opportunity
				["sourceQuests"] = {
					50079,	-- Boom goes the Bomb
					50081,	-- The Road of Pain
				},
				["provider"] = { "n", 133125 },	-- Princess Talanji
				["coord"] = { 44.1, 62.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159036),	-- Death-Pledged Chain
					i(159027),	-- Death-Pledged Breeches
					i(159035),	-- Loa Speaker's Cincture
					i(159026),	-- Loa Speaker's Legwraps
					i(159034),	-- Nazmani Warplate Greatbelt
					i(159025),	-- Nazmani Warplate Legplates
					i(159037),	-- Ritual Flayer's Girdle
					i(159028),	-- Ritual Flayer's Pants
					--
					a(i(158620)),	-- Banisher Waistwrap
					a(i(158621)),	-- Crone-Seeker's Cincture
					a(i(158622)),	-- Waycrest Militia Buckle
					a(i(158619)),	-- Wickerwoven Waistband
				},
			}),
			q(48577, {	-- Terrorizing Their Eggs
				["sourceQuests"] = {
					48573,	-- Crocolisk Life
					48574,	-- Pulling Fangs
				},
				["provider"] = { "n", 126713 },	-- Sur'jan
				["coord"] = { 34.0, 78.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47247, {	-- That Which Haunts the Dead
				["sourceQuests"] = { 47880 },	-- A Tribute for Death
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155338),	-- Death-Pledged Belt
					i(159052),	-- Death-Pledged Grasps
					i(155337),	-- Loa Speaker's Cord
					i(159051),	-- Loa Speaker's Grasps
					i(155336),	-- Nazmani Warplate Girdle
					i(159050),	-- Nazmani Warplate Grasps
					i(155339),	-- Ritual Flayer's Belt
					i(159049),	-- Ritual Flayer's Grasps
				},
			}),
			q(47188, {	-- The Aid of the Loa
				["sourceQuests"] = { 47263 },	-- A Time of Revelation
				["provider"] = { "n", 121288 },	-- Princess Talanji
				["coord"] = { 39.2, 79.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(50138, {	-- The Battle of Bloodfire Ravine
				["sourceQuests"] = { 50076 },	-- Rally the Warriors
				["provider"] = { "n", 121288 },	-- Princess Talanji
				["coord"] = { 39.3, 77.6, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48584, {	-- The Blood of My Enemies
				["sourceQuests"] = {
					48576,	-- Safe Flying
					48577,	-- Terrorizing Their Eggs
					48578,	-- There's No Eye in Skyterror
				},
				["provider"] = { "n", 126713 },
				["coord"] = { 34.0, 78.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152611),	-- Coagulated Dreadtick Blood (QI!)
					i(156618),	-- Sur'jan's Dreadtick Gasser (QI!)
				},
			}),
			q(50083, {	-- The Crawg Ma'da
				["sourceQuests"] = { 50082 },	-- Target of Opportunity
				["provider"] = { "n", 133471 },	-- Rokhan
				["coord"] = { 45.4, 58.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(156868),	-- Crawg Poison Gland (QI!)
				},
			}),
			q(48480, {	-- The Fall of Kel'vax
				["sourceQuests"] = {
					48479,	-- Bones for Protection
					48478,	-- Kel'vax's Home
				},
				["provider"] = { "n", 126080 },	-- Shinga Deathwalker
				["coord"] = { 39.0, 59.9, NAZMIR },
			}),
			q(49432, {	-- The Forlorn Soul
				["sourceQuests"] = {
					47880,	-- A Tribute for Death
					47493,	-- A Lonely Spirit (breadcrumb)
				},
				["provider"] = { "n", 126588 },	-- Keula
				["coord"] = { 42.5, 31.3, NAZMIR },
				["races"] = HORDE_ONLY,
				-- SQ needs verification.
			}),
			q(47623, {	-- The Last Witch Doctor of Krag'wa
				["sourceQuests"] = {
					47659,	-- Hunt the Hunter
					47660,	-- Fallen Idols
				},
				["provider"] = { "n", 120551 },	-- Krag'wa the Huge
				["coord"] = { 75.3, 56.3, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157805),	-- Scepter of Rebirth (QI!)
				},
			}),
			q(47868, {	-- The Necropolis
				["sourceQuests"] = { 49278 },	-- Spiritual Restoration
				["provider"] = { "n", 124428 },	-- Hanzabu
				["coord"] = { 39.5, 43.9, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(50081, {	-- The Road of Pain
				["sourceQuests"] = {
					50138,	-- The Battle of Bloodfire Ravine
					50078,	-- Undying Totems
				},
				["provider"] = { "n", 132333 },	-- Princess Talanji
				["coord"] = { 44.9, 68.6, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47241, {	-- The Shadow of Death
				["sourceQuests"] = { 47188 },	-- The Aid of the Loa
				["provider"] = { "n", 121288 },	-- Princess Talanji
				["coord"] = { 39.2, 79.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(51302, {	-- The Underrot: Sealing G'huun's Corruption
				["sourceQuests"] = { 51244 },	-- What Rots Beneath
				["provider"] = { "n", 137112 },	-- Titan Keeper Hezrel
				["coord"] = { 51.7, 65.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47596, {	-- There Is No Plan "B"
				["sourceQuests"] = {
					47599,	-- Revenge: Served Hot
					47597,	-- No Goblin Left Behind
				},
				["provider"] = { "n", 123548 },	-- Ticker
				["coord"] = { 82.3, 27.2, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(271747, {	-- Broken Elevating Gears
						["coord"] = { 79.2, 27.5, NAZMIR },
						["groups"] = { i(151209) },	-- Broken Elevating Gears (QI!)
					}),
					o(271746, {	-- Damaged Artillery Barrel
						["coord"] = { 77.7, 25.5, NAZMIR },
						["groups"] = { i(151208) },	-- Damaged A.M.O.D. Barrel (QI!)
					}),
					o(271748, {	-- Shattered Firing Mechanism
						["coord"] = { 79.5, 22.2, NAZMIR },
						["groups"] = { i(151210) },	-- Shattered Firing Mechanism (QI!)
					}),
				},
			}),
			q(48578, {	-- There's No Eye in Skyterror
				["sourceQuests"] = {
					48573,	-- Crocolisk Life
					48574,	-- Pulling Fangs
				},
				["provider"] = { "n", 126713 },	-- Sur'jan
				["coord"] = { 34.0, 78.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152600),	-- Jarkadiax's Eye (QI!)
					i(155377),	-- Drained Bone Band
					i(159074),	-- Jarkadiax's Other Eye
				},
			}),
			q(47248, {	-- 'Til Death Do Us Part
				["sourceQuests"] = { 47880 },	-- A Tribute for Death
				["provider"] = { "n", 122706 },	-- Theurgist Salazae
				["coord"] = { 36.7, 27.4, NAZMIR },
				["races"] = HORDE_ONLY,
				-- SQ needs verification.
				["groups"] = {
					o(270991, {	-- Ancient Urn
						["coord"] = { 40.4, 26.4, NAZMIR },
						["groups"] = { i(150754) },	-- Valjabu's Tusk Ring (QI!)
					}),
				},
			}),
			q(49902, {	-- To Gloom Hollow
				["sourceQuests"] = { 49160 },	-- Torga's Eternal Return
				["provider"] = { "n", 127958 },	-- Kisha
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49081, {	-- To Kill a Loa
				["sourceQuests"] = { 49079 },	-- Hir'eek, the Bat Loa
				["provider"] = { "n", 128276 },	-- Jo'chunga
				["coord"] = { 31.3, 46.8, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					azeriteItem(155313),	-- Death-Pleged Chestguard
					azeriteItem(155325),	-- Death-Pledged Helm
					azeriteItem(155324),	-- Loa Speaker's Hood
					azeriteItem(155510),	-- Loa Speaker's Robes
					azeriteItem(155326),	-- Ritual Flayer's Mask
					azeriteItem(155314),	-- Ritual Flayer's Vest
					azeriteItem(155312),	-- Nazmani Warplate Chestplate
					azeriteItem(155323),	-- Nazmani Warplate Faceguard
					azewrongItem(175368),	-- Death-Pleged Chestguard (no azerite version)
					azewrongItem(175308),	-- Death-Pledged Helm (no azerite version)
					azewrongItem(175307),	-- Loa Speaker's Hood (no azerite version)
					azewrongItem(175374),	-- Loa Speaker's Robes (no azerite version)
					azewrongItem(175309),	-- Ritual Flayer's Mask (no azerite version)
					azewrongItem(175369),	-- Ritual Flayer's Vest (no azerite version)
					azewrongItem(175367),	-- Nazmani Warplate Chestplate (no azerite version)
					azewrongItem(175306),	-- Nazmani Warplate Faceguard (no azerite version)
				},
			}),
			q(47918, {	-- To Serve Krag'wa
				["sourceQuests"] = { 47696 },	-- Krag'wa the Terrible
				["provider"] = { "n", 120551 },	-- Krag'wa the Huge
				["coord"] = { 75.4, 56.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(49064, {	-- Torga, the Turtle Loa
				["sourceQuests"] = { 49185 },	-- Catching Up
				["provider"] = { "n", 127960 },	-- Lashk
				["coord"] = { 39.4, 44.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49160, {	-- Torga's Eternal Return
				["sourceQuests"] = { 49136 },	-- Jungo, Herald of G'huun
				["provider"] = { "n", 127960 },	-- Lashk
				["coord"] = { 56.5, 26.7, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153131),	-- Scroll of Eternal Return (QI!)
				},
			}),
			q(47540, {	-- Totemic Restoration
				["sourceQuests"] = {
					47622,	-- A Magical Glow
					47621,	-- A True Loa Feast
				},
				["provider"] = { "n", 120551 },	-- Krag'wa the Huge
				["coord"] = { 75.3, 56.4, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(50078, {	-- Undying Totems
				["sourceQuests"] = { 50076 },	-- Rally the Warriors
				["provider"] = { "n", 132624 },	-- Zandalari War Priest
				["coord"] = { 42.3, 72.5, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49949, {	-- Unwelcome Undead
				["sourceQuests"] = {
					49938,	-- Corrupted Earth
					49935,	-- How to Repair a Titan Keeper
					49937,	-- Recovering Remnants
				},
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 68.6, 35.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49082, {	-- Upward and Onward
				["sourceQuests"] = { 49081 },	-- To Kill a Loa
				["provider"] = { "n", 128276 },	-- Jo'chunga
				["coord"] = { 31.2, 46.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48669, {	-- Urok, Terror of the Wetlands
				["sourceQuests"] = { 47188 },	-- The Aid of the Loa
				["provider"] = { "n", 126713 },	-- Sur'jan
				["coord"] = { 38.8, 77.7, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48591, {	-- Urok's True Death
				["sourceQuests"] = {
					48590,	-- My Head and Shoulders
					48584,	-- The Blood of My Enemies
				},
				["provider"] = { "n", 131872 },	-- Sur'jan
				["coord"] = { 28.8, 72.5, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(48092, {	-- Vengeance of the Frogs
				["sourceQuest"] = 47918,	-- To Serve Krag'wa
				["provider"] = { "n", 125317 },	-- Shadow Hunter Narez
				["coord"] = { 77.7, 53.2, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(49956, {	-- Void is Prohibited
				["sourceQuests"] = {
					49950,	-- Blood Purification
					49941,	-- Bone Procession
					49949,	-- Unwelcome Undead
				},
				["provider"] = { "n", 131253 },	-- Titan Keeper Hezrel
				["coord"] = { 68.6, 35.0, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(52480, {	-- WANTED: Ayame (A)
				["provider"] = { "o", 293568 },	-- Wanted Poster
				["coord"] = { 62.3, 41.3, NAZMIR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52477, {	-- WANTED: Ayame (H)
				["provider"] = { "o", 293567 },	-- Wanted Poster
				["coord"] = { 67.2, 40.8, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(51139, {	-- WANTED: Tojek (A)
				["provider"] = { "o", 287327 },	-- Scouting Report
				["coord"] = { 62.1, 41.0, NAZMIR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51089, {	-- WANTED: Tojek (H)
				["provider"] = { "o", 287232 },	-- Scouting Report
				["coord"] = { 39.5, 79.9, NAZMIR },
				["races"] = HORDE_ONLY,
			}),
			q(47250, {	-- We'll Meet Again
				["sourceQuests"] = { 47249 },	-- Soulbound
				["provider"] = { "n", 122766 },	-- Bwonsamdi
				["coord"] = { 39.5, 30.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(245489, {	-- Zuldazar Stool (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			q(51244, {	-- What Rots Beneath
				["sourceQuests"] = { 50087 },	-- Ateena's Fall
				["provider"] = { "n", 140656 },	-- Rokhan
				["coord"] = { 50.5, 58.3, NAZMIR },
				["races"] = HORDE_ONLY,
				-- is this a breadcrumb?
			}),
			q(49774, {	-- Won't Leaf Him to Die
				["sourceQuests"] = { 50933 },	-- An Unfortunate Event
				["provider"] = { "n", 131231 },	-- Jin'Tiki
				["coord"] = { 24.1, 53.1, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(279293, {	-- Sweetleaf Bush
						i(155912),	-- Sweetleaf (QI!)
					}),
				},
			}),
			q(53781, {	-- Eyir
				["sourceQuests"] = { 54145 },	-- The Loa of Death
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(53780, {	-- Jailor of the Damned
				["sourceQuests"] = { 54145 },	-- The Loa of Death
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(53782, {	-- Mysteries of Death
				["sourceQuests"] = {
					54147,	-- Confront The Val'kyr
					53780,	-- Jailor of the Damned
				},
				["provider"] = { "n", 122688 },	-- Bwonsamdi
				["coord"] = { 39.5, 24.6, NAZMIR },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			q(48823, {	-- Projection Destruction
				["sourceQuests"] = { 48854 },	-- Offer of Power
				["provider"] = { "n", 127215 },	-- Shadow Hunter Da'jul
				["coord"] = { 31.0, 52.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152727),	-- Da'jul's Fire Mojo (QI!)
				},
			}),
			q(54145, {	-- The Loa of Death
				["sourceQuests"] = { 53779 },	-- The Lies of a Loa
				["provider"] = { "n", 146824 },	-- Princess Talanji
				["coord"] = { 39.5, 27.0, NAZMIR },
				["races"] = HORDE_ONLY,
				["lvl"] = 120,
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 50 },
				["races"] = HORDE_ONLY,
			},{
				-- TODO: probably can't do after a certain level?
				q(48934, {	-- Mark of the Damned
					["sourceQuests"] = {
						47247,	-- That Which Haunts the Dead
						47491,	-- Remnants of the Damned
					},
				}),
				q(47996, {	-- Mawfiend Extermination
					["sourceQuests"] = {
						47924,	-- Profanity Filter
					},
				}),
				q(48093, {	-- Nagating the Threat
					["description"] = "This Bonus Objective pops up after accepting |cffffff00A Krag'wa's Chosen|r.",
				}),
				q(48588, {	-- Purge the Infection
					["sourceQuests"] = {
						48584,	-- The Blood of My Enemies
						48590,	-- My Head and Shoulders
					},
				}),
				q(50080, {	-- Raiding the Raiders
					["description"] = "This Bonus Objective pops up after accepting |cffffff00A Message of Blood and Fire|r.",
					["sourceQuests"] = { 50083 },	-- The Crawg Ma'da
					["groups"] = {
						i(157029),	-- Bag of Zandalari Supplies (QI!)
					},
				}),
				q(48852, {	-- Stopping Zardax
					["sourceQuests"] = { 48854 },	-- Offer of Power
				}),
				q(47756, {	-- The Libation's Liberation
					["sourceQuests"] = {
						47631,	-- Rendezvous with the Libation
					},
				}),
				q(51689, {	-- Tortollan Rescue
					["sourceQuests"] = {
						49125,	-- Negative Blood
					},
				}),
				q(49406, {	-- Zalamar Slaughter
					["sourceQuests"] = {
						49078,	-- Poisoning the Brood
						48800,	-- Mark of the Bat
					},
				}),
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(NAZMIR, {
			n(QUESTS, {
				q(49179),	-- triggered after speaking to Witch Doctor Kejabu after killing Hir'eek, on quest "Upward and "Onward"
				q(47531),	-- triggered when turning in "Krag'wa the Terrible"
				q(47703),	-- triggered while on #47631, "Rendezvous with the Libation"
				q(50465),	-- triggered with #49950, "Blood Purification"
				q(52294),	-- triggers with Krag'wa after accepting "The Last Witch Doctor of Krag'wa"
				q(47698),	-- Nazmir - Ticker is summoned
				q(49294),	-- Nazmir - triggers when Hanzabu talks about the Zo'bal shrine
				q(48779),	-- Nazmir - triggers after activating all the spirits in Zo'bal during "Spiritual Restoration"
				q(48781),	-- Nazmir - Hir'eek is summoned in Zalamar
				q(49367, {	-- Nazmir dialogue around the Necropolis: "What is happening?  I was sick in my bed... and now... where am I?"
					["isWorldQuest"] = true,	-- without this field, this quest inexplicably shows up in /attwq for some characters
				}),
				q(49368, {	-- Nazmir dialogue around the Necropolis: "De voice... he is calling to us... we must obey!"
					["isWorldQuest"] = true,	-- for some reason, this shows up in /attwq for characters who haven't done it. haunted!
				}),
				q(49369, {	-- Nazmir dialogue around the Necropolis: "Do you hear it?  It's Bwonsamdi's call!  Eternity is near!"
					["isWorldQuest"] = true,	-- unsure if this erroneously shows up in /attwq like the others; if so, it needs to be marked as a WQ
				}),
				q(49695, {	-- immediately after channeling on the drum finishes during "A Tribute For Death"
					["isWorldQuest"] = true,	-- haunted HQT that shows in /attwq
				}),
				-- q(54773),	-- Warmode version of March on the Marsh
			}),
		}),
	}),
})));
