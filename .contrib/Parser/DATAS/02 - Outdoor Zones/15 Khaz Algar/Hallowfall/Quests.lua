---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		n(QUESTS, {
			header(HEADERS.Achievement, 20598, {	-- Hallowfall
				------ Chapter 1 ------
				q(78658, {	-- The Hallowed Path
					["sourceQuests"] = { 81689 },	-- Orientation: Gundargaz
					["provider"] = { "n", 213983 },	-- Anduin Wrynn
					["coord"] = { 47.1, 32.2, THE_RINGING_DEEPS },
				}),
				q(78659, {	-- Where The Light Touches
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 213116 },	-- Faerin
					["coord"] = { 68.4, 45.1, HALLOWFALL },
				}),
				q(78665, {	-- Tunnel Trouble
					["sourceQuests"] = { 78659 },	-- Where The Light Touches
					["provider"] = { "n", 224310 },	-- Great Kyron
					["coord"] = { 71.6, 57.6, HALLOWFALL },
				}),
				q(79999, {	-- Igniting Hope
					["sourceQuests"] = { 78659 },	-- Where The Light Touches
					["provider"] = { "n", 213116 },	-- Faerin
					["coord"] = { 71.6, 57.6, HALLOWFALL },
					["groups"] = {
						i(216669),	-- Shattered Remnants (QI!)
					},
				}),
				q(78666, {	-- The Only Good Spider
					["sourceQuests"] = { 78665 },	-- Tunnel Trouble
					["provider"] = { "n", 224310 },	-- Great Kyron
					["coord"] = { 70.1, 61.3, HALLOWFALL },
				}),
				q(78667, {	-- Rekindled Memories
					["sourceQuests"] = { 79999 },	-- Igniting Hope
					["provider"] = { "n", 213116 },	-- Faerin
					["coord"] = { 70.1, 61.0, HALLOWFALL },
					["groups"] = {
						i(220126),	-- Lamplighter's Cinch
						i(220125),	-- Lamplighter's Epaulets
						i(220119),	-- Lamplighter's Handwraps
						i(220127),	-- Lamplighter's Sabatons
						o(421909, {	-- Fallen Defender
							i(213191),	-- Arathi Tinderbox (QI!)
						}),
					},
				}),
				q(78668, {	-- Rally on the Dawnbreaker
					["sourceQuests"] = {
						78667,	-- Rekindled Memories
						78666,	-- The Only Good Spider
					},
					["provider"] = { "n", 213116 },	-- Faerin
					["coord"] = { 70.1, 61.0, HALLOWFALL },
				}),
				q(78670, {	-- Siege Weapon Sabotage
					["sourceQuests"] = { 78668 },	-- Rally on the Dawnbreaker
					["provider"] = { "n", 224945 },	-- Faerin
					["coord"] = { 57.5, 64.4, HALLOWFALL },
					["groups"] = {
						o(411930, {	-- Blackpowder Barrel
							i(213630),	-- Keg of Black Powder (QI!)
						}),
						i(220118),	-- Arathi Demolition Charge
					},
				}),
				q(78669, {	-- For Their Eyes Only
					["sourceQuests"] = { 78668 },	-- Rally on the Dawnbreaker
					["provider"] = { "n", 224946 },	-- Great Kyron
					["coord"] = { 57.5, 64.4, HALLOWFALL },
					["groups"] = {
						i(216658),	-- Sureki Shadecaster (QI!)
						i(216659),	-- Sureki Shadecaster (QI!)
						i(216660),	-- Sureki Shadecaster (QI!)
					},
				}),
				q(82836, {	-- Zero out Xerosh
					["sourceQuests"] = {
						78669,	-- For Their Eyes Only
						78670,	-- Siege Weapon Sabotage
					},
					["provider"] = { "n", 213120 },	-- Anduin Wrynn
					["coord"] = { 57.5, 64.3, HALLOWFALL },
				}),
				q(78671, {	-- The Light of the Dawntower
					["sourceQuests"] = { 82836 },	-- Zero out Xerosh
					["provider"] = { "n", 213120 },	-- Anduin Wrynn
					["coord"] = { 56.9, 68.3, HALLOWFALL },
					["groups"] = {
						i(220111),	-- Tower-Keeper's Grips
						i(220107),	-- Tower-Keeper's Shoes
						i(220113),	-- Tower-Keeper's Shoulderguards
						i(220114),	-- Tower-Keeper's Waistguard
					},
				}),
				------ Chapter 2 ------
				q(78672, {	-- A Lamplighter's Duty
					["sourceQuests"] = { 78671 },	-- The Light of the Dawntower
					["provider"] = { "n", 213116 },	-- Faerin
					["coord"] = { 54.1, 64.7, HALLOWFALL },
				}),
				q(78929, {	-- Tricks of the Dark
					["sourceQuests"] = { 78672 },	-- A Lamplighter's Duty
					["provider"] = { "n", 214378 },	-- Faerin
					["coord"] = { 53.9, 31.4, HALLOWFALL },
				}),
				q(78932, {	-- Fickle Fiendish Fish
					["sourceQuests"] = { 78672 },	-- A Lamplighter's Duty
					["provider"] = { "n", 214376 },	-- General Steelstrike
					["coord"] = { 53.9, 31.5, HALLOWFALL },
				}),
				------ Stay awhile and listen ------
				hqt(81594, {	-- Stay awhile and listen: Faerin Lothar
					["name"] = "Stay awhile and listen: Faerin Lothar",
					["sourceQuests"] = {
						78932,	-- Fickle Fiendish Fish
						78929,	-- Tricks of the Dark
					},
					["provider"] = { "n", 214378 },	-- Faerin
					["coord"] = { 53.9, 30.7, HALLOWFALL },
					["_norepeatable"] = true,	-- spell 444839 clears this quest, but likely never used
				}),
				--
				q(78934, {	-- Blades of the Arathi
					["sourceQuests"] = {
						78932,	-- Fickle Fiendish Fish
						78929,	-- Tricks of the Dark
					},
					["provider"] = { "n", 214378 },	-- Faerin
					["coord"] = { 53.9, 30.7, HALLOWFALL },
					["groups"] = {
						i(220507),	-- Lamplighter's Torch (COSMETIC!)
						i(220508),	-- Lamplighter's Unlit Torch (COSMETIC!)
					},
				}),
				q(78936, {	-- Something FIshy
					["sourceQuests"] = {
						78932,	-- Fickle Fiendish Fish	-- I'm currently unsure if this quest pop during Blades of the Arathi
						78929,	-- Tricks of the Dark	-- or this two quest, need more data
					},
					["provider"] = { "n", 214376 },	-- General Steelstrike
					["coord"] = { 55.2, 32.7, HALLOWFALL },
				}),
				q(78937, {	-- Shadow Upon Shadow
					["sourceQuests"] = {
						78934,	-- Blades of the Arathi
						78936,	-- Something FIshy
					},
					["provider"] = { "n", 221100 },	-- Faerin
					["coord"] = { 55.1, 32.7, HALLOWFALL },
				}),
				q(78939, {	-- The Darkened Flame
					["sourceQuests"] = { 78937 },	-- Shadow Upon Shadow
					["provider"] = { "n", 214405 },	-- Alleria Windrunner
					["coord"] = { 55.8, 41.3, HALLOWFALL },
				}),
				q(78951, {	-- Ever Deeper Shadow
					["sourceQuests"] = { 78939 },	-- The Darkened Flame
					["provider"] = { "n", 214404 },	-- Faerin Lothar
					["coord"] = { 56.2, 42.0, HALLOWFALL },
				}),
				q(78952, {	-- The Final Resistance
					["sourceQuests"] = { 78951 },	-- Ever Deeper Shadow
					["provider"] = { "n", 214413 },	-- Faerin Lothar
					["coord"] = { 55.8, 40.5, HALLOWFALL },
				}),
				q(81690, {	-- The Light at the End of the Tunnel
					["sourceQuests"] = { 78952 },	-- Ever Deeper Shadow
					["provider"] = { "n", 221733 },	-- Faerin Lothar
					["coord"] = { 55.1, 40.2, HALLOWFALL },
				}),
				q(78954, {	-- Restore the Flame
					["sourceQuests"] = { 81690 },	-- The Light at the End of the Tunnel
					["provider"] = { "n", 221733 },	-- Faerin Lothar
					["coord"] = { 55.8, 43.4, HALLOWFALL },
					["groups"] = {
						i(213191),	-- Arathi Tinderbox (QI!)
						i(220109),	-- Chainmail of Sina's Stalwarts
						i(220112),	-- Cowl of Sina's Stalwarts
						i(220110),	-- Greaves of Sina's Stalwarts
						i(220108),	-- Helm of Sina's Stalwarts
					},
				}),
				------ Chapter 3 ------
				q(78607, {	-- To Mereldar
					["sourceQuests"] = { 78954 },	-- Restore the Flame
					["provider"] = { "n", 214404 },	-- Faerin Lothar
					["coord"] = { 56.2, 42.0, HALLOWFALL },
				}),
				q(78613, {	-- The Bastion of Hallowfall
					["sourceQuests"] = { 78607 },	-- To Mereldar
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 43.4, 48.6, HALLOWFALL },
					["groups"] = {
						i(217708),	-- A Round of Drinks (QI!)
					},
				}),
				------ Stay awhile and listen ------
				hqt(79706, {	-- Stay awhile and listen: Faerin Lothar
					["name"] = "Stay awhile and listen: Faerin Lothar",
					["sourceQuests"] = { 78613 },	-- The Bastion of Hallowfall
					["provider"] = { "n", 220406 },	-- Faerin Lothar
					["coord"] = { 43.2, 56.2, HALLOWFALL },
				}),
				hqt(79971, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["sourceQuests"] = { 78613 },	-- The Bastion of Hallowfall
					["provider"] = { "n", 220402 },	-- Alleria Windrunner
					["coord"] = { 41.7, 56.8, HALLOWFALL },
				}),
				--
				q(79297, {	-- Nightwatch
					["sourceQuests"] = { 78613 },	-- The Bastion of Hallowfall
					["provider"] = { "n", 218182 },	-- Alleria Windrunner
					["coord"] = { 42.8, 55.7, HALLOWFALL },
					["groups"] = {
						o_repeated({
							i(217995),	-- Order of Night Propaganda (QI!)
							i(217993),	-- Order of Night Propaganda (QI!)
							i(217900),	-- Order of Night Propaganda (QI!)
							i(217990),	-- Order of Night Propaganda (QI!)
							o(433907),	-- Order of Night Propaganda
							o(424436),	-- Order of Night Propaganda
						}),
					},
				}),
				q(78626, {	-- Spar Day
					["sourceQuests"] = { 79297 },	-- Nightwatch
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 41.3, 53.0, HALLOWFALL },
				}),
				------ Stay awhile and listen ------
				hqt(81636, {	-- Stay awhile and listen: General Steelstrike
					["name"] = "Stay awhile and listen: General Steelstrike",
					["sourceQuests"] = { 78626 },	-- Spar Day
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 41.2, 52.9, HALLOWFALL },
				}),
				--
				q(78614, {	-- Mereldar's Light
					["sourceQuests"] = { 78626 },	-- Spar Day
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 41.3, 53.0, HALLOWFALL },
				}),
				q(78615, {	-- The Bell Tolls
					["sourceQuests"] = { 78614 },	-- Mereldar's Light
					["provider"] = { "n", 220124 },	-- Faerin Lothar
					["coord"] = { 41.7, 55.5, HALLOWFALL },
				}),
				q(78620, {	-- Crossroads of Twilight
					["sourceQuests"] = { 78615 },	-- The Bell Tolls
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 41.1, 54.8, HALLOWFALL },
				}),
				q(78621, {	-- The Shadow Rising
					["sourceQuests"] = { 78615 },	-- The Bell Tolls
					["provider"] = { "n", 214402 },	-- Alleria Windrunner
					["coord"] = { 41.1, 54.7, HALLOWFALL },
				}),
				q(78624, {	-- A Candle in the Dark
					["sourceQuests"] = {
						78620,	-- Crossroads of Twilight
						78621,	-- The Shadow Rising
					},
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 34.1, 54.7, HALLOWFALL },
					["groups"] = {
						i(220133),	-- Flameguard's Band
					},
				}),
				q(79089, {	-- Consecrated Cleanup
					["sourceQuests"] = { 78624 },	-- A Candle in the Dark
					["provider"] = { "n", 225188 },	-- General Steelstrike
					["coord"] = { 33.6, 54.6, HALLOWFALL },
				}),
				q(80049, {	-- The Flame Still Burns
					["sourceQuests"] = { 78624 },	-- A Candle in the Dark
					["provider"] = { "n", 213107 },	-- Faerin Lothar
					["coord"] = { 33.6, 54.8, HALLOWFALL },
				}),
				------ Stay awhile and listen ------
				hqt(81631, {	-- Stay awhile and listen: Faerin Lothar
					["name"] = "Stay awhile and listen: Faerin Lothar",
					["sourceQuests"] = { 80049 },	-- The Flame Still Burns
					["provider"] = { "n", 213107 },	-- Faerin Lothar
					["coord"] = { 33.5, 54.8, HALLOWFALL },
				}),
				--
				q(78627, {	-- The Final Front
					["sourceQuests"] = {
						79089,	-- Consecrated Cleanup
						80049,	-- The Flame Still Burns
					},
					["provider"] = { "n", 225188 },	-- General Steelstrike
					["coord"] = { 33.6, 54.6, HALLOWFALL },
				}),
				q(78629, {	-- Running on Reservers
					["sourceQuests"] = { 78627 },	-- The Final Front
					["provider"] = { "n", 213107 },	-- Faerin Lothar
					["coord"] = { 39.0, 71.6, HALLOWFALL },
				}),
				q(78628, {	-- Trapdoor Sprung
					["sourceQuests"] = { 78627 },	-- The Final Front
					["provider"] = { "n", 213108 },	-- General Steelstrike
					["coord"] = { 39.0, 71.6, HALLOWFALL },
				}),
				q(78630, {	-- The Rise of the Reckoning
					["sourceQuests"] = {
						78629,	-- Running on Reservers
						78628,	-- Trapdoor Sprung
					},
					["provider"] = { "n", 213107 },	-- Faerin Lothar
					["coord"] = { 38.8, 81.5, HALLOWFALL },
					["groups"] = {
						i(220132),	-- Breastplate of the Reckoning's Vengeance
						i(220129),	-- Breeches of the Reckoning's Vengeance
						i(220131),	-- Coif of the Reckoning's Vengeance
						i(220128),	-- Vestment of the Reckoning's Vengeance
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.01, {	-- Light to Velhan's Claim
				q(78686, {	-- Lights Out
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 214019 },	-- Aegor Irynbawnd
					["coord"] = { 49.2, 41.1, HALLOWFALL },
				}),
				q(78688, {	-- Cage, Match
					["sourceQuests"] = { 78686 },	-- Lights Out
					["provider"] = { "n", 213613 },	-- Aemyra Acton
					["coord"] = { 50.0, 20.8, HALLOWFALL },
					["groups"] = {
						i(211945),	-- Torch of Holy Flame (QI!)
					},
				}),
				q(78689, {	-- If it Leads, it Bleeds
					["sourceQuests"] = { 78686 },	-- Lights Out
					["provider"] = { "n", 213614 },	-- Taenar Strongoth
					["coord"] = { 49.9, 20.9, HALLOWFALL },
				}),
				q(78690, {	-- Situational Awareness
					["sourceQuests"] = {
						78688,	-- Cage, Match
						78689,	-- If it Leads, it Bleeds
					},
					["provider"] = { "n", 213613 },	-- Aemyra Acton
					["coord"] = { 45.8, 13.1, HALLOWFALL },
				}),
				q(78693, {	-- Spears for Fears
					["sourceQuests"] = { 78690 },	-- Situational Awareness
					["provider"] = { "n", 213613 },	-- Aemyra Acton
					["coords"] = {
						{ 50.0, 20.8, HALLOWFALL },
						{ 45.8, 13.1, HALLOWFALL },
					},
					["groups"] = {
						o(416401, {	-- Kobyss Spear
							i(211948),	-- Kobyss Spear (QI!)
						}),
					},
				}),
				q(78694, {	-- Reclaiming Velhan's Claim
					["sourceQuests"] = { 78690 },	-- Situational Awareness
					["provider"] = { "n", 213614 },	-- Taenar Strongoth
					["coord"] = { 45.7, 13.1, HALLOWFALL },
				}),
				q(78692, {	-- Teach a Man to Fish
					["sourceQuests"] = {
						78694,	-- Reclaiming Velhan's Claim
						78693,	-- Spears for Fears
					},
					["provider"] = { "n", 213613 },	-- Aemyra Acton
					["coord"] = { 45.8, 13.1, HALLOWFALL },
				}),
				q(78692, {	-- Teach a Man to Fish
					["sourceQuests"] = {
						78694,	-- Reclaiming Velhan's Claim
						78693,	-- Spears for Fears
					},
					["provider"] = { "n", 213613 },	-- Aemyra Acton
					["coord"] = { 50.0, 20.8, HALLOWFALL },
				}),
				q(78687, {	-- Crash Recovery
					["sourceQuests"] = { 78692 },	-- Teach a Man to Fish
					["provider"] = { "n", 213614 },	-- Taenar Strongoth
					["coord"] = { 45.7, 13.1, HALLOWFALL },
					["groups"] = {
						i(212317),	-- Recovered Tinderbox (QI!)
					},
				}),
				q(78691, {	-- The One that Got Away
					["sourceQuests"] = { 78692 },	-- Teach a Man to Fish
					["provider"] = { "n", 213787 },	-- Duke Velhan
					["coord"] = { 45.8, 13.0, HALLOWFALL },
				}),
				q(78695, {	-- Lamp Lit
					["sourceQuests"] = {
						78687,	-- Crash Recovery
						78691,	-- The One that Got Away
					},
					["provider"] = { "n", 213614 },	-- Taenar Strongoth
					["coord"] = { 45.7, 13.1, HALLOWFALL },
					["groups"] = {
						i(225944),	-- Sturdy Arathi Censer (COSMETIC!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.02, {	-- The Priory
				q(82628, {	-- The Brothers Braunpyke
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 215335 },	-- General Steelstrike
					["coord"] = { 40.5, 50.8, HALLOWFALL },
				}),
				q(79642, {	-- Stave Them Off
					["sourceQuests"] = { 82628 },	-- The Brothers Braunpyke
					["provider"] = { "n", 217426 },	-- Sir Theleon Braunpyke
					["coord"] = { 31.0, 55.6, HALLOWFALL },
				}),
				q(79641, {	-- Wipe Away Their Smiles
					["sourceQuests"] = { 82628 },	-- The Brothers Braunpyke
					["provider"] = { "n", 217424 },	-- Baron Sybaestan Braunpyke
					["coord"] = { 30.9, 55.6, HALLOWFALL },
					["groups"] = {
						i(219211),	-- Darkwater Tooth (QI!)
					},
				}),
				q(79643, {	-- Dreaded Dreadfang
					["sourceQuests"] = {
						79642,	-- Stave Them Off
						79641,	-- Wipe Away Their Smiles
					},
					["provider"] = { "n", 221492 },	-- Baron Sybaestan Braunpyke
				}),
				q(79644, {	-- Go to The Priory
					["sourceQuests"] = { 79643 },	-- Dreaded Dreadfang
					["provider"] = { "n", 217424 },	-- Baron Sybaestan Braunpyke
					["coord"] = { 29.1, 61.8, HALLOWFALL },
				}),
				q(79646, {	-- Memorial Wine
					["sourceQuests"] = { 79644 },	-- Go to The Priory
					["provider"] = { "n", 217398 },	-- Sister Etna Blayze
					["coord"] = { 40.5, 35.0, HALLOWFALL },
				}),
				q(79645, {	-- Sweet-sting Infestation
					["sourceQuests"] = { 79644 },	-- Go to The Priory
					["provider"] = { "n", 217398 },	-- Sister Etna Blayze
					["coord"] = { 40.5, 35.0, HALLOWFALL },
					["groups"] = {
						i(218113),	-- Sweet-Sting Venom (QI!)
					},
				}),
				q(79647, {	-- Burning Reflections
					["sourceQuests"] = {
						79646,	-- Memorial Wine
						79645,	-- Sweet-sting Infestation
					},
					["provider"] = { "n", 217398 },	-- Sister Etna Blayze
					["coord"] = { 40.5, 35.0, HALLOWFALL },
				}),
				q(79648, {	-- Missing Somebody
					["sourceQuests"] = { 79647 },	-- Burning Reflections
					["provider"] = { "n", 217398 },	-- Sister Etna Blayze
					["coord"] = { 39.6, 37.2, HALLOWFALL },
				}),
				q(79649, {	-- Sacred Flame Inquisition
					["sourceQuests"] = { 79648 },	-- Missing Somebody
					["provider"] = { "n", 217398 },	-- Sister Etna Blayze
					["coord"] = { 39.6, 37.2, HALLOWFALL },
				}),
				q(79650, {	-- Priory of the Sacred Flame: A Brother's Grief
					["sourceQuests"] = { 79649 },	-- Sacred Flame Inquisition
					["provider"] = { "n", 217398 },	-- Sister Etna Blayze
					["coord"] = { 40.3, 34.9, HALLOWFALL },
					["maps"] = { 2308, 2309 },	-- Priory of the Sacred Flame
					["groups"] = {
						i(226139),	-- Arathi Officer's Gauntlets
						i(226137),	-- Inquisitive Sister's Cinch
						i(226134),	-- Mourning Baron's Shoulderpads
						i(226138),	-- Vow-Taker's Boots
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.03, {	-- Striking Steel
				q(82216, {	-- Economical Request
					["sourceQuests"] = {
						78658,	-- The Hallowed Path
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = { 41.3, 53.1, HALLOWFALL },
					["groups"] = {
						i(216694),	-- Letter of Recommendation (QI!)
					},
				}),
				q(82213, {	-- A Batty Request
					["sourceQuests"] = { 82216 },	-- Economical Request
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = {41.3, 53.1, HALLOWFALL },
					["groups"] = {
						i(222920),	-- Shacklefang Leafnose Meat (QI!)
					},
				}),
				q(82214, {	-- Does Anyone Like Wasps?
					["sourceQuests"] = { 82216 },	-- Economical Request
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = { 41.3, 53.1, HALLOWFALL },
				}),
				q(82215, {	-- Regular Fiber
					["sourceQuests"] = { 82216 },	-- Economical Request
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = { 41.3, 53.1, HALLOWFALL },
					["groups"] = {
						i(222925),	-- Tough Ivy Fiber (QI!)
					},
				}),
				q(82217, {	-- Underground Economics
					["sourceQuests"] = {
						82213,	-- A Batty Request
						82214,	-- Does Anyone Like Wasps?
						82215,	-- Regular Fiber
					},
					["provider"] = { "n", 225711 },	-- General Steelstrike
					["coord"] = { 68.4, 44.6, HALLOWFALL },
					["groups"] = {
						--i(223638),	-- Arathi Trade Goods (QI!)
						i(223892),	-- Assorted Spices (QI!)
						i(223889),	-- Flame-Touched Weaponry (QI!)
						i(223890),	-- Tough Ivy Rope (QI!)
					},
				}),
				------ Stay awhile and listen ------
				hqt(82538, {	-- Stay awhile and listen: General Steelstrike
					["name"] = "Stay awhile and listen: General Steelstrike",
					["sourceQuests"] = { 82217 },	-- Underground Economics
					["provider"] = { "n", 218289 },	-- General Steelstrike
					["coord"] = { 42.3, 55.0, HALLOWFALL },
				}),
				---
				q(82219, {	-- Spice Up Your Life
					["description"] = "Becomes available after daily reset.",
					["sourceQuests"] = { 82217 },	-- Underground Economics
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = { 42.3, 55.0, HALLOWFALL },
					["groups"] = {
						o_repeated({
							i(222953),	-- Light-Bathed Lotus Cuttings (QI!)
							o(444028),	-- Light-Bathed Lotus
							o(444029),	-- Light-Bathed Lotus
							o(444030),	-- Light-Bathed Lotus
						}),
					},
				}),
				q(82220, {	-- Eagle Eye, Eagle Die
					["sourceQuests"] = { 82217 },	-- Underground Economics
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = { 42.3, 55.0, HALLOWFALL },
				["description"] = "Becomes available after daily reset.",
					["groups"] = {
						i(222951),	-- Eagle Fillet (QI!)
						i(222976),	-- Flame-Tempered Harpoon (QI!)
					},
				}),
				q(82221, {	-- Full Dress
					["sourceQuests"] = {
						82220,	-- Eagle Eye, Eagle Die
						82219,	-- Spice Up Your Life
					},
					["provider"] = { "n", 223267 },	-- Auralia Steelstrike
					["coord"] = { 44.5, 50.8, HALLOWFALL },
				}),
				q(82222, {	-- Cooking With Style
					["sourceQuests"] = { 82221 },	-- Full Dress
					["provider"] = { "n", 223268 },	-- General Steelstrike
					["coord"] = { 44.6, 50.7, HALLOWFALL },
				}),
				q(82223, {	-- A Home Cooked Meal
					["sourceQuests"] = { 82222 },	-- Cooking With Style
					["provider"] = { "n", 224154 },	-- General Steelstrike
					["coord"] = { 43.9, 49.7, HALLOWFALL },
					["groups"] = {
						i(225894),	-- Recipe: Beledar's Bounty (RECIPE!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.04, {	-- Lost in the Darkness
				q(80382, {	-- Eggs In One Basket
					["sourceQuests"] = {
						78658,	-- The Hallowed Path
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "o", 430581 },	-- Egg Basket
					["coord"] = { 60.8, 27.9, HALLOWFALL },
					["groups"] = {
						o(430601, {	-- Hillhelm Egg
							["coord"] = { 60.9, 27.7, HALLOWFALL },
							["groups"] = { i(217396) },	-- Hillhelm Egg (QI!)
						}),
					},
				}),
				q(76247, {	-- Keep The Home Fires Burning
					["sourceQuests"] = {
						78658,	-- The Hallowed Path
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 206528 },	-- Aliya Hillhelm
					["coord"] = { 61.2, 30.5, HALLOWFALL },
					["groups"] = {
						i(209854),	-- Hillhelm Remnant Supply (QI!)
					},
				}),
				q(79108, {	-- Seeds of Evil
					["sourceQuests"] = {
						78658,	-- The Hallowed Path
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 206528 },	-- Aliya Hillhelm
					["coord"] = { 61.2, 30.5, HALLOWFALL },
					["groups"] = {
						i(212153),	-- Corrupted Shadowleaf Seed (QI!)
					},
				}),
				q(50690, {	-- A Flickering of Hope (don't ask me about this questID, ask Blizzard, it is also currently in HQTs)
					["sourceQuests"] = {
						76247,	-- Keep The Home Fires Burning // either all 2 or only this one required
						79108,	-- Seeds of Evil
					},
					["provider"] = { "n", 206528 },	-- Aliya Hillhelm
					["coord"] = { 61.2, 30.5, HALLOWFALL },
				}),
				q(79109, {	-- Follow Miral
					["sourceQuests"] = {
						80382,	-- Eggs In One Basket // unsure about this one
						79108,	-- Seeds of Evil
					},
					["provider"] = { "n", 206528 },	-- Aliya Hillhelm
					["coord"] = { 61.2, 30.5, HALLOWFALL },
				}),
				q(79110, {	-- Save Tomothy
					["sourceQuests"] = { 79109 },	-- Follow Miral
					["provider"] = { "n", 215041 },	-- Miral Murder-Mittens
					["coord"] = { 60.3, 21.2, HALLOWFALL },
					["groups"] = { i(221849) },	-- Vanilla (PET!)
				}),
			}),
			header(HEADERS.AchCriteria, 40844.05, {	-- The Sky's the Limit
				q(79304, {	-- Care Package
					["provider"] = { "n", 217609 },	-- Barahl Lynflayme
					["coord"] = { 69.2, 43.8, HALLOWFALL },
					["isBreadcrumb"] = true,
					["groups"] = {
						i(228409),	-- Valrin's Sweetrolls (QI!)
					},
				}),
				q(79300, {	-- The Notebook
					["sourceQuests"] = { 79304 },	-- Care Package
					["provider"] = { "n", 216001 },	-- Sophietta Lynflayme
					["coord"] = { 52.7, 60.3, HALLOWFALL },
				}),
				q(79301, {	-- Height Club
					["sourceQuests"] = { 79300 },	-- The Notebook
					["provider"] = { "n", 225925 },	-- Sophietta Lynflayme
					["coord"] = { 53.4, 59.4, HALLOWFALL },
				}),
				q(79302, {	-- Gone with the Wind
					["sourceQuests"] = { 79301 },	-- Height Club
					["provider"] = { "n", 225925 },	-- Sophietta Lynflayme
					["coord"] = { 53.4, 59.4, HALLOWFALL },
					["groups"] = {
						o(420722, {	-- Lost Page (NOTE: otherwise it will show WotLK > Naxx > Treasure tooltip)
							i(225180),	-- Stained and Tattered Page (QI!)
						}),
					},
				}),
				q(79303, {	-- A Principled Principal
					["sourceQuests"] = { 79302 },	-- Gone with the Wind
					["provider"] = { "n", 225926 },	-- Sophietta Lynflayme
					["coord"] = { 53.4, 60.6, HALLOWFALL },
					["groups"] = {
						i(225945),	-- Airship Captain's Cloak (COSMETIC!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.06, {	-- Crushing Depths
				q(81797, {	-- Targeted Recon
					["description"] = "Look for Arathi Captives in the area. They are an illusion. You can find Kobyss Shadeshapers right behind them.",
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 218508 },	-- Joseph Brayvemarc
					["coord"] = { 42.6, 55.3, HALLOWFALL },
					["isBreadcrumb"] = true,
					["crs"] = {
							215623,	-- Arathi Captive
							215653,	-- Kobyss Shadeshaper
					},
				}),
				q(80312, {	-- Gasping Plea
					["sourceQuests"] = { 81797 },	-- Targeted Recon
					["provider"] = { "i", 217352 },	-- Gasping Fish (QI!)
				}),
				q(80313, {	-- Tidal Charms
					["sourceQuests"] = { 80312 },	-- Gasping Plea
					["provider"] = { "n", 219430 },	-- Peculiar Fish
					["coord"] = { 54.5, 25.3, HALLOWFALL },
					["groups"] = {
						i(217709),	-- Sunless Shard (QI!)
					},
				}),
				q(80314, {	-- Voices from the Deep
					["sourceQuests"] = { 80312 },	-- Gasping Plea
					["provider"] = { "n", 219430 },	-- Peculiar Fish
					["coord"] = { 54.5, 25.3, HALLOWFALL },
				}),
				q(80315, {	-- Alluring Offer
					["sourceQuests"] = {
						80313,	-- Tidal Charms
						80314,	-- Voices from the Deep
					},
					["provider"] = { "n", 219430 },	-- Peculiar Fish
					["coord"] = { 54.5, 25.3, HALLOWFALL },
				}),
				q(80316, {	-- Return to the Sea
					["sourceQuests"] = { 80315 },	-- Alluring Offer
					["provider"] = { "n", 219430 },	-- Peculiar Fish
					["coord"] = { 54.5, 25.3, HALLOWFALL },
					["groups"] = {
						i(217816),	-- Rehydated Fish (QI!)
						i(222964),	-- Fathom Incher (PET!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.07, {	-- The Last Mage of Hallowfall
				q(80175, {	-- The Last Mage
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 215335 },	-- General Steelstrike
					["coord"] = { 40.5, 50.8, HALLOWFALL },
					["isBreadcrumb"] = true,
				}),
				q(80176, {	-- Arcane Trickles
					["sourceQuests"] = { 80175 },	-- The Last Mage
					["provider"] = { "n", 219135 },	-- Wenren Althal
					["coord"] = { 48.8, 64.5, HALLOWFALL },
					["groups"] = {
						i(217269),	-- Arcane-Suffused Organ (QI!)
					},
				}),
				q(80177, {	-- Arcane Experiments
					["sourceQuests"] = { 80176 },	-- Arcane Trickles
					["provider"] = { "n", 219135 },	-- Wenren Althal
					["coord"] = { 48.8, 64.5, HALLOWFALL },
				}),
				q(80178, {	-- A Murder Most Foul
					["sourceQuests"] = { 80177 },	-- Arcane Experiments
					["provider"] = { "n", 219173 },	-- Wenren Althal
					["coord"] = { 48.7, 64.6, HALLOWFALL },
					["groups"] = {
						i(221190),	-- Bent Arcane Focus (QI!)
					},
				}),
				q(80179, {	-- Finding Justice
					["sourceQuests"] = { 80178 },	-- A Murder Most Foul
					["provider"] = { "n", 219173 },	-- Wenren Althal
					["coord"] = { 48.7, 64.6, HALLOWFALL },
					["groups"] = {
						i(225946),	-- Slightly Singed Arathi Tabard (COSMETIC!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.08, {	-- The Weight of Duty
				q(79159, {	-- Dereliction of Duty
					--["sourceQuests"] = { xx },	-- ?
					["provider"] = { "n", 215306 },	-- Endiri Dawnsurge
					["coord"] = { 41.5, 52.4, HALLOWFALL },
				}),
				q(79160, {	-- Fishing is Good for the Soul
					["sourceQuests"] = { 79159 },	-- Dereliction of Duty
					["provider"] = { "n", 215301 },	-- Shinda Creedpike
					["coord"] = { 40.7, 50.6, HALLOWFALL },
					["groups"] = {
						i(228367),	-- Arathi Scout's Walking Stick
						i(228366),	-- Child's Former Fishing Rod
						i(228365),	-- Concerned Captain's Cudgel
						i(228364),	-- Endiri's Chipped Boot Knife
						i(228362),	-- Polished Arathi Rifle
						i(228363),	-- Shinda's Spare Greataxe
					},
				}),
				q(79162, {	-- Burnout
					["sourceQuests"] = { 79160 },	-- Fishing is Good for the Soul
					["provider"] = { "n", 215301 },	-- Shinda Creedpike
					["coord"] = { 39.5, 63.9, HALLOWFALL },
				}),
			}),
			header(HEADERS.AchCriteria, 40844.09, {	-- Apart for Purpose
				q(82477, {	-- A Helping Farmhand
					--["sourceQuests"] = { xx },	-- ?
					["provider"] = { "n", 223920 },	-- Orren Masyn
					["coord"] = { 49.1, 62.0, HALLOWFALL },
					["groups"] = {
						i(224051),	-- Slightly Chewed Harvest Bounty (QI!)
					},
				}),
				q(82478, {	-- Regularly Scheduled Maintenance
					["sourceQuests"] = { 82477 },	-- A Helping Farmhand
					["provider"] = { "n", 224378 },	-- Orren Masyn
					["coord"] = { 47.3, 64.8, HALLOWFALL },
					["groups"] = {
						o(446363, {	-- Amber Bloom
							i(224099),	-- Amber Bloom (QI!)
						}),
						o(446362, {	-- Crimson Charmer
							i(224098),	-- Crimson Charmer (QI!)
						}),
						i(224193),	-- Orren's Message (QI!)
					},
				}),
				q(82479, {	-- The Sword is Mightier
					["sourceQuests"] = { 82478 },	-- Regularly Scheduled Maintenance
					["provider"] = { "n", 213613 },	-- Aemyra Acton
					["coords"] = {
						{ 50.0, 20.8, HALLOWFALL },
						{ 46.0, 10.5, HALLOWFALL },
					},
				}),
				q(82480, {	-- Job Killing Robot Or...
					["sourceQuests"] = { 82479 },	-- The Sword is Mightier
					["provider"] = { "n", 224379 },	-- Orren Masyn
					["coord"] = { 46.6, 59.8, HALLOWFALL },
					["groups"] = {
						i(225947),	-- ELIZA's Rake Attachment (COSMETIC!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.10, {	-- Rest at Last
				q(83497, {	-- A Concerned Friend
					["provider"] = { "n", 226708 },	-- Val Thalvassa
					["coord"] = { 51.1, 46.0, DORNOGAL },
					["isBreadcrumb"] = true,
				}),
				q(79165, {	-- A Moment To Rest
					["sourceQuests"] = { 83497 },	-- A Concerned Friend
					["provider"] = { "n", 215341 },	-- Great Kyron
					["coord"] = { 43.2, 52.4, HALLOWFALL },
				}),
				q(79166, {	-- Lost Pieces
					["sourceQuests"] = { 79165 },	-- A Moment To Rest
					["provider"] = { "n", 218541 },	-- Anduin Wrynn
					["coord"] = { 40.7, 70.9, HALLOWFALL },
					["groups"] = {
						i(214615),	-- Broken Trinket (QI!)
						i(214616),	-- Engraved Dagger (QI!)
						i(214609),	-- Game Piece (QI!)
						i(211959),	-- Lost Belongings (QI!)
					},
				}),
				q(79167, {	-- Crowdsourcing
					["sourceQuests"] = { 79166 },	-- Lost Pieces
					["provider"] = { "n", 215331 },	-- Faerin Lothar
					["coord"] = { 43.2, 52.6, HALLOWFALL },
				}),
				q(79168, {	-- Light's Gambit
					["sourceQuests"] = { 79167 },	-- Crowdsourcing
					["provider"] = { "n", 218267 },	-- Faerin Lothar
					["coord"] = { 43.2, 52.4, HALLOWFALL },
					["groups"] = {
						i(223432),	-- Commemorative Light's Gambit Championship Signet
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.11, {	-- An Orphan's Dilemma
				q(79151, {	-- An Orphan Request
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 215237 },	-- Alyza Bowblaze
					["coord"] = { 41.8, 55.6, HALLOWFALL },
					["groups"] = {
						o(423958, {	-- Arathi Chest
							i(216604),	-- "Much Loved" Teddy Bear (QI!)
						}),
					},
				}),
				q(83182, {	-- A Bloody Inheritance
					["sourceQuests"] = { 79151 },	-- An Orphan Request
					["provider"] = { "n", 218062 },	-- Alyza Bowblaze
					["coord"] = { 52.4, 50.2, HALLOWFALL },
					["groups"] = {
						o(416310, {	-- Kobyss Chest
							i(215446),	-- Battered Helmet (QI!)
						}),
						o(423977, {	-- Kobyss Chest
							i(216525),	-- Dented Boots (QI!)
						}),
						o(423979, {	-- Kobyss Chest
							i(216526),	-- Resplendent Shield (QI!)
						}),
						o(423978, {	-- Kobyss Chest
							i(216524),	-- Salt-pitted Sword (QI!)
						}),
					},
				}),
				q(79152, {	-- Gutting the Pool
					["sourceQuests"] = { 79151 },	-- An Orphan Request
					["provider"] = { "n", 218062 },	-- Alyza Bowblaze
					["coord"] = { 52.4, 50.2, HALLOWFALL },
				}),
				q(79153, {	-- Vae Victis
					["sourceQuests"] = {
						83182,	-- A Bloody Inheritance
						79152,	-- Gutting the Pool
					},
					["provider"] = { "n", 215254 },	-- Alyza Bowblaze
					["groups"] = {
						i(217175),	-- Sharpscale's Head (QI!)
					},
				}),
				q(79154, {	-- A Final Goodbye
					["sourceQuests"] = { 79153 },	-- Vae Victis
					["provider"] = { "n", 215254 },	-- Alyza Bowblaze
					["groups"] = {
						i(225949),	-- Adult-Sized Arathi Epaulets (COSMETIC!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.12, {	-- The Mysterious Chef
				q(84392, {	-- Hungry in Hollow
					--["sourceQuests"] = { xx },	-- ?
					["provider"] = { "n", 222683 },	-- Haelmut Aegisaxe
					["coord"] = { 48.4, 39.4, HALLOWFALL },
					["isBreadcrumb"] = true,	-- TODO: need to re-confirm, just in case
				}),
				q(82843, {	-- Something Earthy
					["sourceQuests"] = { 84392 },	-- Hungry in Hollow
					["provider"] = { "n", 224741 },	-- Dolena
					["coord"] = { 69.9, 32.6, HALLOWFALL },
					["groups"] = {
						i(224396),	-- Mangled Taro (QI!)
					},
				}),
				q(82844, {	-- Something Not Ruined
					["sourceQuests"] = { 82843 },	-- Something Earthy
					["provider"] = { "n", 224741 },	-- Dolena
					["coord"] = { 69.9, 32.6, HALLOWFALL },
					["groups"] = {
						i(224397),	-- Pristine Taro (QI!)
					},
				}),
				q(82847, {	-- Enough Garlic
					["sourceQuests"] = { 82844 },	-- Something Not Ruined
					["provider"] = { "n", 224741 },	-- Dolena
					["coord"] = { 69.9, 32.6, HALLOWFALL },
					["groups"] = {
						o(451442, {	-- Secret Garlic
							i(224395),	-- Secret Garlic (QI!)
						}),
					},
				}),
				q(82848, {	-- Sous
					["sourceQuests"] = { 82847 },	-- Enough Garlic
					["provider"] = { "n", 224741 },	-- Dolena
					["coord"] = { 69.9, 32.6, HALLOWFALL },
					["groups"] = {
						i(225885),	-- Garlic Knots (COSMETIC!)
						i(228434),	-- Stew-Stained Cape
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.13, {	-- What Grows in the Dark
				q(79309, {	-- Status Report
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 216061 },	-- Captain Trueflame
					["coord"] = { 70.5, 44.9, HALLOWFALL },
				}),
				q(79310, {	-- Seek the Lost
					["sourceQuests"] = { 79309 },	-- Status Report
					["provider"] = { "n", 216063 },	-- Scout Wayshelm
					["coord"] = { 75.4, 49.6, HALLOWFALL },
					["groups"] = {
						o(422560, {	-- Maevest's Compass
							i(213519),	-- Maevest's Compass (QI!)
						}),
					},
				}),
				q(79312, {	-- Mow the Masses
					["sourceQuests"] = { 79310 },	-- Seek the Lost
					["provider"] = { "n", 216063 },	-- Scout Wayshelm
					["coord"] = { 75.4, 49.6, HALLOWFALL },
				}),
				q(79311, {	-- Stem the Flow
					["sourceQuests"] = { 79310 },	-- Seek the Lost
					["provider"] = { "n", 216063 },	-- Scout Wayshelm
					["coord"] = { 75.4, 49.6, HALLOWFALL },
				}),
				q(79313, {	-- What Grows in the Dark
					["sourceQuests"] = {
						79312,	-- Mow the Masses
						79311,	-- Stem the Flow
					},
					["provider"] = { "n", 216063 },	-- Scout Wayshelm
					["coord"] = { 75.5, 51.8, HALLOWFALL },
					["groups"] = {
						i(226140),	-- The Flame's Remembrance
					},
				}),
			}),
			header(HEADERS.AchCriteria, 40844.14, {	-- Suspicious Minds
				q(83283, {	-- For Morale
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 225857 },	-- Lerrenal Fayn
					["coord"] = { 68.0, 44.2, HALLOWFALL },
					["groups"] = {
						i(225340),	-- Imperial Brut (QI!)
					},
				}),
				q(83247, {	-- Suspicious Minds
					["sourceQuests"] = { 78658 },	-- 	-- The Hallowed Path,  For Morale is not the source quest, you can do 83247 before 83283
					["provider"] = { "n", 225879 },	-- Derill Fayn
					["coord"] = { 68.1, 44.2, HALLOWFALL },
					["groups"] = {
						i(225179),	-- Salamanther Heart (QI!)
						i(228438),	-- Derill's Unused Visor
						i(228437),	-- Salamanther-Scale Greaves
						i(228436),	-- United Arathi's Jerkin
						i(228435),	-- Wine-Dyed Leggings
					},
				}),
				q(83279, {	-- Prove One's Mettle
					["description"] = "This quest is only obtainable as either a Death Knight, Demon Hunter, Shadow Priest, or Warlock or as an Undead or Void Elf.",
					["sourceQuests"] = { 83247 },	-- Suspicious Minds
					["provider"] = { "n", 225879 },	-- Derill Fayn
					["coord"] = { 68.1, 44.2, HALLOWFALL },
					["classes"] = { DEATHKNIGHT, DEMONHUNTER, PRIEST, WARLOCK },
					["races"] = { UNDEAD, VOIDELF },
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.ClassORRaceRequirements,
				}),
			}),
			header(HEADERS.AchCriteria, 40844.15, {	-- Memories of the Sky
				q(80673, {	-- Runway Scare-a-way
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 220718 },	-- Maera Ashyld
					["coord"] = { 60.5, 60.2, HALLOWFALL },
				}),
				q(80677, {	-- Torching Lights
					["sourceQuests"] = { 78658 },	-- The Hallowed Path
					["provider"] = { "n", 220718 },	-- Maera Ashyld
					["coord"] = { 60.5, 60.2, HALLOWFALL },
					["groups"] = {
						i(219943),	-- Lamplighter Firearm (QI!)
					},
				}),
				q(80678, {	-- Time Lost
					["sourceQuests"] = {
						80673,	-- Runway Scare-a-way
						80677,	-- Torching Lights
					},
					["provider"] = { "n", 220718 },	-- Maera Ashyld
					["coord"] = { 60.5, 60.2, HALLOWFALL },
					["groups"] = {
						o(437025, {	-- Sludge Pile
							i(219814),	-- Rusted Torch (QI!)
							i(219813),	-- Tarnished Compass (QI!)
							i(219811),	-- Broken Bracelet (QI!)
							i(219816),	-- Knotted Aviator Scarf (QI!)
							i(219812),	-- Plush Lynx (QI!)
							i(219815),	-- Small Hilt (QI!)
						}),
						--
						i(219810),	-- Broken Bracelet
						i(219809),	-- Plush Lynx
						i(219524),	-- Tarnished Compass
					},
				}),
				q(82810, {	-- Time Found
					["description"] = "Becomes available a week after 'Time Lost' was finished.",
					["sourceQuests"] = { 80678 },	-- Time Lost
					["provider"] = { "n", 220718 },	-- Maera Ashyld
					["coord"] = { 60.5, 60.2, HALLOWFALL },
					["groups"] = {
						o(451538, {	-- Sludge Pile
							i(224184),	-- Crusty Spyglass (QI!)
							i(224187),	-- Dented Spearhead (QI!)
							i(224188),	-- Filigreed Cleric (QI!)
							i(224186),	-- Hymns of the Flame (QI!)
							i(224189),	-- Ivory Tinderbox (QI!
							i(224179),	-- Swamplogged Letter (QI!)
						}),
						--
						i(224267),	-- Dented Spearhead
						i(224268),	-- Filigreed Cleric
						i(224266),	-- Ivory Tinderbox
					},
				}),
				q(82813, {	-- Time Borrowed
					["description"] = "Become available a week after 'Time Found' was finished.",
					["sourceQuests"] = { 82810 },	-- Time Found
					["provider"] = { "n", 220718 },	-- Maera Ashyld
					["coord"] = { 60.5, 60.2, HALLOWFALL },
					["groups"] = {
						i(224187),	-- Dented Spearhead (QI!)
						i(224239),	-- Pile of Leather String (QI!)
						i(224257),	-- Sturdy Locket (QI!)
						i(224250),	-- Toy Fish (QI!)
						i(224254),	-- Wooden Figure (QI!)
						i(224238),	-- Worn Coin (QI!)
						--
						i(224272),	-- Calcified Journal
						i(224274),	-- Sturdy Locket
						i(224273),	-- Wooden Figure
					},
				}),
			}),
			------ Miscellaneous ------
			q(79554, {	-- Holy Hydrocarbons
				["provider"] = { "i", 217388 },	-- Crate of Devotional Candles (QS!/QI!)
			}),
			q(79221, {	-- The Unusual Bug
				["provider"] = { "i", 212331 },	-- The Unusual Bug (QS!/QI!)
				["coord"] = { 67.2, 21.8, HALLOWFALL },
				["maps"] = { AZJ_KAHET },
			}),
			q(81640, {	-- Tenir and the Order of Night
				["provider"] = { "i", 219384 },	-- Umbral Eggplant (QS!/QI!)
				["maps"] = { ISLE_OF_DORN },
			}),
			q(82894, {	-- The Price of Hope
				["sourceQuests"] = { 78658 },	-- The Hallowed Path
				["provider"] = { "n", 215335 },	-- General Steelstrike
				["coord"] = { 40.5, 50.8, HALLOWFALL },
				["groups"] = {
					o(424343, {	-- Medical Supplies
						i(216687),	-- Cobbled Together Bandage (QI!)
					}),
				},
			}),
			header(HEADERS.Achievement, 40618, {	-- Lost and Found
				-- Items are obtained during quests Time Lost, Time Found and Time Borrowed
				q(80681, {	-- Broken Bracelet
					["sourceQuests"] = { 80678 },	-- Time Lost
					["provider"] = { "n", 215527 },	-- Keyrra Flamestonge <Expedition Scout>
					["coord"] = { 65.4, 32.2, HALLOWFALL },
					["cost"] = {{"i", 219810, 1}},	-- 1x Broken Bracelet
				}),
				q(82835, {	-- Calcified Journal
					["sourceQuests"] = { 82813 },	-- Time Borrowed
					["provider"] = { "n", 222813 },	-- Lorel Ironglen
					["coord"] = { 48.4, 38.9, HALLOWFALL },
					["cost"] = {{"i", 224272, 1}},	-- 1x Calcified Journal
				}),
				q(82846, {	-- Dented Spearhead
					["sourceQuests"] = { 82810 },	-- Time Found
					["provider"] = { "n", 213145 },	-- Auralia Steelstrike
					["coord"] = { 42.3, 55.0, HALLOWFALL },
					["cost"] = {{"i", 224267, 1}},	-- 1x Dented Spearhead
				}),
				q(82849, {	-- Filigreed Cleric
					["sourceQuests"] = { 82810 },	-- Time Found
					["provider"] = { "n", 217813 },	-- Kiera Horth
					["coord"] = { 44.0, 49.7, HALLOWFALL },
					["cost"] = {{"i", 224268, 1}},	-- 1x Filigreed Cleric
				}),
				q(82845, {	-- Ivory Tinderbox
					["sourceQuests"] = { 82810 },	-- Time Found
					["provider"] = { "n", 226051 },	-- Haverd Sunhart
					["coord"] = { 41.6, 34.8, HALLOWFALL },
					["cost"] = {{"i", 224266, 1}},	-- 1x Ivory Tinderbox
				}),
				q(80679, {	-- Stuffed Lynx Toy
					["sourceQuests"] = { 80678 },	-- Time Lost
					["provider"] = { "n", 218486 },	-- Phillip Taversil <Leatherworking>
					["coord"] = { 43.3, 55.4, HALLOWFALL },
					["cost"] = {{"i", 219809, 1}},	-- 1x Plush Lynx
				}),
				q(82815, {	-- Sturdy Locket
					["sourceQuests"] = { 82813 },	-- Time Borrowed
					["provider"] = { "n", 220859 },	-- Amy Lychenstone
					["coord"] = { 42.1, 49.5, HALLOWFALL },
					["cost"] = {{"i", 224274, 1}},	-- 1x Sturdy Locket
				}),
				q(80680, {	-- Tarnished Compass
					["sourceQuests"] = { 80678 },	-- Time Lost
					["provider"] = { "o", 439890 },	-- Grave Offering Location
					["coord"] = { 43.5, 51.7, HALLOWFALL },
					["cost"] = {{"i", 219524, 1}},	-- 1x Tarnished Compass
				}),
				q(82832, {	-- Wooden Figure
					["sourceQuests"] = { 82813 },	-- Time Borrowed
					["provider"] = { "n", 217609 },	-- Barahi Lynflayme
					["coord"] = { 69.3, 43.8, HALLOWFALL },
					["cost"] = {{"i", 224273, 1}},	-- 1x Wooden Figure
				}),
			}),
			hqt(82025, {	-- Talk with Sky-Captain Aerthin
				["name"] = "Talk with Sky-Captain Aerthin",
				["description"] = "This npc is on a patrolling airship.",
				["provider"] = { "n", 222323 },	-- Sky-Captain Aerthin
				["coords"] = {
					{ 33.0, 43.0, HALLOWFALL },
					{ 34.2, 45.4, HALLOWFALL },
				},
			}),
			hqt(82024, {	-- Talk with Sky-Captain Clairmonte
				["name"] = "Talk with Sky-Captain Clairmonte",
				["description"] = "This npc is on a patrolling airship.",
				["provider"] = { "n", 222311 },	-- Sky-Captain Clairmonte
				["coords"] = {
					{ 44.6, 45.8, HALLOWFALL },
					{ 34.2, 45.4, HALLOWFALL },
				},
			}),
			hqt(82012, {	-- Talk with Sky-Captain Dornald
				["name"] = "Talk with Sky-Captain Dornald",
				["description"] = "This npc is on a patrolling airship.",
				["provider"] = { "n", 222333 },	-- Sky-Captain Dornald
				["coords"] = {
					{ 45.4, 47.4, HALLOWFALL },
					{ 58.0, 40.2, HALLOWFALL },
				},
			}),
			hqt(82026, {	-- Talk with Sky-Captain Onaro
				["name"] = "Talk with Sky-Captain Onaro",
				["description"] = "This npc is on a patrolling airship.",
				["provider"] = { "n", 222337 },	-- Sky-Captain Onaro
				["coords"] = {
					{ 45.4, 47.4, HALLOWFALL },
					{ 58.0, 40.2, HALLOWFALL },
				},
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 80 },
			},{
				q(81568, {	-- Release the Beasts
					["sourceQuests"] = {
						78672,	-- A Lamplighter's Duty
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["coord"] = { 55.2, 26.8, HALLOWFALL },
					["groups"] = {
						i(217352),	-- Gasping Fish (QI!)
					},
				}),
			})),
			------ Stay awhile and listen ------
			hqt(81635, {	-- Stay awhile and listen: Nalina Ironsong
				["name"] = "Stay awhile and listen: Nalina Ironsong",
				-- ["sourceQuests"] = { ??? },	-- TODO: Find a sourcequest and move this quest next to it in quests
				["provider"] = { "n", 217642 },	-- Nalina Ironsong
				["coord"] = { 42.8, 55.8, HALLOWFALL },
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(HALLOWFALL, {
			n(QUESTS, {
				-- During questing
				q(83614),	-- [DNT] Zone 3 Bread Crumb Completed Organically (spellID 456930), after turn in questID 78658 (The Hallowed Path)
				q(79654),	-- [DNT] Hallowfall Arathi Renown Unlock (spellID 448657)
				-- questID 79303 (A Principled Principal) nodes
				q(83287),	-- should accept work
				q(83288),	-- system become unfair
				q(83289),	-- reject work and blame Edwyn in addition
				--questID 82894 (The Price of Hope)
				-- questID 82479 (The Sword is Mightier)
				q(82728),	-- 4 page / 1 node (The work...)
				q(82738),	-- 4 page / 1 node (The work...)
				q(82729),	-- 4 page / 3 node (Don't get...)
				q(82730),	-- 4 page / 4 node (Please...)
				q(82732),	-- 5 page / 1 node (I'm...)
				q(82736),	-- 5 page / 1 node (I'm...)
				q(82731),	-- 5 page / 3 node (I want...)
				q(82733),	-- 5 page / 4 node (If you...)
				q(82737),	-- 5 page / 4 node (If you...)
				--
				q(82673),	-- trigger after interact with Cooking Pot and choose 'Seems good to me' option, during questID 82222 (Cooking With Style)
				q(82674),	-- trigger after interact with Cooking Pot and choose 'Good enought' option, during questID 82222 (Cooking With Style)
				q(82675),	-- trigger after interact with Cooking Pot and choose 'Retry' or 'Cooking' option, during questID 82222 (Cooking With Style)
				q(83056),	-- Cooking With Style Tracker (completed with Q(82222) and was named by blizzard)
				--
				q(82218),	-- 'Break [DNT]' triggered during questID 82217 (Underground Economics) when you click 'Alliance' dialog option on Andee Seabraid
				--q(xxxxx),	-- '?' triggered during questID 82217 (Underground Economics) when you click 'Horde' dialog option on Andee Seabraid
				--
				q(82749, {	-- Flag for next quest after weekly reset for Time Lost & Time Found & Time Borrowed (spellID 452551 - Flag Timer)
					["name"] = "Times Lost, Found and Borrowed have been reset.",
				}),
				q(83748),	-- triggered after turn in questID 79168 (Light's Gambit) (spellID 457904 - [DNT] Have Played Light's Gambit)
				q(79941, {["isDaily"]=true,}),	-- <I wish to visit Veneration Groundkeeper> - Justicia Baercennan (n: 225942 @ 41.8, 54.3), nothing happen & reset on daily (spellID 454635)
				q(79212),	-- not sure why it pop near Defender of the Flame quest chain @ 65.5, 32.2, when I fly here first time
			}),
		}),
	}),
}));
