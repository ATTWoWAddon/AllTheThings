---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local EMBLEM_OF_TRIUMPH_QUARTERMASTER_GROUPS = {
	emot(1, i(44711, {	-- Argent Crusade Commendation Badge
		["timeline"] = { DELETED_6_0_2 },
	})),
	emot(1, i(44713, {	-- Ebon Blade Commendation Badge [BOP]
		["timeline"] = { DELETED_6_0_2 },
	})),
	emot(1, i(43950, {	-- Kirin Tor Commendation Badge
		["timeline"] = { DELETED_6_0_2 },
	})),
	emot(1, i(49702, {	-- Sons of Hodir Commendation Badge
		["timeline"] = { DELETED_6_0_2 },
	})),
	emot(1, i(44710, {	-- Wyrmrest Commendation Badge
		["timeline"] = { DELETED_6_0_2 },
	})),
	emot(35, i(47732)),	-- Band of the Invoker
	emot(25, i(47660, {	-- Blades of the Sable Cross
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emot(35, i(47729)),	-- Bloodshed Band
	emot(25, i(47658)),	-- Brimstone Igniter
	emot(35, i(47731)),	-- Clutch of Fortification
	emot(15, i(47556)),	-- Crusader Orb
	emot(35, i(47730)),	-- Dexterous Brightstone Ring
	i(41087),	-- Furious Gladiator's Chain Armor
	i(41143),	-- Furious Gladiator's Chain Gauntlets
	i(41157),	-- Furious Gladiator's Chain Helm
	i(41205),	-- Furious Gladiator's Chain Leggings
	i(41217),	-- Furious Gladiator's Chain Spaulders
	i(41773),	-- Furious Gladiator's Dragonhide Gloves
	i(41678),	-- Furious Gladiator's Dragonhide Helm
	i(41667),	-- Furious Gladiator's Dragonhide Legguards
	i(41661),	-- Furious Gladiator's Dragonhide Robes
	i(41715),	-- Furious Gladiator's Dragonhide Spaulders
	i(40787),	-- Furious Gladiator's Dreadplate Chestpiece
	i(40809),	-- Furious Gladiator's Dreadplate Gauntlets
	i(40827),	-- Furious Gladiator's Dreadplate Helm
	i(40848),	-- Furious Gladiator's Dreadplate Legguards
	i(40868),	-- Furious Gladiator's Dreadplate Shoulders
	i(42011),	-- Furious Gladiator's Felweave Amice
	i(41993),	-- Furious Gladiator's Felweave Cowl
	i(42017),	-- Furious Gladiator's Felweave Handguards
	i(41998),	-- Furious Gladiator's Felweave Raiment
	i(42005),	-- Furious Gladiator's Felweave Trousers
	i(41287),	-- Furious Gladiator's Kodohide Gloves
	i(41321),	-- Furious Gladiator's Kodohide Helm
	i(41298),	-- Furious Gladiator's Kodohide Legguards
	i(41310),	-- Furious Gladiator's Kodohide Robes
	i(41275),	-- Furious Gladiator's Kodohide Spaulders
	i(41767),	-- Furious Gladiator's Leather Gloves
	i(41672),	-- Furious Gladiator's Leather Helm
	i(41655),	-- Furious Gladiator's Leather Legguards
	i(41683),	-- Furious Gladiator's Leather Spaulders
	i(41650),	-- Furious Gladiator's Leather Tunic
	i(41081),	-- Furious Gladiator's Linked Armor
	i(41137),	-- Furious Gladiator's Linked Gauntlets
	i(41151),	-- Furious Gladiator's Linked Helm
	i(41199),	-- Furious Gladiator's Linked Leggings
	i(41211),	-- Furious Gladiator's Linked Spaulders
	i(40993),	-- Furious Gladiator's Mail Armor
	i(41007),	-- Furious Gladiator's Mail Gauntlets
	i(41019),	-- Furious Gladiator's Mail Helm
	i(41033),	-- Furious Gladiator's Mail Leggings
	i(41044),	-- Furious Gladiator's Mail Spaulders
	i(41874),	-- Furious Gladiator's Mooncloth Gloves
	i(41854),	-- Furious Gladiator's Mooncloth Hood
	i(41864),	-- Furious Gladiator's Mooncloth Leggings
	i(41869),	-- Furious Gladiator's Mooncloth Mantle
	i(41859),	-- Furious Gladiator's Mooncloth Robe
	i(40907),	-- Furious Gladiator's Ornamented Chestguard
	i(40927),	-- Furious Gladiator's Ornamented Gloves
	i(40933),	-- Furious Gladiator's Ornamented Headcover
	i(40939),	-- Furious Gladiator's Ornamented Legplates
	i(40963),	-- Furious Gladiator's Ornamented Spaulders
	i(40789),	-- Furious Gladiator's Plate Chestpiece
	i(40807),	-- Furious Gladiator's Plate Gauntlets
	i(40826),	-- Furious Gladiator's Plate Helm
	i(40847),	-- Furious Gladiator's Plate Legguards
	i(40866),	-- Furious Gladiator's Plate Shoulders
	i(40992),	-- Furious Gladiator's Ringmail Armor
	i(41001),	-- Furious Gladiator's Ringmail Gauntlets
	i(41013),	-- Furious Gladiator's Ringmail Helm
	i(41027),	-- Furious Gladiator's Ringmail Leggings
	i(41038),	-- Furious Gladiator's Ringmail Spaulders
	i(41940),	-- Furious Gladiator's Satin Gloves
	i(41915),	-- Furious Gladiator's Satin Hood
	i(41927),	-- Furious Gladiator's Satin Leggings
	i(41934),	-- Furious Gladiator's Satin Mantle
	i(41921),	-- Furious Gladiator's Satin Robe
	i(40788),	-- Furious Gladiator's Scaled Chestpiece
	i(40808),	-- Furious Gladiator's Scaled Gauntlets
	i(40828),	-- Furious Gladiator's Scaled Helm
	i(40849),	-- Furious Gladiator's Scaled Legguards
	i(40869),	-- Furious Gladiator's Scaled Shoulders
	i(41965),	-- Furious Gladiator's Silk Amice
	i(41946),	-- Furious Gladiator's Silk Cowl
	i(41971),	-- Furious Gladiator's Silk Handguards
	i(41953),	-- Furious Gladiator's Silk Raiment
	i(41959),	-- Furious Gladiator's Silk Trousers
	i(41293),	-- Furious Gladiator's Wyrmhide Gloves
	i(41327),	-- Furious Gladiator's Wyrmhide Helm
	i(41304),	-- Furious Gladiator's Wyrmhide Legguards
	i(41316),	-- Furious Gladiator's Wyrmhide Robes
	i(41281),	-- Furious Gladiator's Wyrmhide Spaulders
	emot(50, i(47735)),	-- Glyph of Indomitability
	emot(35, i(47733)),	-- Heartmender Circle
	-- #if BEFORE MOP
	emoc(25, i(47671, {	-- Idol of Flaring Growth
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47670, {	-- Idol of Lunar Fury
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47668, {	-- Idol of Mutilation
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47664, {	-- Libram of Defiance
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47661, {	-- Libram of Valiance
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47662, {	-- Libram of Veracity
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emot(50, i(47734)),	-- Mark of Supremacy
	emot(50, i(48722)),	-- Shard of the Crystal Heart
	-- #if BEFORE MOP
	emoc(25, i(47672, {	-- Sigil of Insolence
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47673, {	-- Sigil of Virulence
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emot(50, i(48724)),	-- Talisman of Resurgence
	-- #if BEFORE MOP
	emoc(25, i(47665, {	-- Totem of Calming Tides
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47666, {	-- Totem of Electrifying Wind
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(25, i(47667, {	-- Totem of Quaking Earth
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
};
local EMBLEM_OF_TRIUMPH_QUARTERMASTER_A_GROUPS = appendGroups(EMBLEM_OF_TRIUMPH_QUARTERMASTER_GROUPS, {
	emot(45, i(47708)),	-- Duskstalker Shoulderpads
	emot(45, i(47704)),	-- Epaulets of the Devourer
	emot(75, i(47677)),	-- Faceplate of the Honorbound
	emot(75, i(47681)),	-- Heaume of the Restless Watch
	emot(75, i(47690)),	-- Helm of Abundant Growth
	emot(75, i(47694)),	-- Helm of Clouded Sight
	emot(75, i(47686)),	-- Helm of Inner Warmth
	emot(75, i(47685)),	-- Helm of the Brooding Dragon
	emot(75, i(47674)),	-- Helm of Thunderous Rampage
	emot(75, i(47693)),	-- Hood of Fiery Aftermath
	emot(75, i(47689)),	-- Hood of Lethal Intent
	emot(45, i(47713)),	-- Mantle of Catastrophic Emanation
	emot(45, i(47707)),	-- Mantle of the Groundbreaker
	emot(45, i(47715)),	-- Pauldrons of Revered Mortality
	emot(45, i(47702)),	-- Pauldrons of the Cavalier
	emot(45, i(47697)),	-- Pauldrons of Trembling Rage
	emot(45, i(47698)),	-- Shoulderplates of Enduring Order
	emot(45, i(47712)),	-- Shoulders of the Fateful Accord
});
local EMBLEM_OF_TRIUMPH_QUARTERMASTER_H_GROUPS = appendGroups(EMBLEM_OF_TRIUMPH_QUARTERMASTER_GROUPS, {
	emot(75, i(47684)),	-- Coif of the Brooding Dragon
	emot(45, i(47709)),	-- Duskstalker Pauldrons
	emot(45, i(47710)),	-- Epaulets of the Fateful Accord
	emot(75, i(47675)),	-- Faceplate of Thunderous Rampage
	emot(75, i(47687)),	-- Headguard of Inner Warmth
	emot(75, i(47678)),	-- Headplate of the Honorbound
	emot(75, i(47682)),	-- Helm of the Restless Watch
	emot(75, i(47695)),	-- Hood of Clouded Sight
	emot(75, i(47692)),	-- Hood of Smoldering Aftermath
	emot(45, i(47716)),	-- Mantle of Revered Mortality
	emot(75, i(47691)),	-- Mask of Abundant Growth
	emot(75, i(47688)),	-- Mask of Lethal Intent
	emot(45, i(47714)),	-- Pauldrons of Catastrophic Emanation
	emot(45, i(47705)),	-- Pauldrons of the Devourer
	emot(45, i(47699)),	-- Shoulderguards of Enduring Order
	emot(45, i(47701)),	-- Shoulderplates of the Cavalier
	emot(45, i(47696)),	-- Shoulderplates of Trembling Rage
	emot(45, i(47706)),	-- Shoulders of the Groundbreaker
});
local EMBLEM_OF_CONQUEST_QUARTERMASTER_GROUPS = {
	emoc(28, i(45827)),	-- Belt of the Ardent Marksman
	emoc(28, i(45830)),	-- Belt of the Living Thicket
	emoc(28, i(45824)),	-- Belt of the Singing Blade
	emoc(28, i(45829)),	-- Belt of the Twilight Assassin
	emoc(28, i(45833)),	-- Bladebreaker Gauntlets
	emoc(58, i(45632)),	-- Breastplate of the Wayward Conqueror
	emoc(58, i(45633)),	-- Breastplate of the Wayward Protector
	emoc(58, i(45634)),	-- Breastplate of the Wayward Vanquisher
	emoc(19, i(45820)),	-- Brooch of the Wailing Night
	emoc(58, i(45638)),	-- Crown of the Wayward Conqueror
	emoc(58, i(45639)),	-- Crown of the Wayward Protector
	emoc(58, i(45640)),	-- Crown of the Wayward Vanquisher
	i(41086),	-- Deadly Gladiator's Chain Armor
	i(41142),	-- Deadly Gladiator's Chain Gauntlets
	i(41156),	-- Deadly Gladiator's Chain Helm
	i(41204),	-- Deadly Gladiator's Chain Leggings
	i(41216),	-- Deadly Gladiator's Chain Spaulders
	i(41772),	-- Deadly Gladiator's Dragonhide Gloves
	i(41677),	-- Deadly Gladiator's Dragonhide Helm
	i(41666),	-- Deadly Gladiator's Dragonhide Legguards
	i(41660),	-- Deadly Gladiator's Dragonhide Robes
	i(41714),	-- Deadly Gladiator's Dragonhide Spaulders
	i(40784),	-- Deadly Gladiator's Dreadplate Chestpiece
	i(40806),	-- Deadly Gladiator's Dreadplate Gauntlets
	i(40824),	-- Deadly Gladiator's Dreadplate Helm
	i(40845),	-- Deadly Gladiator's Dreadplate Legguards
	i(40863),	-- Deadly Gladiator's Dreadplate Shoulders
	i(42010),	-- Deadly Gladiator's Felweave Amice
	i(41992),	-- Deadly Gladiator's Felweave Cowl
	i(42016),	-- Deadly Gladiator's Felweave Handguards
	i(41997),	-- Deadly Gladiator's Felweave Raiment
	i(42004),	-- Deadly Gladiator's Felweave Trousers
	i(41286),	-- Deadly Gladiator's Kodohide Gloves
	i(41320),	-- Deadly Gladiator's Kodohide Helm
	i(41297),	-- Deadly Gladiator's Kodohide Legguards
	i(41309),	-- Deadly Gladiator's Kodohide Robes
	i(41274),	-- Deadly Gladiator's Kodohide Spaulders
	i(41766),	-- Deadly Gladiator's Leather Gloves
	i(41671),	-- Deadly Gladiator's Leather Helm
	i(41654),	-- Deadly Gladiator's Leather Legguards
	i(41682),	-- Deadly Gladiator's Leather Spaulders
	i(41649),	-- Deadly Gladiator's Leather Tunic
	i(41080),	-- Deadly Gladiator's Linked Armor
	i(41136),	-- Deadly Gladiator's Linked Gauntlets
	i(41150),	-- Deadly Gladiator's Linked Helm
	i(41198),	-- Deadly Gladiator's Linked Leggings
	i(41210),	-- Deadly Gladiator's Linked Spaulders
	i(40991),	-- Deadly Gladiator's Mail Armor
	i(41006),	-- Deadly Gladiator's Mail Gauntlets
	i(41018),	-- Deadly Gladiator's Mail Helm
	i(41032),	-- Deadly Gladiator's Mail Leggings
	i(41043),	-- Deadly Gladiator's Mail Spaulders
	i(41873),	-- Deadly Gladiator's Mooncloth Gloves
	i(41853),	-- Deadly Gladiator's Mooncloth Hood
	i(41863),	-- Deadly Gladiator's Mooncloth Leggings
	i(41868),	-- Deadly Gladiator's Mooncloth Mantle
	i(41858),	-- Deadly Gladiator's Mooncloth Robe
	i(40905),	-- Deadly Gladiator's Ornamented Chestguard
	i(40926),	-- Deadly Gladiator's Ornamented Gloves
	i(40932),	-- Deadly Gladiator's Ornamented Headcover
	i(40938),	-- Deadly Gladiator's Ornamented Legplates
	i(40962),	-- Deadly Gladiator's Ornamented Spaulders
	i(40786),	-- Deadly Gladiator's Plate Chestpiece
	i(40804),	-- Deadly Gladiator's Plate Gauntlets
	i(40823),	-- Deadly Gladiator's Plate Helm
	i(40844),	-- Deadly Gladiator's Plate Legguards
	i(40862),	-- Deadly Gladiator's Plate Shoulders
	i(40990),	-- Deadly Gladiator's Ringmail Armor
	i(41000),	-- Deadly Gladiator's Ringmail Gauntlets
	i(41012),	-- Deadly Gladiator's Ringmail Helm
	i(41026),	-- Deadly Gladiator's Ringmail Leggings
	i(41037),	-- Deadly Gladiator's Ringmail Spaulders
	i(41939),	-- Deadly Gladiator's Satin Gloves
	i(41914),	-- Deadly Gladiator's Satin Hood
	i(41926),	-- Deadly Gladiator's Satin Leggings
	i(41933),	-- Deadly Gladiator's Satin Mantle
	i(41920),	-- Deadly Gladiator's Satin Robe
	i(40785),	-- Deadly Gladiator's Scaled Chestpiece
	i(40805),	-- Deadly Gladiator's Scaled Gauntlets
	i(40825),	-- Deadly Gladiator's Scaled Helm
	i(40846),	-- Deadly Gladiator's Scaled Legguards
	i(40864),	-- Deadly Gladiator's Scaled Shoulders
	i(41964),	-- Deadly Gladiator's Silk Amice
	i(41945),	-- Deadly Gladiator's Silk Cowl
	i(41970),	-- Deadly Gladiator's Silk Handguards
	i(41951),	-- Deadly Gladiator's Silk Raiment
	i(41958),	-- Deadly Gladiator's Silk Trousers
	i(41292),	-- Deadly Gladiator's Wyrmhide Gloves
	i(41326),	-- Deadly Gladiator's Wyrmhide Helm
	i(41303),	-- Deadly Gladiator's Wyrmhide Legguards
	i(41315),	-- Deadly Gladiator's Wyrmhide Robes
	i(41280),	-- Deadly Gladiator's Wyrmhide Spaulders
	emoc(19, i(45822)),	-- Evoker's Charm
	emoc(19, i(45823)),	-- Frozen Tear of Elune
	emoc(28, i(45835)),	-- Gauntlets of Serene Blessing
	emoc(28, i(45834)),	-- Gauntlets of the Royal Watch
	emoc(28, i(45826)),	-- Girdle of Unyielding Trust
	emoc(28, i(45837)),	-- Gloves of Augury
	emoc(28, i(45838)),	-- Gloves of the Blind Stalker
	emoc(28, i(45836)),	-- Gloves of Unerring Aim
	emoc(28, i(45839)),	-- Grips of the Secret Grove
	-- #if BEFORE MOP
	emoc(19, i(45509, {	-- Idol of the Corruptor
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(45270, {	-- Idol of the Crying Wind
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(46138, {	-- Idol of the Flourishing Life
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoc(39, i(45844)),	-- Leggings of the Tireless Sentry
	emoc(39, i(45845)),	-- Leggings of the Weary Mystic
	emoc(39, i(45846)),	-- Leggings of Wavering Shadow
	emoc(39, i(45843)),	-- Legguards of the Peaceful Covenant
	emoc(39, i(45841)),	-- Legplates of the Violet Champion
	emoc(39, i(45848)),	-- Legwraps of the Master Conjurer
	-- #if BEFORE MOP
	emoc(19, i(45510, {	-- Libram of Discord
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(45436, {	-- Libram of the Resolute
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(45145, {	-- Libram of the Sacred Shield
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoc(18, i(45087)),	-- Runed Orb
	emoc(28, i(45831)),	-- Sash of Potent Incantations
	emoc(19, i(45821)),	-- Shard of the Crystal Forest
	emoc(28, i(45825)),	-- Shieldwarder Girdle
	-- #if BEFORE MOP
	emoc(19, i(45144, {	-- Sigil of Deflection
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(45254, {	-- Sigil of the Vengeful Heart
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoc(19, i(45819)),	-- Spiked Battleguard Choker
	-- #if BEFORE MOP
	emoc(19, i(45114, {	-- Steamcaller's Totem
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(45255, {	-- Thunderfall Totem
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoc(19, i(45169, {	-- Totem of the Dancing Flame
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoc(28, i(45840)),	-- Touch of the Occult
	emoc(39, i(45847)),	-- Wildstrider Legguards
	emoc(28, i(45828)),	-- Windchill Binding
	emoc(39, i(45842)),	-- Wyrmguard Legplates
};
local EMBLEM_OF_FROST_QUARTERMASTER_GROUPS = {
	emof(60, i(50993)),	-- Band of the Night Raven
	emof(60, i(50996)),	-- Belt of Omission
	emof(60, i(50994)),	-- Belt of Petrified Ivy
	-- #if BEFORE MOP
	emof(30, i(50458, {	-- Bizuri's Totem of Shattered Ice
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emof(60, i(50980)),	-- Blizzard Keeper's Mitts
	emof(95, i(50965)),	-- Castle Breaker's Battleplate
	emof(60, i(50982)),	-- Cat Burglar's Grips
	emof(95, i(50968)),	-- Cataclysmic Chestguard
	emof(95, i(50969)),	-- Chestplate of Unspoken Truths
	emof(60, i(50997)),	-- Circle of Ossus
	emof(60, i(50356)),	-- Corroded Skeleton Key
	emof(50, i(50468)),	-- Drape of the Violet Tower
	emof(95, i(50975)),	-- Ermine Coronation Robes
	emof(60, i(50977)),	-- Gatecrasher's Gauntlets
	emof(60, i(50976)),	-- Gauntlets of Overexposure
	emof(60, i(50978)),	-- Gauntlets of the Kraken
	emof(60, i(50984)),	-- Gloves of Ambivalence
	emof(60, i(50983)),	-- Gloves of False Gestures
	emof(60, i(50981)),	-- Gloves of the Great Horned Owl
	emof(60, i(50355)),	-- Herkuml War Token
	-- #if BEFORE MOP
	emof(30, i(50454, {	-- Idol of the Black Willow
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50456, {	-- Idol of the Crying Moon
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50457, {	-- Idol of the Lunar Eclipse
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50460, {	-- Libram of Blinding Light
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50461, {	-- Libram of the Eternal Tower
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50455, {	-- Libram of Three Truths
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emof(60, i(50989)),	-- Lich Killer's Lanyard
	emof(60, i(50979)),	-- Logsplitters
	emof(95, i(50970)),	-- Longstrider's Vest
	emof(60, i(50357)),	-- Maghia's Misguided Quill
	emof(95, i(50971)),	-- Mail of the Geyser
	emof(60, i(50987)),	-- Malevolent Girdle
	emof(95, i(50974)),	-- Meteor Chaser's Raiment
	emof(50, i(50467)),	-- Might of the Ocean Serpent
	emof(23, i(49908)),	-- Primordial Saronite
	emof(60, i(50358)),	-- Purified Lunar Dust
	emof(50, i(50470)),	-- Recovered Scarlet Onslaught Cape
	i(41088),	-- Relentless Gladiator's Chain Armor
	i(41144),	-- Relentless Gladiator's Chain Gauntlets
	i(41158),	-- Relentless Gladiator's Chain Helm
	i(41206),	-- Relentless Gladiator's Chain Leggings
	i(41218),	-- Relentless Gladiator's Chain Spaulders
	i(41774),	-- Relentless Gladiator's Dragonhide Gloves
	i(41679),	-- Relentless Gladiator's Dragonhide Helm
	i(41668),	-- Relentless Gladiator's Dragonhide Legguards
	i(41662),	-- Relentless Gladiator's Dragonhide Robes
	i(41716),	-- Relentless Gladiator's Dragonhide Spaulders
	i(40791),	-- Relentless Gladiator's Dreadplate Chestpiece
	i(40811),	-- Relentless Gladiator's Dreadplate Gauntlets
	i(40830),	-- Relentless Gladiator's Dreadplate Helm
	i(40851),	-- Relentless Gladiator's Dreadplate Legguards
	i(40871),	-- Relentless Gladiator's Dreadplate Shoulders
	i(42012),	-- Relentless Gladiator's Felweave Amice
	i(41994),	-- Relentless Gladiator's Felweave Cowl
	i(42018),	-- Relentless Gladiator's Felweave Handguards
	i(41999),	-- Relentless Gladiator's Felweave Raiment
	i(42006),	-- Relentless Gladiator's Felweave Trousers
	i(41288),	-- Relentless Gladiator's Kodohide Gloves
	i(41322),	-- Relentless Gladiator's Kodohide Helm
	i(41299),	-- Relentless Gladiator's Kodohide Legguards
	i(41311),	-- Relentless Gladiator's Kodohide Robes
	i(41276),	-- Relentless Gladiator's Kodohide Spaulders
	i(41768),	-- Relentless Gladiator's Leather Gloves
	i(41673),	-- Relentless Gladiator's Leather Helm
	i(41656),	-- Relentless Gladiator's Leather Legguards
	i(41684),	-- Relentless Gladiator's Leather Spaulders
	i(41651),	-- Relentless Gladiator's Leather Tunic
	i(41082),	-- Relentless Gladiator's Linked Armor
	i(41138),	-- Relentless Gladiator's Linked Gauntlets
	i(41152),	-- Relentless Gladiator's Linked Helm
	i(41200),	-- Relentless Gladiator's Linked Leggings
	i(41212),	-- Relentless Gladiator's Linked Spaulders
	i(40995),	-- Relentless Gladiator's Mail Armor
	i(41008),	-- Relentless Gladiator's Mail Gauntlets
	i(41020),	-- Relentless Gladiator's Mail Helm
	i(41034),	-- Relentless Gladiator's Mail Leggings
	i(41045),	-- Relentless Gladiator's Mail Spaulders
	i(41875),	-- Relentless Gladiator's Mooncloth Gloves
	i(41855),	-- Relentless Gladiator's Mooncloth Hood
	i(41865),	-- Relentless Gladiator's Mooncloth Leggings
	i(41870),	-- Relentless Gladiator's Mooncloth Mantle
	i(41860),	-- Relentless Gladiator's Mooncloth Robe
	i(40910),	-- Relentless Gladiator's Ornamented Chestguard
	i(40928),	-- Relentless Gladiator's Ornamented Gloves
	i(40934),	-- Relentless Gladiator's Ornamented Headcover
	i(40940),	-- Relentless Gladiator's Ornamented Legplates
	i(40964),	-- Relentless Gladiator's Ornamented Spaulders
	i(40790),	-- Relentless Gladiator's Plate Chestpiece
	i(40810),	-- Relentless Gladiator's Plate Gauntlets
	i(40829),	-- Relentless Gladiator's Plate Helm
	i(40850),	-- Relentless Gladiator's Plate Legguards
	i(40870),	-- Relentless Gladiator's Plate Shoulders
	i(40994),	-- Relentless Gladiator's Ringmail Armor
	i(41002),	-- Relentless Gladiator's Ringmail Gauntlets
	i(41014),	-- Relentless Gladiator's Ringmail Helm
	i(41028),	-- Relentless Gladiator's Ringmail Leggings
	i(41039),	-- Relentless Gladiator's Ringmail Spaulders
	i(41941),	-- Relentless Gladiator's Satin Gloves
	i(41916),	-- Relentless Gladiator's Satin Hood
	i(41928),	-- Relentless Gladiator's Satin Leggings
	i(41935),	-- Relentless Gladiator's Satin Mantle
	i(41922),	-- Relentless Gladiator's Satin Robe
	i(40792),	-- Relentless Gladiator's Scaled Chestpiece
	i(40812),	-- Relentless Gladiator's Scaled Gauntlets
	i(40831),	-- Relentless Gladiator's Scaled Helm
	i(40852),	-- Relentless Gladiator's Scaled Legguards
	i(40872),	-- Relentless Gladiator's Scaled Shoulders
	i(41966),	-- Relentless Gladiator's Silk Amice
	i(41947),	-- Relentless Gladiator's Silk Cowl
	i(41972),	-- Relentless Gladiator's Silk Handguards
	i(41954),	-- Relentless Gladiator's Silk Raiment
	i(41960),	-- Relentless Gladiator's Silk Trousers
	i(41294),	-- Relentless Gladiator's Wyrmhide Gloves
	i(41328),	-- Relentless Gladiator's Wyrmhide Helm
	i(41305),	-- Relentless Gladiator's Wyrmhide Legguards
	i(41317),	-- Relentless Gladiator's Wyrmhide Robes
	i(41282),	-- Relentless Gladiator's Wyrmhide Spaulders
	emof(50, i(50466)),	-- Sentinel's Winter Cloak
	emof(95, i(50972)),	-- Shadow Seeker's Tunic
	emof(30, i(50474, {	-- Shrapnel Star
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #if BEFORE MOP
	emof(30, i(50462, {	-- Sigil of the Bone Gryphon
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50459, {	-- Sigil of the Hanged Man
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50463, {	-- Totem of the Avalanche
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emof(30, i(50464, {	-- Totem of the Surging Sea
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emof(60, i(50995)),	-- Vengeful Noose
	emof(60, i(50991)),	-- Verdigris Chain Belt
	emof(95, i(50973)),	-- Vestments of Spruce and Fir
	emof(50, i(50469)),	-- Volde's Cloak of the Night Sky
	emof(60, i(50992)),	-- Waistband of Despair
};
local EMBLEM_OF_HEROISM_QUARTERMASTER_GROUPS = {
	emoh(40, i(40693)),	-- Beadwork Belt of Shamanic Vision
	emoh(25, i(40679)),	-- Chained Military Gorget
	emoh(80, i(40610)),	-- Chestguard of the Lost Conqueror
	emoh(80, i(40611)),	-- Chestguard of the Lost Protector
	emoh(80, i(40612)),	-- Chestguard of the Lost Vanquisher
	emoh(35, i(40701)),	-- Crygil's Discarded Plate Panel
	emoh(40, i(40697)),	-- Elegant Temple Gardens' Girdle
	emoh(25, i(40680)),	-- Encircling Burnished Gold Chains
	emoh(10, i(43102)),	-- Frozen Orb
	emoh(60, i(40613)),	-- Gloves of the Lost Conqueror
	emoh(60, i(40614)),	-- Gloves of the Lost Protector
	emoh(60, i(40615)),	-- Gloves of the Lost Vanquisher
	emoh(50, i(40703)),	-- Grasscutter
	emoh(25, i(40699)),	-- Handbook of Obscure Remedies
	-- #if BEFORE MOP
	emoh(15, i(40711, {	-- Idol of Lush Moss
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40712, {	-- Idol of Steadfast Renewal
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40713, {	-- Idol of the Ravenous Beast
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoh(40, i(40694)),	-- Jorach's Crocolisk Skin Belt
	emoh(25, i(40681)),	-- Lattice Choker of Light
	-- #if BEFORE MOP
	emoh(15, i(40707, {	-- Libram of Obstruction
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40706, {	-- Libram of Reciprocation
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40705, {	-- Libram of Renewal
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40716, {	-- Lillehoff's Winged Blades
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoh(40, i(40691)),	-- Magroth's Meditative Cincture
	emoh(40, i(40684)),	-- Mirror of Truth
	emoh(25, i(40678)),	-- Pendant of the Outcast Hero
	emoh(40, i(40696)),	-- Plush Sash of Guzbah
	emoh(50, i(40704)),	-- Pride
	emoh(35, i(40700)),	-- Protective Barricade of the Light
	emoh(50, i(40702)),	-- Rolfsen's Ripper
	i(41084),	-- Savage Gladiator's Chain Armor
	i(41140),	-- Savage Gladiator's Chain Gauntlets
	i(41154),	-- Savage Gladiator's Chain Helm
	i(41202),	-- Savage Gladiator's Chain Leggings
	i(41214),	-- Savage Gladiator's Chain Spaulders
	i(41770),	-- Savage Gladiator's Dragonhide Gloves
	i(41675),	-- Savage Gladiator's Dragonhide Helm
	i(41664),	-- Savage Gladiator's Dragonhide Legguards
	i(41658),	-- Savage Gladiator's Dragonhide Robes
	i(41712),	-- Savage Gladiator's Dragonhide Spaulders
	i(40779),	-- Savage Gladiator's Dreadplate Chestpiece
	i(40799),	-- Savage Gladiator's Dreadplate Gauntlets
	i(40817),	-- Savage Gladiator's Dreadplate Helm
	i(40837),	-- Savage Gladiator's Dreadplate Legguards
	i(40857),	-- Savage Gladiator's Dreadplate Shoulders
	i(42008),	-- Savage Gladiator's Felweave Amice
	i(41990),	-- Savage Gladiator's Felweave Cowl
	i(42014),	-- Savage Gladiator's Felweave Handguards
	i(41996),	-- Savage Gladiator's Felweave Raiment
	i(42002),	-- Savage Gladiator's Felweave Trousers
	i(41268),	-- Savage Gladiator's Kodohide Gloves
	i(41269),	-- Savage Gladiator's Kodohide Helm
	i(41270),	-- Savage Gladiator's Kodohide Legguards
	i(41272),	-- Savage Gladiator's Kodohide Robes
	i(41271),	-- Savage Gladiator's Kodohide Spaulders
	i(41643),	-- Savage Gladiator's Leather Gloves
	i(41644),	-- Savage Gladiator's Leather Helm
	i(41645),	-- Savage Gladiator's Leather Legguards
	i(41646),	-- Savage Gladiator's Leather Spaulders
	i(41647),	-- Savage Gladiator's Leather Tunic
	i(41078),	-- Savage Gladiator's Linked Armor
	i(41134),	-- Savage Gladiator's Linked Gauntlets
	i(41148),	-- Savage Gladiator's Linked Helm
	i(41160),	-- Savage Gladiator's Linked Leggings
	i(41208),	-- Savage Gladiator's Linked Spaulders
	i(40987),	-- Savage Gladiator's Mail Armor
	i(41004),	-- Savage Gladiator's Mail Gauntlets
	i(41016),	-- Savage Gladiator's Mail Helm
	i(41030),	-- Savage Gladiator's Mail Leggings
	i(41041),	-- Savage Gladiator's Mail Spaulders
	i(41847),	-- Savage Gladiator's Mooncloth Gloves
	i(41848),	-- Savage Gladiator's Mooncloth Hood
	i(41849),	-- Savage Gladiator's Mooncloth Leggings
	i(41850),	-- Savage Gladiator's Mooncloth Mantle
	i(41851),	-- Savage Gladiator's Mooncloth Robe
	i(40898),	-- Savage Gladiator's Ornamented Chestguard
	i(40918),	-- Savage Gladiator's Ornamented Gloves
	i(40930),	-- Savage Gladiator's Ornamented Headcover
	i(40936),	-- Savage Gladiator's Ornamented Legplates
	i(40960),	-- Savage Gladiator's Ornamented Spaulders
	i(40778),	-- Savage Gladiator's Plate Chestpiece
	i(40797),	-- Savage Gladiator's Plate Gauntlets
	i(40816),	-- Savage Gladiator's Plate Helm
	i(40836),	-- Savage Gladiator's Plate Legguards
	i(40856),	-- Savage Gladiator's Plate Shoulders
	i(40986),	-- Savage Gladiator's Ringmail Armor
	i(40998),	-- Savage Gladiator's Ringmail Gauntlets
	i(41010),	-- Savage Gladiator's Ringmail Helm
	i(41023),	-- Savage Gladiator's Ringmail Leggings
	i(41024),	-- Savage Gladiator's Ringmail Spaulders
	i(41937),	-- Savage Gladiator's Satin Gloves
	i(41912),	-- Savage Gladiator's Satin Hood
	i(41924),	-- Savage Gladiator's Satin Leggings
	i(41930),	-- Savage Gladiator's Satin Mantle
	i(41918),	-- Savage Gladiator's Satin Robe
	i(40780),	-- Savage Gladiator's Scaled Chestpiece
	i(40798),	-- Savage Gladiator's Scaled Gauntlets
	i(40818),	-- Savage Gladiator's Scaled Helm
	i(40838),	-- Savage Gladiator's Scaled Legguards
	i(40858),	-- Savage Gladiator's Scaled Shoulders
	i(41962),	-- Savage Gladiator's Silk Amice
	i(41943),	-- Savage Gladiator's Silk Cowl
	i(41968),	-- Savage Gladiator's Silk Handguards
	i(41949),	-- Savage Gladiator's Silk Raiment
	i(41956),	-- Savage Gladiator's Silk Trousers
	i(41290),	-- Savage Gladiator's Wyrmhide Gloves
	i(41324),	-- Savage Gladiator's Wyrmhide Helm
	i(41301),	-- Savage Gladiator's Wyrmhide Legguards
	i(41313),	-- Savage Gladiator's Wyrmhide Robes
	i(41278),	-- Savage Gladiator's Wyrmhide Spaulders
	-- #if BEFORE MOP
	emoh(15, i(40715, {	-- Sigil of Haunted Dreams
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40714, {	-- Sigil of the Unfaltering Knight
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoh(40, i(40682)),	-- Sundial of the Exiled
	emoh(40, i(40685)),	-- The Egg of Mortal Essence
	-- #if BEFORE MOP
	emoh(15, i(40709, {	-- Totem of Forest Growth
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40710, {	-- Totem of Splintering
		["timeline"] = { REMOVED_5_0_4 },
	})),
	emoh(15, i(40708, {	-- Totem of the Elemental Plane
		["timeline"] = { REMOVED_5_0_4 },
	})),
	-- #endif
	emoh(40, i(40683)),	-- Valor Medal of the First War
	emoh(40, i(40688)),	-- Verdungo's Barbarian Cord
	emoh(40, i(40692)),	-- Vereesa's Silver Chain Belt
	emoh(40, i(40695)),	-- Vine Belt of the Woodland Dryad
	emoh(40, i(40689)),	-- Waistguard of Living Iron
	emoh(25, i(40698)),	-- Ward of the Violet Citadel
};
local EMBLEM_OF_VALOR_QUARTERMASTER_GROUPS = {
	emov(60, i(40736)),	-- Armguard of the Tower Archer
	emov(25, i(40719)),	-- Band of Channeled Magic
	emov(60, i(40739)),	-- Bands of the Great Tree
	emov(40, i(40742)),	-- Bladed Steelboots
	emov(40, i(40748)),	-- Boots of Captain Ellis
	emov(60, i(40734)),	-- Bracers of Dalaran's Parapets
	emov(25, i(40724)),	-- Cloak of Kea Feathers
	emov(60, i(40741)),	-- Cuffs of the Shadow Ascendant
	emov(25, i(40723)),	-- Disguise of the Kumiho
	emov(25, i(40721)),	-- Hammerhead Sharkskin Cloak
	i(41085),	-- Hateful Gladiator's Chain Armor
	i(41141),	-- Hateful Gladiator's Chain Gauntlets
	i(41155),	-- Hateful Gladiator's Chain Helm
	i(41203),	-- Hateful Gladiator's Chain Leggings
	i(41215),	-- Hateful Gladiator's Chain Spaulders
	i(41771),	-- Hateful Gladiator's Dragonhide Gloves
	i(41676),	-- Hateful Gladiator's Dragonhide Helm
	i(41665),	-- Hateful Gladiator's Dragonhide Legguards
	i(41659),	-- Hateful Gladiator's Dragonhide Robes
	i(41713),	-- Hateful Gladiator's Dragonhide Spaulders
	i(40781),	-- Hateful Gladiator's Dreadplate Chestpiece
	i(40803),	-- Hateful Gladiator's Dreadplate Gauntlets
	i(40820),	-- Hateful Gladiator's Dreadplate Helm
	i(40841),	-- Hateful Gladiator's Dreadplate Legguards
	i(40860),	-- Hateful Gladiator's Dreadplate Shoulders
	i(42009),	-- Hateful Gladiator's Felweave Amice
	i(41991),	-- Hateful Gladiator's Felweave Cowl
	i(42015),	-- Hateful Gladiator's Felweave Handguards
	i(42001),	-- Hateful Gladiator's Felweave Raiment
	i(42003),	-- Hateful Gladiator's Felweave Trousers
	i(41284),	-- Hateful Gladiator's Kodohide Gloves
	i(41319),	-- Hateful Gladiator's Kodohide Helm
	i(41296),	-- Hateful Gladiator's Kodohide Legguards
	i(41308),	-- Hateful Gladiator's Kodohide Robes
	i(41273),	-- Hateful Gladiator's Kodohide Spaulders
	i(41765),	-- Hateful Gladiator's Leather Gloves
	i(41670),	-- Hateful Gladiator's Leather Helm
	i(41653),	-- Hateful Gladiator's Leather Legguards
	i(41681),	-- Hateful Gladiator's Leather Spaulders
	i(41648),	-- Hateful Gladiator's Leather Tunic
	i(41079),	-- Hateful Gladiator's Linked Armor
	i(41135),	-- Hateful Gladiator's Linked Gauntlets
	i(41149),	-- Hateful Gladiator's Linked Helm
	i(41162),	-- Hateful Gladiator's Linked Leggings
	i(41209),	-- Hateful Gladiator's Linked Spaulders
	i(40989),	-- Hateful Gladiator's Mail Armor
	i(41005),	-- Hateful Gladiator's Mail Gauntlets
	i(41017),	-- Hateful Gladiator's Mail Helm
	i(41031),	-- Hateful Gladiator's Mail Leggings
	i(41042),	-- Hateful Gladiator's Mail Spaulders
	i(41872),	-- Hateful Gladiator's Mooncloth Gloves
	i(41852),	-- Hateful Gladiator's Mooncloth Hood
	i(41862),	-- Hateful Gladiator's Mooncloth Leggings
	i(41867),	-- Hateful Gladiator's Mooncloth Mantle
	i(41857),	-- Hateful Gladiator's Mooncloth Robe
	i(40904),	-- Hateful Gladiator's Ornamented Chestguard
	i(40925),	-- Hateful Gladiator's Ornamented Gloves
	i(40931),	-- Hateful Gladiator's Ornamented Headcover
	i(40937),	-- Hateful Gladiator's Ornamented Legplates
	i(40961),	-- Hateful Gladiator's Ornamented Spaulders
	i(40783),	-- Hateful Gladiator's Plate Chestpiece
	i(40801),	-- Hateful Gladiator's Plate Gauntlets
	i(40819),	-- Hateful Gladiator's Plate Helm
	i(40840),	-- Hateful Gladiator's Plate Legguards
	i(40859),	-- Hateful Gladiator's Plate Spaulders
	i(40988),	-- Hateful Gladiator's Ringmail Armor
	i(40999),	-- Hateful Gladiator's Ringmail Gauntlets
	i(41011),	-- Hateful Gladiator's Ringmail Helm
	i(41025),	-- Hateful Gladiator's Ringmail Leggings
	i(41036),	-- Hateful Gladiator's Ringmail Spaulders
	i(41938),	-- Hateful Gladiator's Satin Gloves
	i(41913),	-- Hateful Gladiator's Satin Hood
	i(41925),	-- Hateful Gladiator's Satin Leggings
	i(41931),	-- Hateful Gladiator's Satin Mantle
	i(41919),	-- Hateful Gladiator's Satin Robe
	i(40782),	-- Hateful Gladiator's Scaled Chestpiece
	i(40802),	-- Hateful Gladiator's Scaled Gauntlets
	i(40821),	-- Hateful Gladiator's Scaled Helm
	i(40842),	-- Hateful Gladiator's Scaled Legguards
	i(40861),	-- Hateful Gladiator's Scaled Shoulders
	i(41963),	-- Hateful Gladiator's Silk Amice
	i(41944),	-- Hateful Gladiator's Silk Cowl
	i(41969),	-- Hateful Gladiator's Silk Handguards
	i(41950),	-- Hateful Gladiator's Silk Raiment
	i(41957),	-- Hateful Gladiator's Silk Trousers
	i(41291),	-- Hateful Gladiator's Wyrmhide Gloves
	i(41325),	-- Hateful Gladiator's Wyrmhide Helm
	i(41302),	-- Hateful Gladiator's Wyrmhide Legguards
	i(41314),	-- Hateful Gladiator's Wyrmhide Robes
	i(41279),	-- Hateful Gladiator's Wyrmhide Spaulders
	emov(40, i(40743)),	-- Kyzoc's Ground Stompers
	emov(75, i(40634)),	-- Legplates of the Lost Conqueror
	emov(75, i(40635)),	-- Legplates of the Lost Protector
	emov(75, i(40636)),	-- Legplates of the Lost Vanquisher
	emov(60, i(40637)),	-- Mantle of the Lost Conqueror
	emov(60, i(40638)),	-- Mantle of the Lost Protector
	emov(60, i(40639)),	-- Mantle of the Lost Vanquisher
	emov(40, i(40746)),	-- Pack-Ice Striders
	emov(60, i(40737)),	-- Pigmented Clan Bindings
	emov(25, i(40722)),	-- Platinum Mesh Cloak
	emov(40, i(40749)),	-- Rainey's Chewed Boots
	emov(25, i(40720)),	-- Renewal of Life
	emov(25, i(40717)),	-- Ring of Invincibility
	emov(40, i(40745)),	-- Sabatons of Rapid Recovery
	emov(25, i(40718)),	-- Signet of the Impregnable Fortress
	emov(40, i(40751)),	-- Slippers of the Holy Light
	emov(40, i(40747)),	-- Treads of Coastal Wandering
	emov(60, i(40740)),	-- Wraps of the Astral Traveler
	emov(60, i(40733)),	-- Wristbands of the Sentinel Huntress
	emov(60, i(40738)),	-- Wristwraps of the Cutthroat
	emov(40, i(40750)),	-- Xintor's Expeditionary Boots
	emov(60, i(40735)),	-- Zartson's Jungle Vambraces
};

-- Wrath Classic only: These quests were ripped out with Wrath Phase 4.
-- #if ANYCLASSIC
local OnUpdateForTimearDailies = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_FOUR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. WRATH_PHASE_ONE .. [[;
		t.rwp = 30300;
	end
end]];
-- #endif

root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(NORTHREND_DALARAN, {
			["lore"] = "Dalaran is a magocratic city-state and was once located within the Alterac Mountains in the Eastern Kingdoms. Now, the city, including the Violet Citadel, resides above the Crystalsong Forest in Northrend. The top part of the city is sparkling and airy, while the sewers underground show the darker side of magic addiction and luxury.",
			["icon"] = 237509,
			["maps"] = {
				501,	-- Dalaran (operation shieldwall)
				502,	-- Dalaran (sewers, operation shieldwall)
			},
			["isRaid"] = true,
			["lvl"] = 58,
			["groups"] = {
				m(NORTHREND_THE_UNDERBELLY, {
					["zone-text-areaID"] = 4560,	-- The Underbelly
					["icon"] = 460862,
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(1958, {	-- I Smell A Giant Rat
								["provider"] = { "i", 43698 },	-- Giant Sewer Rat
								["requireSkill"] = FISHING,
							}),
						}),
						prof(COOKING, {
							i(43100, {	-- Infused Mushroom (QI!)
								["provider"] = { "o", 192818 },	-- Infused Mushroom
							}),
							n(33026, {	-- Sarah Brady <Alcohol>
								["coord"] = { 44.15, 47.63, NORTHREND_THE_UNDERBELLY },
								["groups"] = {
									i(2593),	-- Flask of Stormwind Tawny
								},
							}),
						}),
						prof(FISHING, {
							i(45903),	-- Corroded Jewelry (QI!)
							i(43698, {	-- Giant Sewer Rat (PET!)
								["timeline"] = { ADDED_3_0_2 },
							}),
						}),
						n(QUESTS, {
							q(13571, {	-- Fletcher's Lost and Found
								["sourceQuest"] = 12645,	-- The Taste Test
								["qg"] = 32516,	-- Washed-Up Mage
								["coord"] = { 44.2, 25.6, NORTHREND_THE_UNDERBELLY },
								["requireSkill"] = COOKING,
								["groups"] = {
									recipe(53056),	-- Kungaloosh (RECIPE!)
								},
							}),
							q(13845, {	-- Sealed Vial of Poison
								["providers"] = {
									{ "i", 46004 },	-- Sealed Vial of Poison
									{ "i", 46004 },	-- Sealed Vial of Poison
									{ "n", 29535 },	-- Alchemist Cinesra <Poison Vendor>
								},
								["coord"] = { 63.6, 12.0, NORTHREND_THE_UNDERBELLY },
								["repeatable"] = true,
							}),
						}),
						n(VENDORS, {
							n(29535, {	-- Alchemist Cinesra
								["coord"] = { 63.2, 11.4, NORTHREND_THE_UNDERBELLY },
								-- #if AFTER MOP
								["sym"] = {{"select","itemID",
									4565,	-- Simple Dagger
								}},
								-- #endif
							}),
							-- #if NOT ANYCLASSIC
							n(30885, {	-- Blazik Fireclaw <Hateful Gladiator> [Legion?] / Blazik Fireclaw <Legacy Arena Armor> [CATA+] / Blazik Fireclaw <Water Vendor> [WRATH]
								["coord"] = { 59.5, 57.9, NORTHREND_THE_UNDERBELLY },
								-- #if AFTER LEGION
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },{"merge"},{ "pop" }},	-- Hateful Gladiator's Set
								-- #elseif AFTER CATA
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_BRUTAL, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Brutal Gladiator's Set [TODO: Specifically Just the Armor...]
								-- #endif
							}),
							-- #endif
							n(106887, {	-- Cravitz Lorent <Shady Book Dealer>
								["description"] = "This vendor is not always present. It can appear in either version of Dalaran.",
								["coord"] = { 47.0, 28.1, NORTHREND_THE_UNDERBELLY },
								["timeline"] = { ADDED_7_0_3 },
								["groups"] = {
									i(136803, {	-- Dirty Tricks, Vol 1: Detection (CI!)
										["timeline"] = { ADDED_7_0_3 },
									}),
									i(136927, {	-- Scarlet Confessional Book (TOY!)
										["timeline"] = { ADDED_7_0_3 },
									}),
									i(141056, {	-- Technique: Glyph of Burnout (RECIPE!)
										["timeline"] = { ADDED_7_0_3 },
									}),
									i(136972, {	-- Tome of Hex: Cockroach (CI!)
										["timeline"] = { ADDED_7_0_3 },
									}),
								},
							}),
							n(29537, {	-- Darahir <Reagents & Magical Goods>
								["coord"] = { 63.4, 16.2, NORTHREND_THE_UNDERBELLY },
								["groups"] = {
									i(39973, {	-- Ghostly Skull (PET!)
										["timeline"] = { ADDED_3_0_2 },
									}),
								},
							}),
							-- #if NOT ANYCLASSIC
							-- Wouter TODO: check if this NPC gets added later in MoP Classic
							n(69321, {	-- Herwin Steampop <Deadly Gladiator>
								["coord"] = { 59.4, 57.8, NORTHREND_THE_UNDERBELLY },
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Deadly Gladiator's Set
								["timeline"] = { ADDED_5_2_0 },
							}),
							-- #endif
							n(29538, {	-- Hexil Garrot <Tools of the Trade>
								["coord"] = { 60.6, 11.9, NORTHREND_THE_UNDERBELLY },
								["groups"] = {
									emov(60, i(40739)),	-- Bands of the Great Tree
									emof(60, i(50994)),	-- Belt of Petrified Ivy
									emoc(28, i(45830)),	-- Belt of the Living Thicket
									emoc(28, i(45829)),	-- Belt of the Twilight Assassin
									emov(40, i(40748)),	-- Boots of Captain Ellis
									emof(60, i(50982)),	-- Cat Burglar's Grips
									i(44652),	-- Dalaran Dagger
									i(44644, {	-- Dalaran Dart
										["timeline"] = { REMOVED_5_0_4 },
									}),
									i(44641),	-- Dalaran Knuckles
									emoc(28, i(45838)),	-- Gloves of the Blind Stalker
									emof(60, i(50981)),	-- Gloves of the Great Horned Owl
									emoc(28, i(45839)),	-- Grips of the Secret Grove
									emoh(40, i(40694)),	-- Jorach's Crocolisk Skin Belt
									emoc(39, i(45846)),	-- Leggings of Wavering Shadow
									emoh(15, i(40716, {	-- Lillehoff's Winged Blades
										["timeline"] = { REMOVED_5_0_4 },
									})),
									emoh(50, i(40704)),	-- Pride
									emov(40, i(40749)),	-- Rainey's Chewed Boots
									emoh(50, i(40702)),	-- Rolfsen's Ripper
									emof(95, i(50972)),	-- Shadow Seeker's Tunic
									emof(60, i(50995)),	-- Vengeful Noose
									emof(95, i(50973)),	-- Vestments of Spruce and Fir
									emoh(40, i(40695)),	-- Vine Belt of the Woodland Dryad
									emoc(39, i(45847)),	-- Wildstrider Legguards
									emov(60, i(40738)),	-- Wristwraps of the Cutthroat
								},
							}),
							-- #if NOT ANYCLASSIC
							-- Wouter TODO: check if this NPC gets added later in MoP Classic
							n(69318, {	-- Kylo Kelwin <Furious Gladiator>
								["coord"] = { 59.0, 57.6, NORTHREND_THE_UNDERBELLY },
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Furious Gladiator's Set
								["timeline"] = { ADDED_5_2_0 },
							}),
							-- #endif
							applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(54653, {	-- Nargle Lashcord <Glorious Conquest Quartermaster>
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 7.0.1
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_CATACLYSMIC, PVP_GLADIATOR }},	-- Cataclysmic Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_4_3_0, REMOVED_7_0_3 },
							})),
							applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(52541, {	-- Nargle Lashcord <Glorious Conquest Quartermaster>
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 5.0.1
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR }},	-- Ruthless Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_4_2_0, REMOVED_4_3_0 },
							})),
							applyclassicphase(CATA_PHASE_ONE, n(40211, {	-- Nargle Lashcord <Glorious Conquest Quartermaster>
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 5.0.1
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_GLADIATOR }},	-- Vicious Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 },
							})),
							applyclassicphase(WRATH_PHASE_FOUR, n(33936, {	-- Nargle Lashcord <Veteran Arena Vendor> // Original S8 Vendor // Wrathful Gladiator: Season 8 Gladiator Gear
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR },{ "pop" }},	-- Wrathful Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_THREE, n(33927, {	-- Nargle Lashcord <Veteran Arena Vendor> // Original S7 Vendor // Relentless Gladiator: Season 7 Gladiator Gear
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },{ "pop" }},	-- Relentless Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_TWO, n(33921, {	-- Nargle Lashcord <Veteran Arena Vendor> // Original S6 Vendor // Furious Gladiator: Season 6 Gladiator Gear
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_ONE, n(31863, {	-- Nargle Lashcord <Veteran Arena Vendor> // Original S5 Vendor // Deadly Gladiator: Season 5 Gladiator Gear
								-- Wouter NOTE: I adjusted this NPC with Classic specific data starting from MoP, expansions before that may be inaccurate
								["coord"] = { 58.7, 59.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE CATA
								["sym"] = {
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR }, { "pop" },		-- Deadly Gladiator's Set
									-- #if ANYCLASSIC
									{ "select", "itemID", 201993 },	-- Deadly Gladiator's Tabard (Wrath Classic Only)
									-- #endif
								},
								-- #elseif ANYCLASSIC
								["sym"] = {
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR }, { "merge" }, { "pop" },	-- Deadly Gladiator's Set
									{ "not", "headerID", BACK, WAIST, WRIST, FEET },				-- Exclude off-piece headers
									{ "not", "filterID", NECK_F, FINGER_F, RELICS_F, TRINKET_F },	-- Exclude off-piece filters
									{ "pop" },						-- Flatten everything out
									{ "select", "itemID", 51534 },	-- Add Wrathful Gladiator's Tabard because that's also on the vendor for some reason
								},
								-- #endif
								-- #if NOT ANYCLASSIC
								["timeline"] = { REMOVED_4_0_3 },
								-- #endif
							})),
							-- #if NOT ANYCLASSIC
							applyclassicphase(CATA_PHASE_ONE, n(40212, {	-- Trapjaw Rix <Savage Gladiator> [Legion?] / Blazik Fireclaw <Legacy Arena Armor> [CATA+]
								["coord"] = { 59.3, 57.3, NORTHREND_THE_UNDERBELLY },
								-- #if AFTER LEGION
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_HONOR },{"merge"},{ "pop" }},	-- Savage Gladiator's Set
								-- #elseif AFTER CATA
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_BRUTAL, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Brutal Gladiator's Set [TODO: Specifically Just the Weapons...]
								-- #endif
								["timeline"] = { ADDED_4_0_3 },
							})),
							-- #endif
							applyclassicphase(WRATH_PHASE_FOUR, n(34095, {	-- Trapjaw Rix <Veteran Arena Vendor> / <Exceptional Arena Weaponry> [WRATH] Original WOTLK S8 ELITE VENDOR
								["coord"] = { 59.9, 57.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_ELITE },{"merge"}},	-- Wrathful Gladiator's Elite Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_THREE, n(34092, {	-- Trapjaw Rix <Veteran Arena Vendor> / <Exceptional Arena Weaponry> [WRATH] Original WOTLK S7 ELITE VENDOR
								["coord"] = { 59.9, 57.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_ELITE },{"merge"}},	-- Relentless Gladiator's Elite Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_TWO, n(34087, {	-- Trapjaw Rix <Veteran Arena Vendor> / <Exceptional Arena Weaponry> [WRATH] Original WOTLK S6 ELITE VENDOR
								-- Wouter NOTE: I adjusted this NPC with Classic specific data starting from MoP, expansions before that may be inaccurate
								["coord"] = { 59.9, 57.0, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE CATA
								["sym"] = {{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_ELITE }, { "merge" }},	-- Furious Gladiator's Elite Set
								-- #elseif ANYCLASSIC
								["sym"] = {
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_ELITE }, { "merge" },	-- Wrathful Gladiator's Elite Set
									{ "pop" }, { "where", "headerID", WEAPONS },	-- Pop Elite Set header and select Weapons header
									{ "pop" },	-- Flatten everything out
								},
								-- #endif
								-- #if NOT ANYCLASSIC
								["timeline"] = { REMOVED_4_0_3 },
								-- #endif
							})),
							-- #if NOT ANYCLASSIC
							-- Wouter TODO: check if this NPC gets added later in MoP Classic
							n(69971, {	-- Xazi Smolderpipe <Wrathful Gladiator> [Legion?] / Xazi Smolderpipe <Conquest Quartermaster> [MOP?]
								["coord"] = { 58.5, 58.3, NORTHREND_THE_UNDERBELLY },
								-- #if AFTER LEGION
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Wrathful Gladiator's Set
								-- #else
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_CATACLYSMIC, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Cataclysmic Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_5_2_0 },
							}),
							-- #endif
							applyclassicphase(WRATH_PHASE_FOUR, n(33937, {	-- Xazi Smolderpipe <Arena Vendor> // Original S8 Vendor // Relentless Gladiator: Season 7 Gladiator Gear
								["coord"] = { 58.8, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },{ "pop" }},	-- Relentless Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_THREE, n(33926, {	-- Xazi Smolderpipe <Arena Vendor> // Original S7 Vendor // Furious Gladiator: Season 6 Gladiator Gear
								["coord"] = { 58.8, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_TWO, n(33922, {	-- Xazi Smolderpipe <Arena Vendor> // Original S6 Vendor // Deadly Gladiator: Season 5 Gladiator Gear
								["coord"] = { 58.8, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_ONE, n(31864, {	-- Xazi Smolderpipe <Arena Vendor> // Original S5 Vendor // Hateful Gladiator: Season 5 Gladiator Gear
								-- Wouter NOTE: I adjusted this NPC with Classic specific data starting from MoP, expansions before that may be inaccurate
								["coord"] = { 58.8, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE CATA
								["sym"] = {{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL }, { "pop" }},	-- Hateful Gladiator's Set
								-- #elseif ANYCLASSIC
								["sym"] = {
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR }, { "merge" },	-- Relentless Gladiator's Set
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_ELITE }, { "merge" }, { "pop" },		-- Relentless Gladiator's Elite Set
									{ "not", "headerID", BACK, WAIST, WRIST, FEET },				-- Exclude off-piece headers
									{ "not", "filterID", NECK_F, FINGER_F, RELICS_F, TRINKET_F },	-- Exclude off-piece filters
									{ "exclude", "itemID", 49086 },									-- Exclude Relentless Gladiator's Tabard
									{ "pop" },	-- Flatten everything out
								},
								-- #endif
								-- #if NOT ANYCLASSIC
								["timeline"] = { REMOVED_4_0_3 },
								-- #endif
							})),
							-- #if NOT ANYCLASSIC
							-- Wouter TODO: check if this NPC gets added later in MoP Classic
							n(69973, {	-- Zom Bocom <Relentless Gladiator> [Legion?] / Zom Bocom <Honor Quartermaster> [MOP?]
								["coord"] = { 59.0, 58.8, NORTHREND_THE_UNDERBELLY },
								-- #if AFTER LEGION
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Relentless Gladiator's Set
								-- #else
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR },{"merge"},{ "pop" }},	-- Ruthless Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_5_2_0 },
							}),
							-- #endif
							applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(54651, {	-- Zom Bocom <Honor Quartermaster>
								-- #if BEFORE 5.2.0.16577
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR }},	-- Ruthless Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_4_3_0, REMOVED_5_2_0 },
							})),
							applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(52534, {	-- Zom Bocom <Honor Quartermaster>
								["coord"] = { 59.1, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 5.0.1
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_GLADIATOR }},	-- Vicious Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_4_2_0, REMOVED_4_3_0 },
							})),
							applyclassicphase(CATA_PHASE_ONE, n(40205, {	-- Zom Bocom <Honor Quartermaster>
								["coord"] = { 59.1, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 5.0.1
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_HONOR }},	-- Bloodthirsty Gladiator's Set
								-- #endif
								["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 },
							})),
							applyclassicphase(WRATH_PHASE_FOUR, n(33938, {	-- Zom Bocom <Apprentice Arena Vendor> // Original S8 Vendor // Furious Gladiator: Season 8 Honor Gear
								["coord"] = { 59.1, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_THREE, n(33925, {	-- Zom Bocom <Apprentice Arena Vendor> // Original S7 Vendor // Deadly Gladiator: Season 7 Honor Gear
								["coord"] = { 59.1, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_TWO, n(33923, {	-- Zom Bocom <Apprentice Arena Vendor> // Original S6 Vendor // Hateful Gladiator: Season 6 Honor Gear
								["coord"] = { 59.1, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE 4.0.3.13277
								["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },{ "pop" }},	-- Hateful Gladiator's Set
								-- #endif
								["timeline"] = { REMOVED_4_0_3 },
							})),
							applyclassicphase(WRATH_PHASE_ONE, n(31865, {	-- Zom Bocom <Apprentice Arena Vendor> // Original S5 Vendor // Savage Gladiator: Season 5 Honor Gear
								-- Wouter NOTE: I adjusted this NPC with Classic specific data starting from MoP, expansions before that may be inaccurate
								["coord"] = { 59.1, 59.6, NORTHREND_THE_UNDERBELLY },
								-- #if BEFORE CATA
								["sym"] = {{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_HONOR }, { "pop" }},	-- Savage Gladiator's Set
								-- #elseif ANYCLASSIC
								["sym"] = {
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_HONOR },							-- Savage Gladiator's Set
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },					-- Hateful Gladiator's Set
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },						-- Deadly Gladiator's Set
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },						-- Furious Gladiator's Set
									{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_ELITE }, { "merge" }, { "pop" },	-- Furious Gladiator's Elite Set
									{ "not", "headerID", BACK, WAIST, WRIST, FEET },				-- Exclude off-piece headers
									{ "not", "filterID", NECK_F, FINGER_F, RELICS_F, TRINKET_F },	-- Exclude off-piece filters
									{ "pop" },						-- Flatten everything out
									{ "exclude", "itemID",
										45983,	-- Exclude Furious Gladiator's Tabard
										42214,	-- Exclude Savage Gladiator's Waraxe
									},
									{ "exclude", "u", 1 },			-- Exclude items that were never available to begin with
								},
								-- #endif
								-- #if NOT ANYCLASSIC
								["timeline"] = { REMOVED_4_0_3 },
								-- #endif
							})),
						}),
					},
				}),
				n(ACHIEVEMENTS, {
					ach(2094, {	-- A Penny For Your Thoughts
						["sym"] = {{ "achievement_criteria" }},
						["requireSkill"] = FISHING,
					}),
					ach(3217, {	-- Chasing Marcia
						["requireSkill"] = FISHING,
						["groups"] = {
							crit(13367, {	-- Blood Is Thicker
								["_quests"] = { 13833 },
							}),
							crit(13365, {	-- Dangerously Delicious
								["_quests"] = { 13834 },
							}),
							crit(13366, {	-- Disarmed!
								["_quests"] = { 13836 },
							}),
							crit(13364, {	-- Jewel Of The Sewers
								["_quests"] = { 13832 },
							}),
							crit(13363, {	-- The Ghostfish
								["_quests"] = { 13830 },
							}),
						},
					}),
					ach(3296, {	-- Cooking with Style
						-- #if AFTER 7.0.3.22248
						["provider"] = { "i", 134020 },	-- Chef's Hat
						-- #else
						["provider"] = { "i", 46349 },	-- Chef's Hat
						-- #endif
						["requireSkill"] = COOKING,
					}),
					ach(1956, {	-- Higher Learning
						["description"] = "The Schools of Arcane Magic books share a spawn location with generic books. Read the books in each location to start the respawn timer, which seems to be 3-4 hours.\n\nThe best time to hunt books is right after a server restart.",
						["groups"] = {
							i(44738, {	-- Kirin Tor Familiar (PET!)
								["description"] = "This pet is obtained by doing the following:\n1. Complete the achievement 'Higher Learning'\n2. Use the newly aqcuired toy 'The Schools of Arcane Magic - Mastery' and teleport yourself to the spires atop Violet Citadel.\n3. Interact with Archmage Vargoth.",
								["timeline"] = { ADDED_3_0_3 },
							}),
							i(43824, {	-- The Schools of Arcane Magic - Mastery (TOY!)
								["description"] = "If you lost the book, Rhonin will provide it to you at no charge as long as you have the achievement. This only works on the character who completed the achievement.",
								["cr"] = 16128,	-- Rhonin <Leader of the Kirin Tor>
							}),
						},
					}),
					achWithReps(1010, { FACTION_ARGENT_CRUSADE, FACTION_KIRIN_TOR, FACTION_EBON_BLADE, FACTION_THE_WYRMREST_ACCORD }, {	-- Northrend Vanguard
						["maps"] = {
							DRAGONBLIGHT,
							ICECROWN,
						},
					}),
					ach(1782, {	-- Our Daily Bread (A)
						["requireSkill"] = COOKING,
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							crit(12082, {	-- Cheese for Glowergold
								["_quests"] = { 13103 },
							}),
							crit(12078, {	-- Convention at the Legerdemain
								["_quests"] = { 13101 },
							}),
							crit(11960, {	-- Infused Mushroom Meatloaf
								["_quests"] = { 13100 },
							}),
							crit(12084, {	-- Mustard Dogs!
								["_quests"] = { 13107 },
							}),
							crit(12080, {	-- Sewer Stew
								["_quests"] = { 13102 },
							}),
						},
					}),
					ach(1783, {	-- Our Daily Bread (H)
						["requireSkill"] = COOKING,
						["races"] = HORDE_ONLY,
						["groups"] = {
							crit(12083, {	-- Cheese for Glowergold
								["_quests"] = { 13115 },
							}),
							crit(12079, {	-- Convention at the Legerdemain
								["_quests"] = { 13113 },
							}),
							crit(11961, {	-- Infused Mushroom Meatloaf
								["_quests"] = { 13112 },
							}),
							crit(12085, {	-- Mustard Dogs!
								["_quests"] = { 13116 },
							}),
							crit(12081, {	-- Sewer Stew
								["_quests"] = { 13114 },
							}),
						},
					}),
					ach(2019, bubbleDownSelf({	-- Proof of Demise
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
					},  {
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						["groups"] = {
							crit(7309, {	-- Proof of Demise: Anub'arak
								["_quests"] = { 13254 },	-- Proof of Demise: Anub'arak
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7311, {	-- Proof of Demise: Cyanigosa
								["_quests"] = { 13256 },	-- Proof of Demise: Cyanigosa
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7305, {	-- Proof of Demise: Gal'darah
								["_quests"] = { 13250 },	-- Proof of Demise: Gal'darah
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7310, {	-- Proof of Demise: Herald Volazj
								["_quests"] = { 13255 },	-- Proof of Demise: Herald Volazj
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7300, {	-- Proof of Demise: Ingvar the Plunderer
								["_quests"] = { 13245 },	-- Proof of Demise: Ingvar the Plunderer
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7301, {	-- Proof of Demise: Keristrasza
								["_quests"] = { 13246 },	-- Proof of Demise: Keristrasza
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7303, {	-- Proof of Demise: King Ymiron
								["_quests"] = { 13248 },	-- Proof of Demise: King Ymiron
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7302, {	-- Proof of Demise: Ley-Guardian Eregos
								["_quests"] = { 13247 },	-- Proof of Demise: Ley-Guardian Eregos
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7308, {	-- Proof of Demise: Loken
								["_quests"] = { 13253 },	-- Proof of Demise: Loken
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7306, {	-- Proof of Demise: Mal'Ganis
								["_quests"] = { 13251 },	-- Proof of Demise: Mal'Ganis
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7307, {	-- Proof of Demise: Sjonnir The Ironshaper
								["_quests"] = { 13252 },	-- Proof of Demise: Sjonnir The Ironshaper
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7304, {	-- Proof of Demise: The Prophet Tharon'ja
								["_quests"] = { 13249 },	-- Proof of Demise: The Prophet Tharon'ja
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
						},
					})),
					ach(2095, {	-- Silver in the City
						["sym"] = {{ "achievement_criteria" }},
						["requireSkill"] = FISHING,
					}),
					ach(2096, {	-- The Coin Master
						["sym"] = {{"meta_achievement",
							2094,	-- A Penny For Your Thoughts
							2095,	-- Silver in the City
							1957,	-- There's Gold In That There Fountain
						}},
						["requireSkill"] = FISHING,
						["groups"] = {
							i(44430),		-- Titanium Seal of Dalaran (TOY!)
						},
					}),
					achWithRep(1008, FACTION_KIRIN_TOR),	-- The Kirin Tor
					ach(1957, {	-- There's Gold In That There Fountain
						["sym"] = {{ "achievement_criteria" }},
						["requireSkill"] = FISHING,
					}),
					ach(2018, bubbleDownSelf({	-- Timear Foresees
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
					}, {
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						["groups"] = {
							crit(7296, {	-- Timear Foresees Centrifuge Constructs in your Future!
								["_quests"] = { 13240 },	-- Timear Foresees Centrifuge Constructs in your Future!
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7298, {	-- Timear Foresees Infinite Agents in your Future!
								["_quests"] = { 13243 },	-- Timear Foresees Infinite Agents in your Future!
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7299, {	-- Timear Foresees Titanium Vanguards in your Future!
								["_quests"] = { 13244 },	-- Timear Foresees Titanium Vanguards in your Future!
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
							crit(7297, {	-- Timear Foresees Ymirjar Berserkers in your Future!
								["_quests"] = { 13241 },	-- Timear Foresees Ymirjar Berserkers in your Future!
								["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
							}),
						},
					})),
				}),
				-- #if AFTER MOP
				filter(BATTLE_PETS, {
					pet(1604, {	-- Nethaera's Light (PET!)
						["description"] = "To obtain this pet do /cheer at it.\nNote: May go to the closest player who does not already have the pet.",
						["coords"] = {
							{ 41.2, 41.6, NORTHREND_DALARAN },
							{ 53.3, 35.3, NORTHREND_DALARAN },
						},
						["crs"] = { 93432 },	-- Nethaera's Light
						["timeline"] = { ADDED_6_2_0 },
					}),
				}),
				-- #endif
				n(FACTIONS, {
					faction(FACTION_KIRIN_TOR, {	-- Kirin Tor
						["provider"] = { "i", 43157 },	-- Tabard of the Kirin Tor
						["icon"] = 135933,
					}),
					faction(FACTION_THE_SILVER_COVENANT, {	-- The Silver Covenant
						["icon"] = 132483,
						["maps"] = { ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
					faction(FACTION_THE_SUNREAVERS, {	-- The Sunreavers
						["icon"] = 132850,
						["maps"] = { ICECROWN },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(310, {	-- Dalaran
						["cr"] = 28674,	-- Aludane Whitecloud <Flight Master>
						["coord"] = { 72.1, 45.7, NORTHREND_DALARAN },
					}),
				}),
				-- #if NOT ANYCLASSIC
				-- CRIEVE NOTE: I'm going to solve this a different way eventually.
				o(208316, {	-- Hero's Call Board
					["coords"] = {
						{ 25.9, 43.1, NORTHREND_DALARAN },
						{ 47.8, 41.2, NORTHREND_DALARAN },
						{ 37.8, 63.8, NORTHREND_DALARAN },
					},
					["timeline"] = { ADDED_4_0_1 },
					["sym"] = HEROS_CALL_BOARD_SYMLINK,
					["races"] = ALLIANCE_ONLY,
					["skipFill"] = true,
				}),
				-- #endif
				n(32838, {	-- Minigob Manabonk
					["timeline"] = { ADDED_3_1_0 },
					["groups"] = {
						i(44817),	-- The Mischief Maker
					},
				}),
				n(PROFESSIONS, {
					prof(ALCHEMY, {
						n(28703, {	-- Linzy Blackbolt <Alchemy Trainer>
							["coord"] = { 42.4, 32.0, NORTHREND_DALARAN },
							["groups"] = WRATH_ALCHEMY,
						}),
					}),
					prof(BLACKSMITHING, {
						n(28694, {	-- Alard Schmied <Blacksmithing Trainer>
							["coord"] = { 45.8, 27.4, NORTHREND_DALARAN },
							["groups"] = WRATH_BLACKSMITHING,
						}),
						n(29505, {	-- Imindril Spearsong <Blacksmithing Trainer>
							["coord"] = { 45.6, 28.6, NORTHREND_DALARAN },
							["groups"] = WRATH_WEAPONSMITHING,
						}),
						n(29506, {	-- Orland Schaeffer <Blacksmithing Trainer>
							["coord"] = { 45.0, 28.0, NORTHREND_DALARAN },
							["groups"] = WRATH_ARMORSMITHING,
						}),
					}),
					prof(COOKING, {
						{
							["aqd"] = n(28705, {	-- Katherine Lee <Cooking Trainer>
								["coord"] = { 41.6, 64.6, NORTHREND_DALARAN },
							}),
							["hqd"] = n(29631, {	-- Awilo Lon'gomba <Cooking Trainer>
								["coord"] = { 52.2, 36.4, NORTHREND_DALARAN },
							}),
							["groups"] = WRATH_COOKING,
						},
						{
							["aqd"] = n(31032, {	-- Derek Odds <Cooking Supplies>
								["coord"] = { 40.7, 65.9, NORTHREND_DALARAN },
							}),
							["hqd"] = n(31031, {	-- Misensi <Cooking Supplies>
								["coord"] = { 70.0, 38.6, NORTHREND_DALARAN },
							}),
							["groups"] = {
								epicurean(100, i(46349, {	-- Chef's Hat
									["timeline"] = { DELETED_7_0_3 },
								})),
								epicurean(100, i(134020, {	-- Chef's Hat (TOY!)
									["timeline"] = { ADDED_7_0_3 },
								})),
								epicurean(1, i(43007)),	-- Northern Spices
								epicurean(3, i(43035)),	-- Recipe: Blackened Dragonfin (RECIPE!)
								epicurean(3, i(43032)),	-- Recipe: Blackened Worg Steak (RECIPE!)
								epicurean(3, i(43029)),	-- Recipe: Critter Bites (RECIPE!)
								epicurean(3, i(43033)),	-- Recipe: Cuttlesteak (RECIPE!)
								epicurean(3, i(43036)),	-- Recipe: Dragonfin Filet (RECIPE!)
								epicurean(3, i(43024)),	-- Recipe: Firecracker Salmon (RECIPE!)
								epicurean(5, i(43017, {	-- Recipe: Fish Feast (RECIPE!)
									["timeline"] = { ADDED_3_0_8 },
								})),
								epicurean(3, i(43505)),	-- Recipe: Gigantic Feast (RECIPE!)
								epicurean(3, i(43030)),	-- Recipe: Hearty Rhino (RECIPE!)
								epicurean(3, i(43026)),	-- Recipe: Imperial Manta Steak (RECIPE!)
								epicurean(3, i(43018)),	-- Recipe: Mega Mammoth Meal (RECIPE!)
								epicurean(3, i(43022)),	-- Recipe: Mighty Rhino Dogs (RECIPE!)
								epicurean(3, i(43023)),	-- Recipe: Poached Northern Sculpin (RECIPE!)
								epicurean(3, i(43028)),	-- Recipe: Rhinolicious Wormsteak (RECIPE!)
								epicurean(3, i(43506)),	-- Recipe: Small Feast (RECIPE!)
								epicurean(3, i(43031)),	-- Recipe: Snapper Extreme (RECIPE!)
								epicurean(3, i(43034)),	-- Recipe: Spiced Mammoth Treats (RECIPE!)
								epicurean(3, i(43020)),	-- Recipe: Spiced Worm Burger (RECIPE!)
								epicurean(3, i(43025)),	-- Recipe: Spicy Blue Nettlefish (RECIPE!)
								epicurean(3, i(43027)),	-- Recipe: Spicy Fried Herring (RECIPE!)
								epicurean(3, i(43019)),	-- Recipe: Tender Shoveltusk Steak (RECIPE!)
								epicurean(3, i(43037)),	-- Recipe: Tracker Snacks (RECIPE!)
								epicurean(3, i(43021)),	-- Recipe: Very Burnt Worg (RECIPE!)
								epicurean(3, i(44954, {	-- Recipe: Worg Tartare (RECIPE!)
									["timeline"] = { ADDED_3_0_8 },
								})),
							},
						},
						i(43143, {	-- Wild Mustard
							["provider"] = { "o", 192827 },	-- Wild Mustard
						}),
					}),
					prof(ENCHANTING, {
						n(28693, {	-- Enchanter Nalthanis <Enchanting Trainer>
							["coord"] = { 39.4, 41.2, NORTHREND_DALARAN },
							["groups"] = WRATH_ENCHANTING,
						}),
					}),
					prof(ENGINEERING, {
						n(28697, {	-- Timofey Oshenko <Engineering Trainer>
							["coord"] = { 38.8, 25.8, NORTHREND_DALARAN },
							["groups"] = WRATH_ENGINEERING,
						}),
					}),
					prof(FIRST_AID, {
						n(28706, {	-- Olisarra the Kind <Bandage Trainer>
							["coord"] = { 36.8, 37.0, NORTHREND_DALARAN },
							["groups"] = WRATH_FIRST_AID,
						}),
					}),
					prof(FISHING, {
						n(28742, {	-- Marcia Chase <Fishing Trainer & Supplies>
							["coord"] = { 52.6, 65.6, NORTHREND_DALARAN },
							["groups"] = WRATH_FISHING,
						}),
						i(45328, {	-- Bloated Slippery Eel
							i(45323),	-- Severed Arm
						}),
						i(43659, {	-- Bloodied Prison Shank
							["timeline"] = { ADDED_3_0_2 },
							["description"] = "Can be fished up from the waters outside Violet Hold on WotLK Dalaran.",
						}),
						o(193402, {	-- Rusted Prisoner's Footlocker
							["coord"] = { 64.5, 73.8, NORTHREND_DALARAN },
							["cost"] = {
								-- #if AFTER 5.2.0
								{ "i", 93738, 1 },	-- Rusty Prison Key
								-- #else
								{ "i", 43650, 1 },	-- Rusty Prison Key
								-- #endif
							},
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3, ADDED_5_2_0 },
							["groups"] = {
								i(37891),	-- Cast Iron Shackles
								i(37890),	-- Chain Gang Legguards
								i(37889),	-- Prison Manifest
							},
						}),
						i(93738, {	-- Rusty Prison Key
							["timeline"] = { ADDED_5_2_0 },
						}),
						i(43650, {	-- Rusty Prison Key
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
						}),
					}),
					prof(HERBALISM, {
						n(28704, {	-- Dorothy Egan <Herbalism Trainer>
							["coord"] = { 43.8, 34.8, NORTHREND_DALARAN },
							["groups"] = WRATH_HERBALISM,
						}),
					}),
					prof(INSCRIPTION, {
						n(28702, {	-- Professor Pallin <Inscription Trainer>
							["coord"] = { 42.6, 37.8, NORTHREND_DALARAN },
							["groups"] = {
								n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
									r(1263575),	-- Dalaran Post
									r(1263570),	-- Dalaran Scholar's Bookcase
									r(1263564),	-- Dalaran Street Sign
									r(1263574),	-- Kirin Tor Crate
									r(1263562),	-- Silver Dalaran Bench
								})),
							},
						}),
					}),
					prof(JEWELCRAFTING, {
						n(28721, {	-- Tiffany Cartier <Jewelcrafting Supplies>
							["coord"] = { 40.4, 34.6, NORTHREND_DALARAN },
							["groups"] = TIFFANY_JEWELCRAFTING_RECIPES,
						}),
						n(28701, {	-- Timothy Jones <Jewelcrafting Trainer>
							["description"] = "Daily Jewelcrafting quests:\n\nShipment: Blood Jade Amulet - Vrykul can be found on Ymirheim, in the middle of Icecrown.\n\nShipment: Bright Armor Relic - Revenants/Elementals can be found in Dragonblight, following the mountainside from the Crystal Vice towards Wrathgate.\n\nShipment: Glowing Ivory Figurine - Mammoth can be found in southernmost Storm Peaks, by the road towards K3.\n\nShipment: Intricate Bone Figurine - Proto Dragons can be found in Storm Peaks, in the valley above Brunnhildar Village.\n\nShipment:Shifting Sun Curio - Scourge/Undead can be found as neutral ghosts in Crystalsong Forest, by the Violet Stand beneath Dalaran.\n\nShipment: Wicked Armour Relic - Iron Dwarfs can be found in the Storm Peaks, in a cave between Frosthold and Valkyrion.",
							["coord"] = { 40.3, 35.1, NORTHREND_DALARAN },
							["groups"] = appendGroups(WRATH_JEWELCRAFTING,TIMOTHY_JEWELCRAFTING_RECIPES),
						}),
					}),
					prof(LEATHERWORKING, {
						n(28700, {	-- Diane Cannings <Leatherworking Trainer>
							["coord"] = { 35.0, 28.6, NORTHREND_DALARAN },
							["groups"] = WRATH_LEATHERWORKING,
						}),
					}),
					prof(MINING, {
						n(28698, {	-- Jedidiah Handers <Mining Trainer>
							["coord"] = { 41.2, 27.0, NORTHREND_DALARAN },
							["groups"] = WRATH_MINING,
						}),
					}),
					prof(SKINNING, {
						n(28696, {	-- Derik Marks <Grand Master Skinning Trainer>
							["coord"] = { 35.2, 28.4, NORTHREND_DALARAN },
							["groups"] = WRATH_SKINNING,
						}),
					}),
					prof(TAILORING, {
						n(28699, {	-- Charles Worth <Tailoring Trainer>
							-- #if AFTER 6.2.2
							["description"] = "You can now learn these recipes even if the achievements have been completed on a different character. If your tailor isn't your main, rejoice!  Just speak to Charles Worth and tell him you're ready to learn the patterns.",
							-- #endif
							["coord"] = { 36.3, 33.4, NORTHREND_DALARAN },
							["requireSkill"] = TAILORING,
							["groups"] = appendGroups(WRATH_TAILORING, {
								r(56017, {	-- Deathchill Cloak
									["sourceAchievements"] = {
										41,		-- Loremaster of Northrend (A)
										-- #if BEFORE 5.0.4
										1360,	-- Loremaster of Northrend (H)
										-- #endif
									},
									["description"] = "In order to learn this recipe, you must have the Loremaster of Northrend achievement completed.",
									["requireSkill"] = TAILORING,
								}),
								r(56016, {	-- Wispcloak
									["sourceAchievement"] = 1288,	-- Northrend Dungeonmaster
									["description"] = "In order to learn this recipe, you must have the Northrend Dungeonmaster achievement completed.",
									["requireSkill"] = TAILORING,
								}),
							}),
						}),
					}),
				}),
				n(QUESTS, {
					applyclassicphase(WRATH_PHASE_THREE, q(14409, {	-- A Cautious Return
						["providers"] = {
							{ "n", 36506 },	-- Daros Moonlance <The Highborne>
							{ "i", 49335 },	-- Daros' Journal
						},
						["coord"] = { 36.4, 61.0, NORTHREND_DALARAN },
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },	-- This was a pre-introduction quest for Night Elf Mages in Cataclysm.
						["maps"] = { DARNASSUS },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 71,
					})),
					q(29608, {	-- Allies in Dalaran
						["qgs"] = {
							23736,	-- Pricilla Winterwind
							26879,	-- Tomas Riverwell
						},
						["coords"] = {
							{ 59.7, 63.2, HOWLING_FJORD },	-- Pricilla Winterwind
							{ 58.9, 68.2, BOREAN_TUNDRA },	-- Tomas Riverwell
						},
						["timeline"] = { ADDED_4_3_0 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,	-- Gold said this gets invalidated by something, but idk what.
					}),
					applyclassicphase(WRATH_PHASE_THREE, q(13986, {	-- An Injured Colleague
						["providers"] = {
							{ "n", 35471 },	-- Sorn Proudmane
							{ "i", 46775 },	-- Battered Tribal Shield
						},
						["coord"] = { 60.2, 26.6, NORTHREND_DALARAN },
						["timeline"] = { REMOVED_4_0_3 },
						["maps"] = { THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 71,
					})),
					applyclassicphase(WRATH_PHASE_FOUR, q(24580, {	-- Anub'Rekhan Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { NAXXRAMAS },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Anub'Rekhan slain
								["provider"] = { "n", 15956 },	-- Anub'Rekhan
							}),
						},
					})),
					q(13833, {	-- Blood Is Thicker
						["qg"] = 28742,	-- Marcia Chase
						["coord"] = { 53.0, 64.9, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { BOREAN_TUNDRA },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Bloodtooth Frenzy
								["providers"] = {
									{ "i", 45905 },	-- Bloodtooth Frenzy
									{ "o", 194479 },	-- Pool of Blood
								},
							}),
							i(46007),	-- Bag of Fishing Treasures
						},
					}),
					{	-- Cheese for Glowergold
						["allianceQuestData"] = q(13103, {	-- Cheese for Glowergold [A]
							["qg"] = 28705,	-- Katherine Lee
							["coord"] = { 40.6, 64.9, NORTHREND_DALARAN },
						}),
						["hordeQuestData"] = q(13115, {	-- Cheese for Glowergold [H]
							["qg"] = 29631,	-- Awilo Longomba
							["coord"] = { 70.0, 39.0, NORTHREND_DALARAN },
						}),
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Wine and Cheese Platter
								["provider"] = { "i", 43136 },	-- Wine and Cheese Platter
								["cost"] = {
									{ "i", 43139, 1 },	-- Empty Cheese Serving Platter
									{ "i", 43137, 1 },	-- Aged Dalaran Limburger
									{ "i", 43138, 6 },	-- Half Full Dalaran Wine Glass
								},
							}),
							-- #if ANYCLASSIC
							i(43137, {	-- Aged Dalaran Limburger
								["provider"] = { "o", 192825 },	-- Aged Dalaran Limburger
							}),
							i(43138, {	-- Half Full Dalaran Wine Glass
								["provider"] = { "o", 192824 },	-- Half Full Glass of Wine
							}),
							-- #endif
							i(258145, {	-- Eversong Party Platter (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(44113),	-- Small Spice Bag
							currency(81),	-- Epicurean's Award
						},
					},
					q(13272, {	-- Cloth Scavenging (Neutral)
						["qg"] = 28699,	-- Charles Worth
						["coord"] = { 36.1, 33.5, NORTHREND_DALARAN },
						["requireSkill"] = TAILORING,
						["lockCriteria"] = { 1,
							-- "questID", 13272,	-- Cloth Scavenging (N, Dalaran)
							"questID", 13268,	-- Cloth Scavenging (A, Howling Fjord)
							"questID", 13269,	-- Cloth Scavenging (H, Howling Fjord)
							"questID", 13265,	-- Cloth Scavenging (A, Borean Tundra)
							"questID", 13270,	-- Cloth Scavenging (H, Borean Tundra)
							"spellID", 59390,	-- Cloth Scavenging
							"spellID", 343634,	-- Shadowlands Cloth Scavenging
							"spellID", 392396,	-- Dragon Isles Cloth Scavenging
						},
						["groups"] = {
							spell(59390),	-- Cloth Scavenging	-- NOTE: there doesn't appear to be a recipe for this
						},
					}),
					{	-- Convention at the Legerdemain
						["allianceQuestData"] = q(13101, {	-- Convention at the Legerdemain [A]
							["qg"] = 28705,	-- Katherine Lee
							["coord"] = { 40.6, 64.9, NORTHREND_DALARAN },
						}),
						["hordeQuestData"] = q(13113, {	-- Convention at the Legerdemain [H]
							["qg"] = 29631,	-- Awilo Longomba
							["coord"] = { 70.0, 39.0, NORTHREND_DALARAN },
						}),
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/4 Northern Stew
								["provider"] = { "i", 34747 },	-- Northern Stew
							}),
							objective(2, {	-- 0/1 Jug of Wine
								["providers"] = {
									{ "i", 43128 },	-- Jug of Wine
									{ "o", 192823 },	-- Full Jug of Wine
								},
							}),
							i(44113),	-- Small Spice Bag
							currency(81),	-- Epicurean's Award
						},
					},
					q(13834, {	-- Dangerously Delicious
						["qg"] = 28742,	-- Marcia Chase
						["coord"] = { 53.0, 64.9, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { WINTERGRASP },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/10 Terrorfish
								["provider"] = { "i", 45904 },	-- Terrorfish
							}),
							i(46007),	-- Bag of Fishing Treasures
						},
					}),
					q(13836, {	-- Disarmed!
						["qg"] = 28742,	-- Marcia Chase
						["coord"] = { 53.0, 64.9, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Severed Arm
								["provider"] = { "i", 45323 },	-- Severed Arm
							}),
							i(46007),	-- Bag of Fishing Treasures
						},
					}),
					q(13041, {	-- Finish the Shipment
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["requireSkill"] = JEWELCRAFTING,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Chalcedony
								["provider"] = { "i", 36923 },	-- Chalcedony
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					applyclassicphase(WRATH_PHASE_FOUR, q(24585, {	-- Flame Leviathan Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { ULDUAR },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Flame Leviathan slain
								["provider"] = { "n", 33113 },	-- Flame Leviathan
							}),
						},
					})),
					q(29609, {	-- Friends in Dalaran
						["qgs"] = {
							27344,	-- Adeline Chambers
							25288,	-- Turida Coldwind
						},
						["coords"] = {
							{ 79.0, 29.7, HOWLING_FJORD },	-- Adeline Chambers
							{ 40.3, 51.3, BOREAN_TUNDRA },	-- Turida Coldwind
						},
						["timeline"] = { ADDED_4_3_0 },
						["races"] = HORDE_ONLY,
					}),
					applyclassicphase(WRATH_PHASE_FOUR, q(24587, {	-- Ignis the Furnace Master Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { ULDUAR },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Ignis the Furnace Master slain
								["provider"] = { "n", 33118 },	-- Ignis the Furnace Master
							}),
						},
					})),
					{	-- Infused Mushroom Meatloaf
						["allianceQuestData"] = q(13100, {	-- Infused Mushroom Meatloaf [A]
							["qg"] = 28705,	-- Katherine Lee
							["coord"] = { 40.6, 64.9, NORTHREND_DALARAN },
						}),
						["hordeQuestData"] = q(13112, {	-- Infused Mushroom Meatloaf [H]
							["qg"] = 29631,	-- Awilo Longomba
							["coord"] = { 70.0, 39.0, NORTHREND_DALARAN },
						}),
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { NORTHREND_THE_UNDERBELLY },
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Infused Mushroom Meatloaf
								["provider"] = { "i", 43099 },	-- Infused Mushroom Meatloaf
								["cost"] = {
									{ "i", 43101, 1 },	-- Meatloaf Pan
									{ "i", 43100, 4 },	-- Infused Mushroom
									{ "i", 43013, 2 },	-- Chilled Meat
								},
							}),
							i(44113),	-- Small Spice Bag
							currency(81),	-- Epicurean's Award
						},
					},
					applyclassicphase(WRATH_PHASE_FOUR, q(24582, {	-- Instructor Razuvious Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { NAXXRAMAS },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Instructor Razuvious slain
								["provider"] = { "n", 16061 },	-- Instructor Razuvious
							}),
						},
					})),
					q(13832, {	-- Jewel Of The Sewers
						["qg"] = 28742,	-- Marcia Chase
						["coord"] = { 53.0, 64.9, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { NORTHREND_THE_UNDERBELLY },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Corroded Jewelry
								["provider"] = { "i", 45903 },	-- Corroded Jewelry
							}),
							i(46007),	-- Bag of Fishing Treasures
						},
					}),
					q(12790, {	-- Learning to Leave and Return: the Magical Way
						["sourceQuests"] = {
							12791,	-- The Magical Kingdom of Dalaran (Horde only - Grizzly Hills, Dragonblight, Borean Tundra, Howling Fjord)
							12794,	-- The Magical Kingdom of Dalaran (Alliance only - Grizzly Hills, Dragonblight, Borean Tundra, Howling Fjord)
							12796,	-- The Magical Kingdom of Dalaran (Zul'Drak)
							-- #if AFTER 6.2.0.19953
							39210,	-- The Magical Kingdom of Dalaran (Adventure Guide)
							-- #endif
						},
						["qg"] = 29156,	-- Archmage Celindra
						["coord"] = { 56.3, 46.7, NORTHREND_DALARAN },
						["maps"] = { CRYSTALSONG_FOREST },
					}),
					applyclassicphase(WRATH_PHASE_FOUR, q(24589, {	-- Lord Jaraxxus Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { TRIAL_OF_THE_CRUSADER },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Lord Jaraxxus slain
								["provider"] = { "n", 34780 },	-- Lord Jaraxxus
							}),
						},
					})),
					applyclassicphase(WRATH_PHASE_FOUR, q(24590, {	-- Lord Marrowgar Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { ICECROWN_CITADEL },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Lord Marrowgar slain
								["provider"] = { "n", 36612 },	-- Lord Marrowgar
							}),
						},
					})),
					q(29073, {	-- Make Haste to Orgrimmar!
						-- #if BEFORE 6.2.0
						["description"] = "If you have your hearthstone set to Dalaran, this quest will be available to you.",
						-- #endif
						["providers"] = {
							{ "o", 208317 },	-- Warchief's Command Board
							{ "i",  68809 },	-- Veteran's Hearthstone
						},
						["coords"] = {
							{ 48.7, 39.6, NORTHREND_DALARAN },
							{ 59.2, 27.4, NORTHREND_DALARAN },
						},
						["timeline"] = { ADDED_4_0_6, REMOVED_6_2_0 },
						["races"] = HORDE_ONLY,
						["lvl"] = 80,
					}),
					q(29071, {	-- Make Haste to Stormwind!
						-- #if BEFORE 6.2.0
						["description"] = "If you have your hearthstone set to Dalaran, this quest will be available to you.",
						-- #endif
						["providers"] = {
							{ "o", 208316 },	-- Hero's Call Board
							{ "i",  68808 },	-- Hero's Hearthstone
						},
						["coords"] = {
							{ 25.9, 43.1, NORTHREND_DALARAN },
							{ 47.8, 41.2, NORTHREND_DALARAN },
							{ 37.8, 63.8, NORTHREND_DALARAN },
						},
						["timeline"] = { ADDED_4_0_6, REMOVED_6_2_0 },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 80,
					}),
					applyclassicphase(WRATH_PHASE_FOUR, q(24584, {	-- Malygos Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { THE_EYE_OF_ETERNITY },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Malygos slain
								["provider"] = { "n", 28859 },	-- Malygos
							}),
						},
					})),
					{	-- Mustard Dogs!
						["allianceQuestData"] = q(13107, {	-- Mustard Dogs! [A]
							["qg"] = 28705,	-- Katherine Lee
							["coord"] = { 40.6, 64.9, NORTHREND_DALARAN },
						}),
						["hordeQuestData"] = q(13116, {	-- Mustard Dogs! [H]
							["qg"] = 29631,	-- Awilo Longomba
							["coord"] = { 70.0, 39.0, NORTHREND_DALARAN },
						}),
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Mustard Dog Basket
								["provider"] = { "i", 43144 },	-- Mustard Dog Basket
								["cost"] = {
									{ "i", 43142, 1 },	-- Empty Picnic Basket
									{ "i", 34752, 4 },	-- Rhino Dogs
									{ "i", 43143, 4 },	-- Wild Mustard
								},
							}),
							i(44113),	-- Small Spice Bag
							currency(81),	-- Epicurean's Award
						},
					},
					q(13148, {	-- Necklace Repair
						["providers"] = {
							{ "i", 43297 },	-- Damaged Necklace
							{ "n", 28701 },	-- Timothy Jones
						},
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["requireSkill"] = JEWELCRAFTING,
						["repeatable"] = true,
						["lvl"] = lvlsquish(77, 77, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Beautiful Chalcedony Necklace
								["provider"] = { "i", 43298 },	-- Beautiful Chalcedony Necklace
								["cost"] = {
									{ "i", 43299, 1 },	-- Damaged Necklace
									{ "i", 36923, 1 },	-- Chalcedony
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					applyclassicphase(WRATH_PHASE_FOUR, q(24581, {	-- Noth the Plaguebringer Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { NAXXRAMAS },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Noth the Plaguebringer slain
								["provider"] = { "n", 15954 },	-- Noth the Plaguebringer
							}),
						},
					})),
					applyclassicphase(WRATH_PHASE_FOUR, q(24583, {	-- Patchwerk Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { NAXXRAMAS },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Patchwerk slain
								["provider"] = { "n", 16028 },	-- Patchwerk
							}),
						},
					})),
					q(13254, {	-- Proof of Demise: Anub'arak
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { AZJOL_NERUB, AZJOL_NERUB_FLOOR2, AZJOL_NERUB_FLOOR3 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 The Idle Crown of Anub'arak
								["provider"] = { "i", 43726 },	-- The Idle Crown of Anub'arak
							}),
						},
					}),
					q(13256, {	-- Proof of Demise: Cyanigosa
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { THE_VIOLET_HOLD_WRATH },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Head of Cyanigosa
								["provider"] = { "i", 43823 },	-- Head of Cyanigosa
							}),
						},
					}),
					q(13250, {	-- Proof of Demise: Gal'darah
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { GUNDRAK, GUNDRAK_FLOOR2 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Mojo Remnant of Akali
								["provider"] = { "i", 43693 },	-- Mojo Remnant of Akali
							}),
						},
					}),
					q(13255, {	-- Proof of Demise: Herald Volazj
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { AHNKAHET_THE_OLD_KINGDOM },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Faceless One's Withered Brain
								["provider"] = { "i", 43821 },	-- Faceless One's Withered Brain
							}),
						},
					}),
					q(13245, {	-- Proof of Demise: Ingvar the Plunderer
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { UTGARDE_KEEP, UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Axe of the Plunderer
								["provider"] = { "i", 43662 },	-- Axe of the Plunderer
							}),
						},
					}),
					q(13246, {	-- Proof of Demise: Keristrasza
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { THE_NEXUS },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Keristrasza's Broken Heart
								["provider"] = { "i", 43665 },	-- Keristrasza's Broken Heart
							}),
						},
					}),
					q(13248, {	-- Proof of Demise: King Ymiron
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { UTGARDE_PINNACLE, UTGARDE_PINNACLE_FLOOR2 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Locket of the Deceased Queen
								["provider"] = { "i", 43669 },	-- Locket of the Deceased Queen
							}),
						},
					}),
					q(13247, {	-- Proof of Demise: Ley-Guardian Eregos
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Ley Line Tuner
								["provider"] = { "i", 43668 },	-- Ley Line Tuner
							}),
						},
					}),
					q(13253, {	-- Proof of Demise: Loken
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { HALLS_OF_LIGHTNING, HALLS_OF_LIGHTNING_FLOOR2 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Celestial Ruby Ring
								["provider"] = { "i", 43724 },	-- Celestial Ruby Ring
							}),
						},
					}),
					q(13251, {	-- Proof of Demise: Mal'Ganis
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { THE_CULLING_OF_STRATHOLME, THE_CULLING_OF_STRATHOLME_FLOOR2 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Artifact from the Nathrezim Homeworld
								["provider"] = { "i", 43697 },	-- Artifact from the Nathrezim Homeworld
							}),
						},
					}),
					q(13252, {	-- Proof of Demise: Sjonnir The Ironshaper
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { HALLS_OF_STONE },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 The Curse of Flesh Disc
								["provider"] = { "i", 43699 },	-- The Curse of Flesh Disc
							}),
						},
					}),
					applyclassicphase(WRATH_PHASE_THREE, q(14199, {	-- Proof of Demise: The Black Knight
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { TRIAL_OF_THE_CHAMPION },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = [[function(t)
							if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_FOUR .. [[) then
								t.u = ]] .. REMOVED_FROM_GAME .. [[;
								t.rwp = nil;
							else
								t.u = ]] .. WRATH_PHASE_THREE .. [[;
								t.rwp = 30300;
							end
						end]],
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Fragment of the Black Knight's Soul
								["provider"] = { "i", 48418 },	-- Fragment of the Black Knight's Soul
							}),
						},
					})),
					q(13249, {	-- Proof of Demise: The Prophet Tharon'ja
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { DRAKTHARON_KEEP, DRAKTHARON_KEEP_FLOOR2 },
						["isDaily"] = true,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/1 Prophet's Enchanted Tiki
								["provider"] = { "i", 43670 },	-- Prophet's Enchanted Tiki
							}),
						},
					}),
					-- #if ANYCLASSIC
					applyclassicphase(WRATH_PHASE_FOUR, q(78752, {	-- Proof of Demise: Titan Rune Protocol Gamma
						-- #if BEFORE 4.0.1
						["description"] = "The quest item can also drop from any of the new Icecrown Heroic Dungeons.",
						-- #endif
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
						["maps"] = {
							AHNKAHET_THE_OLD_KINGDOM,
							AZJOL_NERUB, AZJOL_NERUB_FLOOR2, AZJOL_NERUB_FLOOR3,
							DRAKTHARON_KEEP, DRAKTHARON_KEEP_FLOOR2,
							GUNDRAK, GUNDRAK_FLOOR2,
							HALLS_OF_REFLECTION,
							HALLS_OF_LIGHTNING, HALLS_OF_LIGHTNING_FLOOR2,
							HALLS_OF_STONE,
							PIT_OF_SARON,
							THE_CULLING_OF_STRATHOLME, THE_CULLING_OF_STRATHOLME_FLOOR2,
							THE_FORGE_OF_SOULS,
							THE_NEXUS,
							THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5,
							THE_VIOLET_HOLD_WRATH,
							TRIAL_OF_THE_CHAMPION,
							UTGARDE_KEEP, UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3,
							UTGARDE_PINNACLE, UTGARDE_PINNACLE_FLOOR2,
						},
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Defiler's Medallion
								["provider"] = { "i", 211206 },	-- Defiler's Medallion
							}),
							-- #if BEFORE 4.0.1
							currency(341),	-- Emblem of Frost
							-- #endif
						},
					})),
					applyclassicphase(WRATH_PHASE_FOUR, q(78753, {	-- Proof of Demise: Threats to Azeroth
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.6, 66.8, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { ADDED_3_3_0, REMOVED_4_0_1 },
						["maps"] = {
							AHNKAHET_THE_OLD_KINGDOM,
							AZJOL_NERUB, AZJOL_NERUB_FLOOR2, AZJOL_NERUB_FLOOR3,
							DRAKTHARON_KEEP, DRAKTHARON_KEEP_FLOOR2,
							GUNDRAK, GUNDRAK_FLOOR2,
							HALLS_OF_REFLECTION,
							HALLS_OF_LIGHTNING, HALLS_OF_LIGHTNING_FLOOR2,
							HALLS_OF_STONE,
							PIT_OF_SARON,
							THE_CULLING_OF_STRATHOLME, THE_CULLING_OF_STRATHOLME_FLOOR2,
							THE_FORGE_OF_SOULS,
							THE_NEXUS,
							THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5,
							THE_VIOLET_HOLD_WRATH,
							TRIAL_OF_THE_CHAMPION,
							UTGARDE_KEEP, UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3,
							UTGARDE_PINNACLE, UTGARDE_PINNACLE_FLOOR2,
						},
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Mysterious Artifact
								["provider"] = { "i", 211207 },	-- Mysterious Artifact
							}),
							-- #if BEFORE 4.0.1
							currency(341),	-- Emblem of Frost
							-- #endif
						},
					})),
					-- #endif
					applyclassicphase(WRATH_PHASE_FOUR, q(24586, {	-- Razorscale Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { ULDUAR },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Razorscale slain
								["provider"] = { "n", 33186 },	-- Razorscale
							}),
						},
					})),
					applyclassicphase(WRATH_PHASE_FOUR, q(24579, {	-- Sartharion Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { THE_OBSIDIAN_SANCTUM },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Sartharion slain
								["provider"] = { "n", 28860 },	-- Sartharion
							}),
						},
					})),
					{	-- Sewer Stew
						["allianceQuestData"] = q(13102, {	-- Sewer Stew [A]
							["qg"] = 28705,	-- Katherine Lee
							["coord"] = { 40.6, 64.9, NORTHREND_DALARAN },
						}),
						["hordeQuestData"] = q(13114, {	-- Sewer Stew [H]
							["qg"] = 29631,	-- Awilo Longomba
							["coord"] = { 70.0, 39.0, NORTHREND_DALARAN },
						}),
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { NORTHREND_THE_UNDERBELLY, CRYSTALSONG_FOREST },
						["requireSkill"] = COOKING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Vegetable Stew
								["provider"] = { "i", 43149 },	-- Vegetable Stew
								["cost"] = {
									{ "i", 43147, 1 },	-- Stew Cookpot
									{ "i", 43148, 4 },	-- Crystalsong Carrot
									{ "i", 43013, 4 },	-- Chilled Meat
								},
							}),
							i(44113),	-- Small Spice Bag
							currency(81),	-- Epicurean's Award
						},
					},
					q(12958, {	-- Shipment: Blood Jade Amulet
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { ICECROWN, THE_STORM_PEAKS, HOWLING_FJORD },
						["requireSkill"] = JEWELCRAFTING,
						["isDaily"] = true,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Blood Jade Amulet
								["provider"] = { "i", 43269 },	-- Blood Jade Amulet
								["cost"] = {
									{ "i", 41989, 1 },	-- Vrykul Amulet
									{ "i", 36932, 1 },	-- Dark Jade
									{ "i", 36917, 1 },	-- Bloodstone
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					q(12962, {	-- Shipment: Bright Armor Relic
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { DRAGONBLIGHT, THE_STORM_PEAKS },
						["requireSkill"] = JEWELCRAFTING,
						["isDaily"] = true,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Bright Armor Relic
								["provider"] = { "i", 43275 },	-- Bright Armor Relic
								["cost"] = {
									{ "i", 42107, 1 },	-- Elemental Armor Scrap
									{ "i", 36929, 1 },	-- Huge Citrine
									{ "i", 36917, 1 },	-- Bloodstone
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					q(12959, {	-- Shipment: Glowing Ivory Figurine
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { DRAGONBLIGHT, SHOLAZAR_BASIN, THE_STORM_PEAKS },
						["requireSkill"] = JEWELCRAFTING,
						["isDaily"] = true,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Glowing Ivory Figurine
								["provider"] = { "i", 43270 },	-- Glowing Ivory Figurine
								["cost"] = {
									{ "i", 42104, 1 },	-- Northern Ivory
									{ "i", 36923, 1 },	-- Chalcedony
									{ "i", 36926, 1 },	-- Shadow Crystal
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					q(12961, {	-- Shipment: Intricate Bone Figurine
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { THE_STORM_PEAKS, SHOLAZAR_BASIN, HOWLING_FJORD },
						["requireSkill"] = JEWELCRAFTING,
						["isDaily"] = true,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Intricate Bone Figurine
								["provider"] = { "i", 43274 },	-- Intricate Bone Figurine
								["cost"] = {
									{ "i", 42106, 1 },	-- Proto Dragon Bone
									{ "i", 36920, 1 },	-- Sun Crystal
									{ "i", 36932, 1 },	-- Dark Jade
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					q(12963, {	-- Shipment: Shifting Sun Curio
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { ICECROWN, CRYSTALSONG_FOREST },
						["requireSkill"] = JEWELCRAFTING,
						["isDaily"] = true,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Shifting Sun Curio
								["provider"] = { "i", 43276 },	-- Shifting Sun Curio
								["cost"] = {
									{ "i", 42108, 1 },	-- Scourge Curio
									{ "i", 36920, 1 },	-- Sun Crystal
									{ "i", 36926, 1 },	-- Shadow Crystal
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					q(12960, {	-- Shipment: Wicked Sun Brooch
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { THE_STORM_PEAKS, HOWLING_FJORD, GRIZZLY_HILLS },
						["requireSkill"] = JEWELCRAFTING,
						["isDaily"] = true,
						["lvl"] = lvlsquish(65, 65, 10),
						["groups"] = {
							objective(1, {	-- 0/1 Wicked Sun Brooch
								["provider"] = { "i", 43272 },	-- Wicked Sun Brooch
								["cost"] = {
									{ "i", 42105, 1 },	-- Wicked Sun Brooch
									{ "i", 36929, 1 },	-- Huge Citrine
									{ "i", 36920, 1 },	-- Sun Crystal
								},
							}),
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					}),
					q(39209, {	-- Sholazar Basin -- Adventure Guide
						["timeline"] = { ADDED_6_2_0, REMOVED_7_0_3 },	-- TODO: Find out the patch this was removed, if at all.
					}),
					q(39212, {	-- Sholazar Basin -- Adventure Guide
						["timeline"] = { ADDED_6_2_0, REMOVED_7_0_3 },	-- TODO: Find out the patch this was removed, if at all.
					}),
					q(13830, {	-- The Ghostfish
						["qg"] = 28742,	-- Marcia Chase
						["coord"] = { 53.0, 64.9, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["maps"] = { SHOLAZAR_BASIN },
						["requireSkill"] = FISHING,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Discover the Ghostfish mystery
								["provider"] = { "i", 45902 },	-- Phantom Ghostfish
							}),
							i(46007),	-- Bag of Fishing Treasures
						},
					}),
					q(12794, {	-- The Magical Kingdom of Dalaran (A)
						["qgs"] = {
							23729,	-- Baron Ulrik von Stromhearth
							26673,	-- Image of Archmage Modera
							29158,	-- Magister Dath'omere
							29161,	-- Magistrix Haelenai
						},
						["coords"] = {
							{ 58.6, 68.2, BOREAN_TUNDRA },
							{ 29.0, 55.4, DRAGONBLIGHT },
							{ 58.8, 62.8, HOWLING_FJORD },
							{ 32.0, 59.8, GRIZZLY_HILLS },
						},
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12791, {	-- The Magical Kingdom of Dalaran (H)
						["qgs"] = {
							26471,	-- Image of Archmage Aethas Sunreaver
							29160,	-- Magistrix Phaelista
							29162,	-- Magister Tyr'ganal
							29159,	-- Magister Varenthas
						},
						["coords"] = {
							{ 20.6, 64.2, GRIZZLY_HILLS },
							{ 79.4, 29.4, HOWLING_FJORD },
							{ 38.0, 46.2, DRAGONBLIGHT },	-- Image of Archmage Aethas Sunreaver
							{ 76.8, 63.2, DRAGONBLIGHT },	-- Magister Tyr'ganal
						},
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12796, {	-- The Magical Kingdom of Dalaran (Zul'Drak)
						["qg"] = 29169,	-- Magister Teronus III
						["coord"] = { 40.6, 66.9, ZULDRAK },
						["isBreadcrumb"] = true,
					}),
					q(39210, {	-- The Magical Kingdom of Dalaran (Adventure Guide)
						["description"] = "Can be acquired through the Adventure Guide.",
						["timeline"] = { ADDED_6_2_0 },
						["isBreadcrumb"] = true,
					}),
					q(13240, {	-- Timear Foresees Centrifuge Constructs in your Future!
						["qg"] = 31439,	-- Archmage Timear
						["coord"] = { 63.8, 55.0, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { THE_OCULUS, THE_OCULUS_FLOOR2, THE_OCULUS_FLOOR3, THE_OCULUS_FLOOR4, THE_OCULUS_FLOOR5 },
						["isDaily"] = true,
						["lvl"] = 78,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/10 Centrifuge Construct slain
								["provider"] = { "n", 27641 },	-- Centrifuge Construct
							}),
							i(44711, {	-- Argent Crusade Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44713, {	-- Ebon Blade Commendation Badge [BOP]
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(43950, {	-- Kirin Tor Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(49702, {	-- Sons of Hodir Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44710, {	-- Wyrmrest Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
						},
					}),
					q(13243, {	-- Timear Foresees Infinite Agents in your Future!
						["qg"] = 31439,	-- Archmage Timear
						["coord"] = { 63.8, 55.0, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { THE_CULLING_OF_STRATHOLME, THE_CULLING_OF_STRATHOLME_FLOOR2 },
						["isDaily"] = true,
						["lvl"] = 78,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/4 Infinite Agent slain
								["provider"] = { "n", 27744 },	-- Infinite Agent
							}),
							i(44711, {	-- Argent Crusade Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44713, {	-- Ebon Blade Commendation Badge [BOP]
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(43950, {	-- Kirin Tor Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(49702, {	-- Sons of Hodir Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44710, {	-- Wyrmrest Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
						},
					}),
					q(13244, {	-- Timear Foresees Titanium Vanguards in your Future!
						["qg"] = 31439,	-- Archmage Timear
						["coord"] = { 63.8, 55.0, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { HALLS_OF_LIGHTNING, HALLS_OF_LIGHTNING_FLOOR2 },
						["isDaily"] = true,
						["lvl"] = 78,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/7 Titanium Vanguard slain
								["provider"] = { "n", 28838 },	-- Titanium Vanguard
							}),
							i(44711, {	-- Argent Crusade Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44713, {	-- Ebon Blade Commendation Badge [BOP]
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(43950, {	-- Kirin Tor Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(49702, {	-- Sons of Hodir Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44710, {	-- Wyrmrest Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
						},
					}),
					q(13241, {	-- Timear Foresees Ymirjar Berserkers in your Future!
						["qg"] = 31439,	-- Archmage Timear
						["coord"] = { 63.8, 55.0, NORTHREND_DALARAN },
						["maxReputation"] = { FACTION_KIRIN_TOR, EXALTED },	-- Kirin Tor, Exalted.
						["timeline"] = { REMOVED_4_0_1 },
						["maps"] = { UTGARDE_PINNACLE, UTGARDE_PINNACLE_FLOOR2 },
						["isDaily"] = true,
						["lvl"] = 78,
						-- #if ANYCLASSIC
						["OnUpdate"] = OnUpdateForTimearDailies,
						-- #endif
						["groups"] = {
							objective(1, {	-- 0/7 Ymirjar Berserker slain
								["provider"] = { "n", 26696 },	-- Ymirjar Berserker
							}),
							i(44711, {	-- Argent Crusade Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44713, {	-- Ebon Blade Commendation Badge [BOP]
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(43950, {	-- Kirin Tor Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(49702, {	-- Sons of Hodir Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
							i(44710, {	-- Wyrmrest Commendation Badge
								["timeline"] = { DELETED_6_0_2 },
							}),
						},
					}),
					applyclassicphase(WRATH_PHASE_THREE, q(14103, {	-- Titanium Powder
						["qg"] = 28701,	-- Timothy Jones
						["coord"] = { 40.7, 35.4, NORTHREND_DALARAN },
						["cost"] = { { "i", 46849, 10 } },	-- Titanium Powder
						["requireSkill"] = JEWELCRAFTING,
						["repeatable"] = true,
						["groups"] = {
							currency(61),	-- Dalaran Jewelcrafter's Token
						},
					})),
					q(24431, {	-- Waterlogged Recipe
						["provider"] = { "i", 49667 },	-- Waterlogged Recipe
						["requireSkill"] = COOKING,
						["repeatable"] = true,
						["groups"] = {
							currency(81),	-- Epicurean's Award 5x
						},
					}),
					q(14160, {	-- Writ of Merit
						["provider"] = { "i", 47246 },	-- Writ of Merit
						["timeline"] = { ADDED_3_2_0, REMOVED_3_2_2 },	-- This was a one-time ever quest sent out to JCs during 3.2.0 when they changed Dragon's Eyes.
						["requireSkill"] = JEWELCRAFTING,
					}),
					applyclassicphase(WRATH_PHASE_FOUR, q(24588, {	-- XT-002 Deconstructor Must Die!
						["qg"] = 20735,	-- Archmage Lan'dalock
						["coord"] = { 57.3, 66.7, NORTHREND_DALARAN },
						["maps"] = { ULDUAR },
						["isWeekly"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 XT-002 Deconstructor slain
								["provider"] = { "n", 33293 },	-- XT-002 Deconstructor
							}),
						},
					})),
				}),
				n(REWARDS, {
					container(46007, {	-- Bag of Fishing Treasures
						["provider"] = { "n", 28742 },	-- Marcia Chase
						["description"] = "Fishing Daily Quest Reward",
						["requireSkill"] = FISHING,
						["groups"] = {
							applyclassicphase(WRATH_PHASE_TWO, i(45862)),	-- Bold Stormjewel
							applyclassicphase(WRATH_PHASE_TWO, i(45882)),	-- Brilliant Stormjewel
							applyclassicphase(WRATH_PHASE_TWO, i(45879)),	-- Delicate Stormjewel
							applyclassicphase(WRATH_PHASE_TWO, i(45987)),	-- Rigid Stormjewel
							applyclassicphase(WRATH_PHASE_TWO, i(45883)),	-- Runed Stormjewel
							applyclassicphase(WRATH_PHASE_TWO, i(45880)),	-- Solid Stormjewel
							applyclassicphase(WRATH_PHASE_TWO, i(45881)),	-- Sparkling Stormjewel
							i(45998),	-- Battered Jungle Hat
							i(45991, {	-- Bone Fishing Pole
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(6522),	-- Deviate Fish
							i(45861),	-- Diamond-tipped Cane
							i(46006),	-- Glow Worm
							i(19971),	-- High Test Eternium Fishing Line
							i(45992, {	-- Jeweled Fishing Pole
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(36783),	-- Northsea Pearl
							i(40195),	-- Pygmy Oil
							i(46004, {	-- Sealed Vial of Poison
								-- #if ANYCLASSIC
								["description"] = "Provides a nice source of XP. You can buy and sell this on the AH!",
								-- #endif
							}),
							i(36784),	-- Siren's Tear
							i(44983),	-- Strand Crawler (PET!)
							i(45984),	-- Unusual Compass (TOY!)
							i(49667),	-- Waterlogged Recipe
							i(33820),	-- Weather-Beaten Fishing Hat
							i(45986, {	-- Tiny Titanium Lockbox
								i(45995),	-- Forgotten Necklace
								i(36444),	-- Ice Encrusted Amulet
								i(36443),	-- Platinum Medallion
								i(36442),	-- Silken Cord Amulet
								i(36428),	-- Bouquet Ring
								i(45994),	-- Lost Ring
								i(36430),	-- Puzzle Ring
								i(36429),	-- Spur Ring
								i(45859),	-- The 5 Ring
							}),
						},
					}),
					container(44113, {	-- Small Spice Bag
						["description"] = "Cooking Daily Quest Reward",
						["requireSkill"] = COOKING,
						["groups"] = {
							currency(81),	-- Epicurean's Award
							i(34834),	-- Recipe: Captain Rumsey's Lager (RECIPE!)
							i(33925),	-- Recipe: Delicious Chocolate Cake (RECIPE!)
							i(33871),	-- Recipe: Stormchops (RECIPE!)
							i(43007, {	-- Northern Spices
								["description"] = "Only available from given Cooking suppliers."
							}),
							i(44228),	-- Baby Spice
							i(44114),	-- Old Spices
						},
					}),
				}),
				n(TREASURES, {
					o(192709, {	-- The Schools of Arcane Magic - Abjuration
						["description"] = "The floor of the Dalaran Visitors Center next to a small book covered table.",
						["coord"] = { 52.2, 54.8, NORTHREND_DALARAN },
					}),
					o(192710, {	-- The Schools of Arcane Magic - Conjuration
						["description"] = "First floor of the Violet Citadel on the bottom shelf of the left bookcase on the north side of the room.",
						["coord"] = { 31.0, 46.7, NORTHREND_DALARAN },
					}),
					o(192711, {	-- The Schools of Arcane Magic - Divination
						["description"] = "Between the two bookcases on the south side of the second floor of the Violet Citadel.",
						["coord"] = { 26.5, 52.2, NORTHREND_DALARAN },
					}),
					o(192713, {	-- The Schools of Arcane Magic - Enchantment
						["description"] = "On a box on the upper balcony of The Threads of Fate.",
						["coord"] = { 43.6, 46.7, NORTHREND_DALARAN },
					}),
					o(192865, {	-- The Schools of Arcane Magic - Illusion
						["description"] = "On a box in the corner of the Violet Hold near Archmage Timear.",
						["coord"] = { 64.4, 52.4, NORTHREND_DALARAN },
					}),
					o(192708, {	-- The Schools of Arcane Magic - Introduction
						["description"] = "First floor of the teleportation room of the Violet Gate near a bookcase.",
						["coord"] = { 56.7, 45.5, NORTHREND_DALARAN },
					}),
					o(192866, {	-- The Schools of Arcane Magic - Necromancy
						["description"] = "Second floor of the Legerdemain Lounge in a bookcase in the northwest bedroom.",
						["coord"] = { 46.8, 39.1, NORTHREND_DALARAN },
					}),
					o(192867, {	-- The Schools of Arcane Magic - Transmutation
						["description"] = "First floor of the Legerdemain Lounge in the bookcase nearest the stove.",
						["coord"] = { 46.8, 40.0, NORTHREND_DALARAN },
					}),
				}),
				n(VENDORS, {
					-- #if BEFORE 8.0.1
					n(28994, {	-- Abra Cadabra [WRATH] / Wanda Chanter <Wands> [BFA+]
						["coord"] = { 49.1, 73.2, NORTHREND_DALARAN },
						["groups"] = {
							emot(25, i(47658)),	-- Brimstone Igniter
							i(40019),	-- Wand of Amber
							i(40021),	-- Wand of Crystal
							i(40020),	-- Wand of Jade
							i(40018),	-- Wand of Onyx
						},
					}),
					-- #endif
					n(28989, {	-- Aemara <Bowyer>
						["coord"] = { 60.6, 52.2, NORTHREND_DALARAN },
						["groups"] = {
							i(44643),	-- Dalaran Bow
							i(44637),	-- Dalaran Crossbow
						},
					}),
					n(29548, {	-- Aimee <Pie, Pastry & Cakes>
						["coord"] = { 36.4, 33.8, NORTHREND_DALARAN },
						["groups"] = {
							i(42439),	-- Big Berry Pie
							i(42428),	-- Carrot Cupcake
							i(42436),	-- Chocolate Celebration Cake
							i(42431),	-- Dalaran Brownie
							i(42430),	-- Dalaran Doughnut
							i(74921, {["timeline"] = { ADDED_4_3_0 }}), -- Darkmoon Doughnut
							i(42438),	-- Lovely Cake
							i(42429),	-- Red Velvet Cupcake
						},
					}),
					n(29512, {	-- Ainderu Summerleaf <Mooncloth Tailoring Specialist>
						["coord"] = { 36.4, 33.8, NORTHREND_DALARAN },
						["groups"] = {
							i(21895),	-- Pattern: Primal Mooncloth (RECIPE!)
							i(21919),	-- Pattern: Primal Mooncloth Bag (RECIPE!)
							i(21916),	-- Pattern: Primal Mooncloth Belt (RECIPE!)
							i(21917),	-- Pattern: Primal Mooncloth Robe (RECIPE!)
							i(21918),	-- Pattern: Primal Mooncloth Shoulders (RECIPE!)
						},
					}),
					n(32631, {	-- Alfred Copperworth <Butler>
						["coord"] = { 26.2, 39.2, NORTHREND_DALARAN },
						["description"] = "Walks around the Purple Parlour.",
						["groups"] = {
							i(33451),	-- Fillet of Icefin
							i(33452),	-- Honey-Spiced Lichen
							i(33445),	-- Honeymint Tea
							i(35953),	-- Mead-Basted Caribou
							i(35951),	-- Poached Emperor Salmon
							i(33444),	-- Pungent Seal Whey
							i(33454),	-- Salted Venison
							i(35947),	-- Sparkling Frostcap
							i(35954),	-- Sweetened Goat's Milk
						},
					}),
					n(29628, {	-- Angelique Butler <First Aid Supplies>
						["coord"] = { 37.0, 37.4, NORTHREND_DALARAN },
						["groups"] = {
							i(44694),	-- Antiseptic-Soaked Dressing
							i(44692),	-- Dalaran Nurse's Gown
							i(44693),	-- Wound Dressing
						},
					}),
					n(28990, {	-- Anthony Durain <Shield Merchant>
						["coord"] = { 46.8, 27.6, NORTHREND_DALARAN },
						["groups"] = {
							emoh(35, i(40701)),	-- Crygil's Discarded Plate Panel
							emoh(35, i(40700)),	-- Protective Barricade of the Light
						},
					}),
					n(29547, {	-- Applebough <Fruit Vendor>
						["coord"] = { 43.1, 57.0, NORTHREND_DALARAN },
						["groups"] = {
							i(43088),	-- Dalaran Apple Bowl
							i(43086),	-- Fresh Apple Juice
							i(35948),	-- Savoury Snowplum
							i(35949),	-- Tundra Berries
						},
					}),
					n(31579, {	-- Arcanist Adurin <Legacy Justice Quartermaster> / <Emblem of Valor Quartermaster> [WRATH]
						["coord"] = { 37.2, 54.5, NORTHREND_DALARAN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EMBLEM_OF_VALOR_QUARTERMASTER_GROUPS,
					}),
					applyclassicphase(WRATH_PHASE_TWO, n(33964, {	-- Arcanist Firael <Legacy Justice Quartermaster> / <Emblem of Conquest Quartermaster> [WRATH]
						["coord"] = { 38.7, 55.1, NORTHREND_DALARAN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EMBLEM_OF_CONQUEST_QUARTERMASTER_GROUPS,
					})),
					n(31580, {	-- Arcanist Ivrenne <Legacy Justice Quartermaster> / <Emblem of Heroism Quartermaster> [WRATH]
						["coord"] = { 36.9, 55.0, NORTHREND_DALARAN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EMBLEM_OF_HEROISM_QUARTERMASTER_GROUPS,
					}),
					applyclassicphase(WRATH_PHASE_THREE, n(35494, {	-- Arcanist Miluria <Legacy Justice Quartermaster> / <Emblem of Triumph Quartermaster> [WRATH]
						["coord"] = { 37.9, 54.3, NORTHREND_DALARAN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EMBLEM_OF_TRIUMPH_QUARTERMASTER_A_GROUPS,
					})),
					applyclassicphase(WRATH_PHASE_FOUR, n(37942, {	-- Arcanist Uovril <Legacy Justice Quartermaster> / <Emblem of Frost Quartermaster> [WRATH]
						["coord"] = { 38.3, 54.4, NORTHREND_DALARAN },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EMBLEM_OF_FROST_QUARTERMASTER_GROUPS,
					})),
					n(32287, {	-- Archmage Alvareaux <Kirin Tor Quartermaster>
						["coord"] = { 25.2, 47.8, NORTHREND_DALARAN },
						["groups"] = bubbleDownClassicRep(FACTION_KIRIN_TOR, {
							{		-- Neutral
							}, {	-- Friendly
								i(43157),	-- Tabard of the Kirin Tor
							}, {	-- Honored
								i(44141, {	-- Arcanum of the Flame's Soul
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44170),	-- Helm of the Majestic Stag
								i(44166),	-- Lightblade Rivener
								i(44167),	-- Shroud of Dedicated Research
								i(44171),	-- Spaulders of Grounded Lightning
							}, {	-- Revered
								i(50368, {	-- Arcanum of Burning Mysteries
									-- #if BEFORE MOP
									["description"] = "This version is only visible on the vendor when you aren't at the required reputation to purchase it yet on your current character.",
									-- #endif
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44159, {	-- Arcanum of Burning Mysteries
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44173),	-- Flameheart Spell Scalpel
								i(44176),	-- Girdle of the Warrior Magi
								i(44179),	-- Mind-Expanding Leggings
								i(44174),	-- Stave of Shrouded Mysteries
							}, {	-- Exalted
								i(44182),	-- Boots of Twinkling Stars
								i(41718),	-- Design: Brilliant Scarlet Ruby [CATA+] / Design: Runed Scarlet Ruby [WRATH] (RECIPE!)
								i(44183),	-- Fireproven Gauntlets
								i(44181),	-- Ghostflicker Waistband
								i(42188),	-- Pattern: Sapphire Spellthread (RECIPE!)
								i(44180),	-- Robes of Crackling Flame
							},
						}),
					}),
					n(29499, {	-- Bartram Haller <Dagger & Fist Weapon Merchant>
						["coord"] = { 53.5, 62.4, NORTHREND_DALARAN },
						["groups"] = {
							i(44652),	-- Dalaran Dagger
							i(44644, {	-- Dalaran Dart
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(44641),	-- Dalaran Knuckles
							emoh(50, i(40704)),	-- Pride
							emoh(50, i(40702)),	-- Rolfsen's Ripper
							emoh(15, i(40716, {	-- Lillehoff's Winged Blades
								["timeline"] = { REMOVED_5_0_4 },
							})),
						},
					}),
					n(32515, {	-- Braeg Stoutbeard
						["coord"] = { 37.33, 28.69, NORTHREND_DALARAN },
						["groups"] = COMMON_WRATH_LEATHERWORKING_RECIPES,
					}),
					n(29523, {	-- Bragund Brightlink <Mail Armor Merchant>
						["coord"] = { 51.2, 72.8, NORTHREND_DALARAN },
						["groups"] = {
							cl(HUNTER, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.HUNTER,
								TIER_EIGHT_GROUPS.HUNTER,
								TIER_SEVEN_HEROIC_GROUPS.HUNTER,
								TIER_SEVEN_GROUPS.HUNTER, {})),
							cl(SHAMAN, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.SHAMAN,
								TIER_EIGHT_GROUPS.SHAMAN,
								TIER_SEVEN_HEROIC_GROUPS.SHAMAN,
								TIER_SEVEN_GROUPS.SHAMAN, {})),
							emov(60, i(40736)),	-- Armguard of the Tower Archer
							emof(60, i(50993)),	-- Band of the Night Raven
							emoh(40, i(40693)),	-- Beadwork Belt of Shamanic Vision
							emoc(28, i(45827)),	-- Belt of the Ardent Marksman
							emof(60, i(50980)),	-- Blizzard Keeper's Mitts
							emoc(28, i(45837)),	-- Gloves of Augury
							emoc(28, i(45836)),	-- Gloves of Unerring Aim
							emoc(39, i(45844)),	-- Leggings of the Tireless Sentry
							emoc(39, i(45845)),	-- Leggings of the Weary Mystic
							emof(60, i(50979)),	-- Logsplitters
							emof(95, i(50970)),	-- Longstrider's Vest
							emof(95, i(50971)),	-- Mail of the Geyser
							emov(40, i(40746)),	-- Pack-Ice Striders
							emov(60, i(40737)),	-- Pigmented Clan Bindings
							emov(40, i(40747)),	-- Treads of Coastal Wandering
							emoh(40, i(40692)),	-- Vereesa's Silver Chain Belt
							emof(60, i(50992)),	-- Waistband of Despair
							emoc(28, i(45828)),	-- Windchill Binding
						},
					}),
					n(32509, bubbleDown({ ["timeline"] = { REMOVED_6_1_0 } }, {	-- Brammold Deepmine <Antiques & Heirlooms>
						["coord"] = { 51.0, 53.6, NORTHREND_DALARAN },
						["groups"] = {
							i(93876, {			-- Awakened Pauldrons of Elements
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93885, {			-- Awakened Vest of Elements
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(40, i(42944)),	-- Balanced Heartseeker
							emoh(65, i(42943)),	-- Bloodied Arcanite Reaper
							i(69893, {			-- Bloodsoaked Skullforge Reaver
								["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
							}),
							i(93859, {			-- Bloodstained Dreadmist Mantle
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93860, {			-- Bloodstained Dreadmist Robe
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93892, {			-- Brushed Breastplate of Might
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93893, {			-- Brushed Pauldrons of Might
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(69889, {			-- Burnished Breastplate of Might
								["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
							}),
							i(69890, {			-- Burnished Pauldrons of Might
								["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
							}),
							i(79131, {			-- Burnished Warden Staff
								["timeline"] = { ADDED_5_0_4, REMOVED_6_1_0 },
							}),
							emoh(40, i(42950)),	-- Champion Herod's Shoulder
							emoh(40, i(48677)),	-- Champion's Deathdealer Breastplate
							emoh(65, i(42946)),	-- Charmed Ancient Bone Bow
							i(93847, {			-- Crushing Mass of McGowan
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(50, i(42948)),	-- Devout Aurastone Hammer
							emoh(65, i(42947)),	-- Dignified Headmaster's Charge
							emoh(50, i(42992)),	-- Discerning Eye of the Beast
							i(93902, {			-- Flamescarred Draconian Deflector
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93896, {			-- Forceful Hand of Justice
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93888, {			-- Furious Deathdealer Breastplate
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93891, {			-- Gleaming Breastplate of Valor
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93890, {			-- Gleaming Spaulders of Valor
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93845, {			-- Gore-Steeped Skullforge Reaver
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93887, {			-- Grand Champion Herod's Shoulder
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93843, {			-- Hardened Arcanite Reaper
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93865, {			-- Majestic Ironfeather Breastplate
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93864, {			-- Majestic Ironfeather Shoulders
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93904, {			-- Musty Tome of the Lost
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(40, i(42951)),	-- Mystical Pauldrons of Elements
							emoh(40, i(48683)),	-- Mystical Vest of Elements
							i(93856, {			-- Noble Dal'Rend's Sacred Charge
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93897, {			-- Piercing Eye of the Beast
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93853, {			-- Pious Aurastone Hammer
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(40, i(48685)),	-- Polished Breastplate of Valor
							emoh(40, i(42949)),	-- Polished Spaulders of Valor
							emoh(40, i(48687)),	-- Preened Ironfeather Breastplate
							emoh(40, i(42984)),	-- Preened Ironfeather Shoulders
							i(93846, {			-- Re-engineered Lava Dredger
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93844, {			-- Refinished Warden Staff
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(65, i(48718)),	-- Repurposed Lava Dredger
							i(93854, {			-- Scholarly Headmaster's Charge
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(40, i(42952)),	-- Stained Shadowcraft Spaulders
							emoh(40, i(48689)),	-- Stained Shadowcraft Tunic
							i(93862, {			-- Supple Shadowcraft Spaulders
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93863, {			-- Supple Shadowcraft Tunic
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							emoh(50, i(42991)),	-- Swift Hand of Justice
							emoh(40, i(42985)),	-- Tattered Dreadmist Mantle
							emoh(40, i(48691)),	-- Tattered Dreadmist Robe
							emoh(40, i(42945)),	-- Venerable Dal'Rend's Sacred Charge
							emoh(40, i(48716)),	-- Venerable Mass of McGowan
							i(93857, {			-- Vengeful Heartseeker
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93855, {			-- War-Torn Ancient Bone Bow
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
							i(93903, {			-- Weathered Observer's Shield
								["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
							}),
						},
					})),
					n(28951, {	-- Breanni <Pet Supplies>
						["coord"] = { 58.7, 39.2, NORTHREND_DALARAN },
						["groups"] = {
							i(44822),	-- Albino Snake (PET!)
							i(46398, {	-- Calico Cat (PET!)
								["timeline"] = { ADDED_3_3_0 },
							}),
							i(37431),	-- Fetch Ball
							i(129826, {	-- Nursery Spider (PET!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(48120, {	-- Obsidian Hatchling (PET!)
								["timeline"] = { ADDED_3_2_0 },
							}),
							i(43352),	-- Pet Grooming Kit
							i(44820),	-- Red Ribbon Pet Leash (TOY!)
							i(37460),	-- Rope Pet Leash (TOY!)
						},
					}),
					n(28722, {	-- Bryan Landers <Engineering Supplies>
						["coord"] = { 39.0, 26.0, NORTHREND_DALARAN },
						["groups"] = {
							i(136782, {	-- Fireworks Instruction Manual (CI!)
								["timeline"] = { ADDED_7_0_3_LAUNCH },
							}),
							i(23817, {	-- Schematic: Titanium Toolbox (RECIPE!)
								["isLimited"] = true,
								["timeline"] = { ADDED_3_0_8 },
							}),
						},
					}),
					n(29702, {	-- Chameli Banaphash <Haberdasher>
						["coord"] = { 44.8, 46.6, NORTHREND_DALARAN },
						["groups"] = {
							i(44648),	-- Purple Turban
							i(44647),	-- Violet Hat
						},
					}),
					n(32337, {	-- Christi Stockton <Wine Vendor>
						["coord"] = { 53.8, 32.6, NORTHREND_DALARAN },
						["groups"] = {
							i(44625),	-- Bottle of Aged Dalaran Red
							i(44623),	-- Bottle of Dalaran Red
							i(44621),	-- Bottle of Dalaran White
							i(44626),	-- Cask of Aged Dalaran Red
							i(44632),	-- Cask of Dalaran Red
							i(44622),	-- Cask of Dalaran White
							i(44679),	-- Red Wine Glass
							i(44678),	-- Wine Glass
						},
					}),
					n(29716, {	-- Clockwork Assistant <Jepetto's Companion>
						["coord"] = { 44.8, 46.3, NORTHREND_DALARAN },
						["groups"] = {
							i(54436, {	-- Blue Clockwork Rocket Bot (PET!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(95621, {	-- Warbot (PET!)
								["timeline"] = { ADDED_5_2_0 },
							}),
							i(54343, {	-- Blue Crashin' Thrashin' Racer Controller (TOY!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(192099, {	-- Earpieces of Tranquil Focus (TOY!)
								["timeline"] = { ADDED_9_2_5 },
							}),
							i(104324, {	-- Foot Ball (TOY!)
								["timeline"] = { ADDED_5_4_0 },
							}),
							i(137663, {	-- Soft Foam Sword (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(104323, {	-- The Swineskin (TOY!)
								["timeline"] = { ADDED_5_4_0 },
							}),
							i(54438, {	-- Tiny Blue Ragdoll (TOY!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(54437, {	-- Tiny Green Ragdoll (TOY!)
								["timeline"] = { ADDED_3_3_3 },
							}),
							i(44606, {	-- Toy Train Set Toy (TOY!)
								["timeline"] = { ADDED_3_0_2 },
							}),
							i(45057, {	-- Wind-Up Train Wrecker Toy (TOY!)
								["timeline"] = { ADDED_3_1_0 },
							}),
						},
					}),
					n(29476, {	-- Dagna Flintlock <Gunsmith>
						["coord"] = { 60.0, 52.6, NORTHREND_DALARAN },
						["groups"] = {
							i(44635),	-- Dalaran Rifle
						},
					}),
					n(29528, {	-- Debbi Moore <Trinkets & Charms>
						["coord"] = { 49.7, 55.5, NORTHREND_DALARAN },
						["groups"] = {
							emof(60, i(50356)),	-- Corroded Skeleton Key
							emot(50, i(47735)),	-- Glyph of Indomitability
							emof(60, i(50355)),	-- Herkuml War Token
							emof(60, i(50357)),	-- Maghia's Misguided Quill
							emot(50, i(47734)),	-- Mark of Supremacy
							emoh(40, i(40684)),	-- Mirror of Truth
							emof(60, i(50358)),	-- Purified Lunar Dust
							emot(50, i(48722)),	-- Shard of the Crystal Heart
							emoh(40, i(40682)),	-- Sundial of the Exiled
							emot(50, i(48724)),	-- Talisman of Resurgence
							emoh(40, i(40685)),	-- The Egg of Mortal Essence
							emoh(40, i(40683)),	-- Valor Medal of the First War
						},
					}),
					n(28726, {	-- Dominique Stefano <Tailoring Supplies>
						["coord"] = { 35.6, 34.4, NORTHREND_DALARAN },
						["groups"] = ETERNIUM_THREAD,
					}),
					n(34252, {	-- Dubin Clay <Plate Armor Merchant>
						["coord"] = { 46.2, 27.2, NORTHREND_DALARAN },
						["groups"] = {
							-- NOTE: This vendor doesn't sell the horde T9.
							cl(DEATHKNIGHT, appendGroups(
								TIER_NINE_GROUPS.DEATHKNIGHT_A,
								TIER_EIGHT_HEROIC_GROUPS.DEATHKNIGHT,
								TIER_EIGHT_GROUPS.DEATHKNIGHT, {})),
							cl(PALADIN, appendGroups(
								TIER_NINE_GROUPS.PALADIN_A,
								TIER_EIGHT_HEROIC_GROUPS.PALADIN,
								TIER_EIGHT_GROUPS.PALADIN, {})),
							cl(WARRIOR, appendGroups(
								TIER_NINE_GROUPS.WARRIOR_A,
								TIER_EIGHT_HEROIC_GROUPS.WARRIOR,
								TIER_EIGHT_GROUPS.WARRIOR, {})),
						},
					}),
					n(35508, {	-- Enchanter Erodin <Heirloom Vendor>
						["coord"] = { 37.2, 55.6, NORTHREND_DALARAN },
						["sym"] = {{ "select", "npcID", 32509 },{"pop"}},	-- Brammold Deepmine <Antiques & Heirlooms>
						["races"] = HORDE_ONLY,
					}),
					n(35507, {	-- Enchanter Isian <Heirloom Vendor>
						["coord"] = { 37.2, 55.6, NORTHREND_DALARAN },
						["sym"] = {{ "select", "npcID", 32509 },{"pop"}},	-- Brammold Deepmine <Antiques & Heirlooms>
						["races"] = ALLIANCE_ONLY,
					}),
					n(28715, {	-- Endora Moorehead
						["coord"] = { 38.62, 55.57, NORTHREND_DALARAN },
						["groups"] = {
							i(82470, {	-- Ancient Tome of Portal: Dalaran (CI!)
								["timeline"] = { ADDED_5_0_4 },
								["isLimited"] = true,
							}),
							i(137294, {	-- Dalaran Initiates' Pin (TOY!)
								["timeline"] = { ADDED_7_0_3_LAUNCH },
								["classes"] = { MAGE },
								["isLimited"] = true,
							}),
							i(136846, {	-- Familiar Stone (TOY!)
								["timeline"] = { ADDED_7_0_3_LAUNCH },
								["classes"] = { MAGE },
							}),
							i(136797, {	-- Mystical Tome: Arcane Linguist (CI!)
								["timeline"] = { ADDED_7_0_3_LAUNCH },
							}),
							i(136799, {	-- Mystical Tome: Illusion (CI!)
								["timeline"] = { ADDED_7_0_3_LAUNCH },
							}),
							i(167733, {	-- Technique: Glyph of Dalaran Brilliance (RECIPE!)
								["timeline"] = { ADDED_8_1_5 },
								["isLimited"] = true,
							}),
							i(44714, {	-- Tome of Dalaran Brilliance (CI!)
								["timeline"] = { ADDED_3_0_3, REMOVED_7_0_3 },
								["isLimited"] = true,
							}),
							i(44602, {	-- Tome of Dalaran Intellect (CI!)
								["timeline"] = { ADDED_3_0_3, REMOVED_7_0_3 },
								["isLimited"] = true,
							}),
							i(44709, {	-- Tome of Polymorph: Black Cat (CI!)
								["isLimited"] = true,
							}),
						},
					}),
					n(28776, {	-- Elizabeth Ross <Tabard Vendor>
						["coord"] = { 51.8, 55.8, NORTHREND_DALARAN },
						["sym"] = {
							{"select", "itemID",
							31779,	-- Aldor Tabard
							31804,	-- Cenarion Expedition Tabard
							36941,	-- Competitor's Tabard
							31776,	-- Consortium Tabard
							19031,	-- Frostwolf Battle Tabard (H)
							31404,	-- Green Trophy Tabard of the Illidari
							5976,	-- Guild Tabard
							23999,	-- Honor Hold Tabard (A)
							31777,	-- Keepers of Time Tabard
							31774,	-- Kurenai Tabard (A)
							31778,	-- Lower City Tabard
							31773,	-- Mag'har Tabard (H)
							15198,	-- Knight's Colors (A)
							43300,	-- Loremaster's Colors
							32828,	-- Ogri'la Tabard
							15196,	-- Private's Tabard (A)
							31405,	-- Purple Trophy Tabard of the Illidari
							31780,	-- Scryers Tabard
							15197,	-- Scout's Tabard (H)
							31781,	-- Sha'tar Tabard
							19506,	-- Silverwing Battle Tabard (A)
							32445,	-- Skyguard Tabard
							31775,	-- Sporeggar Tabard
							15199,	-- Stone Guard's Herald (H)
							19032,	-- Stormpike Battle Tabard (A)
							43349,	-- Tabard of Brute Force
							49052,	-- Tabard of Conquest (A)
							49054,	-- Tabard of Conquest (H)
							35280,	-- Tabard of Summer Flames
							35279,	-- Tabard of Summer Skies
							40643,	-- Tabard of the Achiever
							43348,	-- Tabard of the Explorer
							24344,	-- Tabard of the Hand (A)
							35221,	-- Tabard of the Shattered Sun
							24004,	-- Thrallmar Tabard (H)
							19505,	-- Warsong Battle Tabard (H)
							},
						},
					}),
					n(29715, {	-- Fialla Sweetberry <Food & Drink>
						["coord"] = { 53.4, 34.6, NORTHREND_DALARAN },
						["groups"] = {
							i(40042),	-- Caraway Burnwine
							i(44618),	-- Glass of Aged Dalaran Red
							i(44617),	-- Glass of Dalaran Red
							i(44616),	-- Glass of Dalaran White
							i(40035),	-- Northrend Honey Mead
							i(40036),	-- Snowplum Brandy
						},
					}),
					applyclassicphase(WRATH_PHASE_FOUR, n(40160, {	-- Frozo the Renowned <Frozen Orb Trader>
						["coord"] = { 40.0, 28.9, NORTHREND_DALARAN },
						["groups"] = {
							applyclassicphase(WRATH_PHASE_THREE, i(47556, {	-- Crusader Orb
								["cost"] = { { "i", 43102, 6 } },	-- 6x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(35623, {	-- Eternal Air
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(35624, {	-- Eternal Earth
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(36860, {	-- Eternal Fire
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(35625, {	-- Eternal Life
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(35627, {	-- Eternal Shadow
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(35622, {	-- Eternal Water
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							applyclassicphase(WRATH_PHASE_ONE, i(36908, {	-- Frost Lotus
								["cost"] = { { "i", 43102, 1 } },	-- 1x Frozen Orb
							})),
							i(54798, {	-- Pattern: Frosty Flying Carpet
								["cost"] = { { "i", 43102, 6 } },	-- 6x Frozen Orb
								["timeline"] = { ADDED_3_3_3 },
							}),
							applyclassicphase(WRATH_PHASE_TWO, i(45087, {	-- Runed Orb
								["cost"] = { { "i", 43102, 4 } },	-- 4x Frozen Orb
							})),
						},
					})),
					n(28997, {	-- Griselda Hunderland <Plate Armor Merchant>
						["coord"] = { 46.3, 27.2, NORTHREND_DALARAN },
						["groups"] = {
							cl(DEATHKNIGHT, appendGroups(
								TIER_SEVEN_HEROIC_GROUPS.DEATHKNIGHT,
								TIER_SEVEN_GROUPS.DEATHKNIGHT, {})),
							cl(PALADIN, appendGroups(
								TIER_SEVEN_HEROIC_GROUPS.PALADIN,
								TIER_SEVEN_GROUPS.PALADIN, {})),
							cl(WARRIOR, appendGroups(
								TIER_SEVEN_HEROIC_GROUPS.WARRIOR,
								TIER_SEVEN_GROUPS.WARRIOR, {})),
							emoc(28, i(45824)),	-- Belt of the Singing Blade
							emoc(28, i(45833)),	-- Bladebreaker Gauntlets
							emov(40, i(40742)),	-- Bladed Steelboots
							emov(60, i(40734)),	-- Bracers of Dalaran's Parapets
							emof(95, i(50965)),	-- Castle Breaker's Battleplate
							emof(95, i(50968)),	-- Cataclysmic Chestguard
							emof(95, i(50969)),	-- Chestplate of Unspoken Truths
							emof(60, i(50977)),	-- Gatecrasher's Gauntlets
							emof(60, i(50976)),	-- Gauntlets of Overexposure
							emoc(28, i(45835)),	-- Gauntlets of Serene Blessing
							emof(60, i(50978)),	-- Gauntlets of the Kraken
							emoc(28, i(45834)),	-- Gauntlets of the Royal Watch
							emoc(28, i(45826)),	-- Girdle of Unyielding Trust
							emov(40, i(40743)),	-- Kyzoc's Ground Stompers
							emoc(39, i(45843)),	-- Legguards of the Peaceful Covenant
							emoc(39, i(45841)),	-- Legplates of the Violet Champion
							emof(60, i(50989)),	-- Lich Killer's Lanyard
							emoh(40, i(40691)),	-- Magroth's Meditative Cincture
							emof(60, i(50987)),	-- Malevolent Girdle
							emov(40, i(40745)),	-- Sabatons of Rapid Recovery
							emoc(28, i(45825)),	-- Shieldwarder Girdle
							emof(60, i(50991)),	-- Verdigris Chain Belt
							emoh(40, i(40688)),	-- Verdungo's Barbarian Cord
							emoh(40, i(40689)),	-- Waistguard of Living Iron
							emov(60, i(40733)),	-- Wristbands of the Sentinel Huntress
							emoc(39, i(45842)),	-- Wyrmguard Legplates
							emov(60, i(40735)),	-- Zartson's Jungle Vambraces
						},
					}),
					n(32638, {	-- Hakmud of Argus <Traveling Trader>
						["providers"] = {
							{ "i", 44235 },	-- Traveler's Tundra Mammoth (A) (MOUNT!)
						},
						["description"] = "This vendor can be found on someone's Traveler's Tundra Mammoth.",
						["groups"] = {
							i(44737),	-- Draenic Silk Robes
						},
					}),
					n(32172, {	-- Harold Winston <Jewelry Vendor>
						["coord"] = { 40.2, 34.3, NORTHREND_DALARAN },
						["groups"] = {
							ach(2084, {	-- Ring of the Kirin Tor
								["providers"] = {
									{ "i", 40586 },	-- Band of the Kirin Tor
									{ "i", 44934 },	-- Loop of the Kirin Tor
									{ "i", 44935 },	-- Ring of the Kirin Tor
									{ "i", 40585 },	-- Signet of the Kirin Tor
								},
							}),
							emov(25, i(40719)),	-- Band of Channeled Magic
							emot(35, i(47732)),	-- Band of the Invoker
							i(40586, {	-- Band of the Kirin Tor
								["cost"] = 85000000,	-- 8.5k
							}),
							emot(35, i(47729)),	-- Bloodshed Band
							emoc(19, i(45820)),	-- Brooch of the Wailing Night
							emoh(25, i(40679)),	-- Chained Military Gorget
							emot(35, i(47731)),	-- Clutch of Fortification
							emot(35, i(47730)),	-- Dexterous Brightstone Ring
							emoh(25, i(40680)),	-- Encircling Burnished Gold Chains
							applyclassicphase(WRATH_PHASE_THREE, i(48954, {	-- Etched Band of the Kirin Tor
								["cost"] = {
									{ "i", 45688, 1 },	-- Inscribed Band of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_THREE, i(48955, {	-- Etched Loop of the Kirin Tor
								["cost"] = {
									{ "i", 45689, 1 },	-- Inscribed Loop of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_THREE, i(48956, {	-- Etched Ring of the Kirin Tor
								["cost"] = {
									{ "i", 45690, 1 },	-- Inscribed Ring of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_THREE, i(48957, {	-- Etched Signet of the Kirin Tor
								["cost"] = {
									{ "i", 45691, 1 },	-- Inscribed Signet of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							emoc(19, i(45822)),	-- Evoker's Charm
							emoc(19, i(45823)),	-- Frozen Tear of Elune
							emot(35, i(47733)),	-- Heartmender Circle
							applyclassicphase(WRATH_PHASE_TWO, i(45688, {	-- Inscribed Band of the Kirin Tor
								["cost"] = {
									{ "i", 40586, 1 },	-- Band of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_TWO, i(45689, {	-- Inscribed Loop of the Kirin Tor
								["cost"] = {
									{ "i", 44934, 1 },	-- Loop of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_TWO, i(45690, {	-- Inscribed Ring of the Kirin Tor
								["cost"] = {
									{ "i", 44935, 1 },	-- Ring of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_TWO, i(45691, {	-- Inscribed Signet of the Kirin Tor
								["cost"] = {
									{ "i", 40585, 1 },	-- Signet of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							emoh(25, i(40681)),	-- Lattice Choker of Light
							i(44934, {	-- Loop of the Kirin Tor
								["cost"] = 85000000,	-- 8.5k
							}),
							emoh(25, i(40678)),	-- Pendant of the Outcast Hero
							emov(25, i(40720)),	-- Renewal of Life
							emov(25, i(40717)),	-- Ring of Invincibility
							i(44935, {	-- Ring of the Kirin Tor
								["cost"] = 85000000,	-- 8.5k
							}),
							applyclassicphase(WRATH_PHASE_FOUR, i(51560, {	-- Runed Band of the Kirin Tor
								["cost"] = {
									{ "i", 48954, 1 },	-- Etched Band of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_FOUR, i(51558, {	-- Runed Loop of the Kirin Tor
								["cost"] = {
									{ "i", 48955, 1 },	-- Etched Loop of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_FOUR, i(51559, {	-- Runed Ring of the Kirin Tor
								["cost"] = {
									{ "i", 48956, 1 },	-- Etched Ring of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							applyclassicphase(WRATH_PHASE_FOUR, i(51557, {	-- Runed Signet of the Kirin Tor
								["cost"] = {
									{ "i", 48957, 1 },	-- Etched Signet of the Kirin Tor
									{ "g", 12500000 },	-- 1250g
								},
							})),
							emoc(19, i(45821)),	-- Shard of the Crystal Forest
							emov(25, i(40718)),	-- Signet of the Impregnable Fortress
							i(40585, {	-- Signet of the Kirin Tor
								["cost"] = 85000000,	-- 8.5k
							}),
							emoc(19, i(45819)),	-- Spiked Battleguard Choker
						},
					}),
					n(31238, {	-- Hira Snowdawn <Cold Weather Flying Trainer>
						["coord"] = { 69.73, 45.45, NORTHREND_DALARAN },
						["groups"] = {
							i(49177, {	-- Tome of Cold Weather Flight
								-- #IF ANYCLASSIC
								["recipeID"] = 54197,	-- Cold Weather Flying
								-- #ELSE
								["f"] = MISC,
								-- #ENDIF
								["timeline"] = { REMOVED_7_3_5 },
								["cost"] = { { "g", 10000000 } },	-- 1000g
							}),
						},
					}),
					n(35498, {	-- Horace Hunderland <Plate Armor Merchant>
						["coord"] = { 46.6, 27.1, NORTHREND_DALARAN },
						["groups"] = {
							cl(DEATHKNIGHT, appendGroups(
								TIER_TEN_HEROIC_GROUPS.DEATHKNIGHT,
								TIER_TEN_NORMAL_GROUPS.DEATHKNIGHT,
								TIER_TEN_GROUPS.DEATHKNIGHT,
								TIER_NINE_GROUPS.DEATHKNIGHT_A,
								TIER_NINE_GROUPS.DEATHKNIGHT_H, {})),
							cl(PALADIN, appendGroups(
								TIER_TEN_HEROIC_GROUPS.PALADIN,
								TIER_TEN_NORMAL_GROUPS.PALADIN,
								TIER_TEN_GROUPS.PALADIN,
								TIER_NINE_GROUPS.PALADIN_A,
								TIER_NINE_GROUPS.PALADIN_H, {})),
							cl(WARRIOR, appendGroups(
								TIER_TEN_HEROIC_GROUPS.WARRIOR,
								TIER_TEN_NORMAL_GROUPS.WARRIOR,
								TIER_TEN_GROUPS.WARRIOR,
								TIER_NINE_GROUPS.WARRIOR_A,
								TIER_NINE_GROUPS.WARRIOR_H, {})),
						},
					}),
					-- #if AFTER CATA
					n(28714, {	-- Ildine Sorrowspear <Enchanting Supplies>
						["coord"] = { 38.78, 41.56, NORTHREND_DALARAN },
					}),
					-- #endif
					n(28682, {	-- Inzi Charmlight <Barmaid>
						["coord"] = { 44.2, 62.3, NORTHREND_DALARAN },
						["description"] = "Inzi is walking around in the Tavern.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35948),	-- Savoury Snowplum
							i(35949),	-- Tundra Berries
						},
					}),
					-- #if BEFORE MOP
					n(29493, {	-- Jarold Puller <Specialty Ammunition>
						["coord"] = { 60.0, 51.8, NORTHREND_DALARAN },
						["groups"] = {
							emot(25, i(47660, {	-- Blades of the Sable Cross
								["timeline"] = { REMOVED_5_0_4 },
							})),
							emot(25, i(47659, {	-- Crimson Star
								["timeline"] = { REMOVED_5_0_4 },
							})),
							i(32883, {	-- Felbane Slugs
								["timeline"] = { REMOVED_4_0_1 },
								["races"] = ALLIANCE_ONLY,
							}),
							i(32882, {	-- Hellfire Shot
								["timeline"] = { REMOVED_4_0_1 },
								["races"] = HORDE_ONLY,
							}),
							emoh(15, i(40716, {	-- Lillehoff's Winged Blades
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(34581, {	-- Mysterious Arrow
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(34582, {	-- Mysterious Shell
								["timeline"] = { REMOVED_4_0_1 },
							})),
							emof(30, i(50474, {	-- Shrapnel Star
								["timeline"] = { REMOVED_5_0_4 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31737, {	-- Timeless Arrow
								["timeline"] = { REMOVED_4_0_1 },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31735, {	-- Timeless Shell
								["timeline"] = { REMOVED_4_0_1 },
							})),
							i(31949, {	-- Warden's Arrow
								["timeline"] = { REMOVED_4_0_1 },
							}),
						},
					}),
					-- #endif
					n(29478, {	-- Jepetto Joybuzz <Toymaker>
						["coord"] = { 44.5, 45.7, NORTHREND_DALARAN },
						["sym"] = {{"sub", "common_vendor", 29716}},	-- Clockwork Assistant <Jepetto's Companion> (Dalaran Northrend)
					}),
					n(29491, {	-- Karandonna <Clothier>
						["coord"] = { 44.4, 48.9, NORTHREND_DALARAN },
						["groups"] = {
							i(42365),	-- Amber Filigreed Doublet
							i(42371),	-- Amber Filigreeed Shirt
							i(42374),	-- Blue Martial Shirt
							i(42361),	-- Cerulean Filigreed Doublet
							i(42370),	-- Cerulean Filigreed Shiurt
							i(42360),	-- Ebon Filigreed Doublet
							i(42369),	-- Ebon Filigreed Shirt
							i(53852, {	-- Embroidered Shirt
								["timeline"] = { ADDED_6_0_3 },
								["cost"] = 10000000,	-- 1,000g
							}),
							i(42363),	-- Golden Filigreed Doublet
							i(42373),	-- Golden Filigreed Shirt
							i(42375),	-- Green Martial Shirt
							i(42377),	-- Purple Martial Shirt
							i(42378),	-- Red Martial Shirt
							i(42368),	-- Scarlet Filigreed Doublet
							i(42372),	-- Scarlet Filigreed Shirt
							i(42376),	-- Yellow Martial Shirt
						},
					}),
					n(35826, {	-- Kaye Toogie
						["description"] = "When using |cff0070ddWormhole Generator: Northrend|r, you have a chance to receive the option 'Underground...,' which ports you to the vendor. You must have Engineering to use the toy.",
						["requireSkill"] = ENGINEERING,
						["groups"] = {
							i(16054, {	-- Schematic: Arcanite Dragonling (RECIPE!)
								["timeline"] = { ADDED_3_0_3 },
								["isLimited"] = true,
							}),
							i(13311, {	-- Schematic: Mechanical Dragonling (RECIPE!)
								["isLimited"] = true,
							}),
							i(10609, {	-- Schematic: Mithril Mechanical Dragonling (RECIPE!)
								["isLimited"] = true,
							}),
						},
					}),
					n(29496, {	-- Kerta the Bold <Axe & Polearm Merchant>
						["coord"] = { 54.4, 62.0, NORTHREND_DALARAN },
						["groups"] = {
							i(44642),	-- Dalaran Axe
							i(44640),	-- Dalaran Great Axe
							i(44654),	-- Dalaran Spear
						},
					}),
					n(32253, {	-- Kyunghee
						["coord"] = { 71.6, 31.8, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
						["sym"] = {{"select","itemID",
							2523,	-- Bullova
							2531,	-- Great Axe
						}},
						["groups"] = {
							i(2522),	-- Crescent Axe
							i(2530),	-- Francisca
						},
					}),
					n(29511, {	-- Lalla Brightweave <Spellfire Tailoring Specialist>
						["coord"] = { 36.6, 32.8, NORTHREND_DALARAN },
						["groups"] = {
							i(24316),	-- Pattern: Spellcloth (RECIPE!)
							i(21911),	-- Pattern: Spellfire Bag (RECIPE!)
							i(21908),	-- Pattern: Spellfire Belt (RECIPE!)
							i(21909),	-- Pattern: Spellfire Gloves (RECIPE!)
							i(21910),	-- Pattern: Spellfire Robe (RECIPE!)
						},
					}),
					-- #if BEFORE 7.0.3
					n(28723, {	-- Larana Drome <Inscription Supplies>
						["coord"] = { 41.8, 36.8, NORTHREND_DALARAN },
						["groups"] = {
							i(50166, {	-- Technique: Glyph of Eternal Water / Technique: Glyph of Mana Shield [CATA+] / Technique: Glyph of Counterspell [MOP+]
								["timeline"] = { ADDED_3_3_0, DELETED_7_0_3 },
							}),
							i(50168, {	-- Technique: Glyph of Quick Decay / Technique: Glyph of Lash of Pain [CATA+] / Technique: Glyph of Everlasting Affliction [5.0.4+] / Glyph of Eternal Resolve [5.4.0+]
								["timeline"] = { ADDED_3_3_0, DELETED_7_0_3 },
							}),
							i(50167, {	-- Technique: Glyph of Rapid Rejuvenation
								["timeline"] = { ADDED_3_3_0, DELETED_4_0_1 },
							}),
						},
					}),
					-- #endif
					n(29510, {	-- Linna Bruder <Shadoweave Tailoring Specialist>
						["coord"] = { 34.6, 34.4, NORTHREND_DALARAN },
						["groups"] = {
							i(21915),	-- Pattern: Ebon Shadowbag (RECIPE!)
							i(21914),	-- Pattern: Frozen Shadoweave Boots (RECIPE!)
							i(21912),	-- Pattern: Frozen Shadoweave Shoulders (RECIPE!)
							i(21913),	-- Pattern: Frozen Shadoweave Robe (RECIPE!)
							i(30483),	-- Pattern: Shadowcloth (RECIPE!)
						},
					}),
					n(29714, {	-- Lucian Trias <Bread & Cheese Vendor>
						["coord"] = { 55.0, 31.1, NORTHREND_DALARAN },
						["groups"] = {
							-- Bread:
							i(33449),	-- Crusty Flat Bread
							i(44610),	-- Fresh Dalaran Bread
							i(35950),	-- Sweet Potato Bread
							-- Cheese:
							i(44613),	-- Aged Dalaran Sharp Wheel
							i(35952),	-- Briny Hardcheese
							i(44612),	-- Dalaran Swiss Wheel
							i(33443),	-- Sour Goat Cheese
						},
					}),
					applyclassicphase(WRATH_PHASE_FOUR, n(37941, {	-- Magister Arlan <Legacy Justice Quartermaster> / <Emblem of Frost Quartermaster> [WRATH]
						["coord"] = { 65.9, 22.9, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
						["groups"] = EMBLEM_OF_FROST_QUARTERMASTER_GROUPS,
					})),
					n(31581, {	-- Magister Brasael <Legacy Justice Quartermaster> / <Emblem of Valor Quartermaster> [WRATH]
						["coord"] = { 66.1, 23.4, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
						["groups"] = EMBLEM_OF_VALOR_QUARTERMASTER_GROUPS,
					}),
					applyclassicphase(WRATH_PHASE_TWO, n(33963, {	-- Magister Sarien <Legacy Justice Quartermaster> / <Emblem of Conquest Quartermaster> [WRATH]
						["coord"] = { 65.7, 24.4, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
						["groups"] = EMBLEM_OF_CONQUEST_QUARTERMASTER_GROUPS,
					})),
					n(31582, {	-- Magistrix Lambriesse <Legacy Justice Quartermaster> / <Emblem of Heroism Quartermaster> [WRATH]
						["coord"] = { 65.6, 22.7, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
						["groups"] = EMBLEM_OF_HEROISM_QUARTERMASTER_GROUPS,
					}),
					applyclassicphase(WRATH_PHASE_THREE, n(35495, {	-- Magistrix Vesara <Legacy Justice Quartermaster> / <Emblem of Triumph Quartermaster> [WRATH]
						["coord"] = { 65.0, 23.0, NORTHREND_DALARAN },
						["races"] = HORDE_ONLY,
						["groups"] = EMBLEM_OF_TRIUMPH_QUARTERMASTER_H_GROUPS,
					})),
					n(35500, {	-- Matilda Brightlink <Mail Armor Merchant>
						["coord"] = { 51.7, 73.0, NORTHREND_DALARAN },
						["groups"] = {
							cl(HUNTER, appendGroups(
								TIER_TEN_HEROIC_GROUPS.HUNTER,
								TIER_TEN_NORMAL_GROUPS.HUNTER,
								TIER_TEN_GROUPS.HUNTER,
								TIER_NINE_GROUPS.HUNTER, {})),
							cl(SHAMAN, appendGroups(
								TIER_TEN_HEROIC_GROUPS.SHAMAN,
								TIER_TEN_NORMAL_GROUPS.SHAMAN,
								TIER_TEN_GROUPS.SHAMAN,
								TIER_NINE_GROUPS.SHAMAN, {})),
						},
					}),
					n(32216, {	-- Mei Francis <Exotic Mounts>
						["coord"] = { 57.8, 42.5, NORTHREND_DALARAN },
						["groups"] = {
							ach(2076, {	-- Armored Brown Bear
								["providers"] = {
									{ "i", 44225 },	-- Armored Brown Bear (A) (MOUNT!)
									{ "i", 44226 },	-- Armored Brown Bear (H) (MOUNT!)
								},
							}),
							ach(2078, {	-- Traveler's Tundra Mammoth
								["providers"] = {
									{ "i", 44235 },	-- Traveler's Tundra Mammoth (A) (MOUNT!)
									{ "i", 44234 },	-- Traveler's Tundra Mammoth (H) (MOUNT!)
								},
							}),
							ach(2077, {	-- Wooly Mammoth
								["providers"] = {
									{ "i", 44230 },	-- Wooly Mammoth (A) (MOUNT!)
									{ "i", 44231 },	-- Wooly Mammoth (H) (MOUNT!)
								},
							}),
							i(44690, {	-- Armored Blue Wind Rider (MOUNT!)
								["races"] = HORDE_ONLY,
								["cost"] = 20000000,	-- 2,000g
							}),
							i(44225, {	-- Armored Brown Bear (A) (MOUNT!)
								["races"] = ALLIANCE_ONLY,
								["cost"] = 7500000,	-- 750g
							}),
							i(44226, {	-- Armored Brown Bear (H) (MOUNT!)
								["races"] = HORDE_ONLY,
								["cost"] = 7500000,	-- 750g
							}),
							i(44689, {	-- Armored Snowy Gryphon (MOUNT!)
								["races"] = ALLIANCE_ONLY,
								["cost"] = 20000000,	-- 2,000g
							}),
							h(i(25475)),	-- Blue Wind Rider (MOUNT!)
							a(i(25471)),	-- Ebon Gryphon (MOUNT!)
							a(i(25470)),	-- Golden Gryphon (MOUNT!)
							h(i(25476)),	-- Green Wind Rider (MOUNT!)
							a(i(25472)),	-- Snowy Gryphon (MOUNT!)
							a(i(25473)),	-- Swift Blue Gryphon (MOUNT!)
							a(i(25528)),	-- Swift Green Gryphon (MOUNT!)
							h(i(25531)),	-- Swift Green Wind Rider (MOUNT!)
							a(i(25529)),	-- Swift Purple Gryphon (MOUNT!)
							h(i(25533)),	-- Swift Purple Wind Rider (MOUNT!)
							a(i(25527)),	-- Swift Red Gryphon (MOUNT!)
							h(i(25477)),	-- Swift Red Wind Rider (MOUNT!)
							h(i(25532)),	-- Swift Yellow Wind Rider (MOUNT!)
							h(i(25474)),	-- Tawny Wind Rider (MOUNT!)
							i(44235, {	-- Traveler's Tundra Mammoth (A) (MOUNT!)
								["races"] = ALLIANCE_ONLY,
								["cost"] = 200000000,	-- 20,000g
							}),
							i(44234, {	-- Traveler's Tundra Mammoth (H) (MOUNT!)
								["races"] = HORDE_ONLY,
								["cost"] = 200000000,	-- 20,000g
							}),
							i(44230, {	-- Wooly Mammoth (A) (MOUNT!)
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									-- #if AFTER CATA
									{ "g", 100000000 },	-- 10,000g
									-- #else
									{ "c", 101, 200 },	-- 200x Emblem of Heroism
									-- #endif
								},
							}),
							i(44231, {	-- Wooly Mammoth (H) (MOUNT!)
								["races"] = HORDE_ONLY,
								["cost"] = {
									-- #if AFTER CATA
									{ "g", 100000000 },	-- 10,000g
									-- #else
									{ "c", 101, 200 },	-- 200x Emblem of Heroism
									-- #endif
								},
							}),
						},
					}),
					n(32420, {	-- Mimbihi <Barmaid>
						["coord"] = { 67.4, 32.2, NORTHREND_DALARAN },
						["description"] = "Mimbihi is walking around in the Tavern.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35948),	-- Savoury Snowplum
							i(35949),	-- Tundra Berries
						},
					}),
					n(29529, {	-- Ninsianna <Relics>
						["description"] = "If you /dance with her, she will say Not bad, though some additional schooling wouldn't hurt! Here, watch my hips... like so! and start dancing.",
						-- #if BEFORE MOP
						["groups"] = bubbleDown({ ["timeline"] = { REMOVED_5_0_4 } }, {
							emof(30, i(50458)),	-- Bizuri's Totem of Shattered Ice
							emov(25, i(40342)),	-- Idol of Awakening
							emot(25, i(47671)),	-- Idol of Flaring Growth
							emot(25, i(47670)),	-- Idol of Lunar Fury
							emot(25, i(47668)),	-- Idol of Mutilation
							emof(30, i(50454)),	-- Idol of the Black Willow
							emof(30, i(50456)),	-- Idol of the Crying Moon
							emof(30, i(50457)),	-- Idol of the Lunar Eclipse
							emov(25, i(40321)),	-- Idol of the Shooting Star
							emov(25, i(39757)),	-- Idol of Worship
							emof(30, i(50460)),	-- Libram of Blinding Light
							emot(25, i(47664)),	-- Libram of Defiance
							emov(25, i(40191)),	-- Libram of Radiance
							emov(25, i(40337)),	-- Libram of Resurgence
							emof(30, i(50461)),	-- Libram of the Eternal Tower
							emof(30, i(50455)),	-- Libram of Three Truths
							emov(25, i(40268)),	-- Libram of Tolerance
							emot(25, i(47661)),	-- Libram of Valiance
							emot(25, i(47662)),	-- Libram of Veracity
							emov(25, i(40207)),	-- Sigil of Awareness
							emot(25, i(47672)),	-- Sigil of Insolence
							emof(30, i(50462)),	-- Sigil of the Bone Gryphon
							emof(30, i(50459)),	-- Sigil of the Hanged Man
							emot(25, i(47673)),	-- Sigil of Virulence
							emot(25, i(47665)),	-- Totem of Calming Tides
							emov(25, i(40322)),	-- Totem of Dueling
							emot(25, i(47666)),	-- Totem of Electrifying Wind
							emov(25, i(40267)),	-- Totem of Hex
							emov(25, i(39728)),	-- Totem of Misery
							emot(25, i(47667)),	-- Totem of Quaking Earth
							emof(30, i(50463)),	-- Totem of the Avalanche
							emof(30, i(50464)),	-- Totem of the Surging Sea
						}),
						-- #endif
					}),
					n(29495, {	-- Norvin Alderman <Cloaks>
						["coord"] = { 44.7, 48.9, NORTHREND_DALARAN },
						["groups"] = {
							emov(25, i(40724)),	-- Cloak of Kea Feathers
							emov(25, i(40723)),	-- Disguise of the Kumiho
							emof(50, i(50468)),	-- Drape of the Violet Tower
							emov(25, i(40721)),	-- Hammerhead Sharkskin Cloak
							emof(50, i(50467)),	-- Might of the Ocean Serpent
							emov(25, i(40722)),	-- Platinum Mesh Cloak
							emof(50, i(50470)),	-- Recovered Scarlet Onslaught Cape
							emof(50, i(50466)),	-- Sentinel's Winter Cloak
							emof(50, i(50469)),	-- Volde's Cloak of the Night Sky
						},
					}),
					n(29527, {	-- Orton Bennet <Offhand Offerings>
						["coord"] = { 51.9, 55.1, NORTHREND_DALARAN },
						["groups"] = {
							emoh(25, i(40699)),	-- Handbook of Obscure Remedies
							emoh(25, i(40698)),	-- Ward of the Violet Citadel
						},
					}),
					n(28995, {	-- Paldesse <Cloth Armor Merchant>
						["coord"] = { 43.8, 49.4, NORTHREND_DALARAN },
						["groups"] = {
							cl(MAGE, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.MAGE,
								TIER_EIGHT_GROUPS.MAGE,
								TIER_SEVEN_HEROIC_GROUPS.MAGE,
								TIER_SEVEN_GROUPS.MAGE, {})),
							cl(PRIEST, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.PRIEST,
								TIER_EIGHT_GROUPS.PRIEST,
								TIER_SEVEN_HEROIC_GROUPS.PRIEST,
								TIER_SEVEN_GROUPS.PRIEST, {})),
							cl(WARLOCK, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.WARLOCK,
								TIER_EIGHT_GROUPS.WARLOCK,
								TIER_SEVEN_HEROIC_GROUPS.WARLOCK,
								TIER_SEVEN_GROUPS.WARLOCK, {})),
							emof(60, i(50996)),	-- Belt of Omission
							emof(60, i(50997)),	-- Circle of Ossus
							emoh(40, i(40697)),	-- Elegant Temple Gardens' Girdle
							emof(95, i(50975)),	-- Ermine Coronation Robes
							emof(60, i(50984)),	-- Gloves of Ambivalence
							emof(60, i(50983)),	-- Gloves of False Gestures
							emoc(39, i(45848)),	-- Legwraps of the Master Conjurer
							emof(95, i(50974)),	-- Meteor Chaser's Raiment
							emoh(40, i(40696)),	-- Plush Sash of Guzbah
							emoc(28, i(45831)),	-- Sash of Potent Incantations
							emov(40, i(40751)),	-- Slippers of the Holy Light
							emoc(28, i(45840)),	-- Touch of the Occult
							emov(60, i(40740)),	-- Wraps of the Astral Traveler
							emov(40, i(40750)),	-- Xintor's Expeditionary Boots
						},
					}),
					n(35497, {	-- Rafael Langrom <Leather Armor Merchant>
						["coord"] = { 51.2, 71.5, NORTHREND_DALARAN },
						["groups"] = {
							cl(DRUID, appendGroups(
								TIER_TEN_HEROIC_GROUPS.DRUID,
								TIER_TEN_NORMAL_GROUPS.DRUID,
								TIER_TEN_GROUPS.DRUID,
								TIER_NINE_GROUPS.DRUID, {})),
							cl(ROGUE, appendGroups(
								TIER_TEN_HEROIC_GROUPS.ROGUE,
								TIER_TEN_NORMAL_GROUPS.ROGUE,
								TIER_TEN_GROUPS.ROGUE,
								TIER_NINE_GROUPS.ROGUE, {})),
						},
					}),
					n(35496, {	-- Rueben Lauren <Cloth Armor Merchant>
						["coord"] = { 44.1, 48.9, NORTHREND_DALARAN },
						["groups"] = {
							cl(MAGE, appendGroups(
								TIER_TEN_HEROIC_GROUPS.MAGE,
								TIER_TEN_NORMAL_GROUPS.MAGE,
								TIER_TEN_GROUPS.MAGE,
								TIER_NINE_GROUPS.MAGE, {})),
							cl(PRIEST, appendGroups(
								TIER_TEN_HEROIC_GROUPS.PRIEST,
								TIER_TEN_NORMAL_GROUPS.PRIEST,
								TIER_TEN_GROUPS.PRIEST,
								TIER_NINE_GROUPS.PRIEST, {})),
							cl(WARLOCK, appendGroups(
								TIER_TEN_HEROIC_GROUPS.WARLOCK,
								TIER_TEN_NORMAL_GROUPS.WARLOCK,
								TIER_TEN_GROUPS.WARLOCK,
								TIER_NINE_GROUPS.WARLOCK, {})),
						},
					}),
					n(29703, {	-- Sheddle Glossgleam <Cobbler>
						["coord"] = { 45.0, 46.5, NORTHREND_DALARAN },
						["groups"] = {
							emov(40, i(40742)),	-- Bladed Steelboots
							emov(40, i(40748)),	-- Boots of Captain Ellis
							emov(40, i(40743)),	-- Kyzoc's Ground Stompers
							emov(40, i(40746)),	-- Pack-Ice Striders
							emov(40, i(40749)),	-- Rainey's Chewed Boots
							emov(40, i(40745)),	-- Sabatons of Rapid Recovery
							emov(40, i(40751)),	-- Slippers of the Holy Light
							emov(40, i(40747)),	-- Treads of Coastal Wandering
							emov(40, i(40750)),	-- Xintor's Expeditionary Boots
						},
					}),
					n(29494, {	-- Shen Kang Cheng <Staves>
						["coord"] = { 49.6, 72.6, NORTHREND_DALARAN },
						["groups"] = {
							i(44655),	-- Dalaran Stave
						},
					}),
					-- #if AFTER CATA
					n(32712, {	-- The Amazing Zanzo
						["description"] = "This NPC have two possiple spawns and routes: Either leaving The Militiant Mystic in The Eventide going to the nearby bank, or leaving the Legerdemain Lounge for a stroll through the Magus Commerce Exchange and back.",
						["groups"] = {
							{
								["recipeID"] = 28272,	-- Polymorph (Pig)
								["classes"] = { MAGE },
							},
						},
					}),
					-- #endif
					n(32419, {	-- Umbiwa <Barmaid>
						["coord"] = { 67.4, 32.2, NORTHREND_DALARAN },
						["description"] = "Umbiwa is walking around in the Tavern.",
						["races"] = HORDE_ONLY,
						["sym"] = {{ "sub", "common_vendor", 32420 }},	-- Mimbihi <Barmaid>
					}),
					n(28991, {	-- Valaden Silverblade <Sword Merchant>
						["coord"] = { 54.5, 62.9, NORTHREND_DALARAN },
						["groups"] = {
							i(44639),	-- Dalaran Greatsword
							i(44638),	-- Dalaran Sword
							emoh(50, i(40703)),	-- Grasscutter
						},
					}),
					n(28992, {	-- Valerie Langrom <Leather Armor Merchant>
						["coord"] = { 51.6, 72.4, NORTHREND_DALARAN },
						["groups"] = {
							cl(DRUID, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.DRUID,
								TIER_EIGHT_GROUPS.DRUID,
								TIER_SEVEN_HEROIC_GROUPS.DRUID,
								TIER_SEVEN_GROUPS.DRUID, {})),
							cl(ROGUE, appendGroups(
								TIER_EIGHT_HEROIC_GROUPS.ROGUE,
								TIER_EIGHT_GROUPS.ROGUE,
								TIER_SEVEN_HEROIC_GROUPS.ROGUE,
								TIER_SEVEN_GROUPS.ROGUE, {})),
							emov(60, i(40739)),	-- Bands of the Great Tree
							emof(60, i(50994)),	-- Belt of Petrified Ivy
							emoc(28, i(45830)),	-- Belt of the Living Thicket
							emoc(28, i(45829)),	-- Belt of the Twilight Assassin
							emov(40, i(40748)),	-- Boots of Captain Ellis
							emof(60, i(50982)),	-- Cat Burglar's Grips
							emoc(28, i(45838)),	-- Gloves of the Blind Stalker
							emof(60, i(50981)),	-- Gloves of the Great Horned Owl
							emoc(28, i(45839)),	-- Grips of the Secret Grove
							emoh(40, i(40694)),	-- Jorach's Crocolisk Skin Belt
							emoc(39, i(45846)),	-- Leggings of Wavering Shadow
							emov(40, i(40749)),	-- Rainey's Chewed Boots
							emof(95, i(50972)),	-- Shadow Seeker's Tunic
							emof(60, i(50995)),	-- Vengeful Noose
							emof(95, i(50973)),	-- Vestments of Spruce and Fir
							emoh(40, i(40695)),	-- Vine Belt of the Woodland Dryad
							emoc(39, i(45847)),	-- Wildstrider Legguards
							emov(60, i(40738)),	-- Wristwraps of the Cutthroat
						},
					}),
					n(32514, {	-- Vanessa Sellers
						["coord"] = { 38.4, 41.1, NORTHREND_DALARAN },
						["groups"] = {
							i(44483, {	-- Formula: Enchant 2H Weapon - Massacre (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44490, {	-- Formula: Enchant Boots - Greater Assault (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44491, {	-- Formula: Enchant Boots - Tuskarr's Vitality (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(44484, {	-- Formula: Enchant Bracer - Greater Assault (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(44944, {	-- Formula: Enchant Bracer - Major Stamina (RECIPE!)
								["cost"] = { { "i", 34057, 5 } },	-- 5x Abyss Crystal
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44498, {	-- Formula: Enchant Bracer - Superior Spellpower (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(37340, {	-- Formula: Enchant Chest - Exceptional Armor / WOTLK: ormula: Enchant Chest - Exceptional Resilience (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(44489, {	-- Formula: Enchant Chest - Powerful Stats (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44472, {	-- Formula: Enchant Cloak - Greater Speed (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(44471, {	-- Formula: Enchant Cloak - Mighty Stamina (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(37349, {	-- Formula: Enchant Cloak - Shadow Armor (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(37347, {	-- Formula: Enchant Cloak - Superior Dodge / WOTLK: ormula: Enchant Cloak - Titanweave (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(44488, {	-- Formula: Enchant Cloak - Wisdom (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(44485, {	-- Formula: Enchant Gloves - Armsman (RECIPE!)
								["cost"] = { { "i", 34052, 4 } },	-- 4x Dream Shard
							}),
							i(45059, {	-- Formula: Enchant Staff - Greater Spellpower (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44496, {	-- Formula: Enchant Weapon - Accuracy (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44492, {	-- Formula: Enchant Weapon - Berserking (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44495, {	-- Formula: Enchant Weapon - Black Magic (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(37339, {	-- Formula: Enchant Weapon - Giant Slayer (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
							}),
							i(37344, {	-- Formula: Enchant Weapon - Icebreaker (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
							}),
							i(44494, {	-- Formula: Enchant Weapon - Lifeward (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
							}),
							i(44487, {	-- Formula: Enchant Weapon - Mighty Spellpower (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(44473, {	-- Formula: Enchant Weapon - Scourgebane (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
							}),
							i(44486, {	-- Formula: Enchant Weapon - Superior Potency (RECIPE!)
								["cost"] = { { "i", 34052, 10 } },	-- 10x Dream Shard
								["timeline"] = { ADDED_3_1_0 },
							}),
						},
					}),
					n(29497, {	-- Walther Whiteford <Mace Merchant>
						["coord"] = { 55.8, 62.8, NORTHREND_DALARAN },
						["groups"] = {
							i(44636),	-- Dalaran Cudgel
							i(44645),	-- Dalaran Hammer
						},
					}),
					-- #if AFTER 8.0.1
					n(28994, {	-- Wanda Chanter <Wands> [BFA+] / Abra Cadabra [WRATH]
						["coord"] = { 49.1, 73.2, NORTHREND_DALARAN },
						["groups"] = {
							emot(25, i(47658)),	-- Brimstone Igniter
							i(40019),	-- Wand of Amber
							i(40021),	-- Wand of Crystal
							i(40020),	-- Wand of Jade
							i(40018),	-- Wand of Onyx
						},
					}),
					-- #endif
				}),
				-- #if NOT ANYCLASSIC
				-- CRIEVE NOTE: I'm going to solve this a different way eventually.
				o(208317, {	-- Warchief's Command Board
					["coords"] = {
						{ 48.7, 39.6, NORTHREND_DALARAN },
						{ 59.2, 27.4, NORTHREND_DALARAN },
					},
					["timeline"] = { ADDED_4_0_1 },
					["sym"] = WARCHIEFS_COMMAND_BOARD_SYMLINK,
					["races"] = HORDE_ONLY,
					["skipFill"] = true,
				}),
				-- #endif
			},
		}),
	})),
});

-- #if ANYCLASSIC
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WRATH, {
	inst(760, {
		q(83713),	-- Triggered when turning in Proof of Demise: Titan Rune Protocol Gamma
		q(87379),	-- Triggered when turning in Proof of Demise: Threats to Azeroth
	}),
}));
-- #endif
