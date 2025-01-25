-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(LEGENDARIES, {
		i(183247),	-- Memory of a Stable Phantasma Lure
		i(183249),	-- Memory of a Vital Sacrifice
		i(183242),	-- Memory of Eonar
		i(183248),	-- Memory of Jailer's Eye
		i(183245),	-- Memory of Norgannon
		i(183246),	-- Memory of Sephuz
		i(183243),	-- Memory of the Arbiter's Judgment
		i(183244),	-- Memory of the Rattle of the Maw
		cl(DEATHKNIGHT, bubbleDownSelf({ ["classes"] = { DEATHKNIGHT } }, {
			i(182638),	-- Memory of a Frenzied Monstrosity
			i(182634),	-- Memory of a Frozen Champion's Rage
			i(182640),	-- Memory of a Reanimated Shambler
			i(182631),	-- Memory of a Vampiric Aura
			i(182625),	-- Memory of an Everlasting Grip
			i(182632),	-- Memory of Absolute Zero
			i(182628),	-- Memory of Bryndaor
			i(182637),	-- Memory of Death's Certainty
			i(182617),	-- Memory of Death's Embrace
			i(182630),	-- Memory of Gorefiend's Domination
			i(182635),	-- Memory of Koltira
			i(182627),	-- Memory of Superstrain
			i(182633),	-- Memory of the Biting Cold
			i(182629),	-- Memory of the Crimson Runes
			i(182636),	-- Memory of the Deadliest Coil
			i(182626),	-- Memory of the Phearomones
			i(186566, {	-- Memory of the Final Sentence
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186568, {	-- Memory of an Abomination's Frenzy
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186565, {	-- Memory of Rampant Transference
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186567, {	-- Memory of Insatiable Hunger
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190584, {	-- Memory of Unity (DK)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(DEMONHUNTER, bubbleDownSelf({ ["classes"] = { DEMONHUNTER } }, {
			i(183216),	-- Memory of a Burning Wound
			i(183212),	-- Memory of a Darkglare Medallion
			i(183210),	-- Memory of a Fel Bombardment
			i(183218),	-- Memory of a Fortified Fel Flame
			i(183215),	-- Memory of an Erratic Fel Core
			i(183217),	-- Memory of my Darker Nature
			i(183220),	-- Memory of Razelikh's Defilement
			i(183219),	-- Memory of Soul of Fire
			i(183213),	-- Memory of the Anguish of the Collective
			i(183214),	-- Memory of the Chaos Theory
			i(183221),	-- Memory of the Dark Flame Spirit
			i(183211),	-- Memory of the Hour of Darkness
			i(187111, {	-- Memory of Blind Faith
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187118, {	-- Memory of the Demonic Oath
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187109, {	-- Memory of a Blazing Slaughter
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187105, {	-- Memory of the Agonizing Gaze
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190587, {	-- Memory of Unity (DH)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(DRUID, bubbleDownSelf({ ["classes"] = { DRUID } }, {
			i(183231),	-- Memory of a Cat-Eye Curio
			i(183224),	-- Memory of a Deep Focus Draught
			i(183234),	-- Memory of a Luffa-Infused Embrace
			i(183232),	-- Memory of a Symmetrical Eye
			i(183229),	-- Memory of a Timeworn Dreambinder
			i(183239),	-- Memory of an Unending Growth
			i(183228),	-- Memory of Arcane Pulsars
			i(183225),	-- Memory of Lycara
			i(183227),	-- Memory of Oneth
			i(183230),	-- Memory of the Apex Predator
			i(183226),	-- Memory of the Balance of All Things
			i(183223),	-- Memory of the Circle of Life and Death
			i(183241),	-- Memory of the Dark Titan
			i(183222),	-- Memory of the Elder Druid
			i(183233),	-- Memory of the Frenzyband
			i(183235),	-- Memory of the Natural Order
			i(183240),	-- Memory of the Mother Tree
			i(183237),	-- Memory of the Sleeper
			i(183238),	-- Memory of the Verdant Infusion
			i(183236),	-- Memory of Ursoc
			i(186673, {	-- Memory of Kindred Affinity
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186577, {	-- Memory of the Unbridled Swarm
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186687, {	-- Memory of Celestial Spirits
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186609, {	-- Memory of Sinful Hysteria
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190588, {	-- Memory of Unity (DRUID)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(EVOKER, bubbleDownSelf({ ["classes"] = { EVOKER }, ["timeline"] = { ADDED_10_0_0 } }, {
			i(199552),	-- Memory of Unity (EVOKER)
		})),
		cl(HUNTER, bubbleDownSelf({ ["classes"] = { HUNTER } }, {
			i(183251),	-- Memory of a Craven Strategem
			i(183254),	-- Memory of a Dire Command
			i(183252),	-- Memory of a Trapping Apparatus
			i(183265),	-- Memory of a Wildfire Cluster
			i(183258),	-- Memory of Eagletalon's True Focus
			i(183263),	-- Memory of Poisonous Injectors
			i(183261),	-- Memory of Surging Shots
			i(183262),	-- Memory of the Butcher's Bone Fragments
			i(183256),	-- Memory of the Eredun War Order
			i(183255),	-- Memory of the Flamewaker
			i(183257),	-- Memory of the Rylakstalker's Fangs
			i(183264),	-- Memory of the Rylakstalker's Strikes
			i(183260),	-- Memory of the Serpentstalker's Trickery
			i(183253),	-- Memory of the Soulforge Embers
			i(183259),	-- Memory of the Unblinking Vigil
			i(183250),	-- Memory of the Wild Call
			i(187229, {	-- Memory of the Pact of the Soulstalkers
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187230, {	-- Memory of the Bag of Munitions
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187231, {	-- Memory of the Fragments of the Elder Antlers
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187232, {	-- Memory of the Pouch of Razor Fragments
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190589, {	-- Memory of Unity (HUNTER)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
			i(183274),	-- Memory of a Fevered Incantation
			i(183268),	-- Memory of a Grisly Icicle
			i(183272),	-- Memory of a Siphoning Storm
			i(183273),	-- Memory of a Temporal Warp
			i(183270),	-- Memory of an Arcane Bombardment
			i(183267),	-- Memory of an Expanded Potential
			i(183280),	-- Memory of Fragments of Ice
			i(183281),	-- Memory of Slick Ice
			i(183278),	-- Memory of the Cold Front
			i(183266),	-- Memory of the Disciplinary Command
			i(183275),	-- Memory of the Firestorm
			i(183279),	-- Memory of the Freezing Winds
			i(183271),	-- Memory of the Infinite Arcane
			i(183276),	-- Memory of the Molten Sky
			i(183277),	-- Memory of the Sun King
			i(183269),	-- Memory of the Triune Ward
			i(186591, {	-- Memory of the Harmonic Echo
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186621, {	-- Memory of Death's Fathom
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187280, {	-- Memory of the Fae Heart
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186635, {	-- Memory of Sinful Delight
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190590, {	-- Memory of Unity (MAGE)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(MONK, bubbleDownSelf({ ["classes"] = { MONK } }, {
			i(183288),	-- Memory of a Celestial Infusion
			i(183290),	-- Memory of Ancient Teachings
			i(183287),	-- Memory of Charred Passions
			i(183292),	-- Memory of Clouded Focus
			i(183284),	-- Memory of Escaping from Reality
			i(183295),	-- Memory of Keefer
			i(183286),	-- Memory of Shaohao
			i(183289),	-- Memory of Stormstout
			i(183282),	-- Memory of the Fatal Touch
			i(183283),	-- Memory of the Invoker
			i(183294),	-- Memory of the Jade Ignition
			i(183296),	-- Memory of the Last Emperor
			i(183293),	-- Memory of the Morning's Tear
			i(183285),	-- Memory of the Swiftsure Wraps
			i(183297),	-- Memory of Xuen
			i(183291),	-- Memory of Yu'lon
			i(187237, {	-- Memory of a Call to Arms
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187217, {	-- Memory of the Bountiful Brew
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187258, {	-- Memory of the Faeline Harmony
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187277, {	-- Memory of Sinister Teachings
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190591, {	-- Memory of Unity (MONK)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(PALADIN, bubbleDownSelf({ ["classes"] = { PALADIN } }, {
			i(183307),	-- Memory of a Holy Sigil
			i(183312),	-- Memory of a Relentless Inquisitor
			i(183303),	-- Memory of Maraad's Dying Breath
			i(183309),	-- Memory of the Ardent Protector
			i(183308),	-- Memory of the Endless Kings
			i(183311),	-- Memory of the Final Verdict
			i(183313),	-- Memory of the Lightbringer's Tempest
			i(183300),	-- Memory of the Magistrate's Judgment
			i(183298),	-- Memory of the Mad Paragon
			i(183306),	-- Memory of the Righteous Bulwark
			i(183304),	-- Memory of the Shadowbreaker
			i(183305),	-- Memory of the Shock Barrier
			i(183299),	-- Memory of the Sun's Cycles
			i(183302),	-- Memory of the Sunwell's Bloom
			i(183310),	-- Memory of the Vanguard's Momentum
			i(183301),	-- Memory of Uther
			i(187106, {	-- Memory of Divine Resonance
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187107, {	-- Memory of the Duty-Bound Gavel
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187132, {	-- Memory of the Seasons of Plenty
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187127, {	-- Memory of Radiant Embers
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190592, {	-- Memory of Unity (PALADIN)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
			i(183318),	-- Memory of a Clear Mind
			i(183322),	-- Memory of a Divine Image
			i(183324),	-- Memory of a Harmonious Apparatus
			i(183317),	-- Memory of a Heavenly Vault
			i(183329),	-- Memory of a Prism of Shadow and Fire
			i(183325),	-- Memory of Archbishop Benedictus
			i(183314),	-- Memory of Cauterizing Shadows
			i(183323),	-- Memory of Flash Concentration
			i(183315),	-- Memory of Measured Contemplation
			i(183319),	-- Memory of my Crystalline Reflection
			i(183328),	-- Memory of Talbadar
			i(183320),	-- Memory of the Kiss of Death
			i(183327),	-- Memory of the Painbreaker Psalm
			i(183321),	-- Memory of the Penitent One
			i(183316),	-- Memory of the Twins of the Sun Priestess
			i(183326),	-- Memory of the Void's Eternal Call
			i(187163, {	-- Memory of the Spheres' Harmony
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187160, {	-- Memory of Pallid Command
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187161, {	-- Memory of Bwonsamdi's Pact
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187162, {	-- Memory of Shadow Word: Manipulation
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190593, {	-- Memory of Unity (PRIEST)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(ROGUE, bubbleDownSelf({ ["classes"] = { ROGUE } }, {
			i(183339),	-- Memory of a Concealed Bluderbuss
			i(183341),	-- Memory of a Guile Charm
			i(183342),	-- Memory of Akaari's Soul Fragment
			i(183330),	-- Memory of Bloodfang's Essence
			i(183338),	-- Memory of Celerity
			i(183344),	-- Memory of Finality
			i(183340),	-- Memory of Greenskin
			i(183331),	-- Memory of Invigorating Shadowdust
			i(183334),	-- Memory of the Dashing Scoundrel
			i(183343),	-- Memory of the Deathly Shadows
			i(183335),	-- Memory of the Doomblade
			i(183336),	-- Memory of the Duskwalker's Patch
			i(183332),	-- Memory of the Master Assassin's Mark
			i(183345),	-- Memory of the Rotten
			i(183337),	-- Memory of the Zoldyck Insignia
			i(183333),	-- Memory of Tiny Toxic Blade
			i(186775, {	-- Memory of Resounding Clarity
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186712, {	-- Memory of the Deathspike
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186676, {	-- Memory of the Toxic Onslaught
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186710, {	-- Memory of the Obedient
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190594, {	-- Memory of Unity (ROGUE)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(SHAMAN, bubbleDownSelf({ ["classes"] = { SHAMAN } }, {
			i(183346),	-- Memory of an Ancestral Reminder
			i(183358),	-- Memory of an Earthen Harmony
			i(183351),	-- Memory of an Elemental Equilibrium
			i(183348),	-- Memory of Deeply Rooted Elements
			i(183347),	-- Memory of Devastating Chains
			i(183359),	-- Memory of Jonat
			i(183349),	-- Memory of the Deeptremor Stone
			i(183352),	-- Memory of the Demise of Skybreaker
			i(183354),	-- Memory of the Doom Winds
			i(183355),	-- Memory of the Frost Witch
			i(183350),	-- Memory of the Great Sundering
			i(183356),	-- Memory of the Primal Lava Actuators
			i(183360),	-- Memory of the Primal Tide Core
			i(183361),	-- Memory of the Spiritwalker's Tidal Totem
			i(183353),	-- Memory of the Windspeaker's Lava Resurgence
			i(183357),	-- Memory of the Witch Doctor
			i(187259, {	-- Memory of the Raging Vesper Vortex
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186689, {	-- Memory of the Splintered Elements
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187223, {	-- Memory of the Seeds of Rampant Growth
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187224, {	-- Memory of the Elemental Conduit
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190595, {	-- Memory of Unity (SHAMAN)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(WARLOCK, bubbleDownSelf({ ["classes"] = { WARLOCK } }, {
			i(183362),	-- Memory of a Malefic Wrath
			i(183373),	-- Memory of an Implosive Potential
			i(183363),	-- Memory of Azj'Aqir's Agony
			i(183374),	-- Memory of Azj'Aqir's Cinders
			i(183376),	-- Memory of Azj'Aqir's Madness
			i(183367),	-- Memory of Demonic Synergy
			i(183364),	-- Memory of Sacrolash's Dark Strike
			i(183366),	-- Memory of the Claw of Endereth
			i(183365),	-- Memory of the Consuming Wrath
			i(183370),	-- Memory of the Core of the Balespider
			i(183368),	-- Memory of the Dark Portal
			i(183375),	-- Memory of the Diabolic Raiment
			i(183372),	-- Memory of the Grim Inquisitor
			i(183371),	-- Memory of the Horned Nightmare
			i(183377),	-- Memory of the Ymirjar
			i(183369),	-- Memory of Wilfred's Sigil of Superior Summoning
			i(187225, {	-- Memory of the Languishing Soul Detritus
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187226, {	-- Memory of the Shards of Annihilation
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187227, {	-- Memory of the Decaying Soul Satchel
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(187228, {	-- Memory of the Contained Perpetual Explosion
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190596, {	-- Memory of Unity (WARLOCK)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
		cl(WARRIOR, bubbleDownSelf({ ["classes"] = { WARRIOR } }, {
			i(183382),	-- Memory of a Battlelord
			i(183380),	-- Memory of a Seismic Reverberation
			i(183388),	-- Memory of a Reckless Defense
			i(183390),	-- Memory of a Reprisal
			i(183383),	-- Memory of an Enduring Blow
			i(183393),	-- Memory of an Unbreakable Will
			i(183386),	-- Memory of Fujieda
			i(183389),	-- Memory of the Berserker's Will
			i(183387),	-- Memory of the Deathmaker
			i(183384),	-- Memory of the Exploiter
			i(183378),	-- Memory of the Leaper
			i(183379),	-- Memory of the Misshapen Mirror
			i(183392),	-- Memory of the Thunderlord
			i(183381),	-- Memory of the Tormented Kings
			i(183385),	-- Memory of the Unhinged
			i(183391),	-- Memory of the Wall
			i(187511, {	-- Memory of Elysian Might
				["customCollect"] = "SL_COV_KYR",	-- Kyrian Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186570, {	-- Memory of Glory
				["customCollect"] = "SL_COV_NEC",	-- Necrolord Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186576, {	-- Memory of Nature's Fury
				["customCollect"] = "SL_COV_NFA",	-- Night Fae Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(186572, {	-- Memory of the Sinful Surge
				["customCollect"] = "SL_COV_VEN",	-- Venthyr Covenant
				["timeline"] = { ADDED_9_1_0 },
			}),
			i(190598, {	-- Memory of Unity (WARRIOR)
				["timeline"] = { ADDED_9_2_0 },
			}),
		})),
	}),
})));