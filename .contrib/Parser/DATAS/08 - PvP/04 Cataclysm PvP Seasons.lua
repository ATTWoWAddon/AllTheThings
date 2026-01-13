-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
local function MarkOfWHOOOWHATNow(t)
	-- #if BEFORE 7.0.3.22248
	-- Programmatically remove all references to Mark of Honor.
	if t.cost then
		local totalCosts = #t.cost;
		for i=totalCosts,1,-1 do
			if t.cost[i][2] == 137642 then
				-- Mark of Honor, remove it!
				table.remove(t.cost, i);
				totalCosts = totalCosts - 1;
			end
		end
		if totalCosts == 0 then
			t.cost = nil;
		end
	end
	-- #endif
	return t;
end

-- #if ANYCLASSIC
local VICIOUS_ELITE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_RAGE_OF_THE_FIRELANDS .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_ONE .. [[;
		t.rwp = 40200;
	end
end]];
local RUTHLESS_ELITE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_HOUR_OF_TWILIGHT .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_RAGE_OF_THE_FIRELANDS .. [[;
		t.rwp = 40300;
	end
end]];
local CATACLYSMIC_ELITE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_ONE .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_HOUR_OF_TWILIGHT .. [[;
		t.rwp = 50004;
	end
end]];
-- #endif

root(ROOTS.PVP, {
	run(MarkOfWHOOOWHATNow, pvp(expansion(EXPANSION.CATA, {
		n(RATED_BATTLEGROUNDS, bubbleDown({
				["timeline"] = {
					-- #if ANYCLASSIC
					CREATED_4_3_0,	-- These were never made available to players in Classic. Instead, the original items have been made available to purchase with honor points.
					-- #else
					ADDED_4_3_0
					-- #endif
				 },
			}, {
				n(FACTION_HEADER_ALLIANCE, {
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						n(WEAPONS, {
							i(77596),	-- Replica Grand Marshal's Aegis
							i(77563),	-- Replica Grand Marshal's Battle Hammer
							i(77565),	-- Replica Grand Marshal's Bullseye
							i(77560),	-- Replica Grand Marshal's Claymore
							i(77549),	-- Replica Grand Marshal's Demolisher
							i(77551),	-- Replica Grand Marshal's Dirk
							i(77564),	-- Replica Grand Marshal's Glaive
							i(77555),	-- Replica Grand Marshal's Hand Cannon
							i(77557),	-- Replica Grand Marshal's Hand Blade
							i(77562),	-- Replica Grand Marshal's Handaxe
							i(77561),	-- Replica Grand Marshal's Longsword
							i(77552),	-- Replica Grand Marshal's Mageblade
							i(77558),	-- Replica Grand Marshal's Punisher
							i(77566),	-- Replica Grand Marshal's Repeater
							i(77556),	-- Replica Grand Marshal's Stave
							i(77554),	-- Replica Grand Marshal's Sunderer
							i(77550),	-- Replica Grand Marshal's Swiftblade
							i(77595),	-- Replica Grand Marshal's Tome of Power
							i(77594),	-- Replica Grand Marshal's Tome of Restoration
							i(77553),	-- Replica Grand Marshal's Warhammer
						}),
						filter(CLOTH, {
							i(77620),	-- Replica Sergeant Major's Silk Cuffs
							i(77787),	-- Replica Sergeant Major's Silk Cuffs
						}),
						filter(MAIL, {
							i(77612),	-- Replica Sergeant Major's Chain Armguards
							i(77613, {	-- Replica Sergeant Major's Chain Armguards
								["description"] = "Horde appearance is learned when buying the Alliance version.",
								["groups"] = { h(i(77836)) },	-- Replica First Sergeant's Mail Wristguards
							}),
						}),
						filter(PLATE, {
							i(77659),	-- Replica Sergeant Major's Plate Wristguards
							i(77660, {	-- Replica Sergeant Major's Plate Wristguards
								["description"] = "Horde appearance is learned when buying the Alliance version.",
								["groups"] = { h(i(77870)) },	-- Replica First Sergeant's Plate Bracers
							}),
						}),
						cl(DRUID, {
							i(77670),	-- Replica Field Marshal's Dragonhide Breastplate
							i(77671),	-- Replica Field Marshal's Dragonhide Helmet
							i(77667),	-- Replica Field Marshal's Dragonhide Spaulders
							i(77601),	-- Replica Knight-Captain's Dragonhide Leggings
							i(77745),	-- Replica Knight-Captain's Dragonhide Leggings
							i(77602),	-- Replica Knight-Captain's Dragonhide Tunic
							i(77599),	-- Replica Knight-Lieutenant's Dragonhide Footwraps
							i(77603),	-- Replica Knight-Lieutenant's Dragonhide Gloves
							i(77720),	-- Replica Knight-Lieutenant's Dragonhide Grips
							i(77721),	-- Replica Knight-Lieutenant's Dragonhide Treads
							i(120992),	-- Replica Knight-Lieutenant's Dragonhide Belt
							i(77598),	-- Replica Lieutenant Commander's Dragonhide Epaulets
							i(77742),	-- Replica Lieutenant Commander's Dragonhide Headguard
							i(77748),	-- Replica Lieutenant Commander's Dragonhide Shoulders
							i(77600),	-- Replica Lieutenant Commander's Dragonhide Shroud
							i(77669),	-- Replica Marshal's Dragonhide Boots
							i(77666),	-- Replica Marshal's Dragonhide Gauntlets
							i(77668),	-- Replica Marshal's Dragonhide Legguards
							i(77604),	-- Replica Sergeant Major's Dragonhide Armsplints
							i(77605),	-- Replica Sergeant Major's Dragonhide Armsplints
						}),
						cl(HUNTER, {
							i(77674),	-- Replica Field Marshal's Chain Breastplate
							i(77676),	-- Replica Field Marshal's Chain Helm
							i(77673),	-- Replica Field Marshal's Chain Spaulders
							i(77608),	-- Replica Knight-Captain's Chain Hauberk
							i(77761),	-- Replica Knight-Captain's Chain Hauberk
							i(77611),	-- Replica Knight-Captain's Chain Leggings
							i(77769),	-- Replica Knight-Captain's Chain Legguards
							i(120983),	-- Replica Knight-Lieutenant's Chain Belt
							i(77606),	-- Replica Knight-Lieutenant's Chain Boots
							i(77610),	-- Replica Knight-Lieutenant's Chain Gauntlets
							i(77723),	-- Replica Knight-Lieutenant's Chain Greaves
							i(77722),	-- Replica Knight-Lieutenant's Chain Vices
							i(77763),	-- Replica Lieutenant Commander's Chain Helm
							i(77609),	-- Replica Lieutenant Commander's Chain Helmet
							i(77607),	-- Replica Lieutenant Commander's Chain Pauldrons
							i(77762),	-- Replica Lieutenant Commander's Chain Shoulders
							i(77672),	-- Replica Marshal's Chain Boots
							i(77677),	-- Replica Marshal's Chain Grips
							i(77675),	-- Replica Marshal's Chain Legguards
						}),
						cl(MAGE, {
							i(77682),	-- Replica Field Marshal's Coronet
							i(77679),	-- Replica Field Marshal's Silk Spaulders
							i(77678),	-- Replica Field Marshal's Silk Vestments
							i(77618),	-- Replica Knight-Captain's Silk Leggings
							i(77777),	-- Replica Knight-Captain's Silk Legguards
							i(77614),	-- Replica Knight-Captain's Silk Raiment
							i(77785),	-- Replica Knight-Captain's Silk Tunic
							i(77616),	-- Replica Knight-Lieutenant's Silk Boots
							i(120994),	-- Replica Knight-Lieutenant's Silk Cinch
							i(77617),	-- Replica Knight-Lieutenant's Silk Gloves
							i(77725),	-- Replica Knight-Lieutenant's Silk Handwraps
							i(77724),	-- Replica Knight-Lieutenant's Silk Walkers
							i(77619),	-- Replica Lieutenant Commander's Crown
							i(77784),	-- Replica Lieutenant Commander's Silk Cowl
							i(77615),	-- Replica Lieutenant Commander's Silk Spaulders
							i(77681),	-- Replica Marshal's Silk Gloves
							i(77680),	-- Replica Marshal's Silk Leggings
							i(77683),	-- Replica Marshal's Silk Footwraps
						}),
						cl(PALADIN, {
							i(77687),	-- Replica Field Marshal's Lamellar Chestplate
							i(77688),	-- Replica Field Marshal's Lamellar Faceguard
							i(77689),	-- Replica Field Marshal's Lamellar Pauldrons
							i(77626),	-- Replica Knight-Captain's Lamellar Breastplate
							i(77662),	-- Replica Knight-Captain's Lamellar Breastplate
							i(77623),	-- Replica Knight-Captain's Lamellar Leggings
							i(77661),	-- Replica Knight-Captain's Lamellar Leggings
							i(77622),	-- Replica Knight-Lieutenant's Lamellar Gauntlets
							i(77727),	-- Replica Knight-Lieutenant's Lamellar Gauntlets
							i(120981),	-- Replica Knight-Lieutenant's Lamellar Girdle
							i(77625),	-- Replica Knight-Lieutenant's Lamellar Sabatons
							i(77726),	-- Replica Knight-Lieutenant's Lamellar Sabatons
							i(77624),	-- Replica Lieutenant Commander's Lamellar Headguard
							i(77664),	-- Replica Lieutenant Commander's Lamellar Headguard
							i(77621),	-- Replica Lieutenant Commander's Lamellar Shoulders
							i(77665),	-- Replica Lieutenant Commander's Lamellar Shoulders
							i(77684),	-- Replica Marshal's Lamellar Boots
							i(77685),	-- Replica Marshal's Lamellar Gloves
							i(77686),	-- Replica Marshal's Lamellar Legplates
						}),
						cl(PRIEST, {
							i(77695),	-- Replica Field Marshal's Headdress
							i(77692),	-- Replica Field Marshal's Satin Mantle
							i(77694),	-- Replica Field Marshal's Satin Vestments
							i(77628),	-- Replica Knight-Captain's Satin Leggings
							i(77797),	-- Replica Knight-Captain's Satin Legguards
							i(77630),	-- Replica Knight-Captain's Satin Robes
							i(77799),	-- Replica Knight-Captain's Satin Tunic
							i(120995),	-- Replica Knight-Lieutenant's Satin Belt
							i(77632),	-- Replica Knight-Lieutenant's Satin Boots
							i(77627),	-- Replica Knight-Lieutenant's Satin Gloves
							i(77728),	-- Replica Knight-Lieutenant's Satin Handwraps
							i(77729),	-- Replica Knight-Lieutenant's Satin Walkers
							i(77629),	-- Replica Lieutenant Commander's Diadem
							i(77631),	-- Replica Lieutenant Commander's Satin Amice
							i(77800),	-- Replica Lieutenant Commander's Satin Hood
							i(77801),	-- Replica Lieutenant Commander's Satin Mantle
							i(77693),	-- Replica Marshal's Satin Gloves
							i(77691),	-- Replica Marshal's Satin Pants
							i(77690),	-- Replica Marshal's Satin Sandals
						}),
						cl(ROGUE, {
							i(77701),	-- Replica Field Marshal's Leather Chestpiece
							i(77697),	-- Replica Field Marshal's Leather Epaulets
							i(77700),	-- Replica Field Marshal's Leather Mask
							i(77633),	-- Replica Knight-Captain's Leather Armor
							i(77811),	-- Replica Knight-Captain's Leather Chestpiece
							i(77638),	-- Replica Knight-Captain's Leather Legguards
							i(77812),	-- Replica Knight-Captain's Leather Legguards
							i(77637),	-- Replica Knight-Lieutenant's Leather Boots
							i(120993),	-- Replica Knight-Lieutenant's Leather Clasp
							i(77634),	-- Replica Knight-Lieutenant's Leather Gauntlets
							i(77731),	-- Replica Knight-Lieutenant's Leather Grips
							i(77730),	-- Replica Knight-Lieutenant's Leather Walkers
							i(77820),	-- Replica Lieutenant Commander's Leather Helm
							i(77813),	-- Replica Lieutenant Commander's Leather Shoulders
							i(77636),	-- Replica Lieutenant Commander's Leather Spaulders
							i(77635),	-- Replica Lieutenant Commander's Leather Veil
							i(77699),	-- Replica Marshal's Leather Footguards
							i(77698),	-- Replica Marshal's Leather Handgrips
							i(77696),	-- Replica Marshal's Leather Leggings
							i(77639),	-- Replica Sergeant Major's Leather Armsplints
							i(77640),	-- Replica Sergeant Major's Leather Armsplints
						}),
						cl(SHAMAN, {
							i(77707),	-- Replica Field Marshal's Mail Armor
							i(77704),	-- Replica Field Marshal's Mail Helm
							i(77705),	-- Replica Field Marshal's Mail Spaulders
							i(77641),	-- Replica Knight-Captain's Mail Hauberk
							i(77643),	-- Replica Knight-Captain's Mail Legguards
							i(77644),	-- Replica Knight-Lieutenant's Mail Greaves
							i(120982),	-- Replica Knight-Lieutenant's Mail Links
							i(77646),	-- Replica Knight-Lieutenant's Mail Vices
							i(77642),	-- Replica Lieutenant Commander's Mail Headguard
							i(77645),	-- Replica Lieutenant Commander's Mail Pauldrons
							i(77702),	-- Replica Marshal's Mail Boots
							i(77703),	-- Replica Marshal's Mail Gauntlets
							i(77706),	-- Replica Marshal's Mail Leggings
						}),
						cl(WARLOCK, {
							i(77710),	-- Replica Field Marshal's Coronal
							i(77712),	-- Replica Field Marshal's Dreadweave Robe
							i(77709),	-- Replica Field Marshal's Dreadweave Shoulders
							i(77649),	-- Replica Knight-Captain's Dreadweave Leggings
							i(77847),	-- Replica Knight-Captain's Dreadweave Legguards
							i(77648),	-- Replica Knight-Captain's Dreadweave Robe
							i(77848),	-- Replica Knight-Captain's Dreadweave Tunic
							i(77651),	-- Replica Knight-Lieutenant's Dreadweave Boots
							i(77650),	-- Replica Knight-Lieutenant's Dreadweave Gloves
							i(77733),	-- Replica Knight-Lieutenant's Dreadweave Handwraps
							i(77732),	-- Replica Knight-Lieutenant's Dreadweave Walkers
							i(120996),	-- Replica Knight-Lieutenant's Dreadweave Wrap
							i(77844),	-- Replica Lieutenant Commander's Dreadweave Cowl
							i(77647),	-- Replica Lieutenant Commander's Dreadweave Mantle
							i(77850),	-- Replica Lieutenant Commander's Dreadweave Spaulders
							i(77652),	-- Replica Lieutenant Commander's Headguard
							i(77708),	-- Replica Marshal's Dreadweave Boots
							i(77713),	-- Replica Marshal's Dreadweave Gloves
							i(77711),	-- Replica Marshal's Dreadweave Leggings
						}),
						cl(WARRIOR, {
							i(77714),	-- Replica Field Marshal's Plate Armor
							i(77715),	-- Replica Field Marshal's Plate Helm
							i(77718),	-- Replica Field Marshal's Plate Shoulderguards
							i(77654),	-- Replica Knight-Captain's Plate Chestguard
							i(77858),	-- Replica Knight-Captain's Plate Hauberk
							i(77655),	-- Replica Knight-Captain's Plate Leggings
							i(77864),	-- Replica Knight-Captain's Plate Leggings
							i(77658),	-- Replica Knight-Lieutenant's Plate Boots
							i(77653),	-- Replica Knight-Lieutenant's Plate Gauntlets
							i(77734),	-- Replica Knight-Lieutenant's Plate Gauntlets
							i(77735),	-- Replica Knight-Lieutenant's Plate Greaves
							i(120977),	-- Replica Knight-Lieutenant's Plate Waistguard
							i(77656),	-- Replica Lieutenant Commander's Plate Helm
							i(77867),	-- Replica Lieutenant Commander's Plate Helmet
							i(77657),	-- Replica Lieutenant Commander's Plate Pauldrons
							i(77859),	-- Replica Lieutenant Commander's Plate Shoulders
							i(77719),	-- Replica Marshal's Plate Boots
							i(77716),	-- Replica Marshal's Plate Gauntlets
							i(77717),	-- Replica Marshal's Plate Legguards
						}),
					},
				}),
				n(FACTION_HEADER_HORDE, {
					["races"] = HORDE_ONLY,
					["groups"] = {
						n(WEAPONS, {
							i(77567),	-- Replica High Warlord's Battle Mace
							i(77574),	-- Replica High Warlord's Battle Axe
							i(77582),	-- Replica High Warlord's Blade
							i(77584),	-- Replica High Warlord's Bludgeon
							i(77575),	-- Replica High Warlord's Claw
							i(77580),	-- Replica High Warlord's Cleaver
							i(77585),	-- Replica High Warlord's Crossbow
							i(77571),	-- Replica High Warlord's Destroyer
							i(77577),	-- Replica High Warlord's Greatsword
							i(77572),	-- Replica High Warlord's Pig Sticker
							i(77573),	-- Replica High Warlord's Pulverizer
							i(77569),	-- Replica High Warlord's Quickblade
							i(77576),	-- Replica High Warlord's Razor
							i(77578),	-- Replica High Warlord's Recurve
							i(77597),	-- Replica High Warlord's Shield Wall
							i(77568),	-- Replica High Warlord's Spellblade
							i(77579),	-- Replica High Warlord's Street Sweeper
							i(77592),	-- Replica High Warlord's Tome of Mending
							i(77593),	-- Replica High Warlord's Tome of Destruction
							i(77581),	-- Replica High Warlord's War Staff
						}),
						filter(CLOTH, {
							i(77786),	-- Replica First Sergeant's Silk Cuffs
							i(77788),	-- Replica First Sergeant's Silk Cuffs
						}),
						filter(MAIL, {
							i(77835),	-- Replica First Sergeant's Mail Wristguards
						}),
						filter(PLATE, {
							i(77861),	-- Replica First Sergeant's Plate Bracers
						}),
						cl(DRUID, {
							i(120984),	-- Replica Blood Guard's Dragonhide Belt
							i(77736),	-- Replica Blood Guard's Dragonhide Boots
							i(77741),	-- Replica Blood Guard's Dragonhide Gauntlets
							i(77750),	-- Replica Blood Guard's Dragonhide Grips
							i(77747),	-- Replica Blood Guard's Dragonhide Treads
							i(77752),	-- Replica Champion's Dragonhide Headguard
							i(77739),	-- Replica Champion's Dragonhide Helm
							i(77737),	-- Replica Champion's Dragonhide Spaulders
							i(77746),	-- Replica Champion's Dragonhide Shoulders
							i(77743),	-- Replica First Sergeant's Dragonhide Armguards
							i(77753),	-- Replica First Sergeant's Dragonhide Armguards
							i(77875),	-- Replica General's Dragonhide Boots
							i(77879),	-- Replica General's Dragonhide Gloves
							i(77877),	-- Replica General's Dragonhide Leggings
							i(77738),	-- Replica Legionnaire's Dragonhide Breastplate
							i(77749),	-- Replica Legionnaire's Dragonhide Chestpiece
							i(77744),	-- Replica Legionnaire's Dragonhide Leggings
							i(77740),	-- Replica Legionnaire's Dragonhide Trousers
							i(77878),	-- Replica Warlord's Dragonhide Epaulets
							i(77876),	-- Replica Warlord's Dragonhide Hauberk
							i(77874),	-- Replica Warlord's Dragonhide Helmet
						}),
						cl(HUNTER, {
							i(120991),	-- Replica Blood Guard's Chain Belt
							i(77755),	-- Replica Blood Guard's Chain Boots
							i(77756),	-- Replica Blood Guard's Chain Gauntlets
							i(77767),	-- Replica Blood Guard's Chain Greaves
							i(77764),	-- Replica Blood Guard's Chain Vices
							i(77759),	-- Replica Champion's Chain Headguard
							i(77765),	-- Replica Champion's Chain Helm
							i(77754),	-- Replica Champion's Chain Pauldrons
							i(77766),	-- Replica Champion's Chain Shoulders
							i(77884),	-- Replica General's Chain Boots
							i(77885),	-- Replica General's Chain Gloves
							i(77881),	-- Replica General's Chain Legguards
							i(77757),	-- Replica Legionnaire's Chain Breastplate
							i(77768),	-- Replica Legionnaire's Chain Hauberk
							i(77758),	-- Replica Legionnaire's Chain Leggings
							i(77760),	-- Replica Legionnaire's Chain Legguards
							i(77882),	-- Replica Warlord's Chain Chestpiece
							i(77883),	-- Replica Warlord's Chain Helmet
							i(77880),	-- Replica Warlord's Chain Shoulders
						}),
						cl(MAGE, {
							i(120987),	-- Replica Blood Guard's Silk Cinch
							i(77771),	-- Replica Blood Guard's Silk Footwraps
							i(77775),	-- Replica Blood Guard's Silk Gloves
							i(77783),	-- Replica Blood Guard's Silk Handwraps
							i(77773),	-- Replica Blood Guard's Silk Walkers
							i(77778),	-- Replica Champion's Silk Cowl
							i(77776),	-- Replica Champion's Silk Hood
							i(77779),	-- Replica Champion's Silk Mantle
							i(77772),	-- Replica Champion's Silk Shoulderpads
							i(77888),	-- Replica General's Silk Boots
							i(77887),	-- Replica General's Silk Handguards
							i(77891),	-- Replica General's Silk Trousers
							i(77782),	-- Replica Legionnaire's Silk Legguards
							i(77774),	-- Replica Legionnaire's Silk Pants
							i(77770),	-- Replica Legionnaire's Silk Robes
							i(77781),	-- Replica Legionnaire's Silk Tunic
							i(77890),	-- Replica Warlord's Silk Amice
							i(77886),	-- Replica Warlord's Silk Cowl
							i(77889),	-- Replica Warlord's Silk Raiment
						}),
						cl(PALADIN, {
							i(77929),	-- Replica Blood Guard's Lamellar Gauntlets
							i(120980),	-- Replica Blood Guard's Lamellar Girdle
							i(77928),	-- Replica Blood Guard's Lamellar Sabatons
							i(77871),	-- Replica Champion's Lamellar Headguard
							i(77872),	-- Replica Champion's Lamellar Shoulders
							i(77893),	-- Replica General's Lamellar Boots
							i(77895),	-- Replica General's Lamellar Gloves
							i(77896),	-- Replica General's Lamellar Legplates
							i(77873),	-- Replica Legionnaire's Lamellar Breastplate
							i(77663),	-- Replica Legionnaire's Lamellar Leggings
							i(77892),	-- Replica Warlord's Lamellar Chestplate
							i(77894),	-- Replica Warlord's Lamellar Faceguard
							i(77897),	-- Replica Warlord's Lamellar Pauldrons
						}),
						cl(PRIEST, {
							i(77790),	-- Replica Blood Guard's Satin Boots
							i(77791),	-- Replica Blood Guard's Satin Gloves
							i(77803),	-- Replica Blood Guard's Satin Handwraps
							i(120988),	-- Replica Blood Guard's Satin Waistwrap
							i(77804),	-- Replica Blood Guard's Satin Walkers
							i(77792),	-- Replica Champion's Satin Cowl
							i(77795),	-- Replica Champion's Satin Hood
							i(77796),	-- Replica Champion's Satin Mantle
							i(77789),	-- Replica Champion's Satin Shoulderpads
							i(77903),	-- Replica General's Satin Boots
							i(77898),	-- Replica General's Satin Gloves
							i(77902),	-- Replica General's Satin Leggings
							i(77798),	-- Replica Legionnaire's Satin Legguards
							i(77794),	-- Replica Legionnaire's Satin Trousers
							i(77802),	-- Replica Legionnaire's Satin Tunic
							i(77793),	-- Replica Legionnaire's Satin Vestments
							i(77900),	-- Replica Warlord's Satin Cowl
							i(77899),	-- Replica Warlord's Satin Mantle
							i(77901),	-- Replica Warlord's Satin Robes
						}),
						cl(ROGUE, {
							i(120985),	-- Replica Blood Guard's Leather Clasp
							i(77817),	-- Replica Blood Guard's Leather Grips
							i(77809),	-- Replica Blood Guard's Leather Treads
							i(77810),	-- Replica Blood Guard's Leather Vices
							i(77816),	-- Replica Blood Guard's Leather Walkers
							i(77805),	-- Replica Champion's Leather Headguard
							i(77815),	-- Replica Champion's Leather Helm
							i(77806),	-- Replica Champion's Leather Mantle
							i(77819),	-- Replica Champion's Leather Shoulders
							i(77814),	-- Replica First Sergeant's Leather Armguards
							i(77822),	-- Replica First Sergeant's Leather Armguards
							i(77906),	-- Replica General's Leather Legguards
							i(77905),	-- Replica General's Leather Mitts
							i(77904),	-- Replica General's Leather Treads
							i(77821),	-- Replica Legionnaire's Leather Chestpiece
							i(77808),	-- Replica Legionnaire's Leather Hauberk
							i(77807),	-- Replica Legionnaire's Leather Leggings
							i(77818),	-- Replica Legionnaire's Leather Legguards
							i(77908),	-- Replica Warlord's Leather Breastplate
							i(77909),	-- Replica Warlord's Leather Helm
							i(77907),	-- Replica Warlord's Leather Spaulders
						}),
						cl(SHAMAN, {
							i(77830),	-- Replica Blood Guard's Mail Greaves
							i(77823),	-- Replica Blood Guard's Mail Grips
							i(120990),	-- Replica Blood Guard's Mail Links
							i(77833),	-- Replica Blood Guard's Mail Vices
							i(77828),	-- Replica Blood Guard's Mail Walkers
							i(77832),	-- Replica Champion's Mail Headguard
							i(77827),	-- Replica Champion's Mail Helm
							i(77831),	-- Replica Champion's Mail Pauldrons
							i(77826),	-- Replica Champion's Mail Shoulders
							i(77911),	-- Replica General's Mail Boots
							i(77912),	-- Replica General's Mail Gauntlets
							i(77915),	-- Replica General's Mail Leggings
							i(77824),	-- Replica Legionnaire's Mail Chestpiece
							i(77834),	-- Replica Legionnaire's Mail Hauberk
							i(77825),	-- Replica Legionnaire's Mail Leggings
							i(77829),	-- Replica Legionnaire's Mail Legguards
							i(77914),	-- Replica Warlord's Mail Armor
							i(77913),	-- Replica Warlord's Mail Helm
							i(77910),	-- Replica Warlord's Mail Spaulders
						}),
						cl(WARLOCK, {
							i(77839),	-- Replica Blood Guard's Dreadweave Boots
							i(77840),	-- Replica Blood Guard's Dreadweave Gloves
							i(77849),	-- Replica Blood Guard's Dreadweave Handwraps
							i(77843),	-- Replica Blood Guard's Dreadweave Walkers
							i(120986),	-- Replica Blood Guard's Dreadweave Wrap
							i(77845),	-- Replica Champion's Dreadweave Cowl
							i(77837),	-- Replica Champion's Dreadweave Hood
							i(77842),	-- Replica Champion's Dreadweave Shoulders
							i(77846),	-- Replica Champion's Dreadweave Spaulders
							i(77918),	-- Replica General's Dreadweave Boots
							i(77916),	-- Replica General's Dreadweave Gloves
							i(77921),	-- Replica General's Dreadweave Pants
							i(77838),	-- Replica Legionnaire's Dreadweave Leggings
							i(77852),	-- Replica Legionnaire's Dreadweave Legguards
							i(77841),	-- Replica Legionnaire's Dreadweave Robe
							i(77851),	-- Replica Legionnaire's Dreadweave Tunic
							i(77917),	-- Replica Warlord's Dreadweave Hood
							i(77920),	-- Replica Warlord's Dreadweave Mantle
							i(77919),	-- Replica Warlord's Dreadweave Robe
						}),
						cl(WARRIOR, {
							i(77853),	-- Replica Blood Guard's Plate Boots
							i(77863),	-- Replica Blood Guard's Plate Gauntlets
							i(77860),	-- Replica Blood Guard's Plate Gloves
							i(77862),	-- Replica Blood Guard's Plate Greaves
							i(120976),	-- Replica Blood Guard's Plate Waistguard
							i(77855),	-- Replica Champion's Plate Headguard
							i(77869),	-- Replica Champion's Plate Helm
							i(77856),	-- Replica Champion's Plate Pauldrons
							i(77868),	-- Replica Champion's Plate Shoulders
							i(77922),	-- Replica General's Plate Boots
							i(77925),	-- Replica General's Plate Gauntlets
							i(77926),	-- Replica General's Plate Leggings
							i(77854),	-- Replica Legionnaire's Plate Armor
							i(77865),	-- Replica Legionnaire's Plate Hauberk
							i(77866),	-- Replica Legionnaire's Plate Leggings
							i(77857),	-- Replica Legionnaire's Plate Legguards
							i(77924),	-- Replica Warlord's Plate Armor
							i(77927),	-- Replica Warlord's Plate Headpiece
							i(77923),	-- Replica Warlord's Plate Shoulders
						}),
					},
				}),
			})),
		applyclassicphase(CATA_PHASE_ONE, n(SEASON_VICIOUS, {
			n(ACHIEVEMENTS, {
				ach(11714, {["timeline"] = {ADDED_7_2_0}}),	-- Viciously Vintage (PvP Season 9)
			}),
			n(ACHIEVEMENTS, elitepvp(bubbleDown({
				["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 },
			}, {
				-- #if ANYCLASSIC
				ach(40971),	-- Challenger: Season 9
				ach(40968),	-- Rival: Season 9
				ach(40970),	-- Duelist: Season 9
				ach(41336),	-- Gladiator: Season 9
				ach(40969, {	-- Gladiator: Season 9
					i(71339),	-- Vicious Gladiator's Twilight Drake
				}),
				-- #endif
				ach(5344, {	-- Hero of the Alliance: Vicious
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5358, {	-- Hero of the Horde: Vicious
					["races"] = HORDE_ONLY,
				}),
				ach(6002, {	-- Vicious Gladiator: Cataclysm Season 1
					title(191),	-- Vicious Gladiator <Name>
				}),
				ach(6003, {	-- Vicious Gladiator's Twilight Drake
					["provider"] = { "i", 71339 },	-- Vicious Gladiator's Twilight Drake
					["filterID"] = MOUNTS,
				}),
				i(71339, {	-- Vicious Gladiator's Twilight Drake
					["description"] = "Awarded to members of the Arena teams during Cata Season 1 that were in the 0.5% bracket of their battlegroup.",
				}),
			}))),
			n(PVP_HONOR, bubbleDownSelf({
				-- #if ANYCLASSIC
				["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
				-- #endif
			}, {
				cl(DEATHKNIGHT, {
					moh(12, iensemble(146423, {	-- Ensemble: Bloodthirsty Gladiator's Dreadplate Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(64735)),	-- Bloodthirsty Gladiator's Dreadplate Chestpiece
					moh(2, i(64736)),	-- Bloodthirsty Gladiator's Dreadplate Gauntlets
					moh(3, i(64737)),	-- Bloodthirsty Gladiator's Dreadplate Helm
					moh(3, i(64738)),	-- Bloodthirsty Gladiator's Dreadplate Legguards
					moh(2, i(64739)),	-- Bloodthirsty Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					moh(12, iensemble(146421, {	-- Ensemble: Bloodthirsty Gladiator's Dragonhide Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(64727)),	-- Bloodthirsty Gladiator's Dragonhide Gloves
					moh(3, i(64728)),	-- Bloodthirsty Gladiator's Dragonhide Helm
					moh(3, i(64729)),	-- Bloodthirsty Gladiator's Dragonhide Legguards
					moh(3, i(64730)),	-- Bloodthirsty Gladiator's Dragonhide Robes
					moh(2, i(64731)),	-- Bloodthirsty Gladiator's Dragonhide Spaulders
					moh(2, i(64764)),	-- Bloodthirsty Gladiator's Kodohide Gloves
					moh(3, i(64765)),	-- Bloodthirsty Gladiator's Kodohide Helm
					moh(3, i(64766)),	-- Bloodthirsty Gladiator's Kodohide Legguards
					moh(3, i(64767)),	-- Bloodthirsty Gladiator's Kodohide Robes
					moh(2, i(64768)),	-- Bloodthirsty Gladiator's Kodohide Spaulders
					moh(2, i(64874)),	-- Bloodthirsty Gladiator's Wyrmhide Gloves
					moh(3, i(64875)),	-- Bloodthirsty Gladiator's Wyrmhide Helm
					moh(3, i(64876)),	-- Bloodthirsty Gladiator's Wyrmhide Legguards
					moh(3, i(64877)),	-- Bloodthirsty Gladiator's Wyrmhide Robes
					moh(2, i(64878)),	-- Bloodthirsty Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					moh(12, iensemble(146419, {	-- Ensemble: Bloodthirsty Gladiator's Chain Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(64708)),	-- Bloodthirsty Gladiator's Chain Armor
					moh(2, i(64709)),	-- Bloodthirsty Gladiator's Chain Gauntlets
					moh(3, i(64710)),	-- Bloodthirsty Gladiator's Chain Helm
					moh(3, i(64711)),	-- Bloodthirsty Gladiator's Chain Leggings
					moh(2, i(64712)),	-- Bloodthirsty Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					moh(12, iensemble(146437, {	-- Ensemble: Bloodthirsty Gladiator's Silk Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
						-- CRIEVE NOTE: These were not available for purchase, but apparently got added to the Ensemble in 7.2.0.
						-- DARKAL NOTE: And then they removed them from the Ensemble in 11.0.0
						["groups"] = sharedData({["timeline"] = { ADDED_7_2_0, REMOVED_11_0_0 }},{
							i(64928),	-- Gladiator's Silk Trousers - confirmed 14/10/21
							i(64929),	-- Gladiator's Silk Robe - confirmed 14/10/21
							i(64930),	-- Gladiator's Silk Handguards - confirmed 14/10/21
							i(64931),	-- Gladiator's Silk Cowl - confirmed 14/10/21
							i(64932),	-- Gladiator's Silk Amice - confirmed 14/10/21
							i(88251),	-- Gladiator's Silk Amice - confirmed 14/10/21
							i(88252),	-- Gladiator's Silk Cowl - confirmed 14/10/21
							i(88253),	-- Gladiator's Silk Handguards - confirmed 14/10/21
							i(88254),	-- Gladiator's Silk Robe - confirmed 14/10/21
							i(88255),	-- Gladiator's Silk Trousers - confirmed 14/10/21
						}),
					})),
					moh(2, i(64853)),	-- Bloodthirsty Gladiator's Silk Amice
					moh(3, i(64854)),	-- Bloodthirsty Gladiator's Silk Cowl
					moh(2, i(64855)),	-- Bloodthirsty Gladiator's Silk Handguards
					moh(3, i(64856)),	-- Bloodthirsty Gladiator's Silk Robe
					moh(3, i(64857)),	-- Bloodthirsty Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146435, {	-- Ensemble: Bloodthirsty Gladiator's Scaled Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(64802)),	-- Bloodthirsty Gladiator's Ornamented Chestguard
					moh(2, i(64803)),	-- Bloodthirsty Gladiator's Ornamented Gloves
					moh(3, i(64804)),	-- Bloodthirsty Gladiator's Ornamented Headcover
					moh(3, i(64805)),	-- Bloodthirsty Gladiator's Ornamented Legplates
					moh(2, i(64806)),	-- Bloodthirsty Gladiator's Ornamented Spaulders
					moh(3, i(64843)),	-- Bloodthirsty Gladiator's Scaled Chestpiece
					moh(2, i(64844)),	-- Bloodthirsty Gladiator's Scaled Gauntlets
					moh(3, i(64845)),	-- Bloodthirsty Gladiator's Scaled Helm
					moh(3, i(64846)),	-- Bloodthirsty Gladiator's Scaled Legguards
					moh(2, i(64847)),	-- Bloodthirsty Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					moh(12, iensemble(146433, {	-- Ensemble: Bloodthirsty Gladiator's Satin Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(64795)),	-- Bloodthirsty Gladiator's Mooncloth Gloves
					moh(3, i(64796)),	-- Bloodthirsty Gladiator's Mooncloth Helm
					moh(3, i(64797)),	-- Bloodthirsty Gladiator's Mooncloth Leggings
					moh(2, i(64798)),	-- Bloodthirsty Gladiator's Mooncloth Mantle
					moh(3, i(64799)),	-- Bloodthirsty Gladiator's Mooncloth Robe
					moh(2, i(64838)),	-- Bloodthirsty Gladiator's Satin Gloves
					moh(3, i(64839)),	-- Bloodthirsty Gladiator's Satin Hood
					moh(3, i(64840)),	-- Bloodthirsty Gladiator's Satin Leggings
					moh(2, i(64841)),	-- Bloodthirsty Gladiator's Satin Mantle
					moh(3, i(64842)),	-- Bloodthirsty Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					moh(12, iensemble(146427, {	-- Ensemble: Bloodthirsty Gladiator's Leather Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(64769)),	-- Bloodthirsty Gladiator's Leather Gloves
					moh(3, i(64770)),	-- Bloodthirsty Gladiator's Leather Helm
					moh(3, i(64771)),	-- Bloodthirsty Gladiator's Leather Legguards
					moh(2, i(64772)),	-- Bloodthirsty Gladiator's Leather Spaulders
					moh(3, i(64773)),	-- Bloodthirsty Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146431, {	-- Ensemble: Bloodthirsty Gladiator's Ringmail Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(64776)),	-- Bloodthirsty Gladiator's Linked Armor
					moh(2, i(64777)),	-- Bloodthirsty Gladiator's Linked Gauntlets
					moh(3, i(64778)),	-- Bloodthirsty Gladiator's Linked Helm
					moh(3, i(64779)),	-- Bloodthirsty Gladiator's Linked Leggings
					moh(2, i(64780)),	-- Bloodthirsty Gladiator's Linked Spaulders
					moh(3, i(64784)),	-- Bloodthirsty Gladiator's Mail Armor
					moh(2, i(64785)),	-- Bloodthirsty Gladiator's Mail Gauntlets
					moh(3, i(64786)),	-- Bloodthirsty Gladiator's Mail Helm
					moh(3, i(64787)),	-- Bloodthirsty Gladiator's Mail Leggings
					moh(2, i(64788)),	-- Bloodthirsty Gladiator's Mail Spaulders
					moh(3, i(64827)),	-- Bloodthirsty Gladiator's Ringmail Armor
					moh(2, i(64828)),	-- Bloodthirsty Gladiator's Ringmail Gauntlets
					moh(3, i(64829)),	-- Bloodthirsty Gladiator's Ringmail Helm
					moh(3, i(64830)),	-- Bloodthirsty Gladiator's Ringmail Leggings
					moh(2, i(64831)),	-- Bloodthirsty Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146425, {	-- Ensemble: Bloodthirsty Gladiator's Felweave Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(64745)),	-- Bloodthirsty Gladiator's Felweave Amice
					moh(3, i(64746)),	-- Bloodthirsty Gladiator's Felweave Cowl
					moh(2, i(64747)),	-- Bloodthirsty Gladiator's Felweave Handguards
					moh(3, i(64748)),	-- Bloodthirsty Gladiator's Felweave Raiment
					moh(3, i(64749)),	-- Bloodthirsty Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146429, {	-- Ensemble: Bloodthirsty Gladiator's Plate Armor
						["description"] = "You will need to log out and back in to register the Vicious Gladiator |cFF1eff00Season 10|r Honor Transmog.\n\n|cffde1c1cYou will not|r gain the Vicious Gladiator |cFF1eff00Season 9|r Transmog with the same name.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(64811)),	-- Bloodthirsty Gladiator's Plate Chestpiece
					moh(2, i(64812)),	-- Bloodthirsty Gladiator's Plate Gauntlets
					moh(3, i(64813)),	-- Bloodthirsty Gladiator's Plate Helm
					moh(3, i(64814)),	-- Bloodthirsty Gladiator's Plate Legguards
					moh(2, i(64815)),	-- Bloodthirsty Gladiator's Plate Shoulders
				}),
				n(BACK, {
					moh(1, i(64706)),	-- Bloodthirsty Gladiator's Cape of Cruelty
					moh(1, i(64707)),	-- Bloodthirsty Gladiator's Cape of Prowess
					moh(1, i(64718)),	-- Bloodthirsty Gladiator's Cloak of Alacrity
					moh(1, i(64719)),	-- Bloodthirsty Gladiator's Cloak of Prowess
					moh(1, i(64732)),	-- Bloodthirsty Gladiator's Drape of Diffusion
					moh(1, i(64733)),	-- Bloodthirsty Gladiator's Drape of Meditation
					moh(1, i(64734)),	-- Bloodthirsty Gladiator's Drape of Prowess
				}),
				n(WRIST, {
					moh(1, i(64681)),	-- Bloodthirsty Gladiator's Armbands of Meditation
					moh(1, i(64682)),	-- Bloodthirsty Gladiator's Armbands of Prowess
					moh(1, i(64683)),	-- Bloodthirsty Gladiator's Armplates of Alacrity
					moh(1, i(64684)),	-- Bloodthirsty Gladiator's Armplates of Proficiency
					moh(1, i(64685)),	-- Bloodthirsty Gladiator's Armwraps of Accuracy
					moh(1, i(64686)),	-- Bloodthirsty Gladiator's Armwraps of Alacrity
					moh(1, i(64698)),	-- Bloodthirsty Gladiator's Bindings of Meditation
					moh(1, i(64699)),	-- Bloodthirsty Gladiator's Bindings of Prowess
					moh(1, i(64704)),	-- Bloodthirsty Gladiator's Bracers of Meditation
					moh(1, i(64705)),	-- Bloodthirsty Gladiator's Bracers of Prowess
					moh(1, i(64723)),	-- Bloodthirsty Gladiator's Cuffs of Accuracy
					moh(1, i(64724)),	-- Bloodthirsty Gladiator's Cuffs of Meditation
					moh(1, i(64725)),	-- Bloodthirsty Gladiator's Cuffs of Prowess
					moh(1, i(64872)),	-- Bloodthirsty Gladiator's Wristguards of Accuracy
					moh(1, i(64873)),	-- Bloodthirsty Gladiator's Wristguards of Alacrity
				}),
				n(WAIST, {
					moh(1, i(64696)),	-- Bloodthirsty Gladiator's Belt of Cruelty
					moh(1, i(64697)),	-- Bloodthirsty Gladiator's Belt of Meditation
					moh(1, i(64715)),	-- Bloodthirsty Gladiator's Clasp of Cruelty
					moh(1, i(64716)),	-- Bloodthirsty Gladiator's Clasp of Meditation
					moh(1, i(64720)),	-- Bloodthirsty Gladiator's Cord of Accuracy
					moh(1, i(64721)),	-- Bloodthirsty Gladiator's Cord of Cruelty
					moh(1, i(64722)),	-- Bloodthirsty Gladiator's Cord of Meditation
					moh(1, i(64753)),	-- Bloodthirsty Gladiator's Girdle of Cruelty
					moh(1, i(64754)),	-- Bloodthirsty Gladiator's Girdle of Prowess
					moh(1, i(64781)),	-- Bloodthirsty Gladiator's Links of Accuracy
					moh(1, i(64782)),	-- Bloodthirsty Gladiator's Links of Cruelty
					moh(1, i(64865)),	-- Bloodthirsty Gladiator's Waistband of Accuracy
					moh(1, i(64866)),	-- Bloodthirsty Gladiator's Waistband of Cruelty
					moh(1, i(64867)),	-- Bloodthirsty Gladiator's Waistguard of Cruelty
					moh(1, i(64868)),	-- Bloodthirsty Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					moh(2, i(64702)),	-- Bloodthirsty Gladiator's Boots of Alacrity
					moh(2, i(64703)),	-- Bloodthirsty Gladiator's Boots of Cruelty
					moh(2, i(64750)),	-- Bloodthirsty Gladiator's Footguards of Alacrity
					moh(2, i(64751)),	-- Bloodthirsty Gladiator's Footguards of Meditation
					moh(2, i(64756)),	-- Bloodthirsty Gladiator's Greaves of Alacrity
					moh(2, i(64757)),	-- Bloodthirsty Gladiator's Greaves of Meditation
					moh(2, i(64834)),	-- Bloodthirsty Gladiator's Sabatons of Alacrity
					moh(2, i(64835)),	-- Bloodthirsty Gladiator's Sabatons of Alacrity
					moh(2, i(64836)),	-- Bloodthirsty Gladiator's Sabatons of Cruelty
					moh(2, i(64837)),	-- Bloodthirsty Gladiator's Sabatons of Meditation
					moh(2, i(64862)),	-- Bloodthirsty Gladiator's Treads of Alacrity
					moh(2, i(64863)),	-- Bloodthirsty Gladiator's Treads of Cruelty
					moh(2, i(64864)),	-- Bloodthirsty Gladiator's Treads of Meditation
					moh(2, i(64869)),	-- Bloodthirsty Gladiator's Warboots of Alacrity
					moh(2, i(64870)),	-- Bloodthirsty Gladiator's Warboots of Cruelty
				}),
				filter(NECK_F, bubbleDown({ ["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 }, }, {
					i(64713),	-- Bloodthirsty Gladiator's Choker of Accuracy
					i(64714),	-- Bloodthirsty Gladiator's Choker of Proficiency
					i(64800),	-- Bloodthirsty Gladiator's Necklace of Proficiency
					i(64801),	-- Bloodthirsty Gladiator's Necklace of Prowess
					i(64807),	-- Bloodthirsty Gladiator's Pendant of Alacrity
					i(64808),	-- Bloodthirsty Gladiator's Pendant of Diffusion
					i(64809),	-- Bloodthirsty Gladiator's Pendant of Meditation
				})),
				filter(FINGER_F, bubbleDown({ ["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 }, }, {
					i(64690),	-- Bloodthirsty Gladiator's Band of Accuracy
					i(64691),	-- Bloodthirsty Gladiator's Band of Cruelty
					i(64692),	-- Bloodthirsty Gladiator's Band of Meditation
					i(64832),	-- Bloodthirsty Gladiator's Ring of Accuracy
					i(64833),	-- Bloodthirsty Gladiator's Ring of Cruelty
					i(64851),	-- Bloodthirsty Gladiator's Signet of Accuracy
					i(64852),	-- Bloodthirsty Gladiator's Signet of Cruelty
				})),
				filter(THROWN, bubbleDown({ ["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 }, }, {
					i(64759),	-- Bloodthirsty Gladiator's Hatchet (Throw wep)
					i(64871),	-- Bloodthirsty Gladiator's War Edge (Throw wep)
				})),
				filter(RELICS_F, bubbleDown({ ["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 }, }, {
					i(64819),	-- Bloodthirsty Gladiator's Relic of Conquest
					i(64820),	-- Bloodthirsty Gladiator's Relic of Dominance
					i(64821),	-- Bloodthirsty Gladiator's Relic of Salvation
					i(64822),	-- Bloodthirsty Gladiator's Relic of Triumph
				})),
				filter(TRINKET_F, bubbleDown({ ["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 }, }, {
					i(64687),	-- Bloodthirsty Gladiator's Badge of Conquest
					i(64688),	-- Bloodthirsty Gladiator's Badge of Dominance
					i(64689),	-- Bloodthirsty Gladiator's Badge of Victory
					i(64740),	-- Bloodthirsty Gladiator's Emblem of Cruelty
					i(64741),	-- Bloodthirsty Gladiator's Emblem of Meditation
					i(64742),	-- Bloodthirsty Gladiator's Emblem of Tenacity
					i(64761),	-- Bloodthirsty Gladiator's Insignia of Conquest
					i(64762),	-- Bloodthirsty Gladiator's Insignia of Dominance
					i(64763),	-- Bloodthirsty Gladiator's Insignia of Victory
					i(69787),	-- Bloodthirsty Gladiator's Mark of Cruelty
					i(69789),	-- Bloodthirsty Gladiator's Mark of Meditation
					i(69788),	-- Bloodthirsty Gladiator's Mark of Tenacity
					i(64790),	-- Bloodthirsty Gladiator's Medallion of Cruelty (A)
					i(64791),	-- Bloodthirsty Gladiator's Medallion of Meditation (A)
					i(64793),	-- Bloodthirsty Gladiator's Medallion of Tenacity (A)
					i(64789),	-- Bloodthirsty Gladiator's Medallion of Cruelty (H)
					i(64792),	-- Bloodthirsty Gladiator's Medallion of Meditation (H)
					i(64794),	-- Bloodthirsty Gladiator's Medallion of Tenacity (H)
					i(69790),	-- Bloodthirsty Gladiator's Symbol of Cruelty
					i(69792),	-- Bloodthirsty Gladiator's Symbol of Meditation
					i(69791),	-- Bloodthirsty Gladiator's Symbol of Tenacity
				})),
			})),
			n(PVP_GLADIATOR, {
				n(WEAPONS, bubbleDownSelf({
					-- #if ANYCLASSIC
					["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
					-- #endif
				}, {
					moh(80, iensemble(146641, {	-- Arsenal: Vicious Gladiator's Weapons
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(61360)),	-- Vicious Gladiator's Barrier
					moh(5, i(61351)),	-- Vicious Gladiator's Baton of Light
					moh(5, i(61341)),	-- Vicious Gladiator's Battle Staff
					moh(5, i(61336)),	-- Vicious Gladiator's Bonecracker
					moh(5, i(61339)),	-- Vicious Gladiator's Bonegrinder
					moh(5, i(61324)),	-- Vicious Gladiator's Cleaver
					moh(5, i(61326)),	-- Vicious Gladiator's Decapitator
					moh(2, i(61357)),	-- Vicious Gladiator's Endgame
					moh(5, i(61342)),	-- Vicious Gladiator's Energy Staff
					moh(5, i(61331)),	-- Vicious Gladiator's Fleshslicer
					moh(5, i(61338)),	-- Vicious Gladiator's Gavel
					moh(5, i(61346)),	-- Vicious Gladiator's Greatsword
					moh(5, i(61325)),	-- Vicious Gladiator's Hacker
					moh(5, i(61355)),	-- Vicious Gladiator's Heavy Crossbow
					moh(5, i(61353)),	-- Vicious Gladiator's Longbow
					moh(5, i(61340)),	-- Vicious Gladiator's Pike
					moh(5, i(61335)),	-- Vicious Gladiator's Pummeler
					moh(5, i(61345)),	-- Vicious Gladiator's Quickblade
					moh(2, i(61361)),	-- Vicious Gladiator's Redoubt
					moh(2, i(61358)),	-- Vicious Gladiator's Reprieve
					moh(5, i(61354)),	-- Vicious Gladiator's Rifle
					moh(5, i(61333)),	-- Vicious Gladiator's Right Render
					moh(5, i(61330)),	-- Vicious Gladiator's Ripper
					moh(5, i(61327)),	-- Vicious Gladiator's Shanker
					moh(2, i(61359)),	-- Vicious Gladiator's Shield Wall
					moh(5, i(61328)),	-- Vicious Gladiator's Shiv
					moh(5, i(61332)),	-- Vicious Gladiator's Slasher
					moh(5, i(61344)),	-- Vicious Gladiator's Slicer
					moh(5, i(61329)),	-- Vicious Gladiator's Spellblade
					moh(5, i(61343)),	-- Vicious Gladiator's Staff
					moh(5, i(61350)),	-- Vicious Gladiator's Touch of Defeat
				})),
				cl(DEATHKNIGHT, {
					moh(12, iensemble(146523, {	-- Ensemble: Vicious Gladiator's Dreadplate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(60408, {	-- Vicious Gladiator's Dreadplate Chestpiece
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60409)),	-- Vicious Gladiator's Dreadplate Gauntlets
					moh(3, i(60410, {	-- Vicious Gladiator's Dreadplate Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60411)),	-- Vicious Gladiator's Dreadplate Legguards
					moh(2, i(60412, {	-- Vicious Gladiator's Dreadplate Shoulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(DRUID, {
					moh(12, iensemble(146521, {	-- Ensemble: Vicious Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(60443)),	-- Vicious Gladiator's Dragonhide Gloves
					moh(3, i(60444, {	-- Vicious Gladiator's Dragonhide Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60445)),	-- Vicious Gladiator's Dragonhide Legguards
					moh(3, i(60446, {	-- Vicious Gladiator's Dragonhide Robes
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60447, {	-- Vicious Gladiator's Dragonhide Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60448)),	-- Vicious Gladiator's Kodohide Gloves
					moh(3, i(60449, {	-- Vicious Gladiator's Kodohide Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60450)),	-- Vicious Gladiator's Kodohide Legguards
					moh(3, i(60451, {	-- Vicious Gladiator's Kodohide Robes
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60452, {	-- Vicious Gladiator's Kodohide Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60453)),	-- Vicious Gladiator's Wyrmhide Gloves
					moh(3, i(60454, {	-- Vicious Gladiator's Wyrmhide Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60455)),	-- Vicious Gladiator's Wyrmhide Legguards
					moh(3, i(60456, {	-- Vicious Gladiator's Wyrmhide Robes
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60457, {	-- Vicious Gladiator's Wyrmhide Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(HUNTER, {
					moh(12, iensemble(146519, {	-- Ensemble: Vicious Gladiator's Chain Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(60423, {	-- Vicious Gladiator's Chain Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60424)),	-- Vicious Gladiator's Chain Gauntlets
					moh(3, i(60425, {	-- Vicious Gladiator's Chain Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60426)),	-- Vicious Gladiator's Chain Leggings
					moh(2, i(60427, {	-- Vicious Gladiator's Chain Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(MAGE, {
					moh(12, iensemble(146537, {	-- Ensemble: Vicious Gladiator's Silk Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(60467, {	-- Vicious Gladiator's Silk Amice
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60464, {	-- Vicious Gladiator's Silk Cowl
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60463)),	-- Vicious Gladiator's Silk Handguards
					moh(3, i(60466, {	-- Vicious Gladiator's Silk Robe
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60465)),	-- Vicious Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146535, {	-- Ensemble: Vicious Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(60601, {	-- Vicious Gladiator's Ornamented Chestguard
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60602)),	-- Vicious Gladiator's Ornamented Gloves
					moh(3, i(60603, {	-- Vicious Gladiator's Ornamented Headcover
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60604)),	-- Vicious Gladiator's Ornamented Legplates
					moh(2, i(60605, {	-- Vicious Gladiator's Ornamented Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60413, {	-- Vicious Gladiator's Scaled Chestpiece
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60414)),	-- Vicious Gladiator's Scaled Gauntlets
					moh(3, i(60415, {	-- Vicious Gladiator's Scaled Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60416)),	-- Vicious Gladiator's Scaled Legguards
					moh(2, i(60417, {	-- Vicious Gladiator's Scaled Shoulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(PRIEST, {
					moh(12, iensemble(146533, {	-- Ensemble: Vicious Gladiator's Satin Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(60468)),	-- Vicious Gladiator's Mooncloth Gloves
					moh(3, i(60469, {	-- Vicious Gladiator's Mooncloth Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60470)),	-- Vicious Gladiator's Mooncloth Leggings
					moh(2, i(60472, {	-- Vicious Gladiator's Mooncloth Mantle
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60471, {	-- Vicious Gladiator's Mooncloth Robe
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60473)),	-- Vicious Gladiator's Satin Gloves
					moh(3, i(60474, {	-- Vicious Gladiator's Satin Hood
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60475)),	-- Vicious Gladiator's Satin Leggings
					moh(2, i(60477, {	-- Vicious Gladiator's Satin Mantle
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60476, {	-- Vicious Gladiator's Satin Robe
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(ROGUE, {
					moh(12, iensemble(146527, {	-- Ensemble: Vicious Gladiator's Leather Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(60459)),	-- Vicious Gladiator's Leather Gloves
					moh(3, i(60460, {	-- Vicious Gladiator's Leather Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60461)),	-- Vicious Gladiator's Leather Legguards
					moh(2, i(60462, {	-- Vicious Gladiator's Leather Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60458, {	-- Vicious Gladiator's Leather Tunic
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146531, {	-- Ensemble: Vicious Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(60433, {	-- Vicious Gladiator's Linked Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60434)),	-- Vicious Gladiator's Linked Gauntlets
					moh(3, i(60435, {	-- Vicious Gladiator's Linked Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60436)),	-- Vicious Gladiator's Linked Leggings
					moh(2, i(60437, {	-- Vicious Gladiator's Linked Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60438, {	-- Vicious Gladiator's Mail Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60439)),	-- Vicious Gladiator's Mail Gauntlets
					moh(3, i(60440, {	-- Vicious Gladiator's Mail Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60441)),	-- Vicious Gladiator's Mail Leggings
					moh(2, i(60442, {	-- Vicious Gladiator's Mail Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60428, {	-- Vicious Gladiator's Ringmail Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60429)),	-- Vicious Gladiator's Ringmail Gauntlets
					moh(3, i(60430, {	-- Vicious Gladiator's Ringmail Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60431)),	-- Vicious Gladiator's Ringmail Leggings
					moh(2, i(60432, {	-- Vicious Gladiator's Ringmail Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146525, {	-- Ensemble: Vicious Gladiator's Felweave Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(60482, {	-- Vicious Gladiator's Felweave Amice
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60479, {	-- Vicious Gladiator's Felweave Cowl
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60478)),	-- Vicious Gladiator's Felweave Handguards
					moh(3, i(60481, {	-- Vicious Gladiator's Felweave Raiment
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60480)),	-- Vicious Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146529, {	-- Ensemble: Vicious Gladiator's Plate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(60418, {	-- Vicious Gladiator's Plate Chestpiece
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(60419)),	-- Vicious Gladiator's Plate Gauntlets
					moh(3, i(60420, {	-- Vicious Gladiator's Plate Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(60421)),	-- Vicious Gladiator's Plate Legguards
					moh(2, i(60422, {	-- Vicious Gladiator's Plate Shoulders
						-- #if ANYCLASSIC
						["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				n(BACK, {
					moh(1, i(60783)),	-- Vicious Gladiator's Cape of Cruelty
					moh(1, i(60779)),	-- Vicious Gladiator's Cape of Prowess
					moh(1, i(60776)),	-- Vicious Gladiator's Cloak of Alacrity
					moh(1, i(60778)),	-- Vicious Gladiator's Cloak of Prowess
					moh(1, i(60786)),	-- Vicious Gladiator's Drape of Diffusion
					moh(1, i(60788)),	-- Vicious Gladiator's Drape of Meditation
					moh(1, i(60787)),	-- Vicious Gladiator's Drape of Prowess
				}),
				n(WRIST, {
					moh(1, i(60535)),	-- Vicious Gladiator's Armbands of Meditation
					moh(1, i(60569)),	-- Vicious Gladiator's Armbands of Prowess
					moh(1, i(60512)),	-- Vicious Gladiator's Armplates of Alacrity
					moh(1, i(60523)),	-- Vicious Gladiator's Armplates of Proficiency
					moh(1, i(60591)),	-- Vicious Gladiator's Armwraps of Accuracy
					moh(1, i(60594)),	-- Vicious Gladiator's Armwraps of Alacrity
					moh(1, i(60582)),	-- Vicious Gladiator's Bindings of Meditation
					moh(1, i(60611)),	-- Vicious Gladiator's Bindings of Prowess
					moh(1, i(60541)),	-- Vicious Gladiator's Bracers of Meditation
					moh(1, i(60520)),	-- Vicious Gladiator's Bracers of Prowess
					moh(1, i(60628)),	-- Vicious Gladiator's Cuffs of Accuracy
					moh(1, i(60635)),	-- Vicious Gladiator's Cuffs of Meditation
					moh(1, i(60634)),	-- Vicious Gladiator's Cuffs of Prowess
					moh(1, i(60565)),	-- Vicious Gladiator's Wristguards of Accuracy
					moh(1, i(60559)),	-- Vicious Gladiator's Wristguards of Alacrity
				}),
				n(WAIST, {
					moh(1, i(60583)),	-- Vicious Gladiator's Belt of Cruelty
					moh(1, i(60580)),	-- Vicious Gladiator's Belt of Meditation
					moh(1, i(60505)),	-- Vicious Gladiator's Clasp of Cruelty
					moh(1, i(60539)),	-- Vicious Gladiator's Clasp of Meditation
					moh(1, i(60626)),	-- Vicious Gladiator's Cord of Accuracy
					moh(1, i(60612)),	-- Vicious Gladiator's Cord of Cruelty
					moh(1, i(60637)),	-- Vicious Gladiator's Cord of Meditation
					moh(1, i(60508)),	-- Vicious Gladiator's Girdle of Cruelty
					moh(1, i(60521)),	-- Vicious Gladiator's Girdle of Prowess
					moh(1, i(60564)),	-- Vicious Gladiator's Links of Accuracy
					moh(1, i(60555)),	-- Vicious Gladiator's Links of Cruelty
					moh(1, i(60589)),	-- Vicious Gladiator's Waistband of Accuracy
					moh(1, i(60586)),	-- Vicious Gladiator's Waistband of Cruelty
					moh(1, i(60536)),	-- Vicious Gladiator's Waistguard of Cruelty
					moh(1, i(60533)),	-- Vicious Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					moh(2, i(60593)),	-- Vicious Gladiator's Boots of Alacrity
					moh(2, i(60587)),	-- Vicious Gladiator's Boots of Cruelty
					moh(2, i(60607)),	-- Vicious Gladiator's Footguards of Alacrity
					moh(2, i(60581)),	-- Vicious Gladiator's Footguards of Meditation
					moh(2, i(60516)),	-- Vicious Gladiator's Greaves of Alacrity
					moh(2, i(60540)),	-- Vicious Gladiator's Greaves of Meditation
					moh(2, i(60557)),	-- Vicious Gladiator's Sabatons of Alacrity
					moh(2, i(60567)),	-- Vicious Gladiator's Sabatons of Alacrity
					moh(2, i(60554)),	-- Vicious Gladiator's Sabatons of Cruelty
					moh(2, i(60534)),	-- Vicious Gladiator's Sabatons of Meditation
					moh(2, i(60630)),	-- Vicious Gladiator's Treads of Alacrity
					moh(2, i(60613)),	-- Vicious Gladiator's Treads of Cruelty
					moh(2, i(60636)),	-- Vicious Gladiator's Treads of Meditation
					moh(2, i(60513)),	-- Vicious Gladiator's Warboots of Alacrity
					moh(2, i(60509)),	-- Vicious Gladiator's Warboots of Cruelty
				}),
				filter(NECK_F, {
					i(60673),	-- Vicious Gladiator's Choker of Accuracy
					i(60670),	-- Vicious Gladiator's Choker of Proficiency
					i(60669),	-- Vicious Gladiator's Necklace of Proficiency
					i(60668),	-- Vicious Gladiator's Necklace of Prowess
					i(60662),	-- Vicious Gladiator's Pendant of Alacrity
					i(60661),	-- Vicious Gladiator's Pendant of Diffusion
					i(60664),	-- Vicious Gladiator's Pendant of Meditation
				}),
				filter(FINGER_F, {
					i(60647),	-- Vicious Gladiator's Band of Accuracy
					i(60645),	-- Vicious Gladiator's Band of Cruelty
					i(60649),	-- Vicious Gladiator's Band of Meditation
					i(60658),	-- Vicious Gladiator's Ring of Accuracy
					i(60659),	-- Vicious Gladiator's Ring of Cruelty
					i(60651),	-- Vicious Gladiator's Signet of Accuracy
					i(60650),	-- Vicious Gladiator's Signet of Cruelty
				}),
				filter(THROWN, {
					un(REMOVED_FROM_GAME, i(61348)),	-- Vicious Gladiator's Hatchet (Throw wep)
					un(REMOVED_FROM_GAME, i(61347)),	-- Vicious Gladiator's War Edge (Throw wep)
				}),
				filter(RELICS_F, {
					un(REMOVED_FROM_GAME, i(61391)),	-- Vicious Gladiator's Relic of Conquest
					un(REMOVED_FROM_GAME, i(61388)),	-- Vicious Gladiator's Relic of Dominance
					un(REMOVED_FROM_GAME, i(61389)),	-- Vicious Gladiator's Relic of Salvation
					un(REMOVED_FROM_GAME, i(61390)),	-- Vicious Gladiator's Relic of Triumph
				}),
				filter(TRINKET_F, {
					i(61033),									-- Vicious Gladiator's Badge of Conquest
					i(61026),									-- Vicious Gladiator's Emblem of Cruelty
					i(61031),									-- Vicious Gladiator's Emblem of Meditation
					i(61032),									-- Vicious Gladiator's Emblem of Tenacity
					i(61047),									-- Vicious Gladiator's Insignia of Conquest
					i(60794),									-- Vicious Gladiator's Medallion of Cruelty (A)
					i(60799),									-- Vicious Gladiator's Medallion of Meditation (A)
					i(60800),									-- Vicious Gladiator's Medallion of Tenacity (A)
					i(60801),									-- Vicious Gladiator's Medallion of Cruelty (H)
					i(60806),									-- Vicious Gladiator's Medallion of Meditation (H)
					i(60807),									-- Vicious Gladiator's Medallion of Tenacity (H)
					i(61045),									-- Vicious Gladiator's Insignia of Dominance
					i(61046),									-- Vicious Gladiator's Insignia of Victory
				}),
			}),
			elitepvp(n(PVP_ELITE, bubbleDownSelf({
				["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0 },

				-- #if ANYCLASSIC
				["OnUpdate"] = VICIOUS_ELITE_ONUPDATE,
				-- #endif
			}, {
				-- Original Sources are:
				-- n51255 Lieutenant Tristia <Glorious Conquest Quartermaster> in Stormwind (Alliance)
				-- n46593 Doris Volanthius <Glorious Conquest Quartermaster> in Orgrimmar (Horde)
				n(WEAPONS, {
					i(67476),	-- Vicious Gladiator's Barrier
					i(67464),	-- Vicious Gladiator's Baton of Light
					i(67450),	-- Vicious Gladiator's Battle Staff
					i(67470),	-- Vicious Gladiator's Bonebracker
					i(67452),	-- Vicious Gladiator's Bonegrinder
					i(67474),	-- Vicious Gladiator's Cleaver
					i(67453),	-- Vicious Gladiator's Decapitator
					i(67479),	-- Vicious Gladiator's Endgame
					i(67449),	-- Vicious Gladiator's Engery Staff
					i(67459),	-- Vicious Gladiator's Fleshslicer
					i(67454),	-- Vicious Gladiator's Gavel
					i(67447),	-- Vicious Gladiator's Greatsword
					i(67473),	-- Vicious Gladiator's Hacker
					i(67462),	-- Vicious Gladiator's Heavy Crossbow
					i(67461),	-- Vicious Gladiator's Longbow
					i(67451),	-- Vicious Gladiator's Pike
					i(67471),	-- Vicious Gladiator's Pummeler
					i(67468),	-- Vicious Gladiator's Quickblade
					i(67475),	-- Vicious Gladiator's Redoubt
					i(67478),	-- Vicious Gladiator's Reprieve
					i(67463),	-- Vicious Gladiator's Rifle
					i(67455),	-- Vicious Gladiator's Right Render
					i(67456),	-- Vicious Gladiator's Ripper
					i(67472),	-- Vicious Gladiator's Shanker
					i(67477),	-- Vicious Gladiator's Shield Wall
					i(67460),	-- Vicious Gladiator's Shiv
					i(67458),	-- Vicious Gladiator's Slasher
					i(67469),	-- Vicious Gladiator's Slicer
					i(67457),	-- Vicious Gladiator's Spellblade
					i(67448),	-- Vicious Gladiator's Staff
					i(67465),	-- Vicious Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(65597),	-- Vicious Gladiator's Dreadplate Chestpiece
					i(65596),	-- Vicious Gladiator's Dreadplate Gauntlets
					i(65595),	-- Vicious Gladiator's Dreadplate Helm
					i(65594),	-- Vicious Gladiator's Dreadplate Legguards
					i(65593),	-- Vicious Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					i(65589),	-- Vicious Gladiator's Dragonhide Gloves
					i(65588),	-- Vicious Gladiator's Dragonhide Helm
					i(65587),	-- Vicious Gladiator's Dragonhide Legguards
					i(65542),	-- Vicious Gladiator's Dragonhide Robes
					i(65541),	-- Vicious Gladiator's Dragonhide Spaulders
					i(65540),	-- Vicious Gladiator's Kodohide Gloves
					i(65539),	-- Vicious Gladiator's Kodohide Helm
					i(65535),	-- Vicious Gladiator's Kodohide Legguards
					i(65534),	-- Vicious Gladiator's Kodohide Robes
					i(65533),	-- Vicious Gladiator's Kodohide Spaulders
					i(65532),	-- Vicious Gladiator's Wyrmhide Gloves
					i(65531),	-- Vicious Gladiator's Wyrmhide Helm
					i(65552),	-- Vicious Gladiator's Wyrmhide Legguards
					i(65551),	-- Vicious Gladiator's Wyrmhide Robes
					i(65550),	-- Vicious Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					i(65579),	-- Vicious Gladiator's Chain Armor
					i(65544),	-- Vicious Gladiator's Chain Gauntlets
					i(65543),	-- Vicious Gladiator's Chain Helm
					i(65538),	-- Vicious Gladiator's Chain Leggings
					i(65537),	-- Vicious Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					i(65557),	-- Vicious Gladiator's Silk Amice
					i(65565),	-- Vicious Gladiator's Silk Cowl
					i(65566),	-- Vicious Gladiator's Silk Handguards
					i(65558),	-- Vicious Gladiator's Silk Robe
					i(65564),	-- Vicious Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					i(65522),	-- Vicious Gladiator's Ornamented Chestguard
					i(65521),	-- Vicious Gladiator's Ornamented Gloves
					i(65520),	-- Vicious Gladiator's Ornamented Headcover
					i(65519),	-- Vicious Gladiator's Ornamented Legplates
					i(65518),	-- Vicious Gladiator's Ornamented Spaulders
					i(65592),	-- Vicious Gladiator's Scaled Chestpiece
					i(65591),	-- Vicious Gladiator's Scaled Gauntlets
					i(65590),	-- Vicious Gladiator's Scaled Helm
					i(65586),	-- Vicious Gladiator's Scaled Legguards
					i(65585),	-- Vicious Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					i(65556),	-- Vicious Gladiator's Mooncloth Gloves
					i(65555),	-- Vicious Gladiator's Mooncloth Helm
					i(65554),	-- Vicious Gladiator's Mooncloth Leggings
					i(65578),	-- Vicious Gladiator's Mooncloth Mantle
					i(65553),	-- Vicious Gladiator's Mooncloth Robe
					i(65577),	-- Vicious Gladiator's Satin Gloves
					i(65576),	-- Vicious Gladiator's Satin Hood
					i(65575),	-- Vicious Gladiator's Satin Leggings
					i(65573),	-- Vicious Gladiator's Satin Mantle
					i(65574),	-- Vicious Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					i(65548),	-- Vicious Gladiator's Leather Gloves
					i(65547),	-- Vicious Gladiator's Leather Helm
					i(65546),	-- Vicious Gladiator's Leather Legguards
					i(65545),	-- Vicious Gladiator's Leather Spaulders
					i(65549),	-- Vicious Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					i(65563),	-- Vicious Gladiator's Linked Armor
					i(65562),	-- Vicious Gladiator's Linked Gauntlets
					i(65561),	-- Vicious Gladiator's Linked Helm
					i(65560),	-- Vicious Gladiator's Linked Leggings
					i(65559),	-- Vicious Gladiator's Linked Spaulders
					i(65527),	-- Vicious Gladiator's Mail Armor
					i(65526),	-- Vicious Gladiator's Mail Gauntlets
					i(65525),	-- Vicious Gladiator's Mail Helm
					i(65524),	-- Vicious Gladiator's Mail Leggings
					i(65523),	-- Vicious Gladiator's Mail Spaulders
					i(65536),	-- Vicious Gladiator's Ringmail Armor
					i(65570),	-- Vicious Gladiator's Ringmail Gauntlets
					i(65569),	-- Vicious Gladiator's Ringmail Helm
					i(65568),	-- Vicious Gladiator's Ringmail Leggings
					i(65567),	-- Vicious Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					i(65528),	-- Vicious Gladiator's Felweave Amice
					i(65571),	-- Vicious Gladiator's Felweave Cowl
					i(65572),	-- Vicious Gladiator's Felweave Handguards
					i(65529),	-- Vicious Gladiator's Felweave Rainment
					i(65530),	-- Vicious Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					i(65584),	-- Vicious Gladiator's Plate Chestpiece
					i(65583),	-- Vicious Gladiator's Plate Gauntlets
					i(65582),	-- Vicious Gladiator's Plate Helm
					i(65581),	-- Vicious Gladiator's Plate Legguards
					i(65580),	-- Vicious Gladiator's Plate Shoulders
				}),
				n(FEET, {
					i(65610),	-- Vicious Gladiator's Boots of Alacrity
					i(65609),	-- Vicious Gladiator's Boots of Cruelty
					i(65602),	-- Vicious Gladiator's Footguard of Alacrity
					i(65601),	-- Vicious Gladiator's Footguard of Meditation
					i(65605),	-- Vicious Gladiator's Greaves of Alacrity
					i(65606),	-- Vicious Gladiator's Greaves of Meditation
					i(65611),	-- Vicious Gladiator's Sabatons of Alacrity
					i(65604),	-- Vicious Gladiator's Sabatons of Alacrity
					i(65603),	-- Vicious Gladiator's Sabatons of Cruelty
					i(65612),	-- Vicious Gladiator's Sabatons of Meditation
					i(65599),	-- Vicious Gladiator's Treads of Alacrity
					i(65598),	-- Vicious Gladiator's Treads of Cruelty
					i(65600),	-- Vicious Gladiator's Treads of Meditation
					i(65608),	-- Vicious Gladiator's Warboots of Alacrity
					i(65607),	-- Vicious Gladiator's Warboots of Cruelty
				}),
				filter(THROWN, {
					i(67467),	-- Vicious Gladiator's War Edge (Throw wep)
					i(67466),	-- Vicious Gladiator's Hatchet (Throw wep)
				}),
			}))),
		})),
		applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(SEASON_RUTHLESS, {
			n(ACHIEVEMENTS, {
				ach(11715, {["timeline"] = { ADDED_7_2_0 }}),	-- (Ruth)less is More (PvP Season 10)
			}),
			n(ACHIEVEMENTS, elitepvp(bubbleDown({
				["timeline"] = { ADDED_4_2_0, REMOVED_4_3_0 },
			}, {
				-- #if ANYCLASSIC
				ach(41334),	-- Challenger: Season 10
				ach(41332),	-- Rival: Season 10
				ach(41333),	-- Duelist: Season 10
				ach(41336, {	-- Gladiator: Season 10
					i(71954),	-- Ruthless Gladiator's Twilight Drake
				}),
				-- #endif
				ach(6316, {	-- Hero of the Alliance: Ruthless
					["races"] = ALLIANCE_ONLY,
				}),
				ach(6317, {	-- Hero of the Horde: Ruthless
					["races"] = HORDE_ONLY,
				}),
				ach(6124, {	-- Ruthless Gladiator: Cataclysm Season 2
					title(192),	-- Ruthless Gladiator <Name>
				}),
				ach(6322, {	-- Ruthless Gladiator's Twilight Drake
					["provider"] = { "i", 71954 },	-- Ruthless Gladiator's Twilight Drake
					["filterID"] = MOUNTS,
				}),
				i(71954, {	-- Ruthless Gladiator's Twilight Drake
					["description"] = "Awarded to members of the Arena teams during Cata Season 2 that were in the 0.5% bracket of their battlegroup.",
				}),
			}))),
			n(PVP_HONOR, bubbleDownSelf({
				-- #if ANYCLASSIC
				["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
				-- #endif
			}, {
				cl(DEATHKNIGHT, {
					i(70558),	-- Vicious Gladiator's Dreadplate Chestpiece
					i(70559),	-- Vicious Gladiator's Dreadplate Gauntlets
					i(70560),	-- Vicious Gladiator's Dreadplate Helm
					i(70561),	-- Vicious Gladiator's Dreadplate Legguards
					i(70562),	-- Vicious Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					i(70550),	-- Vicious Gladiator's Dragonhide Gloves
					i(70551),	-- Vicious Gladiator's Dragonhide Helm
					i(70552),	-- Vicious Gladiator's Dragonhide Legguards
					i(70553),	-- Vicious Gladiator's Dragonhide Robes
					i(70554),	-- Vicious Gladiator's Dragonhide Spaulders
					i(70580),	-- Vicious Gladiator's Kodohide Gloves
					i(70581),	-- Vicious Gladiator's Kodohide Helm
					i(70582),	-- Vicious Gladiator's Kodohide Legguards
					i(70583),	-- Vicious Gladiator's Kodohide Robes
					i(70584),	-- Vicious Gladiator's Kodohide Spaulders
					i(70671),	-- Vicious Gladiator's Wyrmhide Gloves
					i(70672),	-- Vicious Gladiator's Wyrmhide Helm
					i(70673),	-- Vicious Gladiator's Wyrmhide Legguards
					i(70674),	-- Vicious Gladiator's Wyrmhide Robes
					i(70675),	-- Vicious Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					i(70533),	-- Vicious Gladiator's Chain Armor
					i(70534),	-- Vicious Gladiator's Chain Gauntlets
					i(70535),	-- Vicious Gladiator's Chain Helm
					i(70536),	-- Vicious Gladiator's Chain Leggings
					i(70537),	-- Vicious Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					i(70655),	-- Vicious Gladiator's Silk Amice
					i(70656),	-- Vicious Gladiator's Silk Cowl
					i(70657),	-- Vicious Gladiator's Silk Handguards
					i(70658),	-- Vicious Gladiator's Silk Robe
					i(70659),	-- Vicious Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					i(70615),	-- Vicious Gladiator's Ornamented Chestguard
					i(70616),	-- Vicious Gladiator's Ornamented Gloves
					i(70617),	-- Vicious Gladiator's Ornamented Headcover
					i(70618),	-- Vicious Gladiator's Ornamented Legplates
					i(70619),	-- Vicious Gladiator's Ornamented Spaulders
					i(70648),	-- Vicious Gladiator's Scaled Chestpiece
					i(70649),	-- Vicious Gladiator's Scaled Gauntlets
					i(70650),	-- Vicious Gladiator's Scaled Helm
					i(70651),	-- Vicious Gladiator's Scaled Legguards
					i(70652),	-- Vicious Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					i(70608),	-- Vicious Gladiator's Mooncloth Gloves
					i(70609),	-- Vicious Gladiator's Mooncloth Helm
					i(70610),	-- Vicious Gladiator's Mooncloth Leggings
					i(70611),	-- Vicious Gladiator's Mooncloth Mantle
					i(70612),	-- Vicious Gladiator's Mooncloth Robe
					i(70643),	-- Vicious Gladiator's Satin Gloves
					i(70644),	-- Vicious Gladiator's Satin Hood
					i(70645),	-- Vicious Gladiator's Satin Leggings
					i(70646),	-- Vicious Gladiator's Satin Mantle
					i(70647),	-- Vicious Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					i(70585),	-- Vicious Gladiator's Leather Gloves
					i(70586),	-- Vicious Gladiator's Leather Helm
					i(70587),	-- Vicious Gladiator's Leather Legguards
					i(70588),	-- Vicious Gladiator's Leather Spaulders
					i(70589),	-- Vicious Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					i(70590),	-- Vicious Gladiator's Linked Armor
					i(70591),	-- Vicious Gladiator's Linked Gauntlets
					i(70592),	-- Vicious Gladiator's Linked Helm
					i(70593),	-- Vicious Gladiator's Linked Leggings
					i(70594),	-- Vicious Gladiator's Linked Spaulders
					i(70597),	-- Vicious Gladiator's Mail Armor
					i(70598),	-- Vicious Gladiator's Mail Gauntlets
					i(70599),	-- Vicious Gladiator's Mail Helm
					i(70600),	-- Vicious Gladiator's Mail Leggings
					i(70601),	-- Vicious Gladiator's Mail Spaulders
					i(70632),	-- Vicious Gladiator's Ringmail Armor
					i(70633),	-- Vicious Gladiator's Ringmail Gauntlets
					i(70634),	-- Vicious Gladiator's Ringmail Helm
					i(70635),	-- Vicious Gladiator's Ringmail Leggings
					i(70636),	-- Vicious Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					i(70566),	-- Vicious Gladiator's Felweave Amice
					i(70567),	-- Vicious Gladiator's Felweave Cowl
					i(70568),	-- Vicious Gladiator's Felweave Handguards
					i(70569),	-- Vicious Gladiator's Felweave Rainment
					i(70570),	-- Vicious Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					i(70623),	-- Vicious Gladiator's Plate Chestpiece
					i(70624),	-- Vicious Gladiator's Plate Gauntlets
					i(70625),	-- Vicious Gladiator's Plate Helm
					i(70626),	-- Vicious Gladiator's Plate Legguards
					i(70627),	-- Vicious Gladiator's Plate Shoulders
				}),
				n(WRIST, {
					i(70511),	-- Vicious Gladiator's Armbands of Meditation
					i(70512),	-- Vicious Gladiator's Armbands of Prowess
					i(70513),	-- Vicious Gladiator's Armplates of Alacrity
					i(70514),	-- Vicious Gladiator's Armplates of Proficiency
					i(70515),	-- Vicious Gladiator's Armwraps of Accuracy
					i(70516),	-- Vicious Gladiator's Armwraps of Alacrity
					i(70525),	-- Vicious Gladiator's Bindings of Meditation
					i(70526),	-- Vicious Gladiator's Bindings of Prowess
					i(70529),	-- Vicious Gladiator's Bracers of Meditation
					i(70530),	-- Vicious Gladiator's Bracers of Prowess
					i(70547, {	-- Vicious Gladiator's Cuffs of Accuracy
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Mage Ensemble.",
					}),
					i(70548, {	-- Vicious Gladiator's Cuffs of Meditation
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Priest Ensemble.",
					}),
					i(70549, {	-- Vicious Gladiator's Cuffs of Prowess
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Warlock Ensemble.",
					}),
					i(70669),	-- Vicious Gladiator's Wristguards of Accuracy
					i(70670),	-- Vicious Gladiator's Wristguards of Alacrity
				}),
				n(WAIST, {
					i(70523),	-- Vicious Gladiator's Belt of Cruelty
					i(70524),	-- Vicious Gladiator's Belt of Meditation
					i(70540),	-- Vicious Gladiator's Clasp of Cruelty
					i(70541),	-- Vicious Gladiator's Clasp of Meditation
					i(70544, {	-- Vicious Gladiator's Cord of Accuracy
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Warlock Ensemble.",
					}),
					i(70545, {	-- Vicious Gladiator's Cord of Cruelty
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Mage Ensemble.",
					}),
					i(70546, {	-- Vicious Gladiator's Cord of Meditation
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Priest Ensemble.",
					}),
					i(70573),	-- Vicious Gladiator's Girdle of Cruelty
					i(70574),	-- Vicious Gladiator's Girdle of Prowess
					i(70595),	-- Vicious Gladiator's Links of Accuracy
					i(70596),	-- Vicious Gladiator's Links of Cruelty
					i(70663),	-- Vicious Gladiator's Waistband of Accuracy
					i(70664),	-- Vicious Gladiator's Waistband of Cruelty
					i(70665),	-- Vicious Gladiator's Waistguard of Cruelty
					i(70666),	-- Vicious Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					i(70527),	-- Vicious Gladiator's Boots of Alacrity
					i(70528),	-- Vicious Gladiator's Boots of Cruelty
					i(70571),	-- Vicious Gladiator's Footguards of Alacrity
					i(70572),	-- Vicious Gladiator's Footguards of Meditation
					i(70575),	-- Vicious Gladiator's Greaves of Alacrity
					i(70576),	-- Vicious Gladiator's Greaves of Meditation
					i(70639),	-- Vicious Gladiator's Sabatons of Alacrity
					i(70640),	-- Vicious Gladiator's Sabatons of Alacrity
					i(70641),	-- Vicious Gladiator's Sabatons of Cruelty
					i(70642),	-- Vicious Gladiator's Sabatons of Meditation
					i(70660, {	-- Vicious Gladiator's Treads of Alacrity
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Warlock Ensemble.",
					}),
					i(70661, {	-- Vicious Gladiator's Treads of Cruelty
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Mage Ensemble.",
					}),
					i(70662, {	-- Vicious Gladiator's Treads of Meditation
						["description"] = "This item is only obtainable via the Bloodthirsty Gladiator Priest Ensemble.",
					}),
					i(70667),	-- Vicious Gladiator's Warboots of Alacrity
					i(70668),	-- Vicious Gladiator's Warboots of Cruelty
				}),
				n(BACK, {
					un(REMOVED_FROM_GAME, i(70531)),	-- Vicious Gladiator's Cape of Cruelty
					un(REMOVED_FROM_GAME, i(70532)),	-- Vicious Gladiator's Cape of Prowess
					un(REMOVED_FROM_GAME, i(70542)),	-- Vicious Gladiator's Cloak of Alacrity
					un(REMOVED_FROM_GAME, i(70543)),	-- Vicious Gladiator's Cloak of Prowess
					un(REMOVED_FROM_GAME, i(70555)),	-- Vicious Gladiator's Drape of Diffusion
					un(REMOVED_FROM_GAME, i(70556)),	-- Vicious Gladiator's Drape of Meditation
					un(REMOVED_FROM_GAME, i(70557)),	-- Vicious Gladiator's Drape of Prowess
				}),
				filter(NECK_F, {
					un(REMOVED_FROM_GAME, i(70538)),	-- Vicious Gladiator's Choker of Accuracy
					un(REMOVED_FROM_GAME, i(70539)),	-- Vicious Gladiator's Choker of Proficiency
					un(REMOVED_FROM_GAME, i(70613)),	-- Vicious Gladiator's Necklace of Proficiency
					un(REMOVED_FROM_GAME, i(70614)),	-- Vicious Gladiator's Necklace of Prowess
					un(REMOVED_FROM_GAME, i(70620)),	-- Vicious Gladiator's Pendant of Alacrity
					un(REMOVED_FROM_GAME, i(70621)),	-- Vicious Gladiator's Pendant of Diffusion
					un(REMOVED_FROM_GAME, i(70622)),	-- Vicious Gladiator's Pendant of Meditation
				}),
				filter(FINGER_F, {
					un(REMOVED_FROM_GAME, i(70520)),	-- Vicious Gladiator's Band of Accuracy
					un(REMOVED_FROM_GAME, i(70521)),	-- Vicious Gladiator's Band of Cruelty
					un(REMOVED_FROM_GAME, i(70522)),	-- Vicious Gladiator's Band of Meditation
					un(REMOVED_FROM_GAME, i(70637)),	-- Vicious Gladiator's Ring of Accuracy
					un(REMOVED_FROM_GAME, i(70638)),	-- Vicious Gladiator's Ring of Cruelty
					un(REMOVED_FROM_GAME, i(70653)),	-- Vicious Gladiator's Signet of Accuracy
					un(REMOVED_FROM_GAME, i(70654)),	-- Vicious Gladiator's Signet of Cruelty
				}),
				filter(RELICS_F, {
					un(REMOVED_FROM_GAME, i(70628)),	-- Vicious Gladiator's Relic of Conquest
					un(REMOVED_FROM_GAME, i(70629)),	-- Vicious Gladiator's Relic of Dominance
					un(REMOVED_FROM_GAME, i(70630)),	-- Vicious Gladiator's Relic of Salvation
					un(REMOVED_FROM_GAME, i(70631)),	-- Vicious Gladiator's Relic of Triumph
				}),
				filter(TRINKET_F, {
					un(REMOVED_FROM_GAME, i(70517)),	-- Vicious Gladiator's Badge of Conquest
					un(REMOVED_FROM_GAME, i(70518)),	-- Vicious Gladiator's Badge of Dominance
					un(REMOVED_FROM_GAME, i(70519)),	-- Vicious Gladiator's Badge of Victory
					un(REMOVED_FROM_GAME, i(70563)),	-- Vicious Gladiator's Emblem of Cruelty
					un(REMOVED_FROM_GAME, i(70564)),	-- Vicious Gladiator's Emblem of Meditation
					un(REMOVED_FROM_GAME, i(70565)),	-- Vicious Gladiator's Emblem of Tenacity
					un(REMOVED_FROM_GAME, i(70577)),	-- Vicious Gladiator's Insignia of Conquest
					un(REMOVED_FROM_GAME, i(70578)),	-- Vicious Gladiator's Insignia of Dominance
					un(REMOVED_FROM_GAME, i(70579)),	-- Vicious Gladiator's Insignia of Victory
					un(REMOVED_FROM_GAME, i(70603)),	-- Vicious Gladiator's Medallion of Cruelty (A)
					un(REMOVED_FROM_GAME, i(70604)),	-- Vicious Gladiator's Medallion of Meditation (A)
					un(REMOVED_FROM_GAME, i(70606)),	-- Vicious Gladiator's Medallion of Tenacity (A)
					un(REMOVED_FROM_GAME, i(70602)),	-- Vicious Gladiator's Medallion of Cruelty (H)
					un(REMOVED_FROM_GAME, i(70605)),	-- Vicious Gladiator's Medallion of Meditation (H)
					un(REMOVED_FROM_GAME, i(70607)),	-- Vicious Gladiator's Medallion of Tenacity (H)
				}),
			})),
			n(PVP_GLADIATOR, {
				n(WEAPONS, bubbleDownSelf({
					-- #if ANYCLASSIC
					["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
					-- #endif
				}, {
					moh(80, iensemble(146640, {	-- Arsenal: Ruthless Gladiator's Weapons
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(70242)),	-- Ruthless Gladiator's Barrier
					moh(5, i(70235)),	-- Ruthless Gladiator's Baton of Light
					moh(5, i(70226)),	-- Ruthless Gladiator's Battle Staff
					moh(5, i(70222)),	-- Ruthless Gladiator's Bonecracker
					moh(5, i(70224)),	-- Ruthless Gladiator's Bonegrinder
					moh(5, i(70211)),	-- Ruthless Gladiator's Cleaver
					moh(5, i(70213)),	-- Ruthless Gladiator's Decapitator
					moh(2, i(70239)),	-- Ruthless Gladiator's Endgame
					moh(5, i(70227)),	-- Ruthless Gladiator's Energy Staff
					moh(5, i(70218)),	-- Ruthless Gladiator's Fleshslicer
					moh(5, i(70223)),	-- Ruthless Gladiator's Gavel
					moh(5, i(70231)),	-- Ruthless Gladiator's Greatsword
					moh(5, i(70212)),	-- Ruthless Gladiator's Hacker
					moh(5, i(70238)),	-- Ruthless Gladiator's Heavy Crossbow
					moh(5, i(70236)),	-- Ruthless Gladiator's Longbow
					moh(5, i(70225)),	-- Ruthless Gladiator's Pike
					moh(5, i(70221)),	-- Ruthless Gladiator's Pummeler
					moh(5, i(70230)),	-- Ruthless Gladiator's Quickblade
					moh(2, i(70243)),	-- Ruthless Gladiator's Redoubt
					moh(2, i(70240)),	-- Ruthless Gladiator's Reprieve
					moh(5, i(70237)),	-- Ruthless Gladiator's Rifle
					moh(5, i(70220)),	-- Ruthless Gladiator's Right Render
					moh(5, i(70217)),	-- Ruthless Gladiator's Ripper
					moh(5, i(70214)),	-- Ruthless Gladiator's Shanker
					moh(2, i(70241)),	-- Ruthless Gladiator's Shield Wall
					moh(5, i(70215)),	-- Ruthless Gladiator's Shiv
					moh(5, i(70219)),	-- Ruthless Gladiator's Slasher
					moh(5, i(70229)),	-- Ruthless Gladiator's Slicer
					moh(5, i(70216)),	-- Ruthless Gladiator's Spellblade
					moh(5, i(70228)),	-- Ruthless Gladiator's Staff
					moh(5, i(70234)),	-- Ruthless Gladiator's Touch of Defeat
				})),
				cl(DEATHKNIGHT, {
					moh(12, iensemble(146503, {	-- Ensemble: Ruthless Gladiator's Dreadplate Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(70244, {	-- Ruthless Gladiator's Dreadplate Chestpiece
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70245)),	-- Ruthless Gladiator's Dreadplate Gauntlets
					moh(3, i(70246, {	-- Ruthless Gladiator's Dreadplate Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70247)),	-- Ruthless Gladiator's Dreadplate Legguards
					moh(2, i(70248, {	-- Ruthless Gladiator's Dreadplate Shoulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(DRUID, {
					moh(12, iensemble(146501, {	-- Ensemble: Ruthless Gladiator's Dragonhide Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
						-- CRIEVE NOTE: These were not available for purchase, but apparently got added to the Ensemble in 7.2.0.
						-- DARKAL NOTE: And then they removed them from the Ensemble in 11.0.0
						["groups"] = sharedData({["timeline"] = { ADDED_7_2_0, REMOVED_11_0_0 }},{
							i(88171),	-- Gladiator's Ironskin Gloves - confirmed 14/10/21
							i(88172),	-- Gladiator's Ironskin Helm - confirmed 14/10/21
							i(88173),	-- Gladiator's Ironskin Legguards - confirmed 14/10/21
							i(88174),	-- Gladiator's Ironskin Tunic - confirmed 14/10/21
							i(88175),	-- Gladiator's Ironskin Spaulders - confirmed 14/10/21
							i(88176),	-- Gladiator's Copperskin Gloves - confirmed 14/10/21
							i(88177),	-- Gladiator's Copperskin Helm - confirmed 14/10/21
							i(88178),	-- Gladiator's Copperskin Legguards - confirmed 14/10/21
							i(88179),	-- Gladiator's Copperskin Tunic - confirmed 14/10/21
							i(88180),	-- Gladiator's Copperskin Spaulders - confirmed 14/10/21
							i(93508),	-- Crafted Gladiator's Ironskin Gloves - confirmed 14/10/21
							i(93510),	-- Crafted Gladiator's Ironskin Helm - confirmed 14/10/21
							i(93512),	-- Crafted Gladiator's Ironskin Legguards - confirmed 14/10/21
							i(93514),	-- Crafted Gladiator's Ironskin Spaulders - confirmed 14/10/21
							i(93516),	-- Crafted Gladiator's Ironskin Tunic - confirmed 14/10/21
							i(93518),	-- Crafted Gladiator's Copperskin Gloves - confirmed 14/10/21
							i(93520),	-- Crafted Gladiator's Copperskin Helm - confirmed 14/10/21
							i(93522),	-- Crafted Gladiator's Copperskin Legguards - confirmed 14/10/21
							i(93524),	-- Crafted Gladiator's Copperskin Spaulders - confirmed 14/10/21
							i(93526),	-- Crafted Gladiator's Copperskin Tunic - confirmed 14/10/21
						}),
					})),
					moh(2, i(70279)),	-- Ruthless Gladiator's Dragonhide Gloves
					moh(3, i(70280, {	-- Ruthless Gladiator's Dragonhide Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70281)),	-- Ruthless Gladiator's Dragonhide Legguards
					moh(3, i(70282, {	-- Ruthless Gladiator's Dragonhide Robes
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70283, {	-- Ruthless Gladiator's Dragonhide Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70284)),	-- Ruthless Gladiator's Kodohide Gloves
					moh(3, i(70285, {	-- Ruthless Gladiator's Kodohide Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70286)),	-- Ruthless Gladiator's Kodohide Legguards
					moh(3, i(70287, {	-- Ruthless Gladiator's Kodohide Robes
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70288, {	-- Ruthless Gladiator's Kodohide Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70289)),	-- Ruthless Gladiator's Wyrmhide Gloves
					moh(3, i(70290, {	-- Ruthless Gladiator's Wyrmhide Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70291)),	-- Ruthless Gladiator's Wyrmhide Legguards
					moh(3, i(70292, {	-- Ruthless Gladiator's Wyrmhide Robes
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70293, {	-- Ruthless Gladiator's Wyrmhide Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(HUNTER, {
					moh(12, iensemble(146499, {	-- Ensemble: Ruthless Gladiator's Chain Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(70259, {	-- Ruthless Gladiator's Chain Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70260)),	-- Ruthless Gladiator's Chain Gauntlets
					moh(3, i(70261, {	-- Ruthless Gladiator's Chain Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70262)),	-- Ruthless Gladiator's Chain Leggings
					moh(2, i(70263, {	-- Ruthless Gladiator's Chain Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(MAGE, {
					moh(12, iensemble(146517, {	-- Ensemble: Ruthless Gladiator's Silk Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(70303, {	-- Ruthless Gladiator's Silk Amice
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70300, {	-- Ruthless Gladiator's Silk Cowl
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70299)),	-- Ruthless Gladiator's Silk Handguards
					moh(3, i(70302, {	-- Ruthless Gladiator's Silk Robe
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70301)),	-- Ruthless Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146515, {	-- Ensemble: Ruthless Gladiator's Scaled Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(70353, {	-- Ruthless Gladiator's Ornamented Chestguard
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70354)),	-- Ruthless Gladiator's Ornamented Gloves
					moh(3, i(70355, {	-- Ruthless Gladiator's Ornamented Headcover
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70356)),	-- Ruthless Gladiator's Ornamented Legplates
					moh(2, i(70357, {	-- Ruthless Gladiator's Ornamented Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70249, {	-- Ruthless Gladiator's Scaled Chestpiece
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70250)),	-- Ruthless Gladiator's Scaled Gauntlets
					moh(3, i(70251, {	-- Ruthless Gladiator's Scaled Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70252)),	-- Ruthless Gladiator's Scaled Legguards
					moh(2, i(70253, {	-- Ruthless Gladiator's Scaled Shoulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(PRIEST, {
					moh(12, iensemble(146513, {	-- Ensemble: Ruthless Gladiator's Satin Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(70304)),	-- Ruthless Gladiator's Mooncloth Gloves
					moh(3, i(70305, {	-- Ruthless Gladiator's Mooncloth Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70306)),	-- Ruthless Gladiator's Mooncloth Leggings
					moh(3, i(70307, {	-- Ruthless Gladiator's Mooncloth Robe
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70308, {	-- Ruthless Gladiator's Mooncloth Mantle
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70309)),	-- Ruthless Gladiator's Satin Gloves
					moh(3, i(70310, {	-- Ruthless Gladiator's Satin Hood
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70311)),	-- Ruthless Gladiator's Satin Leggings
					moh(3, i(70312, {	-- Ruthless Gladiator's Satin Robe
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70313, {	-- Ruthless Gladiator's Satin Mantle
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(ROGUE, {
					moh(12, iensemble(146507, {	-- Ensemble: Ruthless Gladiator's Leather Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(70295)),	-- Ruthless Gladiator's Leather Gloves
					moh(3, i(70296, {	-- Ruthless Gladiator's Leather Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70297)),	-- Ruthless Gladiator's Leather Legguards
					moh(2, i(70298, {	-- Ruthless Gladiator's Leather Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70294, {	-- Ruthless Gladiator's Leather Tunic
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146511, {	-- Ensemble: Ruthless Gladiator's Ringmail Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(70269, {	-- Ruthless Gladiator's Linked Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70270)),	-- Ruthless Gladiator's Linked Gauntlets
					moh(3, i(70271, {	-- Ruthless Gladiator's Linked Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70272)),	-- Ruthless Gladiator's Linked Leggings
					moh(2, i(70273, {	-- Ruthless Gladiator's Linked Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70274, {	-- Ruthless Gladiator's Mail Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70275)),	-- Ruthless Gladiator's Mail Gauntlets
					moh(3, i(70276, {	-- Ruthless Gladiator's Mail Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70277)),	-- Ruthless Gladiator's Mail Leggings
					moh(2, i(70278, {	-- Ruthless Gladiator's Mail Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70264, {	-- Ruthless Gladiator's Ringmail Armor
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70265)),	-- Ruthless Gladiator's Ringmail Gauntlets
					moh(3, i(70266, {	-- Ruthless Gladiator's Ringmail Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70267)),	-- Ruthless Gladiator's Ringmail Leggings
					moh(2, i(70268, {	-- Ruthless Gladiator's Ringmail Spaulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146505, {	-- Ensemble: Ruthless Gladiator's Felweave Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(70318, {	-- Ruthless Gladiator's Felweave Amice
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70315, {	-- Ruthless Gladiator's Felweave Cowl
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70314)),	-- Ruthless Gladiator's Felweave Handguards
					moh(3, i(70317, {	-- Ruthless Gladiator's Felweave Raiment
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70316)),	-- Ruthless Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146509, {	-- Ensemble: Ruthless Gladiator's Plate Armor
						["description"] = "You will need to log out and back in to register every Ruthless Gladiator Item.",
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(70254, {	-- Ruthless Gladiator's Plate Chestpiece
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(2, i(70255)),	-- Ruthless Gladiator's Plate Gauntlets
					moh(3, i(70256, {	-- Ruthless Gladiator's Plate Helm
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
					moh(3, i(70257)),	-- Ruthless Gladiator's Plate Legguards
					moh(2, i(70258, {	-- Ruthless Gladiator's Plate Shoulders
						-- #if ANYCLASSIC
						["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,	-- These were made unavailable together with Elite gear in Cata Classic.
						-- #endif
					})),
				}),
				n(BACK, {
					moh(1, i(70386)),	-- Ruthless Gladiator's Cape of Cruelty
					moh(1, i(70385)),	-- Ruthless Gladiator's Cape of Prowess
					moh(1, i(70383)),	-- Ruthless Gladiator's Cloak of Alacrity
					moh(1, i(70384)),	-- Ruthless Gladiator's Cloak of Prowess
					moh(1, i(70387)),	-- Ruthless Gladiator's Drape of Diffusion
					moh(1, i(70388)),	-- Ruthless Gladiator's Drape of Prowess
					moh(1, i(70389)),	-- Ruthless Gladiator's Drape of Meditation
				}),
				n(WRIST, {
					moh(1, i(70330)),	-- Ruthless Gladiator's Armbands of Meditation
					moh(1, i(70342)),	-- Ruthless Gladiator's Armbands of Prowess
					moh(1, i(70322)),	-- Ruthless Gladiator's Armplates of Alacrity
					moh(1, i(70327)),	-- Ruthless Gladiator's Armplates of Proficiency
					moh(1, i(70350)),	-- Ruthless Gladiator's Armwraps of Accuracy
					moh(1, i(70352)),	-- Ruthless Gladiator's Armwraps of Alacrity
					moh(1, i(70345)),	-- Ruthless Gladiator's Bindings of Meditation
					moh(1, i(70359)),	-- Ruthless Gladiator's Bindings of Prowess
					moh(1, i(70334)),	-- Ruthless Gladiator's Bracers of Meditation
					moh(1, i(70325)),	-- Ruthless Gladiator's Bracers of Prowess
					moh(1, i(70363)),	-- Ruthless Gladiator's Cuffs of Accuracy
					moh(1, i(70366)),	-- Ruthless Gladiator's Cuffs of Meditation
					moh(1, i(70365)),	-- Ruthless Gladiator's Cuffs of Prowess
					moh(1, i(70340)),	-- Ruthless Gladiator's Wristguards of Accuracy
					moh(1, i(70338)),	-- Ruthless Gladiator's Wristguards of Alacrity
				}),
				n(WAIST, {
					moh(1, i(70346)),	-- Ruthless Gladiator's Belt of Cruelty
					moh(1, i(70343)),	-- Ruthless Gladiator's Belt of Meditation
					moh(1, i(70319)),	-- Ruthless Gladiator's Clasp of Cruelty
					moh(1, i(70332)),	-- Ruthless Gladiator's Clasp of Meditation
					moh(1, i(70362)),	-- Ruthless Gladiator's Cord of Accuracy
					moh(1, i(70360)),	-- Ruthless Gladiator's Cord of Cruelty
					moh(1, i(70368)),	-- Ruthless Gladiator's Cord of Meditation
					moh(1, i(70320)),	-- Ruthless Gladiator's Girdle of Cruelty
					moh(1, i(70326)),	-- Ruthless Gladiator's Girdle of Prowess
					moh(1, i(70339)),	-- Ruthless Gladiator's Links of Accuracy
					moh(1, i(70336)),	-- Ruthless Gladiator's Links of Cruelty
					moh(1, i(70349)),	-- Ruthless Gladiator's Waistband of Accuracy
					moh(1, i(70347)),	-- Ruthless Gladiator's Waistband of Cruelty
					moh(1, i(70331)),	-- Ruthless Gladiator's Waistguard of Cruelty
					moh(1, i(70328)),	-- Ruthless Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					moh(2, i(70351)),	-- Ruthless Gladiator's Boots of Alacrity
					moh(2, i(70348)),	-- Ruthless Gladiator's Boots of Cruelty
					moh(2, i(70358)),	-- Ruthless Gladiator's Footguards of Alacrity
					moh(2, i(70344)),	-- Ruthless Gladiator's Footguards of Meditation
					moh(2, i(70324)),	-- Ruthless Gladiator's Greaves of Alacrity
					moh(2, i(70333)),	-- Ruthless Gladiator's Greaves of Meditation
					moh(2, i(70337)),	-- Ruthless Gladiator's Sabatons of Alacrity
					moh(2, i(70341)),	-- Ruthless Gladiator's Sabatons of Alacrity
					moh(2, i(70335)),	-- Ruthless Gladiator's Sabatons of Cruelty
					moh(2, i(70329)),	-- Ruthless Gladiator's Sabatons of Meditation
					moh(2, i(70364)),	-- Ruthless Gladiator's Treads of Alacrity
					moh(2, i(70361)),	-- Ruthless Gladiator's Treads of Cruelty
					moh(2, i(70367)),	-- Ruthless Gladiator's Treads of Meditation
					moh(2, i(70323)),	-- Ruthless Gladiator's Warboots of Alacrity
					moh(2, i(70321)),	-- Ruthless Gladiator's Warboots of Cruelty
				}),
				filter(NECK_F, {
					i(70382),	-- Ruthless Gladiator's Choker of Accuracy
					i(70381),	-- Ruthless Gladiator's Choker of Proficiency
					i(70380),	-- Ruthless Gladiator's Necklace of Proficiency
					i(70379),	-- Ruthless Gladiator's Necklace of Prowess
					i(70377),	-- Ruthless Gladiator's Pendant of Alacrity
					i(70376),	-- Ruthless Gladiator's Pendant of Diffusion
					i(70378),	-- Ruthless Gladiator's Pendant of Meditation
				}),
				filter(FINGER_F, {
					i(70370),	-- Ruthless Gladiator's Band of Accuracy
					i(70369),	-- Ruthless Gladiator's Band of Cruelty
					i(70371),	-- Ruthless Gladiator's Band of Meditation
					i(70374),	-- Ruthless Gladiator's Ring of Accuracy
					i(70375),	-- Ruthless Gladiator's Ring of Cruelty
					i(70373),	-- Ruthless Gladiator's Signet of Accuracy
					i(70372),	-- Ruthless Gladiator's Signet of Cruelty
				}),
				filter(THROWN, {
					un(REMOVED_FROM_GAME, i(70233)),	-- Ruthless Gladiator's Hatchet (Throw wep)
					un(REMOVED_FROM_GAME, i(70232)),	-- Ruthless Gladiator's War Edge (Throw Wep)
				}),
				filter(RELICS_F, {
					un(REMOVED_FROM_GAME, i(70408)),	-- Ruthless Gladiator's Relic of Conquest
					un(REMOVED_FROM_GAME, i(70405)),	-- Ruthless Gladiator's Relic of Dominance
					un(REMOVED_FROM_GAME, i(70406)),	-- Ruthless Gladiator's Relic of Salvation
					un(REMOVED_FROM_GAME, i(70407)),	-- Ruthless Gladiator's Relic of Triumph
				}),
				filter(TRINKET_F, {
					i(70399),									-- Ruthless Gladiator's Badge of Conquest
					i(70401),									-- Ruthless Gladiator's Badge of Dominance
					i(70400),									-- Ruthless Gladiator's Badge of Victory
					i(70396),									-- Ruthless Gladiator's Emblem of Cruelty
					i(70397),									-- Ruthless Gladiator's Emblem of Meditation
					i(70398),									-- Ruthless Gladiator's Emblem of Tenacity
					i(70404),									-- Ruthless Gladiator's Insignia of Conquest
					i(70402),									-- Ruthless Gladiator's Insignia of Dominance
					i(70403),									-- Ruthless Gladiator's Insignia of Victory
					i(70390),									-- Ruthless Gladiator's Medallion of Cruelty (A)
					i(70391),									-- Ruthless Gladiator's Medallion of Meditation (A)
					i(70392),									-- Ruthless Gladiator's Medallion of Tenacity (A)
					i(70393),									-- Ruthless Gladiator's Medallion of Cruelty (H)
					i(70394),									-- Ruthless Gladiator's Medallion of Meditation (H)
					i(70395),									-- Ruthless Gladiator's Medallion of Tenacity (H)
					i(70409),									-- Ruthless Gladiator's Mark of Cruelty
				}),
			}),
			elitepvp(n(PVP_ELITE, bubbleDownSelf({
				["timeline"] = { ADDED_4_2_0, REMOVED_4_3_0 },

				-- #if ANYCLASSIC
				["OnUpdate"] = RUTHLESS_ELITE_ONUPDATE,
				-- #endif
			}, {
				-- Original Sources are:
				-- n40606 Knight-Lieutenant T'Maire Sydes in Stormwind (Alliance)
				-- n54659 Blood Guard Zar'shi in Orgrimmar (Horde)
				n(WEAPONS, {
					i(70207),	-- Ruthless Gladiator's Barrier
					i(70195),	-- Ruthless Gladiator's Baton of Light
					i(70181),	-- Ruthless Gladiator's Battle Staff
					i(70201),	-- Ruthless Gladiator's Bonecracker
					i(70183),	-- Ruthless Gladiator's Bonegrinder
					i(70205),	-- Ruthless Gladiator's Cleaver
					i(70184),	-- Ruthless Gladiator's Decapitator
					i(70210),	-- Ruthless Gladiator's Endgame
					i(70180),	-- Ruthless Gladiator's Energy Staff
					i(70190),	-- Ruthless Gladiator's Fleshslicer
					i(70185),	-- Ruthless Gladiator's Gavel
					i(70178),	-- Ruthless Gladiator's Greatsword
					i(70204),	-- Ruthless Gladiator's Hacker
					i(70193),	-- Ruthless Gladiator's Heavy Crossbow
					i(70192),	-- Ruthless Gladiator's Longbow
					i(70182),	-- Ruthless Gladiator's Pike
					i(70202),	-- Ruthless Gladiator's Pummeler
					i(70199),	-- Ruthless Gladiator's Quickblade
					i(70206),	-- Ruthless Gladiator's Redoubt
					i(70209),	-- Ruthless Gladiator's Reprieve
					i(70194),	-- Ruthless Gladiator's Rifle
					i(70186),	-- Ruthless Gladiator's Right Render
					i(70187),	-- Ruthless Gladiator's Ripper
					i(70203),	-- Ruthless Gladiator's Shanker
					i(70208),	-- Ruthless Gladiator's Shield Wall
					i(70191),	-- Ruthless Gladiator's Shiv
					i(70189),	-- Ruthless Gladiator's Slasher
					i(70200),	-- Ruthless Gladiator's Slicer
					i(70188),	-- Ruthless Gladiator's Spellblade
					i(70179),	-- Ruthless Gladiator's Staff
					i(70196),	-- Ruthless Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(70494),	-- Ruthless Gladiator's Dreadplate Chestpiece
					i(70493),	-- Ruthless Gladiator's Dreadplate Gauntlets
					i(70492),	-- Ruthless Gladiator's Dreadplate Helm
					i(70491),	-- Ruthless Gladiator's Dreadplate Legguards
					i(70490),	-- Ruthless Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					i(70486),	-- Ruthless Gladiator's Dragonhide Gloves
					i(70485),	-- Ruthless Gladiator's Dragonhide Helm
					i(70484),	-- Ruthless Gladiator's Dragonhide Legguards
					i(70439),	-- Ruthless Gladiator's Dragonhide Robes
					i(70438),	-- Ruthless Gladiator's Dragonhide Spaulders
					i(70437),	-- Ruthless Gladiator's Kodohide Gloves
					i(70436),	-- Ruthless Gladiator's Kodohide Helm
					i(70432),	-- Ruthless Gladiator's Kodohide Legguards
					i(70431),	-- Ruthless Gladiator's Kodohide Robes
					i(70430),	-- Ruthless Gladiator's Kodohide Spaulders
					i(70429),	-- Ruthless Gladiator's Wyrmhide Gloves
					i(70428),	-- Ruthless Gladiator's Wyrmhide Helm
					i(70449),	-- Ruthless Gladiator's Wyrmhide Legguards
					i(70448),	-- Ruthless Gladiator's Wyrmhide Robes
					i(70447),	-- Ruthless Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					i(70476),	-- Ruthless Gladiator's Chain Armor
					i(70441),	-- Ruthless Gladiator's Chain Gauntlets
					i(70440),	-- Ruthless Gladiator's Chain Helm
					i(70435),	-- Ruthless Gladiator's Chain Legs
					i(70434),	-- Ruthless Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					i(70454),	-- Ruthless Gladiator's Silk Amice
					i(70462),	-- Ruthless Gladiator's Silk Cowl
					i(70463),	-- Ruthless Gladiator's Silk Handguards
					i(70455),	-- Ruthless Gladiator's Silk Robe
					i(70461),	-- Ruthless Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					i(70419),	-- Ruthless Gladiator's Ornamented Chestguard
					i(70418),	-- Ruthless Gladiator's Ornamented Gloves
					i(70417),	-- Ruthless Gladiator's Ornamented Headcover
					i(70416),	-- Ruthless Gladiator's Ornamented Legplates
					i(70415),	-- Ruthless Gladiator's Ornamented Spaulders
					i(70489),	-- Ruthless Gladiator's Scaled Chest
					i(70488),	-- Ruthless Gladiator's Scaled Gauntlets
					i(70487),	-- Ruthless Gladiator's Scaled Helm
					i(70483),	-- Ruthless Gladiator's Scaled Legguards
					i(70482),	-- Ruthless Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					i(70453),	-- Ruthless Gladiator's Mooncloth Gloves
					i(70452),	-- Ruthless Gladiator's Mooncloth Helm
					i(70451),	-- Ruthless Gladiator's Mooncloth Leggings
					i(70475),	-- Ruthless Gladiator's Mooncloth Mantle
					i(70450),	-- Ruthless Gladiator's Mooncloth Robe
					i(70474),	-- Ruthless Gladiator's Satin Gloves
					i(70473),	-- Ruthless Gladiator's Satin Hood
					i(70472),	-- Ruthless Gladiator's Satin Leggings
					i(70470),	-- Ruthless Gladiator's Satin Mantle
					i(70471),	-- Ruthless Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					i(70445),	-- Ruthless Gladiator's Leather Gloves
					i(70444),	-- Ruthless Gladiator's Leather Helm
					i(70443),	-- Ruthless Gladiator's Leather Legguards
					i(70442),	-- Ruthless Gladiator's Leather Spaulders
					i(70446),	-- Ruthless Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					i(70460),	-- Ruthless Gladiator's Linked Armor
					i(70459),	-- Ruthless Gladiator's Linked Gauntlets
					i(70458),	-- Ruthless Gladiator's Linked Helm
					i(70457),	-- Ruthless Gladiator's Linked Leggings
					i(70456),	-- Ruthless Gladiator's Linked Spaulders
					i(70424),	-- Ruthless Gladiator's Mail Armor
					i(70423),	-- Ruthless Gladiator's Mail Gauntlets
					i(70422),	-- Ruthless Gladiator's Mail Helm
					i(70421),	-- Ruthless Gladiator's Mail Leggings
					i(70420),	-- Ruthless Gladiator's Mail Spaulders
					i(70433),	-- Ruthless Gladiator's Ringmail Armor
					i(70467),	-- Ruthless Gladiator's Ringmail Gauntlets
					i(70466),	-- Ruthless Gladiator's Ringmail Helm
					i(70465),	-- Ruthless Gladiator's Ringmail Leggings
					i(70464),	-- Ruthless Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					i(70425),	-- Ruthless Gladiator's Felweave Amice
					i(70468),	-- Ruthless Gladiator's Felweave Cowl
					i(70469),	-- Ruthless Gladiator's Felweave Handguards
					i(70426),	-- Ruthless Gladiator's Felweave Raiment
					i(70427),	-- Ruthless Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					i(70481),	-- Ruthless Gladiator's Plate Chestpiece
					i(70480),	-- Ruthless Gladiator's Plate Gauntlets
					i(70479),	-- Ruthless Gladiator's Plate Helm
					i(70478),	-- Ruthless Gladiator's Plate Legguards
					i(70477),	-- Ruthless Gladiator's Plate Shoulders
				}),
				n(FEET, {
					i(70507),	-- Ruthless Gladiator's Boots of Alacrity
					i(70506),	-- Ruthless Gladiator's Boots of Cruelty
					i(70499),	-- Ruthless Gladiator's Footguards of Alacrity
					i(70498),	-- Ruthless Gladiator's Footguards of Mediatiton
					i(70502),	-- Ruthless Gladiator's Greaves of Alacrity
					i(70503),	-- Ruthless Gladiator's Greaves of Meditation
					i(70501),	-- Ruthless Gladiator's Sabatons of Alacrity
					i(70508),	-- Ruthless Gladiator's Sabatons of Alacrity
					i(70500),	-- Ruthless Gladiator's Sabatons of Cruelty
					i(70509),	-- Ruthless Gladiator's Sabatons of Meditation
					i(70496),	-- Ruthless Gladiator's Treads of Alacrity
					i(70495),	-- Ruthless Gladiator's Treads of Cruelty
					i(70497),	-- Ruthless Gladiator's Treads of Meditation
					i(70505),	-- Ruthless Gladiator's Warboots of Alacrity
					i(70504),	-- Ruthless Gladiator's Warboots of Cruelty
				}),
				filter(THROWN, {
					i(70197),	-- Ruthless Gladiator's Hatchet (Throw wep)
					i(70198),	-- Ruthless Gladiator's War Edge (Throw Wep)
				}),
			}))),
		})),
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(SEASON_CATACLYSMIC, {
			n(ACHIEVEMENTS, {
				ach(11716, {["timeline"] = {ADDED_7_2_0}}),	-- Cataclysmic Catwalk (PvP Season 11)
			}),
			n(ACHIEVEMENTS, elitepvp(bubbleDown({
				["timeline"] = { ADDED_5_0_4, REMOVED_5_0_4 },
			}, {
				-- #if ANYCLASSIC
				ach(42775),	-- Challenger: Season 11
				ach(42772),	-- Rival: Season 11
				ach(42774),	-- Duelist: Season 11
				ach(42777, {	-- Gladiator: Season 11
					i(85785),	-- Cataclysmic Gladiator's Twilight Drake
				}),
				-- #endif
				ach(6939, {	-- Hero of the Alliance: Cataclysmic
					["races"] = ALLIANCE_ONLY,
				}),
				ach(6940, {	-- Hero of the Horde: Cataclysmic
					["races"] = HORDE_ONLY,
				}),
				ach(6938, {	-- Cataclysmic Gladiator: Cataclysm Season 3
					title(193),	-- Cataclysmic Gladiator <Name>
				}),
				ach(6741, {	-- Cataclysmic Gladiator's Twilight Drake
					["provider"] = { "i", 85785 },	-- Cataclysmic Gladiator's Twilight Drake
					["filterID"] = MOUNTS,
				}),
				i(85785, {	-- Cataclysmic Gladiator's Twilight Drake
					["description"] = "Awarded to members of the Arena teams during Cata Season 3 that were in the 0.5% bracket of their battlegroup.",
				}),
			}))),
			n(PVP_HONOR, {
				-- #if AFTER 7.2.0.23436
				["description"] = "These items are only available from Ruthless Gladiator class ensembles.",
				-- #endif
				["groups"] = {
					cl(DEATHKNIGHT, {
						i(72332),	-- Ruthless Gladiator's Dreadplate Chestpiece
						i(72333),	-- Ruthless Gladiator's Dreadplate Gauntlets
						i(72334),	-- Ruthless Gladiator's Dreadplate Helm
						i(72335),	-- Ruthless Gladiator's Dreadplate Legguards
						i(72336),	-- Ruthless Gladiator's Dreadplate Shoulders
					}),
					cl(DRUID, {
						i(72337),	-- Ruthless Gladiator's Dragonhide Gloves
						i(72338),	-- Ruthless Gladiator's Dragonhide Helm
						i(72339),	-- Ruthless Gladiator's Dragonhide Legguards
						i(72340),	-- Ruthless Gladiator's Dragonhide Robes
						i(72341),	-- Ruthless Gladiator's Dragonhide Spaulders
						i(72345),	-- Ruthless Gladiator's Kodohide Gloves
						i(72346),	-- Ruthless Gladiator's Kodohide Helm
						i(72347),	-- Ruthless Gladiator's Kodohide Legguards
						i(72348),	-- Ruthless Gladiator's Kodohide Robes
						i(72349),	-- Ruthless Gladiator's Kodohide Spaulders
						i(72353),	-- Ruthless Gladiator's Wyrmhide Gloves
						i(72354),	-- Ruthless Gladiator's Wyrmhide Helm
						i(72355),	-- Ruthless Gladiator's Wyrmhide Legguards
						i(72356),	-- Ruthless Gladiator's Wyrmhide Robes
						i(72357),	-- Ruthless Gladiator's Wyrmhide Spaulders
					}),
					cl(HUNTER, {
						i(72368),	-- Ruthless Gladiator's Chain Armor
						i(72369),	-- Ruthless Gladiator's Chain Gauntlets
						i(72370),	-- Ruthless Gladiator's Chain Helm
						i(72371),	-- Ruthless Gladiator's Chain Legs
						i(72372),	-- Ruthless Gladiator's Chain Spaulders
					}),
					cl(MAGE, {
						i(72377),	-- Ruthless Gladiator's Silk Amice
						i(72374),	-- Ruthless Gladiator's Silk Cowl
						i(72373),	-- Ruthless Gladiator's Silk Handguards
						i(72376),	-- Ruthless Gladiator's Silk Robe
						i(72375),	-- Ruthless Gladiator's Silk Trousers
					}),
					cl(PALADIN, {
						i(72389),	-- Ruthless Gladiator's Ornamented Chestguard
						i(72390),	-- Ruthless Gladiator's Ornamented Gloves
						i(72391),	-- Ruthless Gladiator's Ornamented Headcover
						i(72392),	-- Ruthless Gladiator's Ornamented Legplates
						i(72393),	-- Ruthless Gladiator's Ornamented Spaulders
						i(72378),	-- Ruthless Gladiator's Scaled Chestpiece
						i(72379),	-- Ruthless Gladiator's Scaled Gauntlets
						i(72380),	-- Ruthless Gladiator's Scaled Helm
						i(72381),	-- Ruthless Gladiator's Scaled Legguards
						i(72382),	-- Ruthless Gladiator's Scaled Shoulders
					}),
					cl(PRIEST, {
						i(72400),	-- Ruthless Gladiator's Mooncloth Gloves
						i(72401),	-- Ruthless Gladiator's Mooncloth Helm
						i(72402),	-- Ruthless Gladiator's Mooncloth Leggings
						i(72404),	-- Ruthless Gladiator's Mooncloth Mantle
						i(72403),	-- Ruthless Gladiator's Mooncloth Robe
						i(72405),	-- Ruthless Gladiator's Satin Gloves
						i(72406),	-- Ruthless Gladiator's Satin Hood
						i(72407),	-- Ruthless Gladiator's Satin Leggings
						i(72409),	-- Ruthless Gladiator's Satin Mantle
						i(72408),	-- Ruthless Gladiator's Satin Robe
					}),
					cl(ROGUE, {
						i(72423),	-- Ruthless Gladiator's Leather Gloves
						i(72424),	-- Ruthless Gladiator's Leather Helm
						i(72425),	-- Ruthless Gladiator's Leather Legguards
						i(72426),	-- Ruthless Gladiator's Leather Spaulders
						i(72422),	-- Ruthless Gladiator's Leather Tunic
					}),
					cl(SHAMAN, {
						i(72437),	-- Ruthless Gladiator's Linked Armor
						i(72438),	-- Ruthless Gladiator's Linked Gauntlets
						i(72439),	-- Ruthless Gladiator's Linked Helm
						i(72440),	-- Ruthless Gladiator's Linked Leggings
						i(72441),	-- Ruthless Gladiator's Linked Spaulders
						i(72443),	-- Ruthless Gladiator's Mail Armor
						i(72444),	-- Ruthless Gladiator's Mail Gauntlets
						i(72445),	-- Ruthless Gladiator's Mail Helm
						i(72446),	-- Ruthless Gladiator's Mail Leggings
						i(72447),	-- Ruthless Gladiator's Mail Spaulders
						i(72432),	-- Ruthless Gladiator's Ringmail Armor
						i(72433),	-- Ruthless Gladiator's Ringmail Gauntlets
						i(72434),	-- Ruthless Gladiator's Ringmail Helm
						i(72435),	-- Ruthless Gladiator's Ringmail Leggings
						i(72436),	-- Ruthless Gladiator's Ringmail Spaulders

					}),
					cl(WARLOCK, {
						i(72463),	-- Ruthless Gladiator's Felweave Amice
						i(72460),	-- Ruthless Gladiator's Felweave Cowl
						i(72459),	-- Ruthless Gladiator's Felweave Handguards
						i(72462),	-- Ruthless Gladiator's Felweave Raiment
						i(72461),	-- Ruthless Gladiator's Felweave Trousers
					}),
					cl(WARRIOR, {
						i(72464),	-- Ruthless Gladiator's Plate Chestpiece
						i(72465),	-- Ruthless Gladiator's Plate Gauntlets
						i(72466),	-- Ruthless Gladiator's Plate Helm
						i(72467),	-- Ruthless Gladiator's Plate Legguards
						i(72468),	-- Ruthless Gladiator's Plate Shoulders
					}),
					n(WRIST, {
						i(72431),	-- Ruthless Gladiator's Armbands of Meditation
						i(72430),	-- Ruthless Gladiator's Armbands of Prowess
						i(72399),	-- Ruthless Gladiator's Armplates of Alacrity
						i(72398),	-- Ruthless Gladiator's Armplates of Proficiency
						i(72421),	-- Ruthless Gladiator's Armwraps of Accuracy
						i(72420),	-- Ruthless Gladiator's Armwraps of Alacrity
						i(72344),	-- Ruthless Gladiator's Bindings of Meditation
						i(72352),	-- Ruthless Gladiator's Bindings of Prowess
						i(72388),	-- Ruthless Gladiator's Bracers of Meditation
						i(72387),	-- Ruthless Gladiator's Bracers of Prowess
						i(72319),	-- Ruthless Gladiator's Cuffs of Accuracy
						i(72321),	-- Ruthless Gladiator's Cuffs of Meditation
						i(72320),	-- Ruthless Gladiator's Cuffs of Prowess
						i(72367),	-- Ruthless Gladiator's Wristguards of Accuracy
						i(72366),	-- Ruthless Gladiator's Wristguards of Alacrity
					}),
					n(WAIST, {
						i(72350),	-- Ruthless Gladiator's Belt of Cruelty
						i(72342),	-- Ruthless Gladiator's Belt of Meditation
						i(72383),	-- Ruthless Gladiator's Clasp of Cruelty
						i(72384),	-- Ruthless Gladiator's Clasp of Meditation
						i(72314),	-- Ruthless Gladiator's Cord of Accuracy
						i(72313),	-- Ruthless Gladiator's Cord of Cruelty
						i(72315),	-- Ruthless Gladiator's Cord of Meditation
						i(72394),	-- Ruthless Gladiator's Girdle of Accuracy/Cruelty
						i(72395),	-- Ruthless Gladiator's Girdle of Prowess
						i(72363),	-- Ruthless Gladiator's Links of Accuracy
						i(72362),	-- Ruthless Gladiator's Links of Cruelty
						i(72417),	-- Ruthless Gladiator's Waistband of Accuracy
						i(72416),	-- Ruthless Gladiator's Waistband of Cruelty
						i(72442),	-- Ruthless Gladiator's Waistguard of Cruelty
						i(72427),	-- Ruthless Gladiator's Waistguard of Meditation
					}),
					n(FEET, {
						i(72419),	-- Ruthless Gladiator's Boots of Alacrity
						i(72418),	-- Ruthless Gladiator's Boots of Cruelty
						i(72351),	-- Ruthless Gladiator's Footguards of Alacrity
						i(72343),	-- Ruthless Gladiator's Footguards of Meditation
						i(72385),	-- Ruthless Gladiator's Greaves of Alacrity
						i(72386),	-- Ruthless Gladiator's Greaves of Meditation
						i(72365),	-- Ruthless Gladiator's Sabatons of Alacrity
						i(72428),	-- Ruthless Gladiator's Sabatons of Alacrity
						i(72364),	-- Ruthless Gladiator's Sabatons of Cruelty
						i(72429),	-- Ruthless Gladiator's Sabatons of Meditation
						i(72317),	-- Ruthless Gladiator's Treads of Alacrity
						i(72316),	-- Ruthless Gladiator's Treads of Cruelty
						i(72318),	-- Ruthless Gladiator's Treads of Meditation
						i(72396),	-- Ruthless Gladiator's Warboots of Cruelty
						i(72397),	-- Ruthless Gladiator's Warboots of Alacrity
					}),
					n(BACK, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
						i(72305),	-- Ruthless Gladiator's Cape of Cruelty
						i(72306),	-- Ruthless Gladiator's Cape of Prowess
						i(72451),	-- Ruthless Gladiator's Cloak of Alacrity
						i(72452),	-- Ruthless Gladiator's Cloak of Prowess
						i(72323),	-- Ruthless Gladiator's Drape of Diffusion
						i(72324),	-- Ruthless Gladiator's Drape of Meditation
						i(72322),	-- Ruthless Gladiator's Drape of Prowess
					})),
					filter(FINGER_F, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
						i(72330),	-- Ruthless Gladiator's Band of Accuracy
						i(72329),	-- Ruthless Gladiator's Band of Cruelty
						i(72331),	-- Ruthless Gladiator's Band of Meditation
						i(72312),	-- Ruthless Gladiator's Ring of Accuracy
						i(72311),	-- Ruthless Gladiator's Ring of Cruelty
						i(72458),	-- Ruthless Gladiator's Signet of Accuracy
						i(72457),	-- Ruthless Gladiator's Signet of Cruelty
					})),
					filter(NECK_F, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
						i(72454),	-- Ruthless Gladiator's Choker of Accuracy
						i(72453),	-- Ruthless Gladiator's Choker of Proficiency
						i(72307),	-- Ruthless Gladiator's Necklace of Proficiency
						i(72308),	-- Ruthless Gladiator's Necklace of Prowess
						i(72325),	-- Ruthless Gladiator's Pendant of Alacrity
						i(72326),	-- Ruthless Gladiator's Pendant of Diffusion
						i(72327),	-- Ruthless Gladiator's Pendant of Meditation
					})),
					filter(RELICS_F, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
						i(72456),	-- Ruthless Gladiator's Relic of Conquest
						i(72328),	-- Ruthless Gladiator's Relic of Dominance
						i(72358),	-- Ruthless Gladiator's Relic of Salvation
						i(72310),	-- Ruthless Gladiator's Relic of Triumph
					})),
					filter(TRINKET_F, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
						i(72304),	-- Ruthless Gladiator's Badge of Conquest
						i(72448),	-- Ruthless Gladiator's Badge of Dominance
						i(72450),	-- Ruthless Gladiator's Badge of Victory
						i(72359),	-- Ruthless Gladiator's Emblem of Cruelty
						i(72361),	-- Ruthless Gladiator's Emblem of Meditation
						i(72360),	-- Ruthless Gladiator's Emblem of Tenacity
						i(72309),	-- Ruthless Gladiator's Insignia of Conquest
						i(72449),	-- Ruthless Gladiator's Insignia of Dominance
						i(72455),	-- Ruthless Gladiator's Insignia of Victory
						i(72411),	-- Ruthless Gladiator's Medallion of Cruelty (A)
						i(72414),	-- Ruthless Gladiator's Medallion of Meditation (A)
						i(72412),	-- Ruthless Gladiator's Medallion of Tenacity (A)
						i(72410),	-- Ruthless Gladiator's Medallion of Cruelty (H)
						i(72415),	-- Ruthless Gladiator's Medallion of Meditation (H)
						i(72413),	-- Ruthless Gladiator's Medallion of Tenacity (H)
					})),
				},
			}),
			n(PVP_GLADIATOR, {
				n(WEAPONS, {
					moh(80, iensemble(146639, {	-- Arsenal: Cataclysmic Gladiator's Weapons
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(73468)),	-- Cataclysmic Gladiator's Barrier
					moh(5, i(73450)),	-- Cataclysmic Gladiator's Baton of Light
					moh(5, i(73466)),	-- Cataclysmic Gladiator's Battle Staff
					moh(5, i(73448)),	-- Cataclysmic Gladiator's Bonecracker
					moh(5, i(73476)),	-- Cataclysmic Gladiator's Bonegrinder
					moh(5, i(73474)),	-- Cataclysmic Gladiator's Cleaver
					moh(5, i(73477)),	-- Cataclysmic Gladiator's Decapitator
					moh(2, i(73469)),	-- Cataclysmic Gladiator's Endgame
					moh(5, i(73457)),	-- Cataclysmic Gladiator's Energy Staff
					moh(5, i(73453)),	-- Cataclysmic Gladiator's Fleshslicer
					moh(5, i(73459)),	-- Cataclysmic Gladiator's Gavel
					moh(5, i(73475)),	-- Cataclysmic Gladiator's Greatsword
					moh(5, i(73449)),	-- Cataclysmic Gladiator's Hacker
					moh(5, i(73463)),	-- Cataclysmic Gladiator's Heavy Crossbow
					moh(5, i(73470)),	-- Cataclysmic Gladiator's Longbow
					moh(5, i(73456)),	-- Cataclysmic Gladiator's Pike
					moh(5, i(73473)),	-- Cataclysmic Gladiator's Pummeler
					moh(5, i(73472)),	-- Cataclysmic Gladiator's Quickblade
					moh(2, i(73458)),	-- Cataclysmic Gladiator's Redoubt
					moh(2, i(73465)),	-- Cataclysmic Gladiator's Reprieve
					moh(5, i(73460)),	-- Cataclysmic Gladiator's Rifle
					moh(5, i(73452)),	-- Cataclysmic Gladiator's Right Render
					moh(5, i(73454)),	-- Cataclysmic Gladiator's Ripper
					moh(5, i(73455)),	-- Cataclysmic Gladiator's Shanker
					moh(2, i(73446)),	-- Cataclysmic Gladiator's Shield Wall
					moh(5, i(73461)),	-- Cataclysmic Gladiator's Shiv
					moh(5, i(73451)),	-- Cataclysmic Gladiator's Slasher
					moh(5, i(73447)),	-- Cataclysmic Gladiator's Slicer
					moh(5, i(73467)),	-- Cataclysmic Gladiator's Spellblade
					moh(5, i(73462)),	-- Cataclysmic Gladiator's Staff
					moh(5, i(73464)),	-- Cataclysmic Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					moh(12, iensemble(146443, {	-- Ensemble: Cataclysmic Gladiator's Dreadplate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(73620)),	-- Cataclysmic Gladiator's Dreadplate Chestpiece
					moh(2, i(73619)),	-- Cataclysmic Gladiator's Dreadplate Gauntlets
					moh(3, i(73618)),	-- Cataclysmic Gladiator's Dreadplate Helm
					moh(3, i(73617)),	-- Cataclysmic Gladiator's Dreadplate Legguards
					moh(2, i(73616)),	-- Cataclysmic Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					moh(12, iensemble(146441, {	-- Ensemble: Cataclysmic Gladiator's Dragonhide Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(73615)),	-- Cataclysmic Gladiator's Dragonhide Gloves
					moh(3, i(73614)),	-- Cataclysmic Gladiator's Dragonhide Helm
					moh(3, i(73613)),	-- Cataclysmic Gladiator's Dragonhide Legguards
					moh(3, i(73612)),	-- Cataclysmic Gladiator's Dragonhide Robes
					moh(2, i(73611)),	-- Cataclysmic Gladiator's Dragonhide Spaulders
					moh(2, i(73607)),	-- Cataclysmic Gladiator's Kodohide Gloves
					moh(3, i(73606)),	-- Cataclysmic Gladiator's Kodohide Helm
					moh(3, i(73605)),	-- Cataclysmic Gladiator's Kodohide Legguards
					moh(3, i(73604)),	-- Cataclysmic Gladiator's Kodohide Robes
					moh(2, i(73603)),	-- Cataclysmic Gladiator's Kodohide Spaulders
					moh(2, i(73599)),	-- Cataclysmic Gladiator's Wyrmhide Gloves
					moh(3, i(73598)),	-- Cataclysmic Gladiator's Wyrmhide Helm
					moh(3, i(73597)),	-- Cataclysmic Gladiator's Wyrmhide Legguards
					moh(3, i(73596)),	-- Cataclysmic Gladiator's Wyrmhide Robes
					moh(2, i(73595)),	-- Cataclysmic Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					moh(12, iensemble(146439, {	-- Ensemble: Cataclysmic Gladiator's Chain Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(73584)),	-- Cataclysmic Gladiator's Chain Armor
					moh(2, i(73583)),	-- Cataclysmic Gladiator's Chain Gauntlets
					moh(3, i(73582)),	-- Cataclysmic Gladiator's Chain Helm
					moh(3, i(73581)),	-- Cataclysmic Gladiator's Chain Leggings
					moh(2, i(73580)),	-- Cataclysmic Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					moh(12, iensemble(146457, {	-- Ensemble: Cataclysmic Gladiator's Silk Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(73572)),	-- Cataclysmic Gladiator's Silk Amice
					moh(3, i(73575)),	-- Cataclysmic Gladiator's Silk Cowl
					moh(2, i(73576)),	-- Cataclysmic Gladiator's Silk Handguards
					moh(3, i(73573)),	-- Cataclysmic Gladiator's Silk Robe
					moh(3, i(73574)),	-- Cataclysmic Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					moh(12, iensemble(146455, {	-- Ensemble: Cataclysmic Gladiator's Scaled Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(88170)),	-- Cataclysmic Gladiator's Ornamented Battlerobe
					moh(3, i(73560)),	-- Cataclysmic Gladiator's Ornamented Chestguard
					moh(2, i(73559)),	-- Cataclysmic Gladiator's Ornamented Gloves
					moh(3, i(73558)),	-- Cataclysmic Gladiator's Ornamented Headcover
					moh(3, i(73557)),	-- Cataclysmic Gladiator's Ornamented Legplates
					moh(2, i(73556)),	-- Cataclysmic Gladiator's Ornamented Spaulders
					moh(3, i(73571)),	-- Cataclysmic Gladiator's Scaled Chestpiece
					moh(2, i(73570)),	-- Cataclysmic Gladiator's Scaled Gauntlets
					moh(3, i(73569)),	-- Cataclysmic Gladiator's Scaled Helm
					moh(3, i(73568)),	-- Cataclysmic Gladiator's Scaled Legguards
					moh(2, i(73567)),	-- Cataclysmic Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					moh(12, iensemble(146453, {	-- Ensemble: Cataclysmic Gladiator's Satin Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(73549)),	-- Cataclysmic Gladiator's Mooncloth Gloves
					moh(3, i(73548)),	-- Cataclysmic Gladiator's Mooncloth Helm
					moh(3, i(73547)),	-- Cataclysmic Gladiator's Mooncloth Leggings
					moh(2, i(73545)),	-- Cataclysmic Gladiator's Mooncloth Mantle
					moh(3, i(73546)),	-- Cataclysmic Gladiator's Mooncloth Robe
					moh(2, i(73544)),	-- Cataclysmic Gladiator's Satin Gloves
					moh(3, i(73543)),	-- Cataclysmic Gladiator's Satin Hood
					moh(3, i(73542)),	-- Cataclysmic Gladiator's Satin Leggings
					moh(2, i(73540)),	-- Cataclysmic Gladiator's Satin Mantle
					moh(3, i(73541)),	-- Cataclysmic Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					moh(12, iensemble(146447, {	-- Ensemble: Cataclysmic Gladiator's Leather Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(73526)),	-- Cataclysmic Gladiator's Leather Gloves
					moh(3, i(73525)),	-- Cataclysmic Gladiator's Leather Helm
					moh(3, i(73524)),	-- Cataclysmic Gladiator's Leather Legguards
					moh(2, i(73523)),	-- Cataclysmic Gladiator's Leather Spaulders
					moh(3, i(73527)),	-- Cataclysmic Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					moh(12, iensemble(146451, {	-- Ensemble: Cataclysmic Gladiator's Ringmail Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(73512)),	-- Cataclysmic Gladiator's Linked Armor
					moh(2, i(73511)),	-- Cataclysmic Gladiator's Linked Gauntlets
					moh(3, i(73510)),	-- Cataclysmic Gladiator's Linked Helm
					moh(3, i(73509)),	-- Cataclysmic Gladiator's Linked Leggings
					moh(2, i(73508)),	-- Cataclysmic Gladiator's Linked Spaulders
					moh(3, i(73506)),	-- Cataclysmic Gladiator's Mail Armor
					moh(2, i(73505)),	-- Cataclysmic Gladiator's Mail Gauntlets
					moh(3, i(73504)),	-- Cataclysmic Gladiator's Mail Helm
					moh(3, i(73503)),	-- Cataclysmic Gladiator's Mail Leggings
					moh(2, i(73502)),	-- Cataclysmic Gladiator's Mail Spaulders
					moh(3, i(73517)),	-- Cataclysmic Gladiator's Ringmail Armor
					moh(2, i(73516)),	-- Cataclysmic Gladiator's Ringmail Gauntlets
					moh(3, i(73515)),	-- Cataclysmic Gladiator's Ringmail Helm
					moh(3, i(73514)),	-- Cataclysmic Gladiator's Ringmail Leggings
					moh(2, i(73513)),	-- Cataclysmic Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					moh(12, iensemble(146445, {	-- Ensemble: Cataclysmic Gladiator's Felweave Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(2, i(73483)),	-- Cataclysmic Gladiator's Felweave Amice
					moh(3, i(73486)),	-- Cataclysmic Gladiator's Felweave Cowl
					moh(2, i(73487)),	-- Cataclysmic Gladiator's Felweave Handguards
					moh(3, i(73484)),	-- Cataclysmic Gladiator's Felweave Raiment
					moh(3, i(73485)),	-- Cataclysmic Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					moh(12, iensemble(146449, {	-- Ensemble: Cataclysmic Gladiator's Plate Armor
						["timeline"] = { ADDED_7_2_0 },
					})),
					moh(3, i(73482)),	-- Cataclysmic Gladiator's Plate Chestpiece
					moh(2, i(73481)),	-- Cataclysmic Gladiator's Plate Gauntlets
					moh(3, i(73480)),	-- Cataclysmic Gladiator's Plate Helm
					moh(3, i(73479)),	-- Cataclysmic Gladiator's Plate Legguards
					moh(2, i(73478)),	-- Cataclysmic Gladiator's Plate Shoulders
				}),
				n(BACK, {
					moh(1, i(73647)),	-- Cataclysmic Gladiator's Cape of Cruelty
					moh(1, i(73646)),	-- Cataclysmic Gladiator's Cape of Prowess
					moh(1, i(73495)),	-- Cataclysmic Gladiator's Cloak of Alacrity
					moh(1, i(73494)),	-- Cataclysmic Gladiator's Cloak of Prowess
					moh(1, i(73629)),	-- Cataclysmic Gladiator's Drape of Diffusion
					moh(1, i(73628)),	-- Cataclysmic Gladiator's Drape of Meditation
					moh(1, i(73630)),	-- Cataclysmic Gladiator's Drape of Prowess
				}),
				n(WRIST, {
					moh(1, i(73518)),	-- Cataclysmic Gladiator's Armbands of Meditation
					moh(1, i(73519)),	-- Cataclysmic Gladiator's Armbands of Prowess
					moh(1, i(73550)),	-- Cataclysmic Gladiator's Armplates of Alacrity
					moh(1, i(73551)),	-- Cataclysmic Gladiator's Armplates of Proficiency
					moh(1, i(73528)),	-- Cataclysmic Gladiator's Armwraps of Accuracy
					moh(1, i(73529)),	-- Cataclysmic Gladiator's Armwraps of Alacrity
					moh(1, i(73608)),	-- Cataclysmic Gladiator's Bindings of Meditation
					moh(1, i(73600)),	-- Cataclysmic Gladiator's Bindings of Prowess
					moh(1, i(73561)),	-- Cataclysmic Gladiator's Bracers of Meditation
					moh(1, i(73562)),	-- Cataclysmic Gladiator's Bracers of Prowess
					moh(1, i(73633)),	-- Cataclysmic Gladiator's Cuffs of Accuracy
					moh(1, i(73631)),	-- Cataclysmic Gladiator's Cuffs of Meditation
					moh(1, i(73632)),	-- Cataclysmic Gladiator's Cuffs of Prowess
					moh(1, i(73585)),	-- Cataclysmic Gladiator's Wristguards of Accuracy
					moh(1, i(73586)),	-- Cataclysmic Gladiator's Wristguards of Alacrity
				}),
				n(WAIST, {
					moh(1, i(73602)),	-- Cataclysmic Gladiator's Belt of Cruelty
					moh(1, i(73610)),	-- Cataclysmic Gladiator's Belt of Meditation
					moh(1, i(73566)),	-- Cataclysmic Gladiator's Clasp of Cruelty
					moh(1, i(73565)),	-- Cataclysmic Gladiator's Clasp of Meditation
					moh(1, i(73638)),	-- Cataclysmic Gladiator's Cord of Accuracy
					moh(1, i(73639)),	-- Cataclysmic Gladiator's Cord of Cruelty
					moh(1, i(73637)),	-- Cataclysmic Gladiator's Cord of Meditation
					moh(1, i(73555)),	-- Cataclysmic Gladiator's Girdle of Cruelty
					moh(1, i(73554)),	-- Cataclysmic Gladiator's Girdle of Prowess
					moh(1, i(73589)),	-- Cataclysmic Gladiator's Links of Accuracy
					moh(1, i(73590)),	-- Cataclysmic Gladiator's Links of Cruelty
					moh(1, i(73532)),	-- Cataclysmic Gladiator's Waistband of Accuracy
					moh(1, i(73533)),	-- Cataclysmic Gladiator's Waistband of Cruelty
					moh(1, i(73507)),	-- Cataclysmic Gladiator's Waistguard of Cruelty
					moh(1, i(73522)),	-- Cataclysmic Gladiator's Waistguard of Meditation
				}),
				n(FEET, {
					moh(2, i(73530)),	-- Cataclysmic Gladiator's Boots of Alacrity
					moh(2, i(73531)),	-- Cataclysmic Gladiator's Boots of Cruelty
					moh(2, i(73601)),	-- Cataclysmic Gladiator's Footguards of Alacrity
					moh(2, i(73609)),	-- Cataclysmic Gladiator's Footguards of Meditation
					moh(2, i(73564)),	-- Cataclysmic Gladiator's Greaves of Alacrity
					moh(2, i(73563)),	-- Cataclysmic Gladiator's Greaves of Meditation
					moh(2, i(73521)),	-- Cataclysmic Gladiator's Sabatons of Alacrity
					moh(2, i(73587)),	-- Cataclysmic Gladiator's Sabatons of Alacrity
					moh(2, i(73588)),	-- Cataclysmic Gladiator's Sabatons of Cruelty
					moh(2, i(73520)),	-- Cataclysmic Gladiator's Sabatons of Meditation
					moh(2, i(73635)),	-- Cataclysmic Gladiator's Treads of Alacrity
					moh(2, i(73636)),	-- Cataclysmic Gladiator's Treads of Cruelty
					moh(2, i(73634)),	-- Cataclysmic Gladiator's Treads of Meditation
					moh(2, i(73552)),	-- Cataclysmic Gladiator's Warboots of Alacrity
					moh(2, i(73553)),	-- Cataclysmic Gladiator's Warboots of Cruelty
				}),
				filter(NECK_F, {
					i(73493),	-- Cataclysmic Gladiator's Choker of Proficiency
					i(73492),	-- Cataclysmic Gladiator's Choker of Prowess
					i(73645),	-- Cataclysmic Gladiator's Necklace of Proficiency
					i(73644),	-- Cataclysmic Gladiator's Necklace of Prowess
					i(73627),	-- Cataclysmic Gladiator's Pendant of Alacrity
					i(73626),	-- Cataclysmic Gladiator's Pendant of Diffusion
					i(73625),	-- Cataclysmic Gladiator's Pendant of Meditation
				}),
				filter(FINGER_F, {
					i(73622),	-- Cataclysmic Gladiator's Band of Accuracy
					i(73623),	-- Cataclysmic Gladiator's Band of Cruelty
					i(73621),	-- Cataclysmic Gladiator's Band of Meditation
					i(73640),	-- Cataclysmic Gladiator's Ring of Accuracy
					i(73641),	-- Cataclysmic Gladiator's Ring of Cruelty
					i(73488),	-- Cataclysmic Gladiator's Signet of Accuracy
					i(73489),	-- Cataclysmic Gladiator's Signet of Cruelty
				}),
				filter(THROWN, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
					i(73471),	-- Cataclysmic Gladiator's Hatchet (Throw Wep)
					i(73445),	-- Cataclysmic Gladiator's War Edge (Throw Wep)
				})),
				filter(RELICS_F, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 } }, {
					i(73490),	-- Cataclysmic Gladiator's Relic of Conquest
					i(73624),	-- Cataclysmic Gladiator's Relic of Dominance
					i(73594),	-- Cataclysmic Gladiator's Relic of Salvation
					i(73642),	-- Cataclysmic Gladiator's Relic of Triumph
				})),
				filter(TRINKET_F, {
					i(73648),	-- Cataclysmic Gladiator's Badge of Conquest
					i(73498),	-- Cataclysmic Gladiator's Badge of Dominance
					i(73496),	-- Cataclysmic Gladiator's Badge of Victory
					i(73593),	-- Cataclysmic Gladiator's Emblem of Cruelty
					i(73591),	-- Cataclysmic Gladiator's Emblem of Meditation
					i(73592),	-- Cataclysmic Gladiator's Emblem of Tenacity
					i(73643),	-- Cataclysmic Gladiator's Insignia of Conquest
					i(73497),	-- Cataclysmic Gladiator's Insignia of Dominance
					i(73491),	-- Cataclysmic Gladiator's Insignia of Victory
					i(73539),	-- Cataclysmic Gladiator's Medallion of Cruelty (A)
					i(73535),	-- Cataclysmic Gladiator's Medallion of Meditation (A)
					i(73536),	-- Cataclysmic Gladiator's Medallion of Tenacity (A)
					i(73538),	-- Cataclysmic Gladiator's Medallion of Cruelty (H)
					i(73534),	-- Cataclysmic Gladiator's Medallion of Meditation (H)
					i(73537),	-- Cataclysmic Gladiator's Medallion of Tenacity (H)
					un(NEVER_IMPLEMENTED, i(73579)),	-- Cataclysmic Gladiator's Mark of Cruelty
					un(NEVER_IMPLEMENTED, i(73577)),	-- Cataclysmic Gladiator's Mark of Meditation
					un(NEVER_IMPLEMENTED, i(73578)),	-- Cataclysmic Gladiator's Mark of Tenacity
					un(NEVER_IMPLEMENTED, i(73501)),	-- Cataclysmic Gladiator's Symbol of Cruelty
					un(NEVER_IMPLEMENTED, i(73499)),	-- Cataclysmic Gladiator's Symbol of Meditation
					un(NEVER_IMPLEMENTED, i(73500)),	-- Cataclysmic Gladiator's Symbol of Tenacity
				}),
			}),
			elitepvp(n(PVP_ELITE, bubbleDownSelf({
				["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },

				-- #if ANYCLASSIC
				["OnUpdate"] = CATACLYSMIC_ELITE_ONUPDATE,
				-- #endif
			}, {
				-- Original Sources are: Unknown. Presumably:
				-- n00000 (7 different ID's exist) Captain Dirgehammer in Stormwind (Alliance)
				-- n00000 (7 different ID's exist) Sergeant Thunderhorn in Orgrimmar (Horde)
				n(WEAPONS, {
					i(73435),	-- Cataclysmic Gladiator's Barrier
					i(73417),	-- Cataclysmic Gladiator's Baton of Light
					i(73433),	-- Cataclysmic Gladiator's Battle Staff
					i(73415),	-- Cataclysmic Gladiator's Bonecracker
					i(73443),	-- Cataclysmic Gladiator's Bonegrinder
					i(73441),	-- Cataclysmic Gladiator's Cleaver
					i(73444),	-- Cataclysmic Gladiator's Decapitator
					i(73436),	-- Cataclysmic Gladiator's Endgame
					i(73424),	-- Cataclysmic Gladiator's Engery Staff
					i(73420),	-- Cataclysmic Gladiator's Fleshslicer
					i(73426),	-- Cataclysmic Gladiator's Gavel
					i(73442),	-- Cataclysmic Gladiator's Greatsword
					i(73416),	-- Cataclysmic Gladiator's Hacker
					i(73430),	-- Cataclysmic Gladiator's Heavy Crossbow
					i(73437),	-- Cataclysmic Gladiator's Longbow
					i(73423),	-- Cataclysmic Gladiator's Pike
					i(73440),	-- Cataclysmic Gladiator's Pummeler
					i(73439),	-- Cataclysmic Gladiator's Quickblade
					i(73425),	-- Cataclysmic Gladiator's Redoubt
					i(73432),	-- Cataclysmic Gladiator's Reprieve
					i(73427),	-- Cataclysmic Gladiator's Rifle
					i(73419),	-- Cataclysmic Gladiator's Right Render
					i(73421),	-- Cataclysmic Gladiator's Ripper
					i(73422),	-- Cataclysmic Gladiator's Shanker
					i(73413),	-- Cataclysmic Gladiator's Shield Wall
					i(73428),	-- Cataclysmic Gladiator's Shiv
					i(73418),	-- Cataclysmic Gladiator's Slasher
					i(73414),	-- Cataclysmic Gladiator's Slicer
					i(73434),	-- Cataclysmic Gladiator's Spellblade
					i(73429),	-- Cataclysmic Gladiator's Staff
					i(73431),	-- Cataclysmic Gladiator's Touch of Defeat
				}),
				cl(DEATHKNIGHT, {
					i(73742),	-- Cataclysmic Gladiator's Dreadplate Chestpiece
					i(73741),	-- Cataclysmic Gladiator's Dreadplate Gauntlets
					i(73740),	-- Cataclysmic Gladiator's Dreadplate Helm
					i(73739),	-- Cataclysmic Gladiator's Dreadplate Legguards
					i(73738),	-- Cataclysmic Gladiator's Dreadplate Shoulders
				}),
				cl(DRUID, {
					i(73737),	-- Cataclysmic Gladiator's Dragonhide Gloves
					i(73736),	-- Cataclysmic Gladiator's Dragonhide Helm
					i(73735),	-- Cataclysmic Gladiator's Dragonhide Legguards
					i(73734),	-- Cataclysmic Gladiator's Dragonhide Robe
					i(73733),	-- Cataclysmic Gladiator's Dragonhide Spaulders
					i(73731),	-- Cataclysmic Gladiator's Kodohide Gloves
					i(73730),	-- Cataclysmic Gladiator's Kodohide Helm
					i(73729),	-- Cataclysmic Gladiator's Kodohide Legguards
					i(73728),	-- Cataclysmic Gladiator's Kodohide Robe
					i(73727),	-- Cataclysmic Gladiator's Kodohide Spaulders
					i(73725),	-- Cataclysmic Gladiator's Wyrmhide Gloves
					i(73724),	-- Cataclysmic Gladiator's Wyrmhide Helm
					i(73723),	-- Cataclysmic Gladiator's Wyrmhide Legguards
					i(73722),	-- Cataclysmic Gladiator's Wyrmhide Robe
					i(73721),	-- Cataclysmic Gladiator's Wyrmhide Spaulders
				}),
				cl(HUNTER, {
					i(73718),	-- Cataclysmic Gladiator's Chain Armor
					i(73717),	-- Cataclysmic Gladiator's Chain Gauntlets
					i(73716),	-- Cataclysmic Gladiator's Chain Helm
					i(73715),	-- Cataclysmic Gladiator's Chain Leggings
					i(73714),	-- Cataclysmic Gladiator's Chain Spaulders
				}),
				cl(MAGE, {
					i(73709),	-- Cataclysmic Gladiator's Silk Amice
					i(73712),	-- Cataclysmic Gladiator's Silk Cowl
					i(73713),	-- Cataclysmic Gladiator's Silk Handguards
					i(73710),	-- Cataclysmic Gladiator's Silk Robe
					i(73711),	-- Cataclysmic Gladiator's Silk Trousers
				}),
				cl(PALADIN, {
					i(73701),	-- Cataclysmic Gladiator's Ornnamented Chestguard
					i(73700),	-- Cataclysmic Gladiator's Ornnamented Gloves
					i(73699),	-- Cataclysmic Gladiator's Ornnamented Headcover
					i(73698),	-- Cataclysmic Gladiator's Ornnamented Legplates
					i(73697),	-- Cataclysmic Gladiator's Ornnamented Spaulders
					i(73708),	-- Cataclysmic Gladiator's Scaled Chestpiece
					i(73707),	-- Cataclysmic Gladiator's Scaled Gloves
					i(73706),	-- Cataclysmic Gladiator's Scaled Helm
					i(73705),	-- Cataclysmic Gladiator's Scaled Legguards
					i(73704),	-- Cataclysmic Gladiator's Scaled Shoulders
				}),
				cl(PRIEST, {
					i(73694),	-- Cataclysmic Gladiator's Mooncloth Gloves
					i(73693),	-- Cataclysmic Gladiator's Mooncloth Helm
					i(73692),	-- Cataclysmic Gladiator's Mooncloth Leggings
					i(73690),	-- Cataclysmic Gladiator's Mooncloth Mantle
					i(73691),	-- Cataclysmic Gladiator's Mooncloth Robe
					i(73689),	-- Cataclysmic Gladiator's Satin Gloves
					i(73688),	-- Cataclysmic Gladiator's Satin Hood
					i(73687),	-- Cataclysmic Gladiator's Satin Leggings
					i(73685),	-- Cataclysmic Gladiator's Satin Mantle
					i(73686),	-- Cataclysmic Gladiator's Satin Robe
				}),
				cl(ROGUE, {
					i(73681),	-- Cataclysmic Gladiator's Leather Gloves
					i(73680),	-- Cataclysmic Gladiator's Leather Helm
					i(73679),	-- Cataclysmic Gladiator's Leather Legguards
					i(73678),	-- Cataclysmic Gladiator's Leather Spaulders
					i(73682),	-- Cataclysmic Gladiator's Leather Tunic
				}),
				cl(SHAMAN, {
					i(73670),	-- Cataclysmic Gladiator's Linked Armor
					i(73669),	-- Cataclysmic Gladiator's Linked Gauntlets
					i(73668),	-- Cataclysmic Gladiator's Linked Helm
					i(73667),	-- Cataclysmic Gladiator's Linked Legs
					i(73666),	-- Cataclysmic Gladiator's Linked Spaulders
					i(73665),	-- Cataclysmic Gladiator's Mail Armor
					i(73664),	-- Cataclysmic Gladiator's Mail Gauntlets
					i(73663),	-- Cataclysmic Gladiator's Mail Helm
					i(73662),	-- Cataclysmic Gladiator's Mail Leggings
					i(73661),	-- Cataclysmic Gladiator's Mail Spaulders
					i(73675),	-- Cataclysmic Gladiator's Ringmail Armor
					i(73674),	-- Cataclysmic Gladiator's Ringmail Gauntlets
					i(73673),	-- Cataclysmic Gladiator's Ringmail Helm
					i(73672),	-- Cataclysmic Gladiator's Ringmail Legs
					i(73671),	-- Cataclysmic Gladiator's Ringmail Spaulders
				}),
				cl(WARLOCK, {
					i(73656),	-- Cataclysmic Gladiator's Felweave Amice
					i(73659),	-- Cataclysmic Gladiator's Felweave Cowl
					i(73660),	-- Cataclysmic Gladiator's Felweave Handguards
					i(73657),	-- Cataclysmic Gladiator's Felweave Rainment
					i(73658),	-- Cataclysmic Gladiator's Felweave Trousers
				}),
				cl(WARRIOR, {
					i(73655),	-- Cataclysmic Gladiator's Plate Chestpiece
					i(73654),	-- Cataclysmic Gladiator's Plate Gloves
					i(73653),	-- Cataclysmic Gladiator's Plate Helm
					i(73652),	-- Cataclysmic Gladiator's Plate Legguards
					i(73651),	-- Cataclysmic Gladiator's Plate Soulders
				}),
				n(FEET, {
					i(73683),	-- Cataclysmic Gladiator's Boots of Alacrity
					i(73684),	-- Cataclysmic Gladiator's Boots of Cruelty
					i(73726),	-- Cataclysmic Gladiator's Footguards of Alacrity
					i(73732),	-- Cataclysmic Gladiator's Footguards of Meditation
					i(73703),	-- Cataclysmic Gladiator's Greaves of Alacrity
					i(73702),	-- Cataclysmic Gladiator's Greaves of Mediation
					i(73677),	-- Cataclysmic Gladiator's Sabatons of Alacrity
					i(73719),	-- Cataclysmic Gladiator's Sabatons of Alacrity
					i(73720),	-- Cataclysmic Gladiator's Sabatons of Cruelty
					i(73676),	-- Cataclysmic Gladiator's Sabatons of Meditation
					i(73744),	-- Cataclysmic Gladiator's Treads of Alacrity
					i(73745),	-- Cataclysmic Gladiator's Treads of Cruelty
					i(73743),	-- Cataclysmic Gladiator's Treads of Meditation
					i(73695),	-- Cataclysmic Gladiator's Warboots of Alacrity
					i(73696),	-- Cataclysmic Gladiator's Warboots of Cruelty
				}),
				filter(THROWN, {
					i(74783),	-- Cataclysmic Gladiator's Hatchet (Throw Weapon)
					i(73412),	-- Cataclysmic Gladiator's War Edge (Throw Wep)
				}),
				filter(RELICS_F, {
					i(74783),	-- Cataclysmic Gladiator's Relic of Conquest
					i(74785),	-- Cataclysmic Gladiator's Relic of Dominance
					i(74784),	-- Cataclysmic Gladiator's Relic of Salvation
					i(74786),	-- Cataclysmic Gladiator's Relic of Triumph
				}),
			}))),
		})),
	}))),
});

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
-- 	n(PVP, {
-- 		-- PvP Ensembles
-- 		q(46512),	-- Bloodthirsty Gladiator's Chain Armor (Hunter)
-- 		q(46513),	-- Bloodthirsty Gladiator's Dragonhide Armor (Druid)
-- 		q(46514),	-- Bloodthirsty Gladiator's Dreadplate Armor (Death Knight)
-- 		q(46515),	-- Bloodthirsty Gladiator's Felweave Armor (Warlock)
-- 		q(46516),	-- Bloodthirsty Gladiator's Leather Armor (Rogue)
-- 		q(46517),	-- Bloodthirsty Gladiator's Plate Armor (Warrior)
-- 		q(46518),	-- Bloodthirsty Gladiator's Ringmail Armor (Shaman)
-- 		q(46519),	-- Bloodthirsty Gladiator's Satin Armor (Priest)
-- 		q(46520),	-- Bloodthirsty Gladiator's Scaled Armor (Paladin)
-- 		q(46521),	-- Bloodthirsty Gladiator's Silk Armor (Mage)
-- 		q(46355),	-- Cataclysmic Gladiator's Chain Armor (Hunter)
-- 		q(46523),	-- Cataclysmic Gladiator's Dragonhide Armor (Druid)
-- 		q(46524),	-- Cataclysmic Gladiator's Dreadplate Armor (Death Knight)
-- 		q(46525),	-- Cataclysmic Gladiator's Felweave Armor (Warlock)
-- 		q(46526),	-- Cataclysmic Gladiator's Leather Armor (Rogue)
-- 		q(46527),	-- Cataclysmic Gladiator's Plate Armor (Warrior)
-- 		q(46528),	-- Cataclysmic Gladiator's Ringmail Armor (Shaman)
-- 		q(46529),	-- Cataclysmic Gladiator's Satin Armor (Priest)
-- 		q(46530),	-- Cataclysmic Gladiator's Scaled Armor (Paladin)
-- 		q(46531),	-- Cataclysmic Gladiator's Silk Armor (Mage)
-- 		q(46533),	-- Vicious Gladiator's Chain Armor (Hunter)
-- 		q(46534),	-- Vicious Gladiator's Dragonhide Armor (Druid)
-- 		q(46535),	-- Vicious Gladiator's Dreadplate Armor (Death Knight)
-- 		q(46536),	-- Vicious Gladiator's Felweave Armor (Warlock)
-- 		q(46537),	-- Vicious Gladiator's Leather Armor (Rogue)
-- 		q(46538),	-- Vicious Gladiator's Plate Armor (Warrior)
-- 		q(46539),	-- Vicious Gladiator's Ringmail Armor (Shaman)
-- 		q(46540),	-- Vicious Gladiator's Satin Armor (Priest)
-- 		q(46541),	-- Vicious Gladiator's Scaled Armor (Paladin)
-- 		q(46542),	-- Vicious Gladiator's Silk Armor (Mage)
-- 		q(46544),	-- Ruthless Gladiator's Chain Armor (Hunter)
-- 		q(46545),	-- Ruthless Gladiator's Dragonhide Armor (Druid)
-- 		q(46546),	-- Ruthless Gladiator's Dreadplate Armor (Death Knight)
-- 		q(46547),	-- Ruthless Gladiator's Felweave Armor (Warlock)
-- 		q(46548),	-- Ruthless Gladiator's Leather Armor (Rogue)
-- 		q(46549),	-- Ruthless Gladiator's Plate Armor (Warrior)
-- 		q(46550),	-- Ruthless Gladiator's Ringmail Armor (Shaman)
-- 		q(46551),	-- Ruthless Gladiator's Satin Armor (Priest)
-- 		q(46552),	-- Ruthless Gladiator's Scaled Armor (Paladin)
-- 		q(46553),	-- Ruthless Gladiator's Silk Armor (Mage)

-- 		-- PvP Arsenals
-- 		q(46532),	-- Cataclysmic Gladiator's Arsenal
-- 		q(46543),	-- Vicious Gladiator's Arsenal
-- 		q(46554),	-- Ruthless Gladiator's Arsenal
-- 	}),
-- })));
