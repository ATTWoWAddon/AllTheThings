-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
local CLOAK_OF_INFINITE_BONUSIDS = function()
	local cloaks = {};
	local ItemAppearanceModifierID = 160;
	for bonusID=10973,11028,1 do
		ItemAppearanceModifierID = ItemAppearanceModifierID + 1;
		table.insert(cloaks, i(210333, {	-- Cloak of Infinite Potential
			["ItemAppearanceModifierID"] = ItemAppearanceModifierID,
			["bonusID"] = bonusID,
		}));
	end
	return cloaks;
end
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(REWARDS, {
		i(211279, {	-- Cache of Infinite Treasure
			i(210526),	-- Unraveling Tunic (QI!)
		}),

		i(223910),	-- Bronze Cache
		i(223911),	-- Greater Bronze Cache
		i(223909),	-- Lesser Bronze Cache

		i(224407),	-- Bonus Experience (Uncommon)
		i(224408),	-- Bonus Experience (Rare)

		------ Common Thread ------
		i(210984),	-- Thread of Critical Strike
		i(217722),	-- Thread of Experience
		i(210985),	-- Thread of Haste
		i(210987),	-- Thread of Leech
		i(210989),	-- Thread of Mastery
		i(210982),	-- Thread of Power
		i(210986),	-- Thread of Speed
		i(210983),	-- Thread of Stamina
		i(210990),	-- Thread of Versatility

		------ Uncommon Thread ------
		i(219258),	-- Temporal Thread of Critical Strike
		i(219264),	-- Temporal Thread of Experience
		i(219259),	-- Temporal Thread of Haste
		i(219261),	-- Temporal Thread of Leech
		i(219262),	-- Temporal Thread of Mastery
		i(219256),	-- Temporal Thread of Power
		i(219260),	-- Temporal Thread of Speed
		i(219257),	-- Temporal Thread of Stamina
		i(219263),	-- Temporal Thread of Versatility

		------ Rare Thread ------
		i(219267),	-- Perpetual Thread of Critical Strike
		i(219273),	-- Perpetual Thread of Experience
		i(219268),	-- Perpetual Thread of Haste
		i(219270),	-- Perpetual Thread of Leech
		i(219271),	-- Perpetual Thread of Mastery
		i(219265),	-- Perpetual Thread of Power
		i(219269),	-- Perpetual Thread of Speed
		i(219266),	-- Perpetual Thread of Stamina
		i(219272),	-- Perpetual Thread of Versatility

		------ Epic Thread ------
		i(219276),	-- Infinite Thread of Critical Strike
		i(219282),	-- Infinite Thread of Experience
		i(219277),	-- Infinite Thread of Haste
		i(219279),	-- Infinite Thread of Leech
		i(219280),	-- Infinite Thread of Mastery
		i(219274),	-- Infinite Thread of Power
		i(219278),	-- Infinite Thread of Speed
		i(219275),	-- Infinite Thread of Stamina
		i(219281),	-- Infinite Thread of Versatility

		------ Eternal Thread ------
		i(226145),	-- Minor Spool of Eternal Thread
		i(226144),	-- Lesser Spool of Eternal Thread
		i(226143),	-- Spool of Eternal Thread
		i(226142),	-- Greater Spool of Eternal Thread

		filter(BACK_F, CLOAK_OF_INFINITE_BONUSIDS()),
		filter(CONSUMABLES, {
			i(217925),	-- Bottle of Bees
			i(217926),	-- Bottle of Dead Bees
			i(217906),	-- Drake Treat
			i(219940),	-- Meteor Chip
			i(217930),	-- Nostwin's Voucher
			i(217900),	-- Prayer of Purged Anger
			i(217732),	-- Prayer of Purged Despair
			i(217733),	-- Prayer of Purged Doubt
			i(217734),	-- Prayer of Purged Fear
			i(217898),	-- Prayer of Purged Hatred
			i(217899),	-- Prayer of Purged Pride
			i(217735),	-- Prayer of Purged Violence
			i(217901),	-- Timeless Drums
			i(217608),	-- Timeless Scroll of Battle Shout
			i(217730),	-- Timeless Scroll of Chaos
			i(217929),	-- Timeless Scroll of Cleansing
			i(217606),	-- Timeless Scroll of Fortitude
			i(217605),	-- Timeless Scroll of Intellect
			i(217731),	-- Timeless Scroll of Mystic Power
			i(217928),	-- Timeless Scroll of Resurrection
			i(217956),	-- Timeless Scroll of Summoning
			i(217607),	-- Timeless Scroll of the Wild
			i(211254),	-- Timerunner's Bandage
			i(217905),	-- Timerunner's Draught of Health
			i(217904),	-- Timerunner's Draught of Power
			i(217902),	-- Timerunner's Vial
			i(221509),	-- Timerunner's Weaponry
		}),
		filter(GEMS, {
			------ Uncommon Gem ------
			i(210714),	-- Chipped Deadly Sapphire
			i(210717),	-- Chipped Hungering Ruby
			i(210715),	-- Chipped Masterful Amethyst
			i(210681),	-- Chipped Quick Topaz
			i(220367),	-- Chipped Stalwart Pearl
			i(211109),	-- Chipped Sustaining Emerald
			i(210716),	-- Chipped Swift Opal
			i(220371),	-- Chipped Versatile Diamond

			------ Rare Gem ------
			i(216644),	-- Flawed Deadly Sapphire
			i(216641),	-- Flawed Hungering Ruby
			i(216640),	-- Flawed Masterful Amethyst
			i(216643),	-- Flawed Quick Topaz
			i(220368),	-- Flawed Stalwart Pearl
			i(216642),	-- Flawed Sustaining Emerald
			i(216639),	-- Flawed Swift Opal
			i(220372),	-- Flawed Versatile Diamond

			------ Epic Gem ------
			i(211123),	-- Deadly Sapphire
			i(210718),	-- Hungering Ruby
			i(211106),	-- Masterful Amethyst
			i(211107),	-- Quick Topaz
			i(220370),	-- Stalwart Pearl
			i(211125),	-- Sustaining Emerald
			i(211124),	-- Swift Opal
			i(220374),	-- Versatile Diamond

			------ Legendary Gem ------
			i(211102),	-- Perfect Deadly Sapphire
			i(211103),	-- Perfect Hungering Ruby
			i(211108),	-- Perfect Masterful Amethyst
			i(211110),	-- Perfect Quick Topaz
			i(220369),	-- Perfect Stalwart Pearl
			i(211105),	-- Perfect Sustaining Emerald
			i(211101),	-- Perfect Swift Opal
			i(220373),	-- Perfect Versatile Diamond
		}),
		filter(TRINKET_F, {
			------ Tinker ------
			i(219801),	-- Ankh of Reincarnation
			i(212366),	-- Arcanist's Edge
			i(219944),	-- Bloodthirsty Coral
			i(219818),	-- Brilliance
			i(216649),	-- Brittle
			i(216648),	-- Cold Front
			i(217957),	-- Deliverance
			i(212694),	-- Enkindle
			i(212749),	-- Explosive Barrage
			i(212365),	-- Fervor
			i(219817),	-- Freedom
			i(212916),	-- Frost Armor
			i(219777),	-- Grounding
			i(216647),	-- Hailstorm
			i(217964),	-- Holy Martyr
			i(212758),	-- Incendiary Terror
			i(219389),	-- Lightning Rod
			i(216624),	-- Mark of Arrogance
			i(216650),	-- Memory of Vengeance
			i(212759),	-- Meteor Storm
			i(212361),	-- Opportunist
			i(216625),	-- Quick Strike
			i(217961),	-- Righteous Frenzy
			i(217927),	-- Savior
			i(216651),	-- Searing Light
			i(216626),	-- Slay
			i(219452),	-- Static Charge
			i(219523),	-- Storm Overload
			i(212362),	-- Sunstrider's Flourish
			i(212629),	-- Test Ruby
			i(216627),	-- Tinkmaster's Shield
			i(219527),	-- Vampiric Aura
			i(216628),	-- Victory Fire
			i(217903),	-- Vindication
			i(217907),	-- Warmth
			i(212760),	-- Wildfire
			i(219516),	-- Windweaver

			------ Cogwheel ------
			i(216629),	-- Blink
			i(218108),	-- Dark Pact
			i(218109),	-- Death's Advance
			i(217983),	-- Disengage
			i(218045),	-- Door of Shadows
			i(216630),	-- Heroic Leap
			i(218003),	-- Leap of Faith
			i(218044),	-- Pursuit of Justice
			i(216631),	-- Roll
			i(218110),	-- Soulshape
			i(218046),	-- Spirit Walk
			i(218082),	-- Spiritwalker's Grace
			i(216632),	-- Sprint
			i(218005),	-- Stampeding Roar
			i(217989),	-- Trailblazer
			i(218004),	-- Vanish
			i(218043),	-- Wild Charge

			------ Meta Gem ------
			i(221982),	-- Bulwark of the Black Ox
			i(216711),	-- Chi-ji, the Red Crane
			i(221977),	-- Funeral Pyre
			i(216695),	-- Lifestorm
			i(219386),	-- Locus of Power
			i(216974),	-- Morphing Elements
			i(216663),	-- Oblivion Sphere
			i(220211),	-- Precipice of Madness
			i(220120),	-- Soul Tether
			i(216671),	-- Thundering Orb
			i(219878),	-- Tireless Spirit
			i(220117),	-- Ward of Salvation
		}),
	}),
}))));