-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	n(MYTHIC_PLUS, {
		["timeline"] = { ADDED_12_0_1 },
		["groups"] = {
			cnONLY(filter(TITLES, {
				-- https://www.wowhead.com/news/chinese-community-earns-exclusive-titles-through-mythic-mentorship-380999
				cnONLY(title(756)),	-- Volunteer <Name>						// 10 Dungeons
				cnONLY(title(757)),	-- Caring Citizen <Name>				// 50 Dungeons
				cnONLY(title(758)),	-- <Name>, The Backbone of the Realm	// 100 Dungeons
				cnONLY(title(759)),	-- <Name>, The Philanthropist			// 200 Dungeons
				cnONLY(title(760)),	-- <Name>, The Everlasting				// 500 Dungeons
			})),
			n(VENDORS, {
				n(197711, {	-- Lindormi <Mythic Keystones>
					["coord"] = { 42.1, 58.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					["timeline"] = { ADDED_12_0_1 },
					["groups"] = {
						filter(MOUNTS, bubbleDownFiltered({
							["cost"] = { { "i", 275436, 1 } },	-- Timelost Saddle
							["timeline"] = { ADDED_12_0_5 },
						},FILTERFUNC_itemID,{
							-- 'Keystone Master', and 'Keystone Legend' Mounts from previous seasons
							i(174836),	-- Awakened Mindborer (MOUNT!) [BFA KSM S4]
							i(182717),	-- Sintouched Deathwalker (MOUNT!) [SL KSM S1]
							i(187525),	-- Soultwisted Deathwalker (MOUNT!) [SL KSM S2]
							i(187682),	-- Wastewarped Deathwalker (MOUNT!) [SL KSM S3]
							i(192557),	-- Restoration Deathwalker (MOUNT!) [SL KSM S4]
							i(199412),	-- Hailstorm Armoredon (MOUNT!) [DF KSM S1]
							i(204798),	-- Inferno Armoredon (MOUNT!) [DF KSM S2]
							i(209060),	-- Verdant Armoredon (MOUNT!) [DF KSM S3]
							i(213438),	-- Infinite Armoredon (MOUNT!) [DF KSM S4]
							i(226357),	-- Diamond Mechsuit (MOUNT!) [TWW KSM S1]
							i(237141),	-- Enterprising Shreddertank (MOUNT!) [TWW KSL S2]
							i(235549),	-- Crimson Shreddertank (MOUNT!) [TWW KSM S2]
							i(247822),	-- Scarlet Void Flyer (MOUNT!) [TWW KSL S3]
							i(248248),	-- Azure Void Flyer (MOUNT!) [TWW KSM S3]
							-- Newly Introduced (12.0.5) Mounts
							i(275442),	-- Amethyst Mechsuit (MOUNT!)
							i(275444),	-- Blue-Chip Shreddertank (MOUNT!)
							i(275440),	-- Cerulean Deathwalker (MOUNT!)
							i(275446),	-- High-Yield Shreddertank (MOUNT!)
							i(275445),	-- Profit-Green Shreddertank (MOUNT!)
							i(275447),	-- Speculative Shreddertank (MOUNT!)
						})),
					},
				}),
			}),
		},
	}),
});
