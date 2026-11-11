---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildDataCache", function(categories)
local h,i,n,o,s=_.CreateCustomHeader,_.CreateItem,_.CreateNPC,_.CreateObject,_.CreateItemSource;
categories.Secrets=
h(-50,{SortPriority=65,g={
h(-820,{
o(676051,{coords={
[2521]={{41.7,23.4}}},description="Step 1: Skyborne get the Ancient Heirloom from Coming of Age (92460). Everyone else can loot it here, on the top floor of the building.",g={
i(264908,{b=1,f=52})}}),
o(676059,{coords={
[2521]={{58.1,24.1}}},cost={{"i",280612,1}},description="Step 2: Use a Night Watchman's Torch in the Ruins of Ban'aethal to uncover the Ancient Hilt, which starts The Ancient Hilt (93161).",g={
i(272313)}}),
n(259012,{coords={
[2521]={{65.8,74.4}}},description="Step 3: Bring the Ancient Hilt to Ealaane, then find the Ancient Skyborne Blade (it moves between several spots on the island) and bring it back for Eluvi'ana.",g={
s(303379,264501,{f=25,spellID=1315226}),
s(309603,276188,{f=25})}}),
i(279275,{b=1,coords={
[1439]={{59,22.9}}},crs={270294},description="Step 4 (Alliance): Combine 20 Mathystral Amulet Fragments from the naga in the Ruins of Mathystra, use the amulet to summon Baron Marinous, and loot the globe. Hand it to Onu in the Grove of the Ancients, then talk to him again to get it back.",lvl=17}),
i(16782,{b=1,crs={12876},description="Step 4 (Horde): Loot the globe from Baron Aquanis in Blackfathom Deeps. Hand it to Je'neu at Zoram'gar Outpost, then talk to him again to get it back.",lvl=21}),
n(273642,{coords={
[1440]={{15.6,19.2}}},description="Step 5: Wear the Ancient Heirloom and carry your water globe to Zoram Strand, where the Highborne Spirit appears. It sends you to the Tower of Althalaxx."}),
n(3660,{coords={
[1439]={{56.4,26.5}}},description="Step 6: Kill Narassin at the top of the Tower of Althalaxx for the Azsharan Key, then open the strongbox behind him for Narassin's Tome. Return to the Highborne Spirit afterwards.",g={
i(282406,{spellID=3366})}}),
o(676349,{coords={
[1439]={{56.2,26.4}}},cost={{"i",282406,1}},g={
i(282404)}}),
n(253471,{coords={
[2652]={{35,46.5}}},description="Step 7: Bring the Ancient Hilt, Eluvi'ana and Narassin's Tome to Mordent Evenshade. He names three items that can cleanse the globe: the Star of Elune, an Abyssal Mote and the Tears of Anguish."}),
i(282548,{coords={
[1444]={{58.5,71.6}}},description="Step 8: The Shen'dralar Vault on the ground floor of the ogre temple in southern Feralas, and the four Ancient Switches around it, only appear while you wear the Ancient Heirloom. Four players must throw the switches at the same time so a fifth can open the vault."}),
i(282547,{coords={
[1447]={{66,54.1}}},description="Step 8: Loot it from the underwater Abyssal Chest in Azshara. You must have finished the chain that starts with Kirith and ends with Azsharite first.",sourceQuests={3602}}),
i(282431,{b=1,coords={
[1452]={{53.6,43.2}}},crs={7523,7524},description="Step 8: Drops from the Highborne ghosts at Lake Kel'theril after you've spoken with Mordent Evenshade. The drop isn't guaranteed."}),
o(677445,{coords={
[2482]={{72.7,37.2}}},description="Step 9: Bring the three items and your water globe to the shrine, then use the globe from your bags to cleanse it. Show the Cleansed Water Globe to Mordent Evenshade, who sends you to Prince Tortheldrin in Dire Maul.",g={
i(282699)}}),
n(11486,{description="Step 10: Prince Tortheldrin speaks of two blades, Eluvi'ana and Eluvi'tor, and says only those Honored in his Court may learn more. The next step likely needs Honored with the Shen'dralar; the chain is still being solved.",maps={237}})})}})
end)
