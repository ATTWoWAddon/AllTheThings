-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(ACHIEVEMENTS, {
	------ Epic ------
	------ Superior ------
	ach(891),	-- Giddy Up!
	ach(546),	-- Safe Deposit
	ach(523, {		-- 5 Exalted Reputations
		_noautomation = true,
	}),
	ach(524, {		-- 10 Exalted Reputations
		_noautomation = true,
	}),
	ach(521, {		-- 15 Exalted Reputations
		_noautomation = true,
	}),
	ach(520, {		-- 20 Exalted Reputations
		_noautomation = true,
	}),
	ach(2358, {	-- Charger
		sourceQuests = {
			7647,	-- Judgment and Redemption
		},
		classes = { PALADIN },
	}),
	ach(16),	-- Did Somebody Order a Knuckle Sandwich?
	ach(2716),	-- Dual Talent Specialization
	applyclassicphase(PHASE_THREE_DMF_CARDS, ach(2336, {	-- Insane in the Membrane
		description =
			"Insane in the Membrane is a Feat of Strength that rewards the title <The Insane>. This feat requires you to become honored with the Bloodsail Buccaneers and exalted with the Steamwheedle Cartel (Booty Bay, Everlook, Gadgetzan, Ratchet), Ravenholdt, Darkmoon Faire, and the Shen'dralar. After Cataclysm it does not require that all of these reputation levels be reached at the same time, however, prior to that you must have them all at the same time. Raising reputation with these factions is typically very difficult, time-consuming, and costly.",
	})),
	ach(6),	-- Level 10
	ach(7),	-- Level 20
	ach(8),	-- Level 30
	ach(9),	-- Level 40
	ach(10),	-- Level 50 (Legacy)
	ach(11),	-- Level 60 (Legacy)
	applyclassicphase(PHASE_ONE, ach(879, {	-- Old School Ride
		providers = {
			{ "i", 13328 },	-- Black Ram
			{ "i", 13329 },	-- Frost Ram
			{ "i", 13327 },	-- Icy Blue Mechanostrider Mod A
			{ "i", 13326 },	-- White Mechanostrider Mod B
			{ "i", 12354 },	-- Palomino Bridle
			{ "i", 12353 },	-- White Stallion Bridle
			{ "i", 12302 },	-- Reins of the Ancient Frostsaber
			{ "i", 12303 },	-- Reins of the Nightsaber
			{ "i", 12351 },	-- Horn of the Arctic Wolf
			{ "i", 12330 },	-- Horn of the Red Wolf
			{ "i", 15292 },	-- Green Kodo
			{ "i", 15293 },	-- Teal Kodo
			{ "i", 13317 },	-- Whistle of the Ivory Raptor
			{ "i", 8586 },	-- Whistle of the Mottled Red Raptor
		},
		timeline = { REMOVED_1_4_0 },
	})),
	ach(522, {		-- Somebody Likes Me
		_noautomation = true,
	}),
	applyclassicphase(SOM_PHASE_ONE, ach(16433, {	-- Soul of Iron (Season of Mastery)
		timeline = { ADDED_1_14_3, REMOVED_1_15_0 },	-- NOTE: You could only acquire this during Season of Mastery, but it didn't appear on your account until Wrath Classic.
		OnUpdate = [[function(t)
			if t.collectible and _.Level >= 60 then
				local i, spellID = 1, select(10, UnitBuff("player", 1));
				while spellID do
					if spellID == 364001 then
						t:SetAchievementCollected(t.achievementID, true);
						return false;
					end
					i = i + 1;
					spellID = select(10, UnitBuff("player", i));
				end;
				t:SetAchievementCollected(t.achievementID, false);
			end
		end]],
	})),
	filter(MOUNTS, {
		ach(2142),	-- Filling Up The Barn (25 mounts)
		ach(2141),	-- Stable Keeper (10 mounts)
	}),
}))
