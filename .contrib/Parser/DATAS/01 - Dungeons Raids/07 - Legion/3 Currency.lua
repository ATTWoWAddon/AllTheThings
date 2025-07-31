-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

--	putting description + coords/cost on these because not all the information shows up in all places.  you can't see the coords or cost from the currency window, just the description, but you can plot coords if you pop the currencies out.
-- i didn't put cost on the ones that have choices because i didn't want it to seem like you needed all the different currencies/items to purchase seals, and i didn't put cost on warforged seals because you exchange 50 for 3, which we can't communicate clearly in anything other than a description
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	n(REWARDS, {
		currency(1273, {	-- Seal of Broken Fate
			["description"] = "Up to 3 per week obtained via quests offered by Archmage Lan'dalock in Broken Isles Dalaran |cffffffff(57.2, 67.5)|r.  Costs for the week increase each time you purchase a seal with the same currency.\n\nGold: 1,000 > 2,000 > 4,000\n\nMarks of Honor: 5 > 10 > 20\n\nOrder Resources: 1,000 > 2,000 > 4,000\n",
			["coord"] = { 57.2, 67.5, LEGION_DALARAN },	-- Archmage Lan'dalock
		}),
	}),
}));
