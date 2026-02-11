---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, expansion(EXPANSION.MID, {
	i(232875),	-- Spark of Radiance
	n(DECOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
		o(618517, {	-- Thalassian Lumber
			i(256963),	-- Thalassian Lumber
		}),
	})),
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(241299),	-- Amani Extract+
			i(241298),	-- Amani Extract++
			i(241319),	-- Cauldron of Sin'dorei Flasks+
			i(241318),	-- Cauldron of Sin'dorei Flasks++
			i(241293),	-- Draught of Rampant Abandon+ [Missing Next Rank]
			i(241339),	-- Enlightenment Tonic+
			i(241338),	-- Enlightenment Tonic++
			i(268954),	-- Entropic Extract+
			i(268955),	-- Entropic Extract++
			i(241321),	-- Flask of Thalassian Resistance+
			i(241320),	-- Flask of Thalassian Resistance++
			i(241325),	-- Flask of the Blood Knights+
			i(241324),	-- Flask of the Blood Knights++
			i(241323),	-- Flask of the Magisters+
			i(241322),	-- Flask of the Magisters++
			i(241327),	-- Flask of the Shattered Sun+
			i(241326),	-- Flask of the Shattered Sun++
			i(241311),	-- Haranir Phial of Finesse+
			i(241310),	-- Haranir Phial of Finesse++
			i(241313),	-- Haranir Phial of Ingenuity+
			i(241312),	-- Haranir Phial of Ingenuity++
			i(241317),	-- Haranir Phial of Perception+
			i(241316),	-- Haranir Phial of Perception++
			i(241309),	-- Light's Potential+
			i(241308),	-- Light's Potential++
			i(241287),	-- Light's Preservation+
			i(241286),	-- Light's Preservation++
			i(241301),	-- Lightfused Mana Potion+
			i(241300),	-- Lightfused Mana Potion++
			i(241295),	-- Potion of Devoured Dreams+
			i(241294),	-- Potion of Devoured Dreams++
			i(241289),	-- Potion of Recklessness+
			i(241288),	-- Potion of Recklessness++
			i(241297),	-- Potion of Zealotry+
			i(241296),	-- Potion of Zealotry++
			i(241307),	-- Refreshing Serum+
			i(241306),	-- Refreshing Serum++
			i(241305),	-- Silvermoon Health Potion+
			i(241304),	-- Silvermoon Health Potion++
			i(241334),	-- Vicious Thalassian Flask of Honor+
			i(241335),	-- Vicious Thalassian Flask of Honor++
			i(241303),	-- Void-Shrouded Tincture+
			i(241302),	-- Void-Shrouded Tincture++
			i(241285),	-- Voidlight Potion Cauldron+
			i(241284),	-- Voidlight Potion Cauldron++
		}),
		n(DECOR, {
			i(262355),	-- Entropic Illuminant (DECOR!)
			i(262356),	-- Haranir Preserving Agents (DECOR!)
			i(262354),	-- Riftstone (DECOR!)
			i(253506),	-- Rootbound Vat (DECOR!)
			i(257420),	-- Silvermoon Spire Fountain (DECOR!)
			i(256356),	-- Sunsmoke Censer (DECOR!)
		}),
		filter(MISC, {
			i(245650),	-- Bouquet of Herbs+
			i(245651),	-- Bouquet of Herbs++
			i(242650),	-- Box of Rocks+
			i(245644),	-- Box of Rocks++
			i(245647),	-- School of Gems+
			i(245648),	-- School of Gems++
		}),
		filter(REAGENTS, {
			i(241281),	-- Composite Flora+
			i(241280),	-- Composite Flora++
			i(236949),	-- Mote of Light
			i(236950),	-- Mote of Primal Energy
			i(236952),	-- Mote of Pure Void
			i(236951),	-- Mote of Wild Magic
			i(242651),	-- Stabilized Derivate
			i(241283),	-- Wondrous Synergist+
			i(241282),	-- Wondrous Synergist++
		}),
		filter(TRINKET_F, {
			i(241340),	-- Magister's Alchemist Stone
			i(241291),	-- Primal Philosopher's Stone
		}),
	}),
	--[[
	prof(BLACKSMITHING, {
	}),
	prof(COOKING, {
	}),
	prof(ENCHANTING, {
	}),
	prof(ENGINEERING, {
	}),]]--
	prof(FISHING, {
		n(DISCOVERY, {
			r(1225274),	-- Blood Hunter
			r(1225266),	-- Bloomtail Minnow
			r(1225283),	-- Eversong Trout
			r(1225276),	-- Fungalskin Pike
			r(1225284),	-- Lucky Loa
			r(1225270),	-- Lynxfish
			r(1225268),	-- Null Voidfish
			r(1225277),	-- Restored Songfish
			r(1225269),	-- Root Crab
			r(1225271),	-- Shimmersiren
			r(1225272),	-- Shimmer Spinefish
			r(1225245),	-- Sin'dorei Swarmer
			r(1225278),	-- Sunwell Fish
			r(1225280),	-- Twisted Tetra
			r(1225279),	-- Warping Wise
			r(1225282),	-- Wyrmfish
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = FISHING,
		},{
			FirstCraft(88614, 1225274),	-- Blood Hunter
			FirstCraft(88606, 1225266),	-- Bloomtail Minnow
			FirstCraft(88620, 1225283),	-- Eversong Trout
			FirstCraft(88612, 1225276),	-- Fungalskin Pike
			FirstCraft(88613, 1225284),	-- Lucky Loa
			FirstCraft(88603, 1225270),	-- Lynxfish
			FirstCraft(88617, 1225268),	-- Null Voidfish
			FirstCraft(88609, 1225277),	-- Restored Songfish
			FirstCraft(88604, 1225269),	-- Root Crab
			FirstCraft(88615, 1225271),	-- Shimmersiren
			FirstCraft(88607, 1225272),	-- Shimmer Spinefish
			FirstCraft(88602, 1225245),	-- Sin'dorei Swarmer
			FirstCraft(88621, 1225278),	-- Sunwell Fish
			FirstCraft(88605, 1225280),	-- Twisted Tetra
			FirstCraft(88616, 1225279),	-- Warping Wise
			FirstCraft(88608, 1225282),	-- Wyrmfish
		})),
		i(243343),	-- Angler's Anomaly
		i(238494),	-- Another's Treasure
		i(238371),	-- Arcane Wyrmfish
		i(243302),	-- Aquarius Bloom
		i(238377),	-- Blood Hunter
		i(238369),	-- Bloomtail Minnow
		i(238489),	-- Definitely Not a Rock
		i(238383),	-- Eversong Trout
		i(238375),	-- Fungalskin Pike
		i(238376),	-- Lucky Loa
		i(238366),	-- Lynxfish
		i(238380),	-- Null Voidfish
		i(238372),	-- Restored Songfish
		i(238367),	-- Root Crab
		i(238378),	-- Shimmersiren
		i(238370),	-- Shimmer Spinefish
		i(262797),	-- Shredded Glimmerline (TODO: probably need to move out)
		i(238365),	-- Sin'dorei Swarmer
		i(238384),	-- Sunwell Fish
		i(238368),	-- Twisted Tetra
		i(238379),	-- Warping Wise
	}),
	prof(HERBALISM, {
		n(DISCOVERY, {
			-- Section I - Peacebloom
			r(1224883),	-- Lightfused Tranquility Bloom
			r(1223148),	-- Lush Tranquility Bloom
			r(1224888),	-- Primal Tranquility Bloom
			r(1223099),	-- Tranquility Bloom
			r(1224898),	-- Voidbound Tranquility Bloom
			r(1224893),	-- Wild Tranquility Bloom
			-- Section II - Sanguithorn
			r(1224886),	-- Lightfused Sanguithorn
			r(1223151),	-- Lush Sanguithorn
			r(1224891),	-- Primal Sanguithorn
			r(1223135),	-- Sanguithorn
			r(1224901),	-- Voidbound Sanguithorn
			--r(),	-- Wild Sanguithorn
			-- Section III - Azeroot
			r(1223137),	-- Azeroot
			r(1224885),	-- Lightfused Azeroot
			r(1223150),	-- Lush Azeroot
			r(1224890),	-- Primal Azeroot
			r(1224900),	-- Voidbound Azeroot
			r(1224895),	-- Wild Azeroot
			-- Section IV - Argentleaf
			r(1223138),	-- Argentleaf
			r(1224882),	-- Lightfused Argentleaf
			r(1223146),	-- Lush Argentleaf
			r(1224887),	-- Primal Argentleaf
			--r(),	-- Voidbound Argentleaf
			--r(),	-- Wild Argentleaf
			-- Section V - Mana Lily
			r(1223139),	-- Mana Lily
			r(1224884),	-- Lightfused Mana Lily
			r(1223149),	-- Lush Mana Lily
			r(1224889),	-- Primal Mana Lily
			--r(),	-- Voidbound Mana Lily
			--r(),	-- Wild Mana Lily
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = HERBALISM,
		},{
			FirstCraft(87731, 1224883),	-- Lightfused Tranquility Bloom
			--FirstCraft(XXXXX, 1223148),	-- Lush Tranquility Bloom
			FirstCraft(87733, 1224888),	-- Primal Tranquility Bloom
			FirstCraft(87729, 1223099),	-- Tranquility Bloom
			FirstCraft(87734, 1224898),	-- Voidbound Tranquility Bloom
			FirstCraft(87732, 1224893),	-- Wild Tranquility Bloom
			FirstCraft(87737, 1224886),	-- Lightfused Sanguithorn
			FirstCraft(87736, 1223151),	-- Lush Sanguithorn
			FirstCraft(87739, 1224891),	-- Primal Sanguithorn
			FirstCraft(87735, 1223135),	-- Sanguithorn
			FirstCraft(87740, 1224901),	-- Voidbound Sanguithorn
			--FirstCraft(XXXXX, YYYYYYY),	-- Wild Sanguithorn
			FirstCraft(87741, 1223137),	-- Azeroot
			FirstCraft(87743, 1224885),	-- Lightfused Azeroot
			FirstCraft(87742, 1223150),	-- Lush Azeroot
			FirstCraft(87745, 1224890),	-- Primal Azeroot
			FirstCraft(87746, 1224900),	-- Voidbound Azeroot
			FirstCraft(87744, 1224895),	-- Wild Azeroot
			FirstCraft(87747, 1223138),	-- Argentleaf
			FirstCraft(87749, 1224882),	-- Lightfused Argentleaf
			FirstCraft(87748, 1223146),	-- Lush Argentleaf
			FirstCraft(87751, 1224887),	-- Primal Argentleaf
			--FirstCraft(XXXXX, YYYYYYY),	-- Voidbound Argentleaf
			--FirstCraft(XXXXX, YYYYYYY),	-- Wild Argentleaf
			FirstCraft(87753, 1223139),	-- Mana Lily
			FirstCraft(87755, 1224884),	-- Lightfused Mana Lily
			FirstCraft(87754, 1223149),	-- Lush Mana Lily
			FirstCraft(87757, 1224889),	-- Primal Mana Lily
			--FirstCraft(XXXXX, YYYYYYY),	-- Voidbound Mana Lily
			--FirstCraft(XXXXX, YYYYYYY),	-- Wild Mana Lily
		})),
		i(236776),	-- Argentleaf+
		i(236777),	-- Argentleaf++
		i(236774),	-- Azeroot+
		i(236775),	-- Azeroot++
		i(238387),	-- Magical Mulch
		i(236778),	-- Mana Lily+
		i(236779),	-- Mana Lily++
		i(236780),	-- Nocturnal Lotus
		i(237497),	-- Resilient Seed
		i(236770),	-- Sanguithorn+
		i(236771),	-- Sanguithorn++
		i(238465),	-- Thalassian Phoenix Plume
		i(238466),	-- Thalassian Phoenix Tail
		i(236761),	-- Tranquility Bloom+
		i(236767),	-- Tranquility Bloom++
		
	}),
	--[[prof(INSCRIPTION, {
	}),
	prof(JEWELCRAFTING, {
	}),
	prof(LEATHERWORKING, {
	}),
	--]]
	prof(MINING, {
		n(DISCOVERY, {
			-- Section I - Refulgent Copper
			r(1225351),	-- Lightfused Refulgent Copper
			r(1225354),	-- Primal Refulgent Copper
			r(1225343),	-- Refulgent Copper
			r(1225350),	-- Refulgent Copper Seam
			r(1225349),	-- Rich Refulgent Copper
			r(1225352),	-- Voidbound Refulgent Copper
			r(1225353),	-- Wild Refulgent Copper
			-- Section II - Brilliant Silver
			r(1225348),	-- Brilliant Silver
			r(1225357),	-- Brilliant Silver Seam
			r(1225359),	-- Lightfused Brilliant Silver
			r(1225361),	-- Primal Brilliant Silver
			r(1225355),	-- Rich Brilliant Silver
			r(1225362),	-- Voidbound Brilliant Silver
			r(1225363),	-- Wild Brilliant Silver
			-- Section III - Umbral Tin
			r(1225367),	-- Lightfused Umbral Tin
			r(1225369),	-- Primal Umbral Tin
			r(1225365),	-- Rich Umbral Tin
			r(1225347),	-- Umbral Tin
			r(1225366),	-- Umbral Tin Seam
			r(1225370),	-- Voidbound Umbral Tin
			r(1225368),	-- Wild Umbral Tin
		}),
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = MINING,
		},{
			FirstCraft(88487, 1225351),	-- Lightfused Refulgent Copper
			FirstCraft(88479, 1225354),	-- Primal Refulgent Copper
			FirstCraft(88475, 1225343),	-- Refulgent Copper
			FirstCraft(88480, 1225350),	-- Refulgent Copper Seam
			FirstCraft(88476, 1225349),	-- Rich Refulgent Copper
			FirstCraft(88463, 1225352),	-- Voidbound Refulgent Copper
			FirstCraft(88486, 1225353),	-- Wild Refulgent Copper
			FirstCraft(88471, 1225348),	-- Brilliant Silver
			FirstCraft(88466, 1225357),	-- Brilliant Silver Seam
			FirstCraft(88484, 1225359),	-- Lightfused Brilliant Silver
			FirstCraft(88490, 1225361),	-- Primal Brilliant Silver
			FirstCraft(88491, 1225355),	-- Rich Brilliant Silver
			FirstCraft(88465, 1225362),	-- Voidbound Brilliant Silver
			FirstCraft(88472, 1225363),	-- Wild Brilliant Silver
			FirstCraft(88488, 1225367),	-- Lightfused Umbral Tin
			FirstCraft(88469, 1225369),	-- Primal Umbral Tin
			FirstCraft(88478, 1225365),	-- Rich Umbral Tin
			FirstCraft(88477, 1225347),	-- Umbral Tin
			FirstCraft(88481, 1225366),	-- Umbral Tin Seam
			FirstCraft(88470, 1225370),	-- Voidbound Umbral Tin
			FirstCraft(88485, 1225368),	-- Wild Umbral Tin
		})),
		i(237364),	-- Brilliant Silver Ore+
		i(237365),	-- Brilliant Silver Ore++
		i(237366),	-- Dazzling Thorium
		i(237496),	-- Igneous Rock Specimen
		i(237359),	-- Refulgent Copper Ore+
		i(237361),	-- Refulgent Copper Ore++
		i(237506),	-- Septarian Nodule
		i(237362),	-- Umbral Tin Ore+
		i(237363),	-- Umbral Tin Ore++
	}),
	--[[prof(SKINNING, {
	}),
	prof(TAILORING, {
	}),
	--]]
}));
