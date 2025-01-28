---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
			q(45924),	-- Abyssal Monstrosity (Invasion WQ)
			q(45922),	-- Agmozuul (Invasion wq)
			q(44033),	-- Aw, Nuts!
			q(45070),	-- Barrels o' Fun
			q(42080),	-- Bastion of Bradensbrook
			q(41961),	-- Black Rook Holdings
			q(42023, {	-- Black Rook Rumble
				ach(11477),		-- Off the Top Rook
			}),
			q(41955),	-- Bloodline of Stone
			q(42075),	-- Botanical Backlash
			q(41484, {	-- Brimstone Destroyer
				["requireSkill"] = MINING,
				["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
			}),
			q(41486, {	-- Brimstone Destroyer
				["requireSkill"] = MINING,
				["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
			}),
			q(41487, {	-- Brimstone Destroyer
				["requireSkill"] = MINING,
				["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
			}),
			q(41336, {	-- Bristly Musken Hide
				["requireSkill"] = SKINNING,
			}),
			q(41273, {	-- Buoy Fishing
				["requireSkill"] = FISHING,
			}),
			q(41532, {	-- Bushy Dreamleaf
				["requireSkill"] = HERBALISM,
			}),
			q(42174, {	-- Champions of Elune
				["maps"] = { 697 },	-- Azshara (scenario version)
			}),
			q(43738),	-- Coastal Gloom
			q(43344),	-- DANGER: Aodh Witherpetal (rare wq)
			q(43346),	-- DANGER: Ealdis (rare wq)
			q(43345),	-- DANGER: Harbinger of Screams (rare wq)
			q(42870),	-- DANGER: Kathaw the Savage (rare wq)
			q(43152),	-- DANGER: Lytheron (rare wq)
			q(42927),	-- DANGER: Malisandra (rare wq)
			q(43333),	-- DANGER: Nylaathria the Forgotten (rare wq)
			q(43347),	-- DANGER: Rabxach (rare wq)
			q(41700),	-- DANGER: Shalas'aman (rare wq)
			q(43101),	-- DANGER: Witchdoctor Grgl-Brgl (rare wq)
			q(41995),	-- Dark Corruption
			petbattle(q(41860)),	-- Dealing with Satyrs
			q(44884),	-- Defense of Emerald Bay (Invasion WQ)
			q(41291, {	-- Dreamleaf Cluster
				["requireSkill"] = HERBALISM,
			}),
			q(41546, {	-- Dreamleaf Cluster
				["requireSkill"] = HERBALISM,
			}),
			q(41295, {	-- Dreamleaf-Covered Ancient
				["requireSkill"] = HERBALISM,
			}),
			q(46763),	-- Drol'maz (Invasion WQ)
			q(43756),	-- Enigmatic
			q(41439, {	-- Exquisite Leystone Deposits
				["requireSkill"] = MINING,
			}),
			q(41567, {	-- Felhide
				["requireSkill"] = SKINNING,
			}),
			q(41565, {	-- Felhide
				["requireSkill"] = SKINNING,
			}),
			q(41566, {	-- Felhide
				["requireSkill"] = SKINNING,
			}),
			q(41516, {	-- Felwort
				["requireSkill"] = HERBALISM,
			}),
			q(41517, {	-- Felwort
				["requireSkill"] = HERBALISM,
			}),
			q(41518, {	-- Felwort
				["requireSkill"] = HERBALISM,
			}),
			q(41294, {	-- Flourishing Dreamleaf
				["requireSkill"] = HERBALISM,
			}),
			q(41533, {	-- Fragrant Dreamleaf
				["requireSkill"] = HERBALISM,
			}),
			q(45928),	-- Gelthrak (Invasion wq)
			q(45923),	-- Gloth (Invasion wq)
			q(42087),	-- Green Horror
			q(43332),	-- Grell in a Handbasket
			q(42124),	-- Hags and Hexes
			q(41458, {	-- Hardened Leystone Outcropping
				["requireSkill"] = MINING,
			}),
			q(41612, {	-- Huge Mossgill Perch
				["requireSkill"] = FISHING,
				["g"] = { i(134568) },	-- Huge Mossgill Perch (QI!)
			}),
			q(41613, {	-- Huge Mossgill Perch
				["requireSkill"] = FISHING,
				["g"] = { i(134568) },	-- Huge Mossgill Perch (QI!)
			}),
			q(41270, {	-- Huge Mossgill Perch
				["requireSkill"] = FISHING,
				["g"] = { i(134568) },	-- Huge Mossgill Perch (QI!)
			}),
			q(45804),	-- Impvasion! (Invasion wq)
			q(42028),	-- Into the Nightmare
			q(41271, {	-- Into the Whirlpool
				["requireSkill"] = FISHING,
			}),
			q(41531, {	-- Iridescent Dreamleaf
				["requireSkill"] = HERBALISM,
			}),
			q(42150),	-- Kal'delar Naga Incursion
			q(42094),	-- Keepers of the Dream
			q(43753),	-- Ley Race
			q(41503, {	-- Leystone Basilisks
				["requireSkill"] = MINING,
			}),
			q(41504, {	-- Leystone Basilisks
				["requireSkill"] = MINING,
			}),
			q(41502, {	-- Leystone Basilisks
				["requireSkill"] = MINING,
			}),
			q(45047),	-- Like the Wind
			q(41530, {	-- Lively Dreamleaf
				["requireSkill"] = HERBALISM,
			}),
			q(41601, {	-- Lively Mossgill Perch
				["requireSkill"] = FISHING,
			}),
			q(41600, {	-- Lively Mossgill Perch
				["requireSkill"] = FISHING,
			}),
			q(41269, {	-- Lively Mosgill Perch
				["requireSkill"] = FISHING,
			}),
			q(44011),	-- Lost Wisp
			q(41965),	-- Lunarwing Liberation
			q(41440, {	-- Magnificent Leystone Deposits
				["requireSkill"] = MINING,
			}),
			petbattle(q(41861)),	-- Meet The Maw
			q(41334, {	-- Musky Bear Hide
				["requireSkill"] = SKINNING,
			}),
			q(45925),	-- Nez'val (Invasion wq)
			petbattle(q(41862)),	-- Only Pets Can Prevent Forest Fires
			q(42145),	-- Out of the Woodwork
			q(41956),	-- Petrified Acolytes
			q(41964),	-- Poisoned Waters
			q(41337, {	-- Pristine Stag Hide
				["requireSkill"] = SKINNING,
			}),
			q(43336),	-- Purge of the Nightmare
			q(41457, {	-- Radiant Leystone Outcropping
				["requireSkill"] = MINING,
			}),
			q(43324),	-- Rage of the Owlbeasts
			q(44730),	-- Ravaged Dreams (Invasion WQ)
			q(41496, {	-- Raw Leystone Seams
				["requireSkill"] = MINING,
			}),
			q(41333, {	-- Rugged Wolf Hide
				["requireSkill"] = SKINNING,
			}),
			q(43709),	-- Seal Clubbing
			q(42076),	-- Shadowfen Village
			q(44895),	-- Sharptalon Swarm!
			q(41553, {	-- Slab of Bacon
				["requireSkill"] = COOKING,
			}),
			q(41554, {	-- Slab of Bacon
				["requireSkill"] = COOKING,
			}),
			q(41260, {	-- Slab of Bacon
				["requireSkill"] = COOKING,
			}),
			petbattle(q(41855)),	-- Stand Up to Bullies
			q(41441, {	-- Superior Leystone Deposits
				["requireSkill"] = MINING,
			}),
			q(41293),	-- Supplies Needed: Dreamleaf
			q(41316),	-- Supplies Needed: Leystone
			q(41339),	-- Supplies Needed: Stonehide Leather
			q(41996),	-- Tangeld Nightmare
			q(41980),	-- Temple Defense
			q(45921),	-- Thal'xur (Invasion wq)
			q(46265),	-- The Fel and the Fawns (Invasion wq)
			q(43755),	-- The Magic of Flight
			q(46261),	-- The Taste of Corruption (Invasion WQ)
			q(44759),	-- The Vale of Dread (Invasion WQ)
			q(43303),	-- Time to Rumble!
			petbattle(q(40279, {	-- Training with Durian
				["coord"] = { 46.4, 36.9, VALSHARAH },
				-- #IF BEFORE 10.2.5
				-- Not sure when they fixed this but you can repeat the battle now :D
				["description"] = "This World Quest only allows ONE completed pet battle per character per day, contrary to every other Legion Pet Battle World Quest.",
				-- #ENDIF
			})),
			q(41992),	-- Twisted Ash
			q(46766),	-- Ulgthax (Invasion wq)
			q(41664, {	-- Vantus Rune Work Order: Dragons of Nightmare
				["requireSkill"] = INSCRIPTION,
				["g"] = {
					i(137770),	-- Vantus Rune Technique: Dragons of Nightmare [Rank 3] (RECIPE!)
				},
			}),
			q(42077),	-- Waking Nightmares
			q(44301),	-- WANTED: Bahagar
			q(44305),	-- WANTED: Bahagar (rare wq)
			q(44299),	-- WANTED: Darkshade
			q(44304),	-- WANTED: Darkshade (rare wq)
			q(44298),	-- WANTED: Dreadbog
			q(44303),	-- WANTED: Dreadbog (rare wq)
			q(43460),	-- WANTED: Kiranys Duskwhisper
			q(43629),	-- WANTED: Kiranys Duskwhisper (rare wq)
			q(43458),	-- WANTED: Perrexx
			q(43630),	-- WANTED: Perrexx (rare wq)
			q(44300),	-- WANTED: Seersei
			q(44302),	-- WANTED: Seersei (rare wq)
			q(43456),	-- WANTED: Skul'vrax
			q(43631),	-- WANTED: Skul'vrax (rare wq)
			q(43457),	-- WANTED: Theryssia
			q(43632),	-- WANTED: Theryssia (rare wq)
			q(43459),	-- WANTED: Thondrax
			q(43633),	-- WANTED: Thondrax (rare wq)
			q(43248, {	-- Warden Tower Assault: Darkfollow's Spire [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(43247, {	-- Warden Tower Assault: Darkfollow's Spire (H)
				["races"] = HORDE_ONLY,
			}),
			q(43183, {	-- Warden Tower Assault: Starstalker's Point [A]
				["races"] = ALLIANCE_ONLY,
			}),
			q(42070, {	-- Warden Tower Assault: Starstalker's Point (H)
				["races"] = HORDE_ONLY,
			}),
			q(43784),	-- What a Nightmare
			q(43759),	-- Where's the Reef?
			q(43758),	-- Wherever I May Gloam
			petbattle(q(42190)),	-- Wildlife Conservationist
			q(41652, {	-- Work Order: Deep Amber Loop
				["requireSkill"] = JEWELCRAFTING,
				["g"] = {
					i(137838),	-- Design: Deep Amber Loop [Rank 3] (RECIPE!)
				},
			}),
			q(41292, {	-- Work Order: Dreamleaf
				["requireSkill"] = HERBALISM,
			}),
			q(41312, {	-- Work Order: Leystone
				["requireSkill"] = MINING,
			}),
			q(41634, {	-- Work Order: Leystone Armguards
				["requireSkill"] = BLACKSMITHING,
				["provider"] = { "n", 106901 },	-- Sylvia Hartshorn
				["lvl"] = 110,
				["isWorldQuest"] = true,
				["groups"] = {
					i(123936),	-- Plans: Leystone Armguards [Rank 3] (RECIPE!)
				},
			}),
			q(41272, {	-- Work Order: Mossgill Perch
				["requireSkill"] = FISHING,
			}),
			q(41676, {	-- Work Order: Pump-Action Bandage Gun
				["requireSkill"] = ENGINEERING,
				["g"] = {
					i(137721),	-- Schematic: Pump-Action Bandage Gun [Rank 3] (RECIPE!)
				},
			}),
			q(41646, {	-- Work Order: Silkweave Gloves
				["requireSkill"] = TAILORING,
				["g"] = {
					i(138012),	-- Pattern: Silkweave Gloves [Rank 3] (RECIPE!)
				},
			}),
			q(41338, {	-- Work Order: Stonehide Leather
				["requireSkill"] = SKINNING,
			}),
			q(41658, {	-- Work Order: Sylvan Elixirs
				["requireSkill"] = ALCHEMY,
				["g"] = {
					i(127921),	-- Recipe: Sylvan Elixir [Rank 2] (RECIPE!)
				},
			}),
			q(41640, {	-- Work Order: Warhide Mask
				["requireSkill"] = LEATHERWORKING,
				["g"] = {
					i(137878),	-- Pattern: Warhide Mask [Rank 3] (RECIPE!)
				},
			}),
			q(41670, {	-- Work Order: Word of Agility
				["requireSkill"] = ENCHANTING,
				["g"] = {
					i(128605),	-- Formula: Enchant Cloak - Word of Agility [Rank 3] (RECIPE!)
				},
			}),
			q(45927),	-- Zagmothar (Invasion WQ)
			q(45926),	-- Zar'teth (Invasion WQ)
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
		q(45485),	-- Val'sharah - WQ rare: Aodh Witherpetal
		q(45483),	-- Val'sharah - WQ rare: Ealdis
		q(45484),	-- Val'sharah - WQ rare: Harbinger of Screams
		q(45501),	-- Val'sharah - WQ rare: Malisandra
		q(45488),	-- Val'sharah - WQ rare: Nylaathria the Forgotten
		q(45487),	-- Val'sharah - WQ rare: Rabxach
		q(45493),	-- Val'sharah - WQ rare: Witchdoctor Grgl-Brgl
	}),
});