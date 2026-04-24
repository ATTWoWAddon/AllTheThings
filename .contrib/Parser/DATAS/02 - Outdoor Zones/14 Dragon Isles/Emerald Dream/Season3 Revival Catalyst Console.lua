---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local ADMIRDRASSIL_THE_DREAMS_HOPE = 2502;

local SymRaidAdmirdrassil = function(ClassID, DiffID)
	return {{"sub","instance_tier",1207,DiffID,ClassID}}
end

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		-- #if BEFORE TWW 
		-- Blizz forgot to allow S3/S4 items to be converted after S4 ended, so only raid items can be converted now. Jan 2025 ~Gold
		o(382621, {	-- Revival Catalyst Console
			["description"] = "The Revival Catalyst is a system that lets you convert Emerald Dream's Zone Weekly Event Items (Superbloom, Dreamseeds, A Worthy Ally: Dream) & LFR Mode Non-set items from the Amirdrassil Raid into your class' LFR Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
			["coord"] = { 60.6, 53.8, THALDRASZUS },
			["modelScale"] = 4,
			["groups"] = bubbleDown({ ["modID"] = 4 }, {
				cl(DEATHKNIGHT, {
					["sym"] = SymRaidAdmirdrassil(DEATHKNIGHT, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207202),	-- Graveboots of the Risen Nightmare
						i(207197),	-- Seal of the Risen Nightmare
						i(207195),	-- Shroud of the Risen Nightmare
						i(207196),	-- Vambraces of the Risen Nightmare
					},
				}),
				cl(DEMONHUNTER, {
					["sym"] = SymRaidAdmirdrassil(DEMONHUNTER, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207259),	-- Screaming Torchfiend's Armlets
						i(207260),	-- Screaming Torchfiend's Clasp
						i(207265),	-- Screaming Torchfiend's Clutches
						i(207258),	-- Screaming Torchfiend's Shawl
					},
				}),
				cl(DRUID, {
					["sym"] = SymRaidAdmirdrassil(DRUID, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207249),	-- Benevolent Embersage's Featherdrape
						i(207256),	-- Benevolent Embersage's Lined Boots
						i(207251),	-- Benevolent Embersage's Sagacious Sash
						i(207250),	-- Benevolent Embersage's Wristwraps
					},
				}),
				cl(EVOKER, {
					["sym"] = SymRaidAdmirdrassil(EVOKER, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207224),	-- Weyrnkeeper's Timeless Adorned Sash
						i(207222),	-- Weyrnkeeper's Timeless Ornamented Cloak
						i(207229),	-- Weyrnkeeper's Timeless Treads
						i(207223),	-- Weyrnkeeper's Timeless Wristlets
					},
				}),
				cl(HUNTER, {
					["sym"] = SymRaidAdmirdrassil(HUNTER, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207214),	-- Blazing Dreamstalker's Bracers
						i(207215),	-- Blazing Dreamstalker's Spined Girdle
						i(207213),	-- Blazing Dreamstalker's Staghide
						i(207220),	-- Blazing Dreamstalker's Striders
					},
				}),
				cl(MAGE, {
					["sym"] = SymRaidAdmirdrassil(MAGE, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207286),	-- Wayward Chronomancer's Cuffs
						i(207285),	-- Wayward Chronomancer's Stole
						i(207292),	-- Wayward Chronomancer's Strapped Boots
						i(207287),	-- Wayward Chronomancer's Synchronous Belt
					},
				}),
				cl(MONK, {
					["sym"] = SymRaidAdmirdrassil(MONK, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207242),	-- Mystic Heron's Belt
						i(207240),	-- Mystic Heron's Feathered Mantle
						i(207241),	-- Mystic Heron's Fisticuffs
						i(207247),	-- Mystic Heron's Tabi
					},
				}),
				cl(PALADIN, {
					["sym"] = SymRaidAdmirdrassil(PALADIN, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207186),	-- Zealous Pyreknight's Banner
						i(207193),	-- Zealous Pyreknight's Dreamstompers
						i(207188),	-- Zealous Pyreknight's Emblem
						i(207187),	-- Zealous Pyreknight's Flameguards
					},
				}),
				cl(PRIEST, {
					["sym"] = SymRaidAdmirdrassil(PRIEST, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207278),	-- Cincture of Lunar Communion
						i(207276),	-- Cloak of Lunar Communion
						i(207283),	-- Poulaines of Lunar Communion
						i(207277),	-- Wristwraps of Lunar Communion
					},
				}),
				cl(ROGUE, {
					["sym"] = SymRaidAdmirdrassil(ROGUE, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207233),	-- Lucid Shadewalker's Baldric
						i(207232),	-- Lucid Shadewalker's Bracers
						i(207231),	-- Lucid Shadewalker's Cape
						i(207238),	-- Lucid Shadewalker's Sollerets
					},
				}),
				cl(SHAMAN, {
					["sym"] = SymRaidAdmirdrassil(SHAMAN, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207204),	-- Greatwolf Outcast's Chainweave
						i(207211),	-- Greatwolf Outcast's Footpads
						i(207206),	-- Greatwolf Outcast's Sigil Belt
						i(207205),	-- Greatwolf Outcast's Wristguards
					},
				}),
				cl(WARLOCK, {
					["sym"] = SymRaidAdmirdrassil(WARLOCK, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207268),	-- Devout Ashdevil's Bracelets
						i(207269),	-- Devout Ashdevil's Fanged Sash
						i(207267),	-- Devout Ashdevil's Fiendcloak
						i(207274),	-- Devout Ashdevil's Slippers
					},
				}),
				cl(WARRIOR, {
					["sym"] = SymRaidAdmirdrassil(WARRIOR, DIFFICULTY.RAID.LFR),
					["groups"] = {
						i(207179),	-- Molten Vanguard's Chains
						i(207184),	-- Molten Vanguard's Greatboots
						i(207177),	-- Molten Vanguard's Manacles
						i(207176),	-- Molten Vanguard's Thermal Cape
					},
				}),
			}),
		}),
		-- #endif
	}),
})));
