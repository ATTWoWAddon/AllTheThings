---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(ACHIEVEMENTS, {
			ach(42779, {	-- A Flash in the Void
				title(598),	-- Flickering %s
			}),
			ach(42778),	-- A Flicker in the Dark
			ach(42731),	-- Become a Hero. Become a Phasediver!
			ach(41979, {	-- Bounty Seeker (automated)
				i(245255),	-- Starlight (PET!)
			}),
			ach(41778),	-- Brokers Don't Care How You Win (automated)
			ach(42737),	-- Capstoned (automated)
			ach(42729, {	-- Dangerous Prowlers of K'aresh (automated)
				crit(106220, {	-- C.T. <Systems Scanner>
					["coord"] = { 47.9, 62.6, KARESH },
				}),
				crit(106225, {	-- Empurror
					["coord"] = { 73.2, 23.7, KARESH },
				}),
				crit(106226, {	-- K'aresh'ire
					["description"] = "Phases between Visible and Untethered space every 10 seconds.",
					["coord"] = { 73.2, 23.7, KARESH },
				}),
				crit(106221, {	-- Little Ms. Phaser
					["description"] = "Phases between Visible and Untethered space every 15-20 seconds.",
					["coord"] = { 73.2, 23.7, KARESH },
				}),
				crit(106222, {	-- Mar <Alley Queen of Tazavesh>
					["coord"] = { 61.0, 55.5, KARESH_TAZAVESH },
				}),
				crit(106223, {	-- The King in Silver
					["description"] = "You need to Phasedive in order to see the Purrkin.",
					["coord"] = { 47.6, 37.4, KARESH },
				}),
			}),
			ach(41811),	-- Ecological Stability (automated)
			ach(41815),	-- Ecological Succession (automated)
			ach(41809),	-- Ecological Variety (automated)
			ach(41812),	-- Expertly Done (automated)
			ach(42740),	-- Explore K'aresh (automated)
			ach(42736),	-- Ixthar's Legacy (automated)
			ach(42730),	-- Jump, Jump, and Away!
			skyriding(ach(42727)),	-- K'aresh Glyph Hunter (automated)
			ach(41978, {	-- Moonlighter
				iensemble(244140),	-- Ethereal Sash Cache
			}),
			ach(41808),	-- Otherworldly Ecologist (automated)
			ach(61017, {	-- Phase-Lost-and-Found
			--[[
				Alex TODO: is there a better way?
				Exo write-up:
				This one will be tricky. You find orbs while Phase Diving and when you go through them, you get the item. Orb can't be targeted, no WoWhead data so far... We don't know if an Orb is an object or NPC.
				Reshii Wraps Level 2 upgrade "Secrets of the Depths" is required for this as IT is the one unlocking this feature. "You may now find phase orbs ... Phase orbs have a chance to recover a Phase-Lost appearance.
				So... When adventuring, you can find Orbs with Fixed coordinate and you can "go through" it multiple times on a same character. Example, { 50.1, 36.2, KARESH }, behind Hashim.
				You either get a junk item 250305, [Phase-Lost Detritus] OR a Phase-Lost cosmetic. (Level 3) Upgrade "Orbs of Power" messes with the concept of coordinates.
				"Enemies Killed while Phase Diving now have a chance to phase orb ... Phase orbs have a chance to recover a Phase-Lost appearance." + You can ride ground mount.
				Meaning, If we want an accurate coordinate pool, we will have to scour K'aresh and search for static orbs with fixed coordinates with Level 2 upgrade only.
				However, using in consideration the sheer size of K'aresh, the point that there are (most likely) MORE than 17 Orbs (one for each cosmetic) and the fact this is account bound feature:
				we can try to source (at least) 17 coordinates and ask a new tester (that didn't obtain a single of these) to go through gathered coordinates and see if the orb will award the cosmetic 100% on the first "going through".
				If awarding a cosmetic is based on a chance, the best course is to slap a description that there are "Le wild Orbs" scattered throughout the zones and send players to find them themselves.
				Peace!
				30.07.2025. 1 day after the writeup. You can get more than one cosmetic from 1 Orb. I got Rod and Bullwark from the same Orb only a day or two in between...
			]]--
				["coords"] = {
					{ 44.2, 16.9, KARESH },
					{ 47.2, 15.8, KARESH },
					{ 50.1, 36.2, KARESH },
					{ 51.0, 69.1, KARESH },
					{ 51.2, 67.7, KARESH },
					{ 53.4, 20.6, KARESH },
					{ 54.9, 63.8, KARESH },
					{ 56.0, 21.5, KARESH },
					{ 56.5, 20.9, KARESH },
					{ 60.5, 55.5, KARESH },
					{ 60.6, 42.0, KARESH },
					{ 61.1, 27.3, KARESH },
					{ 61.2, 39.2, KARESH },
					{ 64.9, 55.0, KARESH },
					{ 64.9, 52.2, KARESH },
					{ 69.7, 55.3, KARESH },
					{ 70.3, 32.0, KARESH },
					{ 74.0, 57.5, KARESH },
					{ 76.0, 32.6, KARESH },
					{ 77.3, 38.0, KARESH },
					{ 34.9, 57.9, KARESH_TAZAVESH },
					{ 40.2, 68.2, KARESH_TAZAVESH },
					{ 44.3, 34.6, KARESH_TAZAVESH },
					{ 45.2, 50.0, KARESH_TAZAVESH },
					{ 55.8, 33.6, KARESH_TAZAVESH },
					{ 56.5, 86.7, KARESH_TAZAVESH },
					{ 60.7, 55.3, KARESH_TAZAVESH },
				},
				["groups"] = {
					i(250240),	-- Phase-Lost Slateback (MOUNT!)
					--
					i(250282),	-- Phase-Lost Bardiche (COSMETIC!)
					i(250288),	-- Phase-Lost Baselard (COSMETIC!)
					i(250281),	-- Phase-Lost Battleaxe (COSMETIC!)
					i(250297),	-- Phase-Lost Beacon (COSMETIC!)
					i(250286),	-- Phase-Lost Blunderbuss (COSMETIC!)
					i(250298),	-- Phase-Lost Bulwark (COSMETIC!)		{ 51.2, 67.7, KARESH }
					i(250273),	-- Phase-Lost Carver (COSMETIC!)		{ 78.4, 48.9, KARESH }
					i(250280),	-- Phase-Lost Chopper (COSMETIC!)
					i(250295),	-- Phase-Lost Claw (COSMETIC!)			{ 54.4, 49.3, KARESH }
					i(250272),	-- Phase-Lost Cudgel (COSMETIC!)
					i(250289),	-- Phase-Lost Dirk (COSMETIC!)
					i(250278),	-- Phase-Lost Great Mace (COSMETIC!)
					i(250276),	-- Phase-Lost Greatsword (COSMETIC!)
					i(250271),	-- Phase-Lost Hammer (COSMETIC!)
					i(250274),	-- Phase-Lost Hatchet (COSMETIC!)
					i(250294),	-- Phase-Lost Katar (COSMETIC!)			{ 58.9, 57.5, KARESH }
					i(250287),	-- Phase-Lost Longbow (COSMETIC!)
					i(250269),	-- Phase-Lost Longsword (COSMETIC!)
					i(250277),	-- Phase-Lost Maul (COSMETIC!)
					i(250299),	-- Phase-Lost Pavise (COSMETIC!)
					i(250300),	-- Phase-Lost Rod (COSMETIC!)			{ 51.2, 67.7, KARESH }
					i(250270),	-- Phase-Lost Scimitar (COSMETIC!)
					i(250285),	-- Phase-Lost Shillelagh (COSMETIC!)	{ 54.3, 63.2, KARESH }
					i(250296),	-- Phase-Lost Sigil (COSMETIC!)
					i(250283),	-- Phase-Lost Spear (COSMETIC!)
					i(250284),	-- Phase-Lost Spire (COSMETIC!)
					i(250301),	-- Phase-Lost Wand (COSMETIC!)
					i(250275),	-- Phase-Lost Zweihander (COSMETIC!)
				},
			}),
			ach(42742, {	-- Power of the Reshii
				i(247703),	-- Reshii Hood
				i(247704),	-- Reshii Mantle
			}),
			ach(42761),	-- Remnants of a Shattered World (automated)
			ach(60890),	-- Secrets of the K'areshi (automated)
			skyriding(ach(42717, {	-- Skyriding Glyphs: Castigaar
				["coord"] = { 74.0, 32.6, KARESH },
			})),
			skyriding(ach(42718, {	-- Skyriding Glyphs: Eco-Dome: Primus
				["coord"] = { 46.5, 58.4, KARESH },
			})),
			skyriding(ach(42715, {	-- Skyriding Glyphs: Fracture of Laacuna
				["coord"] = { 54.7, 23.4, KARESH },
			})),
			skyriding(ach(42719, {	-- Skydiving Glyphs: North Sufaad
				["coord"] = { 55.1, 67.6, KARESH },
			})),
			skyriding(ach(42713, {	-- Skyriding Glyphs: Serrated Peaks
				["coord"] = { 54.7, 53.2, KARESH },
			})),
			skyriding(ach(42716, {	-- Skydiving Glyphs: Shadow Point
				["coord"] = { 43.9, 17.0, KARESH },
			})),
			skyriding(ach(42712, {	-- Skyriding Glyphs: Tazavesh, the Veiled Market
				["coord"] = { 55.1, 67.6, KARESH_TAZAVESH },
			})),
			skyriding(ach(42714, {	-- Skyriding Glyphs: The Oasis
				["coord"] = { 74.0, 32.6, KARESH },
			})),
			ach(42739),	-- Sojourner of K'aresh (automated)
			ach(41970),	-- The Knife's Edge (automated)
			pvp(ach(42131)),	-- Tour of Duty: K'aresh
			ach(42741),	-- Treasures of K'aresh (automated)
			ach(60889),	-- Unraveled and Persevering (automated)
			ach(41980, {	-- Vigilante (automated)
				i(237485),	-- Terror of the Night (MOUNT!)
			}),
			ach(42738),	-- We've All Got Swords! (automated)
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(ACHIEVEMENTS, {
				-- Exo Note for a Senior Contrib(s): If placement of the HQT is wrong, please move it to correct place. If not wrong, please remove this note.
				q(91916, name(HEADERS.Item,244140)),	-- Triggers when "Ethereal Sash Cache" is opened
			}),
		}),
	}),
})));
