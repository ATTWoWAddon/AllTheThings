---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(HIGHMOUNTAIN, {
			n(RARES, {
				n(SPECIAL, sharedData({["sharedDescription"] = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."},{
					n(109150, {	-- Malefica
						["questID"] = 42862,
						["crs"] = { 109155 },	-- Malefica
						["coord"] = { 32.8, 66.6, HIGHMOUNTAIN },
					}),
					n(109059, {	-- Dareer
						["questID"] = 42826,
						["coord"] = { 39.8, 52.4, HIGHMOUNTAIN },
						["crs"] = { 109062 },	-- Dareer
					}),
					n(109159, {	-- Holk the Wanderer
						["questID"] = 42863,
						["coord"] = { 39.6, 58.2, 750 },
						["crs"] = { 109161 },	-- Holk the Wanderer
					}),
				})),
				n(createHeader({	-- Amateur Hunters
					readable = "Amateur Hunters",
					icon = 626000,
					text = {
						en = "Amateur Hunters",
						es = "Cazadores Aficionados",
						de = "Amateurjäger",
						fr = "Chasseurs Amateurs",
						it = "Cacciatori Dilettanti",
						pt = "Caçadores Amadores",
						ru = "Охотники-любители",
						ko = "아마추어 사냥꾼",
						cn = "业余猎人",
					},
					description = {
						en = "Three hunters have surrounded Mara Swiftmane. Engage them in combat, and a Battered Chest will spawn near Mara Swiftmane. Once the battle is over, Mara will thank you and leave you with the Battered Chest.",
						es = "Tres cazadores han rodeado a Mara Swiftmane. Entra en combate con ellos y aparecerá un cofre maltratado cerca de Mara Swiftmane. Una vez que termine la batalla, Mara te lo agradecerá y te dejará con el Cofre Maltratado.",
						de = "Drei Jäger haben Mara Swiftmane umzingelt. Wenn Sie sie in den Kampf verwickeln, wird in der Nähe von Mara Swiftmane eine zerschlagene Truhe erscheinen. Sobald der Kampf vorbei ist, wird Mara sich bei Ihnen bedanken und Sie mit der ramponierten Truhe zurücklassen.",
						fr = "Trois chasseurs ont encerclé Mara Swiftmane. Engagez-les au combat et un coffre battu apparaîtra près de Mara Swiftmane. Une fois la bataille terminée, Mara vous remerciera et vous laissera avec le coffre battu.",
						it = "Tre cacciatori hanno circondato Mara Mantoveloce. Coinvolgili in combattimento e un forziere malconcio verrà generato vicino a Mara Swiftmane. Una volta terminata la battaglia, Mara ti ringrazierà e ti lascerà con il baule malconcio.",
						pt = "Três caçadores cercaram Mara Swiftmane. Envolva-os em combate e um baú maltratado aparecerá perto de Mara Swiftmane. Assim que a batalha terminar, Mara agradecerá e deixará você com o Baú Maltratado.",
						ru = "Трое охотников окружили Мару Быстрогривую. Вступите с ними в бой, и рядом с Марой Быстрогривой появится потрепанный сундук. Как только битва закончится, Мара поблагодарит вас и оставит с потрепанным сундуком.",
						ko = "세 명의 사냥꾼이 마라 스위프트메인을 둘러싸고 있습니다. 전투에 참여하면 마라 스위프트메인 근처에 낡은 상자가 생성됩니다. 전투가 끝나면 마라는 감사 인사를 전하고 낡은 상자를 남겨줄 것입니다.",
						cn = "三名猎人包围了玛拉·斯威夫迈恩。与他们交战，玛拉·迅鬃附近会生成一个破烂的宝箱。战斗结束后，玛拉会感谢你，并给你留下破损的宝箱。",
					},
				}), {
					["questID"] = 40413,	-- Amateur Hunters
					["coord"] = { 43.1, 47.9, HIGHMOUNTAIN },
					["crs"] = {
						100231,	-- Dargok Thunderuin <Amateur Hunter>
						100232,	-- Ryael Dawndrifter <Amateur Hunter>
						100230,	-- "Sure-Shot" Arnie <Amateur Hunter>
						100238,	-- Mara Swiftmane
					},
					["groups"] = {
						o(245479, {	-- Battered Chest
							i(131781),	-- Plate Hiking Boots
						}),
					},
				}),
				n(104481, {	-- Ala'washte
					["questID"] = 45514,
					["coord"] = { 28.4, 53.8, HIGHMOUNTAIN },
				}),
				n(97215, {	-- Beastmaster Pao'lek
					["questID"] = 39784,	-- Beastmaster Pao'lek
					["description"] = "Speak with Beastmastr Pao'lek then help him tame Arru. Loot Thunder Totem Stolen Goods afterward.",
					["coord"] = { 48.6, 50.0, HIGHMOUNTAIN },
					["crs"] = { 97220 },	-- Arru <The Terror>
					["groups"] = {
						o(244473, {	-- Thunder Totem Stolen Goods
							i(131756),	-- Fletcher's Nimble Grips
						}),
					},
				}),
				n(98299, {	-- Bodash the Hoarder
					["questID"] = 40084,
					["coord"] = { 36.6, 16.6, HIGHMOUNTAIN },
					["groups"] = {
						i(131799),	-- Zugdug's Piece of Paradis
					},
				}),
				n(97449, {	-- Bristlemaul
					["questID"] = 40405,
					["coord"] = { 37.7, 45.7, HIGHMOUNTAIN },
					["groups"] = {
						i(131761),	-- Thick Bristly Hood
					},
				}),
				n(94877, {	-- Brogrul the Mighty
					["questID"] = 39235,
					["coord"] = { 56.2, 72.4, HIGHMOUNTAIN },
					["groups"] = {
						i(138396),	-- Mighty Chain Footpads
					},
				}),
				n(97933, {	-- Crab Rider Grmlrml
					["questID"] = 39994,
					["coords"] = {
						{ 43.0, 10.4, HIGHMOUNTAIN },
						{ 46.2, 12.0, HIGHMOUNTAIN },
					},
					["groups"] = {
						i(131798),	-- Faded Swashbuckler's Jerkin
					},
				}),
				n(97345, {	-- Crawshuk the Hungry
					["questID"] = 39806,
					["coord"] = { 48.3, 40.4, HIGHMOUNTAIN },
					["groups"] = {
						i(131809),	-- Gleaming Roc Feather
					},
				}),
				n(100495, {	-- Devouring Darkness
					["description"] = "Click all candles to summon the mob.",
					["coords"] = {
						{ 54.5, 41.4, HIGHMOUNTAIN },	-- actual rare
						{ 55.1, 44.3, HIGHMOUNTAIN },	-- cave entrance
					},
					["questID"] = 40414,
					["groups"] = {
						i(131780),	-- Void Slippers
					},
				}),
				n(96072, {	-- Durguth
					["isDaily"] = true,
					["description"] = "This rare is only available when its associated world quest is active.",
					["questID"] = 41093,
					["coord"] = { 43.8, 75.6, HIGHMOUNTAIN },
					["groups"] = {
						i(131796),	-- Roggumsoggum's Boppers
					},
				}),
				n(97793, {	-- Flamescale
					["description"] = "Click on the Abandoned Fishing Pole to summon Flamescale.",
					["provider"] = { "o", 244667 },	-- Abandoned Fishing Pole
					["questID"] = 39963,
					["coord"] = { 40.9, 57.7, HIGHMOUNTAIN },
					["groups"] = {
						i(131773),	-- Flamescale Mail
					},
				}),
				n(101649, {	-- Frostshard
					["questID"] = 40773,
					["coords"] = {
						{ 51.0, 80.8, HIGHMOUNTAIN },
						{ 51.8, 79.0, HIGHMOUNTAIN },
						{ 54.6, 75.6, HIGHMOUNTAIN },
					},
				}),
				n(96590, {	-- Gurbog da Basher
					["questID"] = 40347,
					["coord"] = { 56.5, 60.7, HIGHMOUNTAIN },
					["groups"] = {
						i(131775),	-- Da Basher's Toy Armor
					},
				}),
				n(97326, {	-- Hartli the Snatcher
					["questID"] = 39802,
					["coord"] = { 51.0, 48.5, HIGHMOUNTAIN },
					["groups"] = {
						-- i(129190),	-- Rope of Friendship
					},
				}),
				n(98024, {	-- Luggut the Eggeater
					["questID"] = 40406,
					["coords"] = {
						{ 51.4, 37.3, HIGHMOUNTAIN },	-- cave entrance
						{ 50.8, 34.7, HIGHMOUNTAIN },	-- actual rare
					},
					["groups"] = {
						i(131776),	-- Scale Cord of the Eggeater
					},
				}),
				n(96410, {	-- Majestic Elderhorn
					["questID"] = 39646,
					["coords"] = {
						{ 47.5, 32.9, HIGHMOUNTAIN },	-- spawn point - other coords are its path
						{ 49.2, 29.0, HIGHMOUNTAIN },
						{ 48.6, 25.2, HIGHMOUNTAIN },
						{ 45.2, 25.8, HIGHMOUNTAIN },
						{ 45.4, 30.4, HIGHMOUNTAIN },
					},
					["groups"] = {
						i(131900),	-- Magestic Elderhorn Hoof (TOY!)
					},
				}),
				n(96621, {	-- Mellok, Son of Torok
					["questID"] = 40242,
					["coord"] = { 48.9, 27.0, HIGHMOUNTAIN },
				}),
				n(98311, {	-- Mrrklr
					["questID"] = 40096,
					["coord"] = { 46.7, 7.30, HIGHMOUNTAIN },
					["crs"] = { 98754 },	-- Sloppy "Sloppy Joe" Joe
					["groups"] = {
						i(131797),	-- Swamprock Salvage Band
					},
				}),
				n(95204, {	-- Oubdob da Smasher
					["questID"] = 39435,
					["coord"] = { 47.4, 73.8, HIGHMOUNTAIN },
					["groups"] = {
						i(131793),	-- Oubdob's Smashin' Sweatband
					},
				}),
				n(97102, {	-- Ram'Pag <The Treasure Worm>
					["description"] = "Click on the Totally Safe Treasure Chest to spawn Ram'Pag.",
					["questID"] = 39766,
					["coord"] = { 52.3, 51.4, HIGHMOUNTAIN },
				}),
				n(97579, {	-- Scout Harefoot (Mynta Talonscreech)
					["description"] = "Speak to Scout Harefoot and Mynta Talonscreech will spawn.",
					["questID"] = 39866,
					["coord"] = { 54.5, 40.5, HIGHMOUNTAIN },
					["groups"] = {
						i(131792),	-- Harefoot Pinnacle Wrap
					},
				}),
				o(240353, {	-- Seemingly Unguarded Treasure
					["questID"] = 40423,
					["description"] = "Loot the treasure inside the cave and a party of enemies will appear. Kill them and loot the treasure.",
					["coord"] = { 52.3, 58.5, HIGHMOUNTAIN },
					["crs"] = {
						100302,	-- Puck <Unethical Adventurers>
						109498,	-- Xaander <Unethical Adventurers>
						100303,	-- Zenobia <Unethical Adventurers>
						109501,	-- Darkful <Unethical Adventurers>
						109500,	-- Jak <Unethical Adventurers>
					},
					["groups"] = {
						i(140683),	-- Darkful's Mitts
						i(140682),	-- Zenobia's Handwraps
						i(140681),	-- Jak's Gloves
						i(140680),	-- Lysander's Lovindle Bracers
						i(131767),	-- Xander's Gauntlets
					},
				}),
				n(101077, {	-- Sekhan
					["questID"] = 40681,
					["coord"] = { 45.5, 55.2, HIGHMOUNTAIN },
					["groups"] = {
						i(131730),	-- Darksaber Leather Belt
					},
				}),
				n(97093, {	-- Shara Felbreath
					["questID"] = 39762,
					["coord"] = { 51.0, 25.8, HIGHMOUNTAIN },
					["groups"] = {
						i(131791),	-- Felbreath Bloodsinger Robe
					},
				}),
				n(95872, {	-- Skullhat
					["questID"] = 39465,
					["coord"] = { 50.9, 32.0, HIGHMOUNTAIN },
					["groups"] = {
						i(131769),	-- The Taskmaster's Wristwraps
					},
				}),
				n(98890, {	-- Slumber
					["questID"] = 40175,
					["coord"] = { 41.4, 31.9, HIGHMOUNTAIN },
					["groups"] = {
						i(131921),	-- Dreamflow Collar
					},
				}),
				n(97653, {	-- Taurson
					["questID"] = 39872,
					["coord"] = { 54.1, 50.8, HIGHMOUNTAIN },
					["groups"] = {
						o(244628, {	-- Taurson's Prize
							["displayID"] = 65118,
							["groups"] = {
								i(131800),	-- Taurson's Champion Belt
							},
						}),
					},
				}),
				n(97203, {	-- Tenpak Flametotem
					["questID"] = 39782,
					["coord"] = { 41.9, 41.5, HIGHMOUNTAIN },
					["groups"] = {
						i(129175),	-- Crispin (PET!)
					},
				}),
			}),
		}),
	}),
});
