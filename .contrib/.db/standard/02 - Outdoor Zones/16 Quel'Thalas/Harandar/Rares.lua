---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
			n(COMMON_BOSS_DROPS, {
				["isDaily"] = IGNORED_VALUE,
				["crs"] = {
					250347,	-- Ahl'ua'huhi
					250358,	-- Annulus the Worldshaker
					249844,	-- Chironex
					249997,	-- Chlorokyll
					250231,	-- Dracaena
					249849,	-- Ha'kalawe
					250226,	-- Mindrot
					250317,	-- Oro'ohna
					250321,	-- Pterrock
					249962,	-- Queen Lashtongue
					248741,	-- Rhazul
					250180,	-- Serrasa
					250086,	-- Stumpy
					249902,	-- Tallcap the Truthspreader
					250246,	-- Treetop
				},
				["groups"] = {
					i(246735),	-- Rootstalker Grimlynx (MOUNT!)
					i(252012),	-- Vibrant Petalwing (MOUNT!)
					i(264895),	-- Trials of the Florafaun Hunter (CI!)
				},
			}),
			n(250347, {	-- Ahl'ua'huhi
				["coord"] = { 39.6, 60.8, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92193,
				["groups"] = {
					i(264534),	-- Bogvine Shoulderguards
					i(264540),	-- Mirevine Wristguards
					hqt_bonusRenown(94725, FACTION_HARATI),	-- Bonus Rep: Ahl'ua'huhi
				},
			}),
			n(250358, {	-- Annulus the Worldshaker
				["coord"] = { 44.2, 16.4, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92194,
				["groups"] = {
					i(264614),	-- Fungal Cap Guard
					i(264607),	-- Spore-Laden Choker
					hqt_bonusRenown(94726, FACTION_HARATI),	-- Bonus Rep: Annulus the Worldshaker
				},
			}),
			n(249844, {	-- Chironex
				["coord"] = { 68.5, 40.6, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92137,
				["groups"] = {
					i(264544),	-- Grounded Death Cap
					i(264538),	-- Translucent Membrane Slippers
					hqt_bonusRenown(94713, FACTION_HARATI),	-- Bonus Rep: Chironex
				},
			}),
			n(249997, {	-- Chlorokyll
				["coord"] = { 64.6, 47.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92161,
				["groups"] = {
					i(264626),	-- Scepter of Radiant Conversion
					i(264604),	-- Sludgy Verdant Signet
					hqt_bonusRenown(94717, FACTION_HARATI),	-- Bonus Rep: Chlorokyll
				},
			}),
			n(250231, {	-- Dracaena
				["coord"] = { 40.6, 43.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92176,
				["groups"] = {
					i(264644),	-- Crawler's Mindscythe
					i(264562),	-- Plated Grove Vest
					hqt_bonusRenown(94721, FACTION_HARATI),	-- Bonus Rep: Dracaena
				},
			}),
			n(249849, {	-- Ha'kalawe
				["coord"] = { 69.2, 63.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92142,
				["groups"] = {
					i(264553),	-- Deepspore Leather Galoshes
					i(264592),	-- Ha'kalawe's Flawless Wing
					hqt_bonusRenown(94714, FACTION_HARATI),	-- Bonus Rep: Ha'kalawe
				},
			}),
			n(250226, {	-- Mindrot
				["coord"] = { 46.0, 31.3, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92172,
				["groups"] = {
					i(264550),	-- Fungal Stalker's Stockings
					i(264649),	-- Mindrot Claw-Hammer
					hqt_bonusRenown(94720, FACTION_HARATI),	-- Bonus Rep: Mindrot
				},
			}),
			n(250317, {	-- Oro'ohna
				["coord"] = { 28.2, 81.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92190,
				["groups"] = {
					i(264616),	-- Lightblighted Sapdrinker
					i(264591),	-- Radiant Petalwing's Feather
					hqt_bonusRenown(94723, FACTION_HARATI),	-- Bonus Rep: Oro'ohna
				},
			}),
			n(250321, {	-- Pterrock
				["coord"] = { 27.2, 70.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92191,
				["groups"] = {
					i(264567),	-- Rockscale Hood
					i(264576),	-- Slatescale Grips
					hqt_bonusRenown(94724, FACTION_HARATI),	-- Bonus Rep: Pterrock
				},
			}),
			n(249962, {	-- Queen Lashtongue
				["coord"] = { 60.0, 46.6, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92154,
				["groups"] = {
					i(264571),	-- Ironleaf Wristguards
					i(264566),	-- Lashtongue's Leaffroggers
					hqt_bonusRenown(94716, FACTION_HARATI),	-- Bonus Rep: Queen Lashtongue
				},
			}),
			n(248741, {	-- Rhazul
				["coord"] = { 51.2, 45.3, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 91832,
				["groups"] = {
					i(264622),	-- Grimfang Shank
					i(264530),	-- Grimfur Mittens
					hqt_bonusRenown(94712, FACTION_HARATI),	-- Bonus Rep: Rhazul
				},
			}),
			n(250180, {	-- Serrasa
				["coord"] = { 56.7, 33.6, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92170,
				["groups"] = {
					i(264639),	-- Razorfang Hacker
					i(264568),	-- Serrated Scale Gauntlets
					hqt_bonusRenown(94719, FACTION_HARATI),	-- Bonus Rep: Serrasa
				},
			}),
			n(250086, {	-- Stumpy
				["coord"] = { 65.8, 32.4, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92168,
				["groups"] = {
					i(264635),	-- Stumpy's Stump
					i(264578),	-- Stumpy's Terrorplate
					hqt_bonusRenown(94718, FACTION_HARATI),	-- Bonus Rep: Stumpy
				},
			}),
			n(249902, {	-- Tallcap the Truthspreader
				["coord"] = { 72.6, 69.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92148,
				["groups"] = {
					i(264532),	-- Robes of Flowing Truths
					i(264650),	-- Truthspreader's Truth Spreader
					hqt_bonusRenown(94715, FACTION_HARATI),	-- Bonus Rep: Tallcap the Truthspreader
				},
			}),
			n(250246, {	-- Treetop
				["coord"] = { 36.7, 75.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92183,
				["groups"] = {
					i(264581),	-- Bloombark Spaulders
					i(264633),	-- Treetop Battlestave
					hqt_bonusRenown(94722, FACTION_HARATI),	-- Bonus Rep: Treetop
				},
			}),
		})),
	}),
}))
