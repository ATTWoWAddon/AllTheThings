---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(RARES, {
			-- Note: While these are all technically Achievement Criteria we don't want to use that in the infomration on whether you have killed it or not. These is due to once you killing it on one character it would auto-complete your alts. What we want to do is instead place it as a reward. This way it tracks if you did it for your account while also still telling you if you killed it on that toon.
			n(135852, {	-- Ak'tar
				["questID"] = 51058,
				["coord"] = { 49.78, 79.40, VOLDUN },
				["groups"] = {
					crit(41606, {	-- Ak'tar
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161021),	-- Soaring Slateclaw Gloves
				},
			}),
			n(130439, {	-- Ashmane
				["questID"] = 47532,
				["coord"] = { 54.69, 15.15, VOLDUN },
				["groups"] = {
					crit(41607, {	-- Ashmane
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161106),	-- Rabid Packleader Bracers
				},
			}),
			n(128553, {	-- Azer'tor
				["questID"] = 49252,
				["coord"] = { 49.05, 89.05, VOLDUN },
				["groups"] = {
					crit(41608, {	-- Azer'tor
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
				},
			}),
			n(128497, {	-- Bajiani the Slick
				["questID"] = 49251,
				["coord"] = { 31.01, 81.09, VOLDUN },
				["groups"] = {
					crit(41609, {	-- Bajiani the Slick
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(162622),	-- Groggy Brawler's Chestplate
				},
			}),
			n(129476, {	-- Bloated Krolusk
				["questID"] = 47562,
				["coord"] = { 48.8, 50.0, VOLDUN },
				["groups"] = {
					crit(41610, {	-- Bloated Krolusk
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161037),	-- Sand Scoured Girdle
				},
			}),
			n(136393, {	-- Bloodwing Bonepicker
				["questID"] = 51079,
				["coords"] = {
					-- { 56.7, 56.0, VOLDUN },	-- start of path if in the future we have a way to attach description coords
					-- { 59.5, 50.8, VOLDUN },	-- start of another path up the mountain
					{ 56.0, 53.5, VOLDUN },	-- actual rare/nest coord
				},
				["cr"] = 136390,	-- Enormous Egg
				["groups"] = {
					crit(41611, {	-- Bloodwing Bonepicker
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161019),	-- Dread Vulture Waistcord
				},
			}),
			n(136346, {	-- Captain Stef "Marrow" Quin
				["questID"] = 51073,
				["coord"] = { 41.27, 24.49, VOLDUN },
				["groups"] = {
					crit(41612, {	-- Captain Stef "Marrow" Quin
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(160990),	-- Marrow's Sash
				},
			}),
			n(124722, {	-- Commodore Calhoun
				["description"] = "This rare is at the very top of the Ashvane encampment, not down by the ship.",
				["questID"] = 50905,
				["coord"] = { 42.5, 92.1, VOLDUN },
				["groups"] = {
					crit(41613, {	-- Commodore Calhoun
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(162615),	-- Commodore Calhoun's Tricorne
				},
			}),
			n(162681, {	-- Elusive Quickhoof
				["description"] = "Feed it Seaside Leafy Greens Mix to get the mount.",
				["cost"] = { { "i", 161128, 1 } },	-- Seaside Leafy Greens
				["coords"] = {
					{ 54.2, 51.0, VOLDUN },
					{ 54.6, 53.0, VOLDUN },
					{ 54.4, 54.8, VOLDUN },
					{ 55.8, 68.6, VOLDUN },
					{ 55.4, 73.2, VOLDUN },
					{ 55.8, 75.8, VOLDUN },
					{ 55.8, 78.6, VOLDUN },
					{ 54.8, 80.8, VOLDUN },
					{ 53.8, 84.0, VOLDUN },
					{ 53.2, 85.2, VOLDUN },
					{ 52.6, 89.2, VOLDUN },
					{ 27.6, 65.4, VOLDUN },
					{ 29.6, 63.8, VOLDUN },
					{ 30.0, 60.8, VOLDUN },
					{ 26.4, 52.6, VOLDUN },
				},
				["groups"] = {
					i(174860),	-- Elusive Quickhoof (MOUNT!)
				},
			}),
			n(136335, {	-- Enraged Krolusk
				["questID"] = 51077,
				["coord"] = { 61.8, 37.8, VOLDUN },
				["groups"] = {
					crit(41614, {	-- Enraged Krolusk
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161036),	-- Sand-Smoothed Wristguards
				},
			}),
			n(128674, {	-- Gut-Gut the Glutton
				["questID"] = 49270,
				["coords"] = {
					{ 62.3, 48.1, VOLDUN },	-- start of path (if we ever have ability to add description to coords)
					{ 63.9, 48.0, VOLDUN },	-- cave entrance
				},
				["groups"] = {
					crit(41615, {	-- Gut-Gut the Glutton
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161105),	-- Gluttonous Carnivore Treads
				},
			}),
			n(130443, {	-- Hivemother Kraxi
				["questID"] = 47533,
				["coord"] = { 53.9, 51.8, VOLDUN },
				["groups"] = {
					crit(41616, {	-- Hivemother Kraxi
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161027),	-- Venomous Hivemother Cord
				},
			}),
			n(129283, {	-- Jumbo Sandsnapper
				["questID"] = 49392,
				["coord"] = { 37.3, 84.8, VOLDUN },	-- sort of mills around in this general area, 1 coord should suffice
				["groups"] = {
					crit(41617, {	-- Jumbo Sandsnapper
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161107),	-- Brineshell Footguards [Low Droprate]
				},
			}),
			n(136341, {	-- Jungleweb Hunter
				["questID"] = 51074,
				["coord"] = { 60.56, 18.03, VOLDUN },
				["groups"] = {
					crit(41618, {	-- Jungleweb Hunter
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161026),	-- Spiderbite Wristwraps
				},
			}),
			n(128686, {	-- Kamid the Trapper
				["questID"] = 50528,
				["coord"] = { 35.08, 51.83, VOLDUN },
				["groups"] = {
					crit(41619, {	-- Kamid the Trapper
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161038),	-- Sand Trapper's Legguards
				},
			}),
			n(137681, {	-- King Clickyclack
				["questID"] = 51424,
				["coord"] = { 38.2, 41.3, VOLDUN },
				["groups"] = {
					crit(41620, {	-- King Clickyclack
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161108),	-- Kingshell Legplates
				},
			}),
			n(128951, {	-- Nez'ara
				["questID"] = 50898,
				["coord"] = { 43.9, 87.0, VOLDUN },	-- cave entrance
				["groups"] = {
					crit(41621, {	-- Nez'ara
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161024),	-- Wrathful Sister's Cincture
				},
			}),
			n(143313, {	-- Portakillo
				["coord"] = { 61.0, 18.3, VOLDUN },
			}),
			n(136340, {	-- Relic Hunter Hazaak
				["questID"] = 51126,
				["coord"] = { 49.0, 72.0, VOLDUN },
				["groups"] = {
					crit(41622, {	-- Relic Hunter Hazaak
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(160956),	-- Hazaak's Windshorn Claws
				},
			}),
			n(127776, {	-- Scaleclaw Broodmother
				["questID"] = 48960,
				["coord"] = { 44.4, 80.1, VOLDUN },
				["groups"] = {
					crit(41623, {	-- Scaleclaw Broodmother
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161039),	-- Sandclaw Handguards
				},
			}),
			n(136336, {	-- Scorpox
				["questID"] = 51076,
				["coord"] = { 32.8, 65.1, VOLDUN },
				["groups"] = {
					crit(41624, {	-- Scorpox
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161030),	-- Vicious Scorpidsting Sandals
				},
			}),
			n(136338, {	-- Sirokar
				["questID"] = 51075,
				["coord"] = { 24.8, 68.6, VOLDUN },
				["groups"] = {
					crit(41625, {	-- Sirokar
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161099),	-- Wind-Scoured Greaves
				},
			}),
			n(134571, {	-- Skycaller Teskris
				["questID"] = 50637,
				["coord"] = { 47.0, 25.6, VOLDUN },
				["groups"] = {
					crit(41626, {	-- Skycaller Teskris
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(160968),	-- Skycaller Spellstaff
				},
			}),
			n(134745, {	-- Skycarver Krakit
				["questID"] = 50686,
				["coord"] = { 51.27, 36.53, VOLDUN },
				["groups"] = {
					crit(41627, {	-- Skycarver Krakit
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(160980),	-- Skycarver Warglaive
				},
			}),
			n(136304, {	-- Songstress Nahjeen
				["questID"] = 51063,
				["coord"] = { 66.89, 24.44, VOLDUN },
				["groups"] = {
					crit(41628, {	-- Songstress Nahjeen
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161025),	-- Wailing Sister's Gloves
				},
			}),
			n(130401, {	-- Vathikur
				["questID"] = 49674,
				["coord"] = { 57.2, 73.2, VOLDUN },
				["groups"] = {
					crit(41629, {	-- Vathikur
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161097),	-- Rattling Earth Armwraps
				},
			}),
			n(129180, {	-- Warbringer Hozzik
				["questID"] = 49373,
				["coord"] = { 37.0, 46.1, VOLDUN },
				["groups"] = {
					crit(41630, {	-- Warbringer Hozzik
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161032),	-- Spire-Charged Links
				},
			}),
			n(134638, {	-- Warlord Zothix
				["questID"] = 50662,
				["coord"] = { 30.0, 52.6, VOLDUN },
				["groups"] = {
					crit(41631, {	-- Warlord Zothix
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161031),	-- Zothix's Conductive Vambraces
				},
			}),
			n(134625, {	-- Warmother Captive
				["questID"] = 50658,
				["coord"] = { 50.72, 30.88, VOLDUN },
				["groups"] = {
					crit(41632, {	-- Warmother Captive
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161103),	-- Barbarous Captive's Wargreavers
				},
			}),
			n(129411, {	-- Zunashi the Exile
				["questID"] = 48319,
				["coord"] = { 43.9, 52.4, VOLDUN },	-- cave entrance
				["groups"] = {
					crit(41633, {	-- Zunashi the Exile
						["achievementID"] = 12943,	-- Adventurer of Vol'dun
					}),
					i(161119),	-- Ravasaur Skull Bijou
				},
			}),
		}),
	}),
})));
