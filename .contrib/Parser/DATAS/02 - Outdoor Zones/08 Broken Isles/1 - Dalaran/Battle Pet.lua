---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			petbattle(filter(BATTLE_PETS, {
				pet(1778, {	-- Dust Bunny
					["description"] = "In order to see this battle pet you must first obtain the buff |cFFFFD700Spring Cleaning|r, which is a 15-minute buff.  You obtain this buff by clicking on a |cFFFFD700Dusty Rug|r.  Multiple people can click the rug.  If there are none present you can realm hop until you find one.  The rug can spawn in one of five locations:\n\n|cFFFFFFFFBarber Shop|r - Upper Level (|cFFFFFFFF52.52, 30.31|r),\n\n|cFFFFFFFFBreanni's Shop|r - Behind the counter (|cFFFFFFFF58.9, 38.3|r),\n\n|cFFFFFFFFFilthy  Animal [Horde]|r - Outside the building on top of the sewer gate to the right before you enter. (|cFFFFFFFF64.15, 37.9|r)\n\n|cFFFFFFFFGreyfang Enclave [Alliance]|r - Behind the Paladin Portal\n\n|cFFFFFFFFLegerdemain Lounge|r - Top Floor",
				}),
			})),
		}),
	}),
});
