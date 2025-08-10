TIER_ABERRUS = {
	DEATHKNIGHT = {
		i(202458),	-- Lingering Phantom's Deathlink
		i(202456),	-- Lingering Phantom's Drape
		i(202463),	-- Lingering Phantom's Stompers
		i(202457),	-- Lingering Phantom's Vambraces
	};
	DEMONHUNTER = {
		i(202520),	-- Kinslayer's Bindings
		i(202526),	-- Kinslayer's Gaiters
		i(202521),	-- Kinslayer's Sash
		i(202519),	-- Kinslayer's Shawl
	};
	DRUID = {
		i(202511),	-- Bands of the Autumn Blaze
		i(202510),	-- Foliage of the Autumn Blaze
		i(202512),	-- Garland of the Autumn Blaze
		i(202517),	-- Hooves of the Autumn Blaze
	};
	EVOKER = {
		i(202483),	-- Crest of Obsidian Secrets
		i(202490),	-- Greatboots of Obsidian Secrets
		i(202485),	-- Lasso of Obsidian Secrets
		i(202484),	-- Scalebands of Obsidian Secrets
	};
	HUNTER = {
		i(202481),	-- Ashen Predator's Chasers
		i(202474),	-- Ashen Predator's Cloak
		i(202475),	-- Ashen Predator's Skinwraps
		i(202476),	-- Ashen Predator's Strap
	};
	MAGE = {
		i(202547),	-- Underlight Conjurer's Bracelets
		i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
		i(202548),	-- Underlight Conjurer's Charmbelt
		i(202553),	-- Underlight Conjurer's Treads
	};
	MONK = {
		i(202501),	-- Drape of the Vermillion Forge
		i(202503),	-- Blackbelt of the Vermillion Forge
		i(202502),	-- Coils of the Vermillion Forge
		i(202508),	-- Footpads of the Vermillion Forge
	};
	PALADIN = {
		i(202448),	-- Heartfire Sentinel's Blessed Bindings
		i(202454),	-- Heartfire Sentinel's Greatboots
		i(202447),	-- Heartfire Sentinel's Pelerine
		i(202449),	-- Heartfire Sentinel's Waistguard
	};
	PRIEST = {
		i(202538),	-- Cuffs of the Furnace Seraph
		i(202544),	-- Sabatons of the Furnace Seraph
		i(202539),	-- Sash of the Furnace Seraph
		i(202537),	-- Shroud of the Furnace Seraph
	};
	ROGUE = {
		i(202493),	-- Lurking Specter's Armwraps
		i(202492),	-- Lurking Specter's Capelet
		i(202494),	-- Lurking Specter's Edgeband
		i(202499),	-- Lurking Specter's Tabi
	};
	SHAMAN = {
		i(202467),	-- Faulds of the Cinderwolf
		i(202465),	-- Pelisse of the Cinderwolf
		i(202466),	-- Runebraces of the Cinderwolf
		i(202472),	-- Sollerets of the Cinderwolf
	};
	WARLOCK = {
		i(202535),	-- Sandals of the Sinister Savant
		i(202528),	-- Shawl of the Sinister Savant
		i(202530),	-- Skullstrap of the Sinister Savant
		i(202529),	-- Wristwraps of the Sinister Savant
	},
	WARRIOR = {
		i(202440),	-- Insignia of the Onyx Crucible
		i(202445),	-- Ironstriders of the Onyx Crucible
		i(202438),	-- Manteau of the Onyx Crucible
		i(202439),	-- Warbands of the Onyx Crucible
	},
	SYM_TIER = function(ClassID, DiffID) return {{"sub","instance_tier",1208,DiffID,ClassID}} end
}

TIER_STRUCTURE_ASSIGN_CLASSIDS(TIER_ABERRUS)
