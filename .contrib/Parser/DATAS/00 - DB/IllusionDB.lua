local Items = ItemDBConditional;
local i = function(itemID, illusionID, questID)
	Items[itemID] = { ["illusionID"] = illusionID, ["questID"] = questID, ["type"] = "illusionID" };
end
-----------------
-- PATCH 6.0.2 --
-----------------
i(118572, 5394, 42946);		-- Flames of Ragnaros
i(120286, 5396, 42949);		-- Glorious Tyranny
i(120287, 5397, 42950);		-- Primal Victory

-----------------
-- PATCH 6.2.2 --
-----------------
i(128649, 5448, 42947);		-- Winter's Grasp

-----------------
-- PATCH 7.0.3 --
-----------------
i(0, 5387);					-- Agility
i(0, 4067);					-- Avalanche
i(0, 5390);					-- Battlemaster
i(0, 5861);					-- Beastslayer
i(0, 5391);					-- Berserking
i(138800, 3869, 42895);		-- Blade Ward
i(138801, 5392, 42896);		-- Blood Draining
i(0, 5868);					-- Breath of Yu'lon
i(138828, 5877, 42938);		-- Chronos
i(0, 5863);					-- Coldlight
i(138804, 4445, 42902);		-- Colossus
i(0, 5393);					-- Crusader
i(0, 4444);					-- Dancing Steel
i(138838, 3273, 42948);		-- Deathfrost
i(0, 4443);					-- Elemental Force
i(0, 4074);					-- Elemental Slayer
i(138796, 3225, 42891);		-- Executioner
i(0, 803);					-- Fiery Weapon
i(0, 5388);					-- Greater Spellpower
i(0, 4084);					-- Heartsong
i(0, 5360);					-- Hide Weapon Enchant
i(0, 1894);					-- Icy Chill
i(138805, 4442, 42906);		-- Jade Spirit
i(0, 4099);					-- Landslide
i(0, 1898);					-- Lifestealing
i(0, 5867);					-- Light of the Earth-Warder
i(138809, 5336, 42910);		-- Mark of Blackrock
i(138808, 5384, 42909);		-- Mark of Bleeding Hollow
i(0, 5334);					-- Mark of the Frostwolf
i(138806, 5335, 42907);		-- Mark of Shadowmoon
i(138807, 5331, 42908);		-- Mark of the Shattered Hand
i(0, 5330);					-- Mark of the Thunderlord
i(138803, 4066, 42900);		-- Mending
i(138797, 2673, 42892);		-- Mongoose
i(0, 5864);					-- Netherflame
i(138827, 5876, 42934);		-- Nightmare
i(138802, 4097, 42898);		-- Power Torrent
i(0, 4446);					-- River's Song
i(138799, 5866, 42894);		-- Soulfrost
i(0, 2674);					-- Spellsurge
i(0, 5389);					-- Striking
i(138798, 5865, 42893);		-- Sunfire
i(0, 5862);					-- Titanguard
i(0, 1899);					-- Unholy Weapon
i(0, 4441);					-- Windsong
i(0, 4098);					-- Windwalk
--- Class Specific ---
i(138832, 5871, 42941);		-- Earthliving
i(138833, 5872, 42942);		-- Flametongue
i(138834, 5873, 42943);		-- Frostbrand
i(138835, 5874, 42944);		-- Rockbiter
i(138836, 5875, 42945);		-- Windfury
i(138955, 5869, 42973);		-- Rune of Razorice
i(138954, 5364, 42972);		-- Poisoned

-----------------
-- PATCH 7.2.0 --
-----------------
i(147778, 5924, 47191);		-- Demonic Tyranny

-----------------
-- PATCH 8.0.1 --
-----------------
i(0, 6096);					-- Dreadflame

-----------------
-- PATCH 8.2.5 --
-----------------
i(171363, 6158, 57569);		-- Stinging Sands
-- NYI --
i(0, 6185);					-- Stinging Sands

-----------------
-- PATCH 8.3.0 --
-----------------
i(174932, 6174, 58927);		-- Void Edge
-- NYI --
i(174933, 0, 58925);		-- Voidwrath

-----------------
-- PATCH 8.3.7 --
-----------------
i(172177, 6162, 57596);		-- Wraithchill

-----------------
-- PATCH 9.0.2 --
-----------------
i(184351, 6256, 63004);		-- Devoted Spirit
i(183134, 6264, 62965);		-- Hunt's Favor
i(182207, 6259, 61727);		-- Sinsedge
i(182204, 6258, 62398);		-- Sinwrath
i(184352, 6257, 62395);		-- Transcendent Soul
i(183462, 6262, 62396);		-- Unbreakable Resolve
i(183189, 6261, 62964);		-- Undying Spirit
i(184164, 6263, 62397);		-- Wild Soul
i(0, 6266);					-- Sinful Flame

-----------------
-- PATCH 9.1.0 --
-----------------
i(0, 6344);					-- Unchained Fury

-----------------
-- PATCH 9.2.0 --
-----------------
i(0, 6351);					-- Cosmic Flow

-----------------
-- PATCH 9.2.5 --
-----------------
i(0, 6378);					-- Eternal Flux

------------------
-- PATCH 10.0.0 --
------------------
i(200883, 6675);			-- Primal Air
i(200905, 6676);			-- Primal Earth
i(200906, 6677);			-- Primal Fire
i(200907, 6678);			-- Primal Frost
i(200470, 6672);			-- Primal Mastery

------------------
-- PATCH 10.0.7 --
------------------
i(0, 6786);					-- Primal Storm

------------------
-- PATCH 10.1.0 --
------------------
i(0, 6836);					-- Shadow Flame

------------------
-- PATCH 10.2.0 --
------------------
i(0, 7032);					-- Verdant Crush

------------------
-- PATCH 10.2.6 --
------------------
i(0, 7100);					-- Bronze Infinite

------------------
-- PATCH 10.2.7 --
------------------
i(220765, 7322, 82000);		-- Sha Corruption

------------------
-- PATCH 11.0.2 --
------------------
i(0, 7521);					-- Holy Fire

------------------
-- PATCH 11.1.0 --
------------------
i(0, 7640);					-- Jackpot

------------------
-- PATCH 11.2.0 --
------------------
i(0, 7641);					-- Arcane

------------------
-- PATCH 11.2.5 --
------------------
i(253353, 8549);			-- Felshatter

------------------
-- PATCH 12.0.0 --
------------------
i(0, 8553);					-- Galaxy
