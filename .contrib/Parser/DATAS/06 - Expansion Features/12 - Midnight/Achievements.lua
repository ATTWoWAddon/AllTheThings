-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	n(ACHIEVEMENTS, {
		ach(61809, {	-- Adventurer of the Dawn
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42767, {	-- Veteran of the Dawn
            ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42768, {	-- Champion of the Dawn
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42769, {	-- Hero of the Dawn
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(42770, {	-- Myth of the Dawn
			["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
		}),
		ach(61519),	-- Midnight Season 1: Catalyst Unbound
		achraw(61490, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART }, }, {	-- Midnight Season 1: Champion of the Dawn
			crit(108731),	-- Attained 1600+ Rated PVP rating
			crit(109029),	-- Attained 2000+ Mythic Plus rating
			crit(109881),	-- Defeated Dimensius on Heroic or Mythic difficulty
			i(260173),	-- Crystallized Dawnlight Manaflux
		})),
		ach(61858, {	-- Light of the Party (automated)
			i(265071, {	-- Gleaming Sunmote (CI!)
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249965),	-- Relentless Rider's Drape
						i(249966),	-- Relentless Rider's Manacles
						i(249967),	-- Relentless Rider's Chain
						i(249968),	-- Relentless Rider's Dreadthorns
						i(249969),	-- Relentless Rider's Legguards
						i(249970),	-- Relentless Rider's Crown
						i(249971),	-- Relentless Rider's Bonegrasps
						i(249972),	-- Relentless Rider's Stompers
						i(249973),	-- Relentless Rider's Cuirass
					}),
					cl(DEMONHUNTER, {
						i(250028),	-- Devouring Reaver's Drape
						i(250029),	-- Devouring Reaver's Support Straps
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250032),	-- Devouring Reaver's Pistons
						i(250033),	-- Devouring Reaver's Intake
						i(250034),	-- Devouring Reaver's Essence Grips
						i(250035),	-- Devouring Reaver's Soul Flatteners
						i(250036),	-- Devouring Reaver's Engine
					}),
					cl(DRUID, {
						i(250019),	-- Leafdrape of the Luminous Bloom
						i(250020),	-- Bindings of the Luminous Bloom
						i(250021),	-- Barksash of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
						i(250023),	-- Phloemwraps of the Luminous Bloom
						i(250024),	-- Branches  of the Luminous Bloom
						i(250025),	-- Arbortenders of the Luminous Bloom
						i(250026),	-- Rootslippers of the Luminous Bloom
						i(250027),	-- Trunk of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249992),	-- Shroud of the Black Talon
						i(249993),	-- Bracers of the Black Talon
						i(249994),	-- Girdle of the Black Talon
						i(249995),	-- Beacons of the Black Talon
						i(249996),	-- Greaves of the Black Talon
						i(249997),	-- Hornhelm of the Black Talon
						i(249998),	-- Enforcer's Grips of the Black Talon
						i(249999),	-- Spelltreads of the Black Talon
						i(250000),	-- Frenzyward of the Black Talon
					}),
					cl(HUNTER, {
						i(249983),	-- Primal Sentry's Spine
						i(249984),	-- Primal Sentry's Wound Stanchers
						i(249985),	-- Primal Sentry's Cinch
						i(249986),	-- Primal Sentry's Trophies
						i(249987),	-- Primal Sentry's Legguards
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249990),	-- Primal Sentry's Swiftsteps
						i(249991),	-- Primal Sentry's Scaleplate
					}),
					cl(MAGE, {
						i(250055),	-- Voidbreaker's Encryption
						i(250056),	-- Voidbreaker's Bracers
						i(250057),	-- Voidbreaker's Sage Cord
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250059),	-- Voidbreaker's Britches
						i(250060),	-- Voidbreaker's Veil
						i(250061),	-- Voidbreaker's Gloves
						i(250062),	-- Voidbreaker's Treads
						i(250063),	-- Voidbreaker's Robe
					}),
					cl(MONK, {
						i(250010),	-- Windwrap of Ra-den's Chosen
						i(250011),	-- Strikeguards of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250014),	-- Swiftsweepers of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250016),	-- Thunderfists of Ra-den's Chosen
						i(250017),	-- Storm Crashers of Ra-den's Chosen
						i(250018),	-- Battle Garb of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249956),	-- Luminant Verdict's Greatmantle
						i(249957),	-- Luminant Verdict's Cuffs
						i(249958),	-- Luminant Verdict's Undaunted Emblem
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249960),	-- Luminant Verdict's Greaves
						i(249961),	-- Luminant Verdict's Unwavering Gaze
						i(249962),	-- Luminant Verdict's Gauntlets
						i(249963),	-- Luminant Verdict's Sabatons
						i(249964),	-- Luminant Verdict's Divine Warplate
					}),
					cl(PRIEST, {
						i(250046),	-- Blind Oath's Shroud
						i(250047),	-- Blind Oath's Wraps
						i(250048),	-- Blind Oath's Jeweled Sash
						i(250049),	-- Blind Oath's Seraphguards
						i(250050),	-- Blind Oath's Leggings
						i(250051),	-- Blind Oath's Winged Crest
						i(250052),	-- Blind Oath's Touch
						i(250053),	-- Blind Oath's Slippers
						i(250054),	-- Blind Oath's Raiment
					}),
					cl(ROGUE, {
						i(250001),	-- Disappearing Cloth of the Grim Jest
						i(250002),	-- Trick Bracers of the Grim Jest
						i(250003),	-- Toolbelt of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
						i(250005),	-- Blade Holsters of the Grim Jest
						i(250006),	-- Masquerade of the Grim Jest
						i(250007),	-- Sleight of Hand of the Grim Jest
						i(250008),	-- Balancing Boots of the Grim Jest
						i(250009),	-- Fantastic Finery of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249974),	-- Guardian of the Primal Core
						i(249975),	-- Cuffs of the Primal Core
						i(249976),	-- Ceinture of the Primal Core
						i(249977),	-- Tempests of the Primal Core
						i(249978),	-- Leggings of the Primal Core
						i(249979),	-- Locus of the Primal Core
						i(249980),	-- Earthgrips of the Primal Core
						i(249981),	-- Sollerets of the Primal Core
						i(249982),	-- Embrace of the Primal Core
					}),
					cl(WARLOCK, {
						i(250037),	-- Abyssal Immolator's Ritual Mantle
						i(250038),	-- Abyssal Immolator's Shackles
						i(250039),	-- Abyssal Immolator's Blazing Core
						i(250040),	-- Abyssal Immolator's Fury
						i(250041),	-- Abyssal Immolator's Pillars
						i(250042),	-- Abyssal Immolator's Smoldering Flames
						i(250043),	-- Abyssal Immolator's Grasps
						i(250044),	-- Abyssal Immolator's Ashwalkers
						i(250045),	-- Abyssal Immolator's Dreadrobe
					}),
					cl(WARRIOR, {
						i(249947),	-- Night Ender's Greatmantle
						i(249948),	-- Night Ender's Warbands
						i(249949),	-- Night Ender's Girdle
						i(249950),	-- Night Ender's Pauldrons
						i(249951),	-- Night Ender's Chausses
						i(249952),	-- Night Ender's Tusks
						i(249953),	-- Night Ender's Fists
						i(249954),	-- Night Ender's Greatboots
						i(249955),	-- Night Ender's Breastplate
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249965),	-- Relentless Rider's Drape
						i(249966),	-- Relentless Rider's Manacles
						i(249967),	-- Relentless Rider's Chain
						i(249968),	-- Relentless Rider's Dreadthorns
						i(249969),	-- Relentless Rider's Legguards
						i(249970),	-- Relentless Rider's Crown
						i(249971),	-- Relentless Rider's Bonegrasps
						i(249972),	-- Relentless Rider's Stompers
						i(249973),	-- Relentless Rider's Cuirass
					}),
					cl(DEMONHUNTER, {
						i(250028),	-- Devouring Reaver's Drape
						i(250029),	-- Devouring Reaver's Support Straps
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250032),	-- Devouring Reaver's Pistons
						i(250033),	-- Devouring Reaver's Intake
						i(250034),	-- Devouring Reaver's Essence Grips
						i(250035),	-- Devouring Reaver's Soul Flatteners
						i(250036),	-- Devouring Reaver's Engine
					}),
					cl(DRUID, {
						i(250019),	-- Leafdrape of the Luminous Bloom
						i(250020),	-- Bindings of the Luminous Bloom
						i(250021),	-- Barksash of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
						i(250023),	-- Phloemwraps of the Luminous Bloom
						i(250024),	-- Branches  of the Luminous Bloom
						i(250025),	-- Arbortenders of the Luminous Bloom
						i(250026),	-- Rootslippers of the Luminous Bloom
						i(250027),	-- Trunk of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249992),	-- Shroud of the Black Talon
						i(249993),	-- Bracers of the Black Talon
						i(249994),	-- Girdle of the Black Talon
						i(249995),	-- Beacons of the Black Talon
						i(249996),	-- Greaves of the Black Talon
						i(249997),	-- Hornhelm of the Black Talon
						i(249998),	-- Enforcer's Grips of the Black Talon
						i(249999),	-- Spelltreads of the Black Talon
						i(250000),	-- Frenzyward of the Black Talon
					}),
					cl(HUNTER, {
						i(249983),	-- Primal Sentry's Spine
						i(249984),	-- Primal Sentry's Wound Stanchers
						i(249985),	-- Primal Sentry's Cinch
						i(249986),	-- Primal Sentry's Trophies
						i(249987),	-- Primal Sentry's Legguards
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249990),	-- Primal Sentry's Swiftsteps
						i(249991),	-- Primal Sentry's Scaleplate
					}),
					cl(MAGE, {
						i(250055),	-- Voidbreaker's Encryption
						i(250056),	-- Voidbreaker's Bracers
						i(250057),	-- Voidbreaker's Sage Cord
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250059),	-- Voidbreaker's Britches
						i(250060),	-- Voidbreaker's Veil
						i(250061),	-- Voidbreaker's Gloves
						i(250062),	-- Voidbreaker's Treads
						i(250063),	-- Voidbreaker's Robe
					}),
					cl(MONK, {
						i(250010),	-- Windwrap of Ra-den's Chosen
						i(250011),	-- Strikeguards of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250014),	-- Swiftsweepers of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250016),	-- Thunderfists of Ra-den's Chosen
						i(250017),	-- Storm Crashers of Ra-den's Chosen
						i(250018),	-- Battle Garb of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249956),	-- Luminant Verdict's Greatmantle
						i(249957),	-- Luminant Verdict's Cuffs
						i(249958),	-- Luminant Verdict's Undaunted Emblem
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249960),	-- Luminant Verdict's Greaves
						i(249961),	-- Luminant Verdict's Unwavering Gaze
						i(249962),	-- Luminant Verdict's Gauntlets
						i(249963),	-- Luminant Verdict's Sabatons
						i(249964),	-- Luminant Verdict's Divine Warplate
					}),
					cl(PRIEST, {
						i(250046),	-- Blind Oath's Shroud
						i(250047),	-- Blind Oath's Wraps
						i(250048),	-- Blind Oath's Jeweled Sash
						i(250049),	-- Blind Oath's Seraphguards
						i(250050),	-- Blind Oath's Leggings
						i(250051),	-- Blind Oath's Winged Crest
						i(250052),	-- Blind Oath's Touch
						i(250053),	-- Blind Oath's Slippers
						i(250054),	-- Blind Oath's Raiment
					}),
					cl(ROGUE, {
						i(250001),	-- Disappearing Cloth of the Grim Jest
						i(250002),	-- Trick Bracers of the Grim Jest
						i(250003),	-- Toolbelt of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
						i(250005),	-- Blade Holsters of the Grim Jest
						i(250006),	-- Masquerade of the Grim Jest
						i(250007),	-- Sleight of Hand of the Grim Jest
						i(250008),	-- Balancing Boots of the Grim Jest
						i(250009),	-- Fantastic Finery of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249974),	-- Guardian of the Primal Core
						i(249975),	-- Cuffs of the Primal Core
						i(249976),	-- Ceinture of the Primal Core
						i(249977),	-- Tempests of the Primal Core
						i(249978),	-- Leggings of the Primal Core
						i(249979),	-- Locus of the Primal Core
						i(249980),	-- Earthgrips of the Primal Core
						i(249981),	-- Sollerets of the Primal Core
						i(249982),	-- Embrace of the Primal Core
					}),
					cl(WARLOCK, {
						i(250037),	-- Abyssal Immolator's Ritual Mantle
						i(250038),	-- Abyssal Immolator's Shackles
						i(250039),	-- Abyssal Immolator's Blazing Core
						i(250040),	-- Abyssal Immolator's Fury
						i(250041),	-- Abyssal Immolator's Pillars
						i(250042),	-- Abyssal Immolator's Smoldering Flames
						i(250043),	-- Abyssal Immolator's Grasps
						i(250044),	-- Abyssal Immolator's Ashwalkers
						i(250045),	-- Abyssal Immolator's Dreadrobe
					}),
					cl(WARRIOR, {
						i(249947),	-- Night Ender's Greatmantle
						i(249948),	-- Night Ender's Warbands
						i(249949),	-- Night Ender's Girdle
						i(249950),	-- Night Ender's Pauldrons
						i(249951),	-- Night Ender's Chausses
						i(249952),	-- Night Ender's Tusks
						i(249953),	-- Night Ender's Fists
						i(249954),	-- Night Ender's Greatboots
						i(249955),	-- Night Ender's Breastplate
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249965),	-- Relentless Rider's Drape
						i(249966),	-- Relentless Rider's Manacles
						i(249967),	-- Relentless Rider's Chain
						i(249968),	-- Relentless Rider's Dreadthorns
						i(249969),	-- Relentless Rider's Legguards
						i(249970),	-- Relentless Rider's Crown
						i(249971),	-- Relentless Rider's Bonegrasps
						i(249972),	-- Relentless Rider's Stompers
						i(249973),	-- Relentless Rider's Cuirass
					}),
					cl(DEMONHUNTER, {
						i(250028),	-- Devouring Reaver's Drape
						i(250029),	-- Devouring Reaver's Support Straps
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250032),	-- Devouring Reaver's Pistons
						i(250033),	-- Devouring Reaver's Intake
						i(250034),	-- Devouring Reaver's Essence Grips
						i(250035),	-- Devouring Reaver's Soul Flatteners
						i(250036),	-- Devouring Reaver's Engine
					}),
					cl(DRUID, {
						i(250019),	-- Leafdrape of the Luminous Bloom
						i(250020),	-- Bindings of the Luminous Bloom
						i(250021),	-- Barksash of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
						i(250023),	-- Phloemwraps of the Luminous Bloom
						i(250024),	-- Branches  of the Luminous Bloom
						i(250025),	-- Arbortenders of the Luminous Bloom
						i(250026),	-- Rootslippers of the Luminous Bloom
						i(250027),	-- Trunk of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249992),	-- Shroud of the Black Talon
						i(249993),	-- Bracers of the Black Talon
						i(249994),	-- Girdle of the Black Talon
						i(249995),	-- Beacons of the Black Talon
						i(249996),	-- Greaves of the Black Talon
						i(249997),	-- Hornhelm of the Black Talon
						i(249998),	-- Enforcer's Grips of the Black Talon
						i(249999),	-- Spelltreads of the Black Talon
						i(250000),	-- Frenzyward of the Black Talon
					}),
					cl(HUNTER, {
						i(249983),	-- Primal Sentry's Spine
						i(249984),	-- Primal Sentry's Wound Stanchers
						i(249985),	-- Primal Sentry's Cinch
						i(249986),	-- Primal Sentry's Trophies
						i(249987),	-- Primal Sentry's Legguards
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249990),	-- Primal Sentry's Swiftsteps
						i(249991),	-- Primal Sentry's Scaleplate
					}),
					cl(MAGE, {
						i(250055),	-- Voidbreaker's Encryption
						i(250056),	-- Voidbreaker's Bracers
						i(250057),	-- Voidbreaker's Sage Cord
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250059),	-- Voidbreaker's Britches
						i(250060),	-- Voidbreaker's Veil
						i(250061),	-- Voidbreaker's Gloves
						i(250062),	-- Voidbreaker's Treads
						i(250063),	-- Voidbreaker's Robe
					}),
					cl(MONK, {
						i(250010),	-- Windwrap of Ra-den's Chosen
						i(250011),	-- Strikeguards of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250014),	-- Swiftsweepers of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250016),	-- Thunderfists of Ra-den's Chosen
						i(250017),	-- Storm Crashers of Ra-den's Chosen
						i(250018),	-- Battle Garb of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249956),	-- Luminant Verdict's Greatmantle
						i(249957),	-- Luminant Verdict's Cuffs
						i(249958),	-- Luminant Verdict's Undaunted Emblem
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249960),	-- Luminant Verdict's Greaves
						i(249961),	-- Luminant Verdict's Unwavering Gaze
						i(249962),	-- Luminant Verdict's Gauntlets
						i(249963),	-- Luminant Verdict's Sabatons
						i(249964),	-- Luminant Verdict's Divine Warplate
					}),
					cl(PRIEST, {
						i(250046),	-- Blind Oath's Shroud
						i(250047),	-- Blind Oath's Wraps
						i(250048),	-- Blind Oath's Jeweled Sash
						i(250049),	-- Blind Oath's Seraphguards
						i(250050),	-- Blind Oath's Leggings
						i(250051),	-- Blind Oath's Winged Crest
						i(250052),	-- Blind Oath's Touch
						i(250053),	-- Blind Oath's Slippers
						i(250054),	-- Blind Oath's Raiment
					}),
					cl(ROGUE, {
						i(250001),	-- Disappearing Cloth of the Grim Jest
						i(250002),	-- Trick Bracers of the Grim Jest
						i(250003),	-- Toolbelt of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
						i(250005),	-- Blade Holsters of the Grim Jest
						i(250006),	-- Masquerade of the Grim Jest
						i(250007),	-- Sleight of Hand of the Grim Jest
						i(250008),	-- Balancing Boots of the Grim Jest
						i(250009),	-- Fantastic Finery of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249974),	-- Guardian of the Primal Core
						i(249975),	-- Cuffs of the Primal Core
						i(249976),	-- Ceinture of the Primal Core
						i(249977),	-- Tempests of the Primal Core
						i(249978),	-- Leggings of the Primal Core
						i(249979),	-- Locus of the Primal Core
						i(249980),	-- Earthgrips of the Primal Core
						i(249981),	-- Sollerets of the Primal Core
						i(249982),	-- Embrace of the Primal Core
					}),
					cl(WARLOCK, {
						i(250037),	-- Abyssal Immolator's Ritual Mantle
						i(250038),	-- Abyssal Immolator's Shackles
						i(250039),	-- Abyssal Immolator's Blazing Core
						i(250040),	-- Abyssal Immolator's Fury
						i(250041),	-- Abyssal Immolator's Pillars
						i(250042),	-- Abyssal Immolator's Smoldering Flames
						i(250043),	-- Abyssal Immolator's Grasps
						i(250044),	-- Abyssal Immolator's Ashwalkers
						i(250045),	-- Abyssal Immolator's Dreadrobe
					}),
					cl(WARRIOR, {
						i(249947),	-- Night Ender's Greatmantle
						i(249948),	-- Night Ender's Warbands
						i(249949),	-- Night Ender's Girdle
						i(249950),	-- Night Ender's Pauldrons
						i(249951),	-- Night Ender's Chausses
						i(249952),	-- Night Ender's Tusks
						i(249953),	-- Night Ender's Fists
						i(249954),	-- Night Ender's Greatboots
						i(249955),	-- Night Ender's Breastplate
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					cl(DEATHKNIGHT, {
						i(249965),	-- Relentless Rider's Drape
						i(249966),	-- Relentless Rider's Manacles
						i(249967),	-- Relentless Rider's Chain
						i(249968),	-- Relentless Rider's Dreadthorns
						i(249969),	-- Relentless Rider's Legguards
						i(249970),	-- Relentless Rider's Crown
						i(249971),	-- Relentless Rider's Bonegrasps
						i(249972),	-- Relentless Rider's Stompers
						i(249973),	-- Relentless Rider's Cuirass
					}),
					cl(DEMONHUNTER, {
						i(250028),	-- Devouring Reaver's Drape
						i(250029),	-- Devouring Reaver's Support Straps
						i(250030),	-- Devouring Reaver's Emblem
						i(250031),	-- Devouring Reaver's Exhaustplates
						i(250032),	-- Devouring Reaver's Pistons
						i(250033),	-- Devouring Reaver's Intake
						i(250034),	-- Devouring Reaver's Essence Grips
						i(250035),	-- Devouring Reaver's Soul Flatteners
						i(250036),	-- Devouring Reaver's Engine
					}),
					cl(DRUID, {
						i(250019),	-- Leafdrape of the Luminous Bloom
						i(250020),	-- Bindings of the Luminous Bloom
						i(250021),	-- Barksash of the Luminous Bloom
						i(250022),	-- Seedpods of the Luminous Bloom
						i(250023),	-- Phloemwraps of the Luminous Bloom
						i(250024),	-- Branches  of the Luminous Bloom
						i(250025),	-- Arbortenders of the Luminous Bloom
						i(250026),	-- Rootslippers of the Luminous Bloom
						i(250027),	-- Trunk of the Luminous Bloom
					}),
					cl(EVOKER, {
						i(249992),	-- Shroud of the Black Talon
						i(249993),	-- Bracers of the Black Talon
						i(249994),	-- Girdle of the Black Talon
						i(249995),	-- Beacons of the Black Talon
						i(249996),	-- Greaves of the Black Talon
						i(249997),	-- Hornhelm of the Black Talon
						i(249998),	-- Enforcer's Grips of the Black Talon
						i(249999),	-- Spelltreads of the Black Talon
						i(250000),	-- Frenzyward of the Black Talon
					}),
					cl(HUNTER, {
						i(249983),	-- Primal Sentry's Spine
						i(249984),	-- Primal Sentry's Wound Stanchers
						i(249985),	-- Primal Sentry's Cinch
						i(249986),	-- Primal Sentry's Trophies
						i(249987),	-- Primal Sentry's Legguards
						i(249988),	-- Primal Sentry's Maw
						i(249989),	-- Primal Sentry's Talonguards
						i(249990),	-- Primal Sentry's Swiftsteps
						i(249991),	-- Primal Sentry's Scaleplate
					}),
					cl(MAGE, {
						i(250055),	-- Voidbreaker's Encryption
						i(250056),	-- Voidbreaker's Bracers
						i(250057),	-- Voidbreaker's Sage Cord
						i(250058),	-- Voidbreaker's Leyline Nexi
						i(250059),	-- Voidbreaker's Britches
						i(250060),	-- Voidbreaker's Veil
						i(250061),	-- Voidbreaker's Gloves
						i(250062),	-- Voidbreaker's Treads
						i(250063),	-- Voidbreaker's Robe
					}),
					cl(MONK, {
						i(250010),	-- Windwrap of Ra-den's Chosen
						i(250011),	-- Strikeguards of Ra-den's Chosen
						i(250012),	-- Stormsigil of Ra-den's Chosen
						i(250013),	-- Aurastones of Ra-den's Chosen
						i(250014),	-- Swiftsweepers of Ra-den's Chosen
						i(250015),	-- Fearsome Visage of Ra-den's Chosen
						i(250016),	-- Thunderfists of Ra-den's Chosen
						i(250017),	-- Storm Crashers of Ra-den's Chosen
						i(250018),	-- Battle Garb of Ra-den's Chosen
					}),
					cl(PALADIN, {
						i(249956),	-- Luminant Verdict's Greatmantle
						i(249957),	-- Luminant Verdict's Cuffs
						i(249958),	-- Luminant Verdict's Undaunted Emblem
						i(249959),	-- Luminant Verdict's Providence Watch
						i(249960),	-- Luminant Verdict's Greaves
						i(249961),	-- Luminant Verdict's Unwavering Gaze
						i(249962),	-- Luminant Verdict's Gauntlets
						i(249963),	-- Luminant Verdict's Sabatons
						i(249964),	-- Luminant Verdict's Divine Warplate
					}),
					cl(PRIEST, {
						i(250046),	-- Blind Oath's Shroud
						i(250047),	-- Blind Oath's Wraps
						i(250048),	-- Blind Oath's Jeweled Sash
						i(250049),	-- Blind Oath's Seraphguards
						i(250050),	-- Blind Oath's Leggings
						i(250051),	-- Blind Oath's Winged Crest
						i(250052),	-- Blind Oath's Touch
						i(250053),	-- Blind Oath's Slippers
						i(250054),	-- Blind Oath's Raiment
					}),
					cl(ROGUE, {
						i(250001),	-- Disappearing Cloth of the Grim Jest
						i(250002),	-- Trick Bracers of the Grim Jest
						i(250003),	-- Toolbelt of the Grim Jest
						i(250004),	-- Venom Casks of the Grim Jest
						i(250005),	-- Blade Holsters of the Grim Jest
						i(250006),	-- Masquerade of the Grim Jest
						i(250007),	-- Sleight of Hand of the Grim Jest
						i(250008),	-- Balancing Boots of the Grim Jest
						i(250009),	-- Fantastic Finery of the Grim Jest
					}),
					cl(SHAMAN, {
						i(249974),	-- Guardian of the Primal Core
						i(249975),	-- Cuffs of the Primal Core
						i(249976),	-- Ceinture of the Primal Core
						i(249977),	-- Tempests of the Primal Core
						i(249978),	-- Leggings of the Primal Core
						i(249979),	-- Locus of the Primal Core
						i(249980),	-- Earthgrips of the Primal Core
						i(249981),	-- Sollerets of the Primal Core
						i(249982),	-- Embrace of the Primal Core
					}),
					cl(WARLOCK, {
						i(250037),	-- Abyssal Immolator's Ritual Mantle
						i(250038),	-- Abyssal Immolator's Shackles
						i(250039),	-- Abyssal Immolator's Blazing Core
						i(250040),	-- Abyssal Immolator's Fury
						i(250041),	-- Abyssal Immolator's Pillars
						i(250042),	-- Abyssal Immolator's Smoldering Flames
						i(250043),	-- Abyssal Immolator's Grasps
						i(250044),	-- Abyssal Immolator's Ashwalkers
						i(250045),	-- Abyssal Immolator's Dreadrobe
					}),
					cl(WARRIOR, {
						i(249947),	-- Night Ender's Greatmantle
						i(249948),	-- Night Ender's Warbands
						i(249949),	-- Night Ender's Girdle
						i(249950),	-- Night Ender's Pauldrons
						i(249951),	-- Night Ender's Chausses
						i(249952),	-- Night Ender's Tusks
						i(249953),	-- Night Ender's Fists
						i(249954),	-- Night Ender's Greatboots
						i(249955),	-- Night Ender's Breastplate
					}),
				})),
			}),
		}),
	}),
})));
