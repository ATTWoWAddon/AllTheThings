---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ARDENWEALD, {
		n(QUESTS, {
			header(HEADERS.Achievement, 14164, {	-- Awaken, Ardenweald
				------ Chapter 1 ------
				q(60338, {	-- Journey to Ardenweald
					["sourceQuests"] = { 61715 },	-- Request of the Highlord
					["provider"] = { "n", 159478 },	-- Tal-Inara
					["coord"] = { 38.8, 69.9, ORIBOS },
				}),
				q(60763, {	-- I Moustache You to Lend a Hand
					["sourceQuests"] = { 60338 },	-- Journey to Ardenweald
					["provider"] = { "n", 168341 },	-- Lady Moonberry
					["coord"] = { 68.2, 18.3, ARDENWEALD },
					["groups"] = {
						i(178747),	-- Night Lily (QI!)
					},
				}),
				q(60341, {	-- First on the Agenda
					["sourceQuests"] = { 60763 },	-- I Moustache You to Lend a Hand
					["provider"] = { "n", 157788 },	-- Lady Moonberry
					["coord"] = { 65.0, 19.5, ARDENWEALD },
				}),
				q(60778, {	-- Wildseed Rescue
					["sourceQuests"] = { 60341 },	-- First on the Agenda
					["provider"] = { "n", 170175 },	-- Featherlight
					["coord"] = { 65.0, 19.5, ARDENWEALD },
				}),
				q(60857, {	-- We Can't Save Them All
					["sourceQuests"] = { 60778 },	-- Wildseed Rescue
					["provider"] = { "n", 170324 },	-- Featherlight
					["coord"] = { 67.7, 20.6, ARDENWEALD },
					["groups"] = {
						i(180436),	-- List of wildseeds (QI!)
					},
				}),
				q(60859, {	-- Souls of the Forest
					["sourceQuests"] = { 60857 },	-- We Can't Save Them All
					["provider"] = { "n", 170537 },	-- Te'zan
					["coord"] = { 67.8, 24.1, ARDENWEALD },
					["groups"] = {
						i(175654),	-- Dreamthorn Sabatons
						i(175652),	-- Grove Warden's Warboots
						i(175653),	-- Spirit Tender's Slippers
						i(175655),	-- Starshroud Boots
					},
				}),
				q(57787, {	-- Keep to the Path
					["sourceQuests"] = { 60859 },	-- Souls of the Forest
					["provider"] = { "n", 170533 },	-- Featherlight
					["coord"] = { 65.6, 27.9, ARDENWEALD },
				}),
				------ Chapter 2 ------
				q(57816, {	-- Dreamweaver
					["sourceQuests"] = { 57787 },	-- Keep to the Path
					["provider"] = { "n", 158487 },	-- Droman Tashmur
					["coord"] = { 63.4, 36.2, ARDENWEALD },
				}),
				q(60567, {	-- Shooing Wildlife
					["sourceQuests"] = { 57816 },	-- Dreamweaver
					["provider"] = { "n", 169116 },	-- Dreamweaver
					["coord"] = { 64.2, 41.2, ARDENWEALD },
				}),
				q(60563, {	-- Tending to Wildseeds
					["sourceQuests"] = { 57816 },	-- Dreamweaver
					["provider"] = { "n", 169116 },	-- Dreamweaver
					["coord"] = { 64.2, 41.2, ARDENWEALD },
					["groups"] = {
						i(179389),	-- Animacone (QI!)
					},
				}),
				q(60575, {	-- Belly Full of Fae
					["sourceQuests"] = {
						60567,	-- Shooing Wildlife
						60563,	-- Tending to Wildseeds
					},
					["provider"] = { "n", 169202 },	-- Dreamweaver
					["coord"] = { 61.4, 40.9, ARDENWEALD },
					["groups"] = {
						i(179921),	-- Hydra Gutter (QI!)
						i(175673),	-- Dreamthorn Chain
						i(175671),	-- Grove Warden's Girdle
						i(175672),	-- Spirit Tender's Cord
						i(175674),	-- Starshroud Belt
					},
				}),
				q(60577, {	-- Hungry for Animacones
					["sourceQuests"] = {
						60567,	-- Shooing Wildlife
						60563,	-- Tending to Wildseeds
					},
					["provider"] = { "n", 169202 },	-- Dreamweaver
					["coord"] = { 61.4, 40.9, ARDENWEALD },
					["groups"] = {
						i(179922),	-- Animacone (QI!)
					},
				}),
				q(60594, {	-- One Special Spirit
					["sourceQuests"] = {
						60575,	-- Belly Full of Fae
						60577,	-- Hungry for Animacones
					},
					["provider"] = { "n", 169217 },	-- Dreamweaver
					["coord"] = { 62.1, 36.4, ARDENWEALD },
					["groups"] = {
						i(179978),	-- Infused Animacones (QI!)
						i(179983),	-- Infused Animacones (QI!)
					},
				}),
				q(57947, {	-- Spirits of the Glen
					["sourceQuests"] = { 57787 },	-- Keep to the Path
					["provider"] = { "n", 158487 },	-- Droman Tashmur
					["coord"] = { 63.4, 36.2, ARDENWEALD },
				}),
				q(57948, {	-- Nothing Left to Give
					["sourceQuests"] = { 57947 },	-- Spirits of the Glen
					["provider"] = { "n", 159638 },	-- Choofa
					["coord"] = { 67.1, 32.1, ARDENWEALD },
				}),
				q(57949, {	-- They Need to Calm Down
					["sourceQuests"] = { 57947 },	-- Spirits of the Glen
					["provider"] = { "n", 159638 },	-- Choofa
					["coord"] = { 97.1, 32.1, ARDENWEALD },
					["groups"] = {
						i(176445),	-- Soulweb (QI!)
					},
				}),
				q(57950, {	-- Mizik the Haughty
					["sourceQuests"] = {
						57948,	-- Nothing Left to Give
						57949,	-- They Need to Calm Down
					},
					["provider"] = { "n", 159639 },	-- Choofa
				}),
				q(57951, {	-- Souls Come Home
					["sourceQuests"] = { 57950 },	-- Mizik the Haughty
					["provider"] = { "n", 159639 },	-- Choofa
					["coord"] = { 67.1, 32.1, ARDENWEALD },
					["groups"] = {
						i(173292),	-- Dreamcatcher Anima (QI!)
						i(175659),	-- Dreamthorn Handguards
						i(175657),	-- Grove Warden's Gauntlets
						i(175658),	-- Spirit Tender's Handwraps
						i(175656),	-- Starshroud Gloves
					},
				}),
				------ Chapter 3 ------
				q(60600, {	-- Preparing for the Winter Queen
					["sourceQuests"] = {
						60594,	-- One Special Spirit
						57951,	-- Souls Come Home
					},
					["provider"] = { "n", 169031 },	-- Lady Moonberry
					["coord"] = { 63.5, 36.2, ARDENWEALD },
				}),
				q(60624, {	-- Ride to Heartwood Grove
					["sourceQuests"] = { 60600 },	-- Preparing for the Winter Queen
					["provider"] = { "n", 158487 },	-- Droman Tashmur
					["coord"] = { 63.5, 36.2, ARDENWEALD },
				}),
				q(60639, {	-- Heart of the Grove
					["sourceQuests"] = { 60624 },	-- Ride to Heartwood Grove
					["provider"] = { "n", 169686 },	-- Niya
					["coord"] = { 66.9, 26.5, ARDENWEALD },
				}),
				q(60638, {	-- Recovering Wildseeds
					["sourceQuests"] = { 60624 },	-- Ride to Heartwood Grove
					["provider"] = { "n", 169686 },	-- Niya
					["coord"] = { 66.9, 26.5, ARDENWEALD },
					["groups"] = {
						i(180126),	-- Drained Wildseed (QI!)
					},
				}),
				q(60637, {	-- The End of Former Friends
					["sourceQuests"] = { 60624 },	-- Ride to Heartwood Grove
					["provider"] = { "n", 169686 },	-- Niya
					["coord"] = { 66.9, 26.5, ARDENWEALD },
				}),
				q(60647, {	-- Recovering the Animacones
					["sourceQuests"] = {
						60639,	-- Heart of the Grove
						60638,	-- Recovering Wildseeds
						60637,	-- The End of Former Friends
					},
					["qgs"] = {
						169748,	-- Niya (pre-pickup)
						169868,	-- Niya	(post-pickup)
					},
					["coord"] = { 68.4, 24.5, ARDENWEALD },
					["groups"] = {
						i(180172),	-- Animacone (QI!)
					},
				}),
				q(60648, {	-- Survivors of Heartwood Grove
					["sourceQuests"] = {
						60639,	-- Heart of the Grove
						60638,	-- Recovering Wildseeds
						60637,	-- The End of Former Friends
					},
					["qgs"] = {
						169748,	-- Niya (pre-pickup)
						169868,	-- Niya	(post-pickup)
					},
					["coord"] = { 68.4, 24.5, ARDENWEALD },
				}),
				q(60671, {	-- The Sacrifices We Must Make
					["sourceQuests"] = {
						60647,	-- Recovering the Animacones
						60648,	-- Survivors of Heartwood Grove
					},
					["provider"] = { "n", 169868 },	-- Niya
				}),
				q(60709, {	-- Recovering the Heart
					["sourceQuests"] = { 60671 },	-- The Sacrifices We Must Make
					["provider"] = { "n", 169956 },	-- Warden Casad
					["coord"] = { 66.2, 23.8, ARDENWEALD },
				}),
				q(60724, {	-- Heartless
					["sourceQuests"] = { 60709 },	-- Recovering the Heart
					["provider"] = { "n", 170012 },	-- Niya
					["coord"] = { 65.3, 26.6, ARDENWEALD },
					["groups"] = {
						i(175650),	-- Dreamthorn Chainmail
						i(175649),	-- Grove Warden's Breastplate
						i(175648),	-- Spirit Tender's Robe
						i(175651),	-- Starshroud Vest
					},
				}),
				q(60519, {	-- Audience with the Winter Queen
					["sourceQuests"] = { 60724 },	-- Heartless
					["provider"] = { "n", 158487 },	-- Droman Tashmur
					["coord"] = { 63.4, 36.0, ARDENWEALD },
				}),
				------ Chapter 4 ------
				q(60521, {	-- Call of the Hunt
					["sourceQuests"] = { 60519 },	-- Audience with the Winter Queen
					["provider"] = { "n", 169031 },	-- Lady Moonberry
					["coord"] = { 63.5, 36.2, ARDENWEALD },
				}),
				q(60629, {	-- Extreme Recycling
					["sourceQuests"] = { 60521 },	-- Call of the Hunt
					["provider"] = { "n", 169584 },	-- Hunt-Captain Korayn
					["coord"] = { 51.3, 34.0, ARDENWEALD },
					["groups"] = {
						i(180061),	-- Fae Weapon (QI!)
					},
				}),
				q(60628, {	-- The Missing Hunters
					["sourceQuests"] = { 60521 },	-- Call of the Hunt
					["provider"] = { "n", 169584 },	-- Hunt-Captain Korayn
					["coord"] = { 51.3, 34.0, ARDENWEALD },
				}),
				q(60631, {	-- Big Problem, Little Vorkai
					["sourceQuests"] = {
						60629,	-- Extreme Recycling
						60628,	-- The Missing Hunters
					},
					["provider"] = { "n", 169584 },	-- Hunt-Captain Korayn
					["coord"] = { 51.3, 34.0, ARDENWEALD },
				}),
				q(60630, {	-- Totem Eclipse
					["sourceQuests"] = {
						60629,	-- Extreme Recycling
						60628,	-- The Missing Hunters
					},
					["provider"] = { "n", 169584 },	-- Hunt-Captain Korayn
					["coord"] = { 51.3, 34.0, ARDENWEALD },
				}),
				q(60632, {	-- I Know Your Face
					["sourceQuests"] = {
						60631,	-- Big Problem, Little Vorkai
						60630,	-- Totem Eclipse
					},
					["provider"] = { "n", 169772 },	-- Hunt-Captain Korayn
					["groups"] = {
						i(175670),	-- Dreamthorn Spaulders
						i(175668),	-- Grove Warden's Shoulderplates
						i(175669),	-- Spirit Tender's Mantle
						i(175667),	-- Starshroud Shoulderpads
					},
				}),
				q(60522, {	-- Return to Tirna Vaal
					["sourceQuests"] = { 60632 },	-- I Know Your Face
					["provider"] = { "n", 169935 },	-- Ara'lon
					["coord"] = { 51.3, 34.0, ARDENWEALD },
					["groups"] = {
						i(180207),	-- Spirit Cradle (QI!)
					},
				}),
				q(60520, {	-- Nightmares Manifest
					["sourceQuests"] = { 60522 },	-- Return to Tirna Vaal
					["provider"] = { "n", 169142 },	-- Dreamweaver
					["coord"] = { 65.2, 36.6, ARDENWEALD },
				}),
				------ Chapter 5 ------
				q(60738, {	-- The Way to Hibernal Hollow
					["sourceQuests"] = { 60520 },	-- Nightmares Manifest
					["provider"] = { "n", 169142 },	-- Dreamweaver
					["coord"] = { 65.2, 36.6, ARDENWEALD },
				}),
				q(60764, {	-- Soothing Song
					["sourceQuests"] = { 60738 },	-- The Way to Hibernal Hollow
					["provider"] = { "n", 170172 },	-- Dreamweaver
					["coord"] = { 64.5, 39.0, ARDENWEALD },
				}),
				q(60839, {	-- Remnants of the Wild Hunt
					["sourceQuests"] = { 60764 },	-- Soothing Song
					["provider"] = { "n", 170290 },	-- Ara'lon
					["coord"] = { 62.3, 45.5, ARDENWEALD },
				}),
				q(60856, {	-- Toppling the Brute
					["sourceQuests"] = { 60839 },	-- Remnants of the Wild Hunt
					["provider"] = { "n", 170485 },	-- Ara'lon
					["coord"] = { 64.2, 49.9, ARDENWEALD },
					["groups"] = {
						i(175986, {	-- Grove Defender's Maul
							["filterID"] = TWO_HANDED_MACES,	-- Blizzard..
						}),
						i(175985),	-- Grove Defender's Pummeler
						i(175987),	-- Grove Defender's Spear
						i(175989),	-- Grove Defender's Sword
						i(175983),	-- Heartwood Bow
						i(175984),	-- Heartwood Dagger
						i(175992),	-- Heartwood Warglaive
						i(178029),	-- Meadow Guardian's Focus
						i(175990),	-- Meadow Guardian's Shield
						i(175988),	-- Meadow Guardian's Staff
					},
				}),
				q(60881, {	-- Ride of the Wild Hunt
					["sourceQuests"] = { 60856 },	-- Toppling the Brute
					["provider"] = { "n", 170485 },	-- Ara'lon
					["coord"] = { 64.2, 49.9, ARDENWEALD },
				}),
				q(60901, {	-- Passage to Hibernal Hollow
					["sourceQuests"] = { 60881 },	-- Ride of the Wild Hunt
					["provider"] = { "n", 170290 },	-- Ara'lon
					["coord"] = { 62.3, 45.5, ARDENWEALD },
				}),
				q(60905, {	-- Infusing the Wildseed
					["sourceQuests"] = { 60901 },	-- Passage to Hibernal Hollow
					["provider"] = { "n", 160894 },	-- Droman Aliothe
					["coord"] = { 60.0, 53.9, ARDENWEALD },
				}),
				------ Chapter 6 ------
				q(58473, {	-- Echoes of Tirna Noch
					["sourceQuests"] = { 60905 },	-- Infusing the Wildseed
					["provider"] = { "n", 160963 },	-- Ara'lon
					["coord"] = { 60.1, 52.8, ARDENWEALD },
				}),
				q(58483, {	-- Mementos
					["sourceQuests"] = { 58473 },	-- Echoes of Tirna Noch
					["qgs"] = {
						161379,	-- Niya
						161447,	-- Niya
					},
					["coord"] = { 68.4, 57.4, ARDENWEALD },
					["groups"] = {
						i(174219),	-- Stolen Memento (QI!)
					},
				}),
				q(58480, {	-- Read the Roots
					["sourceQuests"] = { 58473 },	-- Echoes of Tirna Noch
					["qgs"] = {
						161378,	-- Ara'lon
						161446,	-- Ara'lon
					},
					["coord"] = { 68.4, 57.4, ARDENWEALD },
				}),
				q(58484, {	-- Take What You Can
					["sourceQuests"] = { 58473 },	-- Echoes of Tirna Noch
					["qgs"] = {
						161378,	-- Ara'lon
						161446,	-- Ara'lon
					},
					["coord"] = { 68.4, 57.4, ARDENWEALD },
					["groups"] = {
						i(180287),	-- Plundered Anima (QI!)
					},
				}),
				q(58486, {	-- He's Drust in the Way
					["sourceQuests"] = {
						58483,	-- Mementos
						58480,	-- Read the Roots
						58484,	-- Take What You Can
					},
					["provider"] = { "n", 161446 },	-- Ara'lon
				}),
				q(58488, {	-- Go for the Heart
					["sourceQuests"] = { 58486 },	-- He's Drust in the Way
					["provider"] = { "n", 161492 },	-- Ara'lon
					["coord"] = { 71.4, 54.5, ARDENWEALD },
					["groups"] = {
						i(174269),	-- Heart of Tirna Noch (QI!)
					},
				}),
				q(58524, {	-- Sparkles Rain from Above
					["sourceQuests"] = { 58488 },	-- Go for the Heart
					["provider"] = { "n", 161494 },	-- Lady Moonberry
					["coord"] = { 71.5, 54.6, ARDENWEALD },
					["groups"] = {
						i(175767),	-- Glitterwing Greatcloak
					},
				}),
				------ Chapter 7 ------
				q(58592, {	-- Caring for the Caretakers
					["sourceQuests"] = { 60572 },	-- For the Sake of Spirit
					["provider"] = { "n", 160962 },	-- Dreamweaver
					["coord"] = { 60.0, 52.9, ARDENWEALD },
				}),
				q(58591, {	-- Despoilers
					["sourceQuests"] = { 58524 },	-- Sparkles Rain from Above
					["provider"] = { "n", 160894 },	-- Droman Aliothe
					["coord"] = { 60.0, 53.9, ARDENWEALD },
				}),
				q(60572, {	-- For the Sake of Spirit
					["sourceQuests"] = { 58524 },	-- Sparkles Rain from Above
					["provider"] = { "n", 160894 },	-- Droman Aliothe
					["coord"] = { 60.0, 53.9, ARDENWEALD },
				}),
				q(58589, {	-- The Restless Dreamer
					["sourceQuests"] = { 60572 },	-- For the Sake of Spirit
					["provider"] = { "n", 160962 },	-- Dreamweaver
					["coord"] = { 60.0, 52.9, ARDENWEALD },
				}),
				q(58590, {	-- Visions of the Dreamer: Origins
					["sourceQuests"] = {
						58592,	-- Caring for the Caretakers
						58591,	-- Despoilers
						58589,	-- The Restless Dreamer
					},
					["provider"] = { "n", 160962 },	-- Dreamweaver
					["coord"] = { 60.0, 52.9, ARDENWEALD },
				}),
				q(60578, {	-- Visions of the Dreamer: The Betrayal
					["sourceQuests"] = {
						58592,	-- Caring for the Caretakers
						58591,	-- Despoilers
						58589,	-- The Restless Dreamer
					},
					["provider"] = { "n", 160962 },	-- Dreamweaver
					["coord"] = { 60.0, 52.9, ARDENWEALD },
				}),
				q(58593, {	-- End of the Dream
					["sourceQuests"] = {
						58590,	-- Visions of the Dreamer: Origins
						60578,	-- Visions of the Dreamer: The Betrayal
					},
					["provider"] = { "n", 160962 },	-- Dreamweaver
					["coord"] = { 60.0, 52.9, ARDENWEALD },
					["maps"] = { 1642 },	-- Val'sharah (Scenario Map)
					["groups"] = {
						i(175661),	-- Dreamthorn Headgear
						i(175647),	-- Grove Warden's Greathelm
						i(175660),	-- Spirit Tender's Hood
						i(175662),	-- Starshroud Helm
					},
				}),
				------ Chapter 8 ------
				q(58719, {	-- The Droman's Call
					["sourceQuests"] = { 58593 },	-- End of the Dream
					["provider"] = { "n", 160894 },	-- Droman Aliothe
					["coord"] = { 60.0, 53.9, ARDENWEALD },
					["groups"] = {
						i(174864),	-- Droman's Hunting Horn (QI!)
					},
				}),
				q(58714, {	-- The Forest Has Eyes
					["sourceQuests"] = { 58593 },	-- End of the Dream
					["provider"] = { "n", 161847 },	-- Lady Moonberry
					["coord"] = { 59.9, 53.0, ARDENWEALD },
				}),
				q(58720, {	-- Missing!
					["sourceQuests"] = {
						58719,	-- The Droman's Call
						58714,	-- The Forest Has Eyes
					},
					["provider"] = { "n", 160894 },	-- Droman Aliothe
					["coord"] = { 60.1, 53.8, ARDENWEALD },
				}),
				q(60621, {	-- Enemies at the Gates
					["sourceQuests"] = { 58720 },	-- Missing!
					["provider"] = { "n", 162541 },	-- Hunt-Captain Korayn
					["coord"] = { 55.9, 57.6, ARDENWEALD },
				}),
				q(58869, {	-- Battle for Hibernal Hollow
					["sourceQuests"] = { 60621 },	-- Enemies at the Gates
					["provider"] = { "n", 169541 },	-- Droman Aliothe
					["coord"] = { 59.9, 53.1, ARDENWEALD },
				}),
				q(60661, {	-- Dying Dreams
					["sourceQuests"] = { 58869 },	-- Battle for Hibernal Hollow
					["provider"] = { "n", 161847 },	-- Lady Moonberry
					["coord"] = { 60.0, 53.0, ARDENWEALD },
				}),
				q(58721, {	-- Awaken the Dreamer
					["sourceQuests"] = { 60661 },	-- Dying Dreams
					["provider"] = { "n", 169869 },	-- Lord Herne
					["coord"] = { 47.9, 53.8, ARDENWEALD },
				}),
				q(58723, {	-- The Court of Winter
					["sourceQuests"] = { 58721 },	-- Awaken the Dreamer
					["provider"] = { "n", 162968 },	-- Winter Queen
					["coord"] = { 45.2, 63.0, ARDENWEALD },
					["groups"] = {
						i(175710),	-- Night Courtier's Ring
					},
				}),
				q(58724, {	-- The Queen's Request
					["sourceQuests"] = { 58723 },	-- The Court of Winter
					["provider"] = { "n", 161847 },	-- Winter Queen
					["coord"] = { 48.9, 33.5, ARDENWEALD },
				}),
				------ Continues in Revendreth ------
			}),
			header(HEADERS.AchCriteria, 14800.01, {	-- Thread of Hope
				q(57661, {	-- Silk Shortage
					["provider"] = { "n", 158556 },	-- Aithlyn
					["coord"] = { 59.5, 31.5, THE_TRUNK },
				}),
				q(60062, {	-- The Shattered Harp
					["sourceQuests"] = { 57661 },	-- Silk Shortage
					["provider"] = { "o", 350804 },	-- Broken Harp
					["coord"] = { 38.1, 28.7, ARDENWEALD },
					["groups"] = {
						i(178138),	-- Harp Piece (QI!)
					},
				}),
				q(60063, {	-- A Song for Silkstriders
					["sourceQuests"] = { 60062 },	-- The Shattered Harp
					["provider"] = { "n", 167047 },	-- Artisan Rees
					["coord"] = { 37.0, 29.6, ARDENWEALD },
					["groups"] = {
						i(178144),	-- Raw Silkstrider Silk (QI!)
						i(178143),	-- Silkstrider Harp (QI!)
					},
				}),
				q(60064, {	-- Save Ol' Gertie
					["sourceQuests"] = { 60062 },	-- The Shattered Harp
					["provider"] = { "n", 167047 },	-- Artisan Rees
					["coord"] = { 37.0, 29.6, ARDENWEALD },
				}),
				q(60065, {	-- Thread of Hope
					["sourceQuests"] = { 60064 },	-- Save Ol' Gertie
					["provider"] = { "n", 159388 },	-- Gertie Jr.
					["coord"] = { 37.2, 25.9, ARDENWEALD },
				}),
				q(60061, {	-- Tough as Silk
					["sourceQuests"] = { 57661 },	-- Silk Shortage
					["provider"] = { "n", 159270 },	-- Caretaker Lillythistle
					["coord"] = { 38.9, 29.9, ARDENWEALD },
				}),
				q(60066, {	-- Silk for Ardenweald
					["sourceQuests"] = {
						60063,	-- A Song for Silkstriders
						60065,	-- Thread of Hope
						60061,	-- Tough as Silk
					},
					["provider"] = { "n", 159270 },	-- Caretaker Lillythistle
					["coord"] = { 39.0, 29.9, ARDENWEALD },
				}),
			}),
			header(HEADERS.AchCriteria, 14800.02, {	-- When a Gorm Eats a God
				q(57952, {	-- In Need of Gorm Gris
					["sourceQuests"] = { 60519 },	-- Audience with the Winter Queen
					["provider"] = { "n", 158921 },	-- Guardian Kota
					["coord"] = { 62.6, 36.0, ARDENWEALD },
				}),
				q(57818, {	-- Nothing Goes to Waste
					["sourceQuests"] = { 57952 },	-- In Need of Gorm Gris
					["provider"] = { "n", 158969 },	-- Master Sha'lor
					["coord"] = { 64.8, 38.9, ARDENWEALD },
					["groups"] = {
						i(172953),	-- Depleted Wildseed (QI!)
					},
				}),
				q(57824, {	-- Collection Day
					["sourceQuests"] = { 57818 },	-- Nothing Goes to Waste
					["provider"] = { "n", 158969 },	-- Master Sha'lor
					["coord"] = { 64.8, 38.9, ARDENWEALD },
					["groups"] = {
						i(173268),	-- Fresh Gorm Gris (QI!)
						i(172955),	-- Gormherd Branch (QI!)
					},
				}),
				q(57825, {	-- Delivery for Guardian Kota
					["sourceQuests"] = { 57824 },	-- Collection Day
					["provider"] = { "n", 158969 },	-- Master Sha'lor
					["coord"] = { 64.8, 38.9, ARDENWEALD },
					["groups"] = {
						i(173268),	-- Fresh Gorm Gris (QI!)
						i(175741),	-- Gormgris Gorget
					},
				}),
				q(61051, {	-- The Absent-Minded Artisan
					["sourceQuests"] = { 57825 },	-- Delivery for Guardian Kota
					["provider"] = { "n", 158921 },	-- Guardian Kota
					["coord"] = { 62.6, 36.0, ARDENWEALD },
				}),
				q(58024, {	-- Burrows Away
					["sourceQuests"] = { 61051 },	-- The Absent-Minded Artisan
					["provider"] = { "n", 171195 },	-- Gorm Burrow
					["coord"] = { 62.1, 29.9, ARDENWEALD },
					["groups"] = {
						i(173534),	-- Gormherd Branch (QI!)
					},
				}),
				q(58022, {	-- Finish What He Started
					["sourceQuests"] = { 61051 },	-- The Absent-Minded Artisan
					["provider"] = { "n", 171099 },	-- Guardian Kota
					["coord"] = { 62.8, 32.1, ARDENWEALD },
					["groups"] = {
						i(173534),	-- Gormherd Branch (QI!)
						i(180543),	-- Wild Gorm Gris (QI!)
					},
				}),
				q(58023, {	-- One Big Problem
					["sourceQuests"] = { 61051 },	-- The Absent-Minded Artisan
					["provider"] = { "n", 171099 },	-- Guardian Kota
					["coord"] = { 62.8, 32.1, ARDENWEALD },
				}),
				q(58025, {	-- Queen of the Underground
					["sourceQuests"] = { 58023 },	-- One Big Problem
					["provider"] = { "n", 160155 },	-- Guardian Kota
					["coord"] = { 59.6, 33.4, ARDENWEALD },
					["groups"] = {
						i(172955),	-- Gormherd Branch (QI!)
						i(173534),	-- Gormherd Branch (QI!)
					},
				}),
				q(58026, {	-- When a Gorm Eats a God
					["sourceQuests"] = { 58025 },	-- Queen of the Underground
					["provider"] = { "n", 160155 },	-- Guardian Kota
					["coord"] = { 59.6, 33.4, ARDENWEALD },
					["groups"] = {
						i(173534),	-- Gormherd Branch (QI!)
						i(175665),	-- Dreamthorn Legguards
						i(175663),	-- Grove Warden's Greaves
						i(175664),	-- Spirit Tender's Leggings
						i(175666),	-- Starshroud Breeches
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14800.03, {	-- Trouble at the Gormling Corral
				q(57660, {	-- The Grove of Creation
					["sourceQuests"] = { 58026 },	-- When a Gorm Eats a God
					["provider"] = { "n", 160121 },	-- Master Sha'lor
					["coord"] = { 62.9, 36.2, ARDENWEALD },
					["isBreadcrumb"] = true,
				}),
				q(57651, {	-- Trouble in the Banks
					["sourceQuests"] = { 57660 },	-- The Grove of Creation
					["provider"] = { "n", 158345 },	-- Lady of the Falls
					["coord"] = { 51.1, 33.8, ARDENWEALD },
				}),
				q(59621, {	-- Breaking A Few Eggs
					["sourceQuests"] = { 57651 },	-- Trouble in the Banks
					["provider"] = { "n", 158422 },	-- Foreman Thorodir
					["coord"] = { 46.6, 29.4, ARDENWEALD },
				}),
				q(59622, {	-- Tending to the Tenders
					["sourceQuests"] = { 57651 },	-- Trouble in the Banks
					["provider"] = { "n", 158422 },	-- Foreman Thorodir
					["coord"] = { 46.6, 29.4, ARDENWEALD },
				}),
				q(57653, {	-- Unsafe Workplace
					["sourceQuests"] = {
						59621,	-- Breaking A Few Eggs
						59622,	-- Tending to the Tenders
					},
					["provider"] = { "n", 158422 },	-- Foreman Thorodir
					["coord"] = { 46.6, 29.4, ARDENWEALD },
					["groups"] = {
						i(172950),	-- Jar of Clay (QI!)
					},
				}),
				q(57656, {	-- Gifts of the Forest
					["sourceQuests"] = {
						59621,	-- Breaking a Few Eggs
						59622,	-- Tending to the Tenders
					},
					["provider"] = { "n", 158489 },	-- Fluttercatch
					["coord"] = { 48.0, 24.3, ARDENWEALD },
					["groups"] = {
						i(172512),	-- Culexwood Branch (QI!)
						i(172517),	-- Enchanted Pipes (QI!)
					},
				}),
				q(57657, {	-- Tied Totem Toter
					["sourceQuests"] = { 57656 },	-- Gifts of the Forest
					["provider"] = { "n", 158489 },	-- Fluttercatch
					["coord"] = { 48.0, 24.3, ARDENWEALD },
				}),
				q(59656, {	-- Well, Tell the Lady
					["sourceQuests"] = {
						57657,	-- Tied Totem Toter
						57653,	-- Unsafe Workplace
					},
					["provider"] = { "n", 158422 },	-- Foreman Thorodir
					["coord"] = { 46.6, 29.4, ARDENWEALD },
				}),
			}),
			header(HEADERS.AchCriteria, 14800.04, {	-- Tricky Spriggans
				q(57865, {	-- Ages-Echoing Wisdom
					["sourceQuests"] = { 59656 },	-- Well, Tell the Lady
					["provider"] = { "n", 158345 },	-- Lady of the Falls
					["coord"] = { 51.1, 33.8, ARDENWEALD },
				}),
				q(57866, {	-- Idle Hands
					["sourceQuests"] = { 59656 },	-- Well, Tell the Lady
					["provider"] = { "n", 158345 },	-- Lady of the Falls
					["coord"] = { 51.1, 33.8, ARDENWEALD },
				}),
				q(57868, {	-- Craftsman Needs No Tools
					["sourceQuests"] = { 59656 },	-- Well, Tell the Lady
					["provider"] = { "n", 159427 },	-- Elder Finnan
					["coord"] = { 55.8, 23.4, ARDENWEALD },
					["groups"] = {
						i(173150),	-- Finnan's Lucky Mallet (QI!)
					},
				}),
				q(57869, {	-- Spirit-Gathering Labor
					["sourceQuests"] = { 59656 },	-- Well, Tell the Lady
					["provider"] = { "n", 159428 },	-- Groonoomcrooek
					["coord"] = { 56.4, 29.2, ARDENWEALD },
					["groups"] = {
						i(173187),	-- River Sediment (QI!)
					},
				}),
				q(57867, {	-- The Sweat of Our Brow
					["sourceQuests"] = { 59656 },	-- Well, Tell the Lady
					["provider"] = { "n", 160045 },	-- Helpful Faerie
					["coord"] = { 53.8, 27.5, ARDENWEALD },
					["groups"] = {
						i(177163),	-- Enchanted Soulweb (QI!)
						i(177161),	-- Faerie Harp (QI!)
						i(177162),	-- Ordinary Basket (QI!)
					},
				}),
				q(57870, {	-- The Games We Play
					["sourceQuests"] = { 59656 },	-- Well, Tell the Lady
					["provider"] = { "n", 159465 },	-- Elder Gwenna
					["coord"] = { 59.0, 24.3, ARDENWEALD },
				}),
				q(57871, {	-- Outplayed
					["sourceQuests"] = { 57870 },	-- The Games We Play
					["provider"] = { "n", 159465 },	-- Elder Gwenna
					["coord"] = { 59.0, 24.3, ARDENWEALD },
					["groups"] = {
						i(173355),	-- Pouch of Puffpetal Powder (QI!)
						i(183849),	-- Soulsifter Root
						i(183850),	-- Wakener's Frond
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14800.05, {	-- An Ominous Stone
				q(58161, {	-- Forest Disappearances
					["sourceQuests"] = { 60519 },	-- Audience with the Winter Queen
					["provider"] = { "n", 160440 },	-- Brigdin
					["coord"] = { 64.4, 35.2, ARDENWEALD },
				}),
				q(58163, {	-- A Desperate Solution
					["sourceQuests"] = { 58161 },	-- Forest Disappearances
					["provider"] = { "o", 349515 },	-- Battered Journal
					["coord"] = { 72.2, 33.9, ARDENWEALD },
					["groups"] = {
						i(173798),	-- Battered Journal (QI!)
						i(173873),	-- Crumpled Journal Page (QI!)
						i(155876),	-- Stained Journal Page (QI!)
						i(173872),	-- Torn Journal Page (QI!)
						i(183851),	-- Withergrove Shardling
					},
				}),
				q(58164, {	-- Cult of Personality
					["sourceQuests"] = { 58161 },	-- Forest Disappearances
					["provider"] = { "n", 160439 },	-- Partik
					["coord"] = { 70.3, 32.5, ARDENWEALD },
				}),
				q(58162, {	-- Mysterious Masks
					["sourceQuests"] = { 58161 },	-- Forest Disappearances
					["provider"] = { "n", 160439 },	-- Partik
					["coord"] = { 70.3, 32.5, ARDENWEALD },
					["groups"] = {
						i(173800),	-- Featureless Mask (QI!)
					},
				}),
				q(59802, {	-- The Crumbling Village
					["sourceQuests"] = {
						58163,	-- A Desperate Solution
						58164,	-- Cult of Personality
						58162,	-- Mysterious Masks
					},
					["provider"] = { "n", 160439 },	-- Partik
					["coord"] = { 70.3, 32.5, ARDENWEALD },
				}),
				q(58165, {	-- Cut the Roots
					["sourceQuests"] = { 59802 },	-- The Crumbling Village
					["provider"] = { "n", 160439 },	-- Partik
					["coord"] = { 74.3, 32.3, ARDENWEALD },
					["groups"] = {
						i(173732),	-- Strange Runestone (QI!)
					},
				}),
				q(59801, {	-- Take the Power
					["sourceQuests"] = { 59802 },	-- The Crumbling Village
					["provider"] = { "n", 160439 },	-- Partik
					["coord"] = { 74.3, 32.3, ARDENWEALD },
					["groups"] = {
						i(177878),	-- Animacone (QI!)
					},
				}),
				q(58166, {	-- Unknown Assailants
					["sourceQuests"] = {
						58165,	-- Cut the Roots
						59801,	-- Take the Power
					},
					["provider"] = { "n", 160439 },	-- Partik
					["coord"] = { 74.3, 32.3, ARDENWEALD },
					["groups"] = {
						i(173732),	-- Strange Runestone (QI!)
						i(175677),	-- Dreamthorn Wristguards
						i(175676),	-- Grove Warden's Vambraces
						i(175675),	-- Spirit Tender's Cuffs
						i(175678),	-- Starshroud Bracers
					},
				}),
			}),
			header(HEADERS.AchCriteria, 14800.06, {	-- Wicked Plan
				q(58265, {	-- Blooming Villains
					["sourceQuests"] = { 60905 },	-- Infusing the Wildseed
					["provider"] = { "n", 160929 },	-- Guardian Molan
					["coord"] = { 60.6, 51.3, ARDENWEALD },
				}),
				q(58266, {	-- Break It Down
					["sourceQuests"] = { 58265 },	-- Blooming Villains
					["provider"] = { "n", 160749 },	-- Primrose
					["coord"] = { 53.4, 58.7, ARDENWEALD },
					["groups"] = {
						i(174078),	-- Primrose's Pyrotechnic Powder (QI!)
					},
				}),
				q(58264, {	-- Wake Up, Get Up, Get Out There
					["sourceQuests"] = { 58265 },	-- Blooming Villains
					["provider"] = { "n", 160749 },	-- Primrose
					["coord"] = { 53.4, 58.7, ARDENWEALD },
				}),
				q(58267, {	-- Beneath the Mask
					["sourceQuests"] = {
						58266,	-- Break it Down
						58264,	-- Wake Up, Get Up, Get Out There
					},
					["provider"] = { "n", 160757 },	-- Primrose
					["groups"] = {
						i(175712),	-- Shimmerbough Loop
					},
				}),
			}),
			header(HEADERS.Achievement, 14788, {	-- Fractured Faerie Tales
				q(62619, {	-- A Meandering Story
					["description"] = "The NPC can be found patrolling between Tirna Vaal and the southern end of Glitterfall Basin or in the pass between Hibernal Hollow and the Heart of the Forest.",
					["provider"] = { "i", 183877 },	-- A Meandering Story
					["coords"] = {
						{ 51.0, 50.4, ARDENWEALD },
						{ 53.6, 42.0, ARDENWEALD },
						{ 56.8, 52.8, ARDENWEALD },
						{ 61.6, 35.4, ARDENWEALD },
					},
					["crs"] = { 174721 },	-- Meandering Story
				}),
				q(62623, {	-- A Naughty Story
					["provider"] = { "i", 183881 },	-- A Naughty Story
					["coords"] = {
						{ 24.8, 51.8, ARDENWEALD },
						{ 33.6, 57.4, ARDENWEALD },
						{ 39.8, 65.6, ARDENWEALD },
						{ 51.0, 54.8, ARDENWEALD },
					},
					["crs"] = { 174726 },	-- A Naughty Story
				}),
				q(62622, {	-- A Travel Journal
					["provider"] = { "i", 183880 },	-- A Travel Journal
					["coords"] = {
						{ 40.1, 41.7, ARDENWEALD },
						{ 49.7, 40.2, ARDENWEALD },
						{ 50.2, 25.0, ARDENWEALD },
						{ 50.2, 41.9, ARDENWEALD },
					},
					["crs"] = { 174725 },	-- Travel Journal
				}),
				q(62620, {	-- A Wandering Tale
					["provider"] = { "i", 183878 },	-- A Wandering Tale
					["coords"] = {
						{ 30.0, 44.8, ARDENWEALD },
						{ 35.6, 26.8, ARDENWEALD },
						{ 36.4, 48.0, ARDENWEALD },
						{ 37.9, 40.0, ARDENWEALD },
					},
					["crs"] = { 174723 },	-- Wandering Tale
				}),
				q(62621, {	-- An Escapist Novel
					["provider"] = { "i", 183879 },	-- An Escapist Novel
					["coords"] = {
						{ 32.6, 31.6, ARDENWEALD },
						{ 40.0, 44.6, ARDENWEALD },
						{ 40.6, 27.6, ARDENWEALD },
						{ 40.9, 42.3, ARDENWEALD },
					},
					["crs"] = { 174724 },	-- Escapist Novel
				}),
			}),
			------ Miscellaneous ------
			q(62246, {	-- A Fallen Friend
				["provider"] = { "i", 183091 },	-- Lifewoven Bracelet
			}),
			q(62259, {	-- Anima-Laden Dreamcatcher
				["provider"] = { "i", 183129 },	-- Anima-Laden Dreamcatcher
				["coord"] = { 36.4, 25.0, ARDENWEALD },
			}),
			q(62807, {	-- Forest Refugees
				["sourceQuests"] = { 60905 },	-- Infusing the Wildseed
				["provider"] = { "n", 160894 },	-- Droman Aliothe
				["coord"] = { 60.0, 53.9, ARDENWEALD },
				["groups"] = {
					i(184157),	-- Hibernal Hollow Supplies (QI!)
				},
			}),
			q(59120, {	-- Renny the Vulpin
				["sourceQuests"] = { 59087 },	-- That Darn Fox!
				["provider"] = { "n", 163903 },	-- Renny
				["coord"] = { 49.2, 51.9, ARDENWEALD },
				["groups"] = {
					i(175114),	-- Renny (PET!)
				},
			}),
			q(62187, {	-- Satchel of Culexwood
				["provider"] = { "i", 182731 },	-- Satchel of Culexwood
				["coord"] = { 48.2, 20.3, ARDENWEALD },
			}),
			q(57652, {	-- Supplies Needed: Amber Grease
				["provider"] = { "o", 348747 },	-- Muddy Scroll
				["coord"] = { 46.9, 27.6, ARDENWEALD },
				["groups"] = {
					i(172221),	-- Giant Gorm Gris (QI!)
				},
			}),
			q(57655, {	-- Supplies Needed: More Husks!
				["provider"] = { "o", 336415 },	-- Discarded Scroll
				["coord"] = { 47.5, 26.2, ARDENWEALD },
				["groups"] = {
					i(172218),	-- Treated Gorm Husk (QI!)
				},
			}),
			q(62186, {	-- Swollen Anima Seed
				["provider"] = { "i", 182730 },	-- Swollen Anima Seed
				["coord"] = { 76.6, 29.7, ARDENWEALD },
			}),
			q(59087, {	-- That Darn Fox!
				["provider"] = { "n", 163774 },	-- Clarion Song
				["coord"] = { 50.9, 33.8, ARDENWEALD },
			}),
			q(59623, {	-- What a Buzzkill
				["sourceQuests"] = {
					57652,	-- Supplies Needed: Amber Grease
					57655,	-- Supplies Needed: More Husks!
				},
				["provider"] = { "n", 165382 },	-- Gormsmith Cavina
				["coord"] = { 51.5, 34.0, ARDENWEALD },
				["groups"] = {
					i(176760),	-- Buzzkill's Stinger (QI!)
					i(180474),	-- Culexwood Dagger
					i(178022),	-- Culexwood Knife
					i(178021),	-- Culexwood Longbow
					i(180473),	-- Culexwood Spellmace
					i(178023),	-- Gormhusk Basher
					i(178024),	-- Gormhusk Bludgeon
					i(178025),	-- Gormstinger Spear
					i(178027),	-- Gormstinger Sword
					i(178030),	-- Gormstinger Warglaive
				},
			}),
			n(BONUS_OBJECTIVES, {
				q(60840, {	-- Wild Hunt Offensive
					["coord"] = { 64.0, 46.0, ARDENWEALD },
				}),
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["sourceQuests"] = { 62159 },	-- Aiding the Shadowlands
				["customCollect"] = "SL_SKIP",	-- SL Skip Character
				["lockCriteria"] = { 1, "lvl", 60 },
			}, bubbleDown({
				["timeline"] = { ADDED_9_0_2 },
			}, {
				q(62773, {	-- Dreamshrine Basin [Pre-60]
					["coord"] = { 62.0, 52.8, ARDENWEALD },
					["groups"] = {
						i(175713),	-- Sprigthistle Loop
					},
				}),
				q(62720, {	-- The Fallen Tree [Pre-60]
					["coord"] = { 72.0, 56.0, ARDENWEALD },
					["groups"] = {
						o(339996, {	-- Abandoned Memento
							["coords"] = {
								{ 68.6, 55.4, ARDENWEALD },
								{ 68.7, 55.5, ARDENWEALD },
								{ 69.8, 53.3, ARDENWEALD },
								{ 69.9, 55.8, ARDENWEALD },
								{ 70.0, 54.4, ARDENWEALD },
								{ 70.0, 54.5, ARDENWEALD },
								{ 71.1, 54.2, ARDENWEALD },
								{ 72.0, 56.0, ARDENWEALD },
								{ 73.1, 55.8, ARDENWEALD },
							},
							["groups"] = { i(184015) },	-- Stolen Memento (QI!)
						}),
						i(181404),	-- Faemoss Shoes
						i(181406),	-- Runetender Boots
						i(181405),	-- Gormhusk Steps
						i(181403),	-- Sapsteel Sabatons
					},
				}),
				q(62775, {	-- The Waning Grove [Pre-60]
					["coord"] = { 69.0, 22.4, ARDENWEALD },
					["groups"] = {
						i(184101),	-- Drained Wildseed (QI!)
						i(181415),	-- Faemoss Leggings
						i(181416),	-- Gormhusk Kilt
						i(181417),	-- Runetender Pants
						i(181414),	-- Sapsteel Legplates
					},
				}),
				q(62774, {	-- Tranquil Pools [Pre-60]
					["coord"] = { 63.3, 39.3, ARDENWEALD },
					["groups"] = {
						i(172948),	-- Animacone (QI!)
						i(179921),	-- Hydra Gutter (QI!)
						i(181420),	-- Faemoss Amice
						i(181421),	-- Gormhusk Mantle
						i(181418),	-- Runetender Shoulderguards
						i(181419),	-- Sapsteel Pauldrons
					},
				}),
			}))),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(ARDENWEALD, {
			n(QUESTS, {
				q(62936),	-- Saw Bwonsamdi (spellID 345430)
				q(63007),	-- Intro Skip
				q(60838),	-- requesting a song and dance from Korenth during "Wildseed Rescue" (doesn't seem to be a tracking quest for simply saying "I'll help you" - i abandoned/re-picked up to check)
				------ Stay awhile and listen ------
				hqt(64312, {["timeline"] = {ADDED_9_1_0}}),	-- Tyrande after 9.1 campaign finish (in Ardenweald) (spellID 356055)
			}),
		}),
	}),
})));
