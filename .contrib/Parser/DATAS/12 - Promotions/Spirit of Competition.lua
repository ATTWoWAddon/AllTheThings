-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------
SPIRIT_OF_COMPETITION = createHeader({
	readable = "Spirit of Competition",
	icon = 133278,
	text = {
		-- #if AFTER MOP
		en = [[~C_PetJournal.GetPetInfoBySpeciesID(179)]],
		-- #else
		en = "Spirit of Competition",
		es = "Espíritu de competición",
		mx = "Espíritu de competición",
		-- #endif
	},
	description = {
		en = "This is a Battlegrounds-based event that coincides with the beginning of the Summer Olympic games. The only time this was celebrated was in 2008 to correspond to the Beijing Olympics, and although there appeared to be the intention to repeat this event, it never returned.",
		es = "Este es un evento basado en Campos de batalla que coincide con el inicio de los Juegos Olímpicos de Verano. La única vez que se celebró fue en 2008 para coincidir con los Juegos Olímpicos de Pekín, y aunque parecía haber intención de repetirlo, nunca regresó.",
		mx = "Este es un evento basado en Campos de batalla que coincide con el inicio de los Juegos Olímpicos de Verano. La única vez que se celebró fue en 2008 para coincidir con los Juegos Olímpicos de Pekín, y aunque parecía haber intención de repetirlo, nunca regresó.",
	},
});
root(ROOTS.Promotions, n(SPIRIT_OF_COMPETITION, bubbleDownSelf({ ["timeline"] = { ADDED_2_4_3, REMOVED_3_0_2 } }, {
	ach(1637, {	-- Spirit of Competition
		["provider"] = { "i", 37297 },	-- Spirit of Competition
	}),
	i(37297, {	-- Spirit of Competition (PET!)
		["description"] = "Win a battleground during the Spirit of Competition event to get this.",
	}),
	ach(1636, {	-- Competitor's Tabard
		["provider"] = { "i", 36941 },	-- Competitor's Tabard
	}),
	i(36941, {	-- Competitor's Tabard
		["description"] = "Participate in a battleground during the Spirit of Competition event to get this.",
		["OnUpdate"] = [[function(t)
			if _.IsQuestFlaggedCompleted(12187) then
				if not _.Settings.AccountWide.Quests then
					t.u = ]] .. REMOVED_FROM_GAME .. [[;
				else
					t.u = nil;
				end
			end
		end]],
	}),
	i(37298, {	-- Essence of Competition (PET!) (China Only)
		["description"] = "Only available on Chinese realms.\n\nThroughout each day of the event in China, the code is mailed to 500 random players. Only players who have achieved various in-game milestones during the event are eligible for a chance to receive the code. Some milestones include having an Arena rating of 1650+, increasing reputation for certain Outland factions from less than revered to exalted, or raising a crafting profession from 350 or less to 375.",
	}),
})));
