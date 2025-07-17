---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(SPECIAL, {
			n(182194, {	--- Baroness Vashj
				["coord"] = { 57.6, 92, MALDRAXXUS },
				["groups"] = {
					i(187923, {	-- Aurelid Lure (CI!)
						["description"] = "Step 1: Fish up Strange Goop from the water around Hirukon.\nStep 2: Talk to Vashj in Maldraxxus.\nStep 3: Collect the Three items needed.\nStep 4: Collect the Aurelid Lure from Vashj.\n\nObtained each week for free after the first time.",
						["cost"] = {
							{"i",187662,1},	-- Strange Goop
							{"i",187916,1},	-- Coilclutch Vine
							{"i",187922,1},	-- Flipper Fish
							{"i",187915,1},	-- Pungent Blobfish
						},
						["timeline"] = { ADDED_9_2_0 },
					}),
				},
			}),
			i(183114, {	-- Carpal (PET!)
				["description"] = "Combine with the other bones to craft the pet:\n|cFF0070ddAnimated Radius|r: Purchased from |cFFFFFFFFNalcorn Talsen|r in Maldraxxus. \n|cFF0070ddAnimated Ulna|r: A rare reward from pet battle WQs in Maldraxxus. \n|cFF0070ddFlexing Phalanges|r: Skeletal Hand Fragments (47.4, 62.1 in Maldraxxus).",
				["cost"] = {
					{ "i", 183112, 1 },	-- 1x Animated Radius
					{ "i", 183111, 1 },	-- 1x Animated Ulna
					{ "i", 183113, 1 },	-- 1x Flexing Phalanges
				},
			}),
			n(182105, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {	-- Mysterious Trashpile
				["description"] = "Use /bow on the Mysterious Trashpile. (Cave Entrance is 44.59, 65.48).",
				["coord"] = { 44.84, 67.89, MALDRAXXUS },
				["g"] = {
					i(187878),	-- Saurid Soul (SS!)
				},
			})),
		}),
	}),
})));