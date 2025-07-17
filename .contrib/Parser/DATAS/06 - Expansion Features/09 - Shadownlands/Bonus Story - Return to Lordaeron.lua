-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_2_5 } }, {
	header(HEADERS.Achievement, 15579, {	-- Return to Lordaeron
		q(65656, {	-- Call to Lordaeron
			["provider"] = { "n", 173386 },	-- Calia Menethil
			["coords"] = {
				{ 41.2, 69.3, ORIBOS },
				{ 50.6, 75.5, ORGRIMMAR },
			},
			["races"] = HORDE_ONLY,
		}),
		q(65655, {	-- Eyes of the Wolf
			["provider"] = { "n", 185525 },	-- Genn Greymane <King of Gilneas>
			["coord"] = { 41.9, 63.5, ORIBOS },
			["races"] = ALLIANCE_ONLY,
		}),
		q(65657, {	-- Assemble the Forsaken
			["provider"] = { "n", 185512 },	-- Calia Menethil
			["sourceQuests"] = {
				65656,	-- Call to Lordaeron
				65655,	-- Eyes of the Wolf
			},
			["coord"] = { 60.8, 51.4, 2070 },
		}),
		q(65658, {	-- This Land is Ours
			["provider"] = { "n", 185514 },	-- Dark Ranger Velonara
			["sourceQuest"] = 65657,	-- Assemble the Forsaken
			["coord"] = { 62.0, 50.5, 2070 },
		}),
		q(65659, {	-- The Blight Congress
			["provider"] = { "n", 185513 },	-- Lilian Voss
			["sourceQuest"] = 65658,	-- This Land is Ours
			["coord"] = { 60.9, 51.3, 2070 },
		}),
		q(65660, {	-- Walk of Faith
			["provider"] = { "n", 185797 },	-- Calia Menethil
			["sourceQuest"] = 65659,	-- The Blight Congress
			["coord"] = { 62.0, 55.7, 2070 },
		}),
		q(65661, {	-- Consulting Our Allies
			["provider"] = { "n", 185513 },	-- Lilian Voss
			["sourceQuest"] = 65660,	-- Walk of Faith
			["coord"] = { 61.9, 55.6, 2070 },
		}),
		q(65662, {	-- House of Plagues
			["sourceQuests"] = { 65661 },	-- Consulting Our Allies
			["provider"] = { "n", 177782 },	-- Margrave Sin'dane
			["coord"] = { 74.8, 33.6, MALDRAXXUS },
		}),
		q(65664, {	-- Essence of Plague
			["sourceQuests"] = { 65662 },	-- House of Plagues
			["provider"] = { "n", 185517 },	-- Plague Deviser Marileth
			["coord"] = { 71.2, 71.5, MALDRAXXUS },
		}),
		q(65663, {	-- Feed the Eater
			["sourceQuests"] = { 65662 },	-- House of Plagues
			["provider"] = { "n", 185803 },	-- Calia Menethil
			["coord"] = { 71.1, 71.4, MALDRAXXUS },
		}),
		q(65665, {	-- Embodiment
			["sourceQuests"] = {
				65663,	-- Feed th Eater
				65664,	-- Essence of Plague
			},
			["provider"] = { "n", 185825 },	-- Plague Deviser Marileth
			["coord"] = { 68.7, 81.8, MALDRAXXUS },
		}),
		q(65666, {	-- Return to Brill
			["sourceQuests"] = { 65665 },	-- Embodiment
			["provider"] = { "n", 185829 },	-- Lilian Voss
			["coord"] = { 68.6, 81.8, MALDRAXXUS },
			["g"] = {
				i(191029),	-- Lilian's Hearthstone (QI!)
			},
		}),
		q(65667, {	-- The Remedy of Lordaeron
			["provider"] = { "n", 185839 },	-- Calia Menethil
			["sourceQuest"] = 65666,	-- Return to Brill
			["coord"] = { 65.8, 60.4, 2070 },
		}),
		q(65668, {	-- The Desolate Council
			["provider"] = { "n", 185852 },	-- Lilian Voss
			["sourceQuest"] = 65667,	-- The Remedy of Lordaeron
			["coord"] = { 61.9, 67.7, 2070 },
		}),
		q(66090, {	-- Path of the Dark Rangers (A)
			["provider"] = { "n", 185851 },	-- Dark Ranger Velonara
			["sourceQuest"] = 65668,	-- The Desolate Council
			["coord"] = { 61.9, 67.8, 2070 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(66091, {	-- Path of the Dark Rangers (H)
			["provider"] = { "n", 185851 },	-- Dark Ranger Velonara
			["sourceQuest"] = 65668,	-- The Desolate Council
			["coord"] = { 61.9, 67.8, 2070 },
			["races"] = HORDE_ONLY,
		}),
		q(65788, {	-- A Walk with Ghosts
			["provider"] = { "n", 185852 },	-- Lilian Voss
			["sourceQuest"] = 66091,	-- Path of the Dark Rangers (H)
			["coord"] = { 61.8, 67.8, 2070 },
			["races"] = HORDE_ONLY,
			["g"] = {
				ach(15579, {	-- Return to Lordaeron
					title(460),	-- <Name> of Lordaeron
				}),
			},
		}),
		q(65669, {	-- Report to Greymane
			["provider"] = { "n", 185848 },	-- Calia Menethil
			["sourceQuest"] = 66090,	-- Path of the Dark Rangers (A)
			["coord"] = { 61.9, 67.8, 2070 },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				ach(15579, {	-- Return to Lordaeron
					title(460),	-- <Name> of Lordaeron
				}),
				i(191034),	-- Letter to Greymane (QI!)
			},
		}),
	}),
})));