---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			n(WORLD_QUESTS, sharedData({
				["isWorldQuest"] = true,
			},{
				q(43964),	-- A Jarl's Feast
				petbattle(q(42067)),	-- All Howl, No Bite
				petbattle(q(41948)),	-- All Pets Go to Heaven
				q(45439),	-- An Invasion of... Murlocs? (Invasion wq)
				q(43951),	-- An Overdue Debt
				q(41443, {	-- Ancient Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(46006),	-- Arkuthaz (invasion WQ)
				q(41451),	-- Assault on Hrydshal
				q(46008),	-- Balnazoth (Invasion WQ)
				q(42025, {	-- Bareback Brawl
					ach(11476),		-- Saddle Sore
				}),
				q(45072),	-- Barrels o' Fun
				petbattle(q(41935)),	-- Beasts of Burden
				q(46010),	-- Bonecrusher Korgolath (Invasion wq)
				q(41534, {	-- Brambly Fjarnskaggl
					["requireSkill"] = HERBALISM,
					["groups"] = {
						i(140959),	-- Brambly Fjarnskaggl (QI!)
					},
				}),
				q(41490, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41489, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41488, {	-- Brimstone Destroyer
					["requireSkill"] = MINING,
					["sym"] = {{"select","headerID",191970}},	-- Infernal Brimstone [Rank 3]
				}),
				q(41938),	-- Brothers of Skovald
				q(46011),	-- Colossal Infernal (Invasion wq)
				q(46216, {	-- Congealed Corruption (Invasion WQ)
					["groups"] = {
						i(144402),	-- Fel Reaver Core Fragment (QI!)
					},
				}),
				q(41950),	-- Cry More Thunder!
				q(46179),	-- Crushing the Legion (Invasion WQ)
				q(43745),	-- Culling the Storm
				q(42820),	-- DANGER: Aegir Wavecrusher
				q(42861),	-- DANGER: Boulderfall, the Eroded
				q(42864),	-- DANGER: Captain Dargun
				q(42785),	-- DANGER: Den Mother Ylva
				q(42806),	-- DANGER: Fjorlag, the Grave's Chill (rare wq)
				q(42798),	-- DANGER: Huntress Estrid (rare wq)
				q(42964),	-- DANGER: Lagertha
				q(42963),	-- DANGER: Rulf Bonesnapper (rare wq)
				q(42991),	-- DANGER: Runeseer Sigvid (rare wq)
				q(42953),	-- DANGER: Soulbinder Halldora (rare wq)
				q(41444, {	-- Dark Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41459, {	-- Dense Leystone Outcropping
					["requireSkill"] = MINING,
				}),
				q(43710),	-- Dark Runes
				q(44893),	-- Direbeak Swarm!
				q(41794, {	-- Drakestalker
					i(136369),	-- Stormwing Scale (QI!)
				}),
				q(42173),	-- Electrosnack
				q(43772),	-- Enigmatic
				q(45786),	-- Feast of the Hounds (Invasion WQ)
				q(46012),	-- Fel Commander Urgoz (Invasion wq)
				q(41570, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41569, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41568, {	-- Felhide
					["requireSkill"] = SKINNING,
				}),
				q(41520, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41521, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(41519, {	-- Felwort
					["requireSkill"] = HERBALISM,
				}),
				q(46013),	-- Firecaller Rok'duun (Invasion wq)
				q(41296, {	-- Fjarnskaggl Cluster
					["requireSkill"] = HERBALISM,
				}),
				q(41547, {	-- Fjarnskaggl Cluster
					["requireSkill"] = HERBALISM,
				}),
				q(41299, {	-- Flourishing Fjarnskaggl
					["requireSkill"] = HERBALISM,
				}),
				q(46014),	-- Gelthrog (Invasion WQ)
				q(41427),	-- Get Vrekt
				q(42004),	-- Ghostship
				q(44923),	-- Helarjar Landing: Vrekt
				q(41614, {	-- Huge Stormrays
					["requireSkill"] = FISHING,
				}),
				q(41275, {	-- Huge Stormrays
					["requireSkill"] = FISHING,
				}),
				q(41615, {	-- Huge Stormrays
					["requireSkill"] = FISHING,
				}),
				q(46015),	-- Idra'zuul (Invasion wq)
				petbattle(q(41944)),	-- Jarrun's Ladder
				q(43769),	-- Ley Race
				q(41505, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(41506, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(41507, {	-- Leystone Basilisks
					["requireSkill"] = MINING,
				}),
				q(45049),	-- Like the Wind
				q(41602, {	-- Lively Stormrays
					["requireSkill"] = FISHING,
				}),
				q(41274, {	-- Lively Stormrays
					["requireSkill"] = FISHING,
				}),
				q(41603, {	-- Lively Stormrays
					["requireSkill"] = FISHING,
				}),
				q(46016),	-- Magdrezoth (Invasion wq)
				petbattle(q(40278)),	-- My Beasts's Bidding
				q(44943),	-- Now That's Just Clawful!
				petbattle(q(41958)),	-- Oh, Ominitron
				q(43751, {	-- Oh, Ship! (A)
					["races"] = ALLIANCE_ONLY,
				}),
				q(43752, {	-- Oh, Ship! (H)
					["races"] = HORDE_ONLY,
				}),
				q(41340, {	-- Perfect Storm Drake Scale
					["requireSkill"] = SKINNING,
				}),
				q(43786),	-- Pesty Nests
				q(41535, {	-- Prickly Fjarnskaggl
					["requireSkill"] = HERBALISM,
				}),
				q(41460, {	-- Primal Leystone Outcropping
					["requireSkill"] = MINING,
				}),
				q(41536, {	-- Pungent Fjarnskaggl
					["requireSkill"] = HERBALISM,
				}),
				q(41925),	-- Razing Hel
				q(42177),	-- Reclaiming Morheim
				q(41926),	-- Returning Champion
				q(42176),	-- Rise of Skovald
				q(41276, {	-- Rocket Boot Fishing
					["requireSkill"] = FISHING,
				}),
				q(41927),	-- Ruining the Runewood
				q(43722),	-- Sacred Bones
				q(46017),	-- Shel'drozul (Invasion wq)
				q(42178),	-- Shock Absorber
				q(41300, {	-- Singed Fjarnskaggl
					["requireSkill"] = HERBALISM,
				}),
				q(41555, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41556, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41261, {	-- Slab of Bacon
					["requireSkill"] = COOKING,
					["groups"] = { i(135511) },	-- Thick Slab of Bacon (QI!)
				}),
				q(41278, {	-- Slippery Stormrays
					["requireSkill"] = FISHING,
					["groups"] = {
						o(247875, {	-- Boom Bait
							i(135496),	-- Boom Bait (QI)
						}),
					},
				}),
				q(41343, {	-- Solid Crabshell Fragment
					["requireSkill"] = SKINNING,
				}),
				q(45390),	-- Souls of the Vrykul (Invasion WQ)
				q(43827, {	-- Stormwing the Portals
					i(129161),	-- Stormforged Horn (QI!)
				}),
				q(41445, {	-- Stormy Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41442, {	-- Striking Leystone Deposits
					["requireSkill"] = MINING,
				}),
				q(41298),	-- Supplies Needed: Fjarnskaggl
				q(41317),	-- Supplies Needed: Leystone
				q(41345),	-- Supplies Needed: Stormscales
				q(41984),	-- The Creeping Mists
				q(41949),	-- The Drekirjar Return
				q(43721),	-- The Helarjar Have Surfaced
				q(42013),	-- The Helmouth
				q(43771),	-- The Magic of Flight
				q(46264),	-- Their Eyes Are Upon Us (Invasion wq)
				q(46021),	-- Thel'draz (Invasion wq)
				q(41342, {	-- Thick Bear Hide
					["requireSkill"] = SKINNING,
				}),
				q(42183, {	-- To Battle! (A)
					["races"] = ALLIANCE_ONLY,
				}),
				q(42182, {	-- To Battle! (H)
					["races"] = HORDE_ONLY,
				}),
				q(41930),	-- Valor Calls
				q(41666, {	-- Vantus Rune Work Order: Nythendra
					["requireSkill"] = INSCRIPTION,
					["groups"] = {
						i(137768),	-- Vantus Rune Technique: Nythendra [Rank 3] (RECIPE!)
					},
				}),
				q(43963, {	-- Vampirates!
					i(140294),	-- Cursed Clothing (QI!)
					i(140277),	-- Empowered Runestone (QI!)
					i(140285),	-- Family Blade (QI!)
				}),
				q(43454),	-- WANTED: Egyl the Enduring
				q(43620),	-- WANTED: Egyl the Enduring (rare wq)
				q(43434),	-- WANTED: Fathnyr
				q(43621),	-- WANTED: Fathnyr (rare wq)
				q(43436),	-- WANTED: Glimar Ironfist
				q(43622),	-- WANTED: Glimar Ironfist (rare wq)
				q(43453),	-- WANTED: Hannval the Butcher
				q(43623),	-- WANTED: Hannval the Butcher (rare wq)
				q(43452),	-- WANTED: Isel the Hammer
				q(43624),	-- WANTED: Isel the Hammer (rare wq)
				q(43438),	-- WANTED: Nameless King
				q(43625),	-- WANTED: Nameless King (rare wq)
				q(43437),	-- WANTED: Thane Irglov
				q(43626),	-- WANTED: Thane Irglov (rare wq)
				q(43450),	-- WANTED: Tiptog the Lost
				q(43627),	-- WANTED: Tiptog the Lost (rare wq)
				q(43451),	-- WANTED: Urgev the Flayer
				q(43628),	-- WANTED: Urgev the Flayer (rare wq)
				q(43599, {	-- Warden Tower Assault: Blackhawk's Bulwark [A]
					["races"] = ALLIANCE_ONLY,
				}),
				q(43598, {	-- Warden Tower Assault: Blackhawk's Bulwark (H)
					["races"] = HORDE_ONLY,
				}),
				q(43601, {	-- Warden Tower Assault: Whisperwind's Citadel [A]
					["races"] = ALLIANCE_ONLY,
				}),
				q(43600, {	-- Warden Tower Assault: Whisperwind's Citadel (H)
					["races"] = HORDE_ONLY,
				}),
				q(41497, {	-- Wild Leystone Seams
					["isWorldQuest"] = true,
				}),
				q(41678, {	-- Work Order: Gunpack
					["requireSkill"] = ENGINEERING,
					["groups"] = {
						i(137722),	-- Schematic: Gunpack [Rank 3] (RECIPE!)
					},
				}),
				q(41636, {	-- Work Order: Leystone Breastplate
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						i(123939),	-- Plans: Leystone Breastplate [Rank 3] (RECIPE!)
					},
				}),
				q(41654, {	-- Work Order: Queen's Opal Loop
					["requireSkill"] = JEWELCRAFTING,
					["groups"] = {
						i(137865),	-- Design: Queen's Opal Loop [Rank 3] (RECIPE!)
					},
				}),
				q(41297, {	-- Work Order: Fjarnskaggl
					["requireSkill"] = HERBALISM,
				}),
				q(41313, {	-- Work Order: Leystone
					["requireSkill"] = MINING,
				}),
				q(41648, {	-- Work Order: Silkweave Bracers
					["requireSkill"] = TAILORING,
					["groups"] = {
						i(137961),	-- Pattern: Silkweave Bracers [Rank 3] (RECIPE!)
					},
				}),
				q(41660, {	-- Work Order: Skaggldrynk
					["requireSkill"] = ALCHEMY,
					["groups"] = {
						i(127923),	-- Recipe: Skaggldrynk [Rank 2] (RECIPE!)
					},
				}),
				q(41277, {	-- Work Order: Stormrays
					["requireSkill"] = FISHING,
				}),
				q(41344, {	-- Work Order: Stormscales
					["requireSkill"] = SKINNING,
				}),
				q(41642, {	-- Work Order: Warhide Footpads
					["requireSkill"] = LEATHERWORKING,
					["groups"] = {
						i(137880),	-- Pattern: Warhide Footpads [Rank 3] (RECIPE!)
					},
				}),
				q(41672, {	-- Work Order: Word of Haste
					["requireSkill"] = ENCHANTING,
					["groups"] = {
						i(128597),	-- Formula: Enchant Ring - Word of Haste [Rank 3] (RECIPE!)
					},
				}),
				q(41936),	-- You Have Been Challenged
			})),
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			n(WORLD_QUESTS, {
				q(44880),	-- Stormheim - WQ rare: Direbeak Matriarch
				q(45507),	-- Stormheim - WQ rare: Fjorlag
				q(42721),	-- Stormheim - WQ rare: Urgev the Flaye
			}),
		}),
	}),
})));
