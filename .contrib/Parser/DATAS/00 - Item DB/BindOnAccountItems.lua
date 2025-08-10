-- There is not currently an automatic way to know whether an Item is BoA or BoP since in both
-- situations [b] = 1
-- Items listed in this file will be directly marked as BoE to allow ATT to properly
-- treat them for their BoA status
local Items = ItemDBConditional;
-- Regular BoA/WuE Item
local i = function(itemID)
	local item = { ["b"] = 2 };
	Items[itemID] = item;
	return item;
end
-- BoA/WuE Item forcibly ignoring bonuses (i.e. within Difficulties etc.)
local ib = function(itemID)
	local item = { ["b"] = 2, ["ignoreBonus"] = true };
	Items[itemID] = item;
	return item;
end

-- TODO: move more BoA items here; especially if they are 'cost' items or contain BoP items

-- #if SEASON_OF_DISCOVERY
i(226500);	-- Chipped Drakefire Amulet
-- #endif

-- MOP 
-- #if ANYCLASSIC
i(247497);	-- Order of the Cloud Serpent Flight Log
-- #endif
i(93231);	-- Grand Commendation of Operation: Shieldwall
i(93225);	-- Grand Commendation of the Anglers
i(93224);	-- Grand Commendation of the August Celestials
i(93232);	-- Grand Commendation of the Dominance Offensive
i(93215);	-- Grand Commendation of the Golden Lotus
i(95545);	-- Grand Commendation of the Kirin Tor Offensive
i(92522);	-- Grand Commendation of the Klaxxi
i(93230);	-- Grand Commendation of the Lorewalkers
i(93229);	-- Grand Commendation of the Order of the Cloud Serpent
i(93220);	-- Grand Commendation of the Shado-Pan
i(95548);	-- Grand Commendation of the Sunreaver Onslaught
i(93226);	-- Grand Commendation of the Tillers

-- BoA Cost Items
i(137642);	-- Mark of Honor
i(163036);	-- Polished Pet Charm
i(116415);	-- Shiny Pet Charm
i(190189);	-- Sandworn Relic	(became BoA 2022-07-29)

-- SL Tokens
i(187187);	-- Korthian Armaments
i(188650);	-- Grimoire of Knowledge
i(188655);	-- Crystalline Memory Repository
i(188656);	-- Fractal Thoughtbinder
i(188657);	-- Mind-Expanding Prism
i(190184);	-- Incense of Infinity
i(188156);	-- Korthian Accessory
i(188161);	-- Korthian Belt
i(188155);	-- Korthian Boots
i(188163);	-- Korthian Bracers
i(188154);	-- Korthian Chestpiece
i(188153);	-- Korthian Cloak
i(188157);	-- Korthian Gloves
i(188158);	-- Korthian Helm
i(188159);	-- Korthian Legguards
i(188160);	-- Korthian Shoulders
i(188162);	-- Korthian Weaponry

-- BFA Black Empire Tokens
i(173420);	-- Black Empire Cloth Belt
i(173415);	-- Black Empire Cloth Boots
i(173423);	-- Black Empire Cloth Bracers
i(173416);	-- Black Empire Cloth Gloves
i(173417);	-- Black Empire Cloth Helm
i(173418);	-- Black Empire Cloth Leggings
i(173414);	-- Black Empire Cloth Robes
i(173419);	-- Black Empire Cloth Spaulders
i(173413);	-- Black Empire Leather Belt
i(173408);	-- Black Empire Leather Boots
i(173424);	-- Black Empire Leather Bracers
i(173407);	-- Black Empire Leather Chestpiece
i(173409);	-- Black Empire Leather Gloves
i(173410);	-- Black Empire Leather Helm
i(173411);	-- Black Empire Leather Leggings
i(173412);	-- Black Empire Leather Spaulders
i(173406);	-- Black Empire Mail Belt
i(173401);	-- Black Empire Mail Boots
i(173425);	-- Black Empire Mail Bracers
i(173400);	-- Black Empire Mail Chestpiece
i(173402);	-- Black Empire Mail Gloves
i(173403);	-- Black Empire Mail Helm
i(173404);	-- Black Empire Mail Leggings
i(173405);	-- Black Empire Mail Spaulders
i(173399);	-- Black Empire Plate Belt
i(173394);	-- Black Empire Plate Boots
i(173422);	-- Black Empire Plate Bracers
i(173393);	-- Black Empire Plate Chestpiece
i(173395);	-- Black Empire Plate Gloves
i(173396);	-- Black Empire Plate Helm
i(173397);	-- Black Empire Plate Leggings
i(173398);	-- Black Empire Plate Spaulders

-- BFA Benthic Tokens
i(169478);	-- Benthic Bracers
i(169480);	-- Benthic Chestguard
i(169481);	-- Benthic Cloak
i(169485);	-- Benthic Gauntlets
i(169477);	-- Benthic Girdle
i(169479);	-- Benthic Helm
i(169482);	-- Benthic Leggings
i(169484);	-- Benthic Spaulders
i(169483);	-- Benthic Treads

-- Legion Legendary Containers
i(147294);	-- Bone-Wrought Coffer of the Damned [Death Knight]
i(147301);	-- Coffer of Twin Faiths [Priest]
i(147297);	-- Deepwood Ranger's Quiver [Hunter]
i(147295);	-- Demonslayer's Soul-Sealed Satchel [Demon Hunter]
i(147303);	-- Giant Elemental's Close Stone Fist [Shaman]
i(147299);	-- Hand-Carved Jade Puzzle Box [Monk]
i(147302);	-- Hollow Skeleton Key [Rogue]
i(147300);	-- Light-Bound Relinquary [Paladin]
i(147296);	-- Living Root-Bound Cache [Druid]
i(147304);	-- Pocket Keystone to Abandoned World [Warlock]
i(147298);	-- Spell-Secured Pocket of Infinite Depths [Mage]
i(147305);	-- Stalwart Champion's War Chest [Warrior]

-- Argus Unsullied Tokens
i(152740);	-- Unsullied Cloak
i(152738);	-- Unsullied Cloth Cap
i(152734);	-- Unsullied Cloth Mantle
i(153135);	-- Unsullied Cloth Robes
i(152742);	-- Unsullied Cloth Cuffs
i(153141);	-- Unsullied Cloth Mitts
i(153156);	-- Unsullied Cloth Sash
i(153154);	-- Unsullied Cloth Leggings
i(153144);	-- Unsullied Cloth Slippers
i(153139);	-- Unsullied Leather Headgear
i(153145);	-- Unsullied Leather Spaulders
i(153151);	-- Unsullied Leather Tunic
i(153142);	-- Unsullied Leather Armbands
i(152739);	-- Unsullied Leather Grips
i(153148);	-- Unsullied Leather Belt
i(152737);	-- Unsullied Leather Trousers
i(153136);	-- Unsullied Leather Treads
i(153147);	-- Unsullied Mail Coif
i(153137);	-- Unsullied Mail Spaulders
i(152741);	-- Unsullied Mail Chestguard
i(153158);	-- Unsullied Mail Bracers
i(153149);	-- Unsullied Mail Gloves
i(152744);	-- Unsullied Mail Girdle
i(153138);	-- Unsullied Mail Legguards
i(153152);	-- Unsullied Mail Boots
i(153155);	-- Unsullied Plate Helmet
i(153153);	-- Unsullied Plate Pauldrons
i(153143);	-- Unsullied Plate Breasplate
i(153150);	-- Unsullied Plate Vambraces
i(153157);	-- Unsullied Plate Gauntlets
i(153140);	-- Unsullied Plate Waistplate
i(153146);	-- Unsullied Plate Greaves
i(152743);	-- Unsullied Plate Sabatons
i(152736);	-- Unsullied Necklace
i(152735);	-- Unsullied Ring
i(152733);	-- Unsullied Trinket
i(152799);	-- Unsullied Relic

-- Pandaria Timeless Tokens
i(102318);	-- Timeless Cloak
i(102287);	-- Timeless Cloth Helm
i(102289);	-- Timeless Cloth Spaulders
i(102284);	-- Timeless Cloth Robes
i(102321);	-- Timeless Cloth Bracers
i(102286);	-- Timeless Cloth Gloves
i(102290);	-- Timeless Cloth Belt
i(102288);	-- Timeless Cloth Leggings
i(102285);	-- Timeless Cloth Boots
i(102280);	-- Timeless Leather Helm
i(102282);	-- Timeless Leather Spaulders
i(102277);	-- Timeless Leather Chestpiece
i(102322);	-- Timeless Leather Bracers
i(102279);	-- Timeless Leather Gloves
i(102283);	-- Timeless Leather Belt
i(102281);	-- Timeless Leather Leggings
i(102278);	-- Timeless Leather Boots
i(102273);	-- Timeless Mail Helm
i(102275);	-- Timeless Mail Shoulders
i(102270);	-- Timeless Mail Chestpiece
i(102323);	-- Timeless Mail Bracers
i(102272);	-- Timeless Mail Gloves
i(102276);	-- Timeless Mail Belt
i(102274);	-- Timeless Mail Leggings
i(102271);	-- Timeless Mail Boots
i(102266);	-- Timeless Plate Helm
i(102268);	-- Timeless Plate Spaulders
i(102263);	-- Timeless Plate Chestpiece
i(102320);	-- Timeless Plate Bracers
i(102265);	-- Timeless Plate Gloves
i(102269);	-- Timeless Plate Belt
i(102267);	-- Timeless Plate Leggings
i(102264);	-- Timeless Plate Boot
i(104345);	-- Timeless Lavalliere
i(102291);	-- Timeless Signet
i(104347);	-- Timeless Curio
i(104009);	-- Timeless Plate Armor Cache
i(104010);	-- Timeless Mail Armor Cache
i(104012);	-- Timeless Leather Armor Cache
i(104013);	-- Timeless Cloth Armor Cache

-- Archaeology Solves
i(64489);	-- Staff of Sorcerer-Thane Thaurissan
i(69764);	-- Extinct Turtle Shell
i(64643);	-- Queen Azshara's Dressing Gown
i(64644);	-- Headdress of the First Shaman
i(64885);	-- Scimitar of the Sirocco
i(64880);	-- Staff of Ammunae
i(64377);	-- Zin'rokh; Destroyer of Worlds
i(64460);	-- Nifflevar Bearded Axe
i(95391);	-- Mantid Sky Reaver
i(95392);	-- Sonic Pulse Generator
i(89685);	-- Spear of Xuen
i(89684);	-- Umbrella of Chi-Ji
i(117382);	-- Beakbreaker of Terokk
i(116985);	-- Headdress of the First Shaman
i(117384);	-- Warmaul of the Warmaul Chieftain

-- Heirloom Upgrade Tokens
i(122338);	-- Ancient Heirloom Armor Casing
i(122340);	-- Timeworn Heirloom Armor Casing
i(151614);	-- Weathered Heirloom Armor Casing
i(167731);	-- Battle-Hardened Heirloom Armor Casing
i(187997);	-- Eternal Heirloom Armor Casing
i(122339);	-- Ancient Heirloom Scabbard
i(122341);	-- Timeworn Heirloom Scabbard
i(151615);	-- Weathered Heirloom Scabbard
i(167732);	-- Battle-Hardened Heirloom Scabbard
i(187998);	-- Eternal Heirloom Scabbard

-- Old Heirlooms prior to proper BoA implementation
i(44102);	-- Aged Pauldrons of The Five Thunders
i(44096);	-- Battleworn Thrash Blade
i(44103);	-- Exceptional Stormshroud Shoulders
i(44107);	-- Exquisite Sunderseer Mantle
i(44098);	-- Inherited Insignia of the Alliance
i(44097);	-- Inherited Insignia of the Horde
i(44095);	-- Grand Staff of Jordan
i(44105);	-- Lasting Feralheart Spaulders
i(44100);	-- Pristine Lightforge Spaulders
i(44101);	-- Prized Beastmaster's Mantle
i(44092);	-- Reforged Truesilver Champion
i(44091);	-- Sharpened Scarlet Kris
i(44099);	-- Strengthened Stockade Pauldrons
i(44094);	-- The Blessed Hammer of Grace
i(44093);	-- Unpgraded Dwarven Hand Cannon
i(42944);	-- Balanced Heartseeker
i(42943);	-- Bloodied Arcanite Reaper
i(42950);	-- Champion Herod's Shoulder
i(48677);	-- Champion's Deathdealer Breastplate
i(42946);	-- Charmed Ancient Bone Bow
i(42948);	-- Devout Aurastone Hammer
i(42947);	-- Dignified Headmaster's Charge
i(42992);	-- Discerning Eye of the Beast
i(42951);	-- Mystical Pauldrons of Elements
i(48683);	-- Mystical Vest of Elements
i(48685);	-- Polished Breastplate of Valor
i(42949);	-- Polished Spaulders of Valor
i(48687);	-- Preened Ironfeather Breastplate
i(42984);	-- Preened Ironfeather Shoulders
i(48718);	-- Repurposed Lava Dredger
i(42952);	-- Stained Shadowcraft Spaulders
i(48689);	-- Stained Shadowcraft Tunic
i(42991);	-- Swift Hand of Justice
i(42985);	-- Tattered Dreadmist Mantle
i(48691);	-- Tattered Dreadmist Robe
i(42945);	-- Venerable Dal'Rend's Sacred Charge
i(48716);	-- Venerable Mass of McGowan

-----------------
-- PATCH 5.4.0 --
-----------------
-- Flexible
i(105674);	-- Hellscream's Barrier
i(105672);	-- Hellscream's Cleaver
i(105679);	-- Hellscream's Decapitator
i(105678);	-- Hellscream's Doomblade
i(105673);	-- Hellscream's Pig Sticker
i(105671);	-- Hellscream's Razor
i(105680);	-- Hellscream's Shield Wall
i(105676);	-- Hellscream's Tome of Destruction
i(105677);	-- Hellscream's War Staff
i(105670);	-- Hellscream's Warbow
i(105675);	-- Hellscream's Warmace

-- Normal
i(104409);	-- Hellscream's Barrier
i(104404);	-- Hellscream's Cleaver
i(104405);	-- Hellscream's Decapitator
i(104401);	-- Hellscream's Doomblade
i(104403);	-- Hellscream's Pig Sticker
i(104400);	-- Hellscream's Razor
i(104407);	-- Hellscream's Shield Wall
i(104408);	-- Hellscream's Tome of Destruction
i(104406);	-- Hellscream's War Staff
i(104399);	-- Hellscream's Warbow
i(104402);	-- Hellscream's Warmace

-- Heroic
i(105687);	-- Hellscream's Barrier
i(105685);	-- Hellscream's Cleaver
i(105692);	-- Hellscream's Decapitator
i(105691);	-- Hellscream's Doomblade
i(105686);	-- Hellscream's Pig Sticker
i(105684);	-- Hellscream's Razor
i(105693);	-- Hellscream's Shield Wall
i(105689);	-- Hellscream's Tome of Destruction
i(105690);	-- Hellscream's War Staff
i(105683);	-- Hellscream's Warbow
i(105688);	-- Hellscream's Warmace

-----------------
-- PATCH 6.1.0 --
-----------------
i(122625);	-- Shared Turbulent Hood
i(122630);	-- Shared Turbulent Choker
i(122627);	-- Shared Turbulent Spaulders
i(122631);	-- Shared Turbulent Cloak
i(122622);	-- Shared Turbulent Robes
i(122621);	-- Shared Turbulent Bracers
i(122624);	-- Shared Turbulent Gauntlets
i(122628);	-- Shared Turbulent Girdle
i(122626);	-- Shared Turbulent Leggings
i(122623);	-- Shared Turbulent Treads
i(122629);	-- Shared Turbulent Ring
i(122632);	-- Shared Turbulent Trinket
i(122633);	-- Shared Turbulent Armament

-----------------
-- PATCH 6.2.0 --
-----------------
i(127781);	-- Baleful Cloth Hood
i(127783);	-- Baleful Cloth Spaulders
i(127778);	-- Baleful Cloth Robe
i(127777);	-- Baleful Cloth Bracers
i(127780);	-- Baleful Cloth Gauntlets
i(127784);	-- Baleful Cloth Girdle
i(127782);	-- Baleful Cloth Leggings
i(127779);	-- Baleful Cloth Treads
i(127794);	-- Baleful Leather Hood
i(127796);	-- Baleful Leather Spaulders
i(127791);	-- Baleful Leather Tunic
i(127790);	-- Baleful Leather Bracers
i(127793);	-- Baleful Leather Gauntlets
i(127797);	-- Baleful Leather Girdle
i(127795);	-- Baleful Leather Leggings
i(127792);	-- Baleful Leather Treads
i(127807);	-- Baleful Mail Hood
i(127809);	-- Baleful Mail Spaulders
i(127804);	-- Baleful Mail Robe
i(127803);	-- Baleful Mail Bracers
i(127806);	-- Baleful Mail Gauntlets
i(127810);	-- Baleful Mail Girdle
i(127808);	-- Baleful Mail Leggings
i(127805);	-- Baleful Mail Treads
i(127820);	-- Baleful Plate Hood
i(127822);	-- Baleful Plate Spaulders
i(127817);	-- Baleful Plate Chest
i(127816);	-- Baleful Plate Bracers
i(127819);	-- Baleful Plate Gauntlets
i(127823);	-- Baleful Plate Girdle
i(127821);	-- Baleful Plate Leggings
i(127818);	-- Baleful Plate Treads
i(127799);	-- Baleful Pendant

-----------------
-- PATCH 6.2.2 --
-----------------
i(129941);	-- Commendation of the Ebon Blade [BOA]

-----------------
-- PATCH 7.2.0 --
-----------------
i(146950);	-- Legionfall Insignia [BOA]

-----------------
-- PATCH 8.2.0 --
-----------------
i(168497);	-- Rustbolt Resistance Insignia [BOA]

-----------------
-- PATCH 8.3.0 --
-----------------
i(173374);	-- Rajani Insignia [BOA]

-----------------
-- PATCH 9.2.5 --
-----------------
i(198449);	-- Pouch of Prodigious Wonders

-----------------
-- PATCH 9.2.7 --
-----------------
i(201355);	-- Eternal Equipment Chest
i(201362);	-- Fated Equipment Chest

------------------
-- PATCH 10.0.0 --
------------------
i(199837);	-- Dimmed Primeval Earth
i(199836);	-- Dimmed Primeval Fire
i(199838);	-- Dimmed Primeval Storm
i(199839);	-- Dimmed Primeval Water
i(199211);	-- Primeval Essence

------------------
-- PATCH 10.0.2 --
------------------
i(200082);	-- Battered Imbu-made Net
i(200447);	-- Centaur Hunting Trophy
i(200080);	-- Draconium Nugget
i(200443);	-- Dragon Isles Artifact
i(200285);	-- Dragonscale Expedition Insignia [Uncommon]
i(200452);	-- Dragonscale Expedition Insignia [Rare]
i(201921);	-- Dragonscale Expedition Insignia [Epic 500]
i(202091);	-- Dragonscale Expedition Insignia [Epic 2.5k]
i(200083);	-- Irontree Branch
i(200287);	-- Iskaara Tuskarr Insignia [Uncommon]
i(200453);	-- Iskaara Tuskarr Insignia [Rare]
i(201922);	-- Iskaara Tuskarr Insignia [Epic 500]
i(202092);	-- Iskaara Tuskarr Insignia [Epic 2.5k]
i(200085);	-- Khaz'gorite Wire
i(200086);	-- Khaz'gorite-Infused Resin
i(202173);	-- Magmote
i(200288);	-- Maruuk Centaur Insignia [Uncommon]
i(200454);	-- Maruuk Centaur Insignia [Rare]
i(201923);	-- Maruuk Centaur Insignia [Epic 500]
i(202094);	-- Maruuk Centaur Insignia [Epic 2.5k]
i(201254);	-- Medal of Honor [A] (Season 1)
i(201255);	-- Medal of Honor [H] (Season 1)
i(200449);	-- Sacred Tuskarr Totem
i(200084);	-- Salinated Serevite
i(201929);	-- Stolen Breath of Ohn'ahra
i(200081);	-- Strong Seavine
i(200450);	-- Titan Relic
i(200289);	-- Valdrakken Accord Insignia [Uncommon]
i(200455);	-- Valdrakken Accord Insignia [Rare]
i(201924);	-- Valdrakken Accord Insignia [Epic 500]
i(202093);	-- Valdrakken Accord Insignia [Epic 2.5k]

------------------
-- PATCH 10.0.5 --
------------------
i(204339);	-- Satchel of Coalescing Chaos

------------------
-- PATCH 10.0.7 --
------------------
i(203765);	-- Blue Hakkari Bijou
i(203766);	-- Bronze Hakkari Bijou
i(205289);	-- Crimson Equipment Chest
i(203767);	-- Gold Hakkari Bijou
i(203768);	-- Green Hakkari Bijou
i(203769);	-- Orange Hakkari Bijou
i(203646);	-- Primalist Cloak
i(203635);	-- Primalist Cloth Belt
i(203641);	-- Primalist Cloth Boots
i(203632);	-- Primalist Cloth Bracers
i(203616);	-- Primalist Cloth Chestpiece
i(203642);	-- Primalist Cloth Gloves
i(203612);	-- Primalist Cloth Helm
i(203622);	-- Primalist Cloth Leggings
i(203627);	-- Primalist Cloth Spaulders
i(203637);	-- Primalist Leather Belt
i(203638);	-- Primalist Leather Boots
i(203630);	-- Primalist Leather Bracers
i(203618);	-- Primalist Leather Chestpiece
i(203645);	-- Primalist Leather Gloves
i(203614);	-- Primalist Leather Helm
i(203619);	-- Primalist Leather Leggings
i(203629);	-- Primalist Leather Spaulders
i(203636);	-- Primalist Mail Belt
i(203639);	-- Primalist Mail Boots
i(203631);	-- Primalist Mail Bracers
i(203617);	-- Primalist Mail Chestpiece
i(203644);	-- Primalist Mail Gloves
i(203613);	-- Primalist Mail Helm
i(203620);	-- Primalist Mail Leggings
i(203628);	-- Primalist Mail Spaulders
i(203648);	-- Primalist Necklace
i(203634);	-- Primalist Plate Belt
i(203640);	-- Primalist Plate Boots
i(203633);	-- Primalist Plate Bracers
i(203615);	-- Primalist Plate Chestpiece
i(203643);	-- Primalist Plate Gloves
i(203611);	-- Primalist Plate Helm
i(203623);	-- Primalist Plate Leggings
i(203626);	-- Primalist Plate Spaulders
i(203647);	-- Primalist Ring
i(203649);	-- Primalist Trinket
i(203650);	-- Primalist Weapon
i(203770);	-- Purple Hakkari Bijou
i(203771);	-- Red Hakkari Bijou
i(203772);	-- Silver Hakkari Bijou
i(203773);	-- Yellow Hakkari Bijou
i(203914);	-- Zandalar Bargaining Token
i(202196);	-- Zskera Vault Key

------------------
-- PATCH 10.1.0 --
------------------
i(204336);	-- Awakened Heirloom Armor Casing
i(204337);	-- Awakened Heirloom Scabbard
i(204727);	-- Coveted Bauble
i(205365);	-- Loamm Niffen Insignia [Uncommon]
i(205342);	-- Loamm Niffen Insignia [Rare]
i(205985);	-- Loamm Niffen Insignia [Epic 500]
i(210422);	-- Loamm Niffen Insignia [Epic 2.5k]
i(204179);	-- Medal of Honor [A] (Season 2)
i(204180);	-- Medal of Honor [H] (Season 2)
i(206200);	-- Obsidian Equipment Chest
i(206270);	-- Volcanic Equipment Chest

------------------
-- PATCH 10.1.5 --
------------------
-- #if AFTER 10.1.5
i(12844);	-- Argent Dawn Valor Token
-- #endif
i(206375);	-- Corruptor's Scourgestone
i(208567);	-- Medal of Conquest (Season 2)
i(206576);	-- Death's Bargaining Chip
i(206617);	-- Desecrated Cloth Belt
i(206619);	-- Desecrated Cloth Boots
i(206615);	-- Desecrated Cloth Bracers
i(206614);	-- Desecrated Cloth Chestpiece
i(206616);	-- Desecrated Cloth Gauntlets
i(206612);	-- Desecrated Cloth Helmet
i(206618);	-- Desecrated Cloth Leggings
i(206613);	-- Desecrated Cloth Spaulders
i(206625);	-- Desecrated Leather Belt
i(206627);	-- Desecrated Leather Boots
i(206623);	-- Desecrated Leather Bracers
i(206622);	-- Desecrated Leather Chestpiece
i(206624);	-- Desecrated Leather Gauntlets
i(206620);	-- Desecrated Leather Helmet
i(206626);	-- Desecrated Leather Leggings
i(206621);	-- Desecrated Leather Spaulders
i(206633);	-- Desecrated Mail Belt
i(206635);	-- Desecrated Mail Boots
i(206631);	-- Desecrated Mail Bracers
i(206630);	-- Desecrated Mail Chestpiece
i(206632);	-- Desecrated Mail Gauntlets
i(206628);	-- Desecrated Mail Helmet
i(206634);	-- Desecrated Mail Leggings
i(206629);	-- Desecrated Mail Spaulders
i(206642);	-- Desecrated Plate Belt
i(206644);	-- Desecrated Plate Boots
i(206640);	-- Desecrated Plate Bracers
i(206639);	-- Desecrated Plate Chestpiece
i(206641);	-- Desecrated Plate Gauntlets
i(206636);	-- Desecrated Plate Helmet
i(206643);	-- Desecrated Plate Leggings
i(206637);	-- Desecrated Plate Spaulders
i(206374);	-- Invader's Scourgestone
i(208951);	-- Paracausal Cluster
i(208945);	-- Paracausal Crate
i(206771);	-- Pattern: Cursed Cloth
i(206772);	-- Pattern: Languished Leather
i(206773);	-- Pattern: Scourged Scales
i(206774);	-- Plans: Undeath Metal
i(206579);	-- Phylacterweave
i(208952);	-- Soridormi's Letter of Commendation

------------------
-- PATCH 10.1.7 --
------------------
i(209833);	-- Crate of Dreambound Armor
i(208922);	-- Dreambound Cloak
i(208911);	-- Dreambound Cloth Belt
i(208917);	-- Dreambound Cloth Boots
i(208908);	-- Dreambound Cloth Bracers
i(208895);	-- Dreambound Cloth Chestpiece
i(208918);	-- Dreambound Cloth Gloves
i(208891);	-- Dreambound Cloth Helm
i(208900);	-- Dreambound Cloth Leggings
i(208903);	-- Dreambound Cloth Spaulders
i(208913);	-- Dreambound Leather Belt
i(208914);	-- Dreambound Leather Boots
i(208906);	-- Dreambound Leather Bracers
i(208897);	-- Dreambound Leather Chestpiece
i(208921);	-- Dreambound Leather Gloves
i(208893);	-- Dreambound Leather Helm
i(208898);	-- Dreambound Leather Leggings
i(208905);	-- Dreambound Leather Spaulders
i(208912);	-- Dreambound Mail Belt
i(208915);	-- Dreambound Mail Boots
i(208907);	-- Dreambound Mail Bracers
i(208896);	-- Dreambound Mail Chestpiece
i(208920);	-- Dreambound Mail Gloves
i(208892);	-- Dreambound Mail Helm
i(208899);	-- Dreambound Mail Leggings
i(208904);	-- Dreambound Mail Spaulders
i(208924);	-- Dreambound Necklace
i(208910);	-- Dreambound Plate Belt
i(208916);	-- Dreambound Plate Boots
i(208909);	-- Dreambound Plate Bracers
i(208894);	-- Dreambound Plate Chestpiece
i(208890);	-- Dreambound Plate Helm
i(208919);	-- Dreambound Plate Gloves
i(208901);	-- Dreambound Plate Leggings
i(208902);	-- Dreambound Plate Spaulders
i(208923);	-- Dreambound Ring
i(208926);	-- Dreambound Weapon
i(205189);	-- Warcraft Rumble Welcome Letter [A]
i(204731);	-- Warcraft Rumble Welcome Letter [N]
i(205190);	-- Warcraft Rumble Welcome Letter [H]

------------------
-- PATCH 10.2.0 --
------------------
i(210423);	-- Dream Wardens Insignia [Epic 2.5k]
i(212554);	-- Medal of Conquest (Season 3)
i(210324);	-- Medal of Honor [A] (Season 3)
i(210325);	-- Medal of Honor [H] (Season 3)

------------------
-- PATCH 10.2.6 --
------------------
i(211773);	-- Medal of Conquest (Season 4)
i(211770);	-- Medal of Honor [A] (Season 4)
i(211771);	-- Medal of Honor [H] (Season 4)

------------------
-- PATCH 11.0.2 --
------------------
i(225493);	-- Medal of Conquest (Season 1)

-----------------
-- TIER TOKENS --
-----------------
-- #if AFTER TWW

-- AQ40 Tokens
ib(20928)	-- Qiraji Bindings of Commands
ib(20932)	-- Qiraji Bindings of Dominance
ib(20930)	-- Vek'lor's Diadem
ib(20926)	-- Vek'nilash's Circlet
ib(20927)	-- Ouro's Intact Hide
ib(20931)	-- Skin of the Great Sandworm
ib(20929)	-- Carapace of the Old God
ib(20933)	-- Husk of the Old God

-- Tier 4 Tokens [Kara / Gruul / Mag]
ib(29760);	-- Helm of the Fallen Champion
ib(29761);	-- Helm of the Fallen Defender
ib(29759);	-- Helm of the Fallen Hero
ib(29763);	-- Pauldrons of the Fallen Champion
ib(29764);	-- Pauldrons of the Fallen Defender
ib(29762);	-- Pauldrons of the Fallen Hero
ib(29754);	-- Chestguard of the Fallen
ib(29753);	-- Chestguard of the Fallen Defender
ib(29755);	-- Chestguard of the Fallen Hero
ib(29757);	-- Gloves of the Fallen Champion
ib(29758);	-- Gloves of the Fallen Defender
ib(29756);	-- Gloves of the Fallen Hero
ib(29766);	-- Leggings of the Fallen Champion
ib(29767);	-- Leggings of the Fallen Defender
ib(29765);	-- Leggings of the Fallen Hero

-- Tier 5 Tokens [TK / SSC]
ib(30242);	-- Helm of the Vanquished Champion
ib(30243);	-- Helm of the Vanquished Defender
ib(30244);	-- Helm of the Vanquished Hero
ib(30248);	-- Pauldrons of the Vanquished Champion
ib(30249);	-- Pauldrons of the Vanquished Defender
ib(30250);	-- Pauldrons of the Vanquished Hero
ib(30236);	-- Chestguard of the Vanquished Champion
ib(30237);	-- Chestguard of the Vanquished Defender
ib(30238);	-- Chestguard of the Vanquished Hero
ib(30239);	-- Gloves of the Vanquished Champion
ib(30240);	-- Gloves of the Vanquished Defender
ib(30241);	-- Gloves of the Vanquished Hero
ib(30245);	-- Leggings of the Vanquished Champion
ib(30246);	-- Leggings of the Vanquished Defender
ib(30247);	-- Leggings of the Vanquished Hero

-- Tier 6 Tokens [MH / BT / SWP]
ib(31097);	-- Helm of the Forgotten Conqueror
ib(31095);	-- Helm of the Forgotten Protector
ib(31096);	-- Helm of the Forgotten Vanquisher
ib(31101);	-- Pauldrons of the Forgotten Conqueror
ib(31103);	-- Pauldrons of the Forgotten Protector
ib(31102);	-- Pauldrons of the Forgotten Vanquisher
ib(31089);	-- Chestguard of the Forgotten Conqueror
ib(31091);	-- Chestguard of the Forgotten Protector
ib(31090);	-- Chestguard of the Forgotten Vanquisher
ib(34848);	-- Bracers of the Forgotten Conqueror
ib(34851);	-- Bracers of the Forgotten Protector
ib(34852);	-- Bracers of the Forgotten Vanquisher
ib(31092);	-- Gloves of the Forgotten Conqueror
ib(31094);	-- Gloves of the Forgotten Protector
ib(31093);	-- Gloves of the Forgotten Vanquisher
ib(34853);	-- Belt of the Forgotten Conqueror
ib(34854);	-- Belt of the Forgotten Protector
ib(34855);	-- Belt of the Forgotten Vanquisher
ib(31098);	-- Leggings of the Forgotten Conqueror
ib(31100);	-- Leggings of the Forgotten Protector
ib(31099);	-- Leggings of the Forgotten Vanquisher
ib(34856);	-- Boots of the Forgotten Conqueror
ib(34857);	-- Boots of the Forgotten Protector
ib(34858);	-- Boots of the Forgotten Vanquisher

-- Tier 7 10 Man Tokens [Naxx / OS]
ib(40616);	-- Helm of the Lost Conqueror
ib(40617);	-- Helm of the Lost Protector
ib(40618);	-- Helm of the Lost Vanquisher
ib(40622);	-- Spaulders of the Lost Conqueror
ib(40623);	-- Spaulders of the Lost Protector
ib(40624);	-- Spaulders of the Lost Vanquisher
ib(40610);	-- Chestguard of the Lost Conqueror
ib(40611);	-- Chestguard of the Lost Protector
ib(40612);	-- Chestguard of the Lost Vanquisher
ib(40613);	-- Gloves of the Lost Conqueror
ib(40614);	-- Gloves of the Lost Protector
ib(40615);	-- Gloves of the Lost Vanquisher
ib(40619);	-- Leggings of the Lost Conqueror
ib(40620);	-- Leggings of the Lost Protector
ib(40621);	-- Leggings of the Lost Vanquisher

-- Tier 7 25 Man Tokens [Naxx / OS]
ib(40631);	-- Crown of the Lost Conqueror
ib(40632);	-- Crown of the Lost Protector
ib(40633);	-- Crown of the Lost Vanquisher
ib(40637);	-- Mantle of the Lost Conqueror
ib(40638);	-- Mantle of the Lost Protector
ib(40639);	-- Mantle of the Lost Vanquisher
ib(40625);	-- Breastplate of the Lost Conqueror
ib(40626);	-- Breastplate of the Lost Protector
ib(40627);	-- Breastplate of the Lost Vanquisher
ib(40628);	-- Gauntlets of the Lost Conqueror
ib(40629);	-- Gauntlets of the Lost Protector
ib(40630);	-- Gauntlets of the Lost Vanquisher
ib(40634);	-- Legplates of the Lost Conqueror
ib(40635);	-- Legplates of the Lost Protector
ib(40636);	-- Legplates of the Lost Vanquisher

-- Tier 8 10 Man [Ulduar]
ib(45647);	-- Helm of the Wayward Conqueror
ib(45648);	-- Helm of the Wayward Protector
ib(45649);	-- Helm of the Wayward Vanquisher
ib(45659);	-- Spaulders of the Wayward Conqueror
ib(45660);	-- Spaulders of the Wayward Protector
ib(45661);	-- Spaulders of the Wayward Vanquisher
ib(45635);	-- Chestguard of the Wayward Conqueror
ib(45636);	-- Chestguard of the Wayward Protector
ib(45637);	-- Chestguard of the Wayward Vanquisher
ib(45644);	-- Gloves of the Wayward Conqueror
ib(45645);	-- Gloves of the Wayward Protector
ib(45646);	-- Gloves of the Wayward Vanquisher
ib(45650);	-- Leggings of the Wayward Conqueror
ib(45651);	-- Leggings of the Wayward Protector
ib(45652);	-- Leggings of the Wayward Vanquisher

-- Tier 8 25 Man [Ulduar]
ib(45638);	-- Crown of the Wayward Conqueror
ib(45639);	-- Crown of the Wayward Protector
ib(45640);	-- Crown of the Wayward Vanquisher
ib(45656);	-- Mantle of the Wayward Conqueror
ib(45657);	-- Mantle of the Wayward Protector
ib(45658);	-- Mantle of the Wayward Vanquisher
ib(45632);	-- Breastplate of the Wayward Conqueror
ib(45633);	-- Breastplate of the Wayward Protector
ib(45634);	-- Breastplate of the Wayward Vanquisher
ib(45641);	-- Gauntlets of the Wayward Conqueror
ib(45642);	-- Gauntlets of the Wayward Protector
ib(45643);	-- Gauntlets of the Wayward Vanquisher
ib(45654);	-- Legplates of the Wayward Protector
ib(45655);	-- Legplates of the Wayward Vanquisher

-- Tier 9 Tier Tokens [ToC]

ib(47242);	-- Trophy of the Crusade
ib(47557);	-- Regalia of the Grand Conqueror [25H]
ib(47558);	-- Regalia of the Grand Protector [25H]
ib(47559);	-- Regalia of the Grand Vanquisher [25H]

-- Tier 10 Tier Tokens [ICC]
ib(52025);	-- Vanquisher's Mark of Sanctification [10H/25N]
ib(52026);	-- Protector's Mark of Sanctification [10H/25N]
ib(52027);	-- Conqueror's Mark of Sanctification [10H/25N]
ib(52028);	-- Vanquisher's Mark of Sanctification [25H]
ib(52029);	-- Protector's Mark of Sanctification [25H]
ib(52030);	-- Conqueror's Mark of Sanctification [25H]

-- Tier 11 10/25 Normal [BWD / TotFW /BoT]
ib(63683);	-- Helm of the Forlorn Conqueror
ib(63684);	-- Helm of the Forlorn Protector
ib(63682);	-- Helm of the Forlorn Vanquisher
ib(64315);	-- Mantle of the Forlorn Conqueror
ib(64316);	-- Mantle of the Forlorn Protector
ib(64314);	-- Mantle of the Forlorn Vanquisher

-- Tier 11 10/25 Heroic [BWD / TotFW /BoT]
ib(66998);	-- Essence of the Forlorn
ib(65001);	-- Crown of the Forlorn Conqueror
ib(65000);	-- Crown of the Forlorn Protector
ib(65002);	-- Crown of the Forlorn Vanquisher
ib(65088);	-- Shoulders of the Forlorn Conqueror
ib(65087);	-- Shoulders of the Forlorn Protector
ib(65089);	-- Shoulders of the Forlorn Vanquisher
ib(67423);	-- Chest of the Forlorn Conqueror
ib(67424);	-- Chest of the Forlorn Protector
ib(67425);	-- Chest of the Forlorn Vanquisher
ib(67429);	-- Gauntlets of the Forlorn Conqueror
ib(67430);	-- Gauntlets of the Forlorn Protector
ib(67431);	-- Gauntlets of the Forlorn Vanquisher
ib(67428);	-- Leggings of the Forlorn Conqueror
ib(67427);	-- Leggings of the Forlorn Protector
ib(67426);	-- Leggings of the Forlorn Vanquisher

-- Tier 12 10/25 Normal [FL]
ib(71675);	-- Helm of the Fiery Conqueror
ib(71682);	-- Helm of the Fiery Protector
ib(71668);	-- Helm of the Fiery Vanquisher
ib(71681);	-- Mantle of the Fiery Conqueror
ib(71688);	-- Mantle of the Fiery Protector
ib(71674);	-- Mantle of the Fiery Vanquisher

-- Tier 12 10/25 Heroic [FL]
ib(71677);	-- Crown of the Fiery Conqueror
ib(71684);	-- Crown of the Fiery Protector
ib(71670);	-- Crown of the Fiery Vanquisher
ib(71680);	-- Shoulders of the Fiery Conqueror
ib(71687);	-- Shoulders of the Fiery Protector
ib(71673);	-- Shoulders of the Fiery Vanquisher
ib(71679);	-- Chest of the Fiery Conqueror
ib(71686);	-- Chest of the Fiery Protector
ib(71672);	-- Chest of the Fiery Vanquisher
ib(71676);	-- Gauntlets of the Fiery Conqueror
ib(71683);	-- Gauntlets of the Fiery Protector
ib(71669);	-- Gauntlets of the Fiery Vanquisher
ib(71678);	-- Leggings of the Fiery Conqueror
ib(71685);	-- Leggings of the Fiery Protector
ib(71671);	-- Leggings of the Fiery Vanquisher

-- Tier 13 LFR [DS]
ib(78869);	-- Crown of the Corrupted Conqueror
ib(78870);	-- Crown of the Corrupted Protector
ib(78868);	-- Crown of the Corrupted Vanquisher
ib(78875);	-- Shoulders of the Corrupted Conqueror
ib(78876);	-- Shoulders of the Corrupted Protector
ib(78874);	-- Shoulders of the Corrupted Vanquisher
ib(78863);	-- Chest of the Corrupted Conqueror
ib(78864);	-- Chest of the Corrupted Protector
ib(78862);	-- Chest of the Corrupted Vanquisher
ib(78866);	-- Gauntlets of the Corrupted Conqueror
ib(78867);	-- Gauntlets of the Corrupted Protector
ib(78865);	-- Gauntlets of the Corrupted Vanquisher
ib(78872);	-- Leggings of the Corrupted Conqueror
ib(78873);	-- Leggings of the Corrupted Protector
ib(78871);	-- Leggings of the Corrupted Vanquisher

-- Tier 13 N [DS]
ib(78182);	-- Crown of the Corrupted Conqueror
ib(78177);	-- Crown of the Corrupted Protector
ib(78172);	-- Crown of the Corrupted Vanquisher
ib(78180);	-- Shoulders of the Corrupted Conqueror
ib(78175);	-- Shoulders of the Corrupted Protector
ib(78170);	-- Shoulders of the Corrupted Vanquisher
ib(78184);	-- Chest of the Corrupted Conqueror
ib(78179);	-- Chest of the Corrupted Protector
ib(78174);	-- Chest of the Corrupted Vanquisher
ib(78183);	-- Gauntlets of the Corrupted Conqueror
ib(78178);	-- Gauntlets of the Corrupted Protector
ib(78173);	-- Gauntlets of the Corrupted Vanquisher
ib(78181);	-- Leggings of the Corrupted Conqueror
ib(78176);	-- Leggings of the Corrupted Protector
ib(78171);	-- Leggings of the Corrupted Vanquisher

-- Tier 13 H [DS]
ib(78850);	-- Crown of the Corrupted Conqueror
ib(78851);	-- Crown of the Corrupted Protector
ib(78852);	-- Crown of the Corrupted Vanquisher
ib(78859);	-- Shoulders of the Corrupted Conqueror
ib(78860);	-- Shoulders of the Corrupted Protector
ib(78861);	-- Shoulders of the Corrupted Vanquisher
ib(78847);	-- Chest of the Corrupted Conqueror
ib(78848);	-- Chest of the Corrupted Protector
ib(78849);	-- Chest of the Corrupted Vanquisher
ib(78853);	-- Gauntlets of the Corrupted Conqueror
ib(78854);	-- Gauntlets of the Corrupted Protector
ib(78855);	-- Gauntlets of the Corrupted Vanquisher
ib(78856);	-- Leggings of the Corrupted Conqueror
ib(78857);	-- Leggings of the Corrupted Protector
ib(78858);	-- Leggings of the Corrupted Vanquisher

-- Tier 14 LFR [HoF/ToES]
ib(89274);	-- Helm of the Shadowy Conqueror
ib(89275);	-- Helm of the Shadowy Protector
ib(89273);	-- Helm of the Shadowy Vanquisher
ib(89277);	-- Shoulders of the Shadowy Conqueror
ib(89278);	-- Shoulders of the Shadowy Protector
ib(89276);	-- Shoulders of the Shadowy Vanquisher
ib(89265);	-- Chest of the Shadowy Conqueror
ib(89266);	-- Chest of the Shadowy Protector
ib(89264);	-- Chest of the Shadowy Vanquisher
ib(89271);	-- Gauntlets of the Shadowy Conqueror
ib(89272);	-- Gauntlets of the Shadowy Protector
ib(89270);	-- Gauntlets of the Shadowy Vanquisher
ib(89268);	-- Leggings of the Shadowy Conqueror
ib(89269);	-- Leggings of the Shadowy Protector
ib(89267);	-- Leggings of the Shadowy Vanquisher

-- Tier 14 N [HoF/ToES]
ib(89235);	-- Helm of the Shadowy Conqueror
ib(89236);	-- Helm of the Shadowy Protector
ib(89234);	-- Helm of the Shadowy Vanquisher
ib(89246);	-- Shoulders of the Shadowy Conqueror
ib(89247);	-- Shoulders of the Shadowy Protector
ib(89248);	-- Shoulders of the Shadowy Vanquisher
ib(89237);	-- Chest of the Shadowy Conqueror
ib(89238);	-- Chest of the Shadowy Protector
ib(89239);	-- Chest of the Shadowy Vanquisher
ib(89240);	-- Gauntlets of the Shadowy Conqueror
ib(89241);	-- Gauntlets of the Shadowy Protector
ib(89242);	-- Gauntlets of the Shadowy Vanquisher
ib(89243);	-- Leggings of the Shadowy Conqueror
ib(89244);	-- Leggings of the Shadowy Protector
ib(89245);	-- Leggings of the Shadowy Vanquisher

-- Tier 14 H [HoF/ToES]
ib(89259);	-- Helm of the Shadowy Conqueror
ib(89260);	-- Helm of the Shadowy Protector
ib(89258);	-- Helm of the Shadowy Vanquisher
ib(89262);	-- Shoulders of the Shadowy Conqueror
ib(89263);	-- Shoulders of the Shadowy Protector
ib(89261);	-- Shoulders of the Shadowy Vanquisher
ib(89250);	-- Chest of the Shadowy Conqueror
ib(89251);	-- Chest of the Shadowy Protector
ib(89249);	-- Chest of the Shadowy Vanquisher
ib(89256);	-- Gauntlets of the Shadowy Conqueror
ib(89257);	-- Gauntlets of the Shadowy Protector
ib(89255);	-- Gauntlets of the Shadowy Vanquisher
ib(89253);	-- Leggings of the Shadowy Conqueror
ib(89254);	-- Leggings of the Shadowy Protector
ib(89252);	-- Leggings of the Shadowy Vanquisher

-- Tier 15 LFR [ToT]
ib(95880);	-- Helm of the Crackling Conqueror
ib(95881);	-- Helm of the Crackling Protector
ib(95879);	-- Helm of the Crackling Vanquisher
ib(95956);	-- Shoulders of the Crackling Conqueror
ib(95957);	-- Shoulders of the Crackling Protector
ib(95955);	-- Shoulders of the Crackling Vanquisher
ib(95823);	-- Chest of the Crackling Conqueror
ib(95824);	-- Chest of the Crackling Protector
ib(95822);	-- Chest of the Crackling Vanquisher
ib(95856);	-- Gauntlets of the Crackling Conqueror
ib(95857);	-- Gauntlets of the Crackling Protector
ib(95855);	-- Gauntlets of the Crackling Vanquisher
ib(95888);	-- Leggings of the Crackling Conqueror
ib(95889);	-- Leggings of the Crackling Protector
ib(95887);	-- Leggings of the Crackling Vanquisher

-- Tier 15 N [ToT]
ib(95577);	-- Helm of the Crackling Conqueror
ib(95582);	-- Helm of the Crackling Protector
ib(95571);	-- Helm of the Crackling Vanquisher
ib(95578);	-- Shoulders of the Crackling Conqueror
ib(95583);	-- Shoulders of the Crackling Protector
ib(95573);	-- Shoulders of the Crackling Vanquisher
ib(95574);	-- Chest of the Crackling Conqueror
ib(95579);	-- Chest of the Crackling Protector
ib(95569);	-- Chest of the Crackling Vanquisher
ib(95575);	-- Gauntlets of the Crackling Conqueror
ib(95580);	-- Gauntlets of the Crackling Protector
ib(95570);	-- Gauntlets of the Crackling Vanquisher
ib(95576);	-- Leggings of the Crackling Conqueror
ib(95581);	-- Leggings of the Crackling Protector
ib(95572);	-- Leggings of the Crackling Vanquisher

-- Tier 15 H [ToT]
ib(96624);	-- Helm of the Crackling Conqueror
ib(96625);	-- Helm of the Crackling Protector
ib(96623);	-- Helm of the Crackling Vanquisher
ib(96700);	-- Shoulders of the Crackling Conqueror
ib(96701);	-- Shoulders of the Crackling Protector
ib(96699);	-- Shoulders of the Crackling Vanquisher
ib(96567);	-- Chest of the Crackling Conqueror
ib(96568);	-- Chest of the Crackling Protector
ib(96566);	-- Chest of the Crackling Vanquisher
ib(96600);	-- Gauntlets of the Crackling Conqueror
ib(96601);	-- Gauntlets of the Crackling Protector
ib(96599);	-- Gauntlets of the Crackling Vanquisher
ib(96632);	-- Leggings of the Crackling Conqueror
ib(96633);	-- Leggings of the Crackling Protector
ib(96631);	-- Leggings of the Crackling Vanquisher

-- Tier 16 LFR [SoO]
ib(105861);	-- Essence of the Cursed Conqueror
ib(105860);	-- Essence of the Cursed Protector
ib(105862);	-- Essence of the Cursed Vanquisher
ib(99672);	-- Helm of the Cursed Conqueror
ib(99673);	-- Helm of the Cursed Protector
ib(99671);	-- Helm of the Cursed Vanquisher
ib(99669);	-- Shoulders of the Cursed Conqueror
ib(99670);	-- Shoulders of the Cursed Protector
ib(99668);	-- Shoulders of the Cursed Vanquisher
ib(99678);	-- Chest of the Cursed Conqueror
ib(99679);	-- Chest of the Cursed Protector
ib(99677);	-- Chest of the Cursed Vanquisher
ib(99681);	-- Gauntlets of the Cursed Conqueror
ib(99667);	-- Gauntlets of the Cursed Protector
ib(99680);	-- Gauntlets of the Cursed Vanquisher
ib(99675);	-- Leggings of the Cursed Conqueror
ib(99676);	-- Leggings of the Cursed Protector
ib(99674);	-- Leggings of the Cursed Vanquisher

-- Tier 16 N [SoO]
ib(105864);	-- Essence of the Cursed Conqueror
ib(105863);	-- Essence of the Cursed Protector
ib(105865);	-- Essence of the Cursed Vanquisher
ib(99749);	-- Helm of the Cursed Conqueror
ib(99750);	-- Helm of the Cursed Protector
ib(99748);	-- Helm of the Cursed Vanquisher
ib(99755);	-- Shoulders of the Cursed Conqueror
ib(99756);	-- Shoulders of the Cursed Protector
ib(99754);	-- Shoulders of the Cursed Vanquisher
ib(99743);	-- Chest of the Cursed Conqueror
ib(99744);	-- Chest of the Cursed Protector
ib(99742);	-- Chest of the Cursed Vanquisher
ib(99746);	-- Gauntlets of the Cursed Conqueror
ib(99747);	-- Gauntlets of the Cursed Protector
ib(99745);	-- Gauntlets of the Cursed Vanquisher
ib(99752);	-- Leggings of the Cursed Conqueror
ib(99753);	-- Leggings of the Cursed Protector
ib(99751);	-- Leggings of the Cursed Vanquisher

-- Tier 16 H [SoO]
ib(105858);	-- Essence of the Cursed Conqueror
ib(105857);	-- Essence of the Cursed Protector
ib(105859);	-- Essence of the Cursed Vanquisher
ib(99689);	-- Helm of the Cursed Conqueror
ib(99694);	-- Helm of the Cursed Protector
ib(99683);	-- Helm of the Cursed Vanquisher
ib(99690);	-- Shoulders of the Cursed Conqueror
ib(99695);	-- Shoulders of the Cursed Protector
ib(99685);	-- Shoulders of the Cursed Vanquisher
ib(99686);	-- Chest of the Cursed Conqueror
ib(99691);	-- Chest of the Cursed Protector
ib(99696);	-- Chest of the Cursed Vanquisher
ib(99687);	-- Gauntlets of the Cursed Conqueror
ib(99692);	-- Gauntlets of the Cursed Protector
ib(99682);	-- Gauntlets of the Cursed Vanquisher
ib(99688);	-- Leggings of the Cursed Conqueror
ib(99693);	-- Leggings of the Cursed Protector
ib(99684);	-- Leggings of the Cursed Vanquisher

-- Tier 16 M [SoO]
ib(105867);	-- Essence of the Cursed Conqueror
ib(105866);	-- Essence of the Cursed Protector
ib(105868);	-- Essence of the Cursed Vanquisher
ib(99724);	-- Helm of the Cursed Conqueror
ib(99725);	-- Helm of the Cursed Protector
ib(99723);	-- Helm of the Cursed Vanquisher
ib(99718);	-- Shoulders of the Cursed Conqueror
ib(99719);	-- Shoulders of the Cursed Protector
ib(99717);	-- Shoulders of the Cursed Vanquisher
ib(99715);	-- Chest of the Cursed Conqueror
ib(99716);	-- Chest of the Cursed Protector
ib(99714);	-- Chest of the Cursed Vanquisher
ib(99721);	-- Gauntlets of the Cursed Conqueror
ib(99722);	-- Gauntlets of the Cursed Protector
ib(99720);	-- Gauntlets of the Cursed Vanquisher
ib(99712);	-- Leggings of the Cursed Conqueror
ib(99713);	-- Leggings of the Cursed Protector
ib(99726);	-- Leggings of the Cursed Vanquisher

-- Tier 17 N [BRF]
ib(120277);	-- Essence of the Iron Conqueror [A]
ib(119310);	-- Essence of the Iron Conqueror [H]
ib(120279);	-- Essence of the Iron Protector [A]
ib(119323);	-- Essence of the Iron Protector [H]
ib(120278);	-- Essence of the Iron Vanquisher [A]
ib(119316);	-- Essence of the Iron Vanquisher [H]
-- Bonus Roll Tokens (All Diffs)
ib(119308);	-- Helm of the Iron Conqueror
ib(119321);	-- Helm of the Iron Protector
ib(119312);	-- Helm of the Iron Vanquisher
ib(119309);	-- Shoulders of the Iron Conqueror
ib(119322);	-- Shoulders of the Iron Protector
ib(119314);	-- Shoulders of the Iron Vanquisher
ib(119305);	-- Chest of the Iron Conqueror
ib(119318);	-- Chest of the Iron Protector
ib(119315);	-- Chest of the Iron Vanquisher
ib(119306);	-- Gauntlets of the Iron Conqueror
ib(119319);	-- Gauntlets of the Iron Protector
ib(119311);	-- Gauntlets of the Iron Vanquisher
ib(119307);	-- Leggings of the Iron Conqueror
ib(119320);	-- Leggings of the Iron Protector
ib(119313);	-- Leggings of the Iron Vanquisher
-- Quest Reward Tokens
ib(120215);	-- Helm of the Iron Conqueror
ib(120216);	-- Shoulders of the Iron Conqueror
ib(120212);	-- Chest of the Iron Conqueror
ib(120213);	-- Gauntlets of the Iron Conqueror
ib(120214);	-- Leggings of the Iron Conqueror
ib(120225);	-- Helm of the Iron Protector
ib(120226);	-- Shoulders of the Iron Protector
ib(120222);	-- Chest of the Iron Protector
ib(120223);	-- Gauntlets of the Iron Protector
ib(120224);	-- Leggings of the Iron Protector
ib(120218);	-- Helm of the Iron Vanquisher
ib(120220);	-- Shoulders of the Iron Vanquisher
ib(120221);	-- Chest of the Iron Vanquisher
ib(120217);	-- Gauntlets of the Iron Vanquisher
ib(120219);	-- Leggings of the Iron Vanquisher

-- Tier 17 H [BRF]
ib(120280);	-- Essence of the Iron Conqueror [A]
ib(120206);	-- Essence of the Iron Conqueror [H]
ib(120281);	-- Essence of the Iron Protector [A]
ib(120207);	-- Essence of the Iron Protector [H]
ib(120282);	-- Essence of the Iron Vanquisher [A]
ib(120208);	-- Essence of the Iron Vanquisher [H]
-- Quest Reward Tokens
ib(120230);	-- Helm of the Iron Conqueror
ib(120231);	-- Shoulders of the Iron Conqueror
ib(120227);	-- Chest of the Iron Conqueror
ib(120228);	-- Gauntlets of the Iron Conqueror
ib(120229);	-- Leggings of the Iron Conqueror
ib(120240);	-- Helm of the Iron Protector
ib(120241);	-- Shoulders of the Iron Protector
ib(120237);	-- Chest of the Iron Protector
ib(120238);	-- Gauntlets of the Iron Protector
ib(120239);	-- Leggings of the Iron Protector
ib(120233);	-- Helm of the Iron Vanquisher
ib(120235);	-- Shoulders of the Iron Vanquisher
ib(120236);	-- Chest of the Iron Vanquisher
ib(120232);	-- Gauntlets of the Iron Vanquisher
ib(120234);	-- Leggings of the Iron Vanquisher

-- Tier 17 M [BRF]
ib(120283);	-- Essence of the Iron Conqueror [A]
ib(120209);	-- Essence of the Iron Conqueror [H]
ib(120284);	-- Essence of the Iron Protector [A]
ib(120210);	-- Essence of the Iron Protector [H]
ib(120285);	-- Essence of the Iron Vanquisher [A]
ib(120211);	-- Essence of the Iron Vanquisher [H]
-- Quest Reward Tokens
ib(120245);	-- Helm of the Iron Conqueror
ib(120246);	-- Shoulders of the Iron Conqueror
ib(120242);	-- Chest of the Iron Conqueror
ib(120243);	-- Gauntlets of the Iron Conqueror
ib(120244);	-- Leggings of the Iron Conqueror
ib(120255);	-- Helm of the Iron Protector
ib(120256);	-- Shoulders of the Iron Protector
ib(120252);	-- Chest of the Iron Protector
ib(120253);	-- Gauntlets of the Iron Protector
ib(120254);	-- Leggings of the Iron Protector
ib(120248);	-- Helm of the Iron Vanquisher
ib(120250);	-- Shoulders of the Iron Vanquisher
ib(120251);	-- Chest of the Iron Vanquisher
ib(120247);	-- Gauntlets of the Iron Vanquisher
ib(120249);	-- Leggings of the Iron Vanquisher

-- Castle Nathria Weapon Tokens
i(183893);	-- Abominable Anima Spherule
i(183896);	-- Abominable Anima Spherule
i(183888);	-- Apogee Anima Bead
i(183895);	-- Apogee Anima Bead
i(183897);	-- Mystic Anima Spherule
i(183892);	-- Mystic Anima Spherule
i(183894);	-- Thaumaturgic Anima Bead
i(183889);	-- Thaumaturgic Anima Bead
i(183891);	-- Venerated Anima Spherule
i(183898);	-- Venerated Anima Spherule
i(183899);	-- Zenith Anima Spherule
i(183890);	-- Zenith Anima Spherule

-- Tier 22 [SotFO]
i(191005);	-- Dreadful Helm Module
i(191002);	-- Mystic Helm Module
i(191003);	-- Venerated Helm Module
i(191004);	-- Zenith Helm Module
i(191006);	-- Dreadful Shoulder Module
i(191007);	-- Mystic Shoulder Module
i(191008);	-- Venerated Shoulder Module
i(191009);	-- Zenith Shoulder Module
i(191010);	-- Dreadful Chest Module
i(191011);	-- Mystic Chest Module
i(191012);	-- Venerated Chest Module
i(191013);	-- Zenith Chest Modulefs
i(191014);	-- Dreadful Hand Module
i(191015);	-- Mystic Hand Module
i(191016);	-- Venerated Hand Module
i(191017);	-- Zenith Hand Module
i(191018);	-- Dreadful Leg Module
i(191019);	-- Mystic Leg Module
i(191020);	-- Venerated Leg Module
i(191021);	-- Zenith Leg Module
-- #endif
