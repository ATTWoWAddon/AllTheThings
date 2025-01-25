---------------------------------------------
--    E S S E N C E S      M O D U L E     --
---------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(AZERITE_ESSENCES, {
		["description"] = "The Heart of Azeroth, rewarded by Magni in the Heart of Chamber (Silithus), is required to learn Essences and maybe even to have them drop. Essences have two effects on them, one major and one minor power.\n\nPlayers may place an Essence in every unlocked Major or Minor slot in the Heart of Azeroth.\n\nThe major power will only be activated if the Essence is placed in the central Major slot.\n\nThe minor power will be activated if the Essence is placed in any Minor slot or the central Major slot.\n\nThe same Essence cannot be placed in multiple slots.",
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(13779, {		-- Phenomenal Cosmic Power
					["timeline"] = { ADDED_8_2_0, REMOVED_9_0_1 },
					["g"] = {
						title(407, {		-- <Name>, Azeroth's Champion
							["timeline"] = { ADDED_8_2_0, REMOVED_9_0_1 },
						}),
					},
				}),
			}),
			n(ALL_ROLES, {
				n(RANK_ONE, {
					az(32, 1, {	-- Conflict and Strife (Rank 1)
						["provider"] = { "i", 169902 },	-- Finger-Bone Trophy of Battle
					}),
					az(27, 1, {	-- Memory of Lucid Dreams (Rank 1)
						["provider"] = { "i", 168846 },	-- Memory of Lucid Dreams
					}),
					az(15, 1, {	-- Ripple in Space (Rank 1)
						["provider"] = { "i", 168850 },	-- Time-Lost Battlefield Memento
					}),
					az(12, 1, {	-- The Crucible of Flame (Rank 1)
						["provider"] = { "i", 168611 },	-- Petrified Ebony Scale
					}),
					az(37, 1, {	-- The Formless Void (Rank 1)
						["provider"] = { "i", 173883 },	-- Replicating Void Droplets
					}),
					az(22, 1, {	-- Vision of Perfection (Rank 1)
						["provider"] = { "i", 168842 },	-- Engine of Mecha-Perfection
					}),
					az(4, 1, {	-- Worldvein Resonance (Rank 1)
						["provider"] = { "i", 168615 },	-- Volatile Worldvein
					}),
				}),
				n(RANK_TWO, {
					az(32, 2, {	-- Conflict and Strife (Rank 2)
						["provider"] = { "i", 169901 },	-- Etched Bone Trophy of the Vanquished
					}),
					az(27, 2, {	-- Memory of Lucid Dreams (Rank 2)
						["provider"] = { "i", 168847 },	-- Pearl of Manifest Ambitions
					}),
					az(15, 2, {	-- Ripple in Space (Rank 2)
						["provider"] = { "i", 168851 },	-- Enduring Battlefield Memento
					}),
					az(12, 2, {	-- The Crucible of Flame (Rank 2)
						["provider"] = { "i", 168612 },	-- Dreamglow Dragonscale
					}),
					az(37, 2, {	-- The Formless Void (Rank 2)
						["provider"] = { "i", 173884 },	-- Burgeoning Void Droplet
					}),
					az(22, 2, {	-- Vision of Perfection (Rank 2)
						["provider"] = { "i", 168843 },	-- Perfectly Timed Differential
					}),
					az(4, 2, {	-- Worldvein Resonance (Rank 2)
						["provider"] = { "i", 168616 },	-- Stalwart Worldvein
					}),
				}),
				n(RANK_THREE, {
					az(32, 3, {	-- Conflict and Strife (Rank 3)
						["provider"] = { "i", 169900 },	-- Rib-Bone Choker of Dominance
					}),
					az(27, 3, {	-- Memory of Lucid Dreams (Rank 3)
						["provider"] = { "i", 168848 },	-- Pearl of Perspicuous Intentions
					}),
					az(15, 3, {	-- Ripple in Space (Rank 3)
						["provider"] = { "i", 168852 },	-- Stalwart Battlefield Memento
					}),
					az(12, 3, {	-- The Crucible of Flame (Rank 3)
						["provider"] = { "i", 168613 },	-- Tempered Scale of the Scarlet Broodmother
					}),
					az(37, 3, {	-- The Formless Void (Rank 3)
						["provider"] = { "i", 173885 },	-- Volatile Void Droplet
					}),
					az(22, 3, {	-- Vision of Perfection (Rank 3)
						["provider"] = { "i", 168844 },	-- Perfection-Enhancing Gearbox
					}),
					az(4, 3, {	-- Worldvein Resonance (Rank 3)
						["provider"] = { "i", 168617 },	-- Fluctuating Worldvein
					}),
				}),
				n(RANK_FOUR, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 } }, {
					elitepvp(az(32, 4, {	-- Conflict and Strife (Rank 4)
						["provider"] = { "i", 169899 },	-- Polished Skull Trophy
					})),
					az(27, 4, {	-- Memory of Lucid Dreams (Rank 4)
						["provider"] = { "i", 168849 },	-- Pearl of Luminous Designs
					}),
					az(15, 4, {	-- Ripple in Space (Rank 4)
						["provider"] = { "i", 168853 },	-- Glinting Battlefield Memento
					}),
					az(12, 4, {	-- The Crucible of Flame (Rank 4)
						["provider"] = { "i", 168614 },	-- Charged Scale of the Blue Aspect
					}),
					az(37, 4, {	-- The Formless Void (Rank 4)
						["provider"] = { "i", 173886 },	-- Bursting Void Droplet
					}),
					az(22, 4, {	-- Vision of Perfection (Rank 4)
						["provider"] = { "i", 168845 },	-- Mecha-Perfection Turbo
					}),
					az(4, 4, {	-- Worldvein Resonance (Rank 4)
						["provider"] = { "i", 168618 },	-- Brilliant Worldvein
					}),
				})),
			}),
			n(DPS_ROLE, {
				n(RANK_ONE, {
					az(23, 1, {	-- Blood of the Enemy (Rank 1)
						["provider"] = { "i", 168442 },	-- Roiling Blood of the Vanquished
					}),
					az(35, 1, {	-- Breath of the Dying (Rank 1)
						["provider"] = { "i", 173280 },	-- Token of Death's Door
					}),
					az(14, 1, {	-- Condensed Life-Force (Rank 1)
						["provider"] = { "i", 168854 },	-- Animated Elemental Heart
					}),
					az(5, 1, {	-- Essence of the Focusing Iris (Rank 1)
						["provider"] = { "i", 168620 },	-- Converging Lens of the Focusing Iris
					}),
					az(6, 1, {	-- Purification Protocol (Rank 1)
						["provider"] = { "i", 168858 },	-- Titan Purification Protocols
					}),
					az(36, 1, {	-- Spark of Inspiration (Rank 1)
						["provider"] = { "i", 173288 },	-- Overflowing Azerite Geode
					}),
					az(28, 1, {	-- The Unbound Force (Rank 1)
						["provider"] = { "i", 168863 },	-- Unbound Azerite Slivershards
					}),
				}),
				n(RANK_TWO, {
					az(23, 2, {	-- Blood of the Enemy (Rank 2)
						["provider"] = { "i", 168443 },	-- Agitated Blood of the Dominated
					}),
					az(35, 2, {	-- Breath of the Dying (Rank 2)
						["provider"] = { "i", 173281 },	-- Token of Death's Mark
					}),
					az(14, 2, {	-- Condensed Life-Force (Rank 2)
						["provider"] = { "i", 168855 },	-- Pulsing Elemental Heart
					}),
					az(5, 2, {	-- Essence of the Focusing Iris (Rank 2)
						["provider"] = { "i", 168621 },	-- Magnifying Lens of the Focusing Iris
					}),
					az(6, 2, {	-- Purification Protocol (Rank 2)
						["provider"] = { "i", 168859 },	-- Targeted Purification Protocols
					}),
					az(36, 2, {	-- Spark of Inspiration (Rank 2)
						["provider"] = { "i", 173289 },	-- Pulsing Azerite Geode
					}),
					az(28, 2, {	-- The Unbound Force (Rank 2)
						["provider"] = { "i", 168864 },	-- Sharpened Azerite Slivershards
					}),
				}),
				n(RANK_THREE, {
					az(23, 3, {	-- Blood of the Enemy (Rank 3)
						["provider"] = { "i", 168444 },	-- Churning Blood of the Conquered
					}),
					az(35, 3, {	-- Breath of the Dying (Rank 3)
						["provider"] = { "i", 173282 },	-- Token of Death's Glee
					}),
					az(14, 3, {	-- Condensed Life-Force (Rank 3)
						["provider"] = { "i", 168856 },	-- Resonating Elemental Heart
					}),
					az(5, 3, {	-- Essence of the Focusing Iris (Rank 3)
						["provider"] = { "i", 168622 },	-- Stabilizing Lens of the Focusing Iris
					}),
					az(6, 3, {	-- Purification Protocol (Rank 3)
						["provider"] = { "i", 168860 },	-- Enhanced Purification Protocols
					}),
					az(36, 3, {	-- Spark of Inspiration (Rank 3)
						["provider"] = { "i", 173290 },	-- Quickening Azerite Geode
					}),
					az(28, 3, {	-- The Unbound Force (Rank 3)
						["provider"] = { "i", 168865 },	-- Polazired Azerite Slivershards
					}),
				}),
				n(RANK_FOUR, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 } }, {
					az(23, 4, {	-- Blood of the Enemy (Rank 4)
						["provider"] = { "i", 168814 },	-- Animated Blood of the Decimated
					}),
					az(35, 4, {	-- Breath of the Dying (Rank 4)
						["provider"] = { "i", 173283 },	-- Token of a Brilliant Death
					}),
					az(14, 4, {	-- Condensed Life-Force (Rank 4)
						["provider"] = { "i", 168857 },	-- Sparkling Elemental Heart
					}),
					az(5, 4, {	-- Essence of the Focusing Iris (Rank 4)
						["provider"] = { "i", 168623 },	-- Biconcavic Lens of the Focusing Iris
					}),
					az(6, 4, {	-- Purification Protocol (Rank 4)
						["provider"] = { "i", 168861 },	-- Ultimate Purification Protocols
					}),
					az(36, 4, {	-- Spark of Inspiration (Rank 4)
						["provider"] = { "i", 173291 },	-- Luminous Azerite Geode
					}),
					az(28, 4, {	-- The Unbound Force (Rank 4)
						["provider"] = { "i", 168866 },	-- Incandescent Azerite Slivershards
					}),
				})),
			}),
			n(HEALER_ROLE, bubbleDownSelf({
				["classes"] = HEALERS,
			},{
				n(RANK_ONE, {
					az(18, 1, {	-- Artifice of Time (Rank 1)
						["provider"] = { "i", 168920 },	-- Azerite-Encrusted Timequartz
					}),
					az(20, 1, {	-- Life-Binder's Invocation (Rank 1)
						["provider"] = { "i", 168924 },	-- Bursting Seed of Life
					}),
					az(24, 1, {	-- Spirit of Preservation (Rank 1)
						["provider"] = { "i", 168436 },	-- Focused Star Point
					}),
					az(17, 1, {	-- The Ever-Rising Tide (Rank 1)
						["provider"] = { "i", 168928 },	-- Tablet of the Balancing Tides
					}),
					az(19, 1, {	-- The Well of Existence (Rank 1)
						["provider"] = { "i", 168932 },	-- Reactive Existence Battery
					}),
					az(16, 1, {	-- Unwavering Ward (Rank 1)
						["provider"] = { "i", 168936 },	-- Ward of Unwavering Hope
					}),
					az(21, 1, {	-- Vitality Conduit (Rank 1)
						["provider"] = { "i", 168941 },	-- Vitality Redistribution Lattice
					}),
				}),
				n(RANK_TWO, {
					az(18, 2, {	-- Artifice of Time (Rank 2)
						["provider"] = { "i", 168921 },	-- Azerite-Infused Timequartz
					}),
					az(20, 2, {	-- Life-Binder's Invocation (Rank 2)
						["provider"] = { "i", 168925 },	-- Replicating Seed of Abundance
					}),
					az(24, 2, {	-- Spirit of Preservation (Rank 2)
						["provider"] = { "i", 168439 },	-- Swirling Star Dust
					}),
					az(17, 2, {	-- The Ever-Rising Tide (Rank 2)
						["provider"] = { "i", 168929 },	-- Codex of the Never-Ending Tides
					}),
					az(19, 2, {	-- The Well of Existence (Rank 2)
						["provider"] = { "i", 168933 },	-- Enhanced Existence Capacitor
					}),
					az(16, 2, {	-- Unwavering Ward (Rank 2)
						["provider"] = { "i", 168937 },	-- Ward of Reciprocation
					}),
					az(21, 2, {	-- Vitality Conduit (Rank 2)
						["provider"] = { "i", 168942 },	-- Mesh of Expanding Vitality
					}),
				}),
				n(RANK_THREE, {
					az(18, 3, {	-- Artifice of Time (Rank 3)
						["provider"] = { "i", 168922 },	-- Azerite-Fueled Timequartz
					}),
					az(20, 3, {	-- Life-Binder's Invocation (Rank 3)
						["provider"] = { "i", 168926 },	-- Lingering Seed of Renewal
					}),
					az(24, 3, {	-- Spirit of Preservation (Rank 3)
						["provider"] = { "i", 168440 },	-- Gleaming Star Shard
					}),
					az(17, 3, {	-- The Ever-Rising Tide (Rank 3)
						["provider"] = { "i", 168930 },	-- Tome of the Quickening Tides
					}),
					az(19, 3, {	-- The Well of Existence (Rank 3)
						["provider"] = { "i", 168934 },	-- Calibrated Existence Gauge
					}),
					az(16, 3, {	-- Unwavering Ward (Rank 3)
						["provider"] = { "i", 168938 },	-- Ward of Mutual Aid
					}),
					az(21, 3, {	-- Vitality Conduit (Rank 3)
						["provider"] = { "i", 168943 },	-- Grid of Bursting Vitality
					}),
				}),
				n(RANK_FOUR, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 } }, {
					az(18, 4, {	-- Artifice of Time (Rank 4)
						["provider"] = { "i", 168923 },	-- Unburdened Azerite Timequartz
					}),
					az(20, 4, {	-- Life-Binder's Invocation (Rank 4)
						["provider"] = { "i", 168927 },	-- Seed of Vibrant Blooms
					}),
					az(24, 4, {	-- Spirit of Preservation (Rank 4)
						["provider"] = { "i", 168816 },	-- Pulsing Star Heart
					}),
					az(17, 4, {	-- The Ever-Rising Tide (Rank 4)
						["provider"] = { "i", 168931 },	-- Vellum of Illuminating Tides
					}),
					az(19, 4, {	-- The Well of Existence (Rank 4)
						["provider"] = { "i", 168935 },	-- Existence Vibrancy Display
					}),
					az(16, 4, {	-- Unwavering Ward (Rank 4)
						["provider"] = { "i", 168940 },	-- Ward of Unimaginable Brilliance (Rank 4)
					}),
					az(21, 4, {	-- Vitality Conduit (Rank 4)
						["provider"] = { "i", 168944 },	-- Web of Unbridled Vitality
					}),
				})),
			})),
			n(TANK_ROLE, bubbleDownSelf({
				["classes"] = TANKS,
			},{
				n(RANK_ONE, {
					az(25, 1, {	-- Aegis of the Deep (Rank 1)
						["provider"] = { "i", 168837 },	-- Depth Forged Aegis
					}),
					az(7, 1, {	-- Anima of Life and Death (Rank 1)
						["provider"] = { "i", 168399 },	-- Fetish of the Dark Caverns
					}),
					az(2, 1, {	-- Azeroth's Undying Gift (Rank 1)
						["provider"] = { "i", 168328 },	-- Hardened Azerite Formation
					}),
					az(13, 1, {	-- Nullification Dynamo (Rank 1)
						["provider"] = { "i", 168400 },	-- Null Force Containment Unit
					}),
					az(3, 1, {	-- Sphere of Suppression (Rank 1)
						["provider"] = { "i", 168578 },	-- Sphere of Suppressed Force
					}),
					az(34, 1, {	-- Strength of the Warden (Rank 1)
						["provider"] = { "i", 173308 },	-- Mark of Boistrous Duty
					}),
					az(33, 1, {	-- Touch of the Everlasting (Rank 1)
						["provider"] = { "i", 168573 },	-- Death-Resistant Leaf
					}),
				}),
				n(RANK_TWO, {
					az(25, 2, {	-- Aegis of the Deep (Rank 2)
						["provider"] = { "i", 168838 },	-- Enduring Bulwark of the Depths
					}),
					az(7, 2, {	-- Anima of Life and Death (Rank 2)
						["provider"] = { "i", 168558 },	-- Fetish of the Deep Dungeons
					}),
					az(2, 2, {	-- Azeroth's Undying Gift (Rank 2)
						["provider"] = { "i", 168536 },	-- Recrystallizing Azerite Formation
					}),
					az(13, 2, {	-- Nullification Dynamo (Rank 2)
						["provider"] = { "i", 168566 },	-- Null Force Cooling Unit
					}),
					az(3, 2, {	-- Sphere of Suppression (Rank 2)
						["provider"] = { "i", 168579 },	-- Sphere of Unrestrained Fury
					}),
					az(34, 2, {	-- Strength of the Warden (Rank 2)
						["provider"] = { "i", 173309 },	-- Water Dancer's Technique
					}),
					az(33, 2, {	-- Touch of the Everlasting (Rank 2)
						["provider"] = { "i", 168574 },	-- Petrified Living Bark
					}),
				}),
				n(RANK_THREE, {
					az(25, 3, {	-- Aegis of the Deep (Rank 3)
						["provider"] = { "i", 168839 },	-- Regenerating Barrier of the Depths
					}),
					az(7, 3, {	-- Anima of Life and Death (Rank 3)
						["provider"] = { "i", 168559 },	-- Fetish of the Hidden Labyrinths
					}),
					az(2, 3, {	-- Azeroth's Undying Gift (Rank 3)
						["provider"] = { "i", 168537 },	-- Tempered Azerite Formation
					}),
					az(13, 3, {	-- Nullification Dynamo (Rank 3)
						["provider"] = { "i", 168568 },	-- Null Force Nullifier
					}),
					az(3, 3, {	-- Sphere of Suppression (Rank 3)
						["provider"] = { "i", 168580 },	-- Sphere of Leeched Mobility
					}),
					az(34, 3, {	-- Strength of the Warden (Rank 3)
						["provider"] = { "i", 173310 },	-- Manual of Unbalanced Tactics
					}),
					az(33, 3, {	-- Touch of the Everlasting (Rank 3)
						["provider"] = { "i", 168575 },	-- Branch of Rejuvenating Rings
					}),
				}),
				n(RANK_FOUR, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 } }, {
					az(25, 4, {	-- Aegis of the Deep (Rank 4)
						["provider"] = { "i", 168840 },	-- Resplendent Bastion of the Depths
					}),
					az(7, 4, {	-- Anima of Life and Death (Rank 4)
						["provider"] = { "i", 168560 },	-- Fetish of the Gilded Catacombs
					}),
					az(2, 4, {	-- Azeroth's Undying Gift (Rank 4)
						["provider"] = { "i", 168538 },	-- Dazzling Azerite Formation
					}),
					az(13, 4, {	-- Nullification Dynamo (Rank 4)
						["provider"] = { "i", 168569 },	-- Null Force Visualizer
					}),
					az(3, 4, {	-- Sphere of Suppression (Rank 4)
						["provider"] = { "i", 168581 },	-- Sphere of Incandescent Neutralization
					}),
					az(34, 4, {	-- Strength of the Warden (Rank 4)
						["provider"] = { "i", 173311 },	-- Resplendent Warden's Badge
					}),
					az(33, 4, {	-- Touch of the Everlasting (Rank 4)
						["provider"] = { "i", 168576 },	-- Roots of Magnificent Revival
					}),
				})),
			})),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, {
	n(AZERITE_ESSENCES, {
		q(56951),	-- triggered when making r2 of the Eternal Palace HoA essence
		q(56944),	-- triggered when making r2 of the Eternal Palace HoA essence
		q(57033),	-- R1 Anima of Life and Death
		q(57044),	-- R2 Anima of Life and Death
		q(57032),	-- R1 Converging Lens of the Focusing Iris
		q(62688),	-- R1 Converging Lens of the Focusing Iris
		q(57035),	-- R1 Bursting Seed of Life
		q(57036),	-- R2 Magnifying Lens of the Focusing Iris
		q(62689),	-- R2 Magnifying Lens of the Focusing
		q(57034),	-- R2 Replicating Seed of Abundance
	}),
}));