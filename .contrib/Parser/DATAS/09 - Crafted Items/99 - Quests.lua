---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------

-- These are Quests which have no restriction on the Quest itself but requires some Profession-made Thing to start the Quest
root(ROOTS.Craftables, {
	expansion(EXPANSION.MOP, {
		n(QUESTS, {
			q(31752, {	-- Blingtron 4000
				["qg"] = 43929,	-- Blingtron 4000
				["isDaily"] = true,
				["groups"] = {
					i(86623, {	-- Blingtron 4000 Gift Package
						["sym"] = {{"select","itemID",
							87250,	-- Depleted-Kyparium Rocket (MOUNT!)
							87251,	-- Geosynchronous World Spinner (MOUNT!)
							41508,	-- Mechano-Hog (MOUNT!)
							44413,	-- Mekgineer's Chopper (MOUNT!)
							15996,	-- Lifelike Toad (PET!)
							11826,	-- Lil' Smoky (PET!)
							4401,	-- Mechanical Squirrel (PET!)
							11825,	-- Pet Bombling (PET!)
							21277,	-- Tranquil Mechanical Yeti (PET!)
						}},
						["groups"] = {
							i(103670),	-- Lil' Bling (PET!)
							i(90561, {	-- Eternium Rose
								["description"] = "Can be turned in in Booty Bay for a bag of gold!",
							}),
							i(97985, {	-- Dusty Old Robot (QI!)
								["description"] = "Trash Item - The quest provided by this item was removed in 7.1.5.",
							}),
						},
					}),
				},
			}),
		}),
	}),
	expansion(EXPANSION.WOD, {
		n(QUESTS, {
			q(34774, {	-- Blingtron 5000
				["qg"] = 77789,	-- Blingtron 5000
				["isDaily"] = true,
				["groups"] = {
					ach(9071, {	-- Inspector Gadgetzan (automated)
						["_doautomation"] = true,	-- otherwise ignored from quest parent
					}),
					i(113258, {	-- Blingtron 5000 Gift Package
						["sym"] = {{"select","itemID",86623},{"pop"}},	-- Blingtron 4000 Gift Package
						["groups"] = {
							i(115483),	-- Sky-Bo (PET!)
							i(123851),	-- Photo B.O.M.B. (TOY!)
							i(114002, {	-- Encoded Message
								i(113994),	-- Decoded Message 001-003
								i(113995),	-- Decoded Message 001-014
								i(113996),	-- Decoded Message 001-107
								i(113997),	-- Decoded Message 001-111
								i(113998),	-- Decoded Message 001-119
								i(113999),	-- Decoded Message 001-150
								i(114000),	-- Decoded Message 001-159
								i(114001),	-- Decoded Message 001-168
							}),
						},
					}),
				},
			}),
		}),
	}),
	expansion(EXPANSION.LEGION, {
		n(QUESTS, {
			q(40753, {	-- Blingtron 6000
				["qg"] = 101527,	-- Blingtron 6000
				["isDaily"] = true,
				["groups"] = {
					i(132892, {	-- Blingtron 6000 Gift Package
						["sym"] = {{"select","itemID",113258},{"pop"},	-- Blingtron 5000 Gift Package
							{"select","itemID",
								136631,	-- Surface-to-Infernal Rocket Launcher
								136630,	-- "Twirling Bottom" Repeaater"
								136629,	-- Felgibber Shotgun
								136632,	-- Chaos Blaster
						}},
						["groups"] = {
							i(136911),	-- Knockoff Blingtron -- https://www.wowhead.com/item=168740/blingtron-7000-gift-package#comments:id=3210510
						},
					}),
				},
			}),
		}),
	}),
	expansion(EXPANSION.BFA, {
		n(QUESTS, {
			q(56042, {	-- Blingtron 7000
				["qg"] = 153897,	-- Blingtron 7000
				["isDaily"] = true,
				["groups"] = {
					i(168740, {	-- Blingtron 7000 Gift Package
						["sym"] = {{"select","itemID",132892},{"pop"}},	-- Blingtron 6000 Gift Package
						["groups"] = {
							-- TODO does the 7000 have any special unique drop?
						},
					}),
				},
			}),
		}),
	}),
});
