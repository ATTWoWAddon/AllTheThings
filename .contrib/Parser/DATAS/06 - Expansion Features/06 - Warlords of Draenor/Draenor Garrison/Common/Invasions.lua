-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

GARRISON_INVASIONS = createHeader({
	readable = "Garrison Invasions",
	icon = 236351,
	text = {
		en = [[~GARRISON_LANDING_INVASION]],
	},
	description = {
		en = "To trigger an invasion, you need to do an assault quest or purchase a scouting missive from the garrison quartermaster. \n\nBotani Invasion -- Assault on Lost Veil Anzu, Assault on the Everbloom Wilds \n\nGoren Invasion -- Assault on Magnarok, Assault on the Broken Precipice \n\nIron Horde Invasion -- Assault on Mok'gol Watchpost, Assault on the Iron Siegeworks, Assault on the Pit, Battle in Ashran \n\nOgre Invasion -- Assault on Stonefury Cliffs, Assault on the Gorian Proving Grounds, Challenge at the Ring of Blood \n\nShadow Council Invasion -- Assault on Shattrath Harbor, Assault on the Heart of Shattrath \n\nShadowmoon Invasion -- Assault on Darktide Roost, Assault on Pillars of Fate, Assault on Skettis, Assault on Socrethar's Rise \n\nYou can earn Bronze, Silver, Gold, and Platinum rewards once per week per toon.",
	},
});

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(GARRISON_INVASIONS, {
				n(ACHIEVEMENTS, {
					ach(9208),	-- Botani Invasion
					ach(9207),	-- Goren Invasion
					ach(9162),	-- Bronze Defender
					ach(9164),	-- Silver Defender
					ach(9165),	-- Golden Defender
					achpart(9826, 9827),	-- Platinum Defender / Impervious Defender
					ach(9209, {		-- Master Defender
						crit(27294),		-- Botani
						crit(27295),		-- Goren
						crit(27296),		-- Iron Horde
						crit(27297),		-- Ogres
						crit(27298),		-- Shadow Council
						crit(27299),		-- Shadowmoon
					}),
					ach(9827, {		-- Impervious Defender
						crit(27586),		-- Botani
						crit(27587),		-- Goren
						crit(27588),		-- Iron Horde
						crit(27589),		-- Ogres
						crit(27590),		-- Shadow Council
						crit(27591),		-- Shadowmoon
					}),
					ach(9152),		-- It's an Invasion! (1)
					ach(9167),		-- Invasion Specialist (10)
					ach(9543),	-- Invasion? What Invasion? (50)
					ach(9244),		-- Invasions Are Better with Friends
					ach(9205),		-- Iron Horde Invasion
					ach(9858, {		-- Master and Commander
						crit(27704),		-- Teluur
						crit(27705),		-- Gaur
						crit(27706),		-- Commander Dro'gan
						crit(27707),		-- Mage Lord Gogg'nathog
						crit(27708),		-- Lady Fleshsear
						crit(27709),		-- Annihilon
					}),
					ach(9204),		-- Ogre Invasion
					ach(9181, {		-- Save Those Buildings!
						crit(25290),		-- Goren
						crit(25292),		-- Iron Horde
						crit(25295),		-- Botani
						crit(25293),		-- Shadow Council
						crit(25291),		-- Shadowmoon
						crit(25294),		-- Ogres
					}),
					ach(9203),		-- Shadow Council Invasion
					ach(9206),		-- Shadowmoon Clan Invasion
				}),
				n(BOSSES, {
					n(90802, {	-- Annihilon
						["description"] = "Void Prison summons this boss. It has a chance to be obtained during a Shadowmoon Invasion.",
						["cost"] = { { "i", 122475, 1 } },	-- 1x Void Prison
						["sym"] = {
							{ "select", "itemID", 122163, },	-- Select 'Routed Invader's Crate of Spoils'  (Platinum Rewards)
							{ "pop" },							-- pop the Item container
						},
					}),
					n(90841, {	-- Commander Dro'gan
						["description"] = "Bloodied Iron Horde Banner summons this boss. It has a chance to be obtained during an Iron Horde Invasion.",
						["cost"] = { { "i", 122472, 1 } },	-- 1x Bloodied Iron Horde Banner
						["sym"] = {
							{ "select", "itemID", 122163, },	-- Select 'Routed Invader's Crate of Spoils'  (Platinum Rewards)
							{ "pop" },							-- pop the Item container
						},
					}),
					n(90943, {	-- Gaur
						["description"] = "Runed Greatstone summons this boss. It has a chance to be obtained during a Goren Invasion.",
						["cost"] = { { "i", 122468, 1 } },	-- 1x Runed Greatstone
						["sym"] = {
							{ "select", "itemID", 122163, },	-- Select 'Routed Invader's Crate of Spoils'  (Platinum Rewards)
							{ "pop" },							-- pop the Item container
						},
					}),
					n(91012, {	-- Lady Fleshear
						["description"] = "Legion Beacon summons this boss. It has a chance to be obtained during a Shadow Council Invasion.",
						["cost"] = { { "i", 122473, 1 } },	-- 1x Legion Beacon
						["sym"] = {
							{ "select", "itemID", 122163, },	-- Select 'Routed Invader's Crate of Spoils'  (Platinum Rewards)
							{ "pop" },							-- pop the Item container
						},
					}),
					n(90995, {	-- Mage Lord Gogg'nathog
						["description"] = "Arcane Highmaul Relic summons this boss. It has a chance to be obtained during an Ogre Invasion.",
						["cost"] = { { "i", 122474, 1 } },	-- 1x Arcane Highmaul Relic
						["sym"] = {
							{ "select", "itemID", 122163, },	-- Select 'Routed Invader's Crate of Spoils'  (Platinum Rewards)
							{ "pop" },							-- pop the Item container
						},
					}),
					n(90946, {	-- Teluur
						["description"] = "Heart of Oak summons this boss. It has a chance to be obtained during a Botani Invasion.",
						["cost"] = { { "i", 122466, 1 } },	-- 1x Heart of Oak
						["sym"] = {
							{ "select", "itemID", 122163, },	-- Select 'Routed Invader's Crate of Spoils'  (Platinum Rewards)
							{ "pop" },							-- pop the Item container
						},
					}),
				}),
				n(QUESTS, {
					q(36171, {	-- Botani Invasion!
						["qg"] = 78564,	-- Sergeant Crowler
						["coord"] = { 38.2, 32.0, LUNARFALL },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36653, {	-- Botani Invasion!
						["qg"] = 79774,	-- Sergeant Grimjaw
						["coord"] = { 44.1, 47.3, FROSTWALL },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36376, {	-- Goren Invasion!
						["qg"] = 78564,	-- Sergeant Crowler
						["coord"] = { 38.2, 32.0, LUNARFALL },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(35142, {	-- Goren Invasion!
						["qg"] = 79774,	-- Sergeant Grimjaw
						["coord"] = { 44.1, 47.3, FROSTWALL },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36655, {	-- Iron Horde Invasion!
						["qg"] = 78564,	-- Sergeant Crowler
						["coord"] = { 38.2, 32.0, LUNARFALL },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(35935, {	-- Iron Horde Invasion!
						["qg"] = 79774,	-- Sergeant Grimjaw
						["coord"] = { 44.1, 47.3, FROSTWALL },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36650, {	-- Ogre Invasion!
						["qg"] = 78564,	-- Sergeant Crowler
						["coord"] = { 38.2, 32.0, LUNARFALL },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36623, {	-- Ogre Invasion!
						["qg"] = 79774,	-- Sergeant Grimjaw
						["coord"] = { 44.1, 47.3, FROSTWALL },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36830, {	-- Shadow Council Invasion!
						["qg"] = 78564,	-- Sergeant Crowler
						["coord"] = { 38.2, 32.0, LUNARFALL },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36831, {	-- Shadow Council Invasion!
						["qg"] = 79774,	-- Sergeant Grimjaw
						["coord"] = { 44.1, 47.3, FROSTWALL },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36412, {	-- Shadowmoon Invasion!
						["qg"] = 78564,	-- Sergeant Crowler
						["coord"] = { 38.2, 32.0, LUNARFALL },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
					q(36414, {	-- Shadowmoon Invasion!
						["qg"] = 79774,	-- Sergeant Grimjaw
						["coord"] = { 44.1, 47.3, FROSTWALL },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["lvl"] = 100,
					}),
				}),
				n(EVENT_COMPLETION, {
					i(120320, {	-- Invader's Abandoned Sack
						["description"] = "Bronze Challenge",
						["questID"] = 37638,
						["isWeekly"] = true,
						["groups"] = {
							i(115418),	-- Blood Gutter Greatsword
							i(115417),	-- Chadrik's Lost Axe
							i(115422),	-- Grimthorn's Fearsome Halberd
							i(115424),	-- Mace of Amaranthine Power
							i(115423),	-- Megana's Staff of Knowledge
							i(115420),	-- Scherer's Culinary Chopper
							i(115419),	-- Wall-Watcher's Longbow
							i(115421),	-- Zolvolt's Shocking Mace
							i(115405),	-- Cowl of Grim Shadows
							i(115404),	-- Oana's Observant Gaze
							i(115406),	-- One-Eyed Chain Helm
							i(115407),	-- Tehax's Penetrating Visage
							i(115414),	-- Gruntslayer Shoulderguards
							i(115413),	-- Scaling Hook Spaulders
							i(115415),	-- Spaulders of Primal Ferocity
							i(115412),	-- Wall-Breaker's Shoulderpads
							i(115410),	-- Gatecrasher's Chain Boots
							i(115411),	-- Ozymandias' Burdensome Treads
							i(115408),	-- Sandals of Marauding
							i(115409),	-- Wall-Climber's Treads
						},
					}),
					i(120319, {	-- Invader's Damaged Cache
						["description"] = "Silver Challenge",
						["questID"] = 37639,
						["isWeekly"] = true,
						["sym"] = {
							{ "select", "itemID", 120320 },	-- Select Invader's Abandoned Sack (Bronze Rewards)
							{ "pop" },						-- pop the Item container
						},
					}),
					i(116980, {	-- Invader's Forgotten Treasure
						["description"] = "Gold Challenge",
						["questID"] = 37640,
						["isWeekly"] = true,
						["sym"] = {
							{ "select", "itemID", 120320 },	-- Select Invader's Abandoned Sack (Bronze Rewards)
							{ "pop" },						-- pop the Item container
						},
						["groups"] = {
							i(116779),	-- Garn Steelmaw (MOUNT!)
							i(116673),	-- Giant Coldsnout (MOUNT!)
							i(116663),	-- Shadowhide Pearltusk (MOUNT!)
							i(116786),	-- Smoky Direwolf (MOUNT!)
						},
					}),
					i(122163, {	-- Routed Invader's Crate of Spoils
						["description"] = "Platinum Challenge",
						["questID"] = 38482,
						["isWeekly"] = true,
						["sym"] = {
							{ "select", "itemID", 116980 },	-- Select Invader's Forgotten Treasure (Gold Rewards)
							{ "pop" },						-- pop the Item container
						},
						["groups"] = {
							i(122186),	-- Blackrock Ironweave Cloak
							i(122178),	-- Fire-Smothering Greatcloak
							i(122181),	-- Gorian Strategy Map
							i(122185),	-- Starblotter's Spellwrap
							i(122182),	-- Voidwhisper Drape
							i(122167),	-- Pact-Bound Velvet Gloves
							i(122174),	-- Wriggling Vineweave Cinch
							i(122170),	-- Embroidered Gorian Pantaloons
							i(122165),	-- Nika's Ink-Smudged Penning Gloves
							i(122176),	-- Sapper's Utility Belt
							i(122172),	-- Treated Wildhide Leggings
							i(122168),	-- Razorthorn Studded Gauntlets
							i(122175),	-- Mauler's Weapon-Hauling Belt
							i(122171),	-- Acid-Grooved Gorenscale Leggings
							i(122180),	-- Spiteleaf Podstrand
							i(115415),	-- Spaulders of Primal Ferocity
							i(122166),	-- Blackrock Iron Stranglers
							i(122173),	-- Charred Blackrock Iron Waistplate
							i(122169),	-- Sooty Blackrock Iron Legplates
							i(122183),	-- Blackrock Iron Gorget
							i(122177),	-- Gorenspike Choker
							i(122179),	-- Rotting Goren Gutstone
							i(122184),	-- Eye of the Unseen Star
						},
					}),
					-- Items that drop at end of invasion that are used to spawn the bosses
					i(122474),	-- Arcane Highmaul Relic
					i(122472),	-- Bloodied Iron Horde Banner
					i(122466),	-- Heart of Oak
					i(122473),	-- Legion Beacon
					i(122468),	-- Runed Greatstone
					i(122475),	-- Void Prison
				}),
			}),
		})),
	})
);

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(GARRISONS, {
		n(GARRISON_INVASIONS, {
			q(38276, { ["timeline"] = { ADDED_6_1_0 } }),	-- 6.1 Garrison - World Boss Invasion Loot - killing Commander Dro'gan
			q(37198),	-- Garrison Visitor: Sappy - triggered during Goren invasion in Garrison
			q(37199),	-- Garrison Visitor: Sappy - triggered during Goren invasion in Garrison
			q(35914),	-- Internal: Default Invasion Reward - triggers during the first garrison invasion as part of Draenor's base intro
		}),
	}),
})));
