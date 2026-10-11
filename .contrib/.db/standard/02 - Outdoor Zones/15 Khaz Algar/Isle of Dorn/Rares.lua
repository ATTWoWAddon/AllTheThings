---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(RARES, sharedData({
			["isDaily"] = true,
		}, {
			n(219281, {	-- Alunira
				["coord"] = { 23.1, 58.5, ISLE_OF_DORN },
				["questID"] = 85158,
				["cost"] = { { "i", 224026, 1 } },	-- 1x Storm Vessel
				["groups"] = {
					i(223270),	-- Alunira (MOUNT!)
				},
			}),
			n(221128, {	-- Clawbreaker K'zithix
				["description"] = "Walking around in the area.",
				["coord"] = { 55.6, 27.0, ISLE_OF_DORN},	-- old coords: 80.3, 35.1 / 79.1, 34.2 / 64.0, 39.2
				["questID"] = 81920,
				["groups"] = {
					hqt_bonusRenown_weekly(84036, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Clawbreaker K'zithix
				}
			}),
			n(219266, {	-- Escaped Cutthroat
				["coord"] = { 25.8, 45.1, ISLE_OF_DORN },
				["questID"] = 81907,
				["groups"] = {
					i(221235),	-- Dark Agent's Cloak
					i(221208),	-- Unseen Cutthroat's Tunic
					hqt_bonusRenown_weekly(84029, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Escaped Cutthroat
				},
			}),
			n(219279, {	-- Flamekeeper Graz
				["description"] = "Walking around in the area.",
				["coords"] = {
					{ 65.6, 39.9, ISLE_OF_DORN },
					{ 64.6, 39.8, ISLE_OF_DORN },
					{ 64.0, 39.2, ISLE_OF_DORN },	-- initial spawn point
				},
				["questID"] = 81905,
				["groups"] = {
					i(221244),	-- Flamekeeper's Footpads
					i(221249),	-- Kobold Rodent Squasher
					hqt_bonusRenown_weekly(84034, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Flamekeeper Graz
				},
			}),
			n(219268, {	-- Gar'loc
				["coord"] = { 53.5, 80.1, ISLE_OF_DORN },
				["questID"] = 81899,
				["groups"] = {
					i(221248),	-- Deep Terror Carver
					i(221255),	-- Sharpened Scalepiercer
					i(221222),	-- Water-Imbued Spaulders
					hqt_bonusRenown_weekly(84028, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Gar'loc
				},
			}),
			n(222378, {	-- Kereke
				["coord"] = { 30.9, 52.3, ISLE_OF_DORN },
				["questID"] = 82204,
				["groups"] = {
					i(226111),	-- Arakkoan Ritual Staff
					i(226113),	-- Kereke's Flourishing Sabre
					i(226114),	-- Windslicer's Lance
					hqt_bonusRenown_weekly(85160, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Kereke
				},
			}),
			n(219270, {	-- Kronolith, Might of the Mountain
				["coord"] = { 48.1, 27.0, ISLE_OF_DORN },
				["questID"] = 81902,
				["groups"] = {
					i(221507),	-- Earth Golem's Wrap
					i(221254),	-- Earthshatter Lance
					i(221210),	-- Grips of the Earth
					hqt_bonusRenown_weekly(84031, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Kronolith, Might of the Mountain
				},
			}),
			n(220890, {	-- Matriarch Charfuria
				["description"] = "Walking around in the area.",
				["coord"] = { 73.1, 40.0, ISLE_OF_DORN },
				["questID"] = 81921,
				["groups"] = {
					i(221247),	-- Cavernous Critter Shooter
					i(223948),	-- Stubborn Wolf's Greathelm
					hqt_bonusRenown_weekly(84039, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Matriarch Charfuria
				},
			}),
			n(219267, {	-- Plaguehart
				["coord"] = { 51.1, 70.0, ISLE_OF_DORN },
				["questID"] = 81897,
				["groups"] = {
					i(221247),	-- Cavernous Critter Shooter
					i(221246),	-- Fierce Beast Staff
					i(221213),	-- Shawl of the Plagued
					hqt_bonusRenown_weekly(84026, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Plaguehart
				},
			}),
			n(222380, {	-- Rotfist
				["coord"] = { 30.9, 52.3, ISLE_OF_DORN },
				["questID"] = 82205,
				["groups"] = {
					i(226116),	-- Coagulating Phlegm Churner
					i(226115),	-- Contaminating Cleaver
					i(226112),	-- Rotfist Flesh Carver
					hqt_bonusRenown_weekly(85161, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Rotfist
				},
			}),
			n(219278, {	-- Shallowshell the Clacker
				["coord"] = { 74.5, 27.8, ISLE_OF_DORN },
				["questID"] = 81903,
				["groups"] = {
					i(221224),	-- Bouldershell Waistguard
					i(221255),	-- Sharpened Scalepiercer
					hqt_bonusRenown_weekly(84032, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Shallowshell the Clacker
				},
			}),
			n(220883, {	-- Sweetspark the Oozeful
				["coord"] = { 69.8, 38.4, ISLE_OF_DORN },
				["questID"] = 81922,
				["groups"] = {
					i(223921),	-- Ever-Oozing Signet
					i(223929),	-- Honey Sweetener's Squeezers
					i(223920),	-- Slime Deflecting Stopper
					hqt_bonusRenown_weekly(84038, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Sweetspark the Oozeful
				},
			}),
			n(219269, {	-- Tempest Lord Incarnus
				["coord"] = { 57.9, 16.5, ISLE_OF_DORN },
				["questID"] = 81901,
				["groups"] = {
					i(221230),	-- Storm Bindings
					i(221236),	-- Stormbreaker's Shield
					hqt_bonusRenown_weekly(84030, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Tempest Lord Incarnus
				},
			}),
			n(221126, {	-- Tephratennae
				["description"] = "Flying around in the area.",
				["coord"] = { 74.6, 36.7, ISLE_OF_DORN },
				["questID"] = 81923,
				["groups"] = {
					i(223922),	-- Cinder Pollen Cloak
					i(223937),	-- Honey Deliverer's Leggings
					hqt_bonusRenown_weekly(84037, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Tephratennae
				},
			}),
			n(219271, {	-- Twice-Stinger the Wretched
				["coord"] = { 57.2, 22.3, ISLE_OF_DORN },
				["questID"] = 81904,
				["groups"] = {
					i(221506),	-- Arachnid's Web-Sown Guise
					i(221219),	-- Silkwing Trousers
					i(221239),	-- Spider Blasting Blunderbuss (dupe)
					hqt_bonusRenown_weekly(84033, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Twice-Stinger the Wretched
				},
			}),
			n(219284, {	-- Zovex
				["coord"] = { 30.9, 52.3, ISLE_OF_DORN },
				["questID"] = 82203,
				["groups"] = {
					i(226118),	-- Arcane Prisoner's Puncher
					i(226119),	-- Arcane Sharpshooter's Crossbow
					i(226117),	-- Dalaran Guardian's Arcanotool
					hqt_bonusRenown_weekly(85159, FACTION_COUNCIL_OF_DORNOGAL),	-- Bonus Rep: Zovex
				},
			}),
		})),
		n(RARES, {
			n(219264, {	-- Bloodmaw
				["description"] = "Walking around in the area.",
				["coords"] = {
					{ 49.9, 74.8, ISLE_OF_DORN },
					{ 39.6, 82.4, ISLE_OF_DORN },
					{ 39.9, 83.8, ISLE_OF_DORN },
					{ 38.0, 84.0, ISLE_OF_DORN },
				},
				["questID"] = 81893,
				["groups"] = {
					i(223349),	-- Wolf Packleader's Cowl
					i(223350),	-- Wolf Packleader's Helm
					i(223351),	-- Wolf Packleader's Hood
					i(223370),	-- Wolf Packleader's Visor
				},
			}),
			n(219265, {	-- Emperor Pitfang
				["description"] = "Walking around in the area.",
				["coord"] = { 47.9, 60.1, ISLE_OF_DORN },
				["questID"] = 81895,
				["groups"] = {
					i(223348),	-- Viper's Stone Gauntlets
					i(223345),	-- Viper's Stone Grips
					i(223346),	-- Viper's Stone Handguards
					i(223347),	-- Viper's Stone Mitts
				},
			}),
			n(220068, {	-- Malfuctioning Spire
				["description"] = "This Rare might only be available during the introduction.",
				["coord"] = { 26.7, 57.4, ISLE_OF_DORN },
				["questID"] = 81891,
			}),
			n(213115, {	-- Rustul Titancap
				["description"] = "Walking around in the area.",
				["coords"] = {
					{ 31.7, 80.8, ISLE_OF_DORN },
					{ 33.5, 81.3, ISLE_OF_DORN },
					{ 32.4, 82.7, ISLE_OF_DORN },
					{ 31.4, 82.0, ISLE_OF_DORN },
				},
				["questID"] = 78619,
				["groups"] = {
					i(223367),	-- Cuffs of the Titancap
					i(223366),	-- Bracers of the Titancap
					i(223365),	-- Wristguards of the Titancap
					i(223364),	-- Wristwraps of the Titancap
				},
			}),
			n(217534, {	-- Sandres the Relicbearer
				["coord"] = { 64.1, 73.1, ISLE_OF_DORN },
				["questID"] = 79685,
				["groups"] = {
					i(223376),	-- Band of the Relic Bearer
				},
			}),
			n(219262, {	-- Springbubble
				["coord"] = { 58.7, 60.7, ISLE_OF_DORN },
				["questID"] = 81892,
				["groups"] = {
					i(223359),	-- Epaulets of the Steamsurger
					i(223358),	-- Mantle of the Steamsurger
					i(223356),	-- Shoulderpads of the Steamsurger
					i(223357),	-- Spaulders of the Steamsurger
				},
			}),
			n(219263, {	-- Warphorn
				["description"] = "Walking around in the area.",
				["coords"] = {
					{ 58.0, 37.0, ISLE_OF_DORN },
					{ 56.2, 36.5, ISLE_OF_DORN },
					{ 57.0, 32.9, ISLE_OF_DORN },	-- initial spawn point
					{ 58.9, 33.1, ISLE_OF_DORN },
				},
				["questID"] = 81894,
				["groups"] = {
					i(223343),	-- Warphorn's Resilient Chainmail
					i(223342),	-- Warphorn's Resilient Chestplate
					i(223341),	-- Warphorn's Resilient Mane
					i(223344),	-- Warphorn's Resilient Vest
				},
			}),
		}),
	}),
}))
