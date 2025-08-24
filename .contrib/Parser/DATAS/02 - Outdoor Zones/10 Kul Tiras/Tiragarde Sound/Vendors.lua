---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		m(BORALUS, {
			["icon"] = 2011139,
			-- Almost all rep for the Proudmoore Faction comes from Tirisgarde, so the rep vendor should show up in the Minilist.
			-- Horde does not have this issue, thanks blizz.
			["groups"] = {
				n(VENDORS, {
					n(135808, {	-- Provisioner Fray <Proudmoore Admiralty Emissary>
						["coord"] = { 67.5, 21.5, BORALUS },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"select","itemID",
							161976,	-- Admiralty Marine's Duffel
							161574, -- Boarding Action Vambraces
							161571,	-- Cordage Sliding Grips
							163200,	-- Cursed Spyglass (TOY!)
							162380,	-- Design: Tidal Amethyst Loop [Rank 3] (RECIPE!)
							161570,	-- First Lieutenant's Ceremonial Belt
							162304,	-- Formula: Enchant Ring - Pact of Mastery [Rank 3] (RECIPE!)
							162317,	-- Formula: Enchant Weapon - Masterful Navigation [Rank 3] (RECIPE!)
							162316,	-- Formula: Enchant Weapon - Siphoning [Rank 3] (RECIPE!)
							163201,	-- Gnoll Targetting Barrel (TOY!)
							161568,	-- Maritime Spellweaver's Leggings
							161569,	-- Master-At-Arms Wristguards
							160534,	-- Navy Blue Boat Cloak
							160540,	-- Proudmoore Admiralty Tabard
							161573,	-- Proudmoore Marine's Legplate
							163316,	-- Recipe: Battle Potion of Intellect [Rank 3] (RECIPE!)
							162254,	-- Recipe: Coastal Mana Potion [Rank 3] (RECIPE!)
							162359,	-- Technique: Contract: Proudmoore Admiralty [Rank 2] (RECIPE!)
							162134,	-- Recipe: Flask of the Vast Horizon [Rank 3] (RECIPE!)
							162414,	-- Pattern: Hardened Tempest Knuckles [Rank 3] (RECIPE!)
							162413,	-- Pattern: Mistscale Knuckles [Rank 3] (RECIPE!)
							162130,	-- Recipe: Potion of Bursting Blood [Rank 3] (RECIPE!)
							161911,	-- Admiralty Stallion (MOUNT!)
							161879,	-- Proudmoore Sea Scout (MOUNT!)
							161567,	-- Sailing Master's Sash
							162327,	-- Schematic: AZ3-R1-T3 Bionic Bifocals [Rank 2] (RECIPE!)
							162328,	-- Schematic: AZ3-R1-T3 Bionic Bifocals [Rank 3] (RECIPE!)
							166277,	-- Schematic: Unstable Temporal Time Shift [Rank 2] (RECIPE!)
							161572,	-- Yardarm Sharpshooter's Boots
						}},
					}),
				}),
			},
		}),
		n(VENDORS, {
			n(134446, {	-- Francois
				["coord"] = { 52.8, 31.1, TIRAGARDE_SOUND },
				["description"] = "Must have 1 million gold in your inventory before he will talk to you. You do NOT lose any gold in this transaction.",
				["groups"] = {
					i(158077),	-- Francois (PET!)
				},
			}),
			n(142838, {	-- Grumpy Grimble
				["description"] = "When you have 150 BfA Inscription, speak to the NPC and he will teach you the technique.",
				["coord"] = { 49.8, 36.8, TIRAGARDE_SOUND },
				["groups"] = {
					i(162030),	-- Technique: Glyph of the Humble Flyer (RECIPE!)
				},
			}),
			n(128702, {	-- Roko <Wandering Merchant>
				--	this vendor has a quest unlock requirement; need to figure out precisely which one and attach it. wowhead comments just say "unlock freehold," which isn't very specific.
				["coord"] = { 79.6, 81.8, TIRAGARDE_SOUND },
				["groups"] = {
					i(141042),	-- Technique: Glyph of Autumnal Bloom (RECIPE!)
					i(141030),	-- Technique: Glyph of Cracked Ice (RECIPE!)
					i(141037),	-- Technique: Glyph of Mana Touched Souls (RECIPE!)
					i(184099, {	-- Technique: Glyph of the Aerial Chameleon (RECIPE!)
						["timeline"] = { ADDED_9_0_2 },
					}),
					i(184098, {	-- Technique: Glyph of the Aquatic Chameleon (RECIPE!)
						["timeline"] = { ADDED_9_0_2 },
					}),
					i(141068),	-- Technique: Glyph of the Blazing Savior (RECIPE!)
					i(141033),	-- Technique: Glyph of the Crimson Shell (RECIPE!)
					i(141046),	-- Technique: Glyph of the Dire Stable (RECIPE!)
					i(141040),	-- Technique: Glyph of the Feral Chameleon (RECIPE!)
					i(141062),	-- Technique: Glyph of the Inquisitor's Eye (RECIPE!)
					i(184095, {	-- Technique: Glyph of the Swift Chameleon (RECIPE!)
						["timeline"] = { ADDED_9_0_2 },
					}),
					i(141055),	-- Technique: Glyph of Yu'lon's Grace (RECIPE!)
				},
			}),
		}),
	}),
})));
