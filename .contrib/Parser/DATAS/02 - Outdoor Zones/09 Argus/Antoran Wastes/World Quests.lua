---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(ANTORAN_WASTES, {
		n(WORLD_QUESTS, sharedData({
			["isWorldQuest"] = true,
		},{
			q(48832, {	-- Admiral Rel'var
				["sym"] = {{"select","npcID",127090}},	-- Select the WQ NPC
			}),
			q(48837, {	-- All-Seer Xanarian
				["sym"] = {{"select","npcID",127096}},	-- Select the WQ NPC
			}),
			q(48931),	-- Behemoths Awakened
			q(49054),	-- Bloat
			q(47561, {	-- Blistermaw
				["sym"] = {{"select","npcID",122958}},	-- Select the WQ NPC
			}),
			q(48867, {	-- Chief Alchemist Munculus
				["sym"] = {{"select","npcID",127376}},	-- Select the WQ NPC
			}),
			q(48637, {	-- Cleansing Fire
				["g"] = {
					i(152648),	-- Brightsoul Scepter (QI!)
				},
			}),
			q(48831, {	-- Commander Texlaz
				["sym"] = {{"select","npcID",127084}},	-- Select the WQ NPC
			}),
			q(48777),	-- Den of Fiends
			q(49055),	-- Earseeker
			q(47566, {	-- Gar'zoth
				["sym"] = {{"select","npcID",122999}},	-- Select the WQ NPC
			}),
			q(48780),	-- Gladius
			q(48835, {	-- Houndmaster Kerrax
				["sym"] = {{"select","npcID",127288}},	-- Select the WQ NPC
			}),
			q(48830, {	-- Inquisitor Vethroz
				["sym"] = {{"select","npcID",126946}},	-- Select the WQ NPC
			}),
			q(48828, {	-- Lieutenant Xakaar
				["sym"] = {{"select","npcID",126254}},	-- Select the WQ NPC
			}),
			q(48983),	-- Mining Regulation
			petbattle(q(49057)),	-- Minixis
			q(47552, {	-- Mistress Il'thendra
				["sym"] = {{"select","npcID",122947}},	-- Select the WQ NPC
			}),
			q(48875),	-- Mix It Up
			q(48783),	-- Nobody Expects Them
			q(49058),	-- One-of-Many
			q(49056),	-- Pilfer
			q(48467, {	-- Puscilla
				["sym"] = {{"select","npcID",126040}},	-- Select the WQ NPC
			}),
			q(48833),	-- Ritual Completion
			q(48958, {	-- Ritual Interruption
				["g"] = {
					i(152465),	-- Banishment Stone Shard (QI!)
				},
			}),
			q(48526),	-- Scuttled
			q(48662),	-- Short Fuses
			q(48514),	-- Slumbering Behemoths
			q(48691, {	-- Soul Chain
				["g"] = {
					i(152971),	-- Talisman of the Prophet (QI!)
				},
			}),
			q(48358),	-- Supplies Needed: Empyrium
			q(48360),	-- Supplies Needed: Fiendish Leather
			q(48374),	-- Supplies Needed: Lightweave Cloth
			q(48640, {	-- The Immortal Squadron
				["g"] = {
					i(152657),	-- Target Designator (QI!)
				},
			}),
			q(48952),	-- Throw Them a Bone
			q(48827, {	-- Varga
				["sym"] = {{"select","npcID",126208}},	-- Select the WQ NPC
			}),
			q(48466, {	-- Ven'orn
				["sym"] = {{"select","npcID",126115}},	-- Select the WQ NPC
			}),
			q(48866, {	-- Void Warden Valsuran
				["sym"] = {{"select","npcID",127300}},	-- Select the WQ NPC
			}),
			q(48465, {	-- Vrax'thul
				["sym"] = {{"select","npcID",126199}},	-- Select the WQ NPC
			}),
			q(49053),	-- Watcher
			q(48836, {	-- Watcher Aival
				["sym"] = {{"select","npcID",127291}},	-- Select the WQ NPC
			}),
			q(48624),	-- Who Let The Dogs Out?
			q(48349),	-- Work Order: Empyrium
			q(48359),	-- Work Order: Fiendish Leather
			q(48363),	-- Work Order: Florid Malachite
			q(48364),	-- Work Order: Hesselian
			q(48373),	-- Work Order: Lightweave Cloth
			q(48834, {	-- Worldsplitter Skuul
				["sym"] = {{"select","npcID",127118}},	-- Select the WQ NPC
			}),
			q(48829, {	-- Wrath-Lord Yarez
				["sym"] = {{"select","npcID",126338}},	-- Select the WQ NPC
			}),
		})),
	}),
})));