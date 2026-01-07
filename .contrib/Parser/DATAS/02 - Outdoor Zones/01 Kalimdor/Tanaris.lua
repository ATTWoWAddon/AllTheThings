---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
-- TODO: Fully implement this for Retail's faction tooltips, also look at cape of stranglethorn.
local OnTooltipForGadgetzhan = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Kill Pirates near Ratchet", 2.5, 42000);
		if reputation < 20999 then
			addRepInfo(tooltipInfo, reputation, "Kill Southsea Pirates in Tanaris (To 11999 Honored)", 5, 20999);
		end
	end
end]];
-- #endif
local BLOODTHIRSTY_GROUPS = {
	cl(DEATHKNIGHT, {
		moh(12, iensemble(146423, {	-- Ensemble: Bloodthirsty Gladiator's Dreadplate Armor
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
};
local CATACLYSMIC_GROUPS = {
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
};
local VICIOUS_GROUPS = {
	n(WEAPONS, {
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
	}),
	cl(DEATHKNIGHT, {
		moh(12, iensemble(146523, {	-- Ensemble: Vicious Gladiator's Dreadplate Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(60408)),	-- Vicious Gladiator's Dreadplate Chestpiece
		moh(2, i(60409)),	-- Vicious Gladiator's Dreadplate Gauntlets
		moh(3, i(60410)),	-- Vicious Gladiator's Dreadplate Helm
		moh(3, i(60411)),	-- Vicious Gladiator's Dreadplate Legguards
		moh(2, i(60412)),	-- Vicious Gladiator's Dreadplate Shoulders
	}),
	cl(DRUID, {
		moh(12, iensemble(146521, {	-- Ensemble: Vicious Gladiator's Dragonhide Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(60443)),	-- Vicious Gladiator's Dragonhide Gloves
		moh(3, i(60444)),	-- Vicious Gladiator's Dragonhide Helm
		moh(3, i(60445)),	-- Vicious Gladiator's Dragonhide Legguards
		moh(3, i(60446)),	-- Vicious Gladiator's Dragonhide Robes
		moh(2, i(60447)),	-- Vicious Gladiator's Dragonhide Spaulders
		moh(2, i(60448)),	-- Vicious Gladiator's Kodohide Gloves
		moh(3, i(60449)),	-- Vicious Gladiator's Kodohide Helm
		moh(3, i(60450)),	-- Vicious Gladiator's Kodohide Legguards
		moh(3, i(60451)),	-- Vicious Gladiator's Kodohide Robes
		moh(2, i(60452)),	-- Vicious Gladiator's Kodohide Spaulders
		moh(2, i(60453)),	-- Vicious Gladiator's Wyrmhide Gloves
		moh(3, i(60454)),	-- Vicious Gladiator's Wyrmhide Helm
		moh(3, i(60455)),	-- Vicious Gladiator's Wyrmhide Legguards
		moh(3, i(60456)),	-- Vicious Gladiator's Wyrmhide Robes
		moh(2, i(60457)),	-- Vicious Gladiator's Wyrmhide Spaulders
	}),
	cl(HUNTER, {
		moh(12, iensemble(146519, {	-- Ensemble: Vicious Gladiator's Chain Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(60423)),	-- Vicious Gladiator's Chain Armor
		moh(2, i(60424)),	-- Vicious Gladiator's Chain Gauntlets
		moh(3, i(60425)),	-- Vicious Gladiator's Chain Helm
		moh(3, i(60426)),	-- Vicious Gladiator's Chain Leggings
		moh(2, i(60427)),	-- Vicious Gladiator's Chain Spaulders
	}),
	cl(MAGE, {
		moh(12, iensemble(146537, {	-- Ensemble: Vicious Gladiator's Silk Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(60467)),	-- Vicious Gladiator's Silk Amice
		moh(3, i(60464)),	-- Vicious Gladiator's Silk Cowl
		moh(2, i(60463)),	-- Vicious Gladiator's Silk Handguards
		moh(3, i(60466)),	-- Vicious Gladiator's Silk Robe
		moh(3, i(60465)),	-- Vicious Gladiator's Silk Trousers
	}),
	cl(PALADIN, {
		moh(12, iensemble(146535, {	-- Ensemble: Vicious Gladiator's Scaled Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(60601)),	-- Vicious Gladiator's Ornamented Chestguard
		moh(2, i(60602)),	-- Vicious Gladiator's Ornamented Gloves
		moh(3, i(60603)),	-- Vicious Gladiator's Ornamented Headcover
		moh(3, i(60604)),	-- Vicious Gladiator's Ornamented Legplates
		moh(2, i(60605)),	-- Vicious Gladiator's Ornamented Spaulders
		moh(3, i(60413)),	-- Vicious Gladiator's Scaled Chestpiece
		moh(2, i(60414)),	-- Vicious Gladiator's Scaled Gauntlets
		moh(3, i(60415)),	-- Vicious Gladiator's Scaled Helm
		moh(3, i(60416)),	-- Vicious Gladiator's Scaled Legguards
		moh(2, i(60417)),	-- Vicious Gladiator's Scaled Shoulders
	}),
	cl(PRIEST, {
		moh(12, iensemble(146533, {	-- Ensemble: Vicious Gladiator's Satin Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(60468)),	-- Vicious Gladiator's Mooncloth Gloves
		moh(3, i(60469)),	-- Vicious Gladiator's Mooncloth Helm
		moh(3, i(60470)),	-- Vicious Gladiator's Mooncloth Leggings
		moh(2, i(60472)),	-- Vicious Gladiator's Mooncloth Mantle
		moh(3, i(60471)),	-- Vicious Gladiator's Mooncloth Robe
		moh(2, i(60473)),	-- Vicious Gladiator's Satin Gloves
		moh(3, i(60474)),	-- Vicious Gladiator's Satin Hood
		moh(3, i(60475)),	-- Vicious Gladiator's Satin Leggings
		moh(2, i(60477)),	-- Vicious Gladiator's Satin Mantle
		moh(3, i(60476)),	-- Vicious Gladiator's Satin Robe
	}),
	cl(ROGUE, {
		moh(12, iensemble(146527, {	-- Ensemble: Vicious Gladiator's Leather Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(60459)),	-- Vicious Gladiator's Leather Gloves
		moh(3, i(60460)),	-- Vicious Gladiator's Leather Helm
		moh(3, i(60461)),	-- Vicious Gladiator's Leather Legguards
		moh(2, i(60462)),	-- Vicious Gladiator's Leather Spaulders
		moh(3, i(60458)),	-- Vicious Gladiator's Leather Tunic
	}),
	cl(SHAMAN, {
		moh(12, iensemble(146531, {	-- Ensemble: Vicious Gladiator's Ringmail Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(60433)),	-- Vicious Gladiator's Linked Armor
		moh(2, i(60434)),	-- Vicious Gladiator's Linked Gauntlets
		moh(3, i(60435)),	-- Vicious Gladiator's Linked Helm
		moh(3, i(60436)),	-- Vicious Gladiator's Linked Leggings
		moh(2, i(60437)),	-- Vicious Gladiator's Linked Spaulders
		moh(3, i(60438)),	-- Vicious Gladiator's Mail Armor
		moh(2, i(60439)),	-- Vicious Gladiator's Mail Gauntlets
		moh(3, i(60440)),	-- Vicious Gladiator's Mail Helm
		moh(3, i(60441)),	-- Vicious Gladiator's Mail Leggings
		moh(2, i(60442)),	-- Vicious Gladiator's Mail Spaulders
		moh(3, i(60428)),	-- Vicious Gladiator's Ringmail Armor
		moh(2, i(60429)),	-- Vicious Gladiator's Ringmail Gauntlets
		moh(3, i(60430)),	-- Vicious Gladiator's Ringmail Helm
		moh(3, i(60431)),	-- Vicious Gladiator's Ringmail Leggings
		moh(2, i(60432)),	-- Vicious Gladiator's Ringmail Spaulders
	}),
	cl(WARLOCK, {
		moh(12, iensemble(146525, {	-- Ensemble: Vicious Gladiator's Felweave Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(60482)),	-- Vicious Gladiator's Felweave Amice
		moh(3, i(60479)),	-- Vicious Gladiator's Felweave Cowl
		moh(2, i(60478)),	-- Vicious Gladiator's Felweave Handguards
		moh(3, i(60481)),	-- Vicious Gladiator's Felweave Raiment
		moh(3, i(60480)),	-- Vicious Gladiator's Felweave Trousers
	}),
	cl(WARRIOR, {
		moh(12, iensemble(146529, {	-- Ensemble: Vicious Gladiator's Plate Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(60418)),	-- Vicious Gladiator's Plate Chestpiece
		moh(2, i(60419)),	-- Vicious Gladiator's Plate Gauntlets
		moh(3, i(60420)),	-- Vicious Gladiator's Plate Helm
		moh(3, i(60421)),	-- Vicious Gladiator's Plate Legguards
		moh(2, i(60422)),	-- Vicious Gladiator's Plate Shoulders
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
};
local RUTHLESS_GROUPS = {
	n(WEAPONS, {
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
	}),
	cl(DEATHKNIGHT, {
		moh(12, iensemble(146503, {	-- Ensemble: Ruthless Gladiator's Dreadplate Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(70244)),	-- Ruthless Gladiator's Dreadplate Chestpiece
		moh(2, i(70245)),	-- Ruthless Gladiator's Dreadplate Gauntlets
		moh(3, i(70246)),	-- Ruthless Gladiator's Dreadplate Helm
		moh(3, i(70247)),	-- Ruthless Gladiator's Dreadplate Legguards
		moh(2, i(70248)),	-- Ruthless Gladiator's Dreadplate Shoulders
	}),
	cl(DRUID, {
		moh(12, iensemble(146501, {	-- Ensemble: Ruthless Gladiator's Dragonhide Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(70279)),	-- Ruthless Gladiator's Dragonhide Gloves
		moh(3, i(70280)),	-- Ruthless Gladiator's Dragonhide Helm
		moh(3, i(70281)),	-- Ruthless Gladiator's Dragonhide Legguards
		moh(3, i(70282)),	-- Ruthless Gladiator's Dragonhide Robes
		moh(2, i(70283)),	-- Ruthless Gladiator's Dragonhide Spaulders
		moh(2, i(70284)),	-- Ruthless Gladiator's Kodohide Gloves
		moh(3, i(70285)),	-- Ruthless Gladiator's Kodohide Helm
		moh(3, i(70286)),	-- Ruthless Gladiator's Kodohide Legguards
		moh(3, i(70287)),	-- Ruthless Gladiator's Kodohide Robes
		moh(2, i(70288)),	-- Ruthless Gladiator's Kodohide Spaulders
		moh(2, i(70289)),	-- Ruthless Gladiator's Wyrmhide Gloves
		moh(3, i(70290)),	-- Ruthless Gladiator's Wyrmhide Helm
		moh(3, i(70291)),	-- Ruthless Gladiator's Wyrmhide Legguards
		moh(3, i(70292)),	-- Ruthless Gladiator's Wyrmhide Robes
		moh(2, i(70293)),	-- Ruthless Gladiator's Wyrmhide Spaulders
	}),
	cl(HUNTER, {
		moh(12, iensemble(146499, {	-- Ensemble: Ruthless Gladiator's Chain Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(70259)),	-- Ruthless Gladiator's Chain Armor
		moh(2, i(70260)),	-- Ruthless Gladiator's Chain Gauntlets
		moh(3, i(70261)),	-- Ruthless Gladiator's Chain Helm
		moh(3, i(70262)),	-- Ruthless Gladiator's Chain Leggings
		moh(2, i(70263)),	-- Ruthless Gladiator's Chain Spaulders
	}),
	cl(MAGE, {
		moh(12, iensemble(146517, {	-- Ensemble: Ruthless Gladiator's Silk Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(70303)),	-- Ruthless Gladiator's Silk Amice
		moh(3, i(70300)),	-- Ruthless Gladiator's Silk Cowl
		moh(2, i(70299)),	-- Ruthless Gladiator's Silk Handguards
		moh(3, i(70302)),	-- Ruthless Gladiator's Silk Robe
		moh(3, i(70301)),	-- Ruthless Gladiator's Silk Trousers

	}),
	cl(PALADIN, {
		moh(12, iensemble(146515, {	-- Ensemble: Ruthless Gladiator's Scaled Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(70353)),	-- Ruthless Gladiator's Ornamented Chestguard
		moh(2, i(70354)),	-- Ruthless Gladiator's Ornamented Gloves
		moh(3, i(70355)),	-- Ruthless Gladiator's Ornamented Headcover
		moh(3, i(70356)),	-- Ruthless Gladiator's Ornamented Legplates
		moh(2, i(70357)),	-- Ruthless Gladiator's Ornamented Spaulders
		moh(3, i(70249)),	-- Ruthless Gladiator's Scaled Chestpiece
		moh(2, i(70250)),	-- Ruthless Gladiator's Scaled Gauntlets
		moh(3, i(70251)),	-- Ruthless Gladiator's Scaled Helm
		moh(3, i(70252)),	-- Ruthless Gladiator's Scaled Legguards
		moh(2, i(70253)),	-- Ruthless Gladiator's Scaled Shoulders
	}),
	cl(PRIEST, {
		moh(12, iensemble(146513, {	-- Ensemble: Ruthless Gladiator's Satin Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(70304)),	-- Ruthless Gladiator's Mooncloth Gloves
		moh(3, i(70305)),	-- Ruthless Gladiator's Mooncloth Helm
		moh(3, i(70306)),	-- Ruthless Gladiator's Mooncloth Leggings
		moh(3, i(70307)),	-- Ruthless Gladiator's Mooncloth Robe
		moh(2, i(70308)),	-- Ruthless Gladiator's Mooncloth Mantle
		moh(2, i(70309)),	-- Ruthless Gladiator's Satin Gloves
		moh(3, i(70310)),	-- Ruthless Gladiator's Satin Hood
		moh(3, i(70311)),	-- Ruthless Gladiator's Satin Leggings
		moh(3, i(70312)),	-- Ruthless Gladiator's Satin Robe
		moh(2, i(70313)),	-- Ruthless Gladiator's Satin Mantle
	}),
	cl(ROGUE, {
		moh(12, iensemble(146507, {	-- Ensemble: Ruthless Gladiator's Leather Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(70295)),	-- Ruthless Gladiator's Leather Gloves
		moh(3, i(70296)),	-- Ruthless Gladiator's Leather Helm
		moh(3, i(70297)),	-- Ruthless Gladiator's Leather Legguards
		moh(2, i(70298)),	-- Ruthless Gladiator's Leather Spaulders
		moh(3, i(70294)),	-- Ruthless Gladiator's Leather Tunic
	}),
	cl(SHAMAN, {
		moh(12, iensemble(146511, {	-- Ensemble: Ruthless Gladiator's Ringmail Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(70269)),	-- Ruthless Gladiator's Linked Armor
		moh(2, i(70270)),	-- Ruthless Gladiator's Linked Gauntlets
		moh(3, i(70271)),	-- Ruthless Gladiator's Linked Helm
		moh(3, i(70272)),	-- Ruthless Gladiator's Linked Leggings
		moh(2, i(70273)),	-- Ruthless Gladiator's Linked Spaulders
		moh(3, i(70274)),	-- Ruthless Gladiator's Mail Armor
		moh(2, i(70275)),	-- Ruthless Gladiator's Mail Gauntlets
		moh(3, i(70276)),	-- Ruthless Gladiator's Mail Helm
		moh(3, i(70277)),	-- Ruthless Gladiator's Mail Leggings
		moh(2, i(70278)),	-- Ruthless Gladiator's Mail Spaulders
		moh(3, i(70264)),	-- Ruthless Gladiator's Ringmail Armor
		moh(2, i(70265)),	-- Ruthless Gladiator's Ringmail Gauntlets
		moh(3, i(70266)),	-- Ruthless Gladiator's Ringmail Helm
		moh(3, i(70267)),	-- Ruthless Gladiator's Ringmail Leggings
		moh(2, i(70268)),	-- Ruthless Gladiator's Ringmail Spaulders
	}),
	cl(WARLOCK, {
		moh(12, iensemble(146505, {	-- Ensemble: Ruthless Gladiator's Felweave Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(2, i(70318)),	-- Ruthless Gladiator's Felweave Amice
		moh(3, i(70315)),	-- Ruthless Gladiator's Felweave Cowl
		moh(2, i(70314)),	-- Ruthless Gladiator's Felweave Handguards
		moh(3, i(70317)),	-- Ruthless Gladiator's Felweave Raiment
		moh(3, i(70316)),	-- Ruthless Gladiator's Felweave Trousers
	}),
	cl(WARRIOR, {
		moh(12, iensemble(146509, {	-- Ensemble: Ruthless Gladiator's Plate Armor
			["timeline"] = { ADDED_7_2_0 },
		})),
		moh(3, i(70254)),	-- Ruthless Gladiator's Plate Chestpiece
		moh(2, i(70255)),	-- Ruthless Gladiator's Plate Gauntlets
		moh(3, i(70256)),	-- Ruthless Gladiator's Plate Helm
		moh(3, i(70257)),	-- Ruthless Gladiator's Plate Legguards
		moh(2, i(70258)),	-- Ruthless Gladiator's Plate Shoulders
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
};

root(ROOTS.Zones, m(KALIMDOR, {
	m(TANARIS, {
		["lore"] = "The Tanaris Desert is vast and unexplored. It is a land of endless sands and cloudless skies. The southern Tanaris Desert is more mountainous than the north, boasting canyons and high bluffs. Numerous tunnels run beneath the sands, purportedly infested with the mysterious silithid. Other creatures in the desert include tallstriders, lions, kodo beasts, drakes and dragons — many the offspring of mighty Nozdormu, who is said to make this land his home.\n\nThe only bit of civilization is Gadgetzhan, a goblin trading post. Many Ironforge prospectors stock up on supplies here before heading out in search of the lost Titan city of Uldum.",
		["icon"] = 236846,
		["maps"] = {
			72,	-- The Noxious Lair
			73,	-- The Gaping Chasm
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(851),	-- Explore Tanaris
				ach(4935, {	-- Tanaris Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if AFTER 7.3.5
					["_doautomation"] = true,
					-- #else
					["sourceQuests"] = {
						25166,	-- Captain Dreadbeard (A)
						24950,	-- Captain Dreadbeard (H)
						24953,	-- Just Trying to Kill Some Bugs
						25065,	-- You Too, Brute?
						25001,	-- Sandscraper
						25513,	-- Thunderdrome: Grudge Match! (A)
						25591,	-- Thunderdrome: Grudge Match! (H)
						25421,	-- The Grand Goblet (A)
						25107,	-- The Grand Goblet (H)
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					484,	-- Desert Spider (PET!)
					431,	-- Rattlesnake (PET!)
					511,	-- Sidewinder (PET!)
				}},
				["groups"] = {
					pet(430),	-- Gold Beetle (PET!)
					pet(491, {	-- Sand Kitten (PET!)
						["description"] = "This pet has very few spawn points and may be easier to find as a second pet, but is sometimes around Gadgetzan. 'Rare' kittens are not easy to come across.",
					}),
					pet(560, {	-- Sea Gull (PET!)
						["description"] = "Most commonly found on beaches or near the ocean.",
					}),
					pet(494, {	-- Silithid Hatchling (PET!)
						["description"] = "This wild pet can be found in The Gaping Chasm and The Noxious Lair in Tanaris. It only spawns during sandstorms.",
					}),
					pet(492),	-- Stinkbug (PET!)
					pet(432),	-- Stripe-Tailed Scorpid (PET!)
				},
			}),
			explorationHeader({
				exploration(1939),	-- Abyssal Sands
				visit_exploration(5062,{coord={55.3,59.8,TANARIS}}),	-- Bootlegger Outpost
				exploration(1938),	-- Broken Pillar
				visit_exploration(1941,{coord={62.8,50.9,TANARIS}}),	-- Caverns of Time
				exploration(2300),	-- Caverns of Time
				exploration(983),	-- Dunemaul Compound
				visit_exploration(5063,{coord={44.9,52.8,TANARIS}}),	-- Dunemaul Recruitment Camp
				exploration(984),	-- Eastmoon Ruins
				exploration(976),	-- Gadgetzan
				exploration(987),	-- Land's End Beach
				exploration(1336),	-- Lost Rigger Cove
				-- #if BEFORE CATA
				exploration(1937),	-- Noonshade Ruins
				-- #else
				visit_exploration(1937,{coord={58.7,24.4,TANARIS}}),	-- Noonshade Ruins
				-- #endif
				exploration(979),	-- Sandsorrow Watch
				visit_exploration(1940,{coord={62.3,58.9,TANARIS}}),	-- Southbreak Shore
				exploration(992),	-- Southmoon Ruins
				visit_exploration(977,{coord={64.9,21.8,TANARIS}}),	-- Steamwheedle Port
				exploration(981),	-- The Gaping Chasm
				exploration(982),	-- The Noxious Lair
				exploration(980),	-- Thistleshrub Valley
				exploration(990),	-- Valley of the Watchers
				-- #if BEFORE CATA
				exploration(985),	-- Waterspring Field
				-- #else
				visit_exploration(985,{coord={59.0,47.5,TANARIS}}),	-- Waterspring Field
				-- #endif
				-- #if BEFORE CATA
				exploration(986),	-- Zalashji's Den
				-- #endif
				exploration(978),	-- Zul'Farrak
			}),
			n(FACTIONS, {
				faction(FACTION_GADGETZAN, {	-- Gadgetzan
					["icon"] = 133784,
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForGadgetzhan,
					-- #endif
					["maps"] = {
						-- #if AFTER CATA
						NORTHERN_BARRENS,
						-- #else
						THE_BARRENS,
						-- #endif
					},
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(539, {	-- Bootlegger Outpost, Tanaris
					["cr"] = 41214,	-- Slick Dropdip <Flight Master>
					["coord"] = { 55.9, 60.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				fp(531, {	-- Dawnrise Expedition, Tanaris
					["cr"] = 41215,	-- Raina Sunglide <Flight Master>
					["coord"] = { 33.2, 77.2, TANARIS },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
				}),
				fp(39, {	-- Gadgetzan, Tanaris
					["cr"] = 7823,	-- Bera Stonehammer <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 51.4, 29.5, TANARIS },
						-- #else
						{ 51.0, 29.2, TANARIS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(40, {	-- Gadgetzan, Tanaris
					["cr"] = 7824,	-- Bulkrek Ragefist <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 52.0, 27.6, TANARIS },
						-- #else
						{ 51.6, 26.6, TANARIS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(532, {	-- Gunstan's Dig, Tanaris
					["cr"] = 40827,	-- Thurda <Flight Master>
					["coord"] = { 40.1, 77.5, TANARIS },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ENGINEERING, {
					n(8736, {	-- Buzzek Bracketswing <Engineering Trainer>
						["coord"] = { 51.6, 30.2, TANARIS },
						-- #if BEFORE 2.1.0
						["groups"] = EXPERT_ARTISAN_ENGINEERING,
						-- #endif
					}),
					n(8126, {	-- Nixx Sprocketspring <Goblin Engineering Trainer>
						["coord"] = { 52.2, 28.2, TANARIS },
						["groups"] = ALL_GOBLIN_ENGINEERING,
					}),
				}),
			}),
			n(QUESTS, {
				q(2750, {	-- A Bad Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8646, 1 }},	-- Bad Egg
					["repeatable"] = true,
					["lvl"] = 42,
				}),
				q(7652, {	-- A Blue Light Bargain
					-- #if AFTER TBC
					["sourceQuests"] = {
						10891,	-- Imperial Plate Armor [A]
						10892,	-- Imperial Plate Armor [H]
					},
					-- #endif
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
				}),
				q(25072, {	-- A Few Good Goblins
					["sourceQuests"] = {
						25103,	-- Bootlegger Outpost
						26889,	-- All Cheered Out
					},
					["qg"] = 38706,	-- Zeke Bootscuff
					["coord"] = { 55.6, 60.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Goblins rescued
							["provider"] = { "n", 39081 },	-- Hazzali Cocoon
						}),
						i(56855, {	-- Dangerous Machinery Piece
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56856, {	-- Bughunter Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56857, {	-- Loaner Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56858, {	-- Goblin Treat Tin
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2748, {	-- A Fine Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8644, 1 }},	-- Fine Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(9540),	-- Box of Spells
					},
				}),
				q(2771, {	-- A Good Head On Your Shoulders
					["sourceQuest"] = 2764,	-- Galvan's Finest Pupil
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 7931, 2 },	-- Mithril Coif
						{ "i", 7928, 1 },	-- Ornate Mithril Shoulder
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						recipe(9980, {	-- Ornate Mithril Helm
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(24951, {	-- A Great Idea
					["sourceQuest"] = 24933,	-- Chicken of the Desert
					["qg"] = 38706,	-- Zeke Bootscuff
					["coord"] = { 55.6, 60.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Swarmer Wrangled
							["provider"] = { "i", 52031 },	-- Bootlegger Bug Bait
							["cr"] = 5451,	-- Hazzali Swarmer
						}),
					},
				}),
				q(26889, {	-- All Cheered Out
					["sourceQuest"] = 25166,	-- Captain Dreadbeard (A)
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2747, {	-- An Extraordinary Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8643, 1 }},	-- Extraordinary Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(9541),	-- Box of Goodies
					},
				}),
				q(2749, {	-- An Ordinary Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8645, 1 }},	-- Ordinary Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(9539),	-- Box of Rations
					},
				}),
				q(25420, {	-- Ancient Obstacles (A)
					["sourceQuest"] = 28881,	-- Prospector Gunstan
					["qg"] = 40109,	-- Prospector Gunstan
					["coord"] = { 40.1, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Sandstone Golem slain
							["provider"] = { "n", 38914 },	-- Sandstone Golem
						}),
						i(56903, {	-- Gatewatcher Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56904, {	-- Decomissioner's Monnions
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56905, {	-- Sandstone Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25017, {	-- Ancient Obstacles (H)
					["sourceQuests"] = {
						25020,	-- Fragments of Language (H)
						25019,	-- Laying Claim (H)
					},
					["qg"] = 38922,	-- Examiner Andoren Dawnrise
					["coord"] = { 33.2, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Sandstone Golem slain
							["provider"] = { "n", 38914 },	-- Sandstone Golem
						}),
						i(56906, {	-- Gatewatcher Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56907, {	-- Examiner's Monnions
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56908, {	-- Sandstone Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25018, {	-- Andoren Will Know
					["sourceQuests"] = {
						25014,	-- Sandscraper's Treasure
					},
					["qg"] = 38849,	-- Megs Dreadshredder
					["coord"] = { 44.5, 52.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(841, {	-- Another Power Source?
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["coord"] = { 52.4, 28.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8483, 10 }},	-- Wastewander Water Pouch
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 38,
					["groups"] = {
						i(8524, {	-- Model 4711-FTZ Power Source
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25115, {	-- Blisterpaw Butchery
					["sourceQuest"] = 25111,	-- Scavengers Scavenged
					["qg"] = 39178,	-- Driz Plunkbow
					["coord"] = { 52.3, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25021, {	-- Blood to Thrive
					["qg"] = 38927,	-- Mazoga
					["coord"] = { 42.3, 23.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Fistful of Blood
							["provider"] = { "i", 52064 },	-- Fistful of Blood
							["crs"] = {
								5645,	-- Sandfury Hideskinner
								5646,	-- Sandfury Axe Thrower
								5647,	-- Sandfury Firecaller
							},
						}),
					},
				}),
				q(25103, {	-- Bootlegger Outpost
					["sourceQuest"] = 24950,	-- Captain Dreadbeard (H)
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(24949, {	-- Booty Duty
					["sourceQuest"] = 24910,	-- Rocket Rescue (H)
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Pirate Booty
							["providers"] = {
								{ "i", 51549 },	-- Pirate Booty
								{ "o", 202263 },	-- Pirate Booty
								{ "o", 203019 },	-- Pirate Booty
								{ "o", 203021 },	-- Pirate Booty
								{ "o", 203022 },	-- Pirate Booty
							},
						}),
					},
				}),
				q(4496, {	-- Bungle in the Jungle
					["sourceQuests"] = {
						4494,	-- March of the Silithid [Horde]
						4493,	-- March of the Silithid [Alliance]
					},
					["qg"] = 5594,	-- Alchemist Pestlezugg
					["coord"] = { 50.8, 27.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Gorishi Scent Gland
							["provider"] = { "i", 11837 },	-- Gorishi Scent Gland
							["crs"] = {
								6553,	-- Gorishi Reaver
								6554,	-- Gorishi Stinger
								6555,	-- Gorishi Tunneler
								6551,	-- Gorishi Wasp
								6552,	-- Gorishi Worker
							},
						}),
						objective(2, {	-- 0/5 Un'Goro Soil
							["provider"] = { "i", 11018 },	-- Un'Goro Soil
						}),
					},
				}),
				q(25112, {	-- Butcherbot
					["qg"] = 39178,	-- Driz Plunkbow
					["coord"] = { 52.3, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				{
					["allianceQuestData"] = q(4508, {	-- Calm Before the Storm (1/2) [A]
						["maps"] = { DARNASSUS },
					}),
					["hordeQuestData"] = q(4509, {	-- Calm Before the Storm (1/2) [H]
						["maps"] = { ORGRIMMAR },
					}),
					["providers"] = {
						{ "n", 5594 },	-- Alchemist Pestlezugg <Alchemy Supplies>
						{ "i", 11844 },	-- Pestlezugg's Un'Goro Report
					},
                    ["sourceQuest"] = 4507,	-- Pawn Captures Queen
                    ["coord"] = { 50.8, 27.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
                    ["lvl"] = 50,
				},
				q(25166, {	-- Captain Dreadbeard (A)
					["sourceQuests"] = {
						26887,	-- Filling Our Pockets
						26886,	-- Going Off-Task
						25053,	-- To The Ground!
					},
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Dreadbeard slain
							["provider"] = { "n", 38749 },	-- Captain Dreadbeard
						}),
						i(56867, {	-- Pretty Please Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56868, {	-- Dreadbeard Strangler Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56869, {	-- Investigator's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56870, {	-- Impatient Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24950, {	-- Captain Dreadbeard (H)
					["sourceQuests"] = {
						25541,	-- Filling Our Pockets
						25534,	-- Going Off-Task
						24928,	-- To The Ground!
					},
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Dreadbeard slain
							["provider"] = { "n", 38749 },	-- Captain Dreadbeard
						}),
						i(56871, {	-- Flirtation Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56872, {	-- Dreadbeard Strangler Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56873, {	-- Investigator's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56874, {	-- Impatient Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24933, {	-- Chicken of the Desert
					["sourceQuest"] = 24932,	-- Cutting Losses
					["qg"] = 38706,	-- Zeke Bootscuff
					["coord"] = { 55.6, 60.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Hyena Chunk
							["provider"] = { "i", 51778 },	-- Hyena Chunk
							["cr"] = 5427,	-- Rabid Blisterpaw
						}),
					},
				}),
				q(6610, {	-- Clamlette Surprise
					["description"] =
						-- #if AFTER 8.0.1
						"Becomes available at Classic Cooking skill level 225 when character level requirement is met.\n\nThe Horde breadcrumb for this quest is called 'To Gadgetzan You Go!' and is picked up from cooking trainer Zamja in Orgrimmar. Sadly the Alliance breadcrumb from Ironforge named 'I Know A Guy...' is unobtainable.",
						-- #elseif AFTER 4.0.3
						"Becomes available at Cooking skill level 225 when character level requirement is met.\n\nThe Horde breadcrumb for this quest is called 'To Gadgetzan You Go!' and is picked up from cooking trainer Zamja in Orgrimmar. Sadly the Alliance breadcrumb from Ironforge named 'I Know A Guy...' is unobtainable.",
						-- #else
						"Becomes available at Cooking skill level 225 when character level requirement is met.\n\nThe Alliance breadcrumb for this quest is called 'I Know A Guy...' and is picked up from cooking trainer Daryl Riknussun in Ironforge. The Horde breadcrumb for this quest is called 'To Gadgetzan You Go!' and is picked up from cooking trainer Zamja in Orgrimmar.",
						-- #endif
					["sourceQuests"] = {
						6611,	-- To Gadgetzan You Go!
						6612,	-- I Know A Guy...
					},
					["altQuests"] = { 13825 },	-- Clamlette Surprise
					["qgs"] = {
						-- #if AFTER 4.0.3
						40589,	-- Dirge Quikcleave
						-- #else
						8125,	-- Dirge Quikcleave
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 4.0.3
						{ 52.4, 29.0, TANARIS },
						-- #else
						{ 52.6, 28.1, TANARIS },
						-- #endif
					},
					["cost"] = {
						{ "i", 12207, 12 },	-- Giant Egg
						{ "i", 7974, 10 },	-- Zesty Clam Meat
						-- #if AFTER CATA
						{ "i", 3927, 20 },	-- Fine Aged Cheddar
						-- #else
						{ "i", 8932, 20 },	-- Alterac Swiss
						-- #endif
					},
					["requireSkill"] = COOKING,
					["learnedAt"] = 225,
					["lvl"] = 35,
					["groups"] = {
						i(16971),	-- Clamlette Surprise
						recipe(18260, {	-- Cooking (Artisan)
							["timeline"] = { REMOVED_3_1_0 },
						}),
						recipe(64054, {	-- Clamlette Magnifique (RECIPE!)
							["timeline"] = { ADDED_3_1_0 },
						}),
					},
				}),
				q(13825, {	-- Clamlette Surprise
					["sourceQuests"] = {
						6611,	-- To Gadgetzan You Go!
						6612,	-- I Know A Guy...
					},
					["qg"] = 8125,	-- Dirge Quikcleave
					["coord"] = { 52.63, 28.12, TANARIS },
					["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3 },
					["requireSkill"] = COOKING,
					["learnedAt"] = 225,
					["lockCriteria"] = { 1, "spellID", 64054 },	-- Clamlette Magnifique (RECIPE!)
					["groups"] = {
						i(16971),	-- Clamlette Surprise
						recipe(18260, {	-- Cooking (Artisan)
							["timeline"] = { REMOVED_3_1_0 },
						}),
						recipe(64054),	-- Clamlette Magnifique (RECIPE!)
					},
				}),
				q(2882, {	-- Cuergo's Gold
					["providers"] = {
						{ "i",   9254 },	-- Cuergo's Treasure Map
						{ "o", 142189 },	-- Inconspicuous Landmark
					},
					["coord"] = { 55.4, 92.2, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 9275, 1 },	-- Cuergo's Key
						{ "i", 9251, 1 },	-- Upper Map Fragment
						{ "i", 9253, 1 },	-- Middle Map Fragment
						{ "i", 9252, 1 },	-- Lower Map Fragment
					},
					["repeatable"] = true,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Cuergo's Key
							["provider"] = { "i", 9275 },	-- Cuergo's Key
							["crs"] = {
								7899,	-- Treasure Hunting Pirate
								7901,	-- Treasure Hunting Swashbuckler
								7902,	-- Treasure Hunting Buccaneer
							},
						}),
						i(9265, {	-- Cuergo's Hidden Treasure
							["timeline"] = { REMOVED_4_0_3 },
							["groups"] = {
								i(9360, {	-- Cuergo's Gold
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(9361, {	-- Cuergo's Gold with Worm
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(9359),	-- Wirt's Third Leg (Patch 9.1.5: Renamed to 'Southsea Lamp')
							},
						}),
					},
				}),
				q(24932, {	-- Cutting Losses
					["sourceQuests"] = {
						25103,	-- Bootlegger Outpost
						26889,	-- All Cheered Out
					},
					["qg"] = 38706,	-- Zeke Bootscuff
					["coord"] = { 55.6, 60.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Hazzali Silithid slain
							["providers"] = {
								{ "n", 39170},	-- Hazzali Silithid Credit Bunny
								{ "n", 5441},	-- Hazzali Wasp
								{ "n", 5450},	-- Hazzali Stinger
								{ "n", 5451},	-- Hazzali Swarmer
								{ "n", 5452},	-- Hazzali Worker
								{ "n", 5453},	-- Hazzali Tunneler
								{ "n", 5454},	-- Hazzali Sandreaver
							},
						}),
					},
				}),
				q(25026, {	-- Darkest Mojo
					["sourceQuest"] = 25025,	-- Sang'thraze the Deflector
					["qg"] = 38927,	-- Mazoga
					["coord"] = { 42.3, 23.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Darkest Mojo
							["provider"] = { "i", 52072 },	-- Darkest Mojo
							["crs"] = {
								38909,	-- Sandfury Zombie
								44557,	-- Sandfury Zombie
							},
						}),
					},
				}),
				q(25052, {	-- Dead Man's Chest (A)
					["sourceQuest"] = 25050,	-- Rocket Rescue (A)
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Southsea Pirates slain
							["providers"] = {
								{ "n", 39026},	-- Southsea Freebooter Credit Bunny
								{ "n", 7855},	-- Southsea Pirate
								{ "n", 7856},	-- Southsea Freebooter
								{ "n", 7858},	-- Southsea Swashbuckler
							},
						}),
						i(56875, {	-- Southsea Hood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56876, {	-- Golly Gosh Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56877, {	-- Nose Thumber Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56878, {	-- Cleaned-Up Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24927, {	-- Dead Man's Chest (H)
					["sourceQuest"] = 24910,	-- Rocket Rescue (H)
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Southsea Freebooters slain
							["providers"] = {
								{ "n", 39026},	-- Southsea Freebooter Credit Bunny
								{ "n", 7855},	-- Southsea Pirate
								{ "n", 7856},	-- Southsea Freebooter
								{ "n", 7858},	-- Southsea Swashbuckler
							},
						}),
						i(56879, {	-- Southsea Hood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56880, {	-- Dellot's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56881, {	-- Branded Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56882, {	-- Cleaned-Up Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25060, {	-- Define "Crazy"
					["sourceQuest"] = 25061,	-- Land's End
					["qg"] = 39059,	-- Kelsey Steelspark
					["coord"] = { 50.0, 82.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Crazed Bilgewater Survivor slain
							["provider"] = { "n", 39020 },	-- Crazed Bilgewater Survivor
						}),
					},
				}),
				q(2661, {	-- Delivery for Marin
					["sourceQuest"] = 2641,	-- Sprinkle's Secret Ingredient
					["providers"] = {
						{ "n", 7583 },	-- Sprinkle
						{ "i", 8528 },	-- Violet Powder
					},
					["coord"] = { 51.0, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 44,
				}),
				q(2874, {	-- Deliver to MacKinley
					["sourceQuest"] = 2873,	-- Stoley's Shipment
					["providers"] = {
						{ "n", 7881 },	-- Stoley
						{ "i", 9245 },	-- Stoley's Bottle
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 40,
					["groups"] = {
						i(9636, {	-- Swashbuckler Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9637, {	-- Shinkicker Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3321, {	-- Did You Lose This?
					["sourceQuests"] = {
						2771,	-- A Good Head On Your Shoulders
						2773,	-- The Mithril Kid
						2772,	-- The World At Your Feet
					},
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						i(10418, {	-- Glimmering Mithril Insignia
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81877, {	-- Fight Night
					["sourceQuest"] = 81801,	-- Return to the Arena
					["qg"] = 220984,	-- Fizbuz Mithril
					["coord"] = { 51.6, 27.6, TANARIS },
					["timeline"] = { ADDED_1_15_2 },
					["classes"] = { WARRIOR },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- Arena Victory
							["provider"] = { "n", 221829 },	-- Kajind <Arena Champion>
						}),
						i(220164, {	-- Rune of the Gladiator
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(416002),	-- Engrave Boots - Gladiator Stance
							},
						}),
						i(219223),	-- Blademaster's Fury
					},
				})),
				-- #endif
				q(26887, {	-- Filling Our Pockets (A)
					["sourceQuests"] = {
						25053,	-- To The Ground!
						25054,	-- Lootin' Plunder
					},
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Gold Filling
							["provider"] = { "i", 54829 },	-- Gold Filling
							["crs"] = {
								40632,	-- Southsea Musketeer
								40635,	-- Southsea Strongarm
								44762,	-- Drenched Southsea Musketeer
								44763,	-- Drowned Southsea Strongarm
							},
						}),
					},
				}),
				q(25541, {	-- Filling Our Pockets (H)
					["sourceQuest"] = 24949,	-- Booty Duty
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Gold Filling
							["provider"] = { "i", 54829 },	-- Gold Filling
							["crs"] = {
								40632,	-- Southsea Musketeer
								40635,	-- Southsea Strongarm
								44762,	-- Drenched Southsea Musketeer
								44763,	-- Drowned Southsea Strongarm
							},
						}),
					},
				}),
				q(351, {	-- Find OOX-17/TN!
					["description"] = "The item that starts this quest can be found as a zone drop in Tanaris or in Zul'Farrak.",
					["provider"] = { "i", 8623 },	-- OOX-17/TN Distress Beacon
					["lvl"] = lvlsquish(43, 43, 15),
				}),
				q(25565, {	-- Fragments of Language (A)
					["sourceQuest"] = 28881,	-- Prospector Gunstan
					["qg"] = 40109,	-- Prospector Gunstan
					["coord"] = { 40.1, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ancient Hieroglyphs
							["providers"] = {
								{ "i", 52061 },	-- Ancient Hieroglyphs
								{ "o", 202420 },	-- Ancient Hieroglyphs
							},
						}),
					},
				}),
				q(25020, {	-- Fragments of Language (H)
					["qg"] = 38922,	-- Examiner Andoren Dawnrise
					["coord"] = { 33.2, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ancient Hieroglyphs
							["providers"] = {
								{ "i", 52061 },	-- Ancient Hieroglyphs
								{ "o", 202420 },	-- Ancient Hieroglyphs
							},
						}),
					},
				}),
				q(992, {	-- Gadgetzan Water Survey
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Tapped Dowsing Widget
							["providers"] = {
								{ "i", 8585 },	-- Tapped Dowsing Widget
								{ "i", 8584 },	-- Untapped Dowsing Widget
							},
							["coord"] = { 39.0, 29.0, TANARIS },
						}),
					},
				}),
				q(3161, {	-- Gahz'ridian
					["qg"] = 7771,	-- Marvon Rivetseeker
					["coord"] = { 52.6, 45.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 43,
					["groups"] = {
						objective(1, {	-- 0/30 Gahz'ridian Ornament
							["providers"] = {
								{ "i",   8443 },	-- Gahz'ridian Ornament
								{ "i",   9978 },	-- Gahz'ridian Detector
								{ "o", 140971 },	-- Gahz'ridian
							},
						}),
						i(10827, {	-- Surveyor's Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10826, {	-- Staff of Lore
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25522, {	-- Gargantapid
					["sourceQuest"] = 25521,	-- I'm With Scorpid
					["qg"] = 40580,	-- Gus Rustflutter
					["coord"] = { 42.5, 24.3, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Gargantapid's Poison Gland
							["provider"] = { "i", 54855 },	-- Gargantapid's Poison Gland
							["cr"] = 40581,	-- Gargantapid
						}),
						i(56847, {	-- Chelsea's Nightmare
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56848, {	-- Rustflutter Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56849, {	-- Gus' First Aid Kit
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24931, {	-- Gazer Tag
					["sourceQuest"] = 24932,	-- Cutting Losses
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 55.2, 60.3, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Ocular Crystal
							["provider"] = { "i", 51793 },	-- Ocular Crystal
							["cr"] = 5420,	-- Glasshide Gazer
						}),
					},
				}),
				q(24957, {	-- Get The Centipaarty Started
					["sourceQuest"] = 24955,	-- Un-Chartered
					["qg"] = 38849,	-- Megs Dreadshredder
					["coord"] = { 44.5, 52.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Centipaarts
							["provider"] = { "i", 52041 },	-- Centipaarts
							["crs"] = {
								5455,	-- Centipaar Wasp
								5456,	-- Centipaar Stinger
								5457,	-- Centipaar Swarmer
								5458,	-- Centipaar Worker
								5459,	-- Centipaar Tunneler
								5460,	-- Centipaar Sandreaver
							},
						}),
					},
				}),
				q(26886, {	-- Going Off-Task (A)
					["sourceQuest"] = 25052,	-- Dead Man's Chest (A)
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Southsea Taskmaster slain
							["provider"] = { "n", 40593 },	-- Southsea Taskmaster
						}),
					},
				}),
				q(25534, {	-- Going Off-Task (H)
					["sourceQuest"] = 24927,	-- Dead Man's Chest (H)
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Southsea Taskmaster slain
							["provider"] = { "n", 40593 },	-- Southsea Taskmaster
						}),
					},
				}),
				q(3022, {	-- Handle With Care
					["providers"] = {
						{ "n", 7763 },	-- Curgle Cranklehop
						{ "i", 9507 },	-- A Carefully-packed Crate
					},
					["coord"] = { 52.2, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(53821, {	-- He's Dead, Jastor
					["sourceQuest"] = 53819,	-- Return to the Nest
					["qg"] = 151130,	-- Grizzek Fizzwrench
					["coord"] = { 27.2, 60.1, TANARIS },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = HORDE_ONLY,
					["lvl"] = 120,
					["groups"] = {
						i(165845, {	-- Feathers (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				heroscall(q(28507, {	-- Hero's Call: Tanaris!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 44. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 48. (TODO: Test max level between 48 and 55)
					["lvl"] = { 44, 48 },
					-- #endif
				})),
				q(25521, {	-- I'm With Scorpid
					["qg"] = 40580,	-- Gus Rustflutter
					["coord"] = { 42.5, 24.3, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Duneclaw Stinger
							["provider"] = { "i", 54856 },	-- Duneclaw Stinger
							["crs"] = {
								40656,	-- Duneclaw Matriarch
								40717,	-- Duneclaw Lasher
							},
						}),
					},
				}),
				q(10891, {	-- Imperial Plate Armor [A]
					["qg"] = 11145,	-- Myolor Sunderfury
					["coord"] = { 52.0, 41.4, IRONFORGE },
					["timeline"] = { ADDED_2_5_1, REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(10892, {	-- Imperial Plate Armor [H]
					["qg"] = 11176,	-- Krathok Moltenfist
					["coord"] = { 80.0, 23.3, ORGRIMMAR },
					["timeline"] = { ADDED_2_5_1, REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(7653, {	-- Imperial Plate Belt
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 20 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12688, {	-- Plans: Imperial Plate Belt (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(7654, {	-- Imperial Plate Boots
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 40 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12700, {	-- Plans: Imperial Plate Boots (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(7655, {	-- Imperial Plate Bracer
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 20 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12690, {	-- Plans: Imperial Plate Bracer (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(7656, {	-- Imperial Plate Chest
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 60 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12705, {	-- Plans: Imperial Plate Chest (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(7657, {	-- Imperial Plate Helm
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 50 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12701, {	-- Plans: Imperial Plate Helm (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(7658, {	-- Imperial Plate Leggings
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 60 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12715, {	-- Plans: Imperial Plate Leggings (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(7659, {	-- Imperial Plate Shoulders
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12359, 20 },	-- Thorium Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12687, {	-- Plans: Imperial Plate Shoulders (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				q(2606, {	-- In Good Taste
					["sourceQuest"] = 2605,	-- The Thirsty Goblin
					["providers"] = {
						{ "n", 7564 },	-- Marin Noggenfogger
						{ "i", 8603 },	-- Thistleshrub Dew
					},
					["coord"] = { 51.8, 28.6, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 44,
				}),
				q(110, {	-- Insect Part Analysis (1/2)
					["sourceQuest"] = 10,	-- The Scrimshank Redemption
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
				}),
				q(113, {	-- Insect Part Analysis (2/2)
					["sourceQuest"] = 110,	-- Insect Part Analysis (1/2)
					["providers"] = {
						{ "n", 5594 },	-- Alchemist Pestlezugg <Alchemy Supplies>
						{ "i", 8594 },	-- Insect Analysis Report
					},
					["coord"] = { 50.9, 27.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
				}),
				q(24953, {	-- Just Trying to Kill Some Bugs
					["sourceQuest"] = 24951,	-- A Great Idea
					["qg"] = 38706,	-- Zeke Bootscuff
					["coord"] = { 55.6, 60.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(56851, {	-- Pendant of the Gaping Chasm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56852, {	-- Mostly-Amazing Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56853, {	-- Bootscuff Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56854, {	-- Bootlegger Legplates
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25061, {	-- Land's End
					["sourceQuest"] = 24953,	-- Just Trying to Kill Some Bugs
					["qg"] = 11811,	-- Narain Soothfancy
					["coord"] = { 55.2, 60.3, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25559, {	-- Laying Claim (A)
					["sourceQuest"] = 28881,	-- Prospector Gunstan
					["qg"] = 40109,	-- Prospector Gunstan
					["coord"] = { 40.1, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Reliquary Digger slain
							["provider"] = { "n", 38997 },	-- Reliquary Digger
						}),
					},
				}),
				q(25019, {	-- Laying Claim (H)
					["sourceQuest"] = 25018,	-- Andoren Will Know
					["qg"] = 38922,	-- Examiner Andoren Dawnrise
					["coord"] = { 33.2, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Explorer's League Digger slain
							["provider"] = { "n", 38998 },	-- Explorer's League Digger
						}),
					},
				}),
				q(3914, {	-- Linken's Sword
					["sourceQuest"] = 3913,	-- A Grave Situation
					["providers"] = {
						{ "o", 148504 },	-- A Conspicuous Gravestone
						{ "i",  11162 },	-- Linken's Superior Sword
					},
					["coord"] = { 53.9, 29.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(25054, {	-- Lootin' Plunder
					["sourceQuest"] = 25050,	-- Rocket Rescue (A)
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Pirate Booty
							["providers"] = {
								{ "i", 51549 },	-- Pirate Booty
								{ "o", 202263 },	-- Pirate Booty
								{ "o", 203019 },	-- Pirate Booty
								{ "o", 203021 },	-- Pirate Booty
								{ "o", 203022 },	-- Pirate Booty
							},
						}),
					},
				}),
				q(24963, {	-- Maul 'Em With Kindness
					["sourceQuest"] = 24957,	-- Get The Centiparty Started
					["qg"] = 38849,	-- Megs Dreadshredder
					["coord"] = { 44.5, 52.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Ogres Fed
							["provider"] = { "i", 52044 },	-- Bilgewater Cartel Promotional Delicacy Morsels
							["crs"] = {
								5474,	-- Dunemaul Brute
								5472,	-- Dunemaul Enforcer
								5471,	-- Dunemaul Ogre
								5473,	-- Dunemaul Ogre Mage
								5475,	-- Dunemaul Warlock
							},
						}),
					},
				}),
				q(25121, {	-- Momentum (A)
					["sourceQuest"] = 25050,	-- Rocket Rescue (A)
					["qg"] = 38535,	-- Kelsey Steelspark
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(24947, {	-- Momentum (H)
					["sourceQuest"] = 24910,	-- Rocket Rescue (H)
					["qg"] = 38534,	-- Megs Dreadshredder
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1691, {	-- More Wastewander Justice
					["sourceQuest"] = 1690,	-- Wastewander Justice
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["coord"] = { 52.5, 28.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/8 Wastewander Rogue slain
							["provider"] = { "n", 5615 },	-- Wastewander Rogue
						}),
						objective(2, {	-- 0/6 Wastewander Assassin slain
							["provider"] = { "n", 5623 },	-- Wastewander Assassin
						}),
						objective(3, {	-- 0/10 Wastewander Shadow Mage slain
							["provider"] = { "n", 5617 },	-- Wastewander Shadow Mage
						}),
					},
				}),
				q(2662, {	-- Noggenfogger Elixir
					["sourceQuest"] = 2661,	-- Delivery for Marin
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 44,
					["groups"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				q(82, {	-- Noxious Lair Investigation
					["sourceQuest"] = 992,	-- Gadgetzan Water Survey
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/5 Centipaar Insect Parts
							["provider"] = { "i", 8587 },	-- Centipaar Insect Parts
							["crs"] = {
								5460,	-- Centipaar Sandreaver
								5456,	-- Centipaar Stinger
								5457,	-- Centipaar Swarmer
								5459,	-- Centipaar Tunneler
								5455,	-- Centipaar Wasp
								5458,	-- Centipaar Worker
							},
						}),
					},
				}),
				q(4507, {	-- Pawn Captures Queen
					["sourceQuest"] = 4496,	-- Bungle in the Jungle
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.9, 27.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Gorishi Queen Brain
							["providers"] = {
								{ "i",  11835 },	-- Gorishi Queen Brain
								{ "i",  11833 },	-- Gorishi Queen Lure
								{ "o", 174792 },	-- Gorishi Silithid Crystal
							},
							["coord"] = { 44.6, 81.6, UNGORO_CRATER },
							["cr"] = 10041,	-- Gorishi Hive Queen
						}),
					},
				}),
				q(8365, {	-- Pirate Hats Ahoy!
					["qg"] = 15165,	-- Haughty Modiste
					["coord"] = { 66.6, 22.3, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/20 Southsea Pirate Hat
							["provider"] = { "i", 20519 },	-- Southsea Pirate Hat
							["crs"] = {
								7883,	-- Andre Firebeard
								8203,	-- Kregg Keelhaul
								7857,	-- Southsea Dock Worker
								7856,	-- Southsea Freebooter
								15685,	-- Southsea Kidnapper
								7855,	-- Southsea Pirate
								7858,	-- Southsea Swashbuckler
							},
						}),
					},
				}),
				q(28881, {	-- Prospector Gunstan
					["sourceQuest"] = 25065,	-- You Too, Brute?
					["qg"] = 39059,	-- Kelsey Steelspark
					["coord"] = { 50.0, 82.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25049, {	-- Puddle Stomping (A)
					["sourceQuest"] = 28507,	-- Hero's Call: Tanaris!
					["qg"] = 38535,	-- Kelsey Steelspark
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Tidal Strider slain
							["provider"] = { "n", 39022 },	-- Tidal Strider
						}),
					},
				}),
				q(24907, {	-- Puddle Stomping (H)
					["sourceQuest"] = 28509,	-- Warchief's Command: Tanaris!
					["qg"] = 38534,	-- Megs Dreadshredder
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Tidal Strider slain
							["provider"] = { "n", 39022 },	-- Tidal Strider
						}),
					},
				}),
				q(53818, {	-- Re-parrot / Programming On The Fly
					["sourceQuest"] = 53816,	-- Some Reassembly Required
					["qg"] = 151132,	-- Feathers
					["coord"] = { 62.1, 45.3, TANARIS },
					["timeline"] = { ADDED_8_1_5 },
					["lvl"] = 120,
					-- Quest shows up in-game as "Re-parrot" currently, but Wowhead redirects to the second quest name listed
				}),
				q(648, {	-- Rescue OOX-17/TN!
					["sourceQuest"] = 351,	-- Find OOX-17/TN!
					["qg"] = 7784,	-- Homing Robot OOX-17/TN
					["coords"] = {
						-- #if AFTER CATA
						{ 59.7, 64.0, TANARIS },
						-- #else
						{ 60.2, 64.6, TANARIS },
						-- #endif
					},
					["lvl"] = lvlsquish(43, 43, 15),
					["groups"] = {
						i(9643),	-- Optomatic Deflector
						i(9644),	-- Thermotastic Egg Timer
					},
				}),
				q(864, {	-- Return to Apothecary Zinge
					["sourceQuest"] = 654,	-- Tanaris Field Sampling
					["providers"] = {
						{ "n", 7407 },	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
						{ "i", 8527 },	-- Sealed Field Testing Kit
					},
					["coord"] = { 52.4, 28.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(11502, {	-- Loreskin Shoulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9635, {	-- Master Apothecary Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9634, {	-- Skilled Handling Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(53819, {	-- Return to the Nest
					["sourceQuest"] = 53818,	-- Re-parrot / Programming On The Fly
					["qg"] = 151132,	-- Feathers
					["coord"] = { 62.1, 45.3, TANARIS },
					["timeline"] = { ADDED_8_1_5 },
					["lvl"] = 120,
				}),
				q(24905, {	-- Returning a Favor
					["sourceQuest"] = 24953,	-- Just Trying to Kill Some Bugs
					["qg"] = 38706,	-- Zeke Bootscuff
					["coord"] = { 55.6, 60.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				{
					["allianceQuestData"] = q(162, {	-- Rise of the Silithid [A]
						["maps"] = { DARNASSUS },
					}),
					["hordeQuestData"] = q(32, {	-- Rise of the Silithid [H]
						["maps"] = { ORGRIMMAR },
					}),
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 113,	-- Insect Part Analysis (2/2)
					["coord"] = { 50.2, 27.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
				},
				q(25050, {	-- Rocket Rescue (A)
					["sourceQuests"] = {
						25049,	-- Puddle Stomping (A)
						25048,	-- Seaside Salvage (A)
					},
					["qg"] = 38535,	-- Kelsey Steelspark
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56859, {	-- Nasmira's Soup Stirrer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56860, {	-- Dud Bomb
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56861, {	-- Salvaged Steamwheedle Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56862, {	-- Failed Liferocket Prototype
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(24910, {	-- Rocket Rescue (H)
					["sourceQuests"] = {
						24907,	-- Puddle Stomping (H)
						24906,	-- Seaside Salvage (H)
					},
					["qg"] = 38534,	-- Megs Dreadshredder
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56863, {	-- Nasmira's Soup Stirrer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56864, {	-- Dud Bomb
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56865, {	-- Salvaged Steamwheedle Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56866, {	-- Failed Liferocket Prototype
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25001, {	-- Sandscraper
					["sourceQuest"] = 24963,	-- Maul 'Em With Kindness
					["qg"] = 38849,	-- Megs Dreadshredder
					["coord"] = { 44.5, 52.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sandscraper slain
							["provider"] = { "n", 38880 },	-- Sandscraper
						}),
						i(56887, {	-- Knuckle Down
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56888, {	-- Sandscraper Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56889, {	-- Business Finisher
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56890, {	-- Bilgewater Brooch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157014, {	-- Dunemaul Skullcracker
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(25014, {	-- Sandscraper's Treasure
					["provider"] = { "o", 202407 },	-- Sandscraper's Chest
					["coord"] = { 41.8, 57.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = { i(52047) },	-- Sandscraper's Scarab (QI!)
				}),
				q(25091, {	-- Sandsorrow Watch
					["sourceQuest"] = 25115,	-- Blisterpaw Butchery
					["qg"] = 39178,	-- Driz Plunkbow
					["coord"] = { 52.3, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25025, {	-- Sang'thraze the Deflector
					["sourceQuest"] = 25021,	-- Blood to Thrive
					["qg"] = 38927,	-- Mazoga
					["coord"] = { 42.3, 23.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Sang'thraze
							["provider"] = { "i", 52069 },	-- Sealed Sang'thraze
							["cr"] = 40648,	-- Zakkaru
						}),
						i(56844, {	-- Bone Valley Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56845, {	-- Blood Speaker Tunic
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56846, {	-- Bloodcraver Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157024, {	-- Sandfury Hatchet
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(25111, {	-- Scavengers Scavenged
					["sourceQuest"] = 25112,	-- Butcherbot
					["qg"] = 39178,	-- Driz Plunkbow
					["coord"] = { 52.3, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(3520, {	-- Screecher Spirits
					["qg"] = 8579,	-- Yeh'kinya
					["coord"] = { 67.0, 22.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/3 Screecher Spirit
							["providers"] = {
								{ "n", 8612 },	-- Screecher Spirit
								{ "i", 10699 },	-- Yeh'kinya's Bramble
							},
							["crs"] = {
								5307,	-- Vale Screecher
								5308,	-- Rogue Vale Screecher
							},
						}),
					},
				}),
				q(25048, {	-- Seaside Salvage (A)
					["sourceQuest"] = 27446,	-- Tanaris is Calling [A]
					["qg"] = 38535,	-- Kelsey Steelspark
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Steamwheedle Supplies
							["providers"] = {
								{ "i", 50829 },	-- Steamwheedle Supplies
								{ "o", 202198 },	-- Steamwheedle Crate
							},
						}),
					},
				}),
				q(24906, {	-- Seaside Salvage (H)
					["sourceQuest"] = 27447,	-- Tanaris is Calling [H]
					["qg"] = 38534,	-- Megs Dreadshredder
					["coord"] = { 51.2, 29.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Steamwheedle Supplies
							["providers"] = {
								{ "i", 50829 },	-- Steamwheedle Supplies
								{ "o", 202198 },	-- Steamwheedle Crate
							},
						}),
					},
				}),
				q(25032, {	-- Secrets in the Oasis
					["sourceQuest"] = 25026,	-- Darkest Mojo
					["qg"] = 38927,	-- Mazoga
					["coord"] = { 42.3, 23.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Fate of Jang'thraze
							["providers"] = {
								{ "o", 202441 },	-- Jang'thraze the Protector
								{ "n", 38968 },	-- Mazoga
							},
							["coord"] = { 39.1, 34.9, TANARIS },
						}),
						i(56840, {	-- Oasis Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56841, {	-- Half Truth Handlers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56842, {	-- Mazoga's Discarded Coif
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56843, {	-- Lighthammer Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(53820, {	-- She's in a Happier Place
					["sourceQuest"] = 53819,	-- Return to the Nest
					["qg"] = 151129,	-- Sapphronetta Flavvers
					["coord"] = { 27.1, 60.0, TANARIS },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(165845, {	-- Feathers (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				q(2876, {	-- Ship Schedules
					["provider"] = { "i", 9250 },	-- Ship Schedule
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
				}),
				q(3639, {	-- Show Your Work
					["sourceQuest"] = 3638,	-- The Pledge of Secrecy
					["altQuests"] = {
						3641,	-- Show Your Work
						3643,	-- Show Your Work
					},
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, TANARIS },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["lvl"] = 30,
				}),
				q(379, {	-- Slake That Thirst
					["sourceQuest"] = 243,	-- Into the Field
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["coord"] = { 52.4, 28.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8483, 5 }},	-- Wastewander Water Pouch
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(8524, {	-- Model 4711-FTZ Power Source
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(53816, {	-- Some Reassembly Required
					["sourceQuests"] = {
						53815,	-- Whatever Happened to Saffy Flivvers?
						53817,	-- Whatever Happened to Grizzek Fizzwrench?
					},
					["qg"] = 151132,	-- Feathers
					["coord"] = { 62.1, 45.3, TANARIS },
					["timeline"] = { ADDED_8_1_5 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/100 Mechanical Parts
							["provider"] = { "i", 167232 },	-- Mechanical Parts (QI!)
							["coord"] = { 62.6, 45.0, TANARIS },
							["crs"] = {
								151150,	-- Venture Salvager <Venture Co.>
								151152,	-- Venture Overseer <Venture Co.>
								151151,	-- Venture Oaf <Venture Co.>
							},
						}),
					},
				}),
				q(8366, {	-- Southsea Shakedown
					["qg"] = 7882,	-- Security Chief Bilgewhizzle
					["coord"] = { 67.1, 23.9, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Southsea Pirate slain
							["provider"] = { "n", 7855 },	-- Southsea Pirate
						}),
						objective(2, {	-- 0/10 Southsea Freebooter slain
							["provider"] = { "n", 7856 },	-- Southsea Freebooter
						}),
						objective(3, {	-- 0/10 Southsea Dock Worker slain
							["provider"] = { "n", 7857 },	-- Southsea Dock Worker
						}),
						objective(4, {	-- 0/10 Southsea Swashbuckler slain
							["provider"] = { "n", 7858 },	-- Southsea Swashbuckler
						}),
						i(20640, {	-- Southsea Head Bucket
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20641, {	-- Southsea Mojo Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2641, {	-- Sprinkle's Secret Ingredient
					["sourceQuest"] = 2606,	-- In Good Taste
					["qg"] = 7583,	-- Sprinkle
					["coord"] = { 51.1, 26.9, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Violet Tragan
							["providers"] = {
								{ "i",   8526 },	-- Violet Tragan
								{ "o", 141853 },	-- Violet Tragan
							},
							["coord"] = { 40.0, 59.0, THE_HINTERLANDS },
						}),
					},
				}),
				q(2872, {	-- Stoley's Debt
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 27.8, 77.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(2873, {	-- Stoley's Shipment
					["sourceQuest"] = 2872,	-- Stoley's Debt
					["qg"] = 7881,	-- Stoley
					["coord"] = { 67.1, 24.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Stoley's Shipment
							["providers"] = {
								{ "i",   9244 },	-- Stoley's Shipment
								{ "o", 142181 },	-- Stolen Cargo
							},
							["coord"] = { 72.2, 46.7, TANARIS },
						}),
					},
				}),
				q(4504, {	-- Super Sticky
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/12 Super Sticky Tar
							["provider"] = { "i", 11834 },	-- Super Sticky Tar
							["crs"] = {
								6517,	-- Tar Beast
								6527,	-- Tar Creeper
								6519,	-- Tar Lord
								6518,	-- Tar Lurker
							},
						}),
					},
				}),
				q(654, {	-- Tanaris Field Sampling
					["sourceQuests"] = {
						379,	-- Slake That Thirst
						-- 841,	-- Another Power Source?	-- Not required in 30403
					},
					["providers"] = {
						{ "i", 8524 },	-- Model 4711-FTZ Power Source
						{ "i", 8523 },	-- Field Testing Kit
					},
					["coord"] = { 52.4, 28.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/8 Acceptable Basilisk Sample
							["providers"] = {
								{ "i", 9440 },	-- Acceptable Basilisk Sample
								{ "i", 9437 },	-- Untested Basilisk Sample
							},
							["crs"] = {
								5419,	-- Glasshide Basilisk
								5420,	-- Glasshide Gazer
								5421,	-- Glasshide Petrifier
							},
						}),
						objective(2, {	-- 0/8 Acceptable Hyena Sample
							["providers"] = {
								{ "i", 9441 },	-- Acceptable Hyena Sample
								{ "i", 9439 },	-- Untested Hyena Sample
							},
							["crs"] = {
								5426,	-- Blisterpaw Hyena
								8208,	-- Murderous Blisterpaw
								5427,	-- Rabid Blisterpaw
								5425,	-- Starving Blisterpaw
							},
						}),
						objective(3, {	-- 0/8 Acceptable Scorpid Sample
							["providers"] = {
								{ "i", 9438 },	-- Acceptable Scorpid Sample
								{ "i", 9442 },	-- Untested Scorpid Sample
							},
							["crs"] = {
								7803,	-- Scorpid Duneburrower
								5424,	-- Scorpid Dunestalker
								5422,	-- Scorpid Hunter
								5423,	-- Scorpid Tail Lasher
							},
						}),
					},
				}),
				q(27446, {	-- Tanaris is Calling [A]
					["qg"] = 40027,	-- Fizzle Brassbolts
					["coord"] = { 75.9, 74.6, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27447, {	-- Tanaris is Calling [H]
					["qg"] = 40028,	-- Pozzik
					["coord"] = { 75.9, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25063, {	-- Terrapination
					["sourceQuests"] = {
						25060,	-- Define "Crazy"
						25062,	-- What We Came For
					},
					["qg"] = 39059,	-- Kelsey Steelspark
					["coord"] = { 50.0, 82.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Turtle-Digested Key
							["provider"] = { "i", 52282 },	-- Turtle-Digested Key
							["cr"] = 5431,	-- Surf Glider
						}),
					},
				}),
				q(25068, {	-- The Crumbling Past
					["sourceQuest"] = 25017,	-- Ancient Obstacles
					["qg"] = 38922,	-- Examiner Andoren Dawnrise
					["coord"] = { 33.2, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Earthen Jewel
							["provider"] = { "i", 52284 },	-- Earthen Jewel
							["cr"] = 38916,	-- Sandstone Earthen
						}),
					},
				}),
				q(5863, {	-- The Dunemaul Compound
					["qg"] = 11758,	-- Andi Lynn
					["coord"] = { 52.8, 27.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/10 Dunemaul Brute slain
							["provider"] = { "n", 5474 },	-- Dunemaul Brute
						}),
						objective(2, {	-- 0/10 Dunemaul Enforcer slain
							["provider"] = { "n", 5472 },	-- Dunemaul Enforcer
						}),
						objective(3, {	-- 0/1 Gor'marok the Ravager slain
							["provider"] = { "n", 12046 },	-- Gor'marok the Ravager
						}),
						i(16738, {	-- Witherseed Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16739, {	-- Rugwood Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25421, {	-- The Grand Tablet (A)
					["providers"] = {
						{ "o", 202474 },	-- Antediluvean Chest
						{ "i",  52470 },	-- The Grand Tablet (QI!)
					},
					["coord"] = { 37.8, 84.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56897, {	-- Hieroglyphic Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56898, {	-- Translation Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56899, {	-- Rosy Tablet Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25107, {	-- The Grand Tablet (H)
					["providers"] = {
						{ "o", 202474 },	-- Antediluvean Chest
						{ "i",  52470 },	-- The Grand Tablet (QI!)
					},
					["coord"] = { 37.8, 84.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56900, {	-- Hieroglyphic Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56901, {	-- Translation Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56902, {	-- Rosy Tablet Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(2773, {	-- The Mithril Kid
					["sourceQuest"] = 2764,	-- Galvan's Finest Pupil
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 7930, 2 },	-- Heavy Mithril Breastplate
						{ "i", 7927, 1 },	-- Ornate Mithril Gloves
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						recipe(9972, {	-- Ornate Mithril Breastplate
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81682, {	-- The Old Champ
					["qg"] = 220984,	-- Fizbuz Mithril
					["coord"] = { 51.6, 27.6, TANARIS },
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { AZSHARA },
					["classes"] = { WARRIOR },
					["lvl"] = 45,
				})),
				-- #endif
				q(3638, {	-- The Pledge of Secrecy
					["sourceQuests"] = {
						3526,	-- Goblin Engineering
						3629,	-- Goblin Engineering
						3633,	-- Goblin Engineering
						4181,	-- Goblin Engineering
					},
					["altQuests"] = {
						3640,	-- The Pledge of Secrecy
						3642,	-- The Pledge of Secrecy
					},
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, TANARIS },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Nixx's Pledge of Secrecy
							["provider"] = { "i", 11270 },	-- Nixx's Pledge of Secrecy
							["cost"] = { { "i", 10792, 1 } },	-- Nixx's Pledge of Secrecy
						}),
					},
				}),
				q(10, {	-- The Scrimshank Redemption
					["sourceQuest"] = 82,	-- Noxious Lair Investigation
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Scrimshank's Surveying Gear
							["providers"] = {
								{ "i",   8593 },	-- Scrimshank's Surveying Gear
								{ "o", 144053 },	-- Scrimshank's Surveying Gear
							},
							["coord"] = { 56.0, 71.0, TANARIS },
						}),
					},
				}),
				q(25566, {	-- The Secrets of Uldum (A)
					["description"] = "If chest disappears for you, go to Zidormi in Uldum and ask her to return you back in time.",
					["sourceQuest"] = 25420,	-- Ancient Obstacles
					["qg"] = 40109,	-- Prospector Gunstan
					["coord"] = { 40.1, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25069, {	-- The Secrets of Uldum (H)
					["description"] = "If chest disappears for you, go to Zidormi in Uldum and ask her to return you back in time.",
					["sourceQuest"] = 25017,	-- Ancient Obstacles
					["qg"] = 38922,	-- Examiner Andoren Dawnrise
					["coord"] = { 33.2, 77.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3444, {	-- The Stone Circle
					["sourceQuests"] = {
						3445,	-- The Sunken Temple [Alliance]
						3380,	-- The Sunken Temple [Horde]
					},
					["qg"] = 7771,	-- Marvon Rivetseeker
					["coord"] = { 52.6, 45.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Stone Circle
							["providers"] = {
								{ "i",  10556 },	-- Stone Circle
								{ "o", 149036 },	-- Marvon's Chest
							},
							["coord"] = { 62.5, 38.5, THE_BARRENS },
						}),
					},
				}),
				q(3445, {	-- The Sunken Temple [Alliance]
					["qg"] = 7900,	-- Angelas Moonbreeze
					["coord"] = { 31.8, 45.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 46,
				}),
				q(3380, {	-- The Sunken Temple [Horde]
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
				}),
				q(2741, {	-- The Super Egg-O-Matic
					["provider"] = { "o", 142071 },	-- Egg-O-Matic
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["cost"] = {{ "i", 8564, 1 }},	-- Hippogryph Egg
					["lvl"] = 42,
					["groups"] = {
						i(8647, {	-- Egg Crate
							["timeline"] = { DELETED_4_0_3 },
							["groups"] = {
								i(8646, {	-- Bad Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
								i(8643, {	-- Extraordinary Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
								i(8644, {	-- Fine Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
								i(8645, {	-- Ordinary Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
							},
						}),
					},
				}),
				q(8893, {	-- The Super Egg-O-Matic
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["provider"] = { "o", 142071 },	-- Egg-O-Matic
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["cost"] = {{ "i", 8564, 1 }},	-- Hippogryph Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(8647, {	-- Egg Crate
							["timeline"] = { DELETED_4_0_3 },
							["groups"] = {
								i(8646, {	-- Bad Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
								i(8643, {	-- Extraordinary Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
								i(8644, {	-- Fine Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
								i(8645, {	-- Ordinary Egg
									["timeline"] = { DELETED_4_0_3 },
								}),
							},
						}),
					},
				}),
				q(2944, {	-- The Super Snapper FX
					["sourceQuest"] = 2941,	-- The Borrower
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/1 Snapshot of Gammerita
							["providers"] = {
								{ "i", 9330 },	-- Snapshot of Gammerita
								{ "i", 9328 },	-- Super Snapper FX
							},
							["coord"] = { 79.0, 62.0, THE_HINTERLANDS },
							["cr"] = 7977,	-- Gammerita
						}),
					},
				}),
				q(2605, {	-- The Thirsty Goblin
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Laden Dew Gland
							["provider"] = { "i", 8428 },	-- Laden Dew Gland
							["coord"] = { 29.8, 66.8, TANARIS },
							["cr"] = 5481,	-- Thistleshrub Dew Collector
						}),
					},
				}),
				q(26895, {	-- The Thunderdrome! (A)
					["qg"] = 38578,	-- Flinn
					["coord"] = { 40.3, 77.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26896, {	-- The Thunderdrome! (H)
					["qg"] = 44374,	-- Sherm
					["coord"] = { 33.2, 76.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(2772, {	-- The World At Your Feet
					["sourceQuest"] = 2764,	-- Galvan's Finest Pupil
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 7933, 2 },	-- Heavy Mithril Boots
						{ "i", 7926, 1 },	-- Ornate Mithril Pants
					},
					["requireSkill"] = BLACKSMITHING,
					["lvl"] = 40,
					["groups"] = {
						recipe(9979, {	-- Ornate Mithril Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3362, {	-- Thistleshrub Valley
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/8 Gnarled Thistleshrub slain
							["provider"] = { "n", 5490 },	-- Gnarled Thistleshrub
						}),
						objective(2, {	-- 0/8 Thistleshrub Rootshaper slain
							["provider"] = { "n", 5485 },	-- Thistleshrub Rootshaper
						}),
					},
				}),
				q(25591, {	-- Thunderdrome: Grudge Match! (A)
					["sourceQuests"] = {
						25001,	-- Sandscraper
						25095,	-- Thunderdrome: Sarinexx!
					},
					["qg"] = 39034,	-- Dr. Dealwell
					["coord"] = { 51.7, 28.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56894, {	-- Thunderdrome Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56895, {	-- Kelsey's Necklace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56896, {	-- Dreadshredder Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25513, {	-- Thunderdrome: Grudge Match! (H)
					["sourceQuests"] = {
						25095,	-- Thunderdrome: Sarinexx!
						25065,	-- You Too, Brute?
					},
					["qg"] = 39034,	-- Dr. Dealwell
					["coord"] = { 51.8, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56891, {	-- Thunderdrome Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56892, {	-- Kelsey's Necklace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56893, {	-- Dreadshredder Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(25095, {	-- Thunderdrome: Sarinexx!
					["sourceQuest"] = 25094,	-- Thunderdrome: Zumonga!
					["qg"] = 39034,	-- Dr. Dealwell
					["coord"] = { 51.8, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25067, {	-- Thunderdrome: The Ginormus!
					["sourceQuests"] = {
						26895,	-- The Thunderdrome! (A)
						26896,	-- The Thunderdrome! (H)
					},
					["qg"] = 39034,	-- Dr. Dealwell
					["coord"] = { 51.8, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25094, {	-- Thunderdrome: Zumonga!
					["sourceQuest"] = 25067,	-- Thunderdrome: The Ginormus!
					["qg"] = 39034,	-- Dr. Dealwell
					["coord"] = { 51.8, 28.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(25053, {	-- To The Ground! (A)
					["sourceQuest"] = 24910,	-- Rocket Rescue (A)
					["qg"] = 38704,	-- Kelsey Steelspark
					["coord"] = { 72.2, 45.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(51547) },	-- Burning Rum (QI!)
				}),
				q(24928, {	-- To The Ground! (H)
					["sourceQuest"] = 24910,	-- Rocket Rescue (H)
					["qg"] = 38703,	-- Megs Dreadshredder
					["coord"] = { 71.8, 45.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = { i(51547) },	-- Burning Rum (QI!)
				}),
				q(1560, {	-- Tooga's Quest
					["qg"] = 5955,	-- Tooga
					["coord"] = { 29.6, 60.6, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Lead Tooga to Torta
							["provider"] = { "n", 6015 },	-- Torta
							["coord"] = { 66.6, 25.6, TANARIS },
						}),
						i(9638, {	-- Chelonian Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9642, {	-- Band of the Great Tortoise
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2864, {	-- Tran'rek
					["qg"] = 773,	-- Krazek
					["coord"] = { 51.6, 26.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(24955, {	-- Un-Chartered
					["sourceQuest"] = 24905,	-- Returning a Favor
					["qg"] = 38849,	-- Megs Dreadshredder
					["coord"] = { 44.5, 52.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = { i(52038) },	-- Refurbished Ogre Suit (QI!)
				}),
				q(2875, {	-- WANTED: Andre Firebeard
					["providers"] = {
						{ "o", 150075 },	-- Wanted Poster
						{ "o", 142122 },	-- Wanted Poster
						{ "n", 7882 },	-- Security Chief Bilgewhizzle
					},
					["coords"] = {
						{ 51.9, 27.0, TANARIS },
						{ 66.8, 22.3, TANARIS },
						{ 67.0, 23.8, TANARIS },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Firebeard's Head
							["provider"] = { "i", 9246 },	-- Firebeard's Head
							["coord"] = { 73.4, 47.0, TANARIS },
							["cr"] = 7883,	-- Andre Firebeard
						}),
					},
				}),
				q(2781, {	-- WANTED: Caliph Scorpidsting
					["providers"] = {
						{ "o", 150075 },	-- Wanted Poster
						{ "o", 142122 },	-- Wanted Poster
						{ "n", 7407 },	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					},
					["coords"] = {
						{ 51.9, 27.0, TANARIS },
						{ 66.8, 22.3, TANARIS },
						{ 52.4, 28.4, TANARIS },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Caliph Scorpidsting's Head
							["provider"] = { "i", 8723 },	-- Caliph Scorpidsting's Head
							["coord"] = { 61.6, 35.6, TANARIS },
							["cr"] = 7847,	-- Caliph Scorpidsting
						}),
					},
				}),
				q(9268, {	-- War at Sea
					["qg"] = 16417,	-- Rumsen Fizzlebrack
					["coords"] = {
						-- #if AFTER CATA
						{ 50.4, 27.3, TANARIS },
						-- #else
						{ 50.4, 26.2, TANARIS },
						-- #endif
					},
					["maxReputation"] = { FACTION_GADGETZAN, NEUTRAL },	-- Gadgetzan, must be less than Neutral
					["cost"] = {
						{ "i", 4338, 40 },	-- Mageweave Cloth
						{ "i", 3466, 4 },	-- Strong Flux
					},
					["repeatable"] = true,
					-- #if BEFORE CATA
					["lvl"] = 40,
					-- #endif
				}),
				warchiefscommand(q(28509, {	-- Warchief's Command: Tanaris!
					["timeline"] = { ADDED_4_0_3, REMOVED_10_2_6, ADDED_11_1_0 },	-- possibly earlier, but currently unable to be obtained
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level . (TODO: Confirm this.)
					-- Cataclysm: Maximum is level . (TODO: Test max level)
					["lvl"] = { 44, 48 },
					-- #endif
				})),
				q(1690, {	-- Wastewander Justice
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["coord"] = { 52.5, 28.5, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Wastewander Bandit slain
							["provider"] = { "n", 5618 },	-- Wastewander Bandit
						}),
						objective(2, {	-- 0/10 Wastewander Thief slain
							["provider"] = { "n", 5616 },	-- Wastewander Thief
						}),
					},
				}),
				q(1707, {	-- Water Pouch Bounty
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["coord"] = { 52.4, 28.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8483, 5 }},	-- Wastewander Water Pouch
					["lvl"] = 40,
					["groups"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
				q(1878, {	-- Water Pouch Bounty
					["sourceQuest"] = 1707,	-- Water Pouch Bounty
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["coord"] = { 52.4, 28.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 8483, 5 }},	-- Wastewander Water Pouch
					["repeatable"] = true,
					["lvl"] = 40,
					["groups"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
				q(25070, {	-- What Lies Within
					["sourceQuests"] = {
						25566,	-- The Secrets of Uldum
						25069,	-- The Secrets of Uldum
					},
					["provider"] = { "o", 202474 },	-- Antediluvean Chest
					["coord"] = { 37.8, 84.1, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Antechamber Guardian slain
							["provider"] = { "n", 39077 },	-- Antechamber Guardian
						}),
					},
				}),
				q(25062, {	-- What We Came For
					["sourceQuest"] = 24953,	-- Just Trying to Kill Some Bugs
					["qg"] = 39059,	-- Kelsey Steelspark
					["coord"] = { 50.0, 82.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Salt-Crusted Journal
							["providers"] = {
								{ "i", 52279 },	-- Salt-Crusted Journal
								{ "o", 202470 },	-- Bilgewater Footlocker
							},
						}),
					},
				}),
				q(25065, {	-- You Too, Brute?
					["sourceQuest"] = 25063,	-- Terrapination
					["qg"] = 39059,	-- Kelsey Steelspark
					["coord"] = { 50.0, 82.9, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Meatface's Locked Chest
							["provider"] = { "i", 52281 },	-- Meatface's Locked Chest
							["cr"] = 39061,	-- Meatface
						}),
						i(56883, {	-- Meatface Pummeler
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56884, {	-- "Smart Bracers"
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56885, {	-- Dagger of the Ides
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56886, {	-- Gnomeregan Medallion of Merit
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(157015, {	-- Meatface's Tenderizer
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(47386, {	-- Ainamiss the Hive Queen
					["coords"] = {
						{ 33.0, 49.0, TANARIS },
						{ 34.0, 45.4, TANARIS },
						{ 35.4, 44.4, TANARIS },
						{ 36.6, 42.6, TANARIS },
						{ 36.8, 46.6, TANARIS },
					},
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(44759, {	-- Andre Firebeard
					["coord"] = { 69.6, 56.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(44761, {	-- Aquementas the Unchained
					["coord"] = { 69.6, 50.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(44750, {	-- Caliph Scorpidsting
					["coord"] = { 47.0, 65.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8202, {	-- Cyclok the Mad
					["coords"] = {
						{ 39.0, 54.0, TANARIS },
						{ 42.0, 54.0, TANARIS },
						{ 46.0, 66.2, TANARIS },
						{ 40.6, 72.8, TANARIS },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(8207, {	-- Emberwing [CATA+] / Greater Firebird
					["coords"] = {
						-- #if AFTER CATA
						{ 44.6, 40.6, TANARIS },
						{ 48.2, 45.6, TANARIS },
						-- #else
						{ 42.2, 36.4, TANARIS },
						{ 44.6, 35.6, TANARIS },
						{ 46.4, 33.0, TANARIS },
						{ 48.0, 35.6, TANARIS },
						{ 47.0, 38.8, TANARIS },
						{ 49.6, 38.4, TANARIS },
						{ 50.8, 39.0, TANARIS },
						{ 53.4, 39.4, TANARIS },
						-- #endif
					},
				}),
				n(44714, {	-- Fronkle the Disturbed
					["coord"] = { 57.0, 89.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8205, {	-- Haarka the Ravenous
					["coords"] = {
						-- #if AFTER CATA
						{ 56.6, 68.2, TANARIS },
						-- #else
						{ 53.6, 70.2, TANARIS },
						{ 54.6, 73.6, TANARIS },
						{ 56.2, 73.6, TANARIS },
						{ 57.0, 71.4, TANARIS },
						{ 57.0, 68.8, TANARIS },
						-- #endif
					},
				}),
				n(47387, {	-- Harakiss the Infestor
					["coords"] = {
						{ 55.8, 64.6, TANARIS },
						{ 52.6, 65.6, TANARIS },
						{ 56.2, 68.6, TANARIS },
						{ 53.0, 70.4, TANARIS },
						{ 50.6, 72.6, TANARIS },
					},
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(39186, {	-- Hellgazer
					["coord"] = { 40.8, 41.2, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8200, {	-- Jin'Zallah the Sandbringer
					["coords"] = {
						-- #if AFTER CATA
						{ 37.6, 25.8, TANARIS },
						{ 40.8, 30.2, TANARIS },
						-- #else
						{ 37.8, 24.8, TANARIS },
						{ 42.2, 22.6, TANARIS },
						{ 40.0, 28.6, TANARIS },
						-- #endif
					},
				}),
				n(8203, {	-- Kregg Keelhaul
					["coords"] = {
						-- #if AFTER CATA
						{ 71.2, 46.8, TANARIS },
						{ 73.6, 47.6, TANARIS },
						{ 75.0, 45.4, TANARIS },
						-- #else
						{ 72.8, 46.6, TANARIS },
						{ 74.8, 47.6, TANARIS },
						{ 76.0, 45.0, TANARIS },
						-- #endif
					},
				}),
				n(8208, {	-- Murderous Blisterpaw
					["coords"] = {
						{ 48.0, 27.0, TANARIS },
						{ 48.6, 31.6, TANARIS },
						{ 50.0, 32.6, TANARIS },
						{ 52.2, 32.8, TANARIS },
						{ 55.0, 33.4, TANARIS },
						{ 56.4, 36.6, TANARIS },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(44767, {	-- Occulus the Corrupted
					["coord"] = { 61.0, 50.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8201, {	-- Omgorn the Lost
					["coords"] = {
						-- #if AFTER CATA
						{ 41.2, 49.8, TANARIS },
						{ 42.6, 52.8, TANARIS },
						{ 43.2, 55.4, TANARIS },
						{ 40.6, 58.4, TANARIS },
						{ 38.8, 58.2, TANARIS },
						{ 37.8, 56.8, TANARIS },
						{ 38.6, 54.6, TANARIS },
						{ 38.6, 52.0, TANARIS },
						{ 39.6, 50.6, TANARIS },
						-- #else
						{ 38.4, 54.2, TANARIS },
						{ 38.8, 50.6, TANARIS },
						{ 40.0, 49.8, TANARIS },
						{ 42.0, 51.4, TANARIS },
						{ 43.2, 53.6, TANARIS },
						{ 42.4, 56.4, TANARIS },
						{ 39.2, 58.6, TANARIS },
						{ 37.4, 56.2, TANARIS },
						{ 39.8, 71.6, TANARIS },
						{ 41.6, 74.4, TANARIS },
						{ 46.6, 61.8, TANARIS },
						{ 47.0, 63.6, TANARIS },
						{ 48.8, 65.2, TANARIS },
						{ 46.8, 66.8, TANARIS },
						{ 44.0, 66.4, TANARIS },
						{ 45.6, 63.6, TANARIS },
						-- #endif
					},
					["groups"] = {
						i(17055, {	-- Changuk Smasher
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(39183, {	-- Scorpitar
					["coord"] = { 49.6, 58.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(39185, {	-- Slaverjaw
					["coord"] = { 40.2, 67.4, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8204, {	-- Soriid the Devourer
					["coords"] = {
						-- #if AFTER CATA
						{ 35.0, 46.2, TANARIS },
						-- #else
						{ 31.6, 45.0, TANARIS },
						{ 32.6, 44.2, TANARIS },
						{ 34.8, 43.2, TANARIS },
						{ 34.8, 46.0, TANARIS },
						-- #endif
					},
				}),
				n(44722, {	-- Twisted Reflection of Narain
					["coord"] = { 64.6, 19.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(8199, {	-- Warleader Krazzilak
					["coords"] = {
						-- #if AFTER CATA
						{ 40.8, 29.6, TANARIS },
						-- #else
						{ 37.0, 24.2, TANARIS },
						{ 38.6, 24.2, TANARIS },
						{ 41.0, 27.4, TANARIS },
						{ 42.6, 22.8, TANARIS },
						{ 44.2, 24.8, TANARIS },
						-- #endif
					},
				}),
			}),
			n(TREASURES, {
				o(142184, {	-- Captain's Chest
					["description"] =
						-- #if AFTER CATA
						"The Captain's Chest is found in the captains quarters in one of the two ships harboured at Lost Rigger's Cove, and is one of two sources for Southsea Lamp. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers, which are commonly found on Southsea Pirates and Southsea Swashbucklers within the enclosure at Lost Rigger's Cove.",
						-- #else
						"The Captain's Chest is found in the captains quarters in one of the two ships harboured at Lost Rigger's Cove, and is one of three sources for Southsea Lamp. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers, which are commonly found on Southsea mobs around Lost Rigger's Cove.",
						-- #endif
					["coords"] = {
						{ 76.5, 45.8, TANARIS },
						-- #if AFTER CATA
						{ 75.3, 45.9, TANARIS },
						-- #endif
					},
					["cost"] = {{ "i", 9249, 1 }},	-- 1x Captain's Key
					["groups"] = {
						i(9359, {	-- Southsea Lamp (Patch 9.1.5: Renamed from 'Wirt's Third Leg')
							["description"] =
								-- #if AFTER CATA
								"This item have two sources: Pirate's Footlocker, and Captain's Chest.\nPirate's Footlocker is a common drop from Southsea Pirates and Southsea Swashbucklers within the enclosure at Lost Rigger's Cove.\nCaptain's Chest is found in the captain's quarters in one of the two ships harboured at Lost Rigger's Cove. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers.",
								-- #else
								"This item have three sources: Pirate's Footlocker, Captain's Chest, and Cuergo's Hidden Treasure.\nPirate's Footlocker is a common drop from mobs on Lost Rigger's Cove.\nCaptain's Chest is found in the captain's quarters in one of the two ships harboured at Lost Rigger's Cove. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers.\nCuergo's Hidden Treasure is rewarded from the quest Cuergo's Gold.",
								-- #endif
						})
					},
				}),
			}),
			n(VENDORS, {
				n(5594, {	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.8, 28.0, TANARIS },
						-- #else
						{ 50.8, 27.0, TANARIS },
						-- #endif
					},
					["groups"] = {
						i(6057, {	-- Recipe: Nature Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(9303),	-- Recipe: Philosopher's Stone (RECIPE!)
						i(12958),	-- Recipe: Transmute Arcanite (RECIPE!)
						i(9304),	-- Recipe: Transmute Iron to Gold (RECIPE!)
						i(9305, {	-- Recipe: Transmute Mithril to Truesilver (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if ANYCLASSIC
				pvp(n(251798, {	-- Blazzek the Biter <Vicious Gladiator>
					["coord"] = { 51.4, 28.1, TANARIS },
					["timeline"] = { ADDED_5_5_1 },
					["groups"] = VICIOUS_GROUPS,
				})),
				-- #else
				n(33915, {	-- Argex Irongut <Furious Gladiator Vendor>
					["u"] = REMOVED_FROM_GAME,
				}),
				n(34088, {	-- Blazzek the Biter <Veteran Arena Vendor> Original WOTLK S6 ELITE VENDOR
					-- #if BEFORE 4.0.3
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_ELITE },{"merge"}},	-- Furious Gladiator's Elite Set
					-- #endif
					["timeline"] = { ADDED_3_1_0, REMOVED_4_0_3 },
				}),
				n(34090, {	-- Blazzek the Biter <Veteran Arena Vendor> Original WOTLK S7 ELITE VENDOR
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_ELITE },{"merge"}},	-- Relentless Gladiator's Elite Set
					-- #endif
					["timeline"] = { ADDED_3_3_2, REMOVED_4_0_3 },
				}),
				n(34093, {	-- Blazzek the Biter <Veteran Arena Vendor> Original WOTLK S8 ELITE VENDOR
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_ELITE },{"merge"}},	-- Wrathful Gladiator's Elite Set
					-- #endif
					["timeline"] = { ADDED_3_3_2, REMOVED_4_0_3 },
				}),
				n(40216, {	-- Blazzek the Biter <Vicious Gladiator>
					["coord"] = { 51.6, 28.0, TANARIS },
					["description"] = "Some items may require you to buy specific class ensembles to unlock every item from the vendor. Shift Rightclick the item to see which ensemble.",
					["groups"] = VICIOUS_GROUPS,
				}),
				-- #endif
				n(8131, {	-- Blizrik Buckshot <Gunsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.6, 28.6, TANARIS },
						-- #else
						{ 50.8, 27.6, TANARIS },
						-- #endif
					},
					["groups"] = {
						i(18650, {	-- Schematic: EZ-Thro Dynamite II (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				n(69322, {	-- Capps Carlin <Cataclysmic Gladiator>
					["coord"] = { 51.6, 28.0, TANARIS },
					["groups"] = CATACLYSMIC_GROUPS,
				}),
				-- #endif
				n(40589, {	-- Dirge Quikcleave <Butcher>
					["coord"] = { 52.6, 29.0, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
				n(8125, {	-- Dirge Quikcleave <Butcher>
					["coord"] = { 52.6, 28.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
				-- #if ANYCLASSIC
				-- Wouter NOTE: I have no idea when these NPCs were actually added, I am filling this info in for MoP Classic
				pvp(n(69979, {	-- Ecton Brasstumbler <Honor Quartermaster>
					["coord"] = { 51.4, 28.1, TANARIS },
					["timeline"] = { ADDED_5_5_0 },
					["groups"] = RUTHLESS_GROUPS,
				})),
				pvp(n(69980, {	-- Evee Copperspring <Conquest Quartermaster>
					["coord"] = { 51.5, 28.1, TANARIS },
					["timeline"] = { ADDED_5_5_0 },
					["groups"] = CATACLYSMIC_GROUPS,
				})),
				-- #else
				-- TODO: Add all PVP Vendor Variants
				n(69979, {	-- Ecton Brasstumbler <Honor Quartermaster>
					["u"] = REMOVED_FROM_GAME,
				}),
				n(32362, {	-- Evee Copperspring <Arena Vendor> Original WOTLK S5 (ELITE?) VENDOR
					["u"] = REMOVED_FROM_GAME,
				}),
				-- #endif
				n(8137, {	-- Gikkix <Fisherman>
					["coord"] = { 66.6, 22.1, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(13942, {	-- Recipe: Grilled Squid (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
						i(13945, {	-- Recipe: Nightfin Soup (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
						i(13946, {	-- Recipe: Poached Sunscale Salmon (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
						i(13939, {	-- Recipe: Spotted Yellowtail (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				n(40572, {	-- Haughty Modiste <Fashion Designer>
					["coord"] = { 50.6, 28.6, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(37915, {	-- Pattern: Dress Shoes (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
							["isLimited"] = true,
						}),
						i(38327, {	-- Pattern: Haliscan Jacket (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(38328, {	-- Pattern: Haliscan Pantaloons (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				-- #if AFTER TBC
				n(15165, {	-- Haughty Modiste <Fashion Designer>
					["coord"] = { 66.6, 22.2, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(37915, {	-- Pattern: Dress Shoes (RECIPE!)
							["timeline"] = { ADDED_2_4_2, REMOVED_4_0_3 },
							["isLimited"] = true,
						}),
						i(38327, {	-- Pattern: Haliscan Jacket (RECIPE!)
							["timeline"] = { ADDED_2_4_2, REMOVED_4_0_3 },
						}),
						i(38328, {	-- Pattern: Haliscan Pantaloons (RECIPE!)
							["timeline"] = { ADDED_2_4_2, REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				n(106940, {	-- Innkeeper Fizzgrimble <Innkeeper>
					["coord"] = { 52.6, 27.0, TANARIS },
					["timeline"] = { ADDED_7_0_3 },
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
				n(7733, {	-- Innkeeper Fizzgrimble <Innkeeper>
					["coords"] = {
						-- #if AFTER CATA
						{ 52.6, 27.0, TANARIS },
						-- #else
						{ 52.4, 27.8, TANARIS },
						-- #endif
					},
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
				n(8139, {	-- Jabbey <General Goods>
					["coord"] = { 67.0, 22.0, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(16767, {	-- Recipe: Undermine Clam Chowder (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(14743, {	-- Jhordy Lapforge <Engineer>
					["requireSkill"] = GNOMISH_ENGINEERING,
					["description"] = "Gnomish Engineers can speak to Jhordy to learn the recipe.",
					["coords"] = {
						-- #if AFTER CATA
						{ 52.2, 27.8, TANARIS },
						-- #else
						{ 52.17, 27.88, TANARIS },
						-- #endif
					},
					["groups"] = {
						r(23489),	-- Ultrasafe Transporter - Gadgetzan
					},
				}),
				n(5411, {	-- Krinkle Goodsteel <Blacksmithing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 51.2, 30.2, TANARIS },
						-- #else
						{ 51.5, 28.8, TANARIS },
						-- #endif
					},
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_TWO, i(217280, {	-- Plans: Golden Scale Coif (RECIPE!)
							["timeline"] = { ADDED_1_15_1 },
							["isLimited"] = true,
						})),
						-- #endif
						i(6047, {	-- Plans: Golden Scale Coif (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_1 },
							-- #endif
							["isLimited"] = true,
						}),
					},
				}),
				-- #if BEFORE 4.0.3
				n(7564, {	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
					["groups"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				-- #endif
				n(43418, {	-- Sprinkle Noggenfogger <Noggenfogger Elixir>
					["coord"] = { 52.4, 27.8, TANARIS },
					["timeline"] = { ADDED_4_0_3 },
					-- #if AFTER 7.0.3.22396
					["cr"] = 98844,	-- Sprinkle Noggenfogger <Noggenfogger Elixir>
					-- #endif
					["groups"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				-- #if NOT ANYCLASSIC
				n(69323, {	-- Tiny Tayger <Ruthless Gladiator>
					["coord"] = { 51.6, 28.0, TANARIS },
					["groups"] = RUTHLESS_GROUPS,
				}),
				n(20278, {	-- Vixton Pinchwhistle <Bloodthirsty Gladiator>
					["coord"] = { 51.6, 28.0, TANARIS },
					-- #if AFTER 7.3.5
					["description"] = "Some items may require you to buy specific class ensembles to unlock every item from the vendor. Shift Rightclick the item to see which ensemble.",
					-- #endif
					["groups"] = BLOODTHIRSTY_GROUPS,
				}),
				-- #endif
				n(6568, {	-- Vizzklick <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.6, 28.6, TANARIS },
						-- #else
						{ 51.0, 27.3, TANARIS },
						-- #endif
					},
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_TWO, i(217244, {	-- Pattern: Crimson Silk Robe (RECIPE!)
							["timeline"] = { ADDED_1_15_1 },
							["isLimited"] = true,
						})),
						i(7088, {	-- Pattern: Crimson Silk Robe (RECIPE!)
							["timeline"] = { REMOVED_1_15_1 },
							["isLimited"] = true,
						}),
						-- #else
						i(7088, {	-- Pattern: Crimson Silk Robe (RECIPE!)
							["isLimited"] = true,
						}),
						-- #endif
						i(21358),	-- Pattern: Soul Pouch (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(71714, {	-- Formula: Enchant Cloak - Lesser Agility (RECIPE!)
					["timeline"] = { ADDED_4_2_0 },
				}),
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["crs"] = {
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
					-- #endif
				}),
				i(8623, {	-- OOX-17/TN Distress Beacon
					["description"] = "This item has a chance to drop from any creature in Tanaris and Zul'Farrak.",
				}),
				i(72028, {	-- Pattern: Tough Scorpid Boots (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8399, {	-- Pattern: Tough Scorpid Boots (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cr"] = 5615,	-- Wastewander Rogue
					-- #endif
				}),
				i(72026, {	-- Pattern: Tough Scorpid Bracers (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8397, {	-- Pattern: Tough Scorpid Bracers (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cr"] = 5617,	-- Wastewander Shadow Mage
					-- #endif
				}),
				i(72029, {	-- Pattern: Tough Scorpid Breastplate (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8395, {	-- Pattern: Tough Scorpid Breastplate (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cr"] = 5618,	-- Wastewander Bandit
					-- #endif
				}),
				i(72025, {	-- Pattern: Tough Scorpid Gloves (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8398, {	-- Pattern: Tough Scorpid Gloves (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cr"] = 5616,	-- Wastewander Thief
					-- #endif
				}),
				i(72033, {	-- Pattern: Tough Scorpid Helm (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8402, {	-- Pattern: Tough Scorpid Helm (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
					-- #endif
				}),
				i(72030, {	-- Pattern: Tough Scorpid Leggings (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8401, {	-- Pattern: Tough Scorpid Leggings (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cr"] = 5615,	-- Wastewander Rogue
					-- #endif
				}),
				i(72027, {	-- Pattern: Tough Scorpid Shoulders (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(8400, {	-- Pattern: Tough Scorpid Shoulders (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
					-- #endif
				}),
				i(9276, {	-- Pirate's Footlocker
					-- #if AFTER 4.0.3
					["description"] = "The Pirate's Footlocker is one of two sources for Southsea Lamp, and is commonly found on Southsea Pirates and Southsea Swashbucklers within the enclosure at Lost Rigger's Cove.",
					-- #endif
					["crs"] = {
						-- #if BEFORE 4.0.3
						7857,	-- Southsea Dock Worker
						7856,	-- Southsea Freebooter
						15685,	-- Southsea Kidnapper
						-- #endif
						7855,	-- Southsea Pirate
						7858,	-- Southsea Swashbuckler
					},
					["groups"] = {
						-- #if BEFORE 4.0.3
						i(9250, {	-- Ship Schedule
							["timeline"] = { DELETED_4_0_3 },
						}),
						i(9251, {	-- Upper Map Fragment
							["timeline"] = { DELETED_4_1_0 },
						}),
						i(9253, {	-- Middle Map Fragment
							["timeline"] = { DELETED_4_1_0 },
						}),
						i(9252, {	-- Lower Map Fragment
							["timeline"] = { DELETED_4_1_0 },
						}),
						-- #endif
						i(9249, {	-- Captain's Key
							["description"] = "Unlocks the Captain's Chest located in one of the ships harboured at Lost Rigger's Cove.",
						}),
						i(9359, {	-- Southsea Lamp (Patch 9.1.5: Renamed from 'Wirt's Third Leg')
							-- #if BEFORE 4.0.3
							["description"] = "This item have three sources: Pirate's Footlocker, Captain's Chest, and Cuergo's Hidden Treasure.\nPirate's Footlocker is a common drop from mobs on Lost Rigger's Cove.\nCaptain's Chest is found in the captain's quarters in one of the two ships harboured at Lost Rigger's Cove. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers.\nCuergo's Hidden Treasure is rewarded from the quest Cuergo's Gold.",
							-- #endif
						}),
					},
				}),
				i(8483, {	-- Wastewander Water Pouch
					["crs"] = {
						-- #if AFTER 4.0.3
						44613,	-- Wastewander Darkcaster
						44612,	-- Wastewander Tracker
						44611,	-- Wastewander Survivalist
						-- #else
						5623,	-- Wastewander Assassin
						5618,	-- Wastewander Bandit
						5615,	-- Wastewander Rogue
						7805,	-- Wastewander Scofflaw
						5617,	-- Wastewander Shadow Mage
						5616,	-- Wastewander Thief
						-- #endif
					},
				}),
			}),
		},
	}),
}));
