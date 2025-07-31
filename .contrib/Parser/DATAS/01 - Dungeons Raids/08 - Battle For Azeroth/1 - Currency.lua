-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, {
	n(REWARDS, {
		currency(1580, {	-- Seal of Wartorn Fate
			["description"] = "Up to 2 per week obtained via quests offered in your faction's main city in Battle for Azeroth.  Costs for the week increase each time you purchase a seal with the same currency.\n\n|cff3f48ccAlliance:|r Obtained from Tezran in Boralus |cffffffff(71.6, 13.6)|r.\n\n|cff880015Horde:|r Obtained from Zurvan in Dazar'alor |cffffffff(54.0, 88.4)|r.\n\nGold: 2,000 > 5,000\n\nMarks of Honor: 10 > 25\n\nWar Resources: 250 > 500\n",
			["coords"] = {
				{ 71.6, 13.6, BORALUS },	-- Alliance
				{ 54.0, 88.4, DAZARALOR },	-- Horde
			},
		}),
	}),
}));
