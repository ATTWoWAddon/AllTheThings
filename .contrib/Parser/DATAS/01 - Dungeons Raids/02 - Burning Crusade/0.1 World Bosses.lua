-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["groups"] = {
			n(18728, {	-- Doom Lord Kazzak
				["lore"] = "Originally known just as Lord Kazzak, but after he found an artifact to reopen the Dark Portal and travelled through it, he was promoted. He now commands the Legion war effort in Outland in the name of his master, Kil'jaeden. Lord Kazzak's replacement on Azeroth after the re-opening of the Dark Portal is Highlord Kruul, one of Kazzak's minions.",
				["coord"] = { 63.2, 16.0, HELLFIRE_PENINSULA },
				["modelScale"] = 3.8,
				["isRaid"] = true,
				["groups"] = {
					i(30732),	-- Exodar Life-Staff
					i(30733),	-- Hope Ender
					i(30740),	-- Ripfiend Shoulderplates
					i(30735),	-- Ancient Spellcloak of the Highborne
					i(30739),	-- Scaled Greaves of the Marksman
					i(30741),	-- Topaz-Studded Battlegrips
					i(30734),	-- Leggings of the Seventh Circle
					i(30737),	-- Gold-Leaf Wildboots
					i(30736),	-- Ring of Flowing Light
					i(30738),	-- Ring of Reciprocity
				},
			}),
			n(17711, {	-- Doomwalker
				["lore"] = "Doomwalker is a powerful Fel Reaver sent by Kil'jaeden to assault the gates of the Black Temple in Shadowmoon Valley.",
				["coord"] = { 71.4, 43.8, SHADOWMOON_VALLEY },
				["isRaid"] = true,
				["groups"] = {
					i(30724),	-- Barrel-Blade Longrifle
					i(30722),	-- Ethereum Nexus-Reaver
					i(30723),	-- Talon of the Tempest
					i(30731),	-- Faceguard of the Endless Watch
					i(30728),	-- Fathom-Helm of the Deeps
					i(30726),	-- Archaic Charm of Presence
					i(30729),	-- Black-Iron Battlecloak
					i(30730),	-- Terrorweave Tunic
					i(30725),	-- Anger-Spark Gloves
					i(30727),	-- Gilded Trousers of Benediction
				},
			}),
		},
	}),
}))));
