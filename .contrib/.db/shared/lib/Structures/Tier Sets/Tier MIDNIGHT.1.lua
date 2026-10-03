THE_VOIDSPIRE_TIER = {
	DEATHKNIGHT = {
		i(249965),	-- Relentless Rider's Drape
		i(249967),	-- Relentless Rider's Chain
		i(249966),	-- Relentless Rider's Manacles
		i(249972),	-- Relentless Rider's Stompers
	};
	DEMONHUNTER = {
		i(250028),	-- Devouring Reaver's Drape
		i(250030),	-- Devouring Reaver's Emblem
		i(250035),	-- Devouring Reaver's Soul Flatteners
		i(250029),	-- Devouring Reaver's Support Straps
	};
	DRUID = {
		i(250021),	-- Barksash of the Luminous Bloom
		i(250020),	-- Bindings of the Luminous Bloom
		i(250019),	-- Leafdrape of the Luminous Bloom
		i(250026),	-- Rootslippers of the Luminous Bloom
	};
	EVOKER = {
		i(249993),	-- Bracers of the Black Talon
		i(249994),	-- Girdle of the Black Talon
		i(249992),	-- Shroud of the Black Talon
		i(249999),	-- Spelltreads of the Black Talon
	};
	HUNTER = {
		i(249985),	-- Primal Sentry's Cinch
		i(249983),	-- Primal Sentry's Spine
		i(249990),	-- Primal Sentry's Swiftsteps
		i(249984),	-- Primal Sentry's Wound Stanchers
	};
	MAGE = {
		i(250056),	-- Voidbreaker's Bracers
		i(250055),	-- Voidbreaker's Encryption
		i(250057),	-- Voidbreaker's Sage Cord
		i(250062),	-- Voidbreaker's Treads
	};
	MONK = {
		i(250017),	-- Storm Crashers of Ra-den's Chosen
		i(250012),	-- Stormsigil of Ra-den's Chosen
		i(250011),	-- Strikeguards of Ra-den's Chosen
		i(250010),	-- Windwrap of Ra-den's Chosen
	};
	PALADIN = {
		i(249957),	-- Luminant Verdict's Cuffs
		i(249956),	-- Luminant Verdict's Greatmantle
		i(249963),	-- Luminant Verdict's Sabatons
		i(249958),	-- Luminant Verdict's Undaunted Emblem
	};
	PRIEST = {
		i(250048),	-- Blind Oath's Jeweled Sash
		i(250046),	-- Blind Oath's Shroud
		i(250053),	-- Blind Oath's Slippers
		i(250047),	-- Blind Oath's Wraps
	};
	ROGUE = {
		i(250008),	-- Balancing Boots of the Grim Jest
		i(250001),	-- Disappearing Cloth of the Grim Jest
		i(250003),	-- Toolbelt of the Grim Jest
		i(250002),	-- Trick Bracers of the Grim Jest
	};
	SHAMAN = {
		i(249976),	-- Ceinture of the Primal Core
		i(249975),	-- Cuffs of the Primal Core
		i(249974),	-- Guardian of the Primal Core
		i(249981),	-- Sollerets of the Primal Core
	};
	WARLOCK = {
		i(250044),	-- Abyssal Immolator's Ashwalkers
		i(250039),	-- Abyssal Immolator's Blazing Core
		i(250037),	-- Abyssal Immolator's Ritual Mantle
		i(250038),	-- Abyssal Immolator's Shackles
	},
	WARRIOR = {
		i(249949),	-- Night Ender's Girdle
		i(249954),	-- Night Ender's Greatboots
		i(249947),	-- Night Ender's Greatmantle
		i(249948),	-- Night Ender's Warbands
	},
	SYM_TIER = function(ClassID, DiffID) return {{"sub","instance_tier",1307,DiffID,ClassID},{"sub","instance_tier",1314,DiffID,ClassID}} end
}

TIER_STRUCTURE_ASSIGN_CLASSIDS(THE_VOIDSPIRE_TIER)
