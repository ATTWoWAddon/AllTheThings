---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
local AUGUST_STONE_FRAGMENT = 3350;	-- August Stone Fragment
local frags = function(cost, item)
	return applycost(item, { "c", AUGUST_STONE_FRAGMENT, cost });
end
local CELESTIAL_DUNGEON_MAPS = {
	GATE_OF_THE_SETTING_SUN,
	GATE_OF_THE_SETTING_SUN_GATE_WATCH_TOWER,
	MOGUSHAN_PALACE_THE_CRIMSON_ASSEMBLY_HALL,
	MOGUSHAN_PALACE_THRONE_OF_ANCIENT_CONQUERORS,
	MOGUSHAN_PALACE_VAULTS_OF_KINGS_PAST,
	SCARLET_HALLS_TRAINING_GROUNDS,
	SCARLET_HALLS_ATHENAEUM,
	SCARLET_MONASTERY,
	SCARLET_MONASTERY_CRUSADERS_CHAPEL,
	SHADOPAN_MONASTERY,
	SHADOPAN_MONASTERY_CLOUDSTRIKE_DOJO,
	SHADOPAN_MONASTERY_SEALED_CHAMBERS,
	SHADOPAN_MONASTERY_SNOWDRIFT_DOJO,
	SIEGE_OF_NIUZAO_TEMPLE,
	SIEGE_OF_NIUZAO_TEMPLE_THE_HOLLOWED_OUT_TREE,
	SIEGE_OF_NIUZAO_TEMPLE_UPPER_TREE_RING,
	STORMSTOUT_BREWERY_GRAIN_CELLAR,
	STORMSTOUT_BREWERY_STORMSTOUT_BREWHALL,
	STORMSTOUT_BREWERY_THE_GREAT_WHEEL,
	STORMSTOUT_BREWERY_THE_TASTING_ROOM,
	TEMPLE_OF_THE_JADE_SERPENT,
	TEMPLE_OF_THE_JADE_SERPENT_THE_SCROLLKEEPERS_SANCTUM,
}
local CELESTIAL_DUNGEON_BOSSES = {
	-- Gate of the Setting Sun
	56906,	-- Saboteur Kip'tilak
	56589,	-- Striker Ga'dok
	56636,	-- Commander Ri'mok
	56877,	-- Raigonn
	-- Mogu'shan Palace
	61445,	-- Haiyan the Unstoppable
	61442,	-- Kuai the Brute
	61444,	-- Ming the Cunning
	61243,	-- Gekkan
	61398,	-- Xin the Weaponmaster
	-- Scarlet Halls
	59303,	-- Houndmaster Braun
	58632,	-- Armsmaster Harlan
	59150,	-- Flameweaver Koegler
	-- Scarlet Monastery
	59789,	-- Thalnos the Soulrender
	59223,	-- Brother Korloff
	3977,	-- High Inquisitor Whitemane
	60040,	-- Commander Durand
	-- Scholomance
	58633,	-- Instructor Chillheart
	58664,	-- Instructor Chillheart's Phylactery
	59184,	-- Jandice Barov
	59153,	-- Rattlegore
	58722,	-- Lilian Voss
	59080,	-- Darkmaster Gandling
	-- Shado-Pan Monastery
	56747,	-- Gu Cloudstrike
	56541,	-- Master Snowdrift
	56719,	-- Sha of Violence
	56884,	-- Taran Zhu
	-- Siege of Niuzao Temple
	61567,	-- Vizier Jin'bak
	61634,	-- Commander Vo'jak
	61485,	-- General Pa'valak
	62205,	-- Wing Leader Ner'onok
	-- Stormstout Brewery
	56637,	-- Ook-Ook
	56717,	-- Hoptallus
	59479,	-- Yan-Zhu the Uncasked
	-- Temple of the Jade Serpent
	56448,	-- Wise Mari
	56843,	-- Lorewalker Stonestep
	56732,	-- Liu Flameheart
	56439,	-- Sha of Doubt
}
local CELESTIAL_DUNGEON_LAST_BOSSES = {
	-- Gate of the Setting Sun
	56877,	-- Raigonn
	-- Mogu'shan Palace
	61398,	-- Xin the Weaponmaster
	-- Scarlet Halls
	59150,	-- Flameweaver Koegler
	-- Scarlet Monastery
	60040,	-- Commander Durand
	-- Scholomance
	59080,	-- Darkmaster Gandling
	-- Shado-Pan Monastery
	56884,	-- Taran Zhu
	-- Siege of Niuzao Temple
	62205,	-- Wing Leader Ner'onok
	-- Stormstout Brewery
	59479,	-- Yan-Zhu the Uncasked
	-- Temple of the Jade Serpent
	56439,	-- Sha of Doubt
}
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, {
	n(CELESTIAL_DUNGEON_DIFFICULTY, bubbleDownSelf({ ["timeline"] = { ADDED_5_5_0 } }, {
		["lvl"] = 90,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(60901),	-- Pandaria Celestial Hero (automated)
			}),
			-- Alliance Dailies
			n(QUESTS, sharedData({
				["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons> (Alliance)
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["groups"] = {
					currency(3350),	-- August Stone Fragment
				},
			}, {
				q(91702),	-- A Celestial Challenge: Darkmaster Gandling
				q(91706),	-- A Celestial Challenge: Durand
				q(91704),	-- A Celestial Challenge: Flameweaver Koegler
				q(91710),	-- A Celestial Challenge: Raigonn
				q(91718),	-- A Celestial Challenge: Sha of Doubt
				q(91714),	-- A Celestial Challenge: Sha of Hatred
				q(91708),	-- A Celestial Challenge: Wing Leader Ner'onok
				q(91712),	-- A Celestial Challenge: Xin the Weaponmaster
				q(91716),	-- A Celestial Challenge: Yan-zhu the Uncasked
			})),
			-- Horde Dailies
			n(QUESTS, sharedData({
				["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons> (Horde)
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["groups"] = {
					currency(3350),	-- August Stone Fragment
				},
			}, {
				q(91701),	-- A Celestial Challenge: Darkmaster Gandling
				q(91705),	-- A Celestial Challenge: Durand
				q(91703),	-- A Celestial Challenge: Flameweaver Koegler
				q(91709),	-- A Celestial Challenge: Raigonn
				q(91717),	-- A Celestial Challenge: Sha of Doubt
				q(91713),	-- A Celestial Challenge: Sha of Hatred
				q(91707),	-- A Celestial Challenge: Wing Leader Ner'onok
				q(91711),	-- A Celestial Challenge: Xin the Weaponmaster
				q(91715),	-- A Celestial Challenge: Yan-zhu the Uncasked
			})),
			n(REWARDS, {
				currency(AUGUST_STONE_FRAGMENT, {
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(1243929),	-- Dominion of the Empress
					["description"] = "Two August Stone Fragments drop per boss in Celestial and the final boss of each dungeon will drop an extra three August Stone Fragments if players have defeated all of the other bosses in the dungeon.",
					["maps"] = CELESTIAL_DUNGEON_MAPS,
					["crs"] = CELESTIAL_DUNGEON_BOSSES,
				}),
				-- CRIEVE NOTE: We assume these sigils are last boss drops, but they may be specific.
				-- Obtained from: Gate of the Setting Sun
				i(87208, {	-- Sigil of Power
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(1243929),	-- Dominion of the Empress
					["description"] = "This can drop from the last boss of any Celestial Dungeon.",
					["maps"] = CELESTIAL_DUNGEON_MAPS,
					["crs"] = CELESTIAL_DUNGEON_LAST_BOSSES,
				}),
				-- Obtained from: Scholomance
				i(87209, {	-- Sigil of Wisdom
					["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(1243929),	-- Dominion of the Empress
					["description"] = "This can drop from the last boss of any Celestial Dungeon.",
					["maps"] = CELESTIAL_DUNGEON_MAPS,
					["crs"] = CELESTIAL_DUNGEON_LAST_BOSSES,
				}),
			}),
			n(VENDORS, {
				n(248108, {	-- Avatar of the August Celestials <August Stone Fragment Exchange>
					["aqd"] = {
						["coord"] = { 41.4, 46.3, SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },
					},
					["hqd"] = {
						["coord"] = { 42.5, 76.6, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					},
					["groups"] = appendGroups(applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, {	-- Tier Tokens
						frags(60, i(89274)),	-- Helm of the Shadowy Conqueror (Terrace)
						frags(60, i(89275)),	-- Helm of the Shadowy Protector (Terrace)
						frags(60, i(89273)),	-- Helm of the Shadowy Vanquisher (Terrace)
						frags(50, i(89277)),	-- Shoulders of the Shadowy Conqueror (Terrace)
						frags(50, i(89278)),	-- Shoulders of the Shadowy Protector (Terrace)
						frags(50, i(89276)),	-- Shoulders of the Shadowy Vanquisher (Terrace)
					}),
					applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, {	-- Tier Tokens
						frags(55, i(89265)),	-- Chest of the Shadowy Conqueror (HoF)
						frags(55, i(89266)),	-- Chest of the Shadowy Protector (HoF)
						frags(55, i(89264)),	-- Chest of the Shadowy Vanquisher (HoF)
						frags(50, i(89271)),	-- Gauntlets of the Shadowy Conqueror (HoF)
						frags(50, i(89272)),	-- Gauntlets of the Shadowy Protector (HoF)
						frags(50, i(89270)),	-- Gauntlets of the Shadowy Vanquisher (HoF)
						frags(55, i(89268)),	-- Leggings of the Shadowy Conqueror (HoF)
						frags(55, i(89269)),	-- Leggings of the Shadowy Protector (HoF)
						frags(55, i(89267)),	-- Leggings of the Shadowy Vanquisher (HoF)
					}),
					applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, {
						-- Weapons
						-- One-Handed
						frags(30, i(86886)),	-- Kilrak, Jaws of Terror (Terrace)
						frags(30, i(86886)),	-- Loshan, Terror Incarnate (Terrace)
						frags(30, i(86909)),	-- Regail's Crackling Dagger (Terrace)
						frags(30, i(86910)),	-- Spiritsever (Terrace)

						-- Two-Handed
						frags(50, i(86893)),	-- Jin'ya, Orb of the Waterspeaker (Terrace)
						frags(50, i(86879)),	-- Gao-Rei, Staff of the Legendary Protector (Terrace)
						frags(50, i(86905)),	-- Shin'ka, Execution of Dominion (Terrace)

						-- Ranged
						frags(50, i(86889)),	-- Taoren, the Soul Burner (Terrace)

						-- Off-hand
						

						-- Shields
						

						-- Necks
						frags(30, i(86872)),	-- Kaolan's Withering Necklace (Terrace)
						frags(30, i(86871)),	-- Shackle of Eversparks (Terrace)

						-- Cloaks
						frags(30, i(86874)),	-- Cloak of Overwhelming Corruption (Terrace)
						frags(30, i(86883)),	-- Daybreak Drape (Terrace)

						-- Plate Armor
						-- Head
						frags(50, i(86876)),	-- Casque of Expelled Corruption (Terrace)
						-- Shoulder
						
						-- Chest
						frags(50, i(86891)),	-- Cuirass of the Animated Protector (Terrace)
						-- Wrist
						frags(30, i(86868)),	-- Bracers of Defiled Earth (Terrace)
						-- Hands
						frags(30, i(89981)),	-- Grasps of Serpentine Might (Terrace)
						-- Waist
						frags(50, i(86902)),	-- Mender's Girdle of Endless Spring (Terrace)
						frags(50, i(86904)),	-- Patroller's Girdle of Endless Spring (Terrace)
						frags(50, i(86903)),	-- Protector's Girdle of Endless Spring (Terrace)
						-- Legs
						
						-- Feet
						frags(50, i(86870)),	-- Deepwater Greatboots (Terrace)
						frags(50, i(86887)),	-- Sollerets of Instability (Terrace)

						-- Mail Armor
						-- Head
						
						-- Shoulders
						frags(30, i(89979)),	-- Waterborne Shoulderguards (Terrace)
						-- Chest
						frags(50, i(86882)),	-- Sunwrought Mail Hauberk (Terrace)
						-- Wrist
						
						-- Hands
						
						-- Waist
						frags(50, i(86900)),	-- Binder's Chain of Unending Summer (Terrace)
						frags(50, i(86901)),	-- Ranger's Chain of Unending Summer (Terrace)
						frags(50, i(89986)),	-- Shadowgrip Girdle (Terrace)
						-- Legs
						
						-- Feet
						frags(50, i(86877)),	-- Lightning Prisoner's Boots (Terrace)

						-- Leather Armor
						-- Head
						
						-- Shoulders
						
						-- Chest
						--frags(50, i(89985)),	-- Wrap of Instant Petrification (Terrace)
						-- Wrist
						
						-- Hands
						frags(30, i(89980)),	-- Gauntlets of the Shadow's Caress (Terrace)
						-- Waist
						--frags(50, i(86899)),	-- Stalker's Cord of Eternal Autumn
						--frags(50, i(86898)),	-- Weaver's Cord of Eternal Autumn
						-- Legs
						frags(50, i(89983)),	-- Fear-Blackened Leggings (Terrace)
						frags(50, i(89978)),	-- Legguards of Failing Purification (Terrace)
						-- Feet
						frags(50, i(86878)),	-- Asani's Uncleansed Sandals (Terrace)

						-- Cloth Armor
						-- Head
						
						-- Shoulders
						frags(30, i(89982)),	-- Shoulderpads of Twisted Fate (Terrace)
						-- Chest
						frags(50, i(89984)),	-- Robes of Pinioned Eyes (Terrace)
						frags(50, i(86892)),	-- Robes of the Unknown Fear (Terrace)
						-- Wrist
						frags(30, i(86875)),	-- Cuffs of the Corrupted Waters (Terrace)
						-- Gloves
						
						-- Waist
						frags(50, i(86884)),	-- Belt of Embodied Terror (Terrace)
						frags(50, i(86895)),	-- Healer's Belt of Final Winter (Terrace)
						frags(50, i(86896)),	-- Invoker's Belt of Final Winter (Terrace)
						frags(50, i(86897)),	-- Sorcerer's Belt of Final Winter (Terrace)
						-- Legs
						frags(50, i(86908)),	-- Dreadwoven Leggings of Failure (Terrace)
						-- Feet
						frags(50, i(86888)),	-- Sandals of the Blackest Night (Terrace)

						-- Rings
						frags(30, i(86880)),	-- Dread Shadow Ring (Terrace)
						frags(30, i(86869)),	-- Regail's Band of the Endless (Terrace)
						frags(30, i(86873)),	-- Watersoul Signet (Terrace)

						-- Trinkets
						frags(50, i(86894)),	-- Darkmist Vortex (Terrace)
						frags(50, i(86907)),	-- Essence of Terror (Terrace)
						frags(50, i(86885)),	-- Spirits of the Sun (Terrace)
						frags(50, i(86881)),	-- Stuff of Nightmares (Terrace)
						frags(50, i(86890)),	-- Terror in the Mists (Terrace)
					}),
					applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, {
						-- Weapons
						-- One-Handed
						frags(30, i(86864)),	-- Claws of Shek'zeer (HoF)
						frags(30, i(86865)),	-- Kri'tak, Imperial Scepter of the Swarm (HoF)
						frags(30, i(86863)),	-- Scimitar of Seven Stars (HoF)
						frags(30, i(86862)),	-- Un'sok's Amber Scalpel (HoF)

						-- Two-Handed
						

						-- Ranged
						

						-- Off-hand
						frags(15, i(86829)),	-- Tornado-Summoning Censer (HoF)

						-- Shields
						

						-- Necks
						frags(30, i(86824)),	-- Choker of the Unleashed Storm (HoF)
						frags(30, i(86856)),	-- Korven's Amber-Sealed Beetle (HoF)
						frags(30, i(86835)),	-- Necklace of Congealed Weaknesses (HoF)
						frags(30, i(89952)),	-- Pheromone-Coated Choker (HoF)

						-- Cloaks
						frags(30, i(86853)),	-- Cloak of Raining Blades (HoF)
						frags(30, i(86827)),	-- Drape of Gathering Clouds (HoF)
						frags(30, i(86812)),	-- Hisek's Chrysanthemum Cape (HoF)
						frags(30, i(86831)),	-- Legbreaker Greatcloak (HoF)
						frags(30, i(86840)),	-- Stormwake Mistcloak (HoF)

						-- Plate Armor
						-- Head
						frags(45, i(86832)),	-- Garalon's Hollow Skull (HoF)
						-- Shoulder
						frags(30, i(89956)),	-- Pauldrons of the Broken Blade (HoF)
						frags(30, i(86860)),	-- Shoulderpads of Misshapen Life (HoF)
						-- Chest
						frags(45, i(86816)),	-- Chestplate of the Forbidden Tower (HoF)
						frags(45, i(89958)),	-- Garalon's Graven Carapace (HoF)
						-- Wrist
						frags(30, i(86846)),	-- Inlaid Cricket Bracers (HoF)
						frags(30, i(86849)),	-- Plated Locust Bracers (HoF)
						frags(30, i(86848)),	-- Serrated Wasp Bracers (HoF)
						-- Hands
						frags(30, i(86837)),	-- Grasps of Panic (HoF)
						frags(30, i(86823)),	-- Windblade Talons (HoF)
						-- Waist
						frags(45, i(86822)),	-- Waistplate of Overwhelming Assault (HoF)
						frags(45, i(89954)),	-- Warbelt of Sealed Pods (HoF)
						-- Legs
						--frags(45, i(86854)),	-- Articulated Legplates
						--frags(45, i(89963)),	-- Legplates of Regal Reinforcement
						-- Feet
						frags(45, i(86852)),	-- Impaling Treads (HoF)

						-- Mail Armor
						-- Head
						frags(45, i(86866)),	-- Crown of the Doomed Empress (HoF)
						frags(45, i(89962)),	-- Hood of Dark Dreams (HoF)
						-- Shoulders
						frags(30, i(86855)),	-- Wingslasher Pauldrons (HoF)
						-- Chest
						frags(45, i(86818)),	-- Mail of Screaming Secrets (HoF)
						frags(45, i(89960)),	-- Vestments of Steaming Ichor (HoF)
						frags(45, i(87823)),	-- Zor'lok's Fizzing Chestguard (HoF)
						-- Wrist
						frags(30, i(86826)),	-- Bracers of Tempestuous Fury (HoF)
						frags(30, i(86847)),	-- Jagged Hornet Bracers (HoF)
						frags(30, i(86842)),	-- Luminescent Firefly Wristguards (HoF)
						-- Hands
						frags(30, i(86833)),	-- Grips of the Leviathan (HoF)
						frags(30, i(90739)),	-- Kaz'tik's Stormseizer Gauntlets (HoF)
						-- Waist
						
						-- Legs
						frags(45, i(89955)),	-- Sword Dancer's Leggings (HoF)
						-- Feet
						frags(45, i(86861)),	-- Monstrous Stompers (HoF)

						-- Leather Armor
						-- Head
						frags(45, i(89957)),	-- Hood of Stilled Winds (HoF)
						-- Shoulders
						frags(30, i(89961)),	-- Shadow Heart Spaulders (HoF)
						-- Chest
						frags(45, i(86838)),	-- Robes of Eighty Lights (HoF)
						-- Wrist
						frags(30, i(86821)),	-- Bracers of Unseen Strikes (HoF)
						frags(30, i(86845)),	-- Pearlescent Butterfly Wristbands (HoF)
						frags(30, i(86843)),	-- Smooth Beetle Wristbands (HoF)
						-- Hands
						frags(30, i(86834)),	-- Bonebreaker Gauntlets (HoF)
						frags(30, i(86912)),	-- Clutches of Dying Hope (HoF)
						frags(30, i(86817)),	-- Gauntlets of Undesired Gifts (HoF)
						-- Waist
						frags(50, i(86899)),	-- Stalker's Cord of Eternal Autumn
						frags(50, i(86898)),	-- Weaver's Cord of Eternal Autumn
						-- Legs
						
						-- Feet
						frags(45, i(86811)),	-- Boots of the Still Breath (HoF)
						frags(45, i(86859)),	-- Treads of Deadly Secretions (HoF)

						-- Cloth Armor
						-- Head
						frags(45, i(86839)),	-- Xaril's Hood of Intoxicating Vapors
						-- Shoulders
						frags(30, i(89959)),	-- Shoulders of Foaming Fluids (HoF)
						-- Chest
						frags(45, i(86911)),	-- Robes of Torn Nightmares (HoF)
						-- Wrist
						frags(30, i(86815)),	-- Attenuating Bracers (HoF)
						frags(30, i(86850)),	-- Darting Damselfly Cuffs (HoF)
						frags(30, i(86844)),	-- Gleaming Moth Cuffs (HoF)
						frags(30, i(86841)),	-- Shining Cicada Bracers (HoF)
						frags(30, i(86828)),	-- Twisting Wind Bracers (HoF)
						-- Hands
						frags(30, i(86819)),	-- Gloves of Grasping Claws
						-- Waist
						frags(50, i(86857)),	-- Belt of Malleable Amber (HoF)
						-- Legs
						frags(45, i(86867)),	-- Leggings of Shadow Infestation (HoF)
						-- Feet
						frags(45, i(86825)),	-- Boots of the Blowing Wind (HoF)
						frags(45, i(86836)),	-- Sandals of the Unbidden (HoF)
						frags(45, i(89953)),	-- Scent-Soaked Sandals (HoF)

						-- Rings
						frags(30, i(86814)),	-- Fragment of Fear Made Flesh (HoF)
						frags(30, i(86851)),	-- Painful Thorned Ring (HoF)
						frags(30, i(86820)),	-- Ring of the Bladed Tempest (HoF)
						frags(30, i(86830)),	-- Ring of the Shattered Shell (HoF)
						frags(30, i(86858)),	-- Seal of the Profane (HoF)
						frags(30, i(86813)),	-- Vizier's Ruby Signet (HoF)

						-- Trinkets
						
					}),
					{	-- Original Celestial Dungeon Loot
						-- Weapons
						-- One-Handed
						--frags(30, i(86864)),	-- Claws of Shek'zeer (HoF)
						frags(25, i(86741)),	-- Dagger of the Seven Stars
						frags(25, i(86789)),	-- Elegion, the Fanged Crescent
						frags(25, i(86762)),	-- Gara'kal, Fist of the Spiritbinder
						--frags(30, i(86865)),	-- Kri'tak, Imperial Scepter of the Swarm (HoF)
						--frags(30, i(86886)),	-- Kilrak, Jaws of Terror (Terrace)
						--frags(30, i(86886)),	-- Loshan, Terror Incarnate (Terrace)
						--frags(30, i(86909)),	-- Regail's Crackling Dagger (Terrace)
						--frags(30, i(86863)),	-- Scimitar of Seven Stars (HoF)
						--frags(30, i(86910)),	-- Spiritsever (Terrace)
						frags(25, i(86806)),	-- Tihan, Scepter of the Sleeping Emperor
						--frags(30, i(86862)),	-- Un'sok's Amber Scalpel (HoF)

						-- Two-Handed
						--frags(50, i(86893)),	-- Jin'ya, Orb of the Waterspeaker (Terrace)
						--frags(50, i(86879)),	-- Gao-Rei, Staff of the Legendary Protector (Terrace)
						--frags(50, i(86905)),	-- Shin'ka, Execution of Dominion (Terrace)
						frags(40, i(86777)),	-- Screaming Tiger, Qiang's Unbreakable Polearm
						frags(40, i(86799)),	-- Starshatter

						-- Ranged
						frags(40, i(86801)),	-- Fang Kung, Spark of Titans
						--frags(50, i(86889)),	-- Taoren, the Soul Burner (Terrace)
						frags(40, i(86796)),	-- Torch of the Celestial Spark

						-- Off-hand
						frags(15, i(89426)),	-- Fan of Fiery Winds
						--frags(15, i(86829)),	-- Tornado-Summoning Censer (HoF)

						-- Shields
						frags(15, i(86764)),	-- Eye of the Ancient Spirit
						frags(15, i(86778)),	-- Steelskin, Qiang's Impervious Shield

						-- Necks
						frags(25, i(86754)),	-- Amulet of Seven Curses
						frags(25, i(86776)),	-- Amulet of the Hidden Kings
						frags(25, i(86739)),	-- Beads of the Mogu'shi
						--frags(30, i(86824)),	-- Choker of the Unleashed Storm (HoF)
						--frags(30, i(86872)),	-- Kaolan's Withering Necklace (Terrace)
						--frags(30, i(86856)),	-- Korven's Amber-Sealed Beetle (HoF)
						--frags(30, i(86835)),	-- Necklace of Congealed Weaknesses (HoF)
						--frags(30, i(89952)),	-- Pheromone-Coated Choker (HoF)
						--frags(30, i(86871)),	-- Shackle of Eversparks (Terrace)
						frags(25, i(86759)),	-- Soulgrasp Choker
						frags(25, i(86810)),	-- Worldwaker Cabochon
						frags(25, i(86783)),	-- Zian's Choker of Coalesced Shadow

						-- Cloaks
						frags(25, i(86782)),	-- Arrow Breaking Windcloak
						frags(25, i(86748)),	-- Cape of Three Lanterns
						--frags(30, i(86874)),	-- Cloak of Overwhelming Corruption (Terrace)
						frags(25, i(86753)),	-- Cloak of Peacock Feathers
						--frags(30, i(86853)),	-- Cloak of Raining Blades (HoF)
						--frags(30, i(86883)),	-- Daybreak Drape (Terrace)
						--frags(30, i(86827)),	-- Drape of Gathering Clouds (HoF)
						--frags(30, i(86812)),	-- Hisek's Chrysanthemum Cape (HoF)
						--frags(30, i(86831)),	-- Legbreaker Greatcloak (HoF)
						frags(25, i(89971)),	-- Mindshard Drape
						--frags(30, i(86840)),	-- Stormwake Mistcloak (HoF)

						-- Plate Armor
						-- Head
						--frags(50, i(86876)),	-- Casque of Expelled Corruption (Terrace)
						frags(40, i(89974)),	-- Crown of Keening Stars
						--frags(45, i(86832)),	-- Garalon's Hollow Skull (HoF)
						frags(40, i(86752)),	-- Nullification Greathelm
						-- Shoulder
						--frags(30, i(89956)),	-- Pauldrons of the Broken Blade (HoF)
						frags(25, i(86780)),	-- Shoulderguards of the Unflanked
						--frags(30, i(86860)),	-- Shoulderpads of Misshapen Life (HoF)
						frags(25, i(86807)),	-- Spaulders of the Emperor's Rage
						-- Chest
						frags(40, i(86779)),	-- Breastplate of the Kings' Guard
						frags(40, i(89976)),	-- Chestguard of Eternal Vigilance
						--frags(45, i(86816)),	-- Chestplate of the Forbidden Tower (HoF)
						--frags(50, i(86891)),	-- Cuirass of the Animated Protector (Terrace)
						--frags(45, i(89958)),	-- Garalon's Graven Carapace (HoF)
						-- Wrist
						frags(25, i(86766)),	-- Bindings of Ancient Spirits
						frags(25, i(89969)),	-- Bonded Soul Bracers
						--frags(30, i(86868)),	-- Bracers of Defiled Earth (Terrace)
						frags(25, i(86751)),	-- Bracers of Six Oxen
						--frags(30, i(86846)),	-- Inlaid Cricket Bracers (HoF)
						--frags(30, i(86849)),	-- Plated Locust Bracers (HoF)
						--frags(30, i(86848)),	-- Serrated Wasp Bracers (HoF)
						-- Hands
						--frags(30, i(86837)),	-- Grasps of Panic (HoF)
						--frags(30, i(89981)),	-- Grasps of Serpentine Might (Terrace)
						frags(25, i(86794)),	-- Starcrusher Gauntlets
						--frags(30, i(86823)),	-- Windblade Talons (HoF)
						-- Waist
						frags(40, i(86785)),	-- Girdle of Delirious Visions
						--frags(50, i(86902)),	-- Mender's Girdle of Endless Spring (Terrace)
						--frags(50, i(86904)),	-- Patroller's Girdle of Endless Spring (Terrace)
						--frags(50, i(86903)),	-- Protector's Girdle of Endless Spring (Terrace)
						frags(40, i(86793)),	-- Star-Stealer Waistguard
						--frags(45, i(86822)),	-- Waistplate of Overwhelming Assault (HoF)
						--frags(45, i(89954)),	-- Warbelt of Sealed Pods (HoF)
						-- Legs
						--frags(45, i(86854)),	-- Articulated Legplates
						frags(40, i(86803)),	-- Jang-xi's Devastating Legplates
						--frags(45, i(89963)),	-- Legplates of Regal Reinforcement
						frags(40, i(86756)),	-- Legplates of Sagacious Shadows
						-- Feet
						--frags(50, i(86870)),	-- Deepwater Greatboots (Terrace)
						frags(40, i(86744)),	-- Heavenly Jade Greatboots
						--frags(45, i(86852)),	-- Impaling Treads (HoF)
						frags(40, i(86742)),	-- Jasper Clawfeet
						--frags(50, i(86887)),	-- Sollerets of Instability (Terrace)
						frags(40, i(86760)),	-- Sollerets of Spirit Splitting

						-- Mail Armor
						-- Head
						--frags(45, i(86866)),	-- Crown of the Doomed Empress (HoF)
						frags(40, i(89975)),	-- Dreadeye Gaze
						--frags(45, i(89962)),	-- Hood of Dark Dreams (HoF)
						frags(40, i(86745)),	-- Sixteen-Fanged Crown
						-- Shoulders
						frags(25, i(86800)),	-- Shoulders of Empyreal Focus
						--frags(30, i(89979)),	-- Waterborne Shoulderguards (Terrace)
						--frags(30, i(86855)),	-- Wingslasher Pauldrons (HoF)
						-- Chest
						--frags(45, i(86818)),	-- Mail of Screaming Secrets (HoF)
						frags(40, i(89964)),	-- Stonefang Chestguard
						--frags(50, i(86882)),	-- Sunwrought Mail Hauberk (Terrace)
						--frags(45, i(89960)),	-- Vestments of Steaming Ichor (HoF)
						--frags(45, i(87823)),	-- Zor'lok's Fizzing Chestguard (HoF)
						-- Wrist
						--frags(30, i(86826)),	-- Bracers of Tempestuous Fury (HoF)
						--frags(30, i(86847)),	-- Jagged Hornet Bracers (HoF)
						--frags(30, i(86842)),	-- Luminescent Firefly Wristguards (HoF)
						frags(25, i(86740)),	-- Stonemaw Armguards
						-- Hands
						frags(25, i(89977)),	-- Enameled Grips of Solemnity
						frags(25, i(87826)),	-- Grips of Terra Cotta
						--frags(30, i(86833)),	-- Grips of the Leviathan (HoF)
						--frags(30, i(90739)),	-- Kaz'tik's Stormseizer Gauntlets (HoF)
						-- Waist
						--frags(50, i(86900)),	-- Binder's Chain of Unending Summer (Terrace)
						frags(40, i(86755)),	-- Chain of Shadow
						frags(40, i(86761)),	-- Fetters of Death
						--frags(50, i(86901)),	-- Ranger's Chain of Unending Summer (Terrace)
						--frags(50, i(89986)),	-- Shadowgrip Girdle (Terrace)
						-- Legs
						frags(40, i(86769)),	-- Leggings of Imprisoned Will
						frags(40, i(86781)),	-- Subetai's Pillaging Leggings
						--frags(45, i(89955)),	-- Sword Dancer's Leggings (HoF)
						-- Feet
						--frags(50, i(86877)),	-- Lightning Prisoner's Boots (Terrace)
						frags(40, i(86784)),	-- Meng's Treads of Insanity
						--frags(45, i(86861)),	-- Monstrous Stompers (HoF)
						frags(40, i(86749)),	-- Wildfire Worldwalkers

						-- Leather Armor
						-- Head
						frags(40, i(86804)),	-- Crown of Opportunistic Strikes
						frags(40, i(86757)),	-- Hood of Cursed Dreams
						--frags(45, i(89957)),	-- Hood of Stilled Winds (HoF)
						-- Shoulders
						frags(25, i(86763)),	-- Netherrealm Shoulderpads
						--frags(30, i(89961)),	-- Shadow Heart Spaulders (HoF)
						frags(25, i(86768)),	-- Spaulders of the Divided Mind
						-- Chest
						frags(40, i(86795)),	-- Chestguard of Total Annihilation
						--frags(45, i(86838)),	-- Robes of Eighty Lights (HoF)
						--frags(50, i(89985)),	-- Wrap of Instant Petrification (Terrace)
						-- Wrist
						frags(25, i(86786)),	-- Bracers of Dark Thoughts
						--frags(30, i(86821)),	-- Bracers of Unseen Strikes (HoF)
						frags(25, i(89970)),	-- Bracers of Violent Meditation
						--frags(30, i(86845)),	-- Pearlescent Butterfly Wristbands (HoF)
						--frags(30, i(86843)),	-- Smooth Beetle Wristbands (HoF)
						-- Hands
						--frags(30, i(86834)),	-- Bonebreaker Gauntlets (HoF)
						--frags(30, i(86912)),	-- Clutches of Dying Hope (HoF)
						--frags(30, i(89980)),	-- Gauntlets of the Shadow's Caress (Terrace)
						--frags(30, i(86817)),	-- Gauntlets of Undesired Gifts (HoF)
						-- Waist
						--frags(50, i(86899)),	-- Stalker's Cord of Eternal Autumn
						frags(40, i(86746)),	-- Stonebound Cinch
						frags(40, i(86750)),	-- Tomb Raider's Girdle
						--frags(50, i(86898)),	-- Weaver's Cord of Eternal Autumn
						-- Legs
						--frags(50, i(89983)),	-- Fear-Blackened Leggings (Terrace)
						--frags(50, i(89978)),	-- Legguards of Failing Purification (Terrace)
						frags(40, i(86808)),	-- Magnetized Leggings
						frags(40, i(86743)),	-- Stoneflesh Leggings
						-- Feet
						--frags(50, i(86878)),	-- Asani's Uncleansed Sandals (Terrace)
						--frags(45, i(86811)),	-- Boots of the Still Breath (HoF)
						frags(40, i(86797)),	-- Phasewalker Striders
						--frags(45, i(86859)),	-- Treads of Deadly Secretions (HoF)

						-- Cloth Armor
						-- Head
						frags(40, i(86788)),	-- Hood of Blind Eyes
						frags(40, i(86809)),	-- Hood of Focused Energy
						--frags(45, i(86839)),	-- Xaril's Hood of Intoxicating Vapors
						-- Shoulders
						frags(25, i(86770)),	-- Shadowsummoner Spaulders
						--frags(30, i(89982)),	-- Shoulderpads of Twisted Fate (Terrace)
						--frags(30, i(89959)),	-- Shoulders of Foaming Fluids (HoF)
						-- Chest
						frags(40, i(86758)),	-- Imperial Ghostbinder's Robes
						--frags(50, i(89984)),	-- Robes of Pinioned Eyes (Terrace)
						--frags(50, i(86892)),	-- Robes of the Unknown Fear (Terrace)
						--frags(45, i(86911)),	-- Robes of Torn Nightmares (HoF)
						-- Wrist
						--frags(30, i(86815)),	-- Attenuating Bracers (HoF)
						--frags(30, i(86875)),	-- Cuffs of the Corrupted Waters (Terrace)
						--frags(30, i(86850)),	-- Darting Damselfly Cuffs (HoF)
						--frags(30, i(86844)),	-- Gleaming Moth Cuffs (HoF)
						--frags(30, i(86841)),	-- Shining Cicada Bracers (HoF)
						--frags(30, i(86828)),	-- Twisting Wind Bracers (HoF)
						-- Hands
						frags(25, i(89966)),	-- Claws of Amethyst
						--frags(30, i(86819)),	-- Gloves of Grasping Claws
						frags(25, i(86787)),	-- Undying Shadow Grips
						-- Waist
						--frags(50, i(86884)),	-- Belt of Embodied Terror (Terrace)
						--frags(50, i(86857)),	-- Belt of Malleable Amber (HoF)
						frags(40, i(89973)),	-- Galaxyfire Girdle
						--frags(50, i(86895)),	-- Healer's Belt of Final Winter (Terrace)
						--frags(50, i(86896)),	-- Invoker's Belt of Final Winter (Terrace)
						frags(40, i(86798)),	-- Orbital Belt
						frags(40, i(89965)),	-- Ruby-Linked Girdle
						--frags(50, i(86897)),	-- Sorcerer's Belt of Final Winter (Terrace)
						-- Legs
						--frags(50, i(86908)),	-- Dreadwoven Leggings of Failure (Terrace)
						frags(40, i(86747)),	-- Jade Dust Leggings
						--frags(45, i(86867)),	-- Leggings of Shadow Infestation (HoF)
						-- Feet
						--frags(45, i(86825)),	-- Boots of the Blowing Wind (HoF)
						--frags(50, i(86888)),	-- Sandals of the Blackest Night (Terrace)
						frags(40, i(86765)),	-- Sandals of the Severed Soul
						--frags(45, i(86836)),	-- Sandals of the Unbidden (HoF)
						--frags(45, i(89953)),	-- Scent-Soaked Sandals (HoF)

						-- Rings
						frags(25, i(89972)),	-- Band of Bursting Novas
						frags(25, i(86767)),	-- Circuit of the Frail Soul
						--frags(30, i(86880)),	-- Dread Shadow Ring (Terrace)
						frags(25, i(89968)),	-- Feng's Ring of Dreams
						frags(25, i(89967)),	-- Feng's Seal of Binding
						--frags(30, i(86814)),	-- Fragment of Fear Made Flesh (HoF)
						--frags(30, i(86851)),	-- Painful Thorned Ring (HoF)
						--frags(30, i(86869)),	-- Regail's Band of the Endless (Terrace)
						--frags(30, i(86820)),	-- Ring of the Bladed Tempest (HoF)
						--frags(30, i(86830)),	-- Ring of the Shattered Shell (HoF)
						--frags(30, i(86858)),	-- Seal of the Profane (HoF)
						--frags(30, i(86813)),	-- Vizier's Ruby Signet (HoF)
						--frags(30, i(86873)),	-- Watersoul Signet (Terrace)

						-- Trinkets
						frags(40, i(86791)),	-- Bottle of Infinite Stars
						--frags(50, i(86894)),	-- Darkmist Vortex (Terrace)
						--frags(50, i(86907)),	-- Essence of Terror (Terrace)
						frags(40, i(86772)),	-- Jade Bandit Figurine
						frags(40, i(86771)),	-- Jade Charioteer Figurine
						frags(40, i(86774)),	-- Jade Courtesan Figurine
						frags(40, i(86773)),	-- Jade Magistrate Figurine
						frags(40, i(86775)),	-- Jade Warlord Figurine
						frags(40, i(86802)),	-- Lei Shen's Final Orders
						frags(40, i(86792)),	-- Light of the Cosmos
						frags(40, i(86805)),	-- Qin-xi's Polarizing Seal
						--frags(50, i(86885)),	-- Spirits of the Sun (Terrace)
						--frags(50, i(86881)),	-- Stuff of Nightmares (Terrace)
						--frags(50, i(86890)),	-- Terror in the Mists (Terrace)
						frags(40, i(86790)),	-- Vial of Dragon's Blood
						-- Currency Conversion
						frags(1, i(247796), {	-- Commendation of Service
							currency(395),	-- Justice Points
						}),
					}, {
						-- Bags
						frags(10, i(248666, {	-- Satchel of Celestial Chance
							-- Wouter TODO: verify origins for mounts, Crane specifically was previously mentioned to be a reward from the Celestial Dungeon Hero achievement,
							-- but it's not listed as a reward in-game
							-- MAAAOUNTS
							-- Confirmed
							i(87777),	-- Astral Cloud Serpent (MOUNT!)
							i(87786),	-- Black Riding Yak (MOUNT!)
							i(87787),	-- Brown Riding Yak (MOP) / Modest Expedition Yak (Retail) (MOUNT!)
							i(248741),	-- Celestial Riding Crane (MOUNT!)
							i(248744),	-- Celestial Riding Ox (MOUNT!)
							i(248743),	-- Celestial Riding Serpent (MOUNT!)
							i(248742),	-- Celestial Riding Tiger (MOUNT!)
							i(87791),	-- Crimson Water Strider (MOUNT!)
							i(87794),	-- Golden Water Strider (MOUNT!)
							i(87771),	-- Heavenly Onyx Cloud Serpent (MOUNT!)
							i(87784),	-- Jungle Riding Crane (MOUNT!)
							i(87792),	-- Orange Water Strider (MOUNT!)
							i(84753),	-- White Riding Yak (MOP) / Kafa Yak (Retail) (MOUNT!)

							-- Unconfirmed (but speculated)
							-- CRIEVE NOTE: I don't know who made this list, but half of them are from content that gets added later. I highly doubt they'd make them drop before they're supposed to.
							--i(87793),	-- Jade Water Strider (MOUNT!)
							-- i(87776),	-- Heavenly Azure Cloud Serpent (MOUNT!)
							--i(87774),	-- Heavenly Golden Cloud Serpent (MOUNT!)
							--i(87775),	-- Heavenly Jade Cloud Serpent (MOUNT!)
							--i(95057),	-- Thundering Cobalt Cloud Serpent (MOUNT!)
							-- i(94228),	-- Cobalt Primordial Direhorn (MOUNT!)

							-- Pets
							i(86563),	-- Aqua Strider (PET!)
							i(86564),	-- Imbued Jade Fragment (PET!)
							i(88148),	-- Jade Crane Chick (PET!)
							i(89587),	-- Porcupette (PET!)
							i(94595),	-- Spawn of G'nathus (PET!)
						})),
						frags(10, i(248329)),	-- Satchel of Stone Fragments
					}),
				}),
			}),
		},
	})),
})));
-- #endif
