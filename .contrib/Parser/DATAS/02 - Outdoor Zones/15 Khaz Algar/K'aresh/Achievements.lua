---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(ACHIEVEMENTS, {
			ach(42779),	-- A Flash in the Void
			ach(42778),	-- A Flicker in the Dark
			ach(42731),	-- Become a Hero. Become a Phasediver!
			ach(41979),	-- Bounty Seeker (automated)
			ach(41778),	-- Brokers Don't Care How You Win (automated)
			ach(42737),	-- Capstoned (automated)
			ach(42729),	-- Dangerous Prowlers of K'aresh (automated)
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
				-- TODO: is there a better way?
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
					i(250282),	-- Phase-Lost Bardiche (COSMETIC!)
					i(250283),	-- Phase-Lost Carver (COSMETIC!)
					i(250273),	-- Phase-Lost Carver (COSMETIC!)
					i(250274),	-- Phase-Lost Hatchet (COSMETIC!)
					i(250271),	-- Phase-Lost Hammer (COSMETIC!)
					i(250277),	-- Phase-Lost Maul (COSMETIC!)
					i(250270),	-- Phase-Lost Scimitar (COSMETIC!)
					i(250296),	-- Phase-Lost Sigil (COSMETIC!)
					i(250275),	-- Phase-Lost Zweihander (COSMETIC!)
				},
			}),
			ach(42742, {	-- Power of the Reshii
				i(247703),	-- Reshii Hood
				i(247704),	-- Reshii Mantle
			}),
			ach(42761),	-- Remnants of a Shattered World (automated)
			ach(60890),	-- Secrets of the K'areshi (automated)
			skyriding(ach(42719)),	-- Skydiving Glyphs: North Sufaad
			skyriding(ach(42716)),	-- Skydiving Glyphs: Shadow Point
			skyriding(ach(42717)),	-- Skyriding Glyphs: Castigaar
			skyriding(ach(42718)),	-- Skyriding Glyphs: Eco-Dome: Primus
			skyriding(ach(42715)),	-- Skyriding Glyphs: Fracture of Laacuna
			skyriding(ach(42713)),	-- Skyriding Glyphs: Serrated Peaks
			skyriding(ach(42712)),	-- Skyriding Glyphs: Tazavesh, the Veiled Market
			skyriding(ach(42714)),	-- Skyriding Glyphs: The Oasis
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