---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(WORLD_QUESTS, {
			["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				pvp(q(89241, {	-- Up and Up
					["coord"] = { 72.6, 12.4, KARESH },
				})),
				q(85855, {	-- Anything to Declare?
					["coord"] = { 55.1, 63.4, KARESH },
				}),
				q(85460, {	-- Ecological Succession
					["coord"] = { 74.1, 32.6, KARESH },
					["isWeekly"] = true,	-- TODO: remove after Blizzard fix it flag
					["groups"] = {
						o(483713, {	-- Watering Jug
							i(232323),	-- Watering Jug (QI!)
						}),
						--
						i(245611, {	-- Wriggling Pinnacle Cache
							["sym"] = {	-- K'aresh Zone Reward
								{"select","mapID",KHAZ_ALGAR},{"pop"},
								{"where","mapID",KARESH},{"pop"},
								{"where","headerID",ZONE_REWARDS},{"pop"},
							},
							["groups"] = {
								i(245274),	-- Cerulean Lapbug (PET!)
								i(245273),	-- Copper Lapbug (PET!)
								i(242734),	-- Curious Slateback (MOUNT!)
								i(244916),	-- Cyan Siphonmite (PET!)
								i(244907),	-- Dread Horrorling (PET!)
								i(245252),	-- Graceful Cosmic Ray Pup (PET!)
								i(244909),	-- Impartial Watcher (PET!)
								i(245253),	-- Inquisitive Cosmic Ray Pup (PET!)
								i(244468),	-- Scrappy Thorntail (PET!)
								i(245215),	-- Shimmering Inchshifter (PET!)
								i(244467),	-- Veridian Thorntail (PET!)
								i(245212),	-- Vitriolic Inchshifter (PET!)
								i(244914),	-- Xanthous Siphonmite (PET!)
							},
						}),
					},
				}),
				q(85834, {	-- Endangered Specimens
					["coord"] = { 43.6, 57.4, KARESH },
				}),
				q(84962, {	-- Exigent Extermination
					["coord"] = { 65.9, 48.5, KARESH },
					["groups"] = {
						o(499099, {	-- Entropic Egg
							i(232601),	-- Entropic Egg (QI!)
						}),
					},
				}),
				q(86367, {	-- Grub Stompin'
					["coord"] = { 70.1, 54.3, KARESH },
				}),
				q(85822, {	-- Making a Market
					["coord"] = { 58.8, 58.9, KARESH },
					["groups"] = {
						o(495603, {	--  Loose Sand
							i(232578),	-- Wastelander Artifact (QI!)
							i(232626),	-- Wastelander Artifact (QI!)
							i(232625),	-- Wastelander Artifact (QI!)
							i(232627),	-- Wastelander Artifact (QI!)
							i(232628),	-- Wastelander Artifact (QI!)
						}),
					},
				}),
				q(86709, {	-- Mana Falling from the Skies
					["coord"] = { 47.5, 23.5, KARESH },
				}),
				q(86610, {	-- Nor Void of Night
					["coord"] = { 59.0, 83.4, KARESH_TAZAVESH },
				}),
				q(88774, {	-- Out of Energy
					["coord"] = { 50.1, 20.0, KARESH },
				}),
				q(86584, {	-- Overwhelm Them with Mandatory Time Off
					["coord"] = { 57.7, 33.6, KARESH_TAZAVESH },
				}),
				q(85812, {	-- Raid the Raiders
					["coord"] = { 74.7, 51.1, KARESH },
					["groups"] = {
						o(495583, {	-- Missing Shipment
							i(232574),	-- Missing Shipment (QI!)
						}),
					},
				}),
				q(86696, {	-- Shadow Re-Disruption
					["coord"] = { 46.9, 25.3, KARESH },
				}),
				q(86409, {	-- Stalking the Crags
					["coord"] = { 76.2, 57.5, KARESH },
				}),
				q(86395, {	-- Stealing the Stolen
					["coord"] = { 85.8, 55.5, KARESH },
					["groups"] = {
						o(503220, {	-- Weapon Rack
							i(233543),	-- Stolen Stolen Weapon (QI!)
						}),
					},
				}),
				q(86800, {	-- Swipe 'Em
					["coord"] = { 53.8, 49.4, KARESH },
					["groups"] = {
						o(507470, {	-- Tool Rack
							i(235413),	-- Shadowguard Tool (QI!)
						}),
					},
				}),
				q(86391, {	-- Taking Back our Power
					["coord"] = { 62.5, 37.2, KARESH },
				}),
				q(86707, {	-- The Shadowguard Resurgence
					["coord"] = { 38.9, 65.5, KARESH_TAZAVESH },
					["groups"] = {
						o(507058, {	-- Northeast Barrier Projector
							["coord"] = { 41.3, 63.1, KARESH_TAZAVESH },
						}),
						o(567735, {	-- Northwest Barrier Projector
							["coord"] = { 30.6, 63.1, KARESH_TAZAVESH },
						}),
						o(567736, {	-- South Barrier Projector
							["coord"] = { 44.1, 84.7, KARESH_TAZAVESH },
						}),
					},
				}),
				q(89274, {	-- The Ugly Mirror
					["coord"] = { 61.0, 28.1, KARESH },
				}),
				q(88818, {	-- Void Sweeper
					["coord"] = { 46.5, 59.8, KARESH },
				}),
				q(86372, {	-- Wasting the Wastelanders
					["coord"] = { 62.9, 41.2, KARESH },
				}),
				q(86305, {	-- Watch me Make these Bugs Expire
					["coord"] = { 49.3, 64.3, KARESH },
					["groups"] = {
						i(249417),	-- Flamethrower (QI!)
					},
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(WORLD_QUESTS, {
				q(91075),	-- Triggered after completing 'Ecological Succession' (first time)
				q(91179),	-- Triggered after completing 'Ecological Succession' (first time/Curious Slateback hqt?)
							-- Triggered after completing 'Special Assignment: Overshadowed' (89293)
							-- Triggered after completing 'Special Assignment: Aligned Views' (89294)
				q(91193),	-- Special Assignment: Capstone 1 - Unlock
				q(91203),	-- Special Assignment: Capstone 2 - Unlock
				-- Restored Coffer Key (Pop from any weekly activity, orders (of activity) doesn't matter)
				q(91175, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 1st
				q(91176, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 2nd
				q(91177, name(HEADERS.Currency,3028,{["isWeekly"]=true})),	-- 3rd
			}),
		}),
	}),
})));
