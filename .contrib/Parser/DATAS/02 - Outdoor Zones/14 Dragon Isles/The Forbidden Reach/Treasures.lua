---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(THE_FORBIDDEN_REACH, {
		n(TREASURES, {
			o(386633, {	-- Chest of Storms
				["coord"] = { 48.8, 73.1, THE_FORBIDDEN_REACH },
				["questID"] = 74567,
				["isWeekly"] = true,
				["groups"] = {
					i(204573),	-- Condensed Fire Magic
					i(204574),	-- Condensed Frost Magic
					i(204575),	-- Condensed Earth Magic
					i(204576),	-- Condensed Shadow Magic
					i(204577),	-- Condensed Nature Magic
					i(204578),	-- Condensed Arcane Magic
					i(204579),	-- Condensed Necromantic Magic
				},
				["sym"] = {
					{"select", "mapID", THE_FORBIDDEN_REACH },{"pop"},
					{"where", "headerID", ZONE_REWARDS },{"pop"},
					{"not", "itemID", 204276 },	-- Untapped Forbidden Knowledge (TODO: verify this exclusion)
				},
			}),
			o(386168, {	-- Farscale Cache
				["coord"] = { 75.6, 65.0, THE_FORBIDDEN_REACH },
			}),
			o(384763, {	-- Forbidden Hoard
				["coords"] = {
					{ 28.5, 42.2, THE_FORBIDDEN_REACH },
					{ 36.1, 34.1, THE_FORBIDDEN_REACH },
					{ 38.3, 50.4, THE_FORBIDDEN_REACH },
					{ 39.2, 24.3, THE_FORBIDDEN_REACH },
					{ 40.9, 11.3, THE_FORBIDDEN_REACH },
					{ 41.2, 44.3, THE_FORBIDDEN_REACH },
					{ 44.7, 32.4, THE_FORBIDDEN_REACH },
					{ 46.0, 16.1, THE_FORBIDDEN_REACH },
					{ 46.7, 75.1, THE_FORBIDDEN_REACH },
					{ 50.7, 36.8, THE_FORBIDDEN_REACH },
					{ 53.1, 77.9, THE_FORBIDDEN_REACH },
					{ 54.8, 92.4, THE_FORBIDDEN_REACH },
					{ 54.9, 34.4, THE_FORBIDDEN_REACH },
					{ 56.7, 55.4, THE_FORBIDDEN_REACH },
					{ 57.2, 22.6, THE_FORBIDDEN_REACH },
					{ 57.9, 62.7, THE_FORBIDDEN_REACH },
					{ 62.6, 49.4, THE_FORBIDDEN_REACH },
					{ 62.9, 43.7, THE_FORBIDDEN_REACH },
					{ 67.7, 68.3, THE_FORBIDDEN_REACH },
					{ 69.7, 77.6, THE_FORBIDDEN_REACH },
				},
				["groups"] = {
					i(197000),	-- Cliffside Wylderdrake: Coiled Horns (MM!)
				},
			}),
			o(386167, {	-- Irontide Stash
				["coords"] = {
					{ 29.8, 48.3, THE_FORBIDDEN_REACH },
					{ 31.4, 48.8, THE_FORBIDDEN_REACH },
					{ 31.4, 50.1, THE_FORBIDDEN_REACH },
					{ 32.2, 44.3, THE_FORBIDDEN_REACH },
					{ 33.1, 43.2, THE_FORBIDDEN_REACH },
					{ 34.6, 45.4, THE_FORBIDDEN_REACH },
					{ 35.8, 17.4, THE_FORBIDDEN_REACH },
					{ 36.2, 78.4, THE_FORBIDDEN_REACH },
					{ 36.8, 79.9, THE_FORBIDDEN_REACH },
					{ 36.9, 22.6, THE_FORBIDDEN_REACH },
					{ 36.9, 76.6, THE_FORBIDDEN_REACH },
					{ 37.0, 13.2, THE_FORBIDDEN_REACH },
					{ 37.1, 71.2, THE_FORBIDDEN_REACH },
					{ 37.2, 73.3, THE_FORBIDDEN_REACH },
					{ 37.2, 74.9, THE_FORBIDDEN_REACH },
					{ 37.4, 67.7, THE_FORBIDDEN_REACH },
					{ 37.8, 82.3, THE_FORBIDDEN_REACH },
					{ 37.9, 21.7, THE_FORBIDDEN_REACH },
					{ 38.0, 65.1, THE_FORBIDDEN_REACH },
					{ 38.1, 72.6, THE_FORBIDDEN_REACH },
					{ 38.9, 70.4, THE_FORBIDDEN_REACH },
					{ 39.0, 63.3, THE_FORBIDDEN_REACH },
					{ 39.7, 24.6, THE_FORBIDDEN_REACH },
					{ 42.8, 19.4, THE_FORBIDDEN_REACH },
					{ 45.0, 16.4, THE_FORBIDDEN_REACH },
					{ 46.8, 18.4, THE_FORBIDDEN_REACH },
					{ 47.1, 15.3, THE_FORBIDDEN_REACH },
				},
			}),
			o(385834, {	-- Journal Entry: Experiments
				["coord"] = { 59.6, 64.9, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(204200),	-- Journal Entry: Experiments [A]
					i(202329),	-- Journal Entry: Experiments [H]
				}
			}),
			o(385835, {	-- Journal Entry: Relics
				["coord"] = { 50.8, 43.4, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202335),	-- Journal Entry: Relics [A]
					i(204221),	-- Journal Entry: Relics [H]
				},
			}),
			o(385832, {	-- Receiving Stone: Final Warning
				["coord"] = { 58.9, 72.3, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202328),	-- Receiving Stone: Final Warning [A]
					i(204250),	-- Receiving Stone: Final Warning [H]
				}
			}),
			o(385830, {	-- Sending Stone: Initial Report
				["coord"] = { 55.3, 35.8, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202326),	-- Sending Stone: Initial Report [A]
					i(204252),	-- Sending Stone: Initial Report [H]
				}
			}),
			o(385533, {	-- Sending Stone: Protest
				["coord"] = { 58.4, 70.6, THE_FORBIDDEN_REACH },
				["groups"] = {
					i(202203),	-- Sending Stone: Protest [A]
					i(204251),	-- Sending Stone: Protest [H]
				}
			}),
			spell(399307, {	-- [DNT] Get Token
				["coord"] = { 53.6, 36.1, THE_FORBIDDEN_REACH },
				["cost"] = { { "i", 202667, 1 } },	-- 1x Sealed Artifact Scroll
				["groups"]= {
					i(202871),	-- Draconic Artifact
				}
			}),
			n(201006, {	-- Spirit of Blessing
				["coord"] = { 38.2, 36.9, THE_FORBIDDEN_REACH },
				["cost"] = { { "i", 202668, 1 } },	-- 1x Sealed Spirit Scroll
				["groups"]= {
					i(202872),	-- Token of Blessing
				}
			}),
			n(200958, {	-- Wondrous Fish
				["coord"] = { 45.1, 53.7, THE_FORBIDDEN_REACH },
				["cost"] = { { "i", 202669, 1 } },	-- 1x Sealed Fish Scroll
				["groups"]= {
					i(202854),	-- Wondrous Fish
				}
			}),

			-- TEMPORARY! These need to be added to their respective treasures
			i(204338),	-- The Burden of Lapisagos
			i(204316),	-- A Soldier's Journal
			i(204335),	-- A Song of the Depths
			i(204328),	-- Return of the Nightsquall
			i(204321),	-- Lost Expedition Notes
			i(204317),	-- Words of the Wyrmslayer

			-- TODO: Sealed Scroll Maps lead to these

			i(202870),	-- Mysterious Writings (Sealed Knowledge Scroll)
			i(202872),	-- Token of Blessing (Sealed Spirit Scroll)
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {
	m(DRAGON_ISLES, {
		m(THE_FORBIDDEN_REACH, {
			n(TREASURES, {
				header(HEADERS.Item, 202667, {	-- Sealed Artifact Scroll
					q(73200),
					q(73201),
					q(73202),
					q(73203),
					q(73204),
					q(73205),
				}),
				header(HEADERS.Item, 202669, {	-- Sealed Fish Scroll
					q(73210),
					q(73211),
					q(73212),
					q(73213),
					q(73214),
				}),
				header(HEADERS.Item, 202670, {	-- Sealed Knowledge Scroll
					q(73215),
					q(73216),
					q(73217),
					q(73218),
					q(73219),
				}),
				header(HEADERS.Item, 202668, {	-- Sealed Spirit Scroll
					q(73206),
					q(73207),
					q(73208),
					q(73209),
				}),
			}),
		}),
	}),
})));
