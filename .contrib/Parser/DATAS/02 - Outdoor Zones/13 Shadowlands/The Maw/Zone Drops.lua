---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(THE_MAW, {
		n(ZONE_DROPS, {
			i(180802),	-- Chaotic Runes (QI!)
			i(180801),	-- Coldheart Flight Routes (QI!)
			i(175769),	-- Constellan Writ
			i(180808),	-- Discarded Torments (QI!)
			i(182771, {	-- Flickering Eviscerator
				["crs"] = { 170694 },	-- Spectral Assassin
			}),
			i(186564, {	-- Golden Eye (PET!)
				["timeline"] = { ADDED_9_1_0 },
				["crs"] = { 177132 },	-- Helsworn Soulseeker
			}),
			i(186559, {	-- Grappling Gauntlet (PET!)
				["description"] = "Available in The Maw, Korthia, Zereth Mortis.",
				["timeline"] = { ADDED_9_1_0 },
				["maps"] = {
					KORTHIA,
					ZERETH_MORTIS
				},
				["crs"] = {	-- 142 NPCs listed on Wowhead... just listing a few of the more common
					182284,	-- Dreadsworn Guard
					173138,	-- Mawsworn Outrider
					177292,	-- Mawsworn Mutilator
					184471,	-- Mawsworn Myrmidon
					184545,	-- Mawsworn Plunderer
					179305,	-- Mawsworn Steelshaper
					177293,	-- Mawsworn Torturer
					157824,	-- Protector of Flame
				},
			}),
			i(187275, {	-- Helsworn Battle Plans (QI!)
				["timeline"] = { ADDED_9_1_0 },
				["crs"] = {
					177413,	-- Avowed Soulbreaker
					177418,	-- Chained Bonesculpter
					177135,	-- Helsworn Beastlord
					177301,	-- Helsworn Dominator
					177131,	-- Helsworn Inquisitor
					177257,	-- Helsworn Inquisitor
					177168,	-- Helsworn Soulbreaker
					177271,	-- Ironkeeper Salryx
					177134,	-- Maldraxxi Defector
					177133,	-- Mawsworn Deathsinger
					176262,	-- Mawsworn Keeper
					176259,	-- Mawsworn Sky Hunter
					177129,	-- Weaponmaster Hyrev
				},
			}),
			i(183058),	-- Indecipherable Map (QI!)
			i(187253, {	-- Maw Guard's Spiked Spaulders
				["timeline"] = { ADDED_9_1_0 },
				["crs"] = { 167322 },	-- Mawsworn Shackler
			}),
			i(180799),	-- Mawsworn Patrol Map (QI!)
			i(183059, {	-- Mawsworn Shackles
				["crs"] = { 167322, 176198 },	-- Mawsworn Shackler
			}),
			i(180803),	-- Puzzling Cryptogram (QI!)
			i(187252, {	-- Ritualist's Spiked Mantle
				["timeline"] = { ADDED_9_1_0 },
				["crs"] = { 168977 },	-- Mawsworn Thaumaturge
			}),
			i(186727, {	-- Seal Breaker Key
				["timeline"] = { ADDED_9_1_0 },
				["crs"] = { 177134 },	-- Maldraxxi Defector
			}),
			i(180806),	-- Shadebound Testimonial (QI!)
			i(178044),	-- Shifting Cryptogram (QI!)
			i(180805),	-- Soulforge Blueprints (QI!)
			i(180807),	-- Venthyr Concordat (QI!)
			i(180804),	-- Worn Obleron Etching (QI!)
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(SHADOWLANDS, {
		m(THE_MAW, {
			n(ZONE_DROPS, {
				q(62679),	-- looting 'Seal Breaker Key' (itemID 186727)
			}),
		}),
	}),
})));
