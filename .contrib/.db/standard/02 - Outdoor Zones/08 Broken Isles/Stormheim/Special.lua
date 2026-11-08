---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(BROKEN_ISLES, STORMHEIM, {
	timeline = { ADDED_7_0_3_LAUNCH },
	groups = {
		n(SPECIAL, {
			hqt(42858, {	-- Houndmaster Payne / Batmaster Claud
				allianceQuestData = name(HEADERS.NPC, 109083, {
					crs = { 109083, 109089 },	-- Houndmaster Payne
					coord = { 54.6, 71.6, STORMHEIM },
					description = "Patrols inside of Greywatch. Horde players can still interact with him, but be aware the rest of the camp will be hostile. Shares completion with |cffffff00Batmaster Claud|r. \n\nCan be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
				}),
				hordeQuestData = name(HEADERS.NPC, 109133, {
					crs = { 109133 },	-- Batmaster Claud
					coord = { 72.0, 59.8, STORMHEIM },
					description = "Patrols inside of Dreadwake's Landing. Alliance players can still interact with him, but be aware the rest of the camp will be hostile. Shares completion with |cffffff00Houndmaster Payne|r. \n\nCan be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
				}),
			}),
		}),
	},
});
