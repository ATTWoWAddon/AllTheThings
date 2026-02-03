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
			i(241293),	-- Draught of Rampant Abandon+ [Missing Next Rank]
			i(241339),	-- Enlightenment Tonic+
			i(241338),	-- Enlightenment Tonic++
			i(241309),	-- Light's Potential+
			i(241308),	-- Light's Potential++
			i(241287),	-- Light's Preservation+
			i(241286),	-- Light's Preservation++
			i(241327),	-- Flask of the Shattered Sun+
			i(241326),	-- Flask of the Shattered Sun++
			i(241319),	-- Cauldron of Sin'dorei Flasks+
			i(241318),	-- Cauldron of Sin'dorei Flasks++
			i(241325),	-- Flask of the Blood Knights+
			i(241324),	-- Flask of the Blood Knights++
			i(241305),	-- Silvermoon Health Potion+
			i(241304),	-- Silvermoon Health Potion++
			i(241301),	-- Lightfused Mana Potion+
			i(241300),	-- Lightfused Mana Potion++
			i(241323),	-- Flask of the Magisters+
			i(241322),	-- Flask of the Magisters++
			i(241311),	-- Midnight Phial of Finesse+
			i(241310),	-- Midnight Phial of Finesse++
			i(241313),	-- Midnight Phial of Ingenuity+
			i(241312),	-- Midnight Phial of Ingenuity++
			i(241317),	-- Midnight Phial of Perception+
			i(241316),	-- Midnight Phial of Perception++
			i(241285),	-- Voidlight Potion Cauldron+
			i(241284),	-- Voidlight Potion Cauldron++
			i(241321),	-- Flask of Thalassian Resistance+
			i(241320),	-- Flask of Thalassian Resistance++
			i(241295),	-- Potion of Devoured Dreams+
			i(241294),	-- Potion of Devoured Dreams++
			i(241297),	-- Potion of Zealotry+
			i(241296),	-- Potion of Zealotry++
			i(241307),	-- Refreshing Serum+
			i(241306),	-- Refreshing Serum++
			i(241303),	-- Void-Shrouded Tincture+
			i(241302),	-- Void-Shrouded Tincture++
		}),
		n(DECOR, {
			i(257420),	-- Silvermoon Spire Fountain (DECOR!)
		}),
		--[[
		n(FIRST_CRAFTS_HEADER, sharedData({
			["requireSkill"] = ALCHEMY,
		},{
			-- Currently no QuestID trigger on Beta
		})),
		--]]
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
			i(236951),	-- Mote of Wild Magic
			i(236952),	-- Mote of Pure Void
			i(242651),	-- Stabilized Derivate
			i(241282),	-- Wondrous Synergist++
			i(241283),	-- Wondrous Synergist+
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
		i(238371),	-- Arcane Wyrmfish
		i(243302),	-- Aquarius Bloom
		i(238377),	-- Blood Hunter
		i(238369),	-- Bloomtail Minnow
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
	--[[prof(HERBALISM, {
	}),
	prof(INSCRIPTION, {
	}),
	prof(JEWELCRAFTING, {
	}),
	prof(LEATHERWORKING, {
	}),
	prof(MINING, {
	}),
	prof(SKINNING, {
	}),
	prof(TAILORING, {
	}),
	--]]
}));
