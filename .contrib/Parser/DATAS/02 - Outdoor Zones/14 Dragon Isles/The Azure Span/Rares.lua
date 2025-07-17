---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(194270, {	-- Arcane Devourer
				["coord"] = { 53.0, 35.6, THE_AZURE_SPAN },
				["questID"] = 73866,
			}),
			n(194210, {	-- Azure Pathfinder
				["coord"] = { 60.7, 31.7, THE_AZURE_SPAN },
				["questID"] = 73867,
			}),
			n(193116, {	-- Beogoka
				["coord"] = { 73.0, 26.6, THE_AZURE_SPAN },
				["questID"] = 73868,
				["g"] = {
					i(200673),	-- Beogoka's Tooth and Claw
				},
			}),
			n(193178, {	-- Blightfur
				["coord"] = { 13.4, 22.4, THE_AZURE_SPAN },
				["questID"] = 74058,
				["g"] = {
					bo(69858, true),
					i(197404),	-- Renewed Proto-Drake: Finned Tail (MM!)
				},
			}),
			n(197353, {	-- Blisterhide <The Infested>
				["coord"] = { 14.5, 31.1, THE_AZURE_SPAN },
				["questID"] = 73985,
			}),
			n(193259, {	-- Blue Terror
				["coord"] = { 16.7, 28.4, THE_AZURE_SPAN },
				["questID"] = 73870,
				["g"] = {
					i(197595),	-- Windborne Velocidrake: Finned Ears (MM!)
				},
			}),
			n(194392, {	-- Brackle
				["coord"] = { 8.7, 48.6, THE_AZURE_SPAN },
				["questID"] = 73871,
			}),
			n(186962, {	-- Cascade
				["coord"] = { 23.7, 33.7, THE_AZURE_SPAN },
				["questID"] = 72836,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193157, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_5, ADDED_11_0_7 } }, {	-- Dragonhunter Gorund
				["coords"] = {
					-- #if AFTER 11.0.7
					{ 24.5, 47.3, THE_AZURE_SPAN },
					-- #else
					{ 27.8, 45.8, THE_AZURE_SPAN },
					-- #endif
				},
				["questID"] = 73873,
				["g"] = {
					i(200302),	-- Magmaforged Scimitar
				},
			})),
			n(193691, {	-- Fisherman Tinnak <Angered Ghost>
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 7 },
				["description"] = "Collect the Broken Fishing Pole, Torn Fishing Net and Old Harpoon around to summon him.\n\nRewards you with 950 Reputation if you are summoner or 60 Reputation with a normal tag.",
				["coord"] = { 49.5, 36.1, THE_AZURE_SPAN },
				["questID"] = 72730,
				["isDaily"] = IGNORED_VALUE,
				["g"] = {
					i(198070),	-- Tattered Seavine (IF!)
				},
			}),
			n(193214, {	-- Forgotten Creation
				["coord"] = { 38.2, 59.0, THE_AZURE_SPAN },
				["questID"] = 72840,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193698, {	-- Frigidpelt Den Mother
				["coord"] = { 64.7, 29.9, THE_AZURE_SPAN },
				["questID"] = 73876,
			}),
			n(191356, {	-- Frostpaw
				["description"] = "Can be spawned when the three toys are present on the stump nearby- use the hammer at 58.6, 43.4.",
				["coord"] = { 58.2, 43.7, THE_AZURE_SPAN },
				["questID"] = 73877,
			}),
			n(197354, {	-- Gnarls
				["coord"] = { 14.1, 37.5, THE_AZURE_SPAN },
				["questID"] = 73996,
			}),
			n(201557,	-- Graniteclaw
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 58.3, 69.0, THE_AZURE_SPAN },
				["questID"] = 74532,
				["g"] = {
					bo(74459, true),
					i(203658),	-- Graniteclaw's Vest
				},
			})),
		--	n(193251),	-- Gruffy // under DF/Timed Based Rare
		--	n(193269),	-- Grumbletrunk // under DF/Timed Based Rare
			n(197356, {	-- High Shaman Rotknuckle
				["coord"] = { 16.2, 33.6, THE_AZURE_SPAN },
				["questID"] = 74004,
			}),
			n(190244, {	-- Mahg the Trampler
				["coord"] = { 36.8, 35.8, THE_AZURE_SPAN },
				["questID"] = 73883,
				["g"] = {
					i(200157),	-- Pathmaker
				},
			}),
			n(201558,	-- Malgain Rockknell
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 56.0, 67.6, THE_AZURE_SPAN },
				["questID"] = 74531,
				["g"] = {
					bo(74461, true),
					i(203660),	-- Rockknell's Groundpounders
				},
			})),
			n(198004, {	-- Mange the Outcast
				["coord"] = { 40.4, 48.4, THE_AZURE_SPAN },
				["questID"] = 73884,
			}),
			n(193201, {	-- Mucka the Raker
				["description"] = "In order to fully kill this rare and not have her reset on you, you have to kill two Mucklings in the area. They like to get stuck in rocks.",
				["coord"] = { 57.2, 53.6, THE_AZURE_SPAN },
				["questID"] = 73885,
			}),
			n(193225, {	-- Notfar the Unbearable
				["crs"] = { 198703 },	-- Gutrot Slime
				["coord"] = { 20.6, 49.4, THE_AZURE_SPAN },
				["questID"] = 73887,
				["g"] = {
					i(200160),	-- Notfar's Favorite Food (TOY!)
				},
			}),
			n(193693, {	-- Rusthide
				-- ["coord"] = { X, Y, THE_AZURE_SPAN },
				-- ["questID"] = ,
				-- ["g"] = {
				-- },
			}),
			n(192749, {	-- Sharpfang
				["coord"] = { 36.8, 32.5, THE_AZURE_SPAN },
				["questID"] = 72846,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(201559,	-- Shiobhan Waterborn
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 59.9, 67.5, THE_AZURE_SPAN },
				["questID"] = 74533,
				["g"] = {
					bo(74462, true),
					i(203661),	-- Watercaller's Mantle
				},
			})),
		--	n(193149),	-- Skag the Thrower // under DF/Timed Based Rare
			n(197344, {	-- Snarglebone
				["coord"] = { 11.1, 32.2, THE_AZURE_SPAN },
				["questID"] = 74032,
			}),
			n(193238, {	-- Spellwrought Snowman
				["description"] = "Collect 10 arcane energy around the small mountain & after turning them in, click the Arcane Pedestal to summon the mob.",
				["coords"] = {
					{ 55.0, 34.0, THE_AZURE_SPAN },	-- Rare
					{ 53.9, 35.6, THE_AZURE_SPAN },	-- Arcane Pedestal
				},
				["crs"] = {
					193242,	-- Arcane Pedestal
					193255,	-- Archmage Cleary
				},
				["questID"] = 74082,
				["g"] = {
					bo(73064, true),
					i(200211),	-- Snowman's Icy Gaze
				},
			}),
			n(193288, {	-- Summoned Destroyer
				["coord"] = { 70.1, 33.2, THE_AZURE_SPAN },
				["questID"] = 72848,
				["isDaily"] = IGNORED_VALUE,
			}),
			n(193167, {	-- Swagraal the Swollen
				-- ["coord"] = { X, Y, THE_AZURE_SPAN },
				-- ["questID"] = ,
				-- ["g"] = {
				-- },
			}),
			n(193196, {	-- Trilvarus Loreweaver
				["description"] = "Collect a little blue crystal called Singing Fragment north of Olias & bring it to him to summon Trilvarus.",
				["crs"] = {
					193782,	-- Olias Rivershaw
				},
				["coords"] = {
					{ 70.2, 25.2, THE_AZURE_SPAN },	-- Rare
					{ 70.2, 26.2, THE_AZURE_SPAN },	-- Crystal Spot
				},
				["questID"] = 74087,
				["g"] = {
					bo(69861, true),
					i(200549),	-- Restored Titan Artifact
				},
			}),
			n(193223, {	-- Vakril <The Strongest Tuskarr?>
				["coord"] = { 17.0, 41.3, THE_AZURE_SPAN },
				["questID"] = 72853,
				["isDaily"] = IGNORED_VALUE,
				["g"] = {
					i(201728),	-- Vakril's Strongbox
				},
			}),
			n(201556,	-- Waterpots
			bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {
				["coord"] = { 57.2, 64.6, THE_AZURE_SPAN },
				["questID"] = 74535,
				["g"] = {
					bo(74460, true),
					i(203659),	-- Waterpot's Halfpot Deflector
				},
			})),
			n(193632, {	-- Wilrive
				["coord"] = { 59.4, 55.2, THE_AZURE_SPAN },
				["questID"] = 73900,
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THE_AZURE_SPAN, {
			n(RARES, {
				q(73886),	-- Killing both Mucklings for Mucka the Raker
				q(71240),	-- Triggered on killing various rares, maybe first one-time Rare killed on a character
			}),
		}),
	}),
})));