---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(WORLD_QUESTS, {
			["g"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				petbattle(q(86952, {	-- Approach the Croach
					["provider"] = { "n", 237718 },	-- Creech
					["coord"] = { 31.8, 79.6, UNDERMINE },
				})),
				petbattle(q(86943, {	-- Drilling Down
					["provider"] = { "n", 237701 },	-- Precision Powerdrill
					["coord"] = { 53.4, 71.2, UNDERMINE },
				})),
				petbattle(q(86949, {	-- Loyal Crewmates
					["provider"] = { "n", 237712 },	-- Prezly Wavecutter
					["coord"] = { 58.2, 28.4, UNDERMINE },
				})),
				petbattle(q(86947, {	-- Tiny, Expensive, and Deadly
					["provider"] = { "n", 237703 },	-- Baxx the Purveyor
					["coord"] = { 40.1, 18.6, UNDERMINE },
				})),
				pvp(q(85479, {	-- Rock 'Em, Explode 'Em
					["coord"] = { 36.6, 24.2, UNDERMINE },
				})),
				q(85497, {	-- Blown a Gasket
					["coord"] = { 42.2, 76.7, UNDERMINE },
				}),
				q(85398, {	-- Bomb Voyage!
					["coord"] = { 65.5, 15.2, UNDERMINE },
				}),
				q(85519, {	-- Boom and Burst
					["coord"] = { 64.9, 70.8, UNDERMINE },
					["g"] = {
						o(478679, {	-- Salvage Part
							i(231889),	-- New-To-You Mechanical Parts (QI!)
						}),
					},
				}),
				q(85269, {	-- Boom Balloon
					["coord"] = { 37.0, 30.8, UNDERMINE },
					["g"] = {
						o(508718, {	-- Rooftop Teleporter
							["coord"] = { 37.4, 33.7, UNDERMINE },
						}),
					},
				}),
				q(85263, {	-- Boomball
					["coord"] = { 66.0, 60.3, UNDERMINE },
				}),
				q(85527, {	-- Buccaneer Bonzai
					["coord"] = { 68.8, 81.5, UNDERMINE },
				}),
				q(85399, {	-- Caddyshock
					["coord"] = { 69.7, 81.6, UNDERMINE },
				}),
				q(85428, {	-- Code Violations
					["coord"] = { 34.8, 28.0, UNDERMINE },
					["g"] = {
						i(232989),	-- S4F3-T Inspectors (QI!)
					},
				}),
				q(85270, {	-- Cold as Ice
					["coord"] = { 39.2, 31.5, UNDERMINE },
				}),
				q(84955, {	-- Contraband Banned
					["coord"] = { 23.7, 51.2, UNDERMINE },
				}),
				q(84948, {	-- Contract Work
					-- This one is 'forge a pact'?
					["coord"] = { 42.9, 52.3, UNDERMINE },
					["g"] = {
						i(234281),	-- Undermine Cartel Work
					},
				}),
				--Under Rares
				--Darkfuse Precipitant
				q(85524, {	-- Disarming the Darkfuse
					["coord"] = { 43.7, 27.0, UNDERMINE },
				}),
				q(85467, {	-- Dumpster Fire
					["coord"] = { 51.6, 88.6, UNDERMINE },
				}),
				q(84994, {	-- Evidence of Effect
					["coord"] = { 45.6, 48.8, UNDERMINE },
				}),
				q(85427, {	-- Explosive Expiration
					["coord"] = { 58.1, 88.9, UNDERMINE },
				}),
				q(85473, {	-- Extra! Extra!
					["coord"] = { 36.5, 79.6, UNDERMINE },
				}),
				q(85498, {	-- Firework It
					["coord"] = { 48.5, 51.4, UNDERMINE },
				}),
				q(84971, {	-- For Love of Grog
					["coord"] = { 44.6, 78.4, UNDERMINE },
					["g"] = {
						i(229407),	-- Citrus Acid (QI!)
					},
				}),
				q(85515, {	-- Free Samples!
					["coord"] = { 27.8, 45.5, UNDERMINE },
					["g"] = {
						i(231900),	-- Sample Potion (QI!)
					},
				}),
				q(85500, {	-- Hazardous Waste
					["coord"] = { 56.6, 30.4, UNDERMINE },
					["g"] = {
						o(479594, {	-- Depleted Hotrod Battery
							i(232054),	-- Depleted Hotrod Battery (QI!)
						}),
						i(232053),	-- Electro-Gland (QI!)
					},
				}),
				q(85396, {	-- Heaps o' Scrap
					["coord"] = { 44.2, 78.6, UNDERMINE },
					["g"] = {
						i(231022),	-- Bits o' Scrap (QI!)
						i(231164),	-- Goblin Grapnel (QI!)
						o(475990),	-- Junk Pile
						o(475987),	-- Pile 'o' Scrap
					},
				}),
				q(85466, {	-- Hob or Cold
					["coord"] = { 43.7, 75.7, UNDERMINE },
				}),
				q(85514, {	-- If They're Not Using It...
					["coord"] = { 48.7, 49.3, UNDERMINE },
					["g"] = {
						i(231898),	-- Industrial-Grade Makeup Remover (QI!)
						i(231895),	-- Leftover Mocktail (QI!)
						i(231897),	-- Rusted Coin (QI!)
						i(231896),	-- Unused Jar (QI!)
						i(231894),	-- Useful Trash (QI!)
						o_repeated({
							o(478435),	-- Waiting Garbage Can
							o(478436),	-- Waiting Garbage Can
							o(478437),	-- Waiting Garbage Can
							o(478438),	-- Waiting Garbage Can
						}),
					},
				}),
				q(85402, {	-- In The Heights
					["coord"] = { 53.0, 45.1, UNDERMINE },
				}),
				q(85472, {	-- It's Free Reagents!
					["coord"] = { 54.6, 85.6, UNDERMINE },
				}),
				q(84929, {	-- Lifeguard On Duty
					["coord"] = { 56.6, 32.7, UNDERMINE },
				}),
				q(85474, {	-- Rat Pack Attack
					["coord"] = { 36.6, 59.2, UNDERMINE },
				}),
				q(85499, {	-- One Goblin's Trash
					["coord"] = { 68.5, 63.5, UNDERMINE },
				}),
				q(84995, {	-- Pictures! Pictures of Undermine!
					["coord"] = { 42.1, 52.1, UNDERMINE },
				}),
				q(85268, {	-- Pow-Arr Wash Simulator
					["coord"] = { 65.4, 12.7, UNDERMINE },
				}),
				q(85528, {	-- Recrewtment
					["coord"] = { 39.5, 45.8, UNDERMINE },
				}),
				q(85400, {	-- Reduce, Re-ooze, Recycle
					["coord"] = { 36.6, 59.2, UNDERMINE },
				}),
				q(85512, {	-- Rooting Out Counterfeits
					["coord"] = { 26.9, 71.8, UNDERMINE },
				}),
				q(85518, {	-- Scalper Scum
					["coord"] = { 49.9, 33.1, UNDERMINE },
					["g"] = {
						o(500203, {	-- Resold Goods
							i(232922),	-- Resold Goods (QI!)
						}),
					},
				}),
				q(85526, {	-- Scum Bag
					["coord"] = { 36.2, 66.5, UNDERMINE },
				}),
				q(85390, {	-- Sunrise Sudser
					["coord"] = { 59.5, 38.7, UNDERMINE },
				}),
				q(85513, {	-- Underrider Grease
					["coord"] = { 47.1, 55.7, UNDERMINE },
					["g"] = {
						i(231893),	-- Grease Residue (QI!)
					},
				}),
				q(85397, {	-- What Plants Crave
					["coord"] = { 65.2, 59.4, UNDERMINE },
				}),
				-- Racings
				q(85925, {	-- Breakneck Racing - Breakneck Bolt
					["coord"] = { 24.8, 51.1, UNDERMINE },
				}),
				q(85927, {	-- Breakneck Racing - Casino Cruise
					["coord"] = { 39.8, 52.7, UNDERMINE },
				}),
				q(85926, {	-- Breakneck Racing - Junkyard Jaunt
					["coord"] = { 43.2, 76.8, UNDERMINE },
				}),
				q(85928, {	-- Breakneck Racing - Sandy Scuttle
					["coord"] = { 46.5, 43.7, UNDERMINE },
				}),
				q(85107, {	-- Skyrider Racing - Rags to Riches Rush
					["coord"] = { 25.9, 41.7, UNDERMINE },
				}),
				q(85106, {	-- Skyrider Racing - Scrapshop Shot
					["coord"] = { 39.7, 12.2, UNDERMINE },
				}),
				q(85104, {	-- Skyrider Racing - Skyrocketing Sprint
					["coord"] = { 38.4, 29.8, UNDERMINE },
				}),
				q(85105, {	-- Skyrider Racing - The Heaps Leap
					["coord"] = { 34.8, 75.3, UNDERMINE },
				}),
				-- Special Assigments
				q(85487, {	-- Special Assignment: Boom! Headshot!
					["coord"] = { 38.4, 52.0, UNDERMINE },
					["g"] = {
						o(504338, {	-- Rooftop Teleporter
							["coord"] = { 35.8, 52.2, UNDERMINE },
						}),
					},
				}),
				q(85488, {	-- Special Assignment: Security Detail
					["coord"] = { 57.9, 45.1, UNDERMINE },
				}),
			}),
		}),
	}),
})));