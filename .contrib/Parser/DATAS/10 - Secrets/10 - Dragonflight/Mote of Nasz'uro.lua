-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	header(HEADERS.Item, 206040, {	-- Mote of Nasz'uro
		n(REWARDS, {
			["maps"] = { 
				OHNAHRAN_PLAINS,
				THALDRASZUS,
				THE_AZURE_SPAN,
				THE_FORBIDDEN_REACH,
				THE_WAKING_SHORES,
			},
			["groups"] = {
				i(206040, {	-- Mote of Nasz'uro (PET!)
					["description"] = "You need to collect all 15 motes to receive this pet. Requires Quest Tracking to see the motes' Location.",
				}),
			},
		}),
		n(TREASURES, sharedData({
			["nomerge"] = true,
		},{
			n(205876, { ["questID"] = 76182, ["coord"] = { 61.2, 64.4, OHNAHRAN_PLAINS }, }),
			n(205876, { ["questID"] = 76183, ["coord"] = { 34.3, 58.7, OHNAHRAN_PLAINS }, }),
			n(205876, { ["questID"] = 76189, ["coord"] = { 62.7, 13.2, THALDRASZUS }, }),
			n(205876, { ["questID"] = 76190, ["coord"] = { 61.2, 40.7, THALDRASZUS }, }),
			n(205876, { ["questID"] = 76191, ["coord"] = { 72.9, 55.1, THALDRASZUS }, }),
			n(205876, { ["questID"] = 76192, ["coord"] = { 70.9, 69.8, THALDRASZUS }, }),
			n(205876, { ["questID"] = 76193, ["coord"] = { 62.6, 85.1, THALDRASZUS }, }),
			n(205876, { ["questID"] = 76178, ["coord"] = { 78.8, 34.1, THE_AZURE_SPAN }, }),
			n(205876, { ["questID"] = 76179, ["coord"] = { 61.6, 71.4, THE_AZURE_SPAN }, }),
			n(205876, { ["questID"] = 76180, ["coord"] = { 36.4, 56.5, THE_AZURE_SPAN }, }),
			n(205876, { ["questID"] = 76181, ["coord"] = { 8.2, 53.1, THE_AZURE_SPAN }, }),
			n(205876, { ["questID"] = 76188, ["coord"] = { 36.0, 34.2, THE_FORBIDDEN_REACH }, }),
			n(205876, { ["questID"] = 76184, ["coord"] = { 22.8, 88.4, THE_WAKING_SHORES }, }),
			n(205876, { ["questID"] = 76185, ["coord"] = { 24.1, 55.6, THE_WAKING_SHORES }, }),
			n(205876, { ["questID"] = 76186, ["coord"] = { 58.5, 67.7, THE_WAKING_SHORES }, }),
			n(205876, { ["questID"] = 76187, ["coord"] = { 63.9, 44.8, THE_WAKING_SHORES }, }),
		})),
	}),
})));
