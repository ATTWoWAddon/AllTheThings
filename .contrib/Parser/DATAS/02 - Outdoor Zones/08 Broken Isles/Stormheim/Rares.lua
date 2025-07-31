---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(STORMHEIM, {
			n(RARES, {
				n(SPECIAL, sharedData({["sharedDescription"] = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."},{
					n(109083, {	-- Houndmaster Payne
						["questID"] = 42858,
						["coord"] = { 72, 59.8, STORMHEIM },
						["crs"] = { 109089 },    -- Houndmaster Payne
						["description"] = "Patrols inside of Greywatch. Horde players can still interact with him, but be aware the rest of the camp will be hostile. Shares completion with |cffffff00Batmaster Claud|r. \n\nCan be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
					}),
					n(109133, {	-- Batmaster Claud
						["questID"] = 42858,
						["coord"] = { 54.6, 71.6, STORMHEIM },
						["description"] = "Patrols inside of Dreadwake's Landing. Alliance players can still interact with him, but be aware the rest of the camp will be hostile. Shares completion with |cffffff00Houndmaster Payne|r. \n\nCan be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit.",
					}),
				})),
				n(91874, {	-- Bladesquall
					["questID"] = 38431,
					["coord"] = { 46.0, 77.7, STORMHEIM },
					["groups"] = {
						i(129048),
					},
				}),
				n(92599, {	-- Bloodstalker Alpha
					["questID"] = 38626,
					["coord"] = { 38.8, 38.8, STORMHEIM },
					["groups"] = {
						i(129101),	-- Alpha's Paw
					},
				}),
				n(92685, {	-- Captain Brvet
					["description"] = "Click on the Horn of the Helmouth to spawn Captain Brvet.",
					["questID"] = 38642,
					["coord"] = { 58.0, 45.2, STORMHEIM },
					["groups"] = {
						i(129123),	-- Brvet's Hauberk of Command
					},
				}),
				n(94313, {	-- Daniel "Boomer" Vorick
					["questID"] = 39048,
					["coord"] = { 58.2, 75.5, STORMHEIM },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(129144),	-- Boomer's Utility Belt
					},
				}),
				n(94347, {	-- Dread-Rider Cortis
					["questID"] = 43343,
					["coord"] = { 74.2, 62.4, STORMHEIM },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(130134),	-- Padded-Link Sniper Leggings
					},
				}),
				n(98188, {	-- Egyl the Enduring
					["questID"] = 40068,
					["coord"] = { 41.4, 32.0, STORMHEIM },	-- cave entrance
					["groups"] = {
						i(132898),	-- Sabatons of the Endless Vigil
					},
				}),
				n(91803, {	-- Fathnyr
					["questID"] = 38425,
					["coord"] = { 46.3, 82.9, STORMHEIM },
					["groups"] = {
						i(129206),	-- Andvari's Gift
					},
				}),
				n(createHeader({	-- Forsaken Deathsquad
					readable = "Forsaken Deathsquad",
					icon = 463451,
					text = {
						en = "Forsaken Deathsquad",
						es = "Escuadrón de la Muerte Abandonado",
						de = "Todesschwadron der Verlassenen",
						fr = "Escadron de la Mort Abandonné",
						it = "Squadra della Morte Abbandonata",
						pt = "Esquadrão da Morte Abandonado",
						ru = "Отрекшийся отряд смерти",
						ko = "포세이큰 데스스쿼드",
						cn = "被遗忘者敢死队",
					},
					description = {
						en = "There is an ongoing 4x4 battle.  Assist the Alliance by defeating the Forsaken Deathsquad.",
						es = "Hay una batalla 4x4 en curso. Ayuda a la Alianza derrotando al Forsaken Deathsquad.",
						de = "Es gibt einen laufenden 4x4-Kampf. Unterstützen Sie die Allianz, indem Sie die Todesschwadron der Forsaken besiegen.",
						fr = "Il y a une bataille en 4x4 en cours. Aidez l'Alliance en battant l'escadron de la mort abandonné.",
						it = "C'è una battaglia 4x4 in corso. Aiuta l'Alleanza sconfiggendo la Squadra della Morte dei Rinnegati.",
						pt = "Há uma batalha 4x4 em andamento. Ajude a Aliança derrotando o Esquadrão da Morte Abandonado.",
						ru = "Идет продолжающаяся битва четыре на четыре. Помогите Альянсу, победив Отрекшихся Отряд Смерти.",
						ko = "4대4 전투가 진행 중입니다. Forsaken Deathsquad를 물리쳐 얼라이언스를 지원하세요.",
						cn = "正在进行一场四对四的战斗。协助联盟击败被遗忘者敢死队。",
					},
				}), {
					["providers"] = {
						{ "n", 92626 },	-- Deathguard Adams
						{ "n", 92631 },	-- Dark Ranger Jess
						{ "n", 92633 },	-- Assassin Huwe
						{ "n", 92634 },	-- Apothecary Perez
					},
					["questID"] = 38630,	-- Forsaken Deathsquad
					["coord"] = { 44.2, 22.8, STORMHEIM },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(129266),	-- Raider Captain's Gauntlets
					},
				}),
				n(91529, {	-- Glimar Ironfist
					["questID"] = 38333,
					["coord"] = { 41.9, 66.5, STORMHEIM },
					["groups"] = {
						i(129291),	-- Stormslayer Champion Belt
					},
				}),
				n(98503, {	-- Grrvrgull the Conqueror
					["questID"] = 40113,
					["coord"] = { 78.9, 61.1, STORMHEIM },
					["groups"] = {
						i(138421),	-- The Conqueror's Chain
					},
				}),
				n(107926, {	-- Hannval the Butcher
					["questID"] = 42591,
					["coord"] = { 51.9, 74.8, STORMHEIM },
					["groups"] = {
						i(138417),	-- The Butcher's Apron
					},
				}),
				n(92590, {	-- Hook
					["questID"] = 38625,	-- Hook and Sinker
					["coord"] = { 42.0, 57.6, STORMHEIM },
					["crs"] = { 92591 },	-- Sinker
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(129109),	-- Sinker's Line
					},
				}),
				n(92951, {	-- Houndmaster Ely
					["questID"] = 38712,
					["coord"] = { 47.1, 57.2, STORMHEIM },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(129037),	-- THe Houndmaster's Fancy Pants
					},
				}),
				n(90139, {	-- Inquisitor Ernstenbok
					["questID"] = 37908,
					["coord"] = { 62.4, 74.9, STORMHEIM },	-- cave entrance
					["groups"] = {
						i(140686),	-- Gargantuan Mantle
					},
				}),
				n(94413, {	-- Isel the Hammer
					["questID"] = 39120,
					["coord"] = { 62.0, 60.6, STORMHEIM },
					["groups"] = {
						i(129133),	-- The Hammer's Head
					},
				}),
				n(92751, {	-- Ivory Sentinel
					["questID"] = 39031,
					["coord"] = { 60.1, 68.1, STORMHEIM },
					["groups"] = {
						i(132895),	-- The Watcher's Divine Inspiration
					},
				}),
				n(98421, {	-- Kottr Vondyr
					["questID"] = 40109,
					["coord"] = { 73.6, 47.6, STORMHEIM },
					["groups"] = {
						i(138419),	-- The Binder's Bonds
					},
				}),
				n(93371, {	-- Mordvigbjorn
					["questID"] = 38837,
					["coord"] = { 72.8, 49.6, STORMHEIM },
					["groups"] = {
						i(133827),	-- Recipe: Bear Tartare [Rank 1] (RECIPE!)
						i(129035),	-- Indomitable Bearskin Cloak
					},
				}),
				n(91780, {	-- Mother Clacker
					["questID"] = 38422,
					["coord"] = { 35.4, 18.4, STORMHEIM },
					["crs"] = { 92343 },	-- Captain Tomas
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(129040),	-- Clacker's Clanking Clam Diggers
					},
				}),
				n(110363, {	-- Roteye
					["questID"] = 43342,
					["coord"] = { 57.8, 34.6, STORMHEIM },
					["groups"] = {
						i(139387),	-- Drowned Champion's Greaves
					},
				}),
				n(107487, {	-- Starbuck
					["questID"] = 42437,
					["coord"] = { 54.4, 28.9, STORMHEIM },
					["groups"] = {
						i(130132),	-- Bracers of Earthbound Flight
					},
				}),
				n(91795, {	-- Stormwing Matriarch
					["questID"] = 38423,
					["coord"] = { 49.5, 72.3, STORMHEIM },
					["groups"] = {
						i(129208),	-- Stormborne Whelpling (PET!)
						i(129110),	-- Matriarch-Hide Legguards
					},
				}),
				n(98268, {	-- Tarben <Jarl of Tideskorn Harbor>
					["questID"] = 40081,
					["coord"] = { 61.6, 43.4, STORMHEIM },
					["groups"] = {
						i(129199),	-- Tideskorn Jarl's Pendant
					},
				}),
				n(91892, {	-- Thane Irglov the Merciless
					["questID"] = 38424,
					["coord"] = { 41.8, 71.2, STORMHEIM },
					["crs"] = {
						91893,	-- Erling the Lightningborn
						91894,	-- Strider Cuyler
						91895,	-- Asger Jarlborn
					},
					["groups"] = {
						i(129113),	-- Faintly Glowing Flagon of Mead (TOY!)
					},
				}),
				n(92763, {	-- The Nameless King
					["description"] = "Click on the offering shrine that spawns in front of the sign to summon The Nameless King.",
					["questID"] = 38685,
					["coord"] = { 67.2, 39.8, STORMHEIM },
					["groups"] = {
						i(129041),	-- Aurora of the Nameless King
					},
				}),
				n(93166, {	-- Tiptog the Lost
					["questID"] = 38774,
					["coord"] = { 47.0, 49.4, STORMHEIM },
					["groups"] = {
						i(129163),	-- Lost Etin's Strength
					},
				}),
				n(93401, {	-- Urgev the Flayer
					["questID"] = 38847,
					["coord"] = { 64.7, 51.9, STORMHEIM },
					["groups"] = {
						i(129219),	-- The Flayer's Runewraps
					},
				}),
				n(92152, {	-- Whitewater Typhoon
					["questID"] = 38472,
					["coord"] = { 36.2, 51.1, STORMHEIM },
					["groups"] = {
						i(138418),	-- Typhoon Grips
					},
				}),
				n(createHeader({	-- Worgen Stalkers
					readable = "Worgen Stalkers",
					icon = 463876,
					text = {
						en = "Worgen Stalkers",
						es = "Acechadores Huargen",
						--de = "Worgen Stalkers",
						fr = "Traqueurs Worgens",
						it = "Cacciatori Worgen",
						pt = "Perseguidores Worgens",
						ru = "Воргены-сталкеры",
						ko = "늑대인간 추적자",
						cn = "狼人追猎者",
					},
					description = {
						en = "There is an ongoing 4x4 battle.  Assist the Horde by defeating the Worgen Stalkers.",
						es = "Hay una batalla 4x4 en curso. Ayuda a la Horda derrotando a los Worgen Stalkers.",
						de = "Es gibt einen laufenden 4x4-Kampf. Unterstützen Sie die Horde, indem Sie die Worgenpirscher besiegen.",
						fr = "Il y a une bataille en 4x4 en cours. Aidez la Horde en battant les Worgen Stalkers.",
						it = "C'è una battaglia 4x4 in corso. Aiuta l'Orda sconfiggendo i Worgen Stalker.",
						pt = "Há uma batalha 4x4 em andamento. Ajude a Horda derrotando os Worgen Stalkers.",
						ru = "Идет продолжающаяся битва четыре на четыре. Помогите Орде, победив воргенов-сталкеров.",
						ko = "4대4 전투가 진행 중입니다. 늑대인간 추적자를 물리쳐 호드를 도와주세요.",
						cn = "正在进行一场四对四的战斗。击败狼人追猎者，协助部落。",
					},
				}), {
					["providers"] = {
						{ "n", 92604 },	-- Champion Elodie
						{ "n", 92609 },	-- Tracker Jack
						{ "n", 92611 },	-- Ambusher Daggerfang
						{ "n", 92613 },	-- Priestess Liza
					},
					["questID"] = 38627,	-- Worgen Stalkers
					["coord"] = { 44.0, 22.9, STORMHEIM },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(129264),	-- Patrol Captain's Gauntlets
					},
				}),
--[[ TODO:
			--	n(108885, {	-- Aegir Wavecrusher	}),
			--	n(109113, {	-- Boulderfall, the Eroded	}),
			--	n(111463, {	-- Bulvinkel	}),
			--	n(108790, {	-- Den Mother Ylva	}),
			--	n(108827, {	-- Fjorlag, the Grave's Chill	}),
			--	n(108823, {	-- Halfdan	}),
			--	n(92682, {	-- Helmouth Raider	}),
			--	n(92703, {	-- Helmouth Raider	}),
			--	n(108822, {	-- Huntress Estrid	}),
			--	n(109015, {	-- Lagertha	}),
			--	n(109317, {	-- Rulf Bonesnapper	}),
			--	n(109318, {	-- Runeseer Sigvid	}),
			--	n(109195, {	-- Soulbinder Halldora	}),
			--	n(109994, {	-- Stormtalon	}),
			--	n(100223, {	-- Vrykul Earthshaper Spirit	}),
			--	n(100224, {	-- Vrykul Earthmaiden Spirit	}), --]]
			}),
		}),
	}),
});
