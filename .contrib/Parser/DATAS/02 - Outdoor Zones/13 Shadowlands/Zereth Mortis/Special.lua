---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(SPECIAL, {
			header(HEADERS.Item, 190196, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Enlightened Hearthstone
				["description"] = "To obtain this toy, you will need six people with the Sphere of Enlightened Cogitation toy.\nEach person with the toy needs to stand on top of one of the hexagon pillars surrounding the pool of water under the Forge of Afterlives, right at the center of Zereth Mortis, and use the toy while sitting.\nOne person needs to be in each pillar.\nIf all 6 people use the toy successfully at the same time, a zone-wide chat emote will show up - The Ponderer's Portal has been opened. Once this happens, simply head to the southern hexagon pillar and loot the toy from the Ponderer's Portal - The Portal looks like a white glowy sphere.",
				["groups"] = {
					i(190196),	-- Enlightened Hearthstone (TOY!)
				},
			})),
			i(189167, {	-- Glimmer of Satisfaction
				["description"] = "Eating a Empty Kettle of Stone Soup (/att i:187648) or Feast of Gluttonous Hedonism Feast (/att i:172043) has a chance to spawn this item in your inventory.\nThe chance to Award Glimmer of Satisfaction happens whenever you either gain the 'Well Fed' buff or refresh the buff, so you can click again on the feast every ~12 seconds.",
			}),
			o(375516, {	-- Lost Comb
				["description"] = "Almost at the top of the pillar in a little nest attached to the side of the pillar. Require flying but might be doable during Portal Play and with Venthyr Ability.",
				["coord"] = { 63.3, 60.5, ZERETH_MORTIS },
				["groups"] = {
					i(189990),	-- Bee Soul (SS!)
				},
			}),
			n(185452, {	-- Lost Soul
				["description"] = "In multiple hidden areas.",
				["coords"] = {
					{ 43.9, 79.9, ZERETH_MORTIS },
					{ 30.4, 67.2, ZERETH_MORTIS },
					{ 37.0, 34.2, ZERETH_MORTIS },
					{ 37.6, 77.2, ZERETH_MORTIS },
					{ 38.2, 71.4, ZERETH_MORTIS },
					{ 38.4, 80.4, ZERETH_MORTIS },
					{ 38.6, 80.4, ZERETH_MORTIS },
					{ 43.8, 79.4, ZERETH_MORTIS },
					{ 49.8, 80.0, ZERETH_MORTIS },
					{ 58.4, 75.0, ZERETH_MORTIS },
				},
				["groups"] = {
					i(189988),	-- Sheep Soul (SS!)
				},
			}),
			n(185279, {	-- Lost Soul
				["description"] = "On top of an Orb.",
				["coord"] = { 34.4, 71.3, ZERETH_MORTIS },
				["groups"] = {
					i(189989),	-- Penguin Soul (SS!)
				},
			}),
			i(187662, {	-- Strange Goop
				["description"] = "Can be fished from around Hirukon spawn point, or purchased from auction house.",
				["coord"] = { 52.2, 75.2, ZERETH_MORTIS },
			}),
		})
	}),
})));
