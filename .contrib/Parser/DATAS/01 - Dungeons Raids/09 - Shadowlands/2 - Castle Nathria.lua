-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

LEECHING_VAULTS_HEADER = createHeader({
	readable = "Leeching Vaults",
	icon = 3614361,
	text = {
		en = "Leeching Vaults",
	},
	description = {
		en = "The first LFR wing, featuring Huntsman Altimor, Hungering Destroyer, and Lady Inerva Darkvein.",
	},
});
RELIQUARY_OF_OPULENCE_HEADER = createHeader({
	readable = "Reliquary of Opulence",
	icon = 3614361,
	text = {
		en = "Reliquary of Opulence",
	},
	description = {
		en = "The second LFR wing, featuring Artificer Xy'mox, Sun King's Salvation, and The Council of Blood.",
	},
});
BLOOD_FROM_STONE_HEADER = createHeader({
	readable = "Blood from Stone",
	icon = 3614361,
	text = {
		en = "Blood from Stone",
	},
	description = {
		en = "The third LFR wing, featuring Shriekwing, Sludgefist, and Stone Legion Generals.",
	},
});
AUDIENCE_WITH_ARROGANCE_HEADER = createHeader({
	readable = "Audience with Arrogance",
	icon = 3614361,
	text = {
		en = "Audience with Arrogance",
	},
	description = {
		en = "The fourth LFR wing, featuring Sire Denathrius.",
	},
});

-- Non-fated modIDs for each difficulty
local LFR = 04;
local LFR_LAST2 = 83;

local NORMAL = 03;
local NORMAL_LAST2 = 82;

local HEROIC = 05;
local HEROIC_LAST2 = 84;

local MYTHIC = 06;
local MYTHIC_LAST2 = 85;

-- Fated modIDs for each difficulty
local FATED_LFR = 90;
local FATED_LFR_LAST2 = 94;

local FATED_NORMAL = 89;
local FATED_NORMAL_LAST2 = 93;

local FATED_HEROIC = 91;
local FATED_HEROIC_LAST2 = 95;

local FATED_MYTHIC = 92;
local FATED_MYTHIC_LAST2 = 96;

-- Creates a 'Fated' Version of the specified Exact ItemID, which has the given ModID in game
local function FatedItem(modItemID, modID)
	local item = i(math.floor(modItemID));
	item.modID = modID;
	item.skipFill = true
	item.sym = {{"select","itemID",modItemID},{"groupfill"}};	-- Base Version & Fill
	item.timeline = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH };
	item.nomerge = true
	return item;
end

------ Encounter Constants ------
local SHRIEKWING = 2393;
local HUNTSMAN = 2429;
local SUN_KING = 2422;
local ARTIFICER_XYMOX = 2418;
local HUNGERING = 2428;
local LADY = 2420;
local COUNCIL = 2426;
local SLUDGEFIST = 2394;
local GENERALS = 2425;
local SIRE = 2424;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SHRIEKWING] = { 164406 },	-- Shriekwing
	[HUNTSMAN] = {
		165066,	-- Huntsman Altimor
		169457,	-- Bargast
		169458,	-- Hecutis
		165067,	-- Margore
	},
	[SUN_KING] = {
		168973,	-- High Torturer Darithos
		165759,	-- Kael'thas Sunstrider
		165805,	-- Shade of Kael'thas
	},
	[ARTIFICER_XYMOX] = { 166644 },	-- Artificer Xy'mox
	[HUNGERING] = { 164261 },	-- Hungering Destroyer
	[LADY] = { 165521 },	-- Lady Inerva Darkvein
	[COUNCIL] = {
		166971,	-- Castellan Niklaus
		166970,	-- Lord Stavros
		166969,	-- Baroness Frieda
	},
	[SLUDGEFIST] = { 164407 },	-- Sludgefist
	[GENERALS] = {
		168112,	-- General Kaal
		168113,	-- General Grashaal
	},
	[SIRE] = {
		167406,	-- Sire Denathrius
		168156,	-- Remornia
	},
};

------ All Bosses crs ------
local ALL_BOSSES = {};
for k,v in pairs(EncounterToCRS) do
	ALL_BOSSES = appendGroups(v, ALL_BOSSES);
end

------ EncounterToLoot ------
local EncounterToLoot = {
	[SHRIEKWING] = {
		i(182993),	-- Chiropteran Leggings
		i(183034),	-- Cowled Batwing Cloak
		i(182976),	-- Double-Chained Utility Belt
		i(183027),	-- Errant Crusader's Greaves
		i(184016),	-- Skulker's Wing
		i(182979),	-- Slippers of the Forgotten Heretic
	},
	[HUNTSMAN] = {
		i(183892),	-- Mystic Anima Spherule
		i(184017),	-- Bargast's Leash
		i(183040),	-- Charm of Eternal Winter
		i(182996),	-- Grim Pursuant's Maille
		i(183018),	-- Hellhound Cuffs
		i(182988),	-- Master Huntsman's Bandolier
		i(182995),	-- Spell-Woven Tourniquet
	},
	[SUN_KING] = {
		i(183893),	-- Abominable Anima Spherule
		i(182977),	-- Bangles of Errant Pride
		i(183007),	-- Bleakwing Assassin's Grips
		i(182986),	-- High Torturer's Smock
		i(183033),	-- Mantle of Manifest Sins
		i(184019),	-- Soul Igniter
		i(184018),	-- Splintered Heart of Al'ar
		i(183025),	-- Stoic Guardsman's Belt
		i(184020),	-- Tuft of Smoldering Plumage
	},
	[ARTIFICER_XYMOX] = {
		i(183888),	-- Apogee Anima Bead
		i(182987),	-- Breastplate of Cautious Calculation
		i(184021),	-- Glyph of Assimilation
		i(183012),	-- Greaves of Enigmatic Energies
		i(183038),	-- Hyperlight Band
		i(183019),	-- Precisely Calibrated Chronometer
		i(183004),	-- Shadewarped Sash
	},
	[HUNGERING] = {
		i(183891),	-- Venerated Anima Spherule
		i(183028),	-- Cinch of Infinite Tightness
		i(183000),	-- Consumptive Chainmail Carapace
		i(184022),	-- Consumptive Infusion
		i(182992),	-- Endlessly Gluttonous Greaves
		i(182994),	-- Epaulets of Overwhelming Force
		i(184023),	-- Gluttonous Spike
		i(183001),	-- Helm of Insatiable Appetite
		i(183009),	-- Miasma-lacquered Jerkin
		i(183024),	-- Volatile Shadestitch Legguards
	},
	[LADY] = {
		i(183889),	-- Thaumaturgic Anima Bead
		i(183015),	-- Binding of Warped Desires
		i(183021),	-- Confidant's Favored Cap
		i(183026),	-- Gloves of Phantom Shadows
		i(182985),	-- Memento-Laden Cuisses
		i(184025),	-- Memory of Past Sins
		i(183037),	-- Ritualist's Treasured Ring
	},
	[COUNCIL] = {
		i(183890),	-- Zenith Anima Spherule
		i(183014),	-- Castellan's Chainlink Grips
		i(182989),	-- Corset of the Deft Duelist
		i(183011),	-- Courtier's Costume Trousers
		i(183030),	-- Enchanted Toe-Tappers
		i(184024),	-- Macabre Sheet Music
		i(183039),	-- Noble's Birthstone Pendant
		i(183023),	-- Sparkling Glass Slippers
		i(182983),	-- Stoneguard Attendant's Boots
	},
	[SLUDGEFIST] = {
		i(182984),	-- Colossal Plate Gauntlets
		i(184026),	-- Hateful Chain
		i(183005),	-- Heedless Pugilist's Harness
		i(183022),	-- Impossibly Oversized Mitts
		i(182981),	-- Leggings of Lethal Reverberations
		i(183016),	-- Load-Bearing Belt
		i(182999),	-- Rampaging Giant's Chestplate
		i(183006),	-- Stoneclas Stompers
	},
	[GENERALS] = {
		i(183002),	-- Ceremonial Parade Legguards
		i(183032),	-- Crest of the Legionnaire General
		i(182991),	-- Oathsworn Soldier's Gauntlets
		i(182998),	-- Robes of the Cursed Commando
		i(184027),	-- Stone Legion Heraldry
		i(183029),	-- Wicked Flanker's Gorget
	},
	[SIRE] = {
		i(184028),	-- Cabalist's Hymnal
		i(182997),	-- Diadem of Imperious Desire
		i(184030),	-- Dreadfire Vessel
		i(184029),	-- Manabound Mirror
		i(183036),	-- Most Regal Signet of Sire Denathrius
		i(183003),	-- Pauldrons of Fatal Finality
		i(182980),	-- Sadist's Sinister Mask
		i(184031),	-- Sanguine Vintage
		i(183020),	-- Shawl of the Penitent
	},
};

------ Zone Drops ------
local ZoneDropLoot = {
	i(183017),	-- Acolyte's Velvet Bindings
	i(183035),	-- Ardent Sunstar Signet
	i(182978),	-- Barkweave Wristwraps
	i(184778),	-- Decadent Nathrian Shawl
	i(183013),	-- Fallen Templar's Gauntlets
	i(182990),	-- Legionnaire's Bloodstained Sabatons
	i(183031),	-- Soldier's Stoneband Wristguards
	i(183010),	-- Stud-Scarred Footwear
	i(183008),	-- Supple Supplicant's Gloves
	i(182982),	-- Watchful Arbelist's Bracers
};

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1190, {	-- Castle Nathria
		["coord"] = { 46.1, 41.5, REVENDRETH },
		["maps"] = {
			1734,	-- Revendreth (?)
			1735,	-- The Grand Walk
			1744,	-- The Purloined Stores
			1745,	-- Halls of the Faithful
			1746,	-- Pride's Prison
			1747,	-- Nightcloak Sanctum
			1748,	-- The Observatorium
			1750,	-- Feast of Arrogance
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(14715, {	-- Castle Nathria
					crit(48950, {	-- Shriekwing
						["_encounter"] = { 2393, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48951, {	-- Huntsman Altimor
						["_encounter"] = { 2429, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48954, {	-- Sun King's Salvation
						["_encounter"] = { 2422, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48953, {	-- Artificer Xy'mox
						["_encounter"] = { 2418, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48952, {	-- Hungering Destroyer
						["_encounter"] = { 2428, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48955, {	-- Lady Inerva Darkvein
						["_encounter"] = { 2420, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48956, {	-- The Council of Blood
						["_encounter"] = { 2426, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48957, {	-- Sludgefist
						["_encounter"] = { 2394, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48958, {	-- Stone Legion Generals
						["_encounter"] = { 2425, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(48959, {	-- Sire Denathrius
						["_encounter"] = { 2424, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(14717, {	-- Heroic: Castle Nathria
					crit(48970, {	-- Shriekwing
						["_encounter"] = { 2393, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48971, {	-- Huntsman Altimor
						["_encounter"] = { 2429, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48974, {	-- Sun King's Salvation
						["_encounter"] = { 2422, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48973, {	-- Artificer Xy'mox
						["_encounter"] = { 2418, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48972, {	-- Hungering Destroyer
						["_encounter"] = { 2428, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48975, {	-- Lady Inerva Darkvein
						["_encounter"] = { 2420, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48976, {	-- The Council of Blood
						["_encounter"] = { 2426, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48977, {	-- Sludgefist
						["_encounter"] = { 2394, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48978, {	-- Stone Legion Generals
						["_encounter"] = { 2425, DIFFICULTY.RAID.HEROIC },
					}),
					crit(48979, {	-- Sire Denathrius
						["_encounter"] = { 2424, DIFFICULTY.RAID.HEROIC },
					}),
				}),
				ach(14718, {	-- Mythic: Castle Nathria
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						14356,	-- Mythic: Shriekwing
						14357,	-- Mythic: Huntsman Altimor
						14360,	-- Mythic: Sun King's Salvation
						14359,	-- Mythic: Artificer Xy'mox
						14358,	-- Mythic: Hungering Destroyer
						14361,	-- Mythic: Lady Inerva Darkvein
						14362,	-- Mythic: The Council of Blood
						14363,	-- Mythic: Sludgefist
						14364,	-- Mythic: Stone Legion Generals
						14365,	-- Mythic: Sire Denathrius
					}},
				}),
				ach(14355, {	-- Glory of the Nathria Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						14293,	-- Blind as a Bat
						14523,	-- Taking Care of Business
						14608,	-- Burning Bright
						14617,	-- Private Stock
						14376,	-- Feed the Beast
						14524,	-- I Don't Know What I Expected
						14619,	-- Pour Decision Making
						14294,	-- Dirtflap's Revenge
						14525,	-- Feed Me, Seymour!
						14610,	-- Clear Conscience
					}},
					["groups"] = {
						i(182596),	-- Rampart Screecher (MOUNT!)
					},
				}),
				ach(14614),		-- Castle Vain
				-- Fated
				ach(15663, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {	-- Fate of Nathria
					crit(53514, {	-- Shriekwing
						["_encounter"] = { 2393, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53515, {	-- Huntsman Altimor
						["_encounter"] = { 2429, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53516, {	-- Sun King's Salvation
						["_encounter"] = { 2422, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53517, {	-- Artificer Xy'mox
						["_encounter"] = { 2418, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53518, {	-- Hungering Destroyer
						["_encounter"] = { 2428, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53519, {	-- Lady Inerva Darkvein
						["_encounter"] = { 2420, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53520, {	-- The Council of Blood
						["_encounter"] = { 2426, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53521, {	-- Sludgefist
						["_encounter"] = { 2394, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53522, {	-- Stone Legion Generals
						["_encounter"] = { 2425, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53523, {	-- Sire Denathrius
						["_encounter"] = { 2424, DIFFICULTY.RAID.MULTI.ALL },
					}),
				})),
				ach(15664, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {	-- Heroic: Fate of Nathria
					crit(53524, {	-- Shriekwing
						["_encounter"] = { 2393, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53525, {	-- Huntsman Altimor
						["_encounter"] = { 2429, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53526, {	-- Sun King's Salvation
						["_encounter"] = { 2422, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53527, {	-- Artificer Xy'mox
						["_encounter"] = { 2418, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53528, {	-- Hungering Destroyer
						["_encounter"] = { 2428, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53529, {	-- Lady Inerva Darkvein
						["_encounter"] = { 2420, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53530, {	-- The Council of Blood
						["_encounter"] = { 2426, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53531, {	-- Sludgefist
						["_encounter"] = { 2394, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53532, {	-- Stone Legion Generals
						["_encounter"] = { 2425, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53533, {	-- Sire Denathrius
						["_encounter"] = { 2424, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				})),
				ach(15665, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {	-- Mythic: Fate of Nathria
					crit(53534, {	-- Shriekwing
						["_encounter"] = { 2393, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53535, {	-- Huntsman Altimor
						["_encounter"] = { 2429, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53536, {	-- Sun King's Salvation
						["_encounter"] = { 2422, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53537, {	-- Artificer Xy'mox
						["_encounter"] = { 2418, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53538, {	-- Hungering Destroyer
						["_encounter"] = { 2428, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53539, {	-- Lady Inerva Darkvein
						["_encounter"] = { 2420, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53540, {	-- The Council of Blood
						["_encounter"] = { 2426, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53541, {	-- Sludgefist
						["_encounter"] = { 2394, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53542, {	-- Stone Legion Generals
						["_encounter"] = { 2425, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53543, {	-- Sire Denathrius
						["_encounter"] = { 2424, DIFFICULTY.RAID.MYTHIC },
					}),
				})),
				-- Guild Achievements
				ach(14459),		-- Castle Nathria Guild Run
				ach(14720),		-- Heroic: Castle Nathria Guild Run
				ach(14652),		-- Mythic: Sire Denathrius Guild Run
			}),
			CommonBossDrops({
				i(173068),	-- Vantus Rune Technique: Castle Nathria (RECIPE!)
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				n(WORLD_QUESTS, {
					q(66693, {	-- Tempting Fate: Castle Nathria
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
						["isWorldQuest"] = true,
					}),
				}),
				n(ZONE_DROPS, {
					i(180453),	-- She Had a Stone Heart
				}),
				BossOnly(SHRIEKWING, {
					i(182330),	-- Demonic Parole
					i(182656),	-- Disturb the Peace
					i(181962),	-- Mental Recovery
					i(180944),	-- Merciless Bonegrinder
					i(183512),	-- Planned Execution
					i(182466),	-- Shade of Terror
					i(182109),	-- Totemic Surge
					i(182132),	-- Unending Grip
					i(181742),	-- Walk with the Ox
					i(181866),	-- Withering Plague
				}),
				BossOnly(HUNTSMAN, {
					i(183258),	-- Memory of Eagletalon's True Focus
					i(183235),	-- Memory of The Natural Order
					i(183361),	-- Memory of Spiritwalker's Tidal Totem
					i(180933),	-- Ashen Juggernaut
					i(183470),	-- Born of the Wilds
					i(180943),	-- Cacophonous Roar
					i(182110),	-- Crippling Hex
					i(181982),	-- Everfrost
					i(181942),	-- Focused Mending
					i(181510),	-- Lingering Numbness
					i(183501),	-- Rushed Setup
					i(182648),	-- Sharpshooter's Focus
					i(182605),	-- Tactical Retreat
				}),
				BossOnly(SUN_KING, {
					i(183304),	-- Memory of the Shadowbreaker
					i(183277),	-- Memory of the Sun King
					i(180844),	-- Brutal Vitality
					i(182584),	-- Cheetah's Vigor
					i(182316),	-- Fel Defender
					i(181975),	-- Hardened Bones
					i(182307),	-- Shielding Words
					i(182677),	-- Punish the Guilty
					i(182736),	-- Rolling Agony
					i(182307),	-- Shielding Words
					i(182471),	-- Soul Furnace
					i(182107),	-- Vital Accretion
				}),
				BossOnly(ARTIFICER_XYMOX, {
					i(183960),	-- Portable Pocket Dimension (BAG!)
					i(183370),	-- Memory of the Core of the Balespider
					i(183296),	-- Memory of the Last Emperor
					i(182460),	-- Accrued Vitality
					i(183468),	-- Born Anew
					i(181837),	-- Clear Mind
					i(182126),	-- High Voltage
					i(181734),	-- Magi's Brand
					i(182441),	-- Markman's Advantage
					i(181843),	-- Shining Radiance
					i(181769),	-- Tempest Barrier
					i(183479),	-- Umbral Intensity
				}),
				BossOnly(HUNGERING, {
					i(182630),	-- Memory of Gorefiend's Domination
					i(183391),	-- Memory of The Wall
					i(182755),	-- Ashen Remains
					i(181435),	-- Calculated Strikes
					i(181786),	-- Eternal Hunger
					i(181827),	-- Move with Grace
					i(182622),	-- Resplendent Light
					i(183498),	-- Cloaked in Shadows
					i(181698),	-- Cryo-Freeze
					i(181827),	-- Move with Grace
					i(181836),	-- Spirit Drain
					i(181640),	-- Tumbling Technique
				}),
				BossOnly(LADY, {
					i(183218),	-- Memory of a Fortified Fel Flame
					i(183240),	-- Memory of the Mother Tree
					i(183510),	-- Count the Odds
					i(182336),	-- Golden Path
					i(181466),	-- Grounding Breath
					i(181498),	-- Grounding Surge
					i(181495),	-- Jade Bond
					i(183502),	-- Prepared for All
					i(181841),	-- Reinforced Shell
					i(182469),	-- Rejuvenating Wind
					i(182449),	-- Resolute Barrier
					i(180896),	-- Safeguard
					i(182317),	-- Shattered Restoration
					i(182111),	-- Spiritual Resonance
					i(183482),	-- Sudden Ambush
					i(182143),	-- Swirling Currents
					i(183464),	-- Tough as Bark
					i(181826),	-- Translucent Image
				}),
				BossOnly(COUNCIL, {
					i(183334),	-- Memory of the Dashing Scoundrel
					i(183326),	-- Memory of the Void's Eternal Call
					i(183402),	-- Bloodletting
					i(181834),	-- Chilled Resilience
					i(182383),	-- Dancing with Fate
					i(182470),	-- Demonic Momentum
					i(181512),	-- Dizzying Tumble
					i(182461),	-- Echoing Blessings
					i(182131),	-- Haunting Apparitions
					i(183466),	-- Innate Resolve
					i(180847),	-- Inspiring Presence
					i(183496),	-- Nimble Fingers
					i(181842),	-- Power Unto Others
					i(182325),	-- Ravenous Consumption
					i(182106),	-- Refreshing Waters
					i(182480),	-- Reversal of Fortune
					i(181776),	-- Vicious Contempt
					i(181464),	-- Winter's Protection
				}),
				BossOnly(SLUDGEFIST, {
					i(183318),	-- Memory of a Clear Mind
					i(183272),	-- Memory of a Siphoning Storm
					i(183374),	-- Memory of Azj'Aqir's Cinders
					i(183340),	-- Memory of Greenskin
					i(182635),	-- Memory of Koltira
					i(183309),	-- Memory of the Ardent Protector
					i(183389),	-- Memory of the Berserker's Will
					i(183233),	-- Memory of the Frenzyband
					i(183293),	-- Memory of the Morning's Tear
					i(183356),	-- Memory of the Primal Lava Actuators
					i(183264),	-- Memory of the Rylakstalker's Strikes
					i(181455),	-- Icy Propulsion
					i(181707),	-- Diverted Energy
					i(182340),	-- Fel Celerity
					i(181373),	-- Harm Denial
					i(183505),	-- Maim, Mangle
					i(183499),	-- Quick Decisions
					i(183467),	-- Tireless Pursuit
					i(182751),	-- Tyrant's Soul
					i(183484),	-- Unchecked Aggression
				}),
				BossOnly(GENERALS, {
					i(183346),	-- Memory of an Ancestral Reminder
					i(183267),	-- Memory of an Expanded Potential
					i(183330),	-- Memory of Bloodfang's Essence
					i(183367),	-- Memory of Demonic Synergy
					i(182627),	-- Memory of Superstrain
					i(183213),	-- Memory of the Anguish of the Collective
					i(183223),	-- Memory of the Circle of Life and Death
					i(183283),	-- Memory of the Invoker
					i(183299),	-- Memory of the Sun's Cycles
					i(183381),	-- Memory of the Tormented Kings
					i(183316),	-- Memory of the Twins of the Sun Priestess
					i(183250),	-- Memory of the Wild Call
					i(181838),	-- Charitable Soul
					i(183076),	-- Diabolic Bloodstone
					i(182304),	-- Divine Call
					i(182324),	-- Felfire Haste
					i(181467),	-- Flow of Time
					i(181508),	-- Fortifying Ingredients
					i(183469),	-- Front of the Pack
					i(182464),	-- Harmony of the Tortollan
					i(182133),	-- Insatiable Appetite
					i(183497),	-- Recuperator
					i(180842),	-- Stalwart Guardian
					i(183167),	-- Strength of the Pack
					i(182108),	-- Thunderous Paws
					i(182134),	-- Unruly Winds
					i(183488),	-- Unstoppable Growth
					i(182608),	-- Virtuous Command
				}),
				BossOnly(SIRE, {
					ig(179358),	-- Remornia (QI!)
					ig(183395),	-- Will of Remornia (PET!)
					i(183288),	-- Memory of a Celestial Infusion
					i(183324),	-- Memory of a Harmonious Apparatus
					i(183362),	-- Memory of a Malefic Wrath
					i(183344),	-- Memory of Finality
					i(183227),	-- Memory of Oneth
					i(183214),	-- Memory of the Chaos Theory
					i(182636),	-- Memory of the Deadliest Coil
					i(183352),	-- Memory of the Demise of Skybreaker
					i(183256),	-- Memory of the Eredun War Order
					i(183384),	-- Memory of the Exploiter
					i(183279),	-- Memory of the Freezing Winds
					i(183310),	-- Memory of the Vanguard's Momentum
					i(184587),	-- Ambuscade
					i(182105),	-- Astral Projection
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
					i(183500),	-- Fade to Nothing
					i(182129),	-- Fae Fermata
					i(182961),	-- Fatal Decimation
					i(181981),	-- Festering Transfusion
					i(182113),	-- Fleeting Wind
					i(181553),	-- Gift of the Lich
					i(182777),	-- Hallowed Discernment
					i(182463),	-- Harrowing Punishment
					i(181774),	-- Imbued Reflections
					i(182288),	-- Impenetrable Gloom
					i(181756),	-- Incantation of Swiftness
					i(182685),	-- Increased Scrutiny
					i(181469),	-- Indelible Victory
					i(181600),	-- Ire of the Ascended
					i(183044),	-- Kilrogg's Cunning
					i(183495),	-- Lashing Scars
					i(182348),	-- Lavish Harvest
					i(182448),	-- Light's Barding
					i(181840),	-- Light's Inspiration
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
					i(181624),	-- Swift Transference
					i(182767),	-- The Long Summer
					i(182346),	-- Tumbling Waves
					i(183463),	-- Unnatural
					i(183465),	-- Ursine Vigor
					i(182442),	-- Veteran's Repute
					i(182318),	-- Viscous Ink
					i(181775),	-- Way of the Fae
					i(183199),	-- Withering Ground
				}),
			}),
			-- #if AFTER 10.1.5
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 205959 },	-- Ta'elfar <Trader of Histories>
				["coord"] = { 41.3, 71.0, ORIBOS },
			}),
			-- #endif
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups(bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_10_0_2_LAUNCH, ADDED_10_1_5 } }, {
				ZoneDrops(),
				n(LEECHING_VAULTS_HEADER, {
					Boss(HUNTSMAN, {
						FatedItem(modItemId(183892,LFR), FATED_LFR),	-- Mystic Anima Spherule (Fated)
					}),
					Boss(HUNGERING, {
						FatedItem(modItemId(183891,LFR), FATED_LFR),	-- Venerated Anima Spherule (Fated)
					}),
					Boss(LADY, {
						FatedItem(modItemId(183889,LFR), FATED_LFR),	-- Thaumaturgic Anima Bead (Fated)
					}),
				}),
				n(RELIQUARY_OF_OPULENCE_HEADER, {
					Boss(ARTIFICER_XYMOX, {
						FatedItem(modItemId(183888,LFR), FATED_LFR),	-- Apogee Anima Bead (Fated)
					}),
					Boss(SUN_KING, {
						FatedItem(modItemId(183893,LFR), FATED_LFR),	-- Abominable Anima Spherule (Fated)
					}),
					Boss(COUNCIL, {
						FatedItem(modItemId(183890,LFR), FATED_LFR),	-- Zenith Anima Spherule (Fated)
					}),
				}),
				n(BLOOD_FROM_STONE_HEADER, {
					Boss(SHRIEKWING),
					Boss(SLUDGEFIST),
					Boss(GENERALS, {
						i(183895, {	-- Apogee Anima Bead
							["modID"] = LFR_LAST2,
						}),
						FatedItem(modItemId(183895,LFR_LAST2), FATED_LFR_LAST2),	-- Apogee Anima Bead (Fated)
						i(183894, {	-- Thaumaturgic Anima Bead
							["modID"] = LFR_LAST2,
						}),
						FatedItem(modItemId(183894,LFR_LAST2), FATED_LFR_LAST2),	-- Thaumaturgic Anima Bead (Fated)
					}),
				}),
				n(AUDIENCE_WITH_ARROGANCE_HEADER, {
					Boss(SIRE, {
						i(183896, {	-- Abominable Anima Spherule
							["modID"] = LFR_LAST2,
						}),
						FatedItem(modItemId(183896,LFR_LAST2), FATED_LFR_LAST2),	-- Abominable Anima Spherule (Fated)
						i(183897, {	-- Mystic Anima Spherule
							["modID"] = LFR_LAST2,
						}),
						FatedItem(modItemId(183897,LFR_LAST2), FATED_LFR_LAST2),	-- Mystic Anima Spherule (Fated)
						i(183898, {	-- Venerated Anima Spherule
							["modID"] = LFR_LAST2,
						}),
						FatedItem(modItemId(183898,LFR_LAST2), FATED_LFR_LAST2),	-- Venerated Anima Spherule (Fated)
						i(183899, {	-- Zenith Anima Spherule
							["modID"] = LFR_LAST2,
						}),
						FatedItem(modItemId(183899,LFR_LAST2), FATED_LFR_LAST2),	-- Zenith Anima Spherule (Fated)
					}),
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(SHRIEKWING, {
					ach(14293),	-- Blind as a Bat
				}),
				BossOnly(HUNTSMAN, {
					ach(14523),	-- Taking Care of Business
				}),
				BossOnly(SUN_KING, {
					ach(14608),	-- Burning Bright
				}),
				BossOnly(ARTIFICER_XYMOX, {
					ach(14617),	-- Private Stock
				}),
				BossOnly(HUNGERING, {
					ach(14376),	-- Feed the Beast
				}),
				BossOnly(LADY, {
					ach(14524),	-- I Don't Know What I Expected
				}),
				BossOnly(COUNCIL, {
					ach(14619),	-- Pour Decision Making
				}),
				BossOnly(SLUDGEFIST, {
					ach(14294),	-- Dirtflap's Revenge
				}),
				BossOnly(GENERALS, {
					ach(14525),	-- Feed Me, Seymour!
				}),
				BossOnly(SIRE, {
					ach(14610),	-- Clear Conscience
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(62054, {	-- Castle Nathria: Getting a Head [Normal]
						["provider"] = { "n", 172653 },	-- General Draven
						["groups"] = {
							i(182601),	-- Sludgefist's Head (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(SHRIEKWING),
				Boss(HUNTSMAN, {
					FatedItem(modItemId(183892,NORMAL), FATED_NORMAL),	-- Mystic Anima Spherule (Fated)
				}),
				Boss(SUN_KING, {
					FatedItem(modItemId(183893,NORMAL), FATED_NORMAL),	-- Abominable Anima Spherule (Fated)
				}),
				Boss(ARTIFICER_XYMOX, {
					FatedItem(modItemId(183888,NORMAL), FATED_NORMAL),	-- Apogee Anima Bead (Fated)
				}),
				Boss(HUNGERING, {
					FatedItem(modItemId(183891,NORMAL), FATED_NORMAL),	-- Venerated Anima Spherule (Fated)
				}),
				Boss(LADY, {
					FatedItem(modItemId(183889,NORMAL), FATED_NORMAL),	-- Thaumaturgic Anima Bead (Fated)
				}),
				Boss(COUNCIL, {
					FatedItem(modItemId(183890,NORMAL), FATED_NORMAL),	-- Zenith Anima Spherule (Fated)
				}),
				Boss(SLUDGEFIST),
				Boss(GENERALS, {
					i(183895, {	-- Apogee Anima Bead
						["modID"] = NORMAL_LAST2,
					}),
					FatedItem(modItemId(183895,NORMAL_LAST2), FATED_NORMAL_LAST2),	-- Apogee Anima Bead (Fated)
					i(183894, {	-- Thaumaturgic Anima Bead
						["modID"] = NORMAL_LAST2,
					}),
					FatedItem(modItemId(183894,NORMAL_LAST2), FATED_NORMAL_LAST2),	-- Thaumaturgic Anima Bead (Fated)
				}),
				Boss(SIRE, {
					i(183896, {	-- Abominable Anima Spherule
						["modID"] = NORMAL_LAST2,
					}),
					FatedItem(modItemId(183896,NORMAL_LAST2), FATED_NORMAL_LAST2),	-- Abominable Anima Spherule (Fated)
					i(183897, {	-- Mystic Anima Spherule
						["modID"] = NORMAL_LAST2,
					}),
					FatedItem(modItemId(183897,NORMAL_LAST2), FATED_NORMAL_LAST2),	-- Mystic Anima Spherule (Fated)
					i(183898, {	-- Venerated Anima Spherule
						["modID"] = NORMAL_LAST2,
					}),
					FatedItem(modItemId(183898,NORMAL_LAST2), FATED_NORMAL_LAST2),	-- Venerated Anima Spherule (Fated)
					i(183899, {	-- Zenith Anima Spherule
						["modID"] = NORMAL_LAST2,
					}),
					FatedItem(modItemId(183899,NORMAL_LAST2), FATED_NORMAL_LAST2),	-- Zenith Anima Spherule (Fated)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(SHRIEKWING),
				BossOnly(HUNTSMAN),
				BossOnly(SUN_KING),
				BossOnly(ARTIFICER_XYMOX),
				BossOnly(HUNGERING),
				BossOnly(LADY),
				BossOnly(COUNCIL),
				BossOnly(SLUDGEFIST),
				BossOnly(GENERALS),
				BossOnly(SIRE, {
					ach(14460, {["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 }}),	-- Ahead of the Curve: Sire Denathrius
					ig(182169),	-- Veilwing Soul (SS!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(62055, {	-- Castle Nathria: Getting a Head [Heroic]
						["provider"] = { "n", 172653 },	-- General Draven
						["groups"] = {
							i(182602),	-- Sludgefist's Head (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(SHRIEKWING),
				Boss(HUNTSMAN, {
					FatedItem(modItemId(183892,HEROIC), FATED_HEROIC),	-- Mystic Anima Spherule (Fated)
				}),
				Boss(SUN_KING, {
					FatedItem(modItemId(183893,HEROIC), FATED_HEROIC),	-- Abominable Anima Spherule (Fated)
				}),
				Boss(ARTIFICER_XYMOX, {
					FatedItem(modItemId(183888,HEROIC), FATED_HEROIC),	-- Apogee Anima Bead (Fated)
				}),
				Boss(HUNGERING, {
					FatedItem(modItemId(183891,HEROIC), FATED_HEROIC),	-- Venerated Anima Spherule (Fated)
				}),
				Boss(LADY, {
					FatedItem(modItemId(183889,HEROIC), FATED_HEROIC),	-- Thaumaturgic Anima Bead (Fated)
				}),
				Boss(COUNCIL, {
					FatedItem(modItemId(183890,HEROIC), FATED_HEROIC),	-- Zenith Anima Spherule (Fated)
				}),
				Boss(SLUDGEFIST),
				Boss(GENERALS, {
					i(183895, {	-- Apogee Anima Bead
						["modID"] = HEROIC_LAST2,
					}),
					FatedItem(modItemId(183895,HEROIC_LAST2), FATED_HEROIC_LAST2),	-- Apogee Anima Bead (Fated)
					i(183894, {	-- Thaumaturgic Anima Bead
						["modID"] = HEROIC_LAST2,
					}),
					FatedItem(modItemId(183894,HEROIC_LAST2), FATED_HEROIC_LAST2),	-- Thaumaturgic Anima Bead (Fated)
				}),
				Boss(SIRE, {
					i(183896, {	-- Abominable Anima Spherule
						["modID"] = HEROIC_LAST2,
					}),
					FatedItem(modItemId(183896,HEROIC_LAST2), FATED_HEROIC_LAST2),	-- Abominable Anima Spherule (Fated)
					i(183897, {	-- Mystic Anima Spherule
						["modID"] = HEROIC_LAST2,
					}),
					FatedItem(modItemId(183897,HEROIC_LAST2), FATED_HEROIC_LAST2),	-- Mystic Anima Spherule (Fated)
					i(183898, {	-- Venerated Anima Spherule
						["modID"] = HEROIC_LAST2,
					}),
					FatedItem(modItemId(183898,HEROIC_LAST2), FATED_HEROIC_LAST2),	-- Venerated Anima Spherule (Fated)
					i(183899, {	-- Zenith Anima Spherule
						["modID"] = HEROIC_LAST2,
					}),
					FatedItem(modItemId(183899,HEROIC_LAST2), FATED_HEROIC_LAST2),	-- Zenith Anima Spherule (Fated)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(62056, {	-- Castle Nathria: Getting a Head [Mythic]
						["provider"] = { "n", 172653 },	-- General Draven
						["groups"] = {
							i(182603),	-- Sludgefist's Head (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(SHRIEKWING, {
					ach(14356),	-- Mythic: Shriekwing
				}),
				Boss(HUNTSMAN, {
					ach(14357),	-- Mythic: Huntsman Altimor
					FatedItem(modItemId(183892,MYTHIC), FATED_MYTHIC),	-- Mystic Anima Spherule (Fated)
				}),
				Boss(SUN_KING, {
					ach(14360),	-- Mythic: Sun King's Salvation
					FatedItem(modItemId(183893,MYTHIC), FATED_MYTHIC),	-- Abominable Anima Spherule (Fated)
				}),
				Boss(ARTIFICER_XYMOX, {
					ach(14359),	-- Mythic: Artificer Xy'mox
					FatedItem(modItemId(183888,MYTHIC), FATED_MYTHIC),	-- Apogee Anima Bead (Fated)
				}),
				Boss(HUNGERING, {
					ach(14358),	-- Mythic: Hungering Destroyer
					FatedItem(modItemId(183891,MYTHIC), FATED_MYTHIC),	-- Venerated Anima Spherule (Fated)
				}),
				Boss(LADY, {
					ach(14361),	-- Mythic: Lady Inerva Darkvein
					FatedItem(modItemId(183889,MYTHIC), FATED_MYTHIC),	-- Thaumaturgic Anima Bead (Fated)
				}),
				Boss(COUNCIL, {
					ach(14362),	-- Mythic: The Council of Blood
					FatedItem(modItemId(183890,MYTHIC), FATED_MYTHIC),	-- Zenith Anima Spherule (Fated)
				}),
				Boss(SLUDGEFIST, {
					ach(14363),	-- Mythic: Sludgefist
				}),
				Boss(GENERALS, {
					ach(14364),	-- Mythic: Stone Legion Generals
					i(183895, {	-- Apogee Anima Bead
						["modID"] = MYTHIC_LAST2,
					}),
					FatedItem(modItemId(183895,MYTHIC_LAST2), FATED_MYTHIC_LAST2),	-- Apogee Anima Bead (Fated)
					i(183894, {	-- Thaumaturgic Anima Bead
						["modID"] = MYTHIC_LAST2,
					}),
					FatedItem(modItemId(183894,MYTHIC_LAST2), FATED_MYTHIC_LAST2),	-- Thaumaturgic Anima Bead (Fated)
				}),
				Boss(SIRE, {
					ach(14461, {["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 }}),	-- Cutting Edge: Sire Denathrius
					ach(14649, bubbleDownSelf({["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 } }, {	-- Hall of Fame: Sire Denathrius (Alliance)
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							title(440),	-- <Name>, Famed Slayer of Denathrius
						},
					})),
					ach(14650, bubbleDownSelf({["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 } }, {	-- Hall of Fame: Sire Denathrius (Horde)
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(440),	-- <Name>, Famed Slayer of Denathrius
						},
					})),
					ach(14365, {	-- Mythic: Sire Denathrius
						title(432),	-- Sinbreaker <Name>
					}),
					i(183896, {	-- Abominable Anima Spherule
						["modID"] = MYTHIC_LAST2,
					}),
					FatedItem(modItemId(183896,MYTHIC_LAST2), FATED_MYTHIC_LAST2),	-- Abominable Anima Spherule (Fated)
					i(183897, {	-- Mystic Anima Spherule
						["modID"] = MYTHIC_LAST2,
					}),
					FatedItem(modItemId(183897,MYTHIC_LAST2), FATED_MYTHIC_LAST2),	-- Mystic Anima Spherule (Fated)
					i(183898, {	-- Venerated Anima Spherule
						["modID"] = MYTHIC_LAST2,
					}),
					FatedItem(modItemId(183898,MYTHIC_LAST2), FATED_MYTHIC_LAST2),	-- Venerated Anima Spherule (Fated)
					i(183899, {	-- Zenith Anima Spherule
						["modID"] = MYTHIC_LAST2,
					}),
					FatedItem(modItemId(183899,MYTHIC_LAST2), FATED_MYTHIC_LAST2),	-- Zenith Anima Spherule (Fated)
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	inst(1190, {	-- Castle Nathria
		q(60680),	-- LFR 'The Leeching Vaults' Completed
		q(62949),	-- Sire Denathrius Slain (spellID 345481)
		q(62871),	-- Shriekwing
		q(62872),	-- Huntsman Altimor
		q(62873),	-- Sun King's Salvation
		q(62874),	-- Artificer Xy'mox
		q(62875),	-- Hungering Destroyer
		q(62876),	-- The Council of Blood
		q(62877),	-- Lady Inerva Darkvein
		q(62878),	-- Sludgefist
		q(62879),	-- Stone Legion Generals
		q(62880),	-- Sire Denthrius

		-- Fated (All difficulties)
		q(70451),	-- Shriekwing
		q(70452),	-- Shriekwing
		q(70453),	-- Huntsman Altimor
		q(70454),	-- Huntsman Altimor
		q(70455),	-- Sun King's Salvation
		q(70456),	-- Sun King's Salvation
		q(70457),	-- Artificer Xy'mox
		q(70458),	-- Artificer Xy'mox
		q(70459),	-- Hungering Destroyer
		q(70460),	-- Hungering Destroyer
		q(70461),	-- The Council of Blood
		q(70462),	-- The Council of Blood
		q(70463),	-- Lady Inerva Darkvein
		q(70464),	-- Lady Inerva Darkvein
		q(70465),	-- Sludgefist
		q(70466),	-- Sludgefist
		q(70467),	-- Stone Legion Generals
		q(70468),	-- Stone Legion Generals
		q(70469),	-- Sire Denthrius
		q(70470),	-- Sire Denthrius
	}),
})));
