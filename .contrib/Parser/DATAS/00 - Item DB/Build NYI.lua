-- Build NYI
root(ROOTS.NeverImplemented, {
	n(ACHIEVEMENTS, {["timeline"] = {CREATED_3_0_2}}),					-- Completed up to 11.2.5
	n(ARMOR),															-- Not Completed and Not Sorted
	n(ARTIFACTS),														-- Completed up to 11.2.5
	filter(BAGS),														-- Not Completed and Not Sorted
	filter(BATTLE_PETS),												-- Completed up to 11.2.5
	n(CAMPSITES, {["timeline"] = {CREATED_11_1_0}}),					-- Completed up to 11.2.5
	n(CLASSES),															-- Completed up to 11.2.5
	n(CONDUITS, {["timeline"] = {CREATED_9_0_1}}),						-- Completed up to 11.2.5
	filter(COSMETIC),													-- Completed up to 11.2.5
	n(DECOR, {["timeline"] = {CREATED_11_2_7}}),						-- Not Completed and Not Sorted
	n(EXPLORATION),														-- Not Completed and Not Sorted
	n(FACTIONS),														-- Completed up to 11.2.5
	n(FLIGHT_PATHS),													-- Completed up to 11.2.5
	n(FOLLOWERS, {["timeline"] = {CREATED_6_0_2}}),						-- Completed up to 11.2.5
	n(HEIRLOOMS, {["timeline"] = {CREATED_4_0_1}}),						-- Not Completed and Not Sorted
	filter(ILLUSIONS, {["timeline"] = {CREATED_8_0_1}}),				-- Completed up to 11.2.5
	n(MAPS),															-- Completed up to 11.2.5
	filter(MISC),														-- Not Completed and Not Sorted
	n(MOUNT_MODS, {["timeline"] = {CREATED_10_0_0}}),					-- Completed up to 11.2.5
	filter(MOUNTS),														-- Completed up to 11.2.5
	n(PROFESSIONS, {													-- Not Completed and Not Sorted
		prof(ABOMINABLE_STITCHING, {["timeline"] = {CREATED_9_0_1}}),	-- Completed up to 10.2.5
		prof(ALCHEMY),													-- Completed up to 10.2.5
		prof(ARCANA_MANIPULATION, {["timeline"] = {CREATED_10_0_0}}),	-- Completed up to 10.2.5
		prof(ASCENSION_CRAFTING, {["timeline"] = {CREATED_9_0_1}}),		-- Completed up to 10.2.5
		prof(BLACKSMITHING),											-- Completed up to 10.2.5
		prof(COOKING),													-- Completed up to 10.2.5
		prof(ENCHANTING),												-- Completed up to 10.2.5
		prof(ENGINEERING),												-- Not Completed and Not Sorted
		prof(FIRST_AID),												-- Completed up to 10.2.5
		prof(FISHING),													-- Completed up to 10.2.5
		prof(HERBALISM),												-- Completed up to 10.2.5
		prof(INSCRIPTION, {["timeline"] = {CREATED_3_0_2}}),			-- Not Completed and Not Sorted
		prof(JEWELCRAFTING),											-- Not Completed and Not Sorted
		prof(JUNKYARD_TINKERING, {["timeline"] = {CREATED_8_2_0}}),		-- Completed up to 10.2.5
		prof(LEATHERWORKING),											-- Completed up to 10.2.5
		prof(MINING),													-- Completed up to 10.2.5
		prof(POISONS),													-- Not Completed and Not Sorted
		prof(PROTOFORM_SYNTHESIS, {["timeline"] = {CREATED_9_2_0}}),	-- Completed up to 10.2.5
		prof(SKINNING),													-- Not Completed and Not Sorted
		prof(SOUL_CYPHERING, {["timeline"] = {CREATED_9_0_1}}),			-- Completed up to 10.2.5
		-- prof(STYGIA_CRAFTING, {["timeline"] = {CREATED_9_0_5}}),		-- Completed up to 10.2.5
		prof(SUPPLY_SHIPMENTS, {["timeline"] = {CREATED_10_2_0}}),		-- Completed up to 10.2.5
		prof(TAILORING),												-- Not Completed and Not Sorted
		-- prof(TUSKARR_FISHING_GEAR, {["timeline"] = {CREATED_10_0_0}}),-- Completed up to 10.2.5
	}),
	filter(QUEST_ITEMS),												-- Not Completed and Not Sorted
	n(QUESTS),															-- Not Completed and Not Sorted
	n(SETS),															-- Not Completed and Not Sorted
	n(SOURCEID_NYI),													-- Not Completed and Not Sorted
	filter(TITLES, {["timeline"] = {CREATED_3_0_2}}),					-- Completed up to 11.2.5
	filter(TOYS),														-- Completed up to 11.2.5
	n(WEAPONS),															-- Not Completed and Not Sorted
});
root(ROOTS.HiddenAchievementTriggers, {
	-- #if ANYCLASSIC
	expansion(EXPANSION.CLASSIC),
	expansion(EXPANSION.TBC),
	-- #endif
	expansion(EXPANSION.WRATH),
	expansion(EXPANSION.CATA),
	expansion(EXPANSION.MOP),
	expansion(EXPANSION.WOD),
	expansion(EXPANSION.LEGION),
	expansion(EXPANSION.BFA),
	expansion(EXPANSION.SL),
	expansion(EXPANSION.DF),
	expansion(EXPANSION.TWW),
	expansion(EXPANSION.MID),
});
root(ROOTS.HiddenCurrencyTriggers, {
	expansion(EXPANSION.TWW),
	expansion(EXPANSION.MID),
});
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.CLASSIC),
	expansion(EXPANSION.TBC),
	expansion(EXPANSION.WRATH),
	expansion(EXPANSION.CATA),
	expansion(EXPANSION.MOP),
	expansion(EXPANSION.WOD),
	expansion(EXPANSION.LEGION),
	expansion(EXPANSION.BFA),
	expansion(EXPANSION.SL),
	expansion(EXPANSION.DF),
	expansion(EXPANSION.TWW),
	expansion(EXPANSION.MID),
});
