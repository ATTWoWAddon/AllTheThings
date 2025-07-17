---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(PROFESSIONS, {
				prof(FISHING, {
					faction(FACTION_IMPUS, {	-- Impus
						["creatureID"] = 120460,
						["coord"] = { 33.9, 49.8, BROKEN_SHORE },
						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF33.9, 49.8|r on Deadwood Landing.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time.  You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you receive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["g"] = {
							i(146963, {	-- Desecrated Seaweed
								-- extra info for the item can go here
							}),
							i(147312, {	-- Crate of Bobbers: Demon Noggin (TOY!)
								["cost"] = { { "i", 146963, 100 } },	-- 100x Desecrated Seaweed
							}),
							i(152554, {	-- Desecrated Seaweed Shirt
								["cost"] = { { "i", 146963, 50 } },	-- 50x Desecrated Seaweed
							}),
							i(133721, {	-- Message in a Bottle
								["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
								["sym"] = {{"fill"}},
							}),
							i(133723, {	-- Stunned, Angry Shark
								["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
								["sym"] = {{"fill"}},
							}),
							i(133724, {	-- Decayed Whale Blubber
								["cost"] = { { "i", 146963, 25 } },	-- 25x Desecrated Seaweed
								["sym"] = {{"fill"}},
							}),
							i(124112, {	-- Black Barracuda
								["cost"] = { { "i", 146963, 10 } },	-- 10x Desecrated Seaweed
							}),
						},
					}),
				}),
				prof(TAILORING, {
					q(46678, {	-- The Legend of the Threads
						["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
						["coord"] = { 41.2, 59.4, BROKEN_SHORE },
						["sourceQuest"] = 46804,	-- Fashion History and a Philosophy of Style
						["repeatable"] = true,
						["requireSkill"] = TAILORING,
						["g"] = {
							i(147281),	-- Nights with the Nightborne (QI!)
						},
					}),
					q(46682, {	-- Drapings of the Ancients
						["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
						["coord"] = { 41.1, 59.3, BROKEN_SHORE },
						["sourceQuest"] = 46678,	-- The Legend of the Threads
						["repeatable"] = true,
						["requireSkill"] = TAILORING,
						["g"] = {
							i(146685), -- Ancient Imbued Silkweave (QI!)
							i(146684), -- Ancient Imbued Silkweave Armor (QI!)
						},
					}),
					q(46680, {	-- The Thread of Starlight
						["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
						["coord"] = { 41.1, 59.3, BROKEN_SHORE },
						["sourceQuest"] = 46678,	-- The Legend of the Threads
						["repeatable"] = true,
						["requireSkill"] = TAILORING,
						["g"] = {
							i(146680),	-- Melandrus' Star-Touched Bracers (QI!)
							i(146681),	-- Starlight Thread (QI!)
						},
					}),
					q(46679, {	-- The Thread of Shadow
						["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
						["coord"] = { 41.1, 59.3, BROKEN_SHORE },
						["sourceQuest"] = 46678,	-- The Legend of the Threads
						["repeatable"] = true,
						["requireSkill"] = TAILORING,
						["g"] = {
							i(146679),	-- Shadow Thread (QI!)
							i(146678),	-- Vandros' Shadoweave Robes (QI!)
						},
					}),
					q(46681, {	-- The Thread of Souls
						["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
						["coord"] = { 41.1, 59.3, BROKEN_SHORE },
						["sourceQuest"] = 46678,	-- The Legend of the Threads
						["repeatable"] = true,
						["requireSkill"] = TAILORING,
						["g"] = {
							i(146683),	-- Soul Thread (QI!)
							i(146682),	-- Suramari Soul-Wraps (QI!)
						},
					}),
					q(46683, {	-- Starweave and Shadowcloth
						["provider"] = { "n", 120221 },	-- Eliezer Hammerbeard
						["coord"] = { 41.1, 59.3, BROKEN_SHORE },
						["sourceQuests"] = {
							46682,	-- Drapings of the Ancients
							46680,	-- The Thread of Starlight
							46679,	-- The Thread of Shadow
							46681,	-- The Thread of Souls
						},
						["repeatable"] = true,
						["requireSkill"] = TAILORING,
						["g"] = {
							i(146952),	-- Legendary Tailor's Materials (QI!)
							i(147437),	-- Satchel of Starweave and Shadowcloth (QI!)
						},
					}),
					i(146666),	-- Celumbra, the Night's Dichotomy (This is linked here to see the Questline as long as you don't have the appearance) - sadidorf
				}),
			}),
		}),
	}),
});
