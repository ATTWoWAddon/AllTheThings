-- This file contains information about Maps whose coordinate references have changed at some point in time due to a Map change
-- during a given timeline value
-- NOTE: This does not currently perform dynamic coordinate changes based on in-game checks, this is for global at-parse adjustments
-- based on Parse versions

-- Entries should be added to MAPID_COORD_SHIFTS[MAPID] = { X_SHIFT, Y_SHIFT, MAX_TIMELINE_VALUE }
-- such that any content with 'coords' on the MAPID with a 'timeline' when parsed which is prior to the MAX_TIMELINE_VALUE
-- will receive the X/Y shift against its coords

MAPID_COORD_SHIFTS = {}
-- In 11.1 The Ringing Deeps shifted due to a changed map
MAPID_COORD_SHIFTS[THE_RINGING_DEEPS] = { -4.2, 0, ADDED_11_1_0 }
