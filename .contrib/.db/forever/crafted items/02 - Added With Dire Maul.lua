---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added with the release of Dire Maul during Phase 2.
root(ROOTS.Craftables, {
	prof(COOKING, {
		i(18254),	-- Runn Tum Tuber Surprise
	}),
	prof(ENGINEERING, {
		filter(MISC, {
			i(18637),	-- Major Recombobulator
		}),
	}),
	prof(LEATHERWORKING, {
		prof(10656, {	-- Dragonscale Leatherworking
			i(18509),	-- Chromatic Cloak
		}),
		prof(10658, {	-- Elemental Leatherworking
			i(18511),	-- Shifting Cloak
		}),
		prof(10660, {	-- Tribal Leatherworking
			i(18510),	-- Hide of the Wild
		}),
		n(ARMOR, {
			filter(LEATHER, {
				i(18504),	-- Girdle of Insight
				i(18506),	-- Mongoose Boots
			}),
			filter(MAIL, {
				i(18508),	-- Swift Flight Bracers
			}),
		}),
		filter(MISC, {
			i(18258),	-- Gordok Ogre Suit
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(18405),	-- Belt of the Archmage
			i(18413),	-- Cloak of Warding
			i(18407),	-- Felcloth Gloves
			i(18408),	-- Inferno Gloves
			i(18409),	-- Mooncloth Gloves
		}),
		filter(MISC, {
			i(18258),	-- Gordok Ogre Suit
		}),
	}),
});
