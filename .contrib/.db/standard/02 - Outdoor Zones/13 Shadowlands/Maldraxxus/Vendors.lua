---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, {
	m(MALDRAXXUS, {
		n(VENDORS, {
			n(166640, {	-- Au'larrynar <Enhancers>
				["coord"] = { 53.6, 47.9, MALDRAXXUS },
				["groups"] = {
					i(180706),	-- Caustic Muck
					i(180657),	-- Crystallized Ichor
					i(179613),	-- Extra Sticky Spidey Webs
					i(181623),	-- Flourescent Slime Sample
					i(177957),	-- Necessary Enhancers
					i(180771),	-- Potion of Unusual Strength
					i(180659),	-- Soul Siphoning Shard
					i(180969, { ["timeline"] = { ADDED_9_0_2, REMOVED_9_0_5 } }),	-- Spiral Deathroc Horn
					i(180694),	-- Tome of Power
					i(180658),	-- Witherlight Crystal
					i(179939),	-- Wriggling Spider Sac
				},
			}),
			n(274682, {	-- Collector Xorik <Decor Specialist>
				["coord"] = { 50.8, 53.4, MALDRAXXUS },
				["timeline"] = { ADDED_12_1_5 },
				["groups"] = {
					i(284496, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Highback Bonewood Chair (DECOR!)
					i(284502, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Maldraxxi Horned Beast Skull (DECOR!)
					i(284500, { ["cost"] = { { "c", ANIMA, 500 } } }),	-- Maldraxxi Shielding Lattice (DECOR!)
					i(284492, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Open Bonewood Barrel (DECOR!)
					i(284494, { ["cost"] = { { "c", ANIMA, 200 } } }),	-- Ossified Maldraxxi Spike (DECOR!)
				},
			}),
			n(168429, {	-- Melody Madcap <Fungus and Drinks>
				["coord"] = { 40.2, 41.2, MALDRAXXUS },
				["groups"] = { i(184203) },	-- Fungal Hair Tonic
			}),
			n(173003, {	-- Nalcorn Talsen <Undying Army Quartermaster>
				["coord"] = { 50.6, 53.4, MALDRAXXUS },
				["groups"] = bubbleDownClassicRep(FACTION_THE_UNDYING_ARMY, {
					{		-- Neutral
						i(183112, { ["cost"] = { { "i", POLISHED_PET_CHARM, 250 } } }),	-- Animated Radius
						i(190644, {	-- Vessel of Profound Possibilities (CI!)
							["sourceAchievement"] = 14834,	-- Bound with Purpose
							["timeline"] = { ADDED_9_2_0 },
							["cost"] = { { "c", 2009, 10000 } },	-- 10,000 Cosmic Flux
							["sym"] = SYM.SHADOWLANDS.ALL_CONDUITS,
						}),
					}, {	-- Friendly
						i(284498, { ["cost"] = { { "c", ANIMA, 300 } } }),	-- Maldraxxi Anima Crystal (DECOR!)
						i(284506, { ["cost"] = { { "c", ANIMA, 300 } } }),	-- Suspended Lich Scroll (DECOR!)
					}, {	-- Honored
						i(184741),	-- Apprentice Necromancer's Gloves
						i(184740),	-- Fortified Jawcrackers
						i(217596, {	-- Glyph of Abomination Limb
							["classes"] = { DEATHKNIGHT },
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(217592, {	-- Glyph of Adaptive Swarm
							["classes"] = { DRUID },
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(217593, {	-- Glyph of Death Chakram
							["classes"] = { HUNTER },
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(217599, {	-- Glyph of Primordial Wave
							["classes"] = { SHAMAN },
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(184739),	-- Pallid Stitched Gloves
						i(183101),	-- Pattern: Shadowlace Cloak (RECIPE!)
						i(183095),	-- Plans: Shadowsteel Pauldrons (RECIPE!)
						i(184742),	-- Rattling Bonefists
						i(183858),	-- Schematic: Wormhole Generator: Shadowlands (RECIPE!)
					}, {	-- Revered
						i(184744),	-- Gnarled Boneloop
						i(183244),	-- Memory of the Rattle of the Maw
						i(183104),	-- Technique: Contract: The Undying Army (RECIPE!)
						i(181272, { ["cost"] = { { "i", POLISHED_PET_CHARM, 250 } } }),	-- Toenail (PET!)
					}, {	-- Exalted
						i(184738),	-- Chainmail of the March Warden
						i(184737),	-- Chestplate of the March Warden
						i(180456),	-- Colors of the Undying Army
						i(183189),	-- Illusion: Undying Spirit (ILLUSION!)
						i(182082),	-- Lurid Bloodtusk (MOUNT!)
						i(184736),	-- Robe of the March Warden
						i(184745),	-- Tunic of the March Warden
						n(NECROLORD, sharedData({["customCollect"] = { "SL_COV_NEC" }},{
							i(181807),	-- Barbarous Osteowings
							i(181808),	-- Death Fetish
						})),
					},
				}),
			}),
			n(169964, {	-- One-Eyed Joby <Unusual Wares>
				["coord"] = { 53.2, 41.2, MALDRAXXUS },
				["groups"] = { i(181798) },	-- Stuffed Construct
			}),
			n(164588, {	-- Shinbone Slim <Food and Attire>
				["coord"] = { 47.0, 48.8, MALDRAXXUS },
				["groups"] = { i(184036) },	-- Dundae's Hat
			}),
		}),
	}),
}));
