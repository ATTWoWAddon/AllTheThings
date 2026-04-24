---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			n(ACHIEVEMENTS, {
				ach(12103, {	-- ...And Chew Mana Buns
					i(153041),	-- Bleakhoof Ruinstrider (MOUNT!)
				}),
				achpart(12077, 12078),	-- Adventurer of Argus
				ach(12104, {	-- And We're All Out of Mana Buns
					title(367),	-- Demonslayer <Name>
				}),
				petbattle(ach(12088, {	-- Anomalous Animals of Argus
					crit(37719, {	-- Ruinhoof
						["crs"] = { 128007 },
						["coord"] = { 66.7, 72.6, KROKUUN },
					}),
					crit(37720, {	-- Foulclaw
						["crs"] = { 128008 },
						["coord"] = { 51.5, 63.8, KROKUUN },
					}),
					crit(37721, {	-- Baneglow
						["crs"] = { 128009 },
						["coord"] = { 43.0, 52.0, KROKUUN },
					}),
					crit(37722, {	-- Retch
						["crs"] = { 128010 },
						["coord"] = { 58.3, 29.7, KROKUUN },
					}),
					crit(37723, {	-- Deathscreech
						["crs"] = { 128011 },
						["coord"] = { 29.6, 57.9, KROKUUN },
					}),
					crit(37724, {	-- Gnasher
						["crs"] = { 128012 },
						["coord"] = { 39.6, 66.5, KROKUUN },
					}),
					crit(37725, {	-- Bucky
						["crs"] = { 128013 },
						["coord"] = { 67.6, 43.9, EREDATH },
					}),
					crit(37726, {	-- Snozz
						["crs"] = { 128014 },
						["coord"] = { 69.7, 51.9, EREDATH },
					}),
					crit(37727, {	-- Gloamwing
						["crs"] = { 128015 },
						["coord"] = { 60.0, 71.1, EREDATH },
					}),
					crit(37728, {	-- Shadeflicker
						["crs"] = { 128016 },
						["coord"] = { 36.0, 54.1, EREDATH },
					}),
					crit(37729, {	-- Corrupted Blood of Argus
						["crs"] = { 128017 },
						["coord"] = { 31.9, 31.2, EREDATH },
					}),
					crit(37730, {	-- Mar'cuus
						["crs"] = { 128018 },
						["coord"] = { 74.7, 36.2, EREDATH },
					}),
					crit(37731, {	-- Watcher
						["crs"] = { 128019 },
						["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
					}),
					crit(37732, {	-- Bloat
						["crs"] = { 128020 },
						["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
					}),
					crit(37733, {	-- Earseeker
						["crs"] = { 128021 },
						["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
					}),
					crit(37734, {	-- Pilfer
						["crs"] = { 128022 },
						["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
					}),
					crit(37735, {	-- Minixis
						["crs"] = { 128023 },
						["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
					}),
					crit(37736, {	-- One-of-Many
						["crs"] = { 128024 },
						["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
					}),
				})),
				ach(12078, {	-- Commander of Argus
					iensemble(152396),	-- Arsenal: Weapons of the Lightforged
					crit(37665, {
						["_npcs"] = { 127705 },	-- Mother Rosula
					}),
					crit(37605, {
						["_npcs"] = { 127118 },	-- Worldsplitter Skuul
					}),
					crit(37606, {
						["_npcs"] = { 127376 },	-- Chief Alchemist Munculus
					}),
					crit(37654, {
						["_npcs"] = { 122838 },	-- Shadowcaster Voruun
					}),
					crit(37655, {
						["_npcs"] = { 123689 },	-- Talestra the Vile
					}),
					crit(37656, {
						["_npcs"] = { 122999 },	-- Gar'zoth
					}),
					crit(37657, {
						["_npcs"] = { 122958 },	-- Blistermaw
					}),
					crit(37658, {
						["_npcs"] = { 122947 },	-- Mistress Il'thendra
					}),
					crit(37659, {
						["_npcs"] = { 120393 },	-- Siegemaster Voraan
					}),
					crit(37660, {
						["_npcs"] = { 127581 },	-- The Many-Faced Devourer
					}),
					crit(37662, {
						["_npcs"] = { 127700 },	-- Squadron Commander Vishax
					}),
					crit(37663, {
						["_npcs"] = { 127703 },	-- Doomcaster Suprax
					}),
					crit(37664, {
						["_npcs"] = { 127706 },	-- Rezira the Seer
					}),
					crit(37653, {
						["_npcs"] = { 124804 },	-- Tereck the Selector
					}),
					crit(37652, {
						["_npcs"] = { 125388 },	-- Vagath the Betrayed
					}),
					crit(37651, {
						["_npcs"] = { 125479 },	-- Tar Spitter
					}),
					crit(37650, {
						["_npcs"] = { 125820 },	-- Imp Mother Laglath
					}),
					crit(37649, {
						["_npcs"] = { 126199 },	-- Vrax'thul
					}),
					crit(37648, {
						["_npcs"] = { 126115 },	-- Ven'orn
					}),
					crit(37647, {
						["_npcs"] = { 126040 },	-- Puscilla
					}),
					crit(37646, {
						["_npcs"] = { 125824 },	-- Khazaduum
					}),
					crit(37645, {
						["_npcs"] = { 126419 },	-- Naroua <King of the Forest>
					}),
					crit(37644, {
						["_npcs"] = { 122912 },	-- Commander Sathrenael
					}),
					crit(37643, {
						["_npcs"] = { 122911 },	-- Commander Vecaya
					}),
					crit(37642, {
						["_npcs"] = { 124775 },	-- Commander Endaxis
					}),
					crit(37641, {
						["_npcs"] = { 123464 },	-- Sister Subversia <Coven of Shivarra>
					}),
					crit(37640, {
						["_npcs"] = { 126815 },	-- Soultwisted Monstrosity
					}),
					crit(37639, {
						["_npcs"] = { 126852 },	-- Wrangler Kravos
					}),
					crit(37638, {
						["_npcs"] = { 126860 },	-- Kaara the Pale
					}),
					crit(37637, {
						["_npcs"] = { 126862 },	-- Baruut the Bloodthirsty
					}),
					crit(37636, {
						["_npcs"] = { 126864 },	-- Feasel the Muffin Thief
					}),
					crit(37635, {
						["_npcs"] = { 126865 },	-- Vigilant Thanos
					}),
					crit(37634, {
						["_npcs"] = { 126866 },	-- Vigilant Kuro
					}),
					crit(37633, {
						["_npcs"] = { 126867 },	-- Venomtail Skyfin
					}),
					crit(37632, {
						["_npcs"] = { 126868 },	-- Turek the Lucid
					}),
					crit(37631, {
						["_npcs"] = { 126869 },	-- Captain Faruq
					}),
					crit(37630, {
						["_npcs"] = { 126885 },	-- Umbraliss <Voidstalker Matriarch>
					}),
					crit(37629, {
						["_npcs"] = { 126887 },	-- Ataxon
					}),
					crit(37628, {
						["_npcs"] = { 126889 },	-- Sorolis the Ill-Fated
					}),
					crit(37627, {
						["_npcs"] = { 126896 },	-- Herald of Chaos
					}),
					crit(37626, {
						["_npcs"] = { 126898 },	-- Sabuul
					}),
					crit(37625, {
						["_npcs"] = { 126899 },	-- Jed'hin Champion Vorusk
					}),
					crit(37624, {
						["_npcs"] = { 124440 },	-- Overseer Y'Beda
					}),
					crit(37623, {
						["_npcs"] = { 125497 },	-- Overseer Y'Sorna
					}),
					crit(37622, {
						["_npcs"] = { 125498 },	-- Overseer Y'Morna
					}),
					crit(37621, {
						["_npcs"] = { 126900 },	-- Instructor Tarahna
					}),
					crit(37620, {
						["_npcs"] = { 126908 },	-- Zul'tan the Numerous
					}),
					crit(37619, {
						["_npcs"] = { 126910 },	-- Commander Xethgar
					}),
					crit(37618, {
						["_npcs"] = { 126912 },	-- Skreeg the Devourer
					}),
					crit(37617, {
						["_npcs"] = { 126913 },	-- Slithon the Last
					}),
					crit(37616, {
						["_npcs"] = { 126338 },	-- Wrath-Lord Yarez
					}),
					crit(37615, {
						["_npcs"] = { 127288 },	-- Houndmaster Kerrax
					}),
					crit(37614, {
						["_npcs"] = { 127300 },	-- Void Warden Valsuran
					}),
					crit(37613, {
						["_npcs"] = { 127291 },	-- Watcher Aival
					}),
					crit(37612, {
						["_npcs"] = { 126254 },	-- Lieutenant Xakaar <Hand of Svirax>
					}),
					crit(37611, {
						["_npcs"] = { 127090 },	-- Admiral Rel'var
					}),
					crit(37610, {
						["_npcs"] = { 127084 },	-- Commander Texlaz
					}),
					crit(37609, {
						["_npcs"] = { 127096 },	-- All-Seer Xanarian
					}),
					crit(37608, {
						["_npcs"] = { 126946 },	-- Inquisitor Vethroz
					}),
					crit(37607, {
						["_npcs"] = { 126208 },	-- Varga
					}),
				}),
				ach(12069),	-- Explore Argus
				header(HEADERS.Achievement, 12100, {	-- Family Fighter
					petbattle(ach(12100, {	-- Family Fighter
						-- Meta Achievements
						["sym"] = {{"meta_achievement",
							12089,	-- Aquatic Assault
							12091,	-- Beast Blitz
							12092,	-- Critical Critters
							12093,	-- Draconic Destruction
							12094,	-- Elemental Escalation
							12095,	-- Fierce Fliers
							12096,	-- Humanoid Havoc
							12097,	-- Magical Mayhem
							12098,	-- Mechanical Melee
							12099,	-- Unstoppable Undead
						}},
						["groups"] = {
							i(153040),	-- Felclaw Marsuul (PET!)
						},
					})),
					petbattle(ach(12089, {	-- Aquatic Assault
						crit(37740, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37757, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37759, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37769, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37779, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37789, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37799, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37809, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37819, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37829, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37839, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37849, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37859, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37869, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37879, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37889, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37899, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37909, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12091, {	-- Beast Blitz
						crit(37741, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37756, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37760, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37770, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37780, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37790, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37800, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37810, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37820, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37830, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37840, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37850, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37860, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37870, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37880, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37890, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37900, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37910, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12092, {	-- Critical Critters
						crit(37742, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37755, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37761, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37771, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37781, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37791, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37801, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37811, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37821, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37831, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37841, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37851, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37861, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37871, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37881, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37891, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37901, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37911, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12093, {	-- Draconic Destruction
						crit(37743, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37754, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37762, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37772, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37782, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37792, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37802, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37812, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37822, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37832, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37842, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37852, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37862, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37872, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37882, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37892, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37902, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37912, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12094, {	-- Elemental Escalation
						crit(37744, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37753, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37763, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37773, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37783, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37793, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37803, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37813, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37823, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37833, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37843, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37853, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37863, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37873, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37883, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37893, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37903, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37913, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12095, {	-- Fierce Fliers
						crit(37745, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37752, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37764, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37774, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37784, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37794, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37804, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37814, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37824, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37834, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37844, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37854, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37864, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37874, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37884, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37894, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37904, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37914, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12096, {	-- Humanoid Havoc
						crit(37746, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37750, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37765, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37775, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37785, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37795, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37805, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37815, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37825, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37835, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37845, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37855, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37865, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37875, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37885, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37895, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37905, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37915, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12097, {	-- Magical Mayhem
						crit(37747, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37751, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37766, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37776, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37786, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37796, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37806, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37816, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37826, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37836, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37846, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37856, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37866, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37876, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37886, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37896, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37906, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37916, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12098, {	-- Mechanical Melee
						crit(37748, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37919, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37767, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37777, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37787, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37797, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37807, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37817, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37827, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37837, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37847, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37857, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37867, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37877, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37887, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37897, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37907, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37917, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
					petbattle(ach(12099, {	-- Unstoppable Undead
						crit(37749, {	-- Ruinhoof
							["crs"] = { 128007 },
							["coord"] = { 66.7, 72.6, KROKUUN },
						}),
						crit(37758, {	-- Foulclaw
							["crs"] = { 128008 },
							["coord"] = { 51.5, 63.8, KROKUUN },
						}),
						crit(37768, {	-- Baneglow
							["crs"] = { 128009 },
							["coord"] = { 43.0, 52.0, KROKUUN },
						}),
						crit(37778, {	-- Retch
							["crs"] = { 128010 },
							["coord"] = { 58.3, 29.7, KROKUUN },
						}),
						crit(37788, {	-- Deathscreech
							["crs"] = { 128011 },
							["coord"] = { 29.6, 57.9, KROKUUN },
						}),
						crit(37798, {	-- Gnasher
							["crs"] = { 128012 },
							["coord"] = { 39.6, 66.5, KROKUUN },
						}),
						crit(37808, {	-- Bucky
							["crs"] = { 128013 },
							["coord"] = { 67.6, 43.9, EREDATH },
						}),
						crit(37818, {	-- Snozz
							["crs"] = { 128014 },
							["coord"] = { 69.7, 51.9, EREDATH },
						}),
						crit(37828, {	-- Gloamwing
							["crs"] = { 128015 },
							["coord"] = { 60.0, 71.1, EREDATH },
						}),
						crit(37838, {	-- Shadeflicker
							["crs"] = { 128016 },
							["coord"] = { 36.0, 54.1, EREDATH },
						}),
						crit(37848, {	-- Corrupted Blood of Argus
							["crs"] = { 128017 },
							["coord"] = { 31.9, 31.2, EREDATH },
						}),
						crit(37858, {	-- Mar'cuus
							["crs"] = { 128018 },
							["coord"] = { 74.7, 36.2, EREDATH },
						}),
						crit(37868, {	-- Watcher
							["crs"] = { 128019 },
							["coord"] = { 51.6, 41.4, ANTORAN_WASTES },
						}),
						crit(37878, {	-- Bloat
							["crs"] = { 128020 },
							["coord"] = { 56.6, 54.2, ANTORAN_WASTES },
						}),
						crit(37888, {	-- Earseeker
							["crs"] = { 128021 },
							["coord"] = { 56.1, 28.7, ANTORAN_WASTES },
						}),
						crit(37898, {	-- Pilfer
							["crs"] = { 128022 },
							["coord"] = { 64.1, 66.0, ANTORAN_WASTES },
						}),
						crit(37908, {	-- Minixis
							["crs"] = { 128023 },
							["coord"] = { 76.7, 73.9, ANTORAN_WASTES },
						}),
						crit(37918, {	-- One-of-Many
							["crs"] = { 128024 },
							["coord"] = { 59.8, 40.3, ANTORAN_WASTES },
						}),
					})),
				}),
				ach(12084),		-- Infused and Abused
				ach(12073, {	-- Locked and Loaded
					crit(38089, {	-- Light's Judgement
						["sourceQuests"] = { 47287 },	-- The Vindicaar Matrix Core
					}),
					crit(38090, {	-- Lightforged Warframe
						["sourceQuests"] = { 47994 },	-- Forming a Bond
					}),
					crit(38091, {	-- Fel Heart of Argus
						["sourceQuests"] = { 47182 },	-- Long Overdue
					}),
					crit(37478, {	-- Shroud of Arcane Echoes
						["sourceQuests"] = { 48107 },	-- The Sigil of Awakening
					}),
				}),
				ach(12072, {	-- Now You're Cooking with Netherlight
					["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
				}),
				ach(12083, {	-- Paragon of Argus
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						12028,	-- Envision Invasion Eradication
						12007,	-- Heroic: Seat of the Triumvirate
						12026,	-- Invasion Obliteration
						12073,	-- Locked and Loaded
						12081,	-- Officer of the Light
						12076,	-- Protector of the Argussian Reach
						11991,	-- Seat of the Pantheon
						12074,	-- Shoot First, Loot Later
						12066,	-- You Are Now Prepared!
					}},
					["groups"] = {
						title(366),	-- <Name> the Lightbringer
					},
				}),
				ach(12074, {	-- Shoot First, Loot Later
					["sym"] = {{ "achievement_criteria" }},
				}),
				ach(12102),	-- To Kill Demons...
				ach(12101),	-- We Came Here For Two Reasons
				ach(12066, {	-- You Are Now Prepared!
					crit(37477, {	-- The Assault Begins
						["sourceQuests"] = {
							47473,	-- Sizing Up the Opposition (Light's Purchase)
						},
					}),
					crit(38060, {	-- The Assault Begins
						["sourceQuests"] = {
							48929,	-- Sizing Up the Opposition (The Veiled Den)
						},
					}),
					crit(37478, {	-- Dark Awakenings
						["sourceQuests"] = { 48107 },	-- The Sigil of Awakening
					}),
					crit(37479, {	-- War of Light and Shadow
						["sourceQuests"] = { 47220 },	-- A Beacon in the Dark
					}),
				}),
			}),
		})),
	}),
});
