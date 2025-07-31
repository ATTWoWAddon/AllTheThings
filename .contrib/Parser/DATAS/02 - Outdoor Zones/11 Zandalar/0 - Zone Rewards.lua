---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		n(ZONE_REWARDS, {
			i(163856, {	-- Ancient Pilgrimage Scrollcasing
				["description"] = "Can drop from any of the repeatable Treasures in the various BFA zones.",
			}),
			i(163857, {	-- Azerite Armor Cache
				["sym"] = {
					{"sub", "bfa_azerite_armor_chest" },
				},
			}),
			i(158116),	-- Bonehex Claws
			i(158125),	-- Bonehex Warmaul
			i(158126),	-- Dazar'alor Polearm
			i(158124),	-- Dinobone Cracker
			i(162458),	-- Gilded Hex-Maw
			i(162455),	-- Golden Empire Buckler
			i(158135),	-- Golden EmpirBroadsword
			i(158136),	-- Golden Empire Hexer
			i(162457),	-- Loa-Bound Defender
			i(162459),	-- Loa-Pledged Rod
			i(158110),	-- Razorbone Carver
			i(158118),	-- Razorbone Claws
			i(158123),	-- Razorbone Skullcracker
			i(158127),	-- Razorbone Spear
			i(158120),	-- Salt Coast Headcracker
			i(158117),	-- Salt Coast Knuckles
			i(158134),	-- Salt Coast Piercers
			i(158122),	-- Spirit Bog Scepter
			i(158108, {	-- Whisperfen Chopper
				["races"] = HORDE_ONLY,
			}),
			i(158111, {	-- Whisperfen Hewer
				["races"] = HORDE_ONLY,
			}),
			i(158128, {	-- Whisperfen Polearm
				["races"] = HORDE_ONLY,
			}),
			i(158131, {	-- Whisperfen Staff
				["races"] = HORDE_ONLY,
			}),
			i(158112),	-- Zandalari Greatbow
			i(158133),	-- Zandalari Machete
			i(158129),	-- Zandalari Warstaff
			i(158115),	-- Zem'lan Cutter
			i(158109),	-- Zem'lan Hacker
			i(158132),	-- Zem'lan Slicer
			i(158121),	-- Zocalo Crusher
			i(158130),	-- Zocalo Pummeler
			i(158114),	-- Zocalo Stabber
			i(158154),	-- Emblem of Zandalar
			i(158153),	-- Gilded Loa Figurine
			i(158152),	-- Golden Empire Signet
			i(158151),	-- Zandalari Band
			i(158155),	-- Dinobone Charm
		}),
	}),
}));
