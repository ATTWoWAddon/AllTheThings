---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.MOUNT_HYJAL, {
	lore = "Threats both old and new stalk the slopes of the mountain, eager to claim its power and destroy anyone daring enough to get in their way.",
	timeline = { TIMELINE.ADDED_1_60_1 },
	icon = 409547,
	groups = {
		n(ACHIEVEMENTS, {
			ach(62356),	-- Explore Mount Hyjal
		}),
		n(VENDORS, {
			n(264797, {	-- Aisarra Nightmeadow <Keeper of Knowledge>
				coord = { 71.0, 51.2, MAP.MOUNT_HYJAL },
				groups = {	-- Need to add cost//Braghe
					-- Paladin
					i(273976),	-- Plans: Justice Leggings (RECIPE!)
					i(273977),	-- Plans: Justice Gauntlets (RECIPE!)
					i(273978),	-- Plans: Justice Spaulders (RECIPE!)
					i(273979),	-- Plans: Justice Greaves (RECIPE!)
					i(273980),	-- Plans: Justice Legplates (RECIPE!)
					i(273981),	-- Plans: Justice Gloves (RECIPE!)
					i(273982),	-- Plans: Justice Epaulets (RECIPE!)
					i(273983),	-- Plans: Justice Treads (RECIPE!)
					i(273984),	-- Plans: Justice Legguards (RECIPE!)
					i(273985),	-- Plans: Justice Handguards (RECIPE!)
					i(273986),	-- Plans: Justice Pauldrons (RECIPE!)
					i(273987),	-- Plans: Justice Sabatons (RECIPE!)

					-- Warrior
					i(274012),	-- Plans: Legplates of Glory (RECIPE!)
					i(274013),	-- Plans: Gauntlets of Glory (RECIPE!)
					i(274014),	-- Plans: Shoulders of Glory (RECIPE!)
					i(274015),	-- Plans: Greaves of Glory (RECIPE!)
					i(274016),	-- Plans: Legguards of Glory (RECIPE!)
					i(274017),	-- Plans: Handguards of Glory (RECIPE!)
					i(274018),	-- Plans: Pauldrons of Glory (RECIPE!)
					i(274019),	-- Plans: Sabatons of Glory (RECIPE!)

					-- Rogue
					i(273999),	-- Pattern: Grimstitch Boots (RECIPE!)
					i(273997),	-- Pattern: Grimstitch Gloves (RECIPE!)
					i(273996),	-- Pattern: Grimstitch Pants (RECIPE!)
					i(273998),	-- Pattern: Grimstitch Spaulders (RECIPE!)

					-- Druid
					i(273963),	-- Pattern: Grovekeeper Boots (RECIPE!)
					i(273965),	-- Pattern: Grovekeeper Gauntlets (RECIPE!)
					i(273953),	-- Pattern: Grovekeeper Grips (RECIPE!)
					i(273961),	-- Pattern: Grovekeeper Handguards (RECIPE!)
					i(273956),	-- Pattern: Grovekeeper Kilt (RECIPE!)
					i(273964),	-- Pattern: Grovekeeper Leggings (RECIPE!)
					i(273960),	-- Pattern: Grovekeeper Legguards (RECIPE!)
					i(273958),	-- Pattern: Grovekeeper Mantle (RECIPE!)
					i(273957),	-- Pattern: Grovekeeper Mitts (RECIPE!)
					i(273962),	-- Pattern: Grovekeeper Pauldrons (RECIPE!)
					i(273959),	-- Pattern: Grovekeeper Sandals (RECIPE!)
					i(273954),	-- Pattern: Grovekeeper Shoulderpads (RECIPE!)
					i(273966),	-- Pattern: Grovekeeper Spaulders (RECIPE!)
					i(273955),	-- Pattern: Grovekeeper Stompers (RECIPE!)
					i(273967),	-- Pattern: Grovekeeper Treads (RECIPE!)
					i(273952),	-- Pattern: Grovekeeper Trousers (RECIPE!)

					-- Shaman
					i(274006),	-- Pattern: Spiritcaller Epaulets (RECIPE!)
					i(274005),	-- Pattern: Spiritcaller Gauntlets (RECIPE!)
					i(274007),	-- Pattern: Spiritcaller Greaves (RECIPE!)
					i(274001),	-- Pattern: Spiritcaller Grips (RECIPE!)
					i(274000),	-- Pattern: Spiritcaller Leggings (RECIPE!)
					i(274004),	-- Pattern: Spiritcaller Pants (RECIPE!)
					i(274002),	-- Pattern: Spiritcaller Spaulders (RECIPE!)
					i(274003),	-- Pattern: Spiritcaller Treads (RECIPE!)

					-- Hunter
					i(273969),	-- Pattern: Wildstalker's Gauntlets (RECIPE!)
					i(273971),	-- Pattern: Wildstalker's Greaves (RECIPE!)
					i(273968),	-- Pattern: Wildstalker's Legguards (RECIPE!)
					i(273970),	-- Pattern: Wildstalker's Spaulders (RECIPE!)

					-- Warlock
					i(273972),	-- Pattern: Manaflare Pants (RECIPE!)
					i(273973),	-- Pattern: Manaflare Gloves (RECIPE!)
					i(273974),	-- Pattern: Manaflare Mantle (RECIPE!)
					i(273975),	-- Pattern: Manaflare Boots (RECIPE!)

					-- Priest
					i(273988),	-- Pattern: Pants of Conviction (RECIPE!)
					i(273989),	-- Pattern: Gloves of Conviction (RECIPE!)
					i(273990),	-- Pattern: Mantle of Conviction (RECIPE!)
					i(273991),	-- Pattern: Treads of Conviction (RECIPE!)
					i(273992),	-- Pattern: Leggings of Conviction (RECIPE!)
					i(273993),	-- Pattern: Handguards of Conviction (RECIPE!)
					i(273994),	-- Pattern: Pauldrons of Conviction (RECIPE!)
					i(273995),	-- Pattern: Boots of Conviction (RECIPE!)

					-- Warlock
					i(274008),	-- Pattern: Demonheart Leggings (RECIPE!)
					i(274009),	-- Pattern: Demonheart Gloves (RECIPE!)
					i(274010),	-- Pattern: Demonheart Spaulders (RECIPE!)
					i(274011),	-- Pattern: Demonheart Boots (RECIPE!)
				},
			}),
			n(266901, {	-- Pexmit <Someone's Minion>
				coord = { 58.8, 41.8, MAP.MOUNT_HYJAL },
				groups = {
					i(255729),	-- Manual: Major Healing Potion (RECIPE!)
					i(254124),	-- Pattern: Runecloth Cuffs (RECIPE!)
					i(252933),	-- Pattern: Supple Scorpid Vest (RECIPE!)
					i(252877),	-- Pattern: Tooled Leather Armor (RECIPE!)
					i(251468),	-- Plans: Bold Dirk (RECIPE!)
					i(264233),	-- Schematic: Dimensional Transporter: Mt. Hyjal (RECIPE!)
				},
			}),
		}),
	},
});
