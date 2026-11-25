-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local ANHUUR = 124;
local PTAH = 125;
local ANRAPHET = 126;
local ISISET = 127;
local AMMUNAE = 128;
local SETESH = 129;
local RAJH = 130;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ANHUUR] = { 39425 },	-- Temple Guardian Anhuur
	[PTAH] = { 39428 },	-- Earthrager Ptah
	[ANRAPHET] = { 39788 },	-- Anraphet
	[ISISET] = { 39587 },	-- Isiset, Construct of Magic
	[AMMUNAE] = { 39731 },	-- Ammunae, Construct of Life
	[SETESH] = { 39732 },	-- Setesh, Construct of Destruction
	[RAJH] = { 39378 },	-- Rajh, Construct of Sun
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(70, {	-- Halls of Origination
		mapID = 297,
		coord = { 71.81, 52.16, ULDUM },	-- Halls of Origination
		timeline = { ADDED_4_0_3 },
		maps = { 298, 299 },
		groups = {
			n(QUESTS, {
				q(28746, {	-- Penetrating Their Defenses
					sourceQuest = 28654,	-- The Heart of the Matter
					qg = 39908,	-- Brann Bronzebeard
					groups = {
						i(66913),	-- Repository Gauntlets
						i(66911),	-- Offline Greaves
						i(66914),	-- Boots of the Hard Way
					},
				}),
				q(28753, {	-- Doing it the Hard Way
					sourceQuest = 28746,	-- Penetrating Their Defenses
					qg = 39908,	-- Brann Bronzebeard
					groups = {
						i(66917),	-- True Archaeologist's Bracers
						i(66921),	-- Helm of Reorigination
						i(66915),	-- Treasure Hunter's Gloves
					},
				}),
				q(28802, {	-- Map of the Architects
					provider = { "o", 207410 },	-- Large Stone Obelisk
					requireSkill = ARCHAEOLOGY,
					isRepeatable = true,
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL, { timeline = { REMOVED_7_3_5 } }).AddGroups({
				BossOnly(ANHUUR, {
					i(55889),	-- Anhuur's Hymnal
					i(55890),	-- Awakening Footfalls
					i(55887),	-- Belt of Petrified Tears
					i(55888),	-- Darkhowl Amulet
					i(55886),	-- Poison Fang Bracers
				}),
				BossOnly(PTAH, {
					i(56093),	-- Breastplate of the Risen Land
					i(56096),	-- Bulwark of the Primordial Mound
					i(56095),	-- Mouth of the Earth
					i(56097),	-- Soul Releaser
					i(56094),	-- Underworld Cord
				}),
				BossOnly(ANRAPHET, {
					i(57855),	-- Alpha Bracers
					i(57860),	-- Anraphet's Regalia
					i(57857),	-- Boots of Crumbling Ruin
					i(57858),	-- Mantle of Soft Shadows
					i(57856),	-- Omega Breastplate
				}),
				BossOnly(ISISET, {
					i(55992),	-- Armguards of Unearthly Light
					i(55995),	-- Blood of Isiset
					i(55993),	-- Legwraps of Astral Rain
					i(55996),	-- Nova Band
					i(55994),	-- Ring of Blinding Stars
				}),
				BossOnly(AMMUNAE, {
					i(56000),	-- Band of Life Energy
					i(55997),	-- Bloodpetal Mantle
					i(55998),	-- Robes of Rampant Growth
					i(55999),	-- Seedling Pod
					i(56001, { timeline = { ADDED_4_0_3, REMOVED_5_0_4 } }),	-- Slashing Thorns
				}),
				BossOnly(SETESH, {
					i(57862),	-- Chaotic Wrappings
					i(57861),	-- Helm of Setesh
					i(57864),	-- Helm of the Typhonic Beast
					i(57863),	-- Hieroglyphic Vest
					i(57865),	-- Scepter of Power
				}),
				BossOnly(RAJH, {
					-- #if BEFORE 7.3.5
					ach(4841),	-- Halls of Origination
					-- #endif
					i(56106),	-- Band of Rays
					i(56108),	-- Blade of the Burning Sun
					i(56099),	-- Fingers of Light
					i(56105),	-- Hekatic Slippers
					i(56102),	-- Left Eye of Rajh
					i(56104),	-- Legguards of Noon
					i(56098),	-- Red Beam Cord
					i(56100),	-- Right Eye of Rajh
					i(56107),	-- Solar Wind Cloak
					i(56101),	-- Sun Strike
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(56109),	-- Book of Origination
					i(56438, { timeline = { CREATED_4_1_0 } }),	-- Book of Origination
					i(56110),	-- Charm of the Muse
					i(56111),	-- Temple Band
				}),
				BossOnly(ANHUUR, {
					i(56407),	-- Anhuur's Hymnal
					i(56408),	-- Awakening Footfalls
					i(56410),	-- Belt of Petrified Tears
					i(56411),	-- Darkhowl Amulet
					i(56409),	-- Poison Fang Bracers
				}),
				BossOnly(PTAH, {
					i(56425),	-- Breastplate of the Risen Land
					i(56426),	-- Bulwark of the Primordial Mound
					i(56422),	-- Mouth of the Earth
					i(56424),	-- Soul Releaser
					i(56423),	-- Underworld Cord
				}),
				BossOnly(ANRAPHET, {
					i(57870),	-- Alpha Bracers
					i(57868),	-- Anraphet's Regalia
					i(57867),	-- Boots of Crumbling Ruin
					i(157611, { timeline = { ADDED_7_3_5 } }),	-- Crown of Patient Vigil
					i(57866),	-- Mantle of Soft Shadows
					i(57869),	-- Omega Breastplate
				}),
				BossOnly(ISISET, {
					i(56416),	-- Armguards of Unearthly Light
					i(56414),	-- Blood of Isiset
					i(56413),	-- Legwraps of Astral Rain
					i(56415),	-- Nova Band
					i(56412),	-- Ring of Blinding Stars
					i(157609, { timeline = { ADDED_7_3_5 } }),	-- Scepter of Stargazing
				}),
				BossOnly(AMMUNAE, {
					i(56418),	-- Band of Life Energy
					i(56419),	-- Bloodpetal Mantle
					i(56417),	-- Robes of Rampant Growth
					i(56421),	-- Seedling Pod
				}),
				BossOnly(SETESH, {
					i(57875),	-- Chaotic Wrappings
					i(57873),	-- Helm of Setesh
					i(57871),	-- Helm of the Typhonic Beast
					i(57874),	-- Hieroglyphic Vest
					i(57872),	-- Scepter of Power
				}),
				BossOnly(RAJH, {
					ach(4841),	-- Halls of Origination
					i(56432),	-- Band of Rays
					i(56433),	-- Blade of the Burning Sun
					i(56428),	-- Fingers of Light
					i(56436),	-- Hekatic Slippers
					i(56427),	-- Left Eye of Rajh
					i(56435),	-- Legguards of Noon
					i(56429),	-- Red Beam Cord
					i(56431),	-- Right Eye of Rajh
					i(56434),	-- Solar Wind Cloak
					i(56430),	-- Sun Strike
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				n(ACHIEVEMENTS, {
					ach(5296),	-- Faster Than the Speed of Light
				}),
				BossOnly(ANHUUR, {
					ach(5293),	-- I Hate That Song
				}),
				BossOnly(PTAH, {
					ach(5294),	-- Straw That Broke the Camel's Back
				}),
				BossOnly(ANRAPHET),
				BossOnly(ISISET),
				BossOnly(AMMUNAE, {
					i(56420, { timeline = { REMOVED_5_0_4 } }),	-- Slashing Thorns
				}),
				BossOnly(SETESH),
				BossOnly(RAJH, {
					ach(5065),	-- Heroic: Halls of Origination
					ach(5139),	-- Heroic: Halls of Origination Guild Run
					ach(5295),	-- Sun of a....
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(56109),	-- Book of Origination
					i(56110),	-- Charm of the Muse
					i(56111),	-- Temple Band
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC).AddGroups({
				n(ACHIEVEMENTS, {
					ach(5296),	-- Faster Than the Speed of Light
				}),
				n(ZONE_DROPS, {
					i(56438, { timeline = { CREATED_4_1_0 } }),	-- Book of Origination
				}),
				BossOnly(ANHUUR, {
					ach(5293),	-- I Hate That Song
					i(56407),	-- Anhuur's Hymnal
					i(56408),	-- Awakening Footfalls
					i(56410),	-- Belt of Petrified Tears
					i(56411),	-- Darkhowl Amulet
					i(56409),	-- Poison Fang Bracers
				}),
				BossOnly(PTAH, {
					ach(5294),	-- Straw That Broke the Camel's Back
					i(56425),	-- Breastplate of the Risen Land
					i(56426),	-- Bulwark of the Primordial Mound
					i(56422),	-- Mouth of the Earth
					i(56424),	-- Soul Releaser
					i(56423),	-- Underworld Cord
				}),
				BossOnly(ANRAPHET, {
					i(57870),	-- Alpha Bracers
					i(57868),	-- Anraphet's Regalia
					i(57867),	-- Boots of Crumbling Ruin
					i(57866),	-- Mantle of Soft Shadows
					i(57869),	-- Omega Breastplate
				}),
				BossOnly(ISISET, {
					i(56416),	-- Armguards of Unearthly Light
					i(56414),	-- Blood of Isiset
					i(56413),	-- Legwraps of Astral Rain
					i(56415),	-- Nova Band
					i(56412),	-- Ring of Blinding Stars
				}),
				BossOnly(AMMUNAE, {
					i(56418),	-- Band of Life Energy
					i(56419),	-- Bloodpetal Mantle
					i(56417),	-- Robes of Rampant Growth
					i(56421),	-- Seedling Pod
					i(56420, { timeline = { REMOVED_5_0_4 } }),	-- Slashing Thorns
				}),
				BossOnly(SETESH, {
					i(57875),	-- Chaotic Wrappings
					i(57873),	-- Helm of Setesh
					i(57871),	-- Helm of the Typhonic Beast
					i(57874),	-- Hieroglyphic Vest
					i(57872),	-- Scepter of Power
				}),
				BossOnly(RAJH, {
					ach(5065),	-- Heroic: Halls of Origination
					ach(5139),	-- Heroic: Halls of Origination Guild Run
					ach(5295),	-- Sun of a....
					i(56432),	-- Band of Rays
					i(56433),	-- Blade of the Burning Sun
					i(56428),	-- Fingers of Light
					i(56436),	-- Hekatic Slippers
					i(56427),	-- Left Eye of Rajh
					i(56435),	-- Legguards of Noon
					i(56429),	-- Red Beam Cord
					i(56431),	-- Right Eye of Rajh
					i(56434),	-- Solar Wind Cloak
					i(56430),	-- Sun Strike
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(PROTOCOL_INFERNO, {
				OnInit = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(470595),
				groups = {
					BossOnly(RAJH, {
						ach(41144),	-- Protocol Inferno: Halls of Origination
					}),
				},
			})),
			-- #endif
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(70, {
		q(35415),	-- Halls of Origination Reward Quest
		q(35424),	-- Halls of Origination Reward Quest
		q(35420),	-- Halls of Origination Bonus Rewards
		q(35426),	-- Halls of Origination Bonus Rewards
	}),
}));
