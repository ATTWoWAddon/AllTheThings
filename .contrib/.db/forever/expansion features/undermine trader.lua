-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local TARNISHED_UNDERMINE_REAL = 3469;
local tur = function(cost, item)
	return applycost(item, { "c", TARNISHED_UNDERMINE_REAL, cost });
end
root(ROOTS.ExpansionFeatures, n(UNDERMINE_TRADER, {
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(CURRENCIES, {
			currency(TARNISHED_UNDERMINE_REAL, {	-- Tarnished Undermine Real
				maps = {
					MAP.BLACKROCK_DEPTHS,
					MAP.BLACKROCK_SPIRE,
					MAP.SUNKEN_TEMPLE,
				},
				OnTooltip = [[function(t, tooltipInfo)
					if not IsShiftKeyDown() then
						tooltipInfo[#tooltipInfo+1] = { left = "Hold Shift to see the daily boss kills that award this currency.", r = 0.6, g = 0.8, b = 1, wrap = true };
						return;
					end
					local results = t.g;
					if not results then return; end
					tooltipInfo[#tooltipInfo+1] = { left = " " };
					local function hasQuest(g)
						for i=1,#g do
							local o = g[i];
							if o.questID or (o.g and hasQuest(o.g)) then return true; end
						end
						return false;
					end
					local function allSaved(g)
						for i=1,#g do
							local o = g[i];
							if o.questID then
								if not o.saved then return false; end
							elseif o.g and not o.itemID and not allSaved(o.g) then
								return false;
							end
						end
						return true;
					end
					local function add(g, indent)
						for i=1,#g do
							local o = g[i];
							if o.questID then
								tooltipInfo[#tooltipInfo+1] = { left = indent .. (o.text or o.name or ("Quest #" .. o.questID)), right = _.GetCompletionIcon(o.saved) };
							elseif o.g and not o.itemID and hasQuest(o.g) then
								if allSaved(o.g) then
									tooltipInfo[#tooltipInfo+1] = { left = indent .. (o.text or o.name or UNKNOWN), right = (COMPLETE or "Complete") .. " " .. _.GetCompletionIcon(true) };
								else
									tooltipInfo[#tooltipInfo+1] = { left = indent .. (o.text or o.name or UNKNOWN) };
									add(o.g, indent .. "  ");
								end
							end
						end
					end
					add(results, "");
				end]],
				groups = {
					inst(2974, {	-- Blackmaw Hold
						groups = sharedData({
							isDaily = true,
						},{
							hqt(96193, name(HEADERS.NPC, 247195)),	-- Withermaw
							hqt(96192, name(HEADERS.NPC, 247206)),	-- Impaan the Imprisoner
							hqt(96191, name(HEADERS.NPC, 247198)),	-- Bonesnout the Unbroken
							hqt(96196, name(HEADERS.NPC, 247231)),	-- Unbound Spirit
							hqt(96195, name(HEADERS.NPC, 247209)),	-- Elder Shaman Bloodmane
							hqt(96194, name(HEADERS.NPC, 247207)),	-- Blackmaw Behemoth
							hqt(96197, name(HEADERS.NPC, 247234)),	-- Varrox Bleakhoof
						}),
					}),
					inst(228, {	-- Blackrock Depths
						mapID = MAP.BLACKROCK_DEPTHS,
						groups = sharedData({
							isDaily = true,
						},{
							hqt(83938, name(HEADERS.NPC, 9938)),	-- Magmus
							hqt(83937, name(HEADERS.NPC, 9019)),	-- Emperor Dagran Thaurissan
						}),
					}),
					inst(229, {	-- Blackrock Spire
						mapID = MAP.BLACKROCK_SPIRE,
						groups = sharedData({
							isDaily = true,
						},{
							hqt(83947, name(HEADERS.NPC, 9196)),	-- Highlord Omokk
							hqt(83950, name(HEADERS.NPC, 10596)),	-- Mother Smolderweb
							hqt(83952, name(HEADERS.NPC, 10268)),	-- Gizrul the Slavener
							hqt(83954, name(HEADERS.NPC, 9568)),	-- Overlord Wyrmthalak
						}),
					}),
					inst(236, {	-- Stratholme
						mapID = MAP.STRATHOLME,
						groups = sharedData({
							isDaily = true,
						},{
							hqt(83993, name(HEADERS.NPC, 10435)),	-- Magistrate Barthilas
							hqt(83994, name(HEADERS.NPC, 10437)),	-- Nerub'enkan
							hqt(83995, name(HEADERS.NPC, 10438)),	-- Maleki the Pallid
							hqt(83996, name(HEADERS.NPC, 10436)),	-- Baroness Anastari
							hqt(83997, name(HEADERS.NPC, 10439)),	-- Ramstein the Gorger
						}),
					}),
					inst(237, {	-- The Temple of Atal'hakkar
						mapID = MAP.SUNKEN_TEMPLE,
						groups = sharedData({
							isDaily = true,
						},{
							hqt(96185, name(HEADERS.NPC, 8580)),	-- Atal'alarion
							hqt(96186, name(HEADERS.NPC, 5710)),	-- Jammal'an the Prophet (and Ogom the Wretched; "the 2 troll bosses, I think")
							hqt(96187, name(HEADERS.NPC, 5721)),	-- Dreamscythe (and Weaver)
							hqt(96188, name(HEADERS.NPC, 5719)),	-- Morphaz (and Hazzas)
							hqt(96189, name(HEADERS.NPC, 5709)),	-- Shade of Eranikus
							hqt(96190, name(HEADERS.NPC, 8443)),	-- Avatar of Hakkar
						}),
					}),
				},
			}),
		}),
		n(QUESTS, {
			q(96076, {	-- In Demand - Ancient Elven Curiosities
				qg = 227853,	-- Pix Xizzix <Undermine Trader>
				coord = { 28.4, 75.8, MAP.STRANGLETHORN_VALE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Felvine Seed
						provider = { "i", 272020 },	-- Felvine Seed
					}),
					objective(2, {	-- 0/1 Earthstone Diamond Pinky Ring
						provider = { "i", 272022 },	-- Earthstone Diamond Pinky Ring
					}),
					objective(3, {	-- 0/1 Ancient Memento
						provider = { "i", 272021 },	-- Ancient Memento
					}),
					i(271994),	-- Undermine Satchel
				},
			}),
			q(96075, {	-- In Demand - Blackrock Legal Records
				qg = 227853,	-- Pix Xizzix <Undermine Trader>
				coord = { 28.4, 75.8, MAP.STRANGLETHORN_VALE },
				maps = { MAP.BLACKROCK_SPIRE, MAP.BLACKROCK_DEPTHS },
				races = ALLIANCE_ONLY,
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Nefarion's Remit
						provider = { "i", 272017 },	-- Nefarion's Remit
						cr = 10363,	-- General Drakkisath
					}),
					objective(2, {	-- 0/1 Overseer's License
						provider = { "i", 272018 },	-- Overseer's License
						cr = 9568,	-- Overlord Wyrmthalak
					}),
					objective(3, {	-- 0/1 Bronzebeard Wedding Contract
						provider = { "i", 272019 },	-- Bronzebeard Wedding Contract
						cr = 9019,	-- Emperor Dagran Thaurissan
					}),
					i(271994),	-- Undermine Satchel
				},
			}),
			q(96087, {	-- In Demand - Plague Records
				qg = 227853,	-- Pix Xizzix <Undermine Trader>
				coord = { 28.4, 75.8, MAP.STRANGLETHORN_VALE },
				maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Headmaster's Records
						provider = { "i", 272023 },	-- Headmaster's Records
						cr = 1853,	-- Darkmaster Gandling
					}),
					objective(2, {	-- 0/1 Grain Shipment Records
						provider = { "i", 272024 },	-- Grain Shipment Records
						cr = 10440,	-- Baron Rivendare
					}),
					objective(3, {	-- 0/1 Dathrohan's Correspondance
						provider = { "i", 272025 },	-- Dathrohan's Correspondence
						cr = 10812,	-- Grand Crusader Dathrohan
					}),
					i(271994),	-- Undermine Satchel
				},
			}),
			q(96088, {	-- In Demand - Titan Relics
				qg = 227853,	-- Pix Xizzix <Undermine Trader>
				coord = { 28.4, 75.8, MAP.STRANGLETHORN_VALE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Ysera's Tear
						provider = { "i", 272026 },	-- Ysera's Tear
						cr = 5709,	-- Shade of Eranikus
					}),
					objective(2, {	-- 0/1 Mark of Xavius
						provider = { "i", 272027 },	-- Mark of Xavius
						cr = 247234,	-- Varrox Bleakhoof
					}),
					objective(3, {	-- 0/1 Freya's Sigil
						provider = { "i", 272028 },	-- Freya's Sigil
						cr = 261809,	-- Nanaya
					}),
					i(271994),	-- Undermine Satchel
				},
			}),
			q(83934, {	-- Show Me the Money!
				description = "Only a Tarnished Undermine Real looted while you have this quest counts; Reals you already own do not.",
				qg = 227853,	-- Pix Xizzix <Undermine Trader>
				coord = { 28.5, 75.8, MAP.STRANGLETHORN_VALE },
				lvl = 55,
			}),
		}),
		n(VENDORS, {
			n(227853, { -- Pix Xizzix <Undermine Trader>
				coord = { 28.5, 75.8, MAP.STRANGLETHORN_VALE },
				groups = {
					tur(5, i(272151)),	-- Damaged Undermine Supply Crate
					tur(100, i(272393)),	-- Magician's Cord
					tur(100, i(272394)),	-- Penitent's Cinch
					tur(100, i(272395)),	-- Assassin's Waistguard
					tur(100, i(272396)),	-- Shifter's Belt
					tur(100, i(272397)),	-- Ranger's Belt
					tur(100, i(272398)),	-- Caretaker's Cord
					tur(100, i(272399)),	-- Stormseeker's Girdle
					tur(100, i(272401)),	-- Elunite Cord
					tur(100, i(272402)),	-- Prophet's Waistcord
					tur(100, i(272403)),	-- Valiant's Waistguard
					tur(100, i(272404)),	-- Vindicator's Belt
					tur(100, i(272405)),	-- Redeemer's Waistcord
					tur(75, i(272406)),	-- Channeler's Ring
					tur(75, i(272407)),	-- Blessed Band of Light
					tur(75, i(272408)),	-- Cutthroat's Signet
					tur(75, i(272409)),	-- Ring of Awareness
					tur(100, i(272410)),	-- Windseeker's Belt
					tur(75, i(272411)),	-- Arcanoweave Cloak
					tur(75, i(272413)),	-- Drape of Recovery
					tur(75, i(272414)),	-- Howler's Furs
					tur(75, i(272415)),	-- Stalwart Cloak
					tur(50, i(272427)),	-- Howling Idol
					tur(50, i(272428)),	-- Enraged Idol
					tur(50, i(272429)),	-- Idol of Synthesis
					tur(50, i(272430)),	-- Swarming Idol
					tur(50, i(272431)),	-- Tidal Totem
					tur(50, i(272432)),	-- Totem of the Storm
					tur(50, i(272433)),	-- Burning Totem
					tur(50, i(272434)),	-- Sentinel's Libram
					tur(50, i(272435)),	-- Libram of Law
					tur(50, i(272436)),	-- Libram of Economy
					tur(125, i(272437)),	-- Adaptive Combat Assistant
					tur(125, i(272438)),	-- Weakness Analyzer
					tur(125, i(272439)),	-- Serenity Field
					tur(125, i(272440)),	-- Defender's Grip Stabilizer
				},
			}),
		}),
	},
}));

