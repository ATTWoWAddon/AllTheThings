--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

DECOR_DUEL = createHeader({
	readable = "Decor Duel",
	icon = 1392559,
	text = {
		en = "Decor Duel",
		--de = "Decor Duel",
		--es = "Decor Duel",
		--mx = "Decor Duel",
		--fr = "Decor Duel",
		--it = "Decor Duel",
		--ko = "Decor Duel",
		--pt = "Decor Duel",
		--ru = "Decor Duel",
		--cn = "Decor Duel",
		--tw = "Decor Duel",
	},
	description = {
		en = "Decor Duel is a team-based prop hunt event in Silvermoon City, offering a fun activity to escape the madness of the Void invasion with a friendly magical game of hide and seek.\n\nPlayers can access the Decor Duel queue through the Quick Match section in the PvP tab of the Group Finder. Teams of up to 5 can queue up together for this casual PvP activity. Groups of 1 to 4 players will be matched with other random queuers.",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		-- TODO: cn = "",
		-- TODO: tw = "",
	},
});

local ILLUSIONARY_COIN = 3393;

root(ROOTS.Holidays,
	--applyevent(EVENTS.DECOR_DUEL,	-- DO NOT TOUCH! (for now) It is placed among 'World Events' in-game under Achievements but there is no EventID on Wago. Maybe move to World Events?	-- Exo
	bubbleDown({ ["timeline"] = { ADDED_12_0_5 } }, {
	n(DECOR_DUEL, {
		["maps"] = { MAP.MIDNIGHT.SILVERMOON_CITY },	-- Silvermoon City
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61793),	-- Deployed to the Void
				ach(61887),	-- Disguised to the Nines
				ach(61881),	-- Hide and Peekless
				ach(61880),	-- It's Cold Here in This Shadow
				ach(61883),	-- Now You Don't See Me...
				ach(61882),	-- Null and Avoided
				ach(61792),	-- T-A-G that spells "Gotcha!"
				ach(61878),	-- Tagged and Bagged
				ach(61886),	-- The Whole Kit and Caboodle
				ach(61879),	-- You're It
			}),
			--n(QUESTS, {
			--}),
			n(REWARDS, {
				currency(ILLUSIONARY_COIN),
			}),
			n(VENDORS, {
				n(264056, {	-- Disguised Decor Duel Vendor <Illusionary Coin Trader>
					["coord"] = { 31.6, 76.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(272445, {	-- Decorative Dornogal Opal (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 50 } },
						}),
						i(272442, {	-- Empty Wooden Toolbox (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 50 } },
						}),
						i(272446, {	-- Large Decorative Dornogal Opal (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 200 } },
						}),
						i(269636, {	-- Sin'dorei Cookpot Lid (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 50 } },
						}),
						i(269613, {	-- Sin'dorei Covered Cookpot (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 100 } },
						}),
						i(269641, {	-- Sin'dorei Display Case (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 100 } },
						}),
						i(271162, {	-- Sin'dorei Garden Swing (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 200 } },
						}),
						i(269614, {	-- Sin'dorei Open Cookpot (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 50 } },
						}),
						i(268457, {	-- Sin'dorei Tiffin-Style Lamp (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 100 } },
						}),
						i(272444, {	-- Small Decorative Dornogal Opal (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 100 } },
						}),
						i(272441, {	-- Small Lumber Pile (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 50 } },
						}),
						i(272443, {	-- Suramar Arcfruit Bowl (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 50 } },
						}),
					},
				}),
				n(256084, {	-- Gamesmaster Fleurian <Illusionary Coin Trader>
					["coord"] = { 31.6, 76.6, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						-- Event Abilities, Warbound, Maybe CI?
						i(262746, {	-- "Clockwork Sentinel" Kit
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262741, {	-- "Dispelling Leap" Kit
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262755, {	-- "Eccentro-Magic Pulse" Enhancement
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262756, {	-- "Make Decoy" Enhancement
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262743, {	-- "Nullification Field" Kit
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262744, {	-- "Riftwalk" Kit
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262745, {	-- "Stealth" Kit
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						i(262742, {	-- "Swift" Kit
							["cost"] = { { "c", ILLUSIONARY_COIN, 20 } },
						}),
						-- Rewards
						i(268456, {	-- Animated Bench (TOY!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 200 } },
						}),
						i(272321, {	-- Arcane Ranger's Spellbow (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(268455, {	-- Enchanted Hourglass (TOY!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 200 } },
						}),
						i(272337, {	-- Mage Guard's Spellblade (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272338, {	-- Mage Guard's Spellsteel (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(268481, {	-- Magister's Spell Bee Comb (MOUNT!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 500 } },
						}),
						i(272320, {	-- Nullbeacon Rift Channeler (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272336, {	-- Nullbeacon Rift Smasher (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272316, {	-- Spellbreaker's Bladelance (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272961, {	-- Spellbreaker's Bladestaff (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272317, {	-- Spellbreaker's Phoenixglaive (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272318, {	-- Spellbreaker's Phoenixblade (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(272960, {	-- Spellbreaker's Shieldwall (COSMETIC!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 100 } },
						}),
						i(239018, {	-- Winner's Podium (TOY!)
							["cost"] = { { "c", ILLUSIONARY_COIN, 200 } },
						}),
					},
				}),
			}),
		},
	}),
})
--)
);

--root(ROOTS.HiddenQuestTriggers, {
--	expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_5 } }, {
--		n(DECOR_DUEL, {
--			
--		}),
--	})),
--});
