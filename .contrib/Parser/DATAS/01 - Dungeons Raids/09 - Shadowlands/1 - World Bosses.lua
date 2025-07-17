-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local ANTROS = 2468
local MORGETH = 2456
local MORTANIS = 2431
local NURGASH = 2433
local ORANOMONOS = 2432
local VALINOR = 2430

------ EncounterToCRS ------
local EncounterToCRS = {
	[ANTROS] = {
		182466,	-- Antros
		182863,	-- Sav'thul
	},
	[MORGETH] = {
		178958,	-- Mor'geth <Tormentor of the Damned>
	},
	[MORTANIS] = {
		167525,	-- Mortanis
	 },
	[NURGASH] = {
		167526,	-- Nurgash Muckformed
	},
	[ORANOMONOS] = {
		167527,	-- Oranomonos the Everbranching
	},
	[VALINOR] = {
		167524,	-- Valinor, the Light of Eons
	},
}

------ EncounterToLoot ------
local EncounterToLoot = {
	[ANTROS] = {
		i(187507),	-- Adaptive Armor Fragment
		i(187506),	-- Condensed Anima Sphere
		i(190619),	-- Antecedent's Aliform Joggers
		i(190614),	-- Antros' Entrusted Bascinet
		i(190616),	-- Controlled Sequence Clasp
		i(190615),	-- Cosmic Guardian's Casing
		i(190621),	-- Dealic Deterrent Stockings
		i(190617),	-- Destruction-Core Handlers
		i(190618),	-- Lattice of the Distant Keeper
		i(190620),	-- Sav'thul's Calamitous Tantour
		ig(189709),	-- Pocopoc's Cobalt and Copper Body
	},
	[MORGETH] = {
		i(187507),	-- Adaptive Armor Fragment
		i(187506),	-- Condensed Anima Sphere
		i(186355),	-- Wristwraps of Anguish
		i(186361),	-- Grips of Unleashed Suffering
		i(186368),	-- Mor'geth's Gauntlets of Damnation
		i(186360),	-- Tormented Soul Harness
		i(186372),	-- Tormentor's Greatbelt
		i(186370),	-- Caged Legplates
		i(186357),	-- Sorrowful Trousers
		i(186366),	-- Stygian Chain Greaves
		i(187447),	-- Soul Cage Fragment
	},
	[MORTANIS] = {
		i(183341),	-- Memory of a Guile Charm
		i(183386),	-- Memory of Fujieda
		i(183295),	-- Memory of Keefer
		i(184143),	-- Band of the Risen Bonelord
		i(184173),	-- Bone Crushing Vicegrips
		i(184140),	-- Bone-Cleated Footpads
		i(184128),	-- Mortanis's Ribcage
		i(184135),	-- Shoulderblade Vambraces
		i(184133),	-- Spine Crawler Waistcord
	},
	[NURGASH] = {
		i(182638),	-- Memory of a Frenzied Monstrosity
		i(183215),	-- Memory of an Erratic Fel Core
		i(183376),	-- Memory of Azj'Aqir's Madness
		i(184131),	-- Comfortable Slumberwraps
		i(184171),	-- Hardened Castle Crushers
		i(184134),	-- Jingling Stone Stompers
		i(184144),	-- Muckformed Chain Choker
		i(184130),	-- Nurgash's Belt of Many Sinstones
		i(184137),	-- Sinstone Shoulderpadding
	},
	[ORANOMONOS] = {
		i(183274),	-- Memory of a Fevered Incantation
		i(183261),	-- Memory of Surging Shots
		i(183238),	-- Memory of the Verdant Infusion
		i(184126),	-- Ironroot Bindings
		i(184129),	-- Oranomonos's Diaphanous Leggings
		i(184172),	-- Seed-Tender's Handwraps
		i(184127),	-- Slippers of the Leafy Undergrowth
		i(184138),	-- Stonebark Girdle
		i(184142),	-- Twisted Witherroot Band
	},
	[VALINOR] = {
		i(183325),	-- Memory of Archbishop Benedictus
		i(183311),	-- Memory of the Final Verdict
		i(183353),	-- Memory of the Windspeaker's Lava Resurgence
		i(184136),	-- Anima-Charged Wristbanding
		i(184170),	-- Doubtweaver's Handwraps
		i(184132),	-- Oversized Centurion Helm
		i(184125),	-- Servo-Chain Waistguard
		i(184141),	-- Shroud of the Penitent
		i(184139),	-- Valinor's Ground Pounders
	},
}

------ EncounterCoords ------
local EncounterCoords = {
	[ANTROS] = { 48, 5, ZERETH_MORTIS },
	[MORGETH] = { 69.1, 44.2, THE_MAW },
	[MORTANIS] = { 32.1, 67.3, MALDRAXXUS },
	[NURGASH] = { 27.2, 14.9, REVENDRETH },
	[ORANOMONOS] = { 20.2, 63.6, ARDENWEALD },
	[VALINOR] = { 26.3, 22.4, BASTION },
}

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot)
local Boss, BossWorldQuest, CommonBossDrops =
InstanceHelper.Boss, InstanceHelper.BossWorldQuest, InstanceHelper.CommonBossDrops

InstanceHelper.Coords = EncounterCoords
root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["modID"] = 14,
		["g"] = bubbleDownFiltered({
			["isRaid"] = true,
			["isWeekly"] = true,
		},FILTERFUNC_questIDORencounterID,{
			CommonBossDrops({
				i(181770),	-- Bone Marrow Hops
				i(182706),	-- Brooding Pool
				i(182292),	-- Brutal Grasp
				i(182962),	-- Catastrophic Origin
				i(183473),	-- Conflux of Elements
				i(181974),	-- Courageous Ascension
				i(183471),	-- Deep Allegiance
				i(182651),	-- Destructive Reverberations
				i(181539),	-- Discipline of the Grove
				i(182345),	-- Elysian Dirge
				i(182331),	-- Empowered Release
				i(183474),	-- Endless Thirst
				i(182321),	-- Enfeebled Mark
				i(182347),	-- Essential Extraction
				i(183472),	-- Evolved Swarm
				i(182129),	-- Fae Fermata
				i(182961),	-- Fatal Decimation
				i(181981),	-- Festering Transfusion
				i(181553),	-- Gift of the Lich
				i(182777),	-- Hallowed Discernment
				i(182463),	-- Harrowing Punishment
				i(181774),	-- Imbued Reflections
				i(182288),	-- Impenetrable Gloom
				i(182685),	-- Increased Scrutiny
				i(181600),	-- Ire of the Ascended
				i(183495),	-- Lashing Scars
				i(182348),	-- Lavish Harvest
				i(182339),	-- Necrotic Barrage
				i(182440),	-- Piercing Verdict
				i(182295),	-- Proliferation
				i(182646),	-- Repeat Decree
				i(183492),	-- Reverberation
				i(182770),	-- Righteous Might
				i(182778),	-- Ringing Clarity
				i(183494),	-- Septic Shock
				i(182130),	-- Shattered Perceptions
				i(181639),	-- Siphoned Malice
				i(182964),	-- Soul Eater
				i(182960),	-- Soul Tithe
				i(182335),	-- Spirit Attunement
				i(181759),	-- Strike with Clarity
				i(183493),	-- Sudden Fractures
				i(182767),	-- The Long Summer
				i(182346),	-- Tumbling Waves
				i(183463),	-- Unnatural Malice
				i(182442),	-- Veteran's Respite
				i(181775),	-- Way of the Fae
				i(183199),	-- Withering Ground
				i(187882),	-- Alpaca Soul
			}),
			Boss(ANTROS, {	-- Antros <Keeper of the Antecedents>
				["questID"] = 65695,
				["timeline"] = { ADDED_9_2_0 },
			}),
			BossWorldQuest(ANTROS, 65143, {	-- Antros (WQ)
				["timeline"] = { ADDED_9_2_0 },
			}),
			BossWorldQuest(ANTROS, 66619, {	-- Antros (Fated)
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				["sym"] = {
					{"select","encounterID",ANTROS,},{"pop"},	-- Original WB
					{"modID",89},								-- Make the Items 'Fated'
				},
			}),
			Boss(MORGETH, {	-- Mor'geth <Tormentor of the Damned>
				["questID"] = 64547,
				["maps"] = { 1820, 1821, 1822, 1823 },	-- all maps in the Maw
				["timeline"] = { ADDED_9_1_0 },
			}),
			BossWorldQuest(MORGETH, 64531),	-- Mor'geth (WQ)
			BossWorldQuest(MORGETH, 66618, {	-- Mor'geth (Fated)
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				["sym"] = {
					{"select","encounterID",MORGETH,},{"pop"},	-- Original WB
					{"modID",89},								-- Make the Items 'Fated'
				},
			}),
			Boss(MORTANIS, {	-- Mortanis
				["questID"] = 62810,
			}),
			BossWorldQuest(MORTANIS, 61816),	-- Mortanis (WQ)
			BossWorldQuest(MORTANIS, 66617, {	-- Mortanis (Fated)
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				["sym"] = {
					{"select","encounterID",MORTANIS,},{"pop"},	-- Original WB
					{"modID",89},					-- Make the Items 'Fated'
				},
			}),
			Boss(NURGASH, {	-- Nurgash Muckformed
				["questID"] = 62812,
			}),
			BossWorldQuest(NURGASH, 61814),	-- Nurgash Muckfromed (WQ)
			BossWorldQuest(NURGASH, 66615, {	-- Nurgash Muckfromed (Fated)
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				["sym"] = {
					{"select","encounterID",NURGASH,},{"pop"},	-- Original WB
					{"modID",89},					-- Make the Items 'Fated'
				},
			}),
			Boss(ORANOMONOS, {	-- Oranomonos the Everbranching
				["questID"] = 62811,
			}),
			BossWorldQuest(ORANOMONOS, 61815),	-- Oranomonos the Everbranching (WQ)
			BossWorldQuest(ORANOMONOS, 66616, {	-- Oranomonos the Everbranching (Fated WQ)
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				["sym"] = {
					{"select","encounterID",ORANOMONOS,},{"pop"},	-- Original WB
					{"modID",89},					-- Make the Items 'Fated'
				},
			}),
			Boss(VALINOR, {	-- Valinor, the Light of Eons
				["questID"] = 62809,
			}),
			BossWorldQuest(VALINOR, 61813),	-- Valinor, the Light of Eons (WQ)
			BossWorldQuest(VALINOR, 66614, {	-- Valinor, the Light of Eons (Fated WQ)
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				["sym"] = {
					{"select","encounterID",VALINOR,},{"pop"},	-- Original WB
					{"modID",89},					-- Make the Items 'Fated'
				},
			}),
		}),
	}),
})));