---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(PANDARIA, {
		applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, m(ISLE_OF_GIANTS, {
			["lore"] = "The Isle of Giants is an island that has been lost in time, home to primal devilsaurs, direhorns, and skyscreamers raised by the Zandalar tribe on the isle since the loss of Zandalar.",
			["timeline"] = { ADDED_5_2_0 },
			["icon"] = 236192,
			["g"] = {
				n(FLIGHT_PATHS, {
					fp(1221, {	-- Beeble's Wreck, Isle Of Giants
						["coord"] = { 41.8, 79.2, ISLE_OF_GIANTS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1222, {	-- Bozzle's Wreck, Isle Of Giants
						["coord"] = { 51.8, 75.4, ISLE_OF_GIANTS },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(RARES, {
					n(70096, {	-- War-God Dokah
						["coords"] = {
							{ 77.6, 82.6, ISLE_OF_GIANTS },
							{ 78.6, 80.6, ISLE_OF_GIANTS },
							{ 76.4, 83.8, ISLE_OF_GIANTS },
						},
						["g"] = {
							i(94158),	-- Big Bag of Zandalari Supplies
						},
					}),
				}),
				n(QUESTS, {
					q(32613, {	-- Giant Dinosaur Bone
						["qg"] = 70022,	-- Ku'ma <The Bone Collector>
						["cost"] = {{ "i", 94288, 1 }},	-- Giant Dinosaur Bone
						["repeatable"] = true,
					}),
					q(32614, {	-- More Giant Dinosaur Bones
						["qg"] = 70022,	-- Ku'ma <The Bone Collector>
						["cost"] = {{ "i", 94288, 9 }},	-- Giant Dinosaur Bone
						["repeatable"] = true,
						["groups"] = {
							i(89112),	-- Mote of Harmony
						},
					}),
					q(32615, {	-- Many More Giant Dinosaur Bones
						["qg"] = 70022,	-- Ku'ma <The Bone Collector>
						["cost"] = {{ "i", 94288, 99 }},	-- Giant Dinosaur Bone
						["repeatable"] = true,
						["groups"] = {
							i(76061),	-- Spirit of Harmony
						},
					}),
					q(32616, {	-- A Large Pile of Dinosaur Bones
						["qg"] = 70022,	-- Ku'ma <The Bone Collector>
						["cost"] = {{ "i", 94288, 999 }},	-- Giant Dinosaur Bone
						["repeatable"] = true,
						["g"] = {
							i(94190),	-- Spectral Porcupette (PET!)
						},
					}),
					q(32617, {	-- A Mountian of Dinosaur Bones
						["qg"] = 70022,	-- Ku'ma <The Bone Collector>
						["cost"] = {{ "i", 94288, 9999 }},	-- Giant Dinosaur Bone
						["repeatable"] = true,
						["g"] = {
							ach(8092, {	-- I've Got 9999 Problems but a Bone-White Primal Raptor Ain't One
								["provider"] = { "i", 94290 },	-- Bone-White Primal Raptor
								["f"] = MOUNTS,
							}),
							i(94290),	-- Bone-White Primal Raptor (MOUNT!)
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(94573, {	-- Direhorn Runt (PET!)
						["crs"] = { 69983 },	-- Primal Direhorn
						["timeline"] = { ADDED_5_3_0 },
					}),
					i(94288, {	-- Giant Dinosaur Bone
						["description"] = "These bones can be gathered and turned into Ku'ma on the Isle of Giants.",
						["coords"] = {
							{ 27.32, 58.07, ISLE_OF_GIANTS },	-- Cave Entrance
							{ 32.72, 54.26, ISLE_OF_GIANTS },	-- Ku'ma
						},
						["crs"] = {
							70096,	-- War-God Dokah <Ward of Beasts>
							69925,	-- Zandalari Dinomancer
							69991,	-- Primal Devilsaur [East - Blue]
							70010,	-- Primal Devilsaur [East - Tan]
							70008,	-- Primal Devilsaur [Center - Brown + Gold]
							70009,	-- Primal Devilsaur [West - Gold]
							70011,	-- Primal Devilsaur [West - Red]
							70018,	-- Primal Direhorn [East - Red]
							70019,	-- Primal Direhorn [West - Tan]
							69983,	-- Primal Direhorn [West - Blue]
							70016,	-- Primal Direhorn [Southeast - Green]
							70017,	-- Primal Direhorn [South - Brown + Tan]
							70014,	-- Primal Direhorn Hatchling [East - Red]
							70015,	-- Primal Direhorn Hatchling [West - Tan]
							69992,	-- Primal Direhorn Hatchling [West - Blue]
							70012,	-- Primal Direhorn Hatchling [Southeast - Green]
							70013,	-- Primal Direhorn Hatchling [South - Brown + Tan]
							70020,	-- Pterrorwing Skyscreamer [Red]
							70021,	-- Pterrorwing Skyscreamer [Green]
							70004,	-- Young Primal Devilsaur [East - Blue]
							70007,	-- Young Primal Devilsaur [East - Tan]
							70005,	-- Young Primal Devilsaur [Center - Brown + Gold]
							70006,	-- Young Primal Devilsaur [West - Gold]
							69993,	-- Young Primal Devilsaur [West - Red]
						},
					}),
					i(94295),	-- Primal Egg
					i(94296, {	-- Cracked Primal Egg
						["provider"] = { "i", 94295 },	-- Primal Egg
						["crs"] = {
							69991,	-- Primal Devilsaur [East - Blue]
							70010,	-- Primal Devilsaur [East - Tan]
							70008,	-- Primal Devilsaur [Center - Brown + Gold]
							70009,	-- Primal Devilsaur [West - Gold]
							70011,	-- Primal Devilsaur [West - Red]
							70018,	-- Primal Direhorn [East - Red]
							70019,	-- Primal Direhorn [West - Tan]
							69983,	-- Primal Direhorn [West - Blue]
							70016,	-- Primal Direhorn [Southeast - Green]
							70017,	-- Primal Direhorn [South - Brown + Tan]
							70014,	-- Primal Direhorn Hatchling [East - Red]
							70015,	-- Primal Direhorn Hatchling [West - Tan]
							69992,	-- Primal Direhorn Hatchling [West - Blue]
							70012,	-- Primal Direhorn Hatchling [Southeast - Green]
							70013,	-- Primal Direhorn Hatchling [South - Brown + Tan]
							70020,	-- Pterrorwing Skyscreamer [Red]
							70021,	-- Pterrorwing Skyscreamer [Green]
							70004,	-- Young Primal Devilsaur [East - Blue]
							70007,	-- Young Primal Devilsaur [East - Tan]
							70005,	-- Young Primal Devilsaur [Center - Brown + Gold]
							70006,	-- Young Primal Devilsaur [West - Gold]
							69993,	-- Young Primal Devilsaur [West - Red]
							69099,	-- Nalak, the Storm Lord
							69161,	-- Oondasta
							62346,	-- Galleon
							60491,	-- Sha of Anger
						},
						["g"] = {
							i(94292),	-- Black Primal Raptor (MOUNT!)
							i(94293),	-- Green Primal Raptor  (MOUNT!)
							i(94291),	-- Red Primal Raptor (MOUNT!)
						},
					}),
					n(69925, {	-- Zandalari Dinomancer
						i(95422),	-- Zandalari Anklerender (PET!)
						i(95424),	-- Zandalari Toenibbler (PET!)
						i(95423),	-- Zandalari Footlsasher (PET!)
						i(94126),	-- Zandalari Kneebiter (PET!)
						i(94232),	-- Ancient Tome of Dinomancy (CI!)
					}),
				}),
			},
		})),
	}),
});
