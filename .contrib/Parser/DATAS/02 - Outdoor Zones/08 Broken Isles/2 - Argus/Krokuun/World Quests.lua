---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				n(WORLD_QUESTS, sharedData({
					["isWorldQuest"] = true,
				},{
					q(48285),	-- Aerial Superiority
					petbattle(q(49043)),	-- Baneglow
					q(47724),	-- Besieged
					q(47496),	-- Bunker Buster
					q(47624, {	-- Bury It
						["groups"] = {
							o(271114, {	-- Eredar Bones
								i(151061),	-- Chewed Eredar Bones (QI!)
							}),
						},
					}),
					q(48511, {	-- Commander Endaxis
						["sym"] = {{"select","npcID",124775}},	-- Select the WQ NPC
					}),
					q(48509, {	-- Commander Sathrenael
						["sym"] = {{"select","npcID",122912}},	-- Select the WQ NPC
					}),
					q(48510, {	-- Commander Vecaya
						["sym"] = {{"select","npcID",122911}},	-- Select the WQ NPC
					}),
					q(48286),	-- Crystal Methods
					petbattle(q(49045)),	-- Deathscreech
					q(47720),	-- Eternal Vengeance
					petbattle(q(49042)),	-- Foulclaw
					petbattle(q(49046)),	-- Gnasher
					q(48287),	-- Harvesters of Sorrow
					q(48592),	-- Holding the Spire
					q(48282, {	-- Imp Mother Laglath
						["sym"] = {{"select","npcID",125820}},	-- Select the WQ NPC
					}),
					q(47507, {	-- Khazaduum
						["sym"] = {{"select","npcID",125824}},	-- Select the WQ NPC
					}),
					q(47551),	-- Lessons of Fire and Pain
					q(47707),	-- Melting Down
					q(48502, {	-- Naroua, King of the Forest
						["sym"] = {{"select","npcID",126419}},	-- Select the WQ NPC
					}),
					q(48284),	-- Reap the Fields
					petbattle(q(49044)),	-- Retch
					q(47646),	-- Rope Around
					petbattle(q(49041)),	-- Ruinhoof
					q(47542, {	-- Siegemaster Voraan
						["sym"] = {{"select","npcID",120393}},	-- Select the WQ NPC
					}),
					q(48512, {	-- Sister Subversia
						["sym"] = {{"select","npcID",123464}},	-- Select the WQ NPC
					}),
					q(47563, {	-- Spirits of the Fallen
						["groups"] = {
							i(152995),	-- Sacred Stone (QI!)
						},
					}),
					q(48338),	-- Supplies Needed: Astral Glory
					q(47728, {	-- Talestra the Vile
						["sym"] = {{"select","npcID",123689}},	-- Select the WQ NPC
					}),
					q(48192, {	-- Tar Spitter
						["sym"] = {{"select","npcID",125479}},	-- Select the WQ NPC
					}),
					q(47953, {	-- Terek the Selector
						["sym"] = {{"select","npcID",124804}},	-- Select the WQ NPC
					}),
					q(47712, {	-- The Devastator
						["groups"] = {
							i(151188),	-- Devastator Energy Cell (QI!)
						},
					}),
					q(47625),	-- The Ritual We Share
					q(48091, {	-- Vagath the Betrayed
						["sym"] = {{"select","npcID",125388}},	-- Select the WQ NPC
					}),
					q(48615),	-- War Never Changes
					q(48614),	-- Woeful Implications
					q(48337, {	-- Work Order: Astral Glory
						["requireSkill"] = HERBALISM,
					}),
					q(48318, {	-- Work Order: Lightblood Elixirs
						["requireSkill"] = ALCHEMY,
						["groups"] = {
							i(151658),	-- Recipe: Lightblood Elixir [Rank 2] (RECIPE!)
						},
					}),
					q(48323, {	-- Work Order: Tears of the Naaru
						["requireSkill"] = ALCHEMY,
						["groups"] = {
							i(151704),	-- Recipe: Tears of the Naaru [Rank 2] (RECIPE!)
						},
					}),
				})),
			}),
		})),
	}),
});
