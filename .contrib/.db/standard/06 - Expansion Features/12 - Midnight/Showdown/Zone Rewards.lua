-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	n(SHOWDOWN, {
		n(ZONE_DROPS, {
			["maps"] = {
				NAIGTAL,
				VAL,
			},
			["groups"] = {
				currency(FIELD_ACCOLADE),
				i(DARK_PARTICLE),
				i(278116),	-- Player Experience
				i(276330, {	-- Taken Riftwalker's Starbarb (COSMETIC!)
					["providers"] = {
						{ "n", 265882 },	-- Spellslinger Rem'lazar <Warp Rider>
						{ "n", 265881 },	-- Renegade Kulivero <Warp Rider>
						{ "n", 265879 },	-- Guardian Halazir <Warp Rider>
						{ "n", 265880 },	-- Techno-Medic Alazj <Warp Rider>
						{ "n", 264769 },	-- Ethereal Adjutant
						{ "n", 264876 },	-- Reaper Gorzok <Blackstar Legion>
						{ "n", 265447 },	-- Starseeker Dreadus <Blackstar Legion>
						{ "n", 265446 },	-- Vanguard Kadoxe <Blackstar Legion>
						{ "n", 265445 },	-- Mender Amatory <Blackstar Legion>
					},
				}),
				i(276298, {	-- Forgotten Fel-Shard Talon (COSMETIC!)
					["providers"] = {
						{ "n", 264571 },	-- Indomitable Mk XII
						{ "n", 264869 },	-- Nelgothar
						{ "n", 267422 },	-- Warbringer Thal'kuur
					},
				}),
			},
		}),
		n(COMMON_BOSS_DROPS, {
			["description"] = "Showdown Elite Patrol creatures have a small (<1%) chance to drop or reward these items, in addition to their most prevalent Source.",
			["sym"] = {{"select","symselector",
							SymSelector.MID_SHOWDOWN_ZONE_REWARDS,
							SymSelector.MID_SHOWDOWN_NAIGTAL_RARES},
						{"extract","itemID"}},
			["providers"] = {
				{ "n", 265882 },	-- Spellslinger Rem'lazar <Warp Rider>
				{ "n", 265881 },	-- Renegade Kulivero <Warp Rider>
				{ "n", 265879 },	-- Guardian Halazir <Warp Rider>
				{ "n", 265880 },	-- Techno-Medic Alazj <Warp Rider>
				{ "n", 264769 },	-- Ethereal Adjutant
				{ "n", 264876 },	-- Reaper Gorzok <Blackstar Legion>
				{ "n", 265447 },	-- Starseeker Dreadus <Blackstar Legion>
				{ "n", 265446 },	-- Vanguard Kadoxe <Blackstar Legion>
				{ "n", 265445 },	-- Mender Amatory <Blackstar Legion>
			},
		}),
		n(ZONE_REWARDS, {
			["sharedDescription"] = "|cffd15517It is FAR preferable to use lower-level characters to acquire these Items|r as they will always be rewarded from the constantly-rotating selection of World Quests and Bonus Objectives in the active Showdown Zone. Max level characters may see one drop after hours of active gameplay from farming the respective Rares.",
			["symselector"] = SymSelector.MID_SHOWDOWN_ZONE_REWARDS,
			["maps"] = {
				NAIGTAL,
				VAL,
			},
			["groups"] = {
				n(ARMOR, {
					filter(BACK_F, {
						i(274820),	-- Cloak of the Voracious Gorger
						i(274818),	-- Drape of Intense Darkness
						i(274821),	-- Drape of the Hal'hadar Assassin
						i(274819),	-- Fungle Fold Frock
					}),
					filter(CLOTH, {
						i(274835),	-- Bands of Pincher Sinew
						i(274834),	-- Cord of Domineering Resolve
						i(274829),	-- Creature Corruptor Slippers
						i(274828),	-- Domanaar Subjugator's Vestments
						i(274832),	-- Fel-Tainted Trousers
						i(274830),	-- Ice-Glazed Gloves
						i(274833),	-- Icy Spidersilk Mantle
						i(274831),	-- Portal Shaper's Circlet
					}),
					filter(FINGER_F, {
						i(274822),	-- Band of the Beast Reaper
						i(274825),	-- Hal'hadar Assassin's Signet
						i(274823),	-- Spongy Gill Loop
						i(274824),	-- Worldeater's Bone Ring
					}),
					filter(LEATHER, {
						i(274839),	-- Cold-World Cover
						i(274837),	-- Corrupted Hide Boots
						i(274841),	-- Frigid Cavedweller's Shoulderpads
						i(274842),	-- Gatekeeper's Leather Waistguard
						i(274838),	-- Gloves of the Descending Destroyer
						i(274840),	-- Pants of the Lost Legion
						i(274843),	-- Pincher-Proof Wristguards
						i(274836),	-- Sleet-Resistant Jerkin
					}),
					filter(MAIL, {
						i(274847),	-- Atomus's Headcover
						i(274849),	-- Frostscale Spider's Monnion
						i(274846),	-- Glacier Basin Gauntlets
						i(274851),	-- Glittering Frostscale Wraps
						i(274845),	-- Greaves of Corrupted Scale
						i(274848),	-- Legguards of Fel-Corruption
						i(274850),	-- Mercilus's Chain Waistguard
						i(274844),	-- Sleetlink Hauberk
					}),
					filter(NECK_F, {
						i(274826),	-- Coiling Smoke Chain
						i(274827),	-- Draenic Drive Chain
						i(282426),	-- Draenic Drive Chain
					}),
					filter(PLATE, {
						i(274857),	-- Chitonous Broodmother's Spaulders
						i(274853),	-- Creature Crushers
						i(274858),	-- Domanaar Battle Belt
						i(274856),	-- Felguard's Frozen Greaves
						i(274859),	-- Klaxid Plate Vambraces
						i(274855),	-- Portal-Keeper's Helm
						i(274854),	-- Shadowguard Plate Gauntlets
						i(274852),	-- Sleetstone Chestplate
					}),
					filter(TRINKET_F, {
						i(274890),	-- Enchanted Spore
						i(274893),	-- Frosty Klaxid Stinger
						i(274891),	-- Mk XII Gear Drive
						i(274892),	-- Resilient Felblood Vial
					}),
				}),
				n(WEAPONS, {
					i(274860),	-- Ancient Spore-Coated Axe
					i(274870),	-- Assassin's Void-String Bow
					i(274862),	-- Corrupted Draenei Priest's Kris
					i(274863),	-- Cudgel of the Twisted Reaper
					i(274872),	-- Darkness' Horrific Barb
					i(274865),	-- Destroyer's Drop Hammer
					i(274874),	-- Flickering Wing Separator
					i(274861),	-- Frosty Broodmother's Fang
					i(274873),	-- Funeral Attendant's Spire
					i(274871),	-- Giant Worm Piercer
					i(274867),	-- Inscribed Domanaar's Sword
					i(274868),	-- Portal Master's Shortblade
					i(274876),	-- Reinforced Fungalhide Bulwark
					i(274875),	-- Riftwalker's Lantern
					i(274864),	-- Sporebloom Gavel
					i(274866),	-- Voidwarped Edge
					i(274869),	-- Void-Iced Warglaives
				}),
			},
		}),
	}),
}))

