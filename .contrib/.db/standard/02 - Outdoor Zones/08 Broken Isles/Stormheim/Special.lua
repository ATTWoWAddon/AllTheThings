---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(STORMHEIM, {
		n(SPECIAL, {
			n(109083, {	-- Houndmaster Payne
				["questID"] = 42858,
				["coord"] = { 72.0, 59.8, STORMHEIM },
				["crs"] = { 109089 },	-- Houndmaster Payne
				["description"] = "Patrols inside of Greywatch. Horde players can still interact with him, but be aware the rest of the camp will be hostile. Shares completion with |cffffff00Batmaster Claud|r. \n\nCan be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
			}),
			n(109133, {	-- Batmaster Claud
				["questID"] = 42858,
				["coord"] = { 54.6, 71.6, STORMHEIM },
				["description"] = "Patrols inside of Dreadwake's Landing. Alliance players can still interact with him, but be aware the rest of the camp will be hostile. Shares completion with |cffffff00Houndmaster Payne|r. \n\nCan be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
			}),
		}),
	}),
})));
