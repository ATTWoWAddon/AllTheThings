-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

-- Placeholder for WoW Remix: Wrath of the Lich King (a Timerunning event), announced to launch in summer 2027.
-- https://www.wowhead.com/guide/wow-remix-wrath-of-the-lich-king-overview
-- TODO: Wrap in applyevent(EVENTS.REMIX_WRATH, ...) once the event has an ID, and replace CREATED_12_2_7 with the launch patch.
root(ROOTS.WorldEvents, n(REMIX_WRATH, {
	timeline = { CREATED_12_2_7 },
	--[[
	Known so far (Wowhead guide):
	- Stand-alone Timerunning version of Wrath: accelerated leveling, experimental game modes, reworked Wrath systems and new systems.
	- 5 extra character slots per account for Timerunners.
	- Timerunners can leave for the live game at any time (one way); at the end of the event all Timerunners are moved to the live game.
	- Cosmetics collected during the event are account-wide.
	--]]
}));
