---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true, 
				-- #if BEFORE DF
				["lvl"] = 45, 
				-- #endif
			},{
				q(46209, {	-- A Flare In The Dark
					["classes"] = { HUNTER },
				}),
				q(45473, {	-- A Giant Problem
					["g"] = {
						i(146947),	-- Sunken Cargo (QI!)
					},
				}),
				q(46932),	-- A Tad More Corruption
				q(45988, {	-- Ancient Bones
					["g"] = {
						i(144238),	-- Ancient Bones (QI!)
					},
				}),
				q(46105, {	-- Arachnid Superiority
					["g"] = {
						i(147206),	-- Potent Venom Sac (QI!)
					},
				}),
				q(46104),	-- Arachnid Toxicity
				q(45694),	-- Arachnicide
				q(46750),	-- Battery Backup
				q(45559),	-- Behind Enemy Portals
				q(45542, {	-- Behind Enemy Portals
					-- NOTE: There are 3 versions of this world quest but only this one can be used for the achievement!
					ach(11681),	-- Crate Expectations
				}),
				q(45520),	-- Behind Enemy Portals
				q(46073),	-- Break Their Garrison
				q(46761, {	-- Brew Bandits
					["g"] = {
						i(146896),	-- Hozen Vaulting Staff (QI!)
					},
				}),
				q(46068),	-- Brute Wrangling
				q(46201),	-- By Water Be Purged
				q(46814),	-- Call of the Frostwyrm
				q(44846, {	-- Clearing the Path
					["classes"] = exclude(PALADIN, ALL_CLASSES),
				}),
				q(45178),	-- Contagion Containment
				q(45358),	-- Contagion Containment
				q(45531),	-- Creeping Fel
				q(45837),	-- Creeping Fel
				q(46821),	-- Creepy Crawlies
				q(45969, {	-- Defense of the Ancient
					["classes"] = { DRUID },
				}),
				q(45970),	-- Duty's End
				q(46829, {	-- Elemental Abuse
					["g"] = {
						i(147283),	-- Air Power Core (QI!)
						i(147284),	-- Earth Power Core (QI!)
						i(147286),	-- Fire Power Core (QI!)
						i(147285),	-- Water Power Core (QI!)
					},
				}),
				q(46288),	-- Everyone to the Front
				q(45878),	-- Exterminating with Impunity
				q(45744),	-- Fall of the Felskorn
				q(47132),	-- Fel Fire and Ice
				q(46126),	-- Fel-Corrupted Feathers
				q(46077, {	-- Felbound Spirits
					["classes"] = { PALADIN },
				}),
				q(46933),	-- Felrglrglrglrgl
				q(45934),	-- Fowl Play
				q(46072),	-- Full Fel
				q(46198, {	-- Gems of Destruction
					["g"] = {
						i(144362),	-- Pulsating Gem (QI!)
					},
				}),
				q(46212),	-- Get Them Up
				q(40390, {	-- Hallowed Ground
					["classes"] = { PALADIN },
				}),
				q(45985, {	-- Hellish Scavengers
					["g"] = {
						i(144240),	-- Ravaged Supplies (QI!)
					},
				}),
				q(45541),	-- How Do YOU Like It?!
				q(46066),	-- I Fel Bat For You
				petbattle(q(46112)),	-- Illidari Masters: Madam Viciosa
				petbattle(q(46113)),	-- Illidari Masters: Nameless Mystic
				petbattle(q(46111)),	-- Illidari Masters: Sissix
				q(46817),	-- Infernal Downfall
				q(45743),	-- Judgment of Odyn
				q(45776, {	-- Keys are a Crutch
					["classes"] = { ROGUE },
				}),
				q(45653, {	-- Kill it with Fire!
					["classes"] = { MAGE },
				}),
				q(45472),	-- Kraken Eggs
				q(46308),	-- Leave a Trail
				q(46046, {	-- Life's a Lich
					["classes"] = { DEATHKNIGHT },
					["g"] = {
						i(144241),	-- Fel-Infused Remains (QI!)
					},
				}),
				q(46754, {	-- Magical Beasts
					["classes"] = { MAGE },
				}),
				q(46707),	-- Minion! Kill That One Too!
				q(46755, {	-- Mission: Felraging
					-- TODO: ["classes"] = { ? },
				}),
				q(46756),	-- Mission: Felrage Destruction
				q(46825, {	-- Mud Mucking
					["g"] = {
						i(147211),	-- Sparkling Kirin Tor Coin (QI!)
					},
				}),
				q(46822),	-- Natural Selection
				q(46833),	-- Nature Unshackled
				q(44751),	-- No Soldier Left Behind
				q(45792),	-- Occultist Onslaught
				q(45793, {	-- Occultist Onslaught
					["classes"] = { WARLOCK },
				}),
				q(46752),	-- On Borrowed Wings
				q(45797),	-- Playing with Green Fire
				q(46180),	-- Power of Our Enemy
				q(45929),	-- Purging the Flames
				q(46075, {	-- Relic Hunting
					["g"] = {
						i(143851),	-- Precious Antiquity (QI!)
					},
				}),
				q(46076),	-- Restless Spirits
				q(46175, {	-- Rolling Thunder
					ach(11607),	-- They See Me Rolling
				}),
				q(46001),	-- Rules of the Hunt
				q(45550),	-- Salving the Corruption
				q(45549, {	-- Salving the Corruption
					["classes"] = { HUNTER },
				}),
				q(45626),	-- Set You Up the Bomb!
				q(46360),	-- Simply Stunning
				q(46109),	-- Stand!
				q(46236),	-- Stonebound Soldiers
				q(46762, {	-- Storm Brew Hustle
					["g"] = {
						i(146896),	-- Hozen Vaulting Staff (QI!)
					},
				}),
				q(46811, {	-- The Broodmother's Wrath
					["classes"] = { DEATHKNIGHT },
				}),
				q(45805, {	-- The Burning Keys
					["g"] = {
						i(143924),	-- Burning Key (QI!)
					},
				}),
				q(45035),	-- The Call of Battle
				q(46942),	-- The Cost of Power
				q(46160),	-- The Shackled Void
				q(46032),	-- The Tormented Return
				q(46325),	-- The United Front
				q(46063),	-- The Wailing Dead
				q(46866),	-- Torture Chamber
				q(45379),	-- Treasure Master Iks'reeged
				q(45973, {	-- Unchecked Power
					["g"] = {
						i(146951),	-- Abjurist's Scroll of Knowledge (QI!)
					},
				}),
				q(45791, {	-- War Materiel
					["g"] = {
						i(143888),	-- Felslag (QI!)
					},
				}),
				q(45930),	-- We Didn't Start the Fire
				q(45977, {	-- Where There is a Whip...
					["sym"] = {{"select","npcID",118403}},	-- Syaith (special NPC for Inscription Recipe)
				}),
				q(44748, {	-- Winged Terrors
					["g"] = {
						i(142079),	-- Shipwrecked Supplies (QI!)
					},
				}),
			})),
		}),
	}),
});
