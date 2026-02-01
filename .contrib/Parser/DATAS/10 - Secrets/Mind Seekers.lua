-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------

root(ROOTS.Secrets, {
	header(HEADERS.Achievement, 62189, {	-- Mind-Seeker
		["description"] = "Swim out to the coordinates then further out south just until fatigue kicks in, then retreat.\nSwim down until fatigue kicks in again then mad dash towards the glowing orb by the skeleton.\n\nYou will want the Vash'jir seahorse and water breathing to make it in time.",
		["coord"] = { 15.0, 90.0, VASHJIR_ABYSSAL_DEPTHS },
		["timeline"] = { ADDED_12_0_0 },
		["groups"] = {	-- Everything here is in a mapless place.
			n(256536, {	-- Anakron <Mind-Seeker>
				["description"] = "Around the room are displays tracking various 'secret' activities you may or may not have completed. If you've completed enough (17+), speak to Anakron to become a Mind Seeker.",
				["groups"] = {
					hqt(94828, {	-- Become a Mind Seeker
						["name"] = "Become a Mind Seeker",
					}),
					ach(62189, {	-- Mind-Seeker
						["sourceQuest"] = 94828,	-- Become a Mind Seeker
						["groups"] = { title(671) },	-- Mind-Seeker <Name>
					}),
				},
			}),
			n(256667, {	-- Mistress Nagmara
				["groups"] = {
					i(166545),	-- Befuddlin' Brew
					i(232005),	-- Cryptic Crostini
					i(232006),	-- Detective's Delight
					i(232009),	-- Riddle Wraps
					i(232007),	-- Sleuth's Sip
					i(262880),	-- Vintage Purple Stuff
				},
			}),
		},
	}),
});
