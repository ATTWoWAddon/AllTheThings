-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
AMAZON_PRIME_GAMING = createHeader({
	readable = "Amazon Prime Gaming",
	icon = 136101,
	text = {
		en = "Amazon Prime Gaming",
	},
	description = {
		en = "Amazon Prime Gaming offers in-game content for World of Warcraft Retail. Depending on your country, Amazon Prime (which includes Gaming) costs between 4-16 $/€ per month with the occasional monthly free trial available.\n\nCreate a Twitch account & connect it with your Prime Account. Next connect your B.Net Account with your Twitch Account. Lastly claim your monthly reward under 'gaming.amazon.com/loot/wow'.\n\nAmazon Prime also comes with a free Twitch subscription which you can use to support AllTheThings.\n\nTwitch.tv/Crieve\nTwitch.tv/Goldenshacal",
	},
});
root(ROOTS.Promotions, {
	n(AMAZON_PRIME_GAMING, {
		["timeline"] = { ADDED_10_0_7, REMOVED_10_2_6 },
		["groups"] = {
			i(49282, {	-- Big Battle Bear (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from March 30th 2023 till April 27th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_0_7, REMOVED_10_0_7 },
			}),
			i(54847, {	-- Lil' XT (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from April 27th 2023 till May 25th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_0_7, REMOVED_10_1_0 },
			}),
			i(45037, {	-- Epic Purple Shirt
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from May 25th 2023 till June 29th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },
			}),
			i(71718, {	-- Swift Shorestrider (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from June 29th 2023 till July 27th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_5 },
			}),
			i(34519, {	-- Silver Pig (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from July 25th 2023 till August 24th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_1_5, REMOVED_10_1_5 },
			}),
			i(38312, {	-- Tabard of Brilliance
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from August 24th 2023 till September 28th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_1_5, REMOVED_10_1_7 },
			}),
			i(49664, {	-- Zipao Tiger (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from September 26th 2023 till October 24th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_1_7, REMOVED_10_1_7 },
			}),
			i(95341, {	-- Armored Bloodwing (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from October 24th 2023 till November 28th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_1_7, REMOVED_10_2_0 },
			}),
			i(38313, {	-- Tabard of Fury
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from November 28th 2023 till December 26th 2023.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 },
			}),
			i(92724, {	-- Swift Windsteed (MOUNT!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from December 26th 2023 till January 30th 2024.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_2_0, REMOVED_10_2_5 },
			}),
			i(160588, {	-- Cap'n Crackers (PET!)
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from January 30th 2024 till February 27th 2024.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5 },
			}),
			i(23709, {	-- Tabard of Frost 
				-- #if AFTER 10.0.2
				-- #if BEFORE 11.0.2
				["description"] = "Amazon Prime Gaming reward from February 27th 2024 till March 26th 2024.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_10_2_5, REMOVED_10_2_6 },
			}),
		},
	}),
});
