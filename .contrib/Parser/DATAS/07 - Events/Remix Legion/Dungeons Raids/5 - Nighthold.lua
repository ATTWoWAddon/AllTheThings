-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

------ Encounter Constants ------
local SKORPYRON = 1706;
local CHRONOMATIC = 1725;
local TRILLIAX = 1731;
local ALURIEL = 1751;
local TICHONDRIUS = 1762;
local KROSUS = 1713;
local TELARN = 1761;
local ETRAEUS = 1732;
local ELISANDE = 1743;
local GULDAN = 1737;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SKORPYRON] = { 102263 },	-- Skorpyron
	[CHRONOMATIC] = { 104415 },	-- Chronomatic Anomaly
	[TRILLIAX] = { 104288 },	-- Trilliax
	[ALURIEL] = { 104881 },	-- Spellblade Aluriel
	[TICHONDRIUS] = { 103685 },	-- Tichondrius
	[KROSUS] = { 101002 },	-- Krosus
	[TELARN] = {	-- Tel'arn
		109040,	-- Arcanist Tel'arn
		104528,	-- High Botanist Tel'arn
		109041,	-- Naturalist Tel'arn
		109038,	-- Solarist Tel'arn
	},
	[ETRAEUS] = { 103758 },	-- Star Augur Etraeus
	[ELISANDE] = { 106643 },	-- Grand Magistrix Elisande
	[GULDAN] = {	-- Gul'dan
		104154,	-- Gul'dan
		111022,	-- The Demon Within
	},
};

local COMMONLOOT = {
	filter(CLOAKS, {
		-- Regular items
		i(247489),	-- Aristocrat's Winter Drape
		i(247481),	-- Astromancer's Greatcloak
		i(247482),	-- Cloak of Temporal Recalibration
		i(247491),	-- Cloak of Multitudinous Sheaths
		i(247436),	-- Dreadlord's Tattered Wingcover
		i(247492),	-- Fashionable Autumn Cloak
		i(247490),	-- Feathermane Feather Cloak

		-- Set items
		i(247063),	-- Purifier's Drape
		i(247058),	-- Cloak of Everburning Knowledge
		i(247066),	-- Cloak of Azj'Aqir
		i(247064),	-- Doomblade Shadowwrap
		i(247060),	-- Cloak of Enveloped Dissonance
		i(247059),	-- Cloak of the Astral Warden
		i(247068),	-- Cape of Second Sight
		i(247061),	-- Eagletalon Cloak
		i(247065),	-- Cloak of Shackled Elements
		i(247067),	-- Greatcloak of the Obsidian Aspect
		i(247062),	-- Greatmantle of the Highlord
		i(247057),	-- Dreadwyrm Greatcloak
	}),
	filter(CLOTH, {
		-- Regular items
		i(247430),	-- Antiquated Highborne Cinch
		i(247431),	-- Bracers of Harnessed Flame
		i(247493),	-- Mana-Cord of Deception
		i(247467),	-- Man'ari Skullbuckled Cinch
		i(247486),	-- Outcast Wanderer's Footrags
		i(247435),	-- Perpetually Muddy Sandals
		i(247465),	-- Treads of Galactic Odyssey
		i(247466),	-- Woven Lasher Tendril Bracers

		-- Set items
		i(247003),	-- Purifier's Gloves
		i(247006),	-- Purifier's Gorget
		i(247009),	-- Purifier's Leggings
		i(247012),	-- Purifier's Cassock
		i(247015),	-- Purifier's Mantle
		i(247011),	-- Robe of Everburning Knowledge
		i(247002),	-- Gloves of Everburning Knowledge
		i(247005),	-- Hood of Everburning Knowledge
		i(247008),	-- Leggings of Everburning Knowledge
		i(247014),	-- Mantle of Everburning Knowledge
		i(247004),	-- Clutch of Azj'Aqir
		i(247007),	-- Eyes of Azj'Aqir
		i(247013),	-- Finery of Azj'Aqir
		i(247010),	-- Leggings of Azj'Aqir
		i(247016),	-- Pauldrons of Azj'Aqir
	}),
	filter(LEATHER, {
		-- Regular items
		i(247469),	-- Bracers of Impossible Choices
		i(247438),	-- Cake Carrier's Girdle
		i(247439),	-- Girdle of Nefarious Strategy
		i(247441),	-- Grove-Tender's Moccasins
		i(247488),	-- High Shadow Councilor's Wrap
		i(247440),	-- Stutterstep Treads
		i(247494),	-- Waistclasp of Unethical Power
		i(247437),	-- Well-Flattened Wristguards

		-- Set items
		i(247019),	-- Doomblade Tunic
		i(247022),	-- Doomblade Gauntlets
		i(247025),	-- Doomblade Cowl
		i(247028),	-- Doomblade Pants
		i(247031),	-- Doomblade Spaulders
		i(247018),	-- Tunic of Enveloped Dissonance
		i(247021),	-- Gloves of Enveloped Dissonance
		i(247024),	-- Hood of Enveloped Dissonance
		i(247027),	-- Leggings of Enveloped Dissonance
		i(247030),	-- Pauldrons of Enveloped Dissonance
		i(247017),	-- Robe of the Astral Warden
		i(247020),	-- Gloves of the Astral Warden
		i(247023),	-- Hood of the Astral Warden
		i(247026),	-- Leggings of the Astral Warden
		i(247029),	-- Mantle of the Astral Warden
		i(247069),	-- Tunic of Second Sight
		i(247070),	-- Gloves of Second Sight
		i(247071),	-- Mask of Second Sight
		i(247072),	-- Legwraps of Second Sight
		i(247073),	-- Shoulderguards of Second Sight
	}),
	filter(MAIL, {
		-- Regular items
		i(247470),	-- Belt of Celestial Alignment
		i(247448),	-- Emblazoned Duskwatch Belt
		i(247447),	-- Sabatons of Burning Steps
		i(247453),	-- Shal'dorei Weedstompers
		i(247456),	-- Stinger Resistant Bracers
		i(247454),	-- Thistle-Proof Thorngrabbers
		i(247495),	-- Vintage Duskwatch Cinch

		-- Set items
		i(247032),	-- Eagletalon Tunic
		i(247033),	-- Eagletalon Gauntlets
		i(247035),	-- Eagletalon Cowl
		i(247037),	-- Eagletalon Legchains
		i(247040),	-- Eagletalon Spaulders
		i(247034),	-- Gauntlets of Shackled Elements
		i(247038),	-- Leggings of Shackled Elements
		i(247039),	-- Raiment of Shackled Elements
		i(247041),	-- Pauldrons of Shackled Elements
		-- i(247036),	-- Helm of Shackled Elements [Drops in The Emerald Nightmare]
	}),
	filter(PLATE, {
		-- Regular items
		i(247458),	-- Duskwatch Plate Bracers
		i(247473),	-- Eternally Recurring Bracers
		i(247460),	-- Gilded Nightborne Waistplate
		i(247496),	-- Gleaming Celestial Waistguard
		i(247472),	-- Goresmeared Abyssal Waistplate
		i(247477),	-- Immaculately Polished Boots
		i(247475),	-- Jagged Carapace Wristclamps
		i(247464),	-- Leystone-Toe Kickers
		i(247471),	-- Sabatons of Unchanging Fate
		i(247484),	-- Waistplate of Fractured Realities

		-- Set items
		i(247044),	-- Chestplate of the Obsidian Aspect
		i(247047),	-- Gauntlets of the Obsidian Aspect
		i(247050),	-- Warhelm of the Obsidian Aspect
		i(247053),	-- Legplates of the Obsidian Aspect
		i(247056),	-- Shoulderplates of the Obsidian Aspect
		i(247043),	-- Breastplate of the Highlord
		i(247046),	-- Gauntlets of the Highlord
		i(247049),	-- Helmet of the Highlord
		i(247052),	-- Legplates of the Highlord
		i(247055),	-- Pauldrons of the Highlord
		i(247042),	-- Dreadwyrm Breastplate
		i(247045),	-- Dreadwyrm Gauntlets
		i(247048),	-- Dreadwyrm Crown
		i(247051),	-- Dreadwyrm Legplates
		i(247054),	-- Dreadwyrm Shoulderguards
	}),
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(786, {	-- The Nighthold
			["coords"] = {
				{ 43.3, 62.3, SURAMAR },	-- entrance that leads underground
				{ 44.1, 59.7, SURAMAR },	-- actual raid entrance
			},
			["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },
			["isRaid"] = true,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42553, {	-- Raid Finder: The Nighthold
						crit(108560, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108558, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108559, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108557, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108556, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108555, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108553, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108554, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108552, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60865, {	-- The Nighthold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60861,	-- Arcing Aqueducts
							60862,	-- Royal Athenaeum
							60863,	-- Nightspire
							60864,	-- Betrayer's Rise
						}},
					}),
					ach(60861, {	-- Arcing Aqueducts
						crit(107157, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107159, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107158, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60862, {	-- Royal Athenaeum
						crit(107160, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107161, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107162, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60863, {	-- Nightspire
						crit(107164, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107163, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107165, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60864, {	-- Betrayer's Rise
						["_encounter"] = { GULDAN, DIFFICULTY.RAID.MULTI.ALL },
						["provider"] = { "n", 104154 },	-- Gul'dan
					}),
					ach(42543, {	-- Heroic: The Nighthold
						crit(108486, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108484, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108485, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108483, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108482, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108481, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108479, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108480, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108478, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					}),
					ach(42544, {	-- Mythic: The Nighthold
						crit(108523, {	-- Skorpyron
							["_encounter"] = { SKORPYRON, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108521, {	-- Chronomatic Anomaly
							["_encounter"] = { CHRONOMATIC, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108522, {	-- Trilliax
							["_encounter"] = { TRILLIAX, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108520, {	-- Spellblade Aluriel
							["_encounter"] = { ALURIEL, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108519, {	-- Star Augur Etraeus
							["_encounter"] = { ETRAEUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108518, {	-- High Botanist Tel'arn
							["_encounter"] = { TELARN, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108516, {	-- Tichondrius
							["_encounter"] = { TICHONDRIUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108517, {	-- Krosus
							["_encounter"] = { KROSUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108515, {	-- Grand Magistrix Elisande
							["_encounter"] = { ELISANDE, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
				}),
				n(RAID_GEAR_CONVERSION, bubbleDown({ ["modID"] = 4 }, {
					filter(CLOAKS, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247489),	-- Aristocrat's Winter Drape
						i_RAID_GEAR_CONVERSION(247481),	-- Astromancer's Greatcloak
						i_RAID_GEAR_CONVERSION(247482),	-- Cloak of Temporal Recalibration
						i_RAID_GEAR_CONVERSION(247491),	-- Cloak of Multitudinous Sheaths
						i_RAID_GEAR_CONVERSION(247436),	-- Dreadlord's Tattered Wingcover
						i_RAID_GEAR_CONVERSION(247492),	-- Fashionable Autumn Cloak
						i_RAID_GEAR_CONVERSION(247490),	-- Feathermane Feather Cloak

						-- Set items
						i_RAID_GEAR_CONVERSION(247063),	-- Purifier's Drape
						i_RAID_GEAR_CONVERSION(247058),	-- Cloak of Everburning Knowledge
						i_RAID_GEAR_CONVERSION(247066),	-- Cloak of Azj'Aqir
						i_RAID_GEAR_CONVERSION(247064),	-- Doomblade Shadowwrap
						i_RAID_GEAR_CONVERSION(247060),	-- Cloak of Enveloped Dissonance
						i_RAID_GEAR_CONVERSION(247059),	-- Cloak of the Astral Warden
						i_RAID_GEAR_CONVERSION(247068),	-- Cape of Second Sight
						i_RAID_GEAR_CONVERSION(247061),	-- Eagletalon Cloak
						i_RAID_GEAR_CONVERSION(247065),	-- Cloak of Shackled Elements
						i_RAID_GEAR_CONVERSION(247067),	-- Greatcloak of the Obsidian Aspect
						i_RAID_GEAR_CONVERSION(247062),	-- Greatmantle of the Highlord
						i_RAID_GEAR_CONVERSION(247057),	-- Dreadwyrm Greatcloak
					}),
					filter(CLOTH, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247430),	-- Antiquated Highborne Cinch
						i_RAID_GEAR_CONVERSION(247431),	-- Bracers of Harnessed Flame
						i_RAID_GEAR_CONVERSION(247493),	-- Mana-Cord of Deception
						i_RAID_GEAR_CONVERSION(247467),	-- Man'ari Skullbuckled Cinch
						i_RAID_GEAR_CONVERSION(247486),	-- Outcast Wanderer's Footrags
						i_RAID_GEAR_CONVERSION(247435),	-- Perpetually Muddy Sandals
						i_RAID_GEAR_CONVERSION(247465),	-- Treads of Galactic Odyssey
						i_RAID_GEAR_CONVERSION(247466),	-- Woven Lasher Tendril Bracers

						-- Set items
						i_RAID_GEAR_CONVERSION(247003),	-- Purifier's Gloves
						i_RAID_GEAR_CONVERSION(247006),	-- Purifier's Gorget
						i_RAID_GEAR_CONVERSION(247009),	-- Purifier's Leggings
						i_RAID_GEAR_CONVERSION(247012),	-- Purifier's Cassock
						i_RAID_GEAR_CONVERSION(247015),	-- Purifier's Mantle
						i_RAID_GEAR_CONVERSION(247011),	-- Robe of Everburning Knowledge
						i_RAID_GEAR_CONVERSION(247002),	-- Gloves of Everburning Knowledge
						i_RAID_GEAR_CONVERSION(247005),	-- Hood of Everburning Knowledge
						i_RAID_GEAR_CONVERSION(247008),	-- Leggings of Everburning Knowledge
						i_RAID_GEAR_CONVERSION(247014),	-- Mantle of Everburning Knowledge
						i_RAID_GEAR_CONVERSION(247004),	-- Clutch of Azj'Aqir
						i_RAID_GEAR_CONVERSION(247007),	-- Eyes of Azj'Aqir
						i_RAID_GEAR_CONVERSION(247013),	-- Finery of Azj'Aqir
						i_RAID_GEAR_CONVERSION(247010),	-- Leggings of Azj'Aqir
						i_RAID_GEAR_CONVERSION(247016),	-- Pauldrons of Azj'Aqir
					}),
					filter(LEATHER, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247469),	-- Bracers of Impossible Choices
						i_RAID_GEAR_CONVERSION(247438),	-- Cake Carrier's Girdle
						i_RAID_GEAR_CONVERSION(247439),	-- Girdle of Nefarious Strategy
						i_RAID_GEAR_CONVERSION(247441),	-- Grove-Tender's Moccasins
						i_RAID_GEAR_CONVERSION(247488),	-- High Shadow Councilor's Wrap
						i_RAID_GEAR_CONVERSION(247440),	-- Stutterstep Treads
						i_RAID_GEAR_CONVERSION(247494),	-- Waistclasp of Unethical Power
						i_RAID_GEAR_CONVERSION(247437),	-- Well-Flattened Wristguards

						-- Set items
						i_RAID_GEAR_CONVERSION(247019),	-- Doomblade Tunic
						i_RAID_GEAR_CONVERSION(247022),	-- Doomblade Gauntlets
						i_RAID_GEAR_CONVERSION(247025),	-- Doomblade Cowl
						i_RAID_GEAR_CONVERSION(247028),	-- Doomblade Pants
						i_RAID_GEAR_CONVERSION(247031),	-- Doomblade Spaulders
						i_RAID_GEAR_CONVERSION(247018),	-- Tunic of Enveloped Dissonance
						i_RAID_GEAR_CONVERSION(247021),	-- Gloves of Enveloped Dissonance
						i_RAID_GEAR_CONVERSION(247024),	-- Hood of Enveloped Dissonance
						i_RAID_GEAR_CONVERSION(247027),	-- Leggings of Enveloped Dissonance
						i_RAID_GEAR_CONVERSION(247030),	-- Pauldrons of Enveloped Dissonance
						i_RAID_GEAR_CONVERSION(247017),	-- Robe of the Astral Warden
						i_RAID_GEAR_CONVERSION(247020),	-- Gloves of the Astral Warden
						i_RAID_GEAR_CONVERSION(247023),	-- Hood of the Astral Warden
						i_RAID_GEAR_CONVERSION(247026),	-- Leggings of the Astral Warden
						i_RAID_GEAR_CONVERSION(247029),	-- Mantle of the Astral Warden
						i_RAID_GEAR_CONVERSION(247069),	-- Tunic of Second Sight
						i_RAID_GEAR_CONVERSION(247070),	-- Gloves of Second Sight
						i_RAID_GEAR_CONVERSION(247071),	-- Mask of Second Sight
						i_RAID_GEAR_CONVERSION(247072),	-- Legwraps of Second Sight
						i_RAID_GEAR_CONVERSION(247073),	-- Shoulderguards of Second Sight
					}),
					filter(MAIL, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247470),	-- Belt of Celestial Alignment
						i_RAID_GEAR_CONVERSION(247448),	-- Emblazoned Duskwatch Belt
						i_RAID_GEAR_CONVERSION(247447),	-- Sabatons of Burning Steps
						i_RAID_GEAR_CONVERSION(247453),	-- Shal'dorei Weedstompers
						i_RAID_GEAR_CONVERSION(247456),	-- Stinger Resistant Bracers
						i_RAID_GEAR_CONVERSION(247454),	-- Thistle-Proof Thorngrabbers
						i_RAID_GEAR_CONVERSION(247495),	-- Vintage Duskwatch Cinch

						-- Set items
						i_RAID_GEAR_CONVERSION(247032),	-- Eagletalon Tunic
						i_RAID_GEAR_CONVERSION(247033),	-- Eagletalon Gauntlets
						i_RAID_GEAR_CONVERSION(247035),	-- Eagletalon Cowl
						i_RAID_GEAR_CONVERSION(247037),	-- Eagletalon Legchains
						i_RAID_GEAR_CONVERSION(247040),	-- Eagletalon Spaulders
						i_RAID_GEAR_CONVERSION(247034),	-- Gauntlets of Shackled Elements
						i_RAID_GEAR_CONVERSION(247038),	-- Leggings of Shackled Elements
						i_RAID_GEAR_CONVERSION(247039),	-- Raiment of Shackled Elements
						i_RAID_GEAR_CONVERSION(247041),	-- Pauldrons of Shackled Elements
						-- i_RAID_GEAR_CONVERSION(247036),	-- Helm of Shackled Elements [Drops in The Emerald Nightmare]
					}),
					filter(PLATE, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247458),	-- Duskwatch Plate Bracers
						i_RAID_GEAR_CONVERSION(247473),	-- Eternally Recurring Bracers
						i_RAID_GEAR_CONVERSION(247460),	-- Gilded Nightborne Waistplate
						i_RAID_GEAR_CONVERSION(247496),	-- Gleaming Celestial Waistguard
						i_RAID_GEAR_CONVERSION(247472),	-- Goresmeared Abyssal Waistplate
						i_RAID_GEAR_CONVERSION(247477),	-- Immaculately Polished Boots
						i_RAID_GEAR_CONVERSION(247475),	-- Jagged Carapace Wristclamps
						i_RAID_GEAR_CONVERSION(247464),	-- Leystone-Toe Kickers
						i_RAID_GEAR_CONVERSION(247471),	-- Sabatons of Unchanging Fate
						i_RAID_GEAR_CONVERSION(247484),	-- Waistplate of Fractured Realities

						-- Set items
						i_RAID_GEAR_CONVERSION(247044),	-- Chestplate of the Obsidian Aspect
						i_RAID_GEAR_CONVERSION(247047),	-- Gauntlets of the Obsidian Aspect
						i_RAID_GEAR_CONVERSION(247050),	-- Warhelm of the Obsidian Aspect
						i_RAID_GEAR_CONVERSION(247053),	-- Legplates of the Obsidian Aspect
						i_RAID_GEAR_CONVERSION(247056),	-- Shoulderplates of the Obsidian Aspect
						i_RAID_GEAR_CONVERSION(247043),	-- Breastplate of the Highlord
						i_RAID_GEAR_CONVERSION(247046),	-- Gauntlets of the Highlord
						i_RAID_GEAR_CONVERSION(247049),	-- Helmet of the Highlord
						i_RAID_GEAR_CONVERSION(247052),	-- Legplates of the Highlord
						i_RAID_GEAR_CONVERSION(247055),	-- Pauldrons of the Highlord
						i_RAID_GEAR_CONVERSION(247042),	-- Dreadwyrm Breastplate
						i_RAID_GEAR_CONVERSION(247045),	-- Dreadwyrm Gauntlets
						i_RAID_GEAR_CONVERSION(247048),	-- Dreadwyrm Crown
						i_RAID_GEAR_CONVERSION(247051),	-- Dreadwyrm Legplates
						i_RAID_GEAR_CONVERSION(247054),	-- Dreadwyrm Shoulderguards
					}),
				})),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
					header(HEADERS.Achievement, 60861, {	-- Arcing Aqueducts
						BossOnly(SKORPYRON),
						BossOnly(CHRONOMATIC),
						BossOnly(TRILLIAX),
					}),
					header(HEADERS.Achievement, 60862, {	-- Royal Athenaeum
						BossOnly(ALURIEL),
						BossOnly(ETRAEUS),
						BossOnly(TELARN),
					}),
					header(HEADERS.Achievement, 60863, {	-- Nightspire
						BossOnly(TICHONDRIUS),
						BossOnly(KROSUS),
						BossOnly(ELISANDE),
					}),
					header(HEADERS.Achievement, 60864, {	-- Betrayer's Rise
						BossOnly(GULDAN),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
					BossOnly(SKORPYRON),
					BossOnly(CHRONOMATIC),
					BossOnly(TRILLIAX),
					BossOnly(ALURIEL),
					BossOnly(ETRAEUS),
					BossOnly(TELARN),
					BossOnly(TICHONDRIUS),
					BossOnly(KROSUS),
					BossOnly(ELISANDE),
					BossOnly(GULDAN),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
					BossOnly(SKORPYRON),
					BossOnly(CHRONOMATIC),
					BossOnly(TRILLIAX),
					BossOnly(ALURIEL),
					BossOnly(ETRAEUS),
					BossOnly(TELARN),
					BossOnly(TICHONDRIUS),
					BossOnly(KROSUS),
					BossOnly(ELISANDE),
					BossOnly(GULDAN),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					BossOnly(SKORPYRON),
					BossOnly(CHRONOMATIC),
					BossOnly(TRILLIAX),
					BossOnly(ALURIEL),
					BossOnly(ETRAEUS),
					BossOnly(TELARN),
					BossOnly(TICHONDRIUS),
					BossOnly(KROSUS),
					BossOnly(ELISANDE),
					BossOnly(GULDAN),
				}),
			},
		}),
	}),
})));
