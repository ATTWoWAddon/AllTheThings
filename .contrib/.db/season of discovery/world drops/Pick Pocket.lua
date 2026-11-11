-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldDrops, {
	pickpocketing(true, {
		description = "A Rogue can use their Pick Pocket skill to steal the following items from mobs of a specific area.",
		groups = {
			i(6150, {	-- A Frayed Knot
				description = "Can be pickpocketed from Classic humanoids.",
			}),
			i(5373, {	-- Lucky Charm
				description = "While there's no evidence to suggest that having this item will make the thing you want drop for you, Crieve totally got his second binding after only 97 weeks of Baron Geddon with this bad boy in his bags. Without it, it'd probably have been more than that!",
			}),
		},
	}),
});
