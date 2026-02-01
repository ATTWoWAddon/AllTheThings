---@diagnostic disable: deprecated
local appName, _ = ...;
local ach,ah,cq,crit,de,en,h,i,m,mnt,n,o,p,prof,q,r,s,title,toy,x=_.CreateAchievement,_.CreateHeader,_.CreateCharacterUnlockQuest,_.CreateAchievementCriteria,_.CreateDecor,_.CreateEnsemble,_.CreateCustomHeader,_.CreateItem,_.CreateMap,_.CreateMount,_.CreateNPC,_.CreateObject,_.CreateSpecies,_.CreateProfession,_.CreateQuest,_.CreateRecipe,_.CreateItemSource,_.CreateTitle,_.CreateToy,_.CreateExpansion;
local a={{"i",207730},{"i",208092},{"i",228966},{"i",228996},{"n",185556},{"n",97128},{"o",408976},{"o",409166},{1,"questID",77308},{1,"questID",77520},{1,"questID",77521},{1,"questID",77522},{1,"questID",77524},{1,"questID",77578},{1,"questID",77579},{1,"questID",77580},{169414},{169415},{17.1,93.8,116},{17.8,93.2,116},{179566},{185562},{20,40,2022},{206864},{207696},{207697},{24.5,60.7,2022},{2736,8},{31.4,51.3,2248},{33.63,58.45,114},{337},{39.5,58.9,2023},{39.9,77.6,204},{44.6,20.2,205},{46.5,46.2,2112},{47.4,48.1,2112},{47.5,46.2,2112},{47.9,46.8,2112},{48,74.8,115},{50098},{52918},{54.9,28.9,2339},{55.1,19,2255},{56.4,17.5,2255},{58.5,39.1,627},{60.2,58.7,2025},{60.6,60,201},{62.8,72.8,2112},{63611},{65.9,43.2,204},{70},{71.8,62.5,680},{710,711,712},{72676},{73.2,74.9,790},{76504},{77203},{84677},{96479}};
_.Categories.Secrets={
x(8,{awp=80001,g={
ah(277461,{description="***Quest tracking enabled is required to see all the steps.*** \n\n***Before you can complete the last step of Baa'l, an upgraded Uuna is required, so it is recommended that you complete that secret first.***\n\nOther things you may want to have on hand for this secret:\n-Goblin Gliders (if you don't have flying)\n-Invisibility potions\n-Underlight Angler or potions to increase your swim speed\n",displayID=80456,modelScale=1.1,type="s",g={
q(52819,{coords={{51.8,59,863}},description="|cFFFFFFFFStep 1:|r Head to Nazmir. The note is high up on the side of the temple in the middle of the zone. If you don't have flying, you can access the top of the temple via a bridge that starts at |cFFFFFFFF46.3, 53.9|r.\n\nThe note reads: \"Begin at the beginning\"\n",providers={{"o",293849}}}),
o(293837,{coords={{37.5,71.6,646}},description="|cFFFFFFFFStep 2:|r Head to Broken Shore. At the coordinates provided, there is a small stone table with various non-interactable objects — some candles, parchment, a quill, a purple crystal ball, and some scattered grey pebbles. One of the pebbles is pale, almost the same color as the table, and it's the only thing on the table you can interact with. You may need to zoom in to see it.\n\nThe text reads: \"<An ordinary pebble, unremarkable in every way.>\"\n",modelScale=0.5,questID=52809,sourceQuests={52819}}),
o(293838,{coords={{49.7,40,1161}},description="|cFFFFFFFFStep 3:|r Head to Boralus. At the coordinates provided, there is a raised piece of dock with a horse, an NPC named Chance Cogswaddle, and a mechanical contraption called a Homing Copter. Hop down from the dock and go underneath it — there's a net that looks like it will block your path, but you can walk through it.\n\nWalk forward once you're underneath the dock and you'll pass through a sheet of seaweed and descend into a cave. The pebble you're looking for is tiny and pale and located close to the middle of the cave, around |cFFFFFFFF44.7, 38.5|r.\n\nThere's no text when you click on this one, but if you shift+click anywhere in the ATT mini or main list this step should get checked off your to-do list.\n",modelScale=0.5,questID=52810,sourceQuests={52809}}),
o(293839,{coords={{31.5,36,862}},description="|cFFFFFFFFStep 4:|r Head to Zuldazar. The next pebble is hidden in a cave behind Atal'dazar (not inside the instance itself). You can get there without flying, but it's tricky and will probably require a Goblin Glider — if you haven't unlocked flying, you can find video guides online showing you how to navigate to the correct area. If you do have flying, simply fly to the coordinates provided, and once you get there you'll see the tops of a couple trees on the side of the mountain. Underneath the trees you'll find a cave entrance.\n\nRun into the cave, and on the left-hand side you'll see a root growing up against the cave wall. The pebble is right next to it, around |cFFFFFFFF31.9, 35.3.|r\n\nAgain, there's no text when you click on it, so shift+click anywhere in an ATT list to refresh your collection.\n",modelScale=0.5,questID=52818,sourceQuests={52810}}),
o(293840,{coords={{35,54.9,896}},description="|cFFFFFFFFStep 5:|r Head to Drustvar. At the coordinates provided, there is a cave entrance hidden behind a narrow waterfall. If you don't have flying, you'll have to fall or glide down to it from the cliffs above.\n\nHead all the way to the back of the cave. The pebble is hidden inside the skull on the effigy, behind the left eye socket (the right-hand side when you're facing the effigy).\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=52817,sourceQuests={52818}}),
o(293841,{coords={{63.2,21.3,864}},description="|cFFFFFFFFStep 6:|r Head to Vol'dun. At the coordinates provided, there is a very skinny, tall tree sticking out of the rocks. If you have enemy nameplates enabled, you'll see a |ccccc3333Clatterback|r nearby.\n\nYou can sort of fall down behind the tree into the Clatterback's cave. If you're lucky (or careful) he may not attack you, but you might want to use an invisibility potion to protect yourself, because he hits like a truck.\n\nThe pebble is close to the mouth of the cave, hidden behind a small rock, around |cFFFFFFFF63.0, 21.6|r.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=52816,sourceQuests={52817}}),
o(293842,{coords={{68.3,10.5,942}},description="|cFFFFFFFFStep 7:|r Head to Stormsong Valley. At the coordinates provided, there is a cave entrance obscured by some trees. There are some pirates inside, so fight your way to the middle of the cave and you'll find a wheelbarrow housing the next pebble around |cFFFFFFFF67.9, 12.9|r.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=52815,sourceQuests={52816}}),
o(293843,{coords={{39.8,4,863},{54.5,7.3,875}},description="|cFFFFFFFFStep 8:|r Head to Nazmir. There are two coordinates provided, although you may only be able to see one on your map when you start. Head to the southern coordinate and then fly north, into fatigue waters, to the northern coordinate.\n\nUse Underlight Angler or a potion to increase your swim speed, and swim down until you get to a shipwreck. The back of the ship is made of stained glass. In the middle of the glass is a skull with a semicircle of pebbles underneath it. The one you can interact with is the second from the left.\n\n  Shift-click to refresh your collection.",modelScale=0.5,questID=52814,sourceQuests={52815}}),
o(293844,{coords={{37.5,80.3,1161}},description="|cFFFFFFFFStep 9:|r Head to Boralus. At the coordinates provided, there is a large tree in the hedge maze. Behind it is the entrance to a cellar.\n\nOn the left side of the cellar, you'll see two crates stacked up with two barrels stacked to their left and a small chest on their right. The pebble is hidden behind the barrel, around |cFFFFFFFF37.3, 79.7|r.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=52813,sourceQuests={52814}}),
o(293845,{coords={{18.3,7.4,896}},description="|cFFFFFFFFStep 10:|r Head to Drustvar. At the coordinates provided is a cave on the side of a small island (if you don't have flying, you'll have to fall/glide from up above). Don't go into the cave, but hop up on the large rock at the entrance.\n\nThe pebble is on top of the rock, partially obscured by vines. It's hard to see, so you'll probably have to zoom in a bit and jiggle your camera around a little to find it.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=52812,sourceQuests={52813}}),
o(293846,{coords={{75.4,70.7,895}},description="|cFFFFFFFFStep 11:|r Head to Tiragarde Sound. At the coordinates provided, there's a well-hidden cave entrance in the ground. The cave is full of |ccccc3333Clatterbacks|r, but this time they're hidden underground and will jump out at you — if you don't have invisibility potions, be prepared to die.\n\nAgain, the pebble here is very hard to see. It's hidden between a rock and a pile of gore around |cFFFFFFFF74.3, 70.9|r, and it's covered in blood so it doesn't look as pale and bright as the previous pebbles.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=53632,sourceQuests={52812}}),
o(303018,{coords={{80.2,19.2,895}},description="|cFFFFFFFFStep 12:|r The next pebble is also in Tiragarde Sound. At the coordinates provided, there is a cave hidden behind a waterfall. At the back right-hand side of the cave, there is a pillar with a couple of scrolls pinned to it.\n\nThe pebble is very well hidden, underneath the scroll that is unfurled over the ground. It's around |cFFFFFFFF79.6, 18.0|r, and you have to be standing practically on top of it with your camera tilted very far back in order to see it.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=53633,sourceQuests={53632}}),
o(303017,{coords={{10,82.7,1161}},description="|cFFFFFFFFStep 13:|r Head to Boralus. At the coordinates provided, there is a well hidden underwater cave. Its entrance is covered in a layer of seaweed that you can swim through. Head to the little island inside the cave, and on the right you'll see stalagmites on either side of some red kelp./n/nThe pebble is hidden underneath the kelp around |cFFFFFFFF59.6, 41.8|r, and it's another one where you have to really play with your camera angle to find it.\n\nShift+click to refresh your collection.\n",modelScale=0.5,questID=53634,sourceQuests={53633}}),
o(303016,{coords={{45.9,3.7,875},{47.7,-3,875},{55.7,-10.2,875}},description="|cFFFFFFFFStep 14:|r Head to the very northernmost point in Vol'dun. There will be three waypoints on your map, which you may have to zoom out to the continent map to see — south, central, and north.\n\nStart from the southern waypoint, fly to the central waypoint to reset your fatigue, and then head to the final waypoint to find an underwater cave. Again, Underlight Angler or other swim speed increases are probably necessary.\n\nYou can swim into the cave to reset your fatigue again, but the pebble is right inside the entrance. Swim down to the bottom and it's next to a rock and what looks like a small shard of rock, around |cFFFFFFFF55.8, -10.0|r.\n\nThe stone reads:\n\"<Something is carved into the stone.>\n\nHeckler of the Murkiest Thugs, sheathe \nyour\nBat and remove the Keg Cork, Wot?\"\n",modelScale=0.5,questID=52827,sourceQuests={53634}}),
n(141909,{coords={{62.3,22.9,525}},description="|cFFFFFFFFStep 15:|r Head to Frostfire Ridge. You'll find Baa'l at the coordinates provided, in a volcano, just chilling, like you do.\n\nSummon your empowered Uuna to weaken him, and then attack!  Dragonkin pets are a wise choice, but he's very easy to beat post-Uuna Reckoning regardless.\n\nEnjoy your new pet!  Hail Satan!\n",questID=52828,sourceQuests={52827},g={
p(2352,{b=1,itemID=162578,npcID=141941,spellID=277461})}})}})}}),
x(9,{
ah(344577,{awp=90005,cost={{"i",184870,1}},description="Requires |cFF006812Appreciative|r reputation with Ve'nari and a total of 3,500 Stygia.\n\nEnable quest tracking to see all the steps.\n\nPurchase a |cFF0070ddStygia Dowser|r from Ve'nari for 1,500 Stygia.Throughout the secret, harvest every Stygia Nexus you find, as you will eventually need 200 |cFF1eff00Stygia Dust|r and |cFF1eff00Stygia Slivers|r.",displayID=92632,maps={1543},modelScale=1.1,type="s",g={
prof(2811,{
r(350276,{requireSkill=2811,u=5}),
r(350399,{requireSkill=2811,u=5})}),
i(185618),
i(185617),
n(177073,{coords={{23.1,68.3,1543},{23.7,75.3,1543}},description="Click the first grapple point at |cFFFFFFFF23.1, 68.3|r and the next grapple point at |cFFFFFFFF23.7, 75.3|r.\n\nUse your |cFF0070ddStygia Dowser|r when you are on the platform covered with green fog, and you will be transformed into a spirit.\n\nEach of the spikes on the platform is topped with a glowing rune. To open the chest, match the runes in the puzzle to the positioning of the runes atop the spikes. With your back to the grapple point, start with the rune to your left and continue, moving clockwise.\n\n|cffde1c1cIf you match the runes incorrectly, you will die and get a debuff that prevents you from trying the puzzle again for 2 hours.|r",questID=63611,g={
i(185056,{b=1})}}),
i(185353,{coords={{24.6,12.5,1543},{27.6,17.3,1543}},cost={{"i",185350,1}},description="Requires a |cFF0070ddPartial Rune Codex|r, which you can purchase from Ve'nari for 2,000 Stygia after completing the first step of the secret.\n\nThe coordinates are to the teleport pad that takes you to Dartanos's platform, and the page is all the way at the back on a table, behind where the rare spawns.",questID=63643,sourceQuests=a[49],spellID=349984,type="ihqt"}),
i(185351,{coords={{48.8,84.7,1543}},cost={{"i",185350,1}},description="Requires a |cFF0070ddPartial Rune Codex|r, which you can purchase from Ve'nari for 2,000 Stygia after completing the first step of the secret.\n\nThe coordinates are to a cave entrance, and the page is at the back of the cave on the left side.",questID=63641,sourceQuests=a[49],spellID=349982,type="ihqt"}),
i(185352,{coords={{27.2,72.3,1543}},cost={{"i",185350,1}},description="Requires a |cFF0070ddPartial Rune Codex|r, which you can purchase from Ve'nari for 2,000 Stygia after completing the first step of the secret.\n\nThe page is on the right side of Thanassos' platform.",questID=63642,sourceQuests=a[49],spellID=349983,type="ihqt"}),
i(185632,{description="Received after collecting and using all the Rune Codex Pages.",questID=63668,sourceQuests={63641,63642,63643},type="ihqt"}),
i(185473,{b=1,crs={166398},description="Used for the |cFFb19cd9Bound Shadehound|r secret mount. Only available to characters who have collected the |cFFa335eeIntact Rune Codex|r.",questID=63667,sourceQuests={63668},type="ihqt"}),
n(177392,{coords={{20.2,67,1543},{23,68.4,1543}},cost={{"i",185474,1}},description="Once you have the |cFFa335eeIntact Rune Codex|r, you can collect |cFFa335eeSoulforger's Tools|r from the rare mob Soulforger Rhovus and finish collecting all your |cFF1eff00Stygia Dust|r and |cFF1eff00Stygia Slivers|r (200 of each).\n\nGrapple all the way up to the Soulsteel Anvil — the first grapple point is at |cFFFFFFFF23.0, 68.4|r, and the anvil is at |cFFFFFFFF20.2, 67.0|r.\n\nCraft 20 |cFF0070ddStygia Bar|r and 1 |cFFa335eeArmored Husk|r.",questID=63707,sourceQuests={63667},g={
i(185630,{cost={{"i",185617,10},{"i",185618,10}}}),
i(185474,{b=1,cost={{"i",185630,20},{"i",185473,1}}})}}),
n(177195,{coords={{23.2,46.8,1543}},description="Find a Stray Soul patting along Gorgoa, the River of Souls. Interact with it, and you will receive a |cFFa335eeWilling Wolf Soul|r.\n\nThe coordinates are near the beginning of the soul's path, where it respawns, but if no one interacts with the soul it can pat all the way to |cFFFFFFFF49.8, 16.4|r.",questID=63666,sourceQuests={63707},g={
i(185471)}}),
i(185475,{cost={{"i",185471,1},{"i",185474,1}},f=55,sourceQuests={63666}}),
q(63684,{description="Once you have the |cFFa335eeArmored Husk|r and the |cFFa335eeWilling Wolf Soul|r, click on the Binding Altar at |cFFFFFFFF45.2, 48.3|r.\n\n|cffde1c1cAs soon as you summon the mount, it will start running, so make sure you're facing towards the interior of the zone and that you won't run off the edge and into the void!|r\n\nOnce you're mounted, your hotkeys will be replaced with runes. Use them in the order provided by your |cFFa335eeCrumbling Stele|r, and you will receive the mount!",lvl=60,providers={{"i",185475}},g={
mnt(344577,{b=1,itemID=184168}),
i(185616,{spellID=350274})}})}}),
ah(329900,{awp=90001,displayID=96259,modelScale=1.1,type="s",g={
q(60605,{coords={{18.4,88.2,116}},providers={{"o",352909}},g={
i(5996,{f=55,lvl=4,spellID=7178})}}),
q(60606,{coords={{43.5,13.9,114}},qgs={25197},sourceQuests={60605},g={
i(180010)}}),
q(60614,{coords={a[20]},qgs=a[17],sourceQuests={60606},g={
i(180025)}}),
q(60615,{coords={a[20]},qgs=a[17],sourceQuests={60614}}),
q(60616,{coords={a[19]},qgs=a[18],sourceQuests={60615},g={
i(180026)}}),
q(60617,{coords={a[19]},qgs=a[18],sourceQuests={60616}}),
q(60619,{coords={a[19]},qgs=a[18],sourceQuests={60617},g={
i(180031),
i(180033),
i(180032)}}),
q(60620,{coords={a[19]},qgs=a[18],sourceQuests={60619},g={
p(2888,{b=1,itemID=180034,npcID=169514,spellID=329900})}})}}),
ah(186553,{awp=90105,displayID=100676,modelScale=1.1,type="i",g={
q(64167,{coords={a[45]},qgs=a[59],g={
i(187128,{spellID=356054})}}),
q(64196,{coords={a[45]},qgs=a[59],sourceQuests={64167},g={
i(186695,{spellID=354656})}}),
q(64203,{coords={a[55]},qgs=a[21],sourceQuests={64196},g={
i(186730)}}),
q(64215,{coords={a[55]},qgs=a[21],sourceQuests={64203},g={
i(186772,{spellID=354851})}}),
q(64237,{coords={a[55]},qgs=a[21],sourceQuests={64215},g={
p(3107,{b=1,itemID=186553,npcID=179140,spellID=353460})}})}}),
ah(192485,{awp=90205,type="i",g={
n(162804,{coords={{46.9,41.7,1543}},description="If you talk to Ve'nari at her usual location in her hideout in the Maw, you'll see that she is an echo and no longer physically present. Talking to her reveals an extra dialogue option, where she will mention that she has finally found Zereth Mortis.",questID=65470}),
n(185083,{coords={{47.4,88.6,1970}},description="After talking to Ve'nari's echo in her hideout, head to the Creation Catalyst in Zereth Mortis. There, you will find Ve'nari's charred corpse in the center of the room. Interact with it, and select the dialogue option to take a closer look.",questID=65488,sourceQuests={65470}}),
h(-39,{description="You should receive a letter from Ve'nari with the toy attached 5 days after interacting with her decoy corpse in Zereth Mortis.",sourceQuests={65488},g={
toy(192485,{b=1})}})}})}),
x(10,{
ah(206040,{awp=100100,type="i",g={
h(-47,{maps={2022,2023,2024,2025,2151},g={
p(3581,{b=1,description="You need to collect all 15 motes to receive this pet. Requires Quest Tracking to see the motes' Location.",itemID=206040,npcID=205649,spellID=411800})}}),
h(-56,{
n(205876,{coords={{61.2,64.4,2023}},nomerge=1,questID=76182}),
n(205876,{coords={{34.3,58.7,2023}},nomerge=1,questID=76183}),
n(205876,{coords={{62.7,13.2,2025}},nomerge=1,questID=76189}),
n(205876,{coords={{61.2,40.7,2025}},nomerge=1,questID=76190}),
n(205876,{coords={{72.9,55.1,2025}},nomerge=1,questID=76191}),
n(205876,{coords={{70.9,69.8,2025}},nomerge=1,questID=76192}),
n(205876,{coords={{62.6,85.1,2025}},nomerge=1,questID=76193}),
n(205876,{coords={{78.8,34.1,2024}},nomerge=1,questID=76178}),
n(205876,{coords={{61.6,71.4,2024}},nomerge=1,questID=76179}),
n(205876,{coords={{36.4,56.5,2024}},nomerge=1,questID=76180}),
n(205876,{coords={{8.2,53.1,2024}},nomerge=1,questID=76181}),
n(205876,{coords={{36,34.2,2151}},nomerge=1,questID=76188}),
n(205876,{coords={{22.8,88.4,2022}},nomerge=1,questID=76184}),
n(205876,{coords={{24.1,55.6,2022}},nomerge=1,questID=76185}),
n(205876,{coords={{58.5,67.7,2022}},nomerge=1,questID=76186}),
n(205876,{coords={{63.9,44.8,2022}},nomerge=1,questID=76187})})}}),
ah(376873,{awp=100002,cost={{"i",202042,1}},description="***Debugg Mode enabled is required to see all the steps. Fishing is required for this Secret!***\n\nYou need to buy an Immaculate Bag of Swog Treasures to get the Aquatic Shades, which costs 1 Gold Coin of the Isles. If you're unlucky, this means fishing up a total of 75 Copper Coins of the Isles to trade up!",displayID=102074,modelScale=0.8,type="s",g={
q(72676,{coords={{19.6,36.5,2022}},description="Head to The Bubble Bath Dive Bar, off the coast of The Waking Shores. While wearing the Aquatic Shades, find an empty dance floor and walk onto it; you'll receive the debuff Dance Dance 'Til You're Dead. Stay on the dance floor until this debuff wears off."}),
o(385001,{coords={a[23]},description="Once you wake up from your dance hangover, loot the Empty Fish Barrel. It's directly in front of you.",sourceQuests=a[54],g={
i(202061,{requireSkill=356,sourceQuests=a[54],spellID=396616})}}),
i(202061,{cost={{"i",202072,100}},description="Time to go fishing! You'll need to fill up the barrel with various fish from around The Dragon Isles.",requireSkill=356,sourceQuests=a[54],spellID=396616,g={
i(202072,{b=1,coords={{12.4,50,2024}},description="You'll need 100 of these fish. They can be found in open waters in the Azure Span. After using them with the barrel, you'll receive a Half-Filled Fish Barrel."})}}),
i(202066,{cost={{"i",202073,25}},description="Now that your barrel is half full, the fishing gets harder. You're looking for lava fish now.",requireSkill=356,sourceQuests=a[54],spellID=396699,g={
i(202073,{b=1,coords={{35.8,64.6,2022}},description="You'll need 25 of these fish. Keep in mind, they're rarer drops, so this will take longer than the Frigid Floe Fish."})}}),
q(72808,{cost={{"i",202074,1}},description="Only one fish to go! Top it off with an epic fish from Algeth'ar Academy.",requireSkill=356,sourceQuests=a[54],g={
i(202074,{b=1,coords={{56,44.5,2025}},description="Just one! But it'll take a while. Having good Perception on your Profession gear may help."}),
i(202068,{spellID=396698})}}),
i(202069,{coords={a[23]},description="Head back to where you originally picked up the empty barrel, and place the Overflowing Fish Barrel on the ground.",spellID=396703}),
q(72738,{coords={a[23]},lvl=10,qgs={199563},sourceQuests={72808},g={
mnt(376873,{b=1,itemID=198870,lvl=10})}})}})}),
ah(193373,{awp=100007,description="Below is a detailed explanation on how to obtain the Phoenix Wishwing pet.\n\n***This secret requires you to have debug mode enabled to see the steps. To enable debug mode right click the ATT icon on the minimap, navigate to the general tab and check the \"|Cff15abffDebug Mode|r |cFFFFFFFF(Show Everything)|r\" box.***",type="i",g={
o(13000040,{description="|cFFFFFFFFStep 1:|r Obtain the Phoenix Ash Talisman from Zektar in Spires of Arak.",providers={{"i",199203}},g={
o(13000041,{description="|cFFFFFFFFStep 1A:|r Obtain the Glittering Phoenix Ember from Alysrazor in Firelands Timewalking.",providers={{"i",199099}}}),
o(13000042,{description="|cFFFFFFFFStep 1B:|r Obtain 20 Inert Phoenix Ash from fire elementals in Un'Goro Crater.",providers={{"i",199092}}}),
o(13000043,{description="|cFFFFFFFFStep 1C:|r Obtain 10 Sacred Phoenix Ash from cookpots in Spires of Arak.",providers={{"i",199097}}})}}),
o(13000044,{description="|cFFFFFFFFStep 2:|r Obtain 20 Ash Feathers spawned by Griftah's Ash Feather Amulet.",providers={{"i",202062}}}),
o(13000045,{description="|cFFFFFFFFStep 3:|r Obtain 15 Smoldering Phoenix Ash from phoenixes around the Dragon Isles.",providers={{"i",199080}}}),
q(72798,{coords={{16.1,62.6,2022}},cost={{"i",199203,1},{"i",199080,15},{"i",202062,20}},lvl=10,qgs={196214},repeatable=1,sourceQuests={70779},g={
p(3292,{b=1,itemID=193373,npcID=189117,spellID=375084})}})}}),
h(-503,{awp=50004,description="Multi-expansion secret to obtaining Dog as a companion pet",g={
q(30526,{coords={{42.4,50.2,376}},lvl=15,minReputation={1272,21600},qgs={59533},g={
i(80144),
de(4488,{awp=110207,itemID=248663,sourceQuests={30526},spellID=1247392})}}),
q(46952,{awp=70200,coords={{58.8,53.8,582},{44.6,84.8,590}},description="You need to have an Herb Garden in your garrison. Show the Pebble to Dog by speaking with them. Do not throw the pebble at Dog.",qgs={87553},qis={147420},sourceQuests={30526,34193,36404}}),
q(83093,{awp=110002,coords={a[29]},description="Interacting with the bowl near Dalaran's crash will send Dog running to you.",providers={{"o",452438}},sourceQuests={46952}}),
q(83094,{awp=110002,coords={a[29]},description="Interact with Dog to get them as a pet.",qgs={225486},sourceQuests={83093},g={
p(4596,{b=1,itemID=224766,npcID=225537,spellID=453741})}})}}),
ah(156798,{description="Below is a detailed explanation on how to obtain The Hivemind mount.\n\n***This secret requires you to have debug mode enabled to see the steps. To enable debug mode right click the ATT icon on the minimap, navigate to the general tab and check the \"|Cff15abffDebug Mode|r |cFFFFFFFF(Show Everything)|r\" box.***",displayID=88835,modelScale=1.1,type="i",g={
o(13000000,{coords={{65.6,69.3,594}},description="|cFFFFFFFFSTEP 1:|r Purchase |cFFFFD700Talisman of True Treasure Tracking|r. This can be bought from |cFFFFD700Griftah|r in |cFFFFD700Shattrath City|r at |cFFFFFFFF65.6, 69.3|r for 35g\n",g={
i(27944,{f=51,spellID=260928})}}),
o(13000001,{description="|cFFFFFFFFSTEP 2:|r You must wear the talisman to see/interact with many objects in this secret."}),
o(13000032,{description="|cFFFFFFFFSTEP 3:|r Hivemind requires a five-man group. Four members must each collect a different monocle before the group can continue with the secret.",g={
ah(156724,{description="Obtaining this monocle requires reading many letters spread around Azeroth.\n\n***You need to interact with all letters in the order listed to progress through the puzzle!***\n",icon=133146,type="i",g={
o(280815,{coords={{65.6,69.3,111}},description="|cFFFFFFFFLetter 1:|r The start of this puzzle is the |cFFFFD700Letter from Ms. Graham|r with a blue aura behind |cFFFFD700Griftah|r, which can be interacted with. Click it. The letter reads...\r\r|cFFFFFFFFThe key Factor in successul Wasp Ignition is a solid Ad campaign.|r\n",model=1661948,questID=40397}),
o(280836,{coords={{57.4,27.9,650}},description="|cFFFFFFFFLetter 2:|r Go to |cFFFFFFFF57.4, 27.9|r in |cFFFFD700Highmountain|r. The |cFFFFD700Letter from Ms. Graham|r is located in one of the tents on the box next to the pumpkin. Click it. The letter reads...\n\n|cFFFFFFFFOf all of Gai's cures for Nature, the most liberating is Death.|r\n",model=1661948,questID=40314,sourceQuests={40397}}),
o(280837,{coords={{47.4,75,47}},description="|cFFFFFFFFLetter 3:|r Go to |cFFFFD700Karazhan (Old)|r in |cFFFFD700Duskwood|r. The third letter is located in |cFFFFD700Medivh's Chambers|r, located after the Chess Event, in the staircase leading to Prince Malchezaar. The letter is on the chair Medivh used to write his scrolls and spells, literally the seat of the guardian. Click it. The letter reads...\n\n|cFFFFFFFFI sat Dumbfounded, watching As the most Subtle Rat reached for the cheese a third time in under an hour.|r\n",model=1661948,questID=40404,sourceQuests={40314}}),
o(280838,{coords={{45.7,24,64}},description="|cFFFFFFFFLetter 4:|r Go to |cFFFFD700Razorfen Downs|r in |cFFFFD700Thousand Needles|r. The next |cFFFFD700Letter from Ms. Graham|r is located on a hay box behind the second-to-last boss, |cFFFFD700Death Speaker Blackthorn|r. will spawn on the table. Click it. The note reads...\r\r|cFFFFFFFFMs. Sin will accompany you down The longest Streets Of the underworld.|r\n",model=1661948,questID=40252,sourceQuests={40404}}),
o(280842,{coords={{44.3,47.3,198}},description="|cFFFFFFFFLetter 5:|r Go to |cFFFFFFFF44.3, 47.3|r in |cFFFFD700Mount Hyjal|r. The next |cFFFFD700Letter from Ms. Graham|r is on a table at the highest floor of the tree that serves as her shrine. Click it. The note reads...\r\r|cFFFFFFFFThe Elite champions will rule the World with the mightiest F.C.|r\n",model=1661948,questID=40293,sourceQuests={40252}}),
o(280843,{coords={{70.8,73.3,118}},description="|cFFFFFFFFLetter 6:|r Go to |cFFFFFFFF70.8, 73.3|r in |cFFFFD700Icecrown|r. The next |cFFFFD700Letter from Ms. Graham|r is on top of a spike at the dam. Click it. The note reads...\r\r|cFFFFFFFFRe: Codex of mastering Sine waves.|r\n",model=1661948,questID=40288,sourceQuests={40293}}),
o(280844,{coords={{37.7,63,388}},description="|cFFFFFFFFLetter 7:|r Go to |cFFFFFFFF37.7, 63.0|r in |cFFFFD700Townlong Steppes|r. The final |cFFFFD700Letter from Ms. Graham|r is located near a bell on the back part of the temple. Click it. The note reads...\r\r|cFFFFFFFFMice look so sad when they have a Cleft lip.\n\nHoping you succeed,\n~Ana|r\n",model=1661948,questID=50187,sourceQuests={40288}}),
o(280845,{coords={{27.6,27.1,114}},description="|cFFFFFFFFThe Gift:|r Go to |cFFFFFFFF27.6, 27.1|r in |cFFFFD700Coldarra, Borean Tundra|r. The |cFFFFFFFFBlue Crystal Monocle|r is in a container on the highest Nexus ring.\n",questID=50181,sourceQuests={50187},g={
s(93108,156724,{b=1,f=2,spellID=260931})}})}}),
ah(156727,{coords={{35.3,33.6,542}},description="Go to |cFFFFD700Skyreach|r in |cFFFFD700Spires of Arak|r. Behind the final boss of the instance, |cFFFFD700High Sage Viryx|r, you will find a console that you are able to interact with. Use the four glowing yellow balls to move the sun across the board (the north ball, for instance, makes the sun move up).\n\nThe directions and order in which you must move the sun are:\n\n|cFFFFFFFFRight -> Up -> Down -> Up -> Right -> Right -> Up -> Left -> Down -> Up -> Left -> Down|r\n\nLoot the chest that spawns to obtain the |cFFFFFFFFGreen Crystal Monocle|r\n",icon=133146,type="i",g={
o(280883,{questID=50185,g={
s(93111,156727,{b=1,f=2,spellID=260933})}})}}),
ah(156725,{description="Fish NPCs across Vashj'ir sell sea-themed currencies which need to be exchanged between the various NPCs in order to obtain the currencies required to purchase the |cFFFFD700Red Crystal Monocle|r.\n\nThe currencies expire after a period of time so it is advised that you purchase the items in the order listed.\n",type="i",g={
o(13000002,{description="Exchange the following items with the NPC until you receive 5 |cFFFFD700Scintillating Murloc Skin Lotion|r.\n",g={
o(13000003,{description="Exchange the following items with the NPC until you receive 50 |cFFFFD700Glittergill Glitter|r.\n",g={
o(13000004,{coords={a[34]},description="|cFFFFFFFFStep 1:|r Purchase 500 |cFFFFD700Seashell|r from |cFFFFD700Sir Finley Mrrgglton|r at |cFFFFFFFF44.6, 20.2|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\nThe NPC is at surface level on one of the islets, atop a watchtower.\n"}),
o(13000005,{coords={a[33]},description="|cFFFFFFFFStep 2:|r Purchase 100 |cFFFFD700Cavity-Free Great Shark Tooth|r from |cFFFFD700Volatile Violetscale|r at |cFFFFFFFF39.9, 77.6|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\nThe NPC is swimming around near the sea floor of the Underlight Canyon.\n"}),
o(13000006,{coords={{54.3,24.5,205}},description="|cFFFFFFFFStep 3:|r Purchase 50 |cFFFFD700Razoreel Larva|r from |cFFFFD700Manta Stargazer|r at |cFFFFFFFF54.3, 24.5|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\nThe NPC is near the surface, hovering around Shimmering Grotto.\n"}),
o(13000007,{coords={{69,47.8,205}},description="|cFFFFFFFFStep 4:|r Purchase 250 |cFFFFD700Well Fed Doctor Fish|r from |cFFFFD700Lil' Whaley|r at |cFFFFFFFF69.0, 47.86|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\nThe NPC is close to the sea floor, next to the Ruins of Thelserai Temple.\n"}),
o(13000008,{coords={a[50]},description="|cFFFFFFFFStep 5:|r Purchase 10 |cFFFFD700Freshly Molted Crab Skin|r from |cFFFFD700Gloomy Bluefin|r at |cFFFFFFFF65.9, 43.2|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\nThe NPC is on the sea floor, swimming to the southwest of the Abyssal Breach.\n"}),
o(13000009,{coords={{60.3,58.5,201}},description="|cFFFFFFFFStep 6:|r Purchase 50 |cFFFFD700Glittergill Glitter|r from |cFFFFD700Ol' Fishbreath|r at |cFFFFFFFF60.3, 58.5|r in |cFFFFD700Kelp'thar Forest|r, Vashj'ir.\nThe NPC is close to the surface, around some plankton in Gnaws' Boneyard.\n"})}}),
o(13000010,{description="Exchange the following items with the NPC until you receive 40 |cFFFFD700Symbiotic Plankton|r.\n",g={
o(13000011,{coords={a[34]},description="|cFFFFFFFFStep 1:|r Purchase 80 |cFFFFD700Seashell|r from |cFFFFD700Sir Finley Mrrgglton|r at |cFFFFFFFF44.6, 20.2|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is at surface level on one of the islets, atop a watchtower.\n"}),
o(13000012,{coords={a[50]},description="|cFFFFFFFFStep 2:|r Purchase 2 |cFFFFD700Giant Giant Toenail Clipping|r from |cFFFFD700Gloomy Bluefin|r at |cFFFFFFFF65.9, 43.2|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is on the sea floor, swimming to the southwest of the Abyssal Breach.\n"}),
o(13000013,{coords={{45.7,17.3,204}},description="|cFFFFFFFFStep 3:|r Purchase 4 |cFFFFD700Makrura Eye|r from |cFFFFD700Little Carp|r at |cFFFFFFFF45.8, 17.0|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is near the sea floor, swimming around Deepfin Ridge.\n"}),
o(13000014,{coords={a[33]},description="|cFFFFFFFFStep 4:|r Purchase 1 |cFFFFD700Accidentally-Severed Seahorse Fin|r from |cFFFFD700Volatile Violetscale|r at |cFFFFFFFF39.9, 77.6|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is swimming around near the sea floor of the Underlight Canyon.\n"}),
o(13000015,{coords={{53.8,89.1,205}},description="|cFFFFFFFFStep 5:|r Purchase 3 |cFFFFD700Shiny Sea Serpent Scale|r from |cFFFFD700Crimson Angerfish|r at |cFFFFFFFF53.8, 89.1|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is close to the sea floor, swimming to the left of Biel'aran Ridge.\n"}),
o(13000016,{coords={{53.8,23.4,205}},description="|cFFFFFFFFStep 6:|r Purchase 40 |cFFFFD700Symbiotic Plankton|r from |cFFFFD700Manta Stargazer|r at |cFFFFFFFF53.8, 23.4|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is near the surface, hovering around Shimmering Grotto.\n\nYou only need 2 scales, the spare can be left to despawn.\n"})}}),
o(13000017,{coords={a[34]},description="Exchange the |cFFFFD700Glittergill Glitter|r and |cFFFFD700Symbiotic Plankton|r for 5 |cFFFFD700Scintillating Murloc Skin Lotion|r with |cFFFFD700Sir Finley Mrrgglton|r at |cFFFFFFFF44.6, 20.2|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is at surface level on one of the islets, atop a watchtower.\n"})}}),
o(13000018,{description="Exchange the following items with the NPC until you receive 5 |cFFFFD700Potent Gastropod Gloop|r.\n",g={
o(13000019,{coords={a[34]},description="|cFFFFFFFFStep 1:|r Purchase 300 |cFFFFD700Seashell|r from |cFFFFD700Sir Finley Mrrgglton|r at |cFFFFFFFF44.6, 20.2|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is at surface level on one of the islets, atop a watchtower.\n"}),
o(13000020,{coords={a[47]},description="|cFFFFFFFFStep 2:|r Purchase 30 |cFFFFD700Vantus Black Squid Ink|r from |cFFFFD700Ol' Fishbreath|r at |cFFFFFFFF60.6, 60.0|r in |cFFFFD700Kelp'thar Forest|r, Vashj'ir.\n\nThe NPC is close to the surface, around some plankton in Gnaws' Boneyard.\n"}),
o(13000021,{coords={{15.3,83.5,204}},description="|cFFFFFFFFStep 3:|r Purchase 30 |cFFFFD700Super Slick Eel Slime|r from |cFFFFD700The Blackfish|r at |cFFFFFFFF15.3, 83.5|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is near the southwest corner of the Abandoned Reef.\n"}),
o(13000022,{coords={a[33]},description="|cFFFFFFFFStep 4:|r Purchase 3 |cFFFFD700Rock-Encrusted Whelk Shell|r from |cFFFFD700Volatile Violetscale|r at |cFFFFFFFF39.9, 77.6|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is swimming around near the sea floor of the Underlight Canyon.\n"}),
o(13000023,{coords={{45.8,17,204}},description="|cFFFFFFFFStep 5:|r Purchase 5 |cFFFFD700Potent Gastropod Gloop|r from |cFFFFD700Little Carp|r at |cFFFFFFFF45.8, 17.0|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is near the sea floor, swimming around Deepfin Ridge.\n"})}}),
o(13000024,{description="Exchange the following items with the NPC until you receive 5 |cFFFFD700Captured Cavitation Bubble|r.\n",g={
o(13000025,{coords={a[34]},description="|cFFFFFFFFStep 1:|r Purchase 1500 |cFFFFD700Seashell|r from |cFFFFD700Sir Finley Mrrgglton|r at |cFFFFFFFF44.6, 20.2|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is at surface level on one of the islets, atop a watchtower.\n"}),
o(13000026,{coords={{69.8,46.6,205}},description="|cFFFFFFFFStep 2:|r Purchase 300 |cFFFFD700Very Pretty Coral|r from |cFFFFD700Lil' Whaley|r at |cFFFFFFFF69.8, 46.6|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is close to the sea floor, next to the Ruins of Thelserai Temple.\n"}),
o(13000027,{coords={a[47]},description="|cFFFFFFFFStep 3:|r Purchase 100 |cFFFFD700Iridescent Shimmerray Skin|r from |cFFFFD700Ol' Fishbreath|r at |cFFFFFFFF60.6, 60.0|r in |cFFFFD700Kelp'thar Forest|r, Vashj'ir.\n\nThe NPC is close to the surface, around some plankton in Gnaws' Boneyard.\n"}),
o(13000028,{coords={{53.8,88.4,205}},description="|cFFFFFFFFStep 4:|r Purchase 20 |cFFFFD700Luxurous Luxscale Scale|r from |cFFFFD700Crimson Angerfish|r at |cFFFFFFFF53.8, 88.4|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir.\n\nThe NPC is close to the sea floor, swimming to the left of Biel'aran Ridge.\n"}),
o(13000029,{coords={{16,82.2,204}},description="|cFFFFFFFFStep 5:|r Purchase 5 |cFFFFD700Captured Cavitation Bubble|r from |cFFFFD700The Blackfish|r at |cFFFFFFFF16.0, 82.2|r in |cFFFFD700Abyssal Depths|r, Vashj'ir.\n\nThe NPC is near the southwest corner of the Abandoned Reef.\n"})}}),
o(13000030,{coords={a[34]},description="Exchange the 3 items with |cFFFFD700Sir Finley Mrrgglton|r at |cFFFFFFFF44.6, 20.2|r in |cFFFFD700Shimmering Expanse|r, Vashj'ir for the |cFFFFD700Red Crystal Monocle|r.\n\nThe NPC is at surface level on one of the islets, atop a watchtower.\n",g={
s(93109,156725,{b=1,f=2,spellID=260929})}})}}),
ah(156726,{description="Go to |cFFFFD700Halls of Origination|r in |cFFFFD700Uldum|r. After the first boss in Halls of Origination, there is a large room with an elevator. While wearing the |cFFFFD700Talisman of True Treasure Tracking|r, you can click a Stellar Refraction Device that spawns colorful constellations in the room below the elevator.\n\nTo access the puzzle, head north from the elevator and there will be an open way with a staircase to the floor below.\n\nYour objective here is to transform all constellations to the same color. To do this, there are three special refractors that change their colors when clicked on.\n\n|cFFFFD700The Hivemind HoO Puzzle Helper|r addon is recommended to complete this step, as it simply requires you to input the current colors of the constellations, then gives you directions on how to click the refractors to solve it.\n\nWhen all constellations have the same color, a chest will spawn on top of the Stellar Refraction Device containing the |cFFFFFFFFYellow Crystal Monocle|r.\n\n|cFFCC33FFBe careful to not accidentally click the Refraction Device when looting the monocle, as this will restart the puzzle and despawn the chest|r.\n",icon=133146,providers={{"i",27944}},type="i",g={
o(280886,{questID=50183,g={
s(93110,156726,{b=1,f=2,sourceQuests={50183},spellID=260930})}})}})}}),
o(13000033,{description="|cFFFFFFFFSTEP 3:|r Hivemind requires a five-man group. Four members must each collect a different monocle before the group can continue with the secret. You must be in a party and have the same warmode. Four party members with different monocles must go to four different withered in suramar while one stay in Dalaran",g={
n(132595,{coords={a[52]},description="Red Monocle",providers={{"i",156725}}}),
n(132596,{coords={a[52]},description="Blue Monocle",providers={{"i",156724}}}),
n(132597,{coords={a[52]},description="Green Monocle",providers={{"i",156727}}}),
n(132598,{coords={a[52]},description="Yellow Monocle",providers={{"i",156726}}}),
o(280903,{description="The person in Dalaran have to pick up this Toy and will take random damage while doing so. It's important that this TOTAL(Damage+Absorbs+Overkill) damage is recorded."})}}),
o(13000034,{description="The damage the person took from taking the cat toy is the code. Each cat represent a one order of magnitude in the following order: Mrs. Fluffymuffins > Shadow > Mew > Ash > Bella and each pet counts as one.",g={
n(132599,{coords={{50,69,762}}})}}),
o(13000035,{description="There multiple solutions to this puzzle. One of them is: First F is jumping onto the platform at the center, Directions: F = forward, L = left, R = right, B = back.\n1 FF\n2 FLF\n1 F\n3 FFRR\n4 FL\n5 F\n2 L\n4 F\n2 L\n4 LF\n2 FL\n3 B\n5 FRRR\n3 F\n5 F\n1 RF\n3 BFR\n1 FL\n4 F\n2 BF\n5 F\n2 BF\n5 R\n3 F\n1 FR\n2 FR\n4 F\n2 LF\n4 F\n1 RF\n3 L\n4 F\n3 FF\n5 F\n1 L\n4 R\n5 L\n2 F\n4 F\n5 FF\n1 F\n3 L\n5 RF\n4 F\n1 R\n5 L\n1 F\n2 F\n3 Jump off! (leave vehicle and fall, only this person!).\n3 START AT FAR LEFT PLATFORM (Jump onto it).\n3 F\n2 F\n3 FFF\n2 B\n4 R\n5 F\n2 FRF\n3 FFFF"}),
o(13000036,{description="First identify the 5 people in your group who can cross with whom;\nPerson A = can make it across with any duo or make it across with 1 specific trio\nPerson B = can make it across with person A in a duo or the specific trio\nSo the specific trio will be Person A, B, and either (C, D, or E) and you'll have to do some trial and error to identify who the last person is.Person C, D, E = can all can make it across with person A in a duo BUT like I said, 1 of these people will also be the last person in the specific trio (once you've identified them, just call them person C, from there person D and E don't matter)\n1. Person A, B, and C get on and go across.\n2. Person C gets off on other side, A and B go back across.\n3. Person B gets off at the start and A and D go back.\n4. Person D gets off on other side and person A and C come back to start.\n5. Person B gets on with person A and C and they travel back to the finish.\n6. Person C gets off at finish, person A and B go back to start.\n7. Person B gets off, person E gets on with person A.\n8. Person E gets off at finish, person A and C go back to the start.\n9. Person B gets on with A and C and go to finish."}),
o(13000037,{description="Each player needs to take one position each around the circle.",g={
mnt(261395,{b=1,itemID=156798,lvl=10})}})}}),
n(159783,{description="***Debug Mode is required to see all the steps.***\n",g={
q(58076,{coords={{17.4,49.3,63}},description="|cFFFFFFFFStep 1:|r Go to |cFFFFFFFF17.4, 49.3|r in Ashenvale. Speak with |cFFFFD700Amara Lunastar|r and follow her dialogue about her cat.\n",providers={{"n",159799}},type="hqt"}),
q(58098,{coords={{44.2,53,37}},description="|cFFFFFFFFStep 2:|r Go inside the house at |cFFFFFFFF44.2, 53.0|r in Elwynn Forest to find the |cFFFFD700Empty Dish|r.\n",DisablePartySync=1,lc={1,"questID",58099},providers={{"o",339211}},sourceQuests={58076},type="hqt"}),
q(58099,{coords={{46.7,70.1,42}},description="|cFFFFFFFFStep 3:|r This step requires collecting various meats throughout |cffffd200Return to Karazhan|r and placing them in the Opera Hall to mimic a section of the Amara's Wish sheet music.\n\n|cffde1c1cOnce the items are picked up, you have 5 minutes to place them into the puzzle. Once placed, they despawn after 5 minutes and 20 seconds. Because of these time limits, it may be wise to ensure you have cleared the trash in the dungeon and have acquainted yourself with the locations of all the meats you need to pick up.\n\nTurn on Debug Mode to see descriptions for the locations of each meat and how to place them in the correct order!|r\n\nYou will need to collect items from Moroes' room as well as the hallways near Maiden of Virtue, and then take the items back to the audience area of the Opera Hall to place them.\n",providers={{"n",160370},{"n",160371},{"n",160372},{"n",160373},{"n",160374}},sourceQuests={58098},type="hqt",g={
i(173787,{b=1,description="Two are required.\n\n|cFFFFFFFF1.|r The first Fishy Bits can be found in the hallway prior to Maiden of Virtue. Near the middle of hall on the left side, there is a doorway flanked by two lion statues. The Fishy Bits are just past the lion statues and before the left-hand bust directly after them, against the wall.\n\n|cFFFFFFFF2.|r The second Fishy Bits can be found in Moroes' room, very close to the boss's platform. It's between the bottom right corner of the platform and the upper left corner of the small right-hand table.\n",npcID=160374,spellID=312285}),
i(173780,{b=1,description="Two are required.\n\n|cFFFFFFFF1.|r Progress through the dungeon, killing the Opera boss, and head towards Maiden of Virtue. When you exit the Opera Hall, in the area before you turn towards Maiden, there is a wide hallway with two rugs, one red and one purple. The first Marbled Steak can be found on the right-hand edge of the purple rug.\n\n|cFFFFFFFF2.|r The second Marbled Steak is just before Maiden of Virtue in the last little room off to the left of the hallway. The Marbled Steak is in the upper-left corner of the antechamber, behind what looks like a very large, high-backed chair.\n",npcID=160370,spellID=312278}),
i(173783,{b=1,description="Two are required.\n\n|cFFFFFFFF1.|r The first Juicy Drumstick can be found close to the second Marbled Steak, in the last room before Maiden of Virtue. Head all the way into the room, and you will see the Juicy Drumstick on an ottoman in front of another high-backed chair. It's next to a tall candelabra and a portrait of a woman.\n\n|cFFFFFFFF2.|r The second Juicy Drumstick can be found in Moroes' room, in front of the boss's platform. It's closer to the small left-hand table, near the bottom edge of the big black and gold carpet.\n",npcID=160371,spellID=312281}),
i(173779,{b=1,description="Can be found about halfway down the hallway prior to Maiden of Vigilance. There is a section on the right-hand side with a rectangular table and three chairs between two bookshelves, all covered in cobwebs. The Meaty Morsel is on a tiny round table between the first bookshelf and chair.\n",npcID=160373,spellID=312277}),
i(173777,{b=1,description="Can be found in Moroes' room, on the right side of the long table. There are a couple on the table, but the easiest one to spot is on a gold platter sitting between a large roast pig and fish.\n",npcID=160372,spellID=312275}),
o(9999921,{description="After you have all the meats collected, head back to the audience area of the Opera Hall. To orient yourself in the room, you want to have your back to the stage.\n\nYou will be placing each meat relative to two very tiny piles of kibble on the left side of the room (again, while faced away from the stage). You will probably need to zoom in to see them. Each tile on the floor represents a box in a 12-by-12 grid.\n\n|cff413f43 00|r = Empty cell\n|cff4db62c 00|r = Pile of Kibble\n|cffeea016 00|r = Fishy Bits\n|cffeee116 00|r = Juicy Drumstick\n|cff16ceee 00|r = Meaty Morsel\n|cffce16ee 00|r = Marbled Steak\n|cff9e5ced 00|r = Slathered Rib\n\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00|r|cffeee116 00|r|cff413f43 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00|r|cff9e5ced 00|r|cff413f43 00|r|cffeea016 00|r|cff413f43 00 00|r\n|cff413f43 00|r|cff4db62c 00|r|cff413f43 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00|r|cffce16ee 00|r|cff413f43 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00|r|cff16ceee 00|r|cff413f43 00 00 00 00 00 00|r\n|cff413f43 00|r|cff4db62c 00|r|cff413f43 00 00|r|cffeea016 00|r|cff413f43 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00|r|cffce16ee 00|r|cff413f43 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00|r|cffeee116 00|r|cff413f43 00 00 00 00 00 00 00 00 00|r\n|cff413f43 00 00 00 00 00 00 00 00 00 00 00 00|r\n\nIf you have placed all the meats properly, Jenafur will spawn as soon as you finish. You can use |cFFFFFFFF/tar Jenafur|r to find her in the room, and then all you have to do is walk over and pet her for her to be added to your collection.\n"}),
p(2795,{npcID=159783})}})}}),
n(111573,{description="***Quest tracking enabled is required to see all the steps.***\n\nThis will show you how to unlock |cFFFFD700Kosumoth the Hungering|r, which has a world quest that awards the |cFFFFD700Hungering Claw|r pet or the |cFFFFD700Fathom Dweller|r mount.",g={
n(102695,{coords={{37.2,71.8,646}},description="|cFFFFFFFFStep 1:|r Head to |cFFFFFFFF37.2, 71.8|r. Speak with |cFFFFD700Drak'thul|r and choose option 1. \n\n|cffcc33ffThe demons are taking over this island, you may want to leave.|r \n\nChoose option 1 again. \n\n|cffcc33ffYou must know much. Will you help us defeat them?|r \n\nHe tells you to go away.",questID=43715}),
o(252412,{coords={{57.4,55.9,646},{58.5,54,646}},description="|cFFFFFFFFStep :2|r Head to the |cFFFFD700Feldust Cavern|r at |cFFFFFFFF58.56, 53.99|r. Walk inside to |cFFFFFFFF57.45, 55.95|r and click the |cFFFFD700Mound of Dirt|r to loot the |cFFFFD700Weathered Relic|r\n\nHead back to |cFFFFFFFF37.17, 71.82|r. Speak with |cFFFFD700Drak'thul|r and choose option 1. \n\n|cffcc33ffDo you recognize this relic?|r \n\nSpeak to him again and choose option 1. \n\n|cffcc33ffTell me of these whispers.|r\n\nSpeak to him again and choose option 1.\n\n|cffcc33ffDrak'thul?|r.\n\nSpeak to him again and choose option 1. \n\n|cffcc33ffYou are yourself again. What happened?|r \n\nSpeak to him again and he will tell you to go away",model=658558,modelScale=0.5,questID=43729,sourceQuests={43715}}),
o(252557,{coords={{37.9,37.4,630}},description="|cFFFFFFFFStep 3:|r This step will send you to |cFFFFD700Azsuna|r. Head to |cFFFFFFFF37.96, 37.41|r, walk down into the cave and click on the purple |cFFFFD700Hungering Orb|r in the fountain.",model=249664,modelScale=2,questID=43730,sourceQuests={43729}}),
o(252558,{coords={{32.9,75.9,634}},description="|cFFFFFFFFStep 4:|r This step will send you to |cFFFFD700Stormheim|r. Head to |cFFFFFFFF32.92, 75.90|r, walk into the cave and make sure to avoid the |cFFFFD700Kangaxx|r. Click on the |cFFFFD700Hungering Orb|r at the back of the cave in the sack of scrolls.",model=249664,modelScale=2,questID=43731,sourceQuests={43730}}),
o(252559,{coords={{41.5,81.1,641}},description="|cFFFFFFFFStep 5:|r This step will send you to Val'sharah|r. Head to |cFFFFFFFF41.51, 84.18|r, walk into the cave and take a left to see a table with a note on it. Turn left and walk over the rocks, turn back right and kill the |cFFFFD700Arcane Servitor|r. Click the |cFFFFD700Hungering Orb|r sitting on the ground between two sleeping pads.",model=249664,modelScale=2,questID=43732,sourceQuests={43731}}),
o(252560,{coords={{29.2,78.5,646}},description="|cFFFFFFFFStep 6:|r This step will send you to |cFFFFD700The Great Sea|r near |cFFFFD700Broken Shore|r. Head to |cFFFFFFFF29.16, 78.57|r, swim down and the cave is under the rock ledge. Walk forward avoiding the steam explosions and click on the |cFFFFD700Hungering Orb|r sitting under a leanto in some leaves.\n\n|cffcc33ffNote: Be careful not to die to fatigue, fatigue will stop once in the cave.|r",model=249664,modelScale=2,questID=43733,sourceQuests={43732}}),
o(252561,{coords={{59.3,13.1,630}},description="|cFFFFFFFFStep 7:|r This step will send you to |cFFFFD700Azsuna|r. Head to |cFFFFFFFF59.37, 13.13|r, walk down into the cave and click on the |cFFFFD700Hungering Orb|r that is wrapped in stone beside a broken table.",model=249664,modelScale=2,questID=43734,sourceQuests={43733}}),
o(252562,{coords={{67.3,14.7,619}},description="|cFFFFFFFFStep 8:|r This step will send you to |cFFFFD700The Great Sea|r near |cFFFFD700Stormheim|r. Head to the |cFFFFD700Shield's Rest|r flight point. Fly northwest until you see a broken statue with a large axe in the water named |cFFFFD700Sotnar's Rest|r. Swim down where the hand comes out of the water between the 2 jutting  stones and you should see a |cFFFFD700Toothless Great White|r. Swim down beneath the shark and turn into the opening then swim up into the cave. Avoid the steam explosions and click on the |cFFFFD700Hungering Orb|r.",model=249664,modelScale=2,questID=43735,sourceQuests={43734}}),
o(252563,{coords={{55.8,38.4,650}},description="|cFFFFFFFFStep 9:|r This step will send you to |cFFFFD700Highmountain|r. Head to |cFFFFFFFF55.84, 38.47|r. This cave is to the right of the main cave here through the bushes. Click on the |cFFFFD700Hungering Orb|r that is under the dead animal skull on the ground.",model=249664,modelScale=2,questID=43736,sourceQuests={43735}}),
o(252564,{coords={{54,26.1,630}},description="|cFFFFFFFFStep 10:|r This step will send you to |cFFFFD700Azsuna|r. Head to |cFFFFFFFF54.02, 26.18|r, walk down into the cave and click the |cFFFFD700Hungering Orb|r that is under the plant next to the second pillar.",model=249664,modelScale=2,questID=43737,sourceQuests={43736}}),
o(252565,{coords={{79.5,89.3,790}},description="|cFFFFFFFFStep 11:|r This step will send you to |cFFFFD700Eye of Azshara|r, the zone. Head to |cFFFFFFFF79.52, 89.31|r. Swim down to find a wrecked ship, you can swim into the ship between the anchor and the rock throught the seaweed. Swim up and to the platform above and through the hole on right side. Now swim through the seaweed hole on left and down. Turn around and swim under the beam then through the seaweed to the left. Click the  |cFFFFD700Hungering Orb|r that is on the right side in the water.",model=249664,modelScale=2,questID=43760,sourceQuests={43737}}),
o(252434,{coords={{37.1,71.8,646}},description="|cFFFFFFFFStep 12:|r This step will send you to |cFFFFD700Broken Shore|r. Head to |cFFFFFFFF37.17, 71.82|r. Click the |cFFFFD700Hungering Orb|r that is on the stone table near |cFFFFD700Drak'Thul|r",model=249664,modelScale=2,questID=43761,sourceQuests={43760}})}}),
ah(247402,{description="***Quest tracking enabled is required to see all the steps.***",displayID=78092,modelScale=0.8,type="s",g={
o(270855,{coords={{50.6,54.1,627}},description="|cFFFFFFFFStep 1:|r Go to |cFFFFFFFF50.6, 54.1|r in Broken Isles Dalaran. On the second floor of |cFFFFD700Curiosities & Moore|r you will see a table with three chairs. An |cFFFFD700Inconspicuous Note|r will be on the table. Click it. The note reads...\n\n|cFFFFFFFFIt begins in the 2104059.|r\n|cFFFFFFFFWith a most pleasing sign.|r\n|cFFFFFFFF(These letters will not always rhyme.)|r\n",model=1661948,questID=47826}),
o(272039,{coords={{41.5,17.9,120}},description="|cFFFFFFFFStep 2:|r This step requires visiting |cFFFFD700Ulduar|r. Head to |cFFFFD700XT-002 Deconstructor's|r room. Go to the trash pile in the upper-left corner of the map. You will see a broken body with blue legs on the ground. Look directly above it and you will see a head with a |cFFFFD700Rusty Lever|r. Click the lever to activate the lights in the middle of the Scrapyard. Click each light in the pattern below.\n\n0 = OFF     |cffcc33ff1|r = ON\n\n0 0 0 0 0 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 0 0 0 0 0 \n0 0 0 0 |cffcc33ff1|r 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 |cffcc33ff1|r 0 0 0 0 \n0 0 0 |cffcc33ff1 1 1|r 0 |cffcc33ff1 1 1 1 1 1|r 0 |cffcc33ff1 1 1|r 0 0 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 0 \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n|cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r \n0 0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 \n0 0 |cffcc33ff1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1|r 0 0 \n0 0 0 |cffcc33ff1 1 1|r 0 |cffcc33ff1 1 1 1 1 1|r 0 |cffcc33ff1 1 1|r 0 0 0 \n0 0 0 0 |cffcc33ff1|r 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 |cffcc33ff1|r 0 0 0 0 \n0 0 0 0 0 0 0 |cffcc33ff1 1 1 1 1 1|r 0 0 0 0 0 0 0 \n\nOnce you have turned on all the necessary lights, the next |cFFFFD700Inconspicuous Note|r will spawn in the middle. Click it. The note reads...\n\n|cFFFFFFFF1000 years imprisoned.|r\n|cFFFFFFFFSurely it wears on the mind.|r\n",model=1661948,questID=47837,sourceQuests={47826}}),
o(272046,{coords={{46.76,7.53,327}},description="|cFFFFFFFFStep 3:|r This step requires visiting |cFFFFD700Temple of Ahn'Qiraj|r. Go all the way through the instance, past |cFFFFD700C'thun|r's room into the room with three vendors. Once you see the three vendors, go up the stairs and you will see a table that has a glowing |cFFFFD700Mind Larva|r on it. Click the |cFFFFD700Mind Larva|r to activate a game similar to the |cFFFFD700Jewelcraft|r toy.\n\n|cffcc33ffTips: Hit Alt+Z to hide your interface and then scroll into first-person view. You can also use the right mouse button to turn your character around for easier viewing.|r\n\nYou need to play until you can line up five brains horizontally or vertically, or until you reach an unknown point cap. Just keep playing, and you'll eventually trigger it.|r\n",model=202390,questID=47840,sourceQuests={47837}}),
o(272061,{coords={{58.2,25.5,207}},description="|cFFFFFFFFStep 4:|r The next |cFFFFD700Inconspicuous Note|r will spawn on the table. Click it. The note reads...\r\r|cFFFFFFFFDeeper than deep.|r\r|cFFFFFFFFAwaits your seat.|r\n",model=1661948,questID=47841,sourceQuests={47840}}),
o(272163,{coords={{58.3,25.6,207},{63.7,22.6,207}},description="|cFFFFFFFFStep 5:|r First, obtain a |cFFFFD700Shadoweave Mask|r. |cffcc33ffNote: You will need the actual item; it cannot be transmogged on your character.|r\n\nThis step requires visiting Deepholm. Take the |cFFFFD700Therazane's Throne|r portal if it is available; otherwise, fly to |cFFFFFFFF58.3, 25.6|r and you will see a cave opening to |cFFFFD700Crumbling Depths|r.\n\nOnce you are in the cave, mount up and go past the |cFFFFD700Colossal Gyreworm|r into the next section of the cavern. Go to the big grey rock in the center of the room at |cFFFFFFFF63.7, 22.6|r and you will see a |cFFFFD700Dark Fissure|r. Click it. Once you click it, a warning will pop up, saying: \n\n|cffcc33ff'WARNING: you are about to fall into a dark fissure. You may not be able to climb back out again. Are you very sure you want to do this?'|r\n\nOnce inside the fissure, you will see a chair. Go behind the chair and click on the |cFFFFD700Dingy Plaque|r. The plaque reads... \r\r|cFFFFFFFFSupremacy?|r\r|cFFFFFFFFGet...|r\r|cFFFFFFFFShirk...|r\r|cFFFFFFFF...eke...|r\r\rThis will spawn a |cFFFFD700Strange Skull|r on the seat of the chair. Equip the Shadoweave Mask and interact with the |cFFFFD700Strange Skull|r and you will see a purple explosion.|r\n",model=985300,questID=47849,sourceQuests={47841},g={
s(3660,10025,{f=4,lvl=19})}}),
o(272165,{coords={{66.5,36,641}},description="|cFFFFFFFFStep 6:|r The next |cFFFFD700Inconspicuous Note|r spawns in front of the chair. Click it. The note reads...\r\r|cFFFFFFFFWhere the shaded delegate may appear.|r\n",model=1661948,questID=47850,sourceQuests={47849}}),
o(272172,{coords={{30.11,74.64,30}},description="|cFFFFFFFFStep 7:|r This step requires visiting |cFFFFD700Gnomeregan|r. \n\nNote: Horde players can easily get to Gnomeregan by taking the zeppelin from Orgrimmar and using the teleporter at Grom'gol Base Camp. Players of either faction who have done the Gnomeregan pet battle dungeon can be teleported there directly by speaking to |cff006812Manapoof|r in Broken Isles Dalaran or their BfA capital city.\n\nOnce inside the instance, go straight and jump down into the |cFFFFD700Hall of Gears|r. From here, take the winding hallway towards the |cFFFFD700Launch Bay|r. About halfway between the |cFFFFD700Launch Bay|r and |cff863325Crowd-Pummeler 9-60|r, there will be a plaque on the wall called |cFFFFD700Instructions|r and a set of 10 |cFFFFD700Numerical Consoles|r. Click the Instructions. They read:\n\n|cFFFFFFFF0111011 00100 10010110 1010|r\n|cFFFFFFFF11110111 01100 01111111 01000|r\n|cFFFFFFFF01101011100101 1010010110 10111101|r\n|cFFFFFFFF11001 00111111 10010 01001001|r\n|cFFFFFFFF10000 011010010110100111010110|r\n|cFFFFFFFF01011011 11110 11110001 11111|r\n|cFFFFFFFF11100000 00010 11111111 01000|r\n|cFFFFFFFF10110111 10101 01111111 00001|r\n|cFFFFFFFF10101110 11111 00110000 01000|r\n|cFFFFFFFF101101010010101110010110|r\n\n|cFFFFFFFF180|r\n\n|cFFFFFFFF+1111111111|r\n\nSetting the consoles to |cFFFFFFFF1222176597|r will cause the fifth |cFFFFD700Inconspicuous Note|r to spawn.\n\n|cffcc33ffNote: You can use the following scripts as macros for 'up' and 'down,' respectively:|r\n|cffcc33ff/script SelectGossipOption(1)|r\n|cffcc33ff/script SelectGossipOption(2)|r\n\nClick it. The note reads...\n\n|cFFFFFFFFGames and toys are left behind.|r\n|cFFFFFFFFWhen you awaken screaming.|r\n",model=1661948,questID=47852,sourceQuests={47850}}),
o(272181,{coords={{66,36.5,641}},description="|cFFFFFFFFStep 8:|r This step requires visiting |cFFFFD700Val'sharah|r. Head to |cFFFFFFFF66.0, 36.5|r. Inside the house next to |cff863325Wraithtalon|r is a |cFFFFD700Nightmare Tumor|r. Click it to start the next puzzle.\n\n|cffcc33ffTips: Hit Alt+Z to hide your interface and then scroll into first-person view. You can also use the right mouse button to turn your character around for easier viewing.|r\n\nThis puzzle is similar to |cFFFFD700Blingtron's Circuit Design Tutorial|r or the ley line puzzles in |cFFFFD700Nazjatar|r.\n\nThe object of the puzzle is to untangle all of the lines so that none cross each other and turn blue. Once you complete it, another |cFFFFD700Inconspicuous Note|r will appear. Click it. The note reads...\r\r|cFFFFFFFFWhat you seek is buried within.|r\n",model=1661948,questID=47863,sourceQuests={47852}}),
o(272220,{coords={{53.4,49,379}},description="|cFFFFFFFFStep 9:|r This step requires visiting |cFFFFD700Kun-Lai Summit|r. Head to |cFFFFFFFF53.4, 49.0|r. This is the entrance to the |cFFFFD700Tomb of Secrets|r. At the very back of the tomb, there will be an |cFFFFD700Urn|r at the base of a tall Mogu statue. Click it.\r\r|cffcc33ffWARNING: You are about to consume the ashes of an evil sorcerer. There is no way to tell what will happen. Are you VERY sure you want to do this?|r\n\nYou will be teleported to the |cFFFFD700Endless Halls|r where you will have to figure a way out. \r\r1. (Optional) Download the addon |cFFFFFFFFLucid Nightmare Helper|r, which will help you with the endless maze by generating a map of the rooms as you go and letting you notate special things in each one.\n2. Each room in the Endless Halls is identical, but some doorways will be blocked by stones. \r3. Each room has an altar in the middle. The runes spawn on the altar and the orbs spawn on the torches to either side. \r4. Most rooms will have unlit torches and no rune. \r5. The goal is to find a colored orb and then take the orb to the corresponding rune. \r6. The colors are |cFFFFD700Red, Blue, Green, Yellow, and Purple|r. \r\r|cffcc33ffNotes:|r\n|cffcc33ff1. Do not try this close to server reset. It could easily take a couple of hours to complete.\n|cffcc33ff2.If you are struggling with the maze and want to reset it, you need to leave the area for one hour.|r\n\nOnce you match all the orbs and runes, walk through any doorway. In the next room, there will be another |cFFFFD700Inconspicuous Note|r on an altar. Click it. After you read it, turn around and walk up the stairs to exit the maze. The note reads...\n\n|cFFFFFFFFThe way is now open.|r\n|cFFFFFFFFTo the greatest secret never told.|r\n|cFFFFFFFFA fitting end to your journey.|r\n",model=1661948,questID=47881,sourceQuests={47863}}),
o(272270,{coords={{39.8,73.6,42}},description="|cFFFFFFFFStep 10:|r This step requires visiting |cFFFFD700Deadwind Pass|r. Head to |cFFFFFFFF39.8, 73.6|r, the entrance to the Forgotten Crypt.\n\nOnce inside, head down the stairs into the |cFFFFD700Well of the Forgotten|r. Head into the |cFFFFD700Pauper's Walk|r hallway and follow it into the |cFFFFD700Forgotten Crypt.|r\n\nTake a right and then another right back into |cFFFFD700Pauper's Walk|r, then take a right at the Y and walk down the spiral, back into the |cFFFFD700Forgotten Crypt|r.\nTake a left and another left into the |cFFFFD700Tomb of the Unrepentant.|r\nOpen the gate and fall down the hole to the right (just drop down one level, not two). Walk into |cFFFFD700The Pit of Criminals|r, and |cFFFFD700Puzzler's Desire|r is on top of the bone pile.\n\n|cffcc33ffNote: If you are on the Warlock Affiction artifact quest and can't see the Puzzler's Desire, then you will have to abandon the quest to solve the phasing issue.\n\nCongratulations on your mount!|r\n\nWe would like to thank the |cFFFFD700Secret Finding Discord|r for solving yet another puzzle.\n",model=942865,questID=47885,sourceQuests={47881},g={
mnt(247402,{b=1,itemID=151623,lvl=10})}})}}),
ah(40967,{awp=110005,description="***Using Debug Mode is recommended.***\n",type="a",g={
o(182030,{coords={{44.5,8,78}},description="Inside a rotten tree trunk in the far north of Un'Goro Crater. Use your Torch of Pyrreth to reveal it.",providers={a[2]},g={
i(228941,{b=1,spellID=420213})}}),
q(84685,{coords={a[42]},sourceAchievements={40870},type="hqt"}),
q(84684,{coords={a[42]},description="Find 3 notes scattered around Azj-Kahet then confront Ratts in Pillar-nest Vosh.",lvl=10,qgs={230042},sourceQuests={84685},g={
i(228934,{spellID=462610}),
o(466118,{coords={{69.3,93.3,2255}},description="#1. In a cave in Azj'Kahet in the center of 5 Rotglow Settlers.",g={
i(228935,{spellID=462610})}}),
o(466119,{coords={{31.5,20.8,2213}},description="#2. High up on a ridge overlooking the City of Threads.",g={
i(228936,{spellID=462610})}}),
o(466120,{coords={{50.7,86.6,2215}},description="#3. Underwater in the center of a lake on the right side of the Azj-Kahet-Hallowfall transition.",g={
i(228937,{spellID=462610})}}),
o(466128,{coords={a[43],a[44]},description="#4. To turn in the quest, enter Pillar-nest Vosh to the left of Faerin's advance, navigate toward the back of the cave then turn around to find a wall you can climb, fall into a tunnel hidden in the wall."}),
i(228938,{b=1})}}),
i(44124,{b=1,cost={{"i",228938,1},{"i",228941,1}},description="Once reformed, go to the entrance of the Karazhan Catacombs in Deadwind Pass and use your Torch of Pyrreth by the gate to teleport into a secret scenario."}),
m(46,{coords={{46.3,69.1,42}},description="Deep into the catacombs the bike is just sitting there out of reach, but is surrounded by 12 basins which can light up with orbs if enough actions are performed.",providers={{"i",44124},a[2]},g={
q(84676,{coords={{55,40.2,10},{49.2,48,550},{74.2,37.5,550},{27.3,61.3,1536}},crs={82688,175815},description="Acquire The Light of Their Love buff (spellID 153715) 3 times from visiting areas relevant to Olgra, Mankrik's wife. Stand at these areas with your Torch of Pyrreth until a stack is gained.\n1. The Humble Monument in Northern Barrens.\n2. Young Olgra in Draenor.\n3. Decimator Olgra in Maldraxxus.\n\nFully lights up the 1 O'clock basin.",providers={a[2]},sourceQuests={84684},type="hqt"}),
q(84677,{description="Requires the 1 O'clock basin to have been completed to see the obelisk personally.\n1. Acquire the Twitching Eyaball or All-Seeing Eyes toys\n2. Acquire a Perky Pug with either the Dogg-Saron costume from Vashti the Wandering Merchant in Azsuna or the Yipp-Saron costume from Hallow's End (or the AH.)\n3. Bring these items OR find a friend who has them and visit the Ny'Alotha Obelisk above the Seat of Knowledge in the Vale of Eternal Blossoms (BFA).\n4. Have someone summon a perky pug and use the toys, then /pray in front of the obelisk to be granted the Key of Shadows.\n\nThere is a 5-15 minute delay even if you do everything right. Everyone within 10 yards should get the key if anyone in range does it correctly.\n\nFully lights up the 2 O'clock basin",providers={{"n",37865},{"n",153297}},type="hqt",g={
n(153297,{coords={{83.7,27.6,1530}},cost={{"i",116812,1},{"i",229413,1}},providers={{"i",168123},{"i",175140}},g={
i(53156,{b=1,description="Opens both doors in the room with the Red Button.",spellID=420213})}})}}),
ah(228967,{description="1. Use the Key of Shadows to enter the room to the left of the Red Button. Fish up an Astral key from the bowl on the left bookshelf. Open the Astral chest in the same room, use the goggles.\n2. Interact with any of the consoles around the catacombs until you get a new actionbar. Can't see it? Look in your spellbook for a Number Sequence spell. Click the console again to submit your code.\n3. Enter the codes on adjacent consoles to open each of the chests, each Piece of Hate will give you an orb at the 3 O'clock basin, fully lighting with 9 orbs.",providers={{"i",53156}},sourceQuests=a[58],type="i",g={
i(228965,{b=1,sourceQuests=a[58],spellID=3366}),
o(466393,{coords={{48.4,79.5,46}},providers={{"i",228965}},sourceQuests=a[58],g={
toy(228966,{b=1,sourceQuests=a[58]})}}),
o(466400,{coords={{48.9,80.3,46}},description="Code to open at the adjacent decryption console: 88224646",questID=84757,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466413,{coords={{42.9,70.6,46}},description="Code to open at the adjacent decryption console: 17112317",questID=84758,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466479,{coords={{49.5,65.1,46}},description="Code to open at the adjacent decryption console: 1533, 3457, 8265, or 10638",providers={a[3]},questID=84768,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466495,{coords={{67.4,84.3,46}},description="Code to open at the adjacent decryption console: 19019",providers={a[3]},questID=84771,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466484,{coords={{56.3,62.6,46}},description="Code to open at the adjacent decryption console: 5661",providers={a[3]},questID=84769,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466420,{coords={{64.9,48.3,46}},description="Code to open at the adjacent decryption console: 52233",providers={a[3]},questID=84766,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466497,{coords={{70.3,55.4,46}},description="Code to open at the adjacent decryption console: 51567",providers={a[3]},questID=84772,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
o(466489,{coords={{66.3,15.2,46}},description="Code to open at the adjacent decryption console: 115",providers={a[3]},questID=84770,sourceQuests=a[58],g={
i(228967,{b=1,sourceQuests=a[58]})}}),
ah(84786,{description="In the felcycle room is over a dozen slot machine consoles around the walls, any of them work for this coin. Variations of 777, 888 and 168 are correct answers but the machines only pay out a coin if you are deemed lucky.\nYour luck can be increased by obtaining at least 5 unique lucky things. It's not clear what counts but Blizzard states there are 13 possible lucky sources, some have been listed as a provider for this step. If you see the 'You feel lucky' emote in chat, you should be good, but try at least once anyway, the machine will pay out on first attempt if you're lucky enough, it is not random.\nNo chest will spawn, you will be given the Piece of Hate directly.",providers={{"i",5373},{"i",138382},{"i",138385},{"i",198400},{"i",198857},{"i",200265},{"i",202046}},sourceQuests=a[58],type="q",g={
i(228967,{b=1,sourceQuests=a[58]}),
q(84786,{sourceQuests=a[58],type="hqt"})}})}}),
q(84780,{coords={{52.1,85.1,22}},cost={{"i",228987,1}},description="1. Use the Scroll of Fel Binding sold by Vashti the Wandering Merchant in Azsuna (Broken Isles) right outside Uther's Tomb in the Western Plaugelands.\n2. You will die, return to your corpse and fight the Doomguard while inspecting the four writings on the floor of the tomb. Anyone can summon the demon and writings will stay visible as long as it lives.\n\nFully lights up the 4 O'clock basin.",type="hqt"}),
q(84781,{coords={{43.1,41.4,554},{39.6,38.4,555},{53.3,56.8,555}},crs={71876},description="1. Visit the Timeless isle and find Zarhym in the Cavern of Lost Spirits. Talk to Zarhym, a rare ghostly skull inside the entrance to enter the spirit realm.\n2. Within 5 minutes, Navigate to the back of the cave while avoiding ghosts to find Jeremy Feasel. Stay nearby to him, and you will not exit the spirit realm even if your 5 minutes buff expires.\n3. Defeat Jeremy in a pet battle using only 'secret' pets from the list. If someone in your group beats him in a battle, that also counts and he will grant you the quest too on talking to him. The pets MUST be level 25.\n\nFully lights up the 5 O'clock basin.\n\nValid pets:\nBaa'l, Bumbles, Filthy Slime, Francois, Gizmo the Pure, Glimr, Hungering Claw, Jenafur, Lil' Abom, Nelthara, Phoenix Wishwing, Renny, Snowclaw Cub, Spyragos, Sun Darter Hatchling, Taptaf, Terky, Tobias, Wicker Pup",lvl=10,qgs={16445,61087,111984,134406,139770,141941,143189,143730,159783,160704,163897,169514,179008,189117,191381,192343,204367,208643,229779,232048},sourceQuests={84780},g={
i(228995,{b=1})}}),
q(84811,{description="Use your Torch of Pyrreth at various alters to summon a Spirit of Collections. Perform several actions to appease the spirits on each alter of acquisition, an action may require summoning a mount, pet, or toy associated with each spirit, emoting in some way, or changing your transmog.\n\nSomeone in your phase can appease a spirit for you if nearby, but they must fulfill each part of a spirit's appeasement themselves. If one person covers mount, and another covers pet for example, it will not work.\n\nEach appeased spirit will add an orb to the 6 O'clock basin, and looting the final chest will light it fully.",providers={a[2]},type="hqt",g={
q(84809,{coords={{77.1,46.3,50}},crs={230430},description="Confirmed actions to appease:\nMounts: Any with 'blood' in their name\n\nPets: Any with 'blood' in their name\n\nToys: Throbbing Blood Orb",type="hqt"}),
q(84807,{coords={{77.5,43.9,50}},crs={230424},description="Confirmed actions to appease:\nOutfit: Cloak of Overwhelming Corruption (or a cloak with the same appearance)\n\nEmotes: /cower with the spirit targeted\n\nMounts: Any with 'corrupted' in their name\n\nPets: Any with 'corrupted' in their name\n\nToys: Ring of Broken Promises, Accursed Tome of the Sargerei",type="hqt"}),
q(84810,{coords={{78.1,46.3,50}},crs={230440},description="Confirmed actions to appease:\nOutfit: Cloak of the Black Void (or a cloak with the same appearance)\n\nEmotes: /smirk with the spirit targeted\n\nPets: Lesser Voidcaller, Sir Shady Mrrgglton Junior, Voidwiggler\n\nToys: Shadowy Disguise, Void Totem",type="hqt"}),
q(84806,{coords={{78.3,44,50}},crs={230423},description="Confirmed actions to appease:\nOutfit: Any sinstone back cosmetic\n\nPets: Sinheart\n\nToys: Bondable Sinstone",type="hqt"}),
q(84808,{coords={{77.1,44.9,50}},crs={230425},description="Confirmed actions to appease:\nOutfit: Be naked\n\nEmotes: /flirt with the spirit targeted\n\nPets: Sister of Temptation\n\nToys: Moroes' Famous Polish, Steamy Romance Novel Kit",type="hqt"}),
o(466808,{coords={{78.2,47.7,50}},description="Appears by the wall nearby the Shadow alter once each spirit has been appeased. Use your goggles to see it.",providers={a[3]},sourceQuests={84781,84806,84807,84808,84809,84810},g={
i(229007,{b=1,spellID=444913})}})}}),
q(84823,{description="Empower your owl pet with the Owl statues in Azsuna then enter the Vault of the Wardens to find a Sentry Statue. Use it to solve a puzzle to receive the mirror.\n\nEmpowering your owl will add 4 orbs to the 7 O'clock basin, and solving the sentry puzzle will light it fully.",maps={630,710,711,712},type="hqt",g={
ah(254262,{coords={{37.1,82.16,630},{40.52,75.19,630},{40.54,73.15,630},{43.24,85.3,630},{43.66,87.51,630},{44.18,72.41,630},{45.97,84.06,630},{47.48,84.74,630},{50.45,91.67,630}},description="On the Isle of the Watchers in Azsuna are 9 Owl of the Watchers statues, on any shard, only 4 of them will be interactable at any given time.\n\nYou need an owl pet, the Fledgling Warden Owl sold by the Wardens quartermaster on the same island is confirmed to work, but other owls may work too.\n\nSummon your owl and don't let it disappear by flying too far away. Find an interactable statue and sit in the aura it creates with your pet until an audible sound cue plays and a secret magnifying glass icon appears over your head. Do that again for 4 different statue auras, Red, Green, Blue and Purple.\nYou'll know you're done when your owl has a distinct white orb above their head. Unlocks 4 orbs at Basin 7.",providers={a[6]},type="o",g={
q(39353,{description="Unlocks an orb at the 7 O'clock basin.",type="hqt"}),
q(26741,{description="Unlocks an orb at the 7 O'clock basin.",lvl=10,type="hqt"}),
q(40721,{description="Unlocks an orb at the 7 O'clock basin.",type="hqt"}),
q(26704,{description="Unlocks an orb at the 7 O'clock basin.",lvl=10,type="hqt"})}}),
o(466943,{description="You must first have completed the previous steps with the watcher statues and empowering your owl.\n1. Clear Vault of the Wardens (any difficulty) with your owl pet summoned through to last boss.\n2. Pick up Elune's light from a statue in the corner of Cordana's arena and QUICKLY get back up to the first boss's room.\n3. Backtrack from the first boss room towards the dungeon entrance, enter the newly opened door on your right, the statue will sit in the center.",maps=a[53],providers={a[6]},g={
i(229046,{b=1,description="Place in the center platform before the last set of stairs leading to Glazer's platform in the Vault of Mirrors.",spellID=464277})}}),
q(84916,{description="Place in the center platform before the last set of stairs leading to Glazer's platform in the Vault of Mirrors.",maps=a[53],type="hqt"}),
o(466960,{crs={109300},description="Once you place the Sentry Statue in the Vault of Mirrors, a 5x5 grid of watcher statues will appear. You need to make each statue descend into the floor, but each statue you click will toggle the state of 4 other statues.\n\nThere are addons and website tools to solve this, for your sanity, use one. You may solve this secret in a group.\n\nFully lights up the 7 O'clock basin.",maps=a[53],providers={a[2],a[6]},g={
i(229054,{b=1})}})}}),
o(466975,{coords={{59.9,42.6,46}},description="On the left side of the hallway after the second stairwell.",g={
q(84829,{cost={{"i",229007,1}},sourceQuests={84811},type="hqt"}),
q(84830,{cost={{"i",229054,1}},sourceQuests={84823},type="hqt"}),
q(84837,{description="1. Hit begin on the console, then hit submit. A randomized number of rats will spawn in the catacombs.\n2. Count the number of Rats in the whole catacombs, use a targeting macro to make sure you don't miss one. There will also be Catacombs Rats, those DO NOT COUNT. Kill both types of rats once you are sure of your count so they cannot interfere with pressure plates.\n3. Depending on the number of rats, you need to drag a certain number of statues to a specific pressure plate and stack them, the beacon color will shift from Blue->Green->Yellow->Orange->Purple as a plate has 1->2->3->4->5 entities stack on it.\n4. Head back to the Enigma Machine and submit, you will be electrocuted if you get it wrong, leave and reset the instance if you do, restarting at lock 1. Otherwise, continue counting the next set of rats and submitting results using info from the next column until you've completed all 7 locks.\n\nPlate 1 is at 71.6, 20.1 at the top of the map in the felcycle room\nPlate 2 is at 68.5, 34.2 right at the entrance to the felcycle room\nPlate 3 is at 73.6, 43.0 behind the locked gate on the right of the map, use your Relic of Crystal Connections to teleport to the humming crystal in the room by targeting it\nPlate 4 is at 68.8, 50.9 in the center of the hallway opposite the felcycle room\nPlate 5 is at 73.6, 65.3 in the flooded dead end hallway right as you enter the catacombs\nPlate 6 is at 60.2, 71.6 on the left side of the hallway before the cat room\nPlate 7 is at 47.8, 78.9 in the corner of the room with the Astral chest\n\n[# Rats | Lock 1| Lock 2| Lock 3|\n[1 Rats | 1 > P1 | 1 > P2 | 1 > P3 |\n[2 Rats | 1 > P2 | 1 > P4 | 1 > P6 |\n[3 Rats | 1 > P3 | 1 > P6 | 2 > P2 |\n[4 Rats | 1 > P4 | 2 > P1 | 2 > P5 |\n[5 Rats | 1 > P5 | 2 > P3 | 3 > P1 |\n[6 Rats | 1 > P6 | 2 > P3 | 3 > P4 |\n[7 Rats | 1 > P7 | 2 > P7 | 1 > P1 |\n[8 Rats | 2 > P1 | 3 > P2 | 1 > P4 |\n[9 Rats | 2 > P2 | 3 > P4 | 1 > P7 |\n[10Rats| 2 > P3 | 3 > P6 | 2 > P3 |\nExample: Counting 2 rats during Lock 2, stack 1 statue on pressure plate 4.\n\nFully lights up the 8 O'clock basin.",providers={a[4]},sourceQuests={84829,84830},type="hqt",g={
n(230653,{coords={{70.6,34.5,46}},description="Right of the entrance of the felcycle room."}),
n(230654,{coords={{61.2,47.9,46}},description="Opposite the Enigma Machine."}),
n(230655,{coords={{43.4,64.9,46}},description="On the right inside the room ahead of the Red Button."}),
n(230652,{coords={{49.3,75.9,46}},description="In the room with the Astral Chest, left of the Red Button."}),
n(230657,{coords={{70.3,79.1,46}},description="At the bottom of the entrance stairwell."}),
n(230596,{description="This is a |cff4caf50VALID|r rat, it counts!"}),
n(230599,{description="This is an |cffff0000INVALID|r rat, it DOESN'T count!"})}})}}),
o(467191,{coords={a[43],{56.1,17.9,2255},a[44]},description="Return to Pillar-nest Vosh to the left of Faerin's advance, navigate toward the back of the cave then turn around to find a wall you can climb, fall into a tunnel hidden in the wall.\n\nUse your Starry-Eyed goggles to reveal a translucent platform, use your Relic of Crystal Connections on the humming crystal to get up to it.\n\nCode to open at the adjacent decryption console: 84847078.\n\nFully lights the 9 O'clock Basin.",providers={a[3],a[4]},questID=84854,sourceQuests={84837},g={
mnt(428013,{b=1,itemID=229348,lvl=10}),
ach(40967)}}),
n(230070,{coords={{47.4,68.3,46}},description="Interacting with the button starts a 20 second timer, refreshing on clicking again. The orb to the left of the button reports how many times the button has been clicked within that window.",g={
q(84702,{description="Unlocks an orb at the 10 O'clock basin.",type="hqt"}),
q(84703,{description="Unlocks an orb at the 10 O'clock basin.",type="hqt"})}}),
o(475116,{coords={{47,78.1,46},{56.3,73.3,46},{70.1,90.3,46},{70.3,81,46},{70.5,61.7,46},{70.9,53.9,46}},description="These pebbles can be found throughout the catacombs.\n1. Halfway down the entrance stairwell, behind a candelabra sitting on the bannister.\n2. Behind the frame of the archway halfway down the entrance stairwell, opposite the skeleton sitting on the other side of the arch.\n3. To the left of the tilted Replica Owl of the Watchers in the first room after the entrance stairs.\n4. On the inside corner of the doorway to the cat room, interactable through the gate.\n5. In the hand of a skeleton in the corner of the hallway leading to the Felcycle.\n6. On a shelf in the back in the Nature statue room."}),
i(228953)}})}}),
ah(243025,{description="***'Show All Trackable Things' is required to see all the steps.***\n\nBelow is a detailed explanation on how to obtain the Riddler's Mind-Worm mount.\r\rNote: Progress on this will be reset each week, so do make sure to complete it in one reset.",displayID=74314,modelScale=0.7,type="s",g={
o(148502,{coords={{48.8,42.1,627}},description="|cFFFFFFFFStep 1:|r We will begin in |cFFFFD700Dalaran|r. Head to the |cFFFFD700Legerdemain Lounge|r at |cFFFFFFFF48.80, 42.10|r. |cFFFFD700Page 9|r will be on the third shelf of the bookcase. Click this to continue. The page reads...\n\n|cFFFFFFFF...of sea, spirit and self...|r",model=305393,questID=45470}),
o(209270,{coords={{49.2,34,47}},description="|cFFFFFFFFStep 2:|r This step will take us to |cFFFFD700Duskwood|r. Head to |cFFFFFFFF49.25, 34.01|r. |cFFFFD700Page 78|r is found on the table beside the moonwell. Click this to continue. The page reads...\n\n|cFFFFFFFF...first of the lords to fall...|r",isWeekly=1,model=305393,questID=47207,sourceQuests={45470}}),
o(245216,{coords={{47.3,78.1,198}},description="|cFFFFFFFFStep 3:|r This step will take us to |cFFFFD700Firelands|r. |cFFFFD700Page 161|r will be found on the left rear side of the |cFFFFD700Ragnaros|r platform. Click this to continue. The page reads...\n\n|cFFFFFFFF...the wind, the eye...|r",isWeekly=1,model=305393,questID=47208,sourceQuests={47207}}),
o(251564,{coords={{70.4,78.1,249}},description="|cFFFFFFFFStep 4:|r This step will take us to |cFFFFD700Uldum|r. Head to |cFFFFFFFF70.44, 78.11|r. |cFFFFD700Page 655|r will be between the two small trees. Click this to continue. The page reads...\n\n|cFFFFFFFF...the plume, the tomb, a scarab moon...|r",isWeekly=1,model=305393,questID=47209,sourceQuests={47208}}),
o(220821,{coords={{72.4,44.3,390}},description="|cFFFFFFFFStep 5:|r This step will take us to |cFFFFD700Siege of Orgrimmar|r. This does not spawn on LFR. Head to the |cFFFFD700Sha of Pride|r room. |cFFFFD700Page 845|r is found in the far back left corner of the room (southwest on the minimap). Click this to continue. The page reads...\n\n|cFFFFFFFF...in snow, sand, and stone...|r",isWeekly=1,model=305393,questID=47210,sourceQuests={47209}}),
o(220820,{coords={{64.7,49.9,71},{22.9,64.4,75}},description="|cFFFFFFFFStep 6:|r This step will take us to the |cFFFFD700Well of Eternity|r instance in |cFFFFD700Caverns of Time|r. Kill the first 2 bosses. Take the drake and when you are dropped off walk to the left to the stone stairs. |cFFFFD700Page 1127|r will be on the bottom stair next to a large stone divider. Click this to continue. The page reads...\n\n|cFFFFFFFF...behold the battle, unblinking...|r",isWeekly=1,model=305393,questID=47211,sourceQuests={47210}}),
o(19023,{coords={{34.6,50.9,379}},description="|cFFFFFFFFStep 7:|r This step will take us to |cFFFFD700Kun-Lai Summit|r near the |cFFFFD700Shado-Pan Monastery|r. Head to |cFFFFFFFF34.61, 50.88|r. |cFFFFD700Page 2351|r will be between the statue's paws on the platform. Click this to continue. The page reads...\n\n|cFFFFFFFF...bejeweled watcher...|r",isWeekly=1,model=305393,questID=47212,sourceQuests={47211}}),
o(244678,{coords={{76.4,53.6,249}},description="|cFFFFFFFFStep 8:|r This step will take us to |cFFFFD700Uldum|r. Head to |cFFFFFFFF76.45, 53.67|r. |cFFFFD700Page 5555|r will be on the platform slightly offcenter in front of the left foot of the statue. Click this to continue. The page reads...\n\n|cFFFFFFFF...ray of sunshine...|r",isWeekly=1,model=305393,questID=47213,sourceQuests={47212}}),
o(269830,{coords={{30.5,27.5,52}},description="|cFFFFFFFFStep 9:|r This step will take us to |cFFFFD700Westfall|r. Head to |cFFFFFFFF30.53, 27.56|r. |cFFFFD700Gift of the Mind-Seekers|r will be on the ground here in a broken boat. Click this to obtain your mount. Congratulations on getting the |cFFFFD700Riddler's Mind-Worm|r.\n\nWe would like to thank the |cFFFFD700Secret Finding Discord|r again for solving this puzzle.",isWeekly=1,model=942865,questID=47214,sourceQuests={47213},g={
mnt(243025,{b=1,itemID=147835,lvl=45})}})}}),
h(-505,{awp=100105,description="***Using Debug Mode is recommended.***\n",g={
h(-12,{
ach(18644,{sym={{"select","questID",77289,77288,77291,77292,77290,77293,77296,77294,77297,77298,77299,78208,78207,77300,77302,77301,77295}},g={
p(4263,{b=1,itemID=208151,npcID=208643,spellID=418079})}}),
ach(18643,{sym={{"select","questID",77289,77288,77291,77292,77290,77293,77296,77294,77297,77298,77299,78208,78207,77300,77302,77301,77295}},g={
s(189592,208150,{f=2})}}),
ach(18642,{coords={{33.6,58.4,114}},cost={{"i",207580,1}},questID=76987,g={
title(512),
crit(60752,{achID=18646,id=2})}}),
ach(18645,{
s(189591,208149,{f=2}),
crit(60754,{achID=18645,providers={{"i",206696}}}),
crit(60755,{achID=18645,providers={a[2]}}),
crit(60756,{achID=18645,providers={a[1]}})}),
ach(18646,{
mnt(418078,{b=1,itemID=208152}),
title(519)}),
ach(19080,{coords={{36.6,61.8,2112}},questID=78101,u=2})}),
h(-56,{
o(405526,{coords={{55.3,59.4,23}},questID=77289,g={
i(208142,{f=55,spellID=420215})}}),
o(405525,{coords={{42.2,48,77}},questID=77288,g={
i(208142,{f=55,spellID=420215})}}),
o(405530,{coords={{42.7,30.6,64},{43.9,37.4,64}},description="In underwater cave.",questID=77291,g={
i(208142,{f=55,spellID=420215})}}),
o(405531,{coords={{35.3,49,539}},questID=77292,g={
i(208142,{f=55,spellID=420215})}}),
o(405529,{coords={{26.2,68.6,109}},description="You need three people to each channel their 'Torch of Pyrreth' on each small crystal.",providers={a[2]},questID=77290,g={
i(208142,{f=55,spellID=420215})}}),
o(405532,{coords={{56.8,21.4,376}},questID=77293,g={
i(208142,{f=55,spellID=420215})}}),
o(405535,{coords={{25.2,71.5,2024}},description="Use your 'Torch of Pyrreth' near the snowmen.",providers={a[2]},questID=77296,g={
i(208142,{f=55,spellID=420215})}}),
o(405533,{coords={{63.9,72.6,115}},questID=77294,g={
i(208142,{f=55,spellID=420215})}}),
o(405536,{coords={{46,50.7,10}},questID=77297,g={
i(208142,{f=55,spellID=420215})}}),
o(405537,{coords={{64.7,55.4,17}},description="Use your 'Torch of Pyrreth' on the ritual crystal.",providers={a[2]},questID=77298,g={
i(208142,{f=55,spellID=420215})}}),
o(405538,{coords={{57.8,26.3,107}},description="On the island floating in the air.",questID=77299,g={
i(208142,{f=55,spellID=420215})}}),
o(410181,{coords={{53.3,87.4,650}},questID=78208,g={
i(208142,{f=55,spellID=420215})}}),
o(410179,{coords={{68.8,73.2,22}},questID=78207,g={
i(208142,{f=55,spellID=420215})}}),
ah(405539,_.ResolveQuestData({aqd=
o(405539,{coords={{20.2,81.3,116},{36.8,35.6,116}},description="Talk to the NPC at the northern waypoint to take a ride on the log. At the end, you will receive the WHEE! buff which is required to see the Loose Dirt Mound."}),hqd=
o(409835,{coords={{10.9,74.9,116},{35.1,34.7,116}},description="Take the log ride, must have WHEE! buff for Loose Dirt Mound to be visible."}),questID=77300,type="o",g={
i(208142,{f=55,spellID=420215})}})),
o(405541,{coords={{73.1,39.5,115}},questID=77302,g={
i(208142,{f=55,spellID=420215})}}),
o(405540,{coords={{38.6,54.9,554}},questID=77301,g={
i(208142,{f=55,spellID=420215})}}),
o(405534,{coords={{74.5,86.1,895}},questID=77295,g={
i(208142,{f=55,spellID=420215})}})}),
h(-45,{
q(77202,{coords={{55,37,2112}},DisablePartySync=1,isBreadcrumb=1,nextQuests=a[57],qgs={199261},repeatable=1}),
q(77203,{coords={a[36],{58.88,54.09,2112}},description="Talk to Kathos again to get a Mystery box & open it to receive a Golden Chalice.\nDeliver the Chalice in the Bank in Valdrakken (58.88 54.09).\nYou can rightclick the quest to place all coordinates.",qgs=a[24],sourceQuests={77202},g={
i(208054,{
i(208056),
i(208055)}),
crit(60849,{achID=18646,id=1})}}),
q(76735,{coords={a[30],a[39],{12.4,49.2,2024},a[36]},description="Deliver the Tuskarr Spear to Eldor Poa in Azure Span (12.4 49.2).\nDeliver the newly received Shomko Spear to Elder Ko'nani in Dragonblight (48.0 74.8).\nFinally deliver the spear to the Statue in Borean Tundra (33.63 58.45).\nYou can rightclick the quest to place all coordinates.",lvl=10,qgs=a[24],repeatable=1,sourceQuests=a[57],g={
i(207105),
i(207580,{coords={{12.4,49.3,2024}},cost={{"i",207105,1}},providers={{"n",186448}}}),
i(208190,{coords={a[39]},cost={{"i",207580,1}},providers={{"n",26194}}}),
n(208182,{coords={a[30]},description="Spawns after using spear at statue",g={
i(207594,{b=1,f=55})}}),
crit(60752,{achID=18646,id=2})}}),
q(77165,{coords={a[38]},lvl=10,qgs=a[25],repeatable=1,g={
i(207802,{b=1}),
i(208416,{coords={a[35]},providers={a[5]}}),
i(207956,{coords={a[35]},cost={{"i",205693,5},{"i",198441,5},{"i",201419,5}},f=55,lvl=65,providers={a[5]},spellID=369166}),
i(207814,{coords={{42.2,48.6,2112}},cost={{"i",207956,5}},providers={{"n",185548}},spellID=417775}),
i(207812,{coords={{45.3,93.1,2112}},crs={191451}}),
i(207813,{coords={{42.4,49.4,2112}},cost={{"i",207812,1}},providers={{"n",197781}}}),
q(77230,{cost=3464358,repeatable=1}),
i(207816,{coords={{38.9,61.8,2112}},providers={{"n",198586}},sourceQuests={77230}}),
i(207827,{cost={{"i",207816,1},{"i",207813,1},{"i",207814,1}}})}}),
q(77237,{coords={{26.6,53.9,2112}},crs=a[26],DisablePartySync=1,lc={1,"questID",78202},lvl=10,providers={{"i",207827}},g={
toy(206696,{b=1})}}),
q(76504,{coords={{26.7,53.9,2112},{64.6,53.6,2112}},cost={{"i",206696,1}},description="Use Toy to accept quest. Follow arrows.",DisablePartySync=1,lc={1,"questID",77513},qgs=a[26],sourceQuests={77237},g={
i(206944),
crit(60850,{achID=18646,id=3,questID=77513})}}),
q(77276,{coords={a[38]},isDaily=1,lvl=10,qgs=a[25],repeatable=1,sourceQuests=a[56],g={
i(208129),
i(208128),
o(405489,{coords={{48.8,47.8,2112}},g={
i(208130)}}),
q(77397,{coords={a[48]},cost={{"i",208130,1}},DisablePartySync=1,lc=a[11]})}}),
q(77277,{coords={a[48]},DisablePartySync=1,lc=a[11],lvl=10,qgs={208620},sourceQuests={77397},g={
i(208130),
crit(60851,{achID=18646,id=4,questID=77521})}}),
q(77281,{coords={a[37]},lvl=10,qgs=a[22],repeatable=1,sourceQuests=a[56],g={
i(208131),
o(405510,{coords={{56.6,20.3,2022}},DisablePartySync=1,lc=a[12],questID=77401}),
o(405511,{coords={{57.7,23.8,2022}},DisablePartySync=1,lc=a[12],questID=77402}),
o(405512,{coords={{57,25.5,2022}},DisablePartySync=1,lc=a[12],questID=77403}),
o(405513,{coords={{54.5,20.3,2022}},sourceQuests={77401,77402,77403},g={
i(208135,{spellID=420213})}})}}),
q(77282,{coords={{54.6,20.4,2022}},DisablePartySync=1,lc={1,"questID",78201},lvl=10,providers={{"i",208135}},g={
toy(208092,{b=1})}}),
q(77263,{coords={a[36]},description="Use Torch of Pyrreth @ 58.5, 23.6 Valdrakken.",DisablePartySync=1,lc=a[12],qgs=a[24],sourceQuests={77282},g={
o(405515,{coords={{58.5,23.6,2112}},providers={a[2]},g={
i(208107)}}),
crit(60852,{achID=18646,id=5,questID=77522})}}),
q(77284,{coords={a[38]},lvl=10,qgs=a[25],repeatable=1,sourceQuests={77263},g={
i(208137)}}),
q(77286,{coords={{78.9,32.4,2024}},DisablePartySync=1,lc={1,"questID",77523},lvl=10,providers={{"o",405523}},qis={208092},g={
i(208143),
crit(60853,{achID=18646,id=6,questID=77523})}}),
q(77303,{coords={{47.2,46.6,2112}},lvl=10,qgs=a[22],repeatable=1,g={
i(208144),
o(9000001,{coords={{32.3,67.9,2023}},DisablePartySync=1,lc=a[13],providers={a[2]},questID=77405}),
o(9000002,{coords={{31,70.8,2023}},DisablePartySync=1,lc=a[13],providers={a[2]},questID=77406}),
o(9000003,{coords={{35.2,65.7,2023}},DisablePartySync=1,lc=a[13],providers={a[2]},questID=77407}),
o(9000004,{coords={a[32]},DisablePartySync=1,lc=a[13],providers={a[2]},questID=77404}),
o(405546,{coords={a[32]},sourceQuests={77404,77405,77406,77407},g={
i(208145,{spellID=420213})}})}}),
q(77304,{DisablePartySync=1,lc=a[13],lvl=10,providers={{"i",208145}},g={
toy(207730,{b=1})}}),
q(76456,{coords={a[36]},description="Use the Idol. It points towards objectives.",DisablePartySync=1,lc=a[13],qgs=a[24],sourceQuests={77304},g={
crit(60854,{achID=18646,id=7,questID=77524})}}),
q(76509,{coords={a[36]},qgs=a[24],repeatable=1,sourceQuests={76456},g={
i(206948),
o(404319,{coords={{57.3,82.1,2025},{58.5,78.4,2025},{58.8,78.2,2025},{59.3,78.8,2025}},description="Many locations, each location respawns after ~60 seconds.",g={
i(208191,{questID=77421,spellID=418446,type="ihqt"})}}),
i(208146,{cost={{"i",208191,3}}})}}),
q(77305,{DisablePartySync=1,lc={1,"questID",76508},providers={{"i",208146}},g={
crit(60855,{achID=18646,id=8,questID=76508})}}),
q(77653,{coords={a[38]},isDaily=1,lvl=10,qgs=a[25],repeatable=1,g={
i(208486),
o(408226,{coords={{62.9,57.3,2023}},g={
i(208827,{spellID=420213})}})}}),
o(408224,{coords={{63.4,57,2023}},providers={a[2]},questID=77972}),
q(77822,{DisablePartySync=1,lc={1,"questID",77576},lvl=10,providers={{"i",208827}},g={
crit(60856,{achID=18646,id=9,questID=77576})}}),
q(77829,{coords={a[38]},isDaily=1,lvl=10,qgs=a[25],repeatable=1,sourceQuests={77822},g={
i(208829),
o(407691,{coords={{47.6,46.2,2022},{47.9,46.3,2022},{48.1,45.4,2022},{48.3,46.1,2022}},description="Very tiny rocks. Many locations. Use Idol of Ohn'ahra to find them.",providers={a[1]},g={
i(208835)}}),
o(407692,{coords={{21.3,76.7,2022},{22.7,77.9,2022},{23.1,78.6,2022},{23.1,78.9,2022},{23.8,78.8,2022}},g={
i(208836)}})}}),
q(77831,{coords={a[27]},cost={{"i",208092,1},{"i",208836,8},{"i",208835,50}},DisablePartySync=1,lc={1,"questID",77577},lvl=10,qgs={210837},g={
o(408754,{coords={a[27]},g={
i(208830)}}),
en(208831,{b=1,questID=77830,spellID=421255,tmogSetID=3120,g={
s(190149,208832,{f=28,lvl=a[51]}),
s(190173,209038,{f=29,lvl=a[51]}),
s(190174,209039,{f=23,lvl=a[51]}),
s(190175,209040,{f=1,lvl=a[51]})}}),
crit(60857,{achID=18646,id=10,questID=77577})}}),
q(77865,{coords={a[36]},lvl=10,qgs=a[24],repeatable=1,sourceQuests={77277},g={
i(208852),
i(209061,{coords={{63.4,41.3,2023}},cost={{"i",208852,1}},providers={{"n",195543}}}),
i(208857,{coords={{81.3,59.3,2023}},cost={{"i",209061,1}},providers={{"n",191391}}}),
o(408912,{coords={{83.8,48.4,2023}},DisablePartySync=1,lc=a[14],questID=78025}),
o(408914,{coords={{78.6,83.3,2023}},DisablePartySync=1,lc=a[14],questID=78026}),
o(408915,{coords={{60.7,63.4,2023}},DisablePartySync=1,lc=a[14],questID=78027}),
o(408916,{coords={{31.6,71.6,2023}},DisablePartySync=1,lc=a[14],questID=78028}),
o(408918,{coords={{43.3,48,2023}},DisablePartySync=1,lc=a[14],questID=78029}),
o(408939,{coords={{42.6,50.9,2023}},cost={{"i",209061,1}},description="In cave.",questID=77578,g={
crit(60858,{achID=18646,id=11})}})}}),
q(77897,{coords={a[38]},lvl=10,qgs=a[25],repeatable=1,g={
i(208888),
q(78050,{an="o:408976",coords={{32.1,49.3,350}},DisablePartySync=1,lc=a[15],providers={a[7]},type="hqt"}),
q(78051,{an="o:408976",coords={{36.6,37.1,350}},DisablePartySync=1,lc=a[15],providers={a[7]},type="hqt"}),
q(78052,{an="o:408976",coords={{47.2,64.4,350}},DisablePartySync=1,lc=a[15],providers={a[7]},type="hqt"}),
o(408980,{coords={{33.1,50.9,350}},description="There are three clues inside the Guardian's Library. Pull out your thinking cap to find all three and the final object.",g={
i(208889,{spellID=420213})}})}}),
q(77908,{description="Quest takes place in Old Karazhan Raid",DisablePartySync=1,lc=a[15],lvl=10,providers={{"i",208889}},g={
crit(60859,{achID=18646,id=12,questID=77579})}}),
q(77928,{coords={a[38]},isDaily=1,lvl=10,qgs=a[25],repeatable=1,g={
i(208929),
q(78053,{an="o:409012",coords={{44.1,60.3,2112}},DisablePartySync=1,lc=a[16],providers={{"o",409012}},type="hqt"}),
q(78054,{an="o:409016",coords={{73.9,57.4,2112}},DisablePartySync=1,lc=a[16],providers={{"o",409016}},type="hqt"}),
q(78055,{an="o:409017",coords={{53,28.4,2112}},DisablePartySync=1,lc=a[16],providers={{"o",409017}},type="hqt"}),
q(78056,{an="o:409018",coords={{37.6,37.1,2112}},DisablePartySync=1,lc=a[16],providers={{"o",409018}},type="hqt"}),
q(78057,{an="o:409019",coords={{31.6,70.2,2112}},DisablePartySync=1,lc=a[16],providers={{"o",409019}},type="hqt"}),
q(78058,{an="o:409020",coords={{46,41.4,2112}},DisablePartySync=1,lc=a[16],providers={{"o",409020}},type="hqt"}),
i(208936)}}),
q(77934,{coords={{44.1,60.2,2112}},description="Use your Idol of Ohn'ahra to help find the pages.\n\nQuest begins automatically once all have been found.",DisablePartySync=1,lc=a[16],lvl=10,providers={{"i",208936}},sourceQuests={78053,78054,78055,78056,78057,78058},g={
crit(60861,{achID=18646,id=14,questID=77580})}}),
q(77953,{coords={a[37]},lvl=10,qgs=a[22],repeatable=1,sourceQuests={77934},g={
i(208942),
o(409320,{coords={{49.5,79.7,2025}},g={
q(78108,{an="i:208092",coords={{50.1,80.9,2025}},DisablePartySync=1,lc=a[10],providers={a[2]},type="hqt"}),
i(209795,{spellID=423408})}}),
o(409329,{coords={{45.9,79.7,2025}},g={
q(78109,{an="i:208092",coords={{46.6,77.6,2025}},DisablePartySync=1,lc=a[10],providers={a[2]},type="hqt"}),
i(209797,{spellID=423408})}}),
o(409333,{coords={{50.1,78,2025}},g={
q(78111,{an="i:208092",coords={{48.6,76.3,2025}},DisablePartySync=1,lc=a[10],providers={a[2]},type="hqt"}),
i(209799,{spellID=423408})}}),
i(208944,{cost={{"i",209799,1},{"i",209797,1},{"i",209795,1}}})}}),
q(77954,{coords={{47.4,46.7,2112}},DisablePartySync=1,lc=a[10],lvl=10,providers={{"i",208944}},g={
crit(60860,{achID=18646,id=13,questID=77520})}}),
q(77957,{coords={a[36]},lvl=10,qgs=a[24],repeatable=1,sourceQuests={77954},g={
i(208958),
q(77974,{description="Unlock the first lock by using your torch at all 8 Tyrhold staute.",DisablePartySync=1,lc=a[9],type="hqt",g={
q(77964,{an="i:208092",coords={{59.9,61,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77960,{an="i:208092",coords={{57.1,64.4,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77961,{an="i:208092",coords={{57.1,62.9,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77962,{an="i:208092",coords={{57.9,61.8,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77963,{an="i:208092",coords={{57.9,60.5,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77965,{an="i:208092",coords={{58,56.9,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77966,{an="i:208092",coords={{57.9,56,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"}),
q(77967,{an="i:208092",coords={{59.8,56.4,2025}},DisablePartySync=1,lc=a[9],providers={a[2]},type="hqt"})}}),
q(77975,{an="s:423792",coords={{61.1,58.7,2025}},DisablePartySync=1,lc=a[9],type="hqt"}),
q(77973,{description="Use your idol at each Ring/Room location to find Broken Urn's",DisablePartySync=1,lc=a[9],type="hqt",g={
o(409212,{coords={{59.8,62.3,2025}},description="Room on Ring #1",providers={a[1]},g={
i(208971,{spellID=421892})}}),
o(409211,{coords={{59.9,54.7,2025}},description="Room on Ring #1",providers={a[1]},g={
i(208970,{spellID=421892})}}),
o(409200,{coords={{59.7,54.9,2025}},description="Room on Ring #3",providers={a[1]},g={
i(208960)}}),
o(409214,{coords={{59.7,62.6,2025}},description="Room on Ring #3",providers={a[1]},g={
i(208973)}}),
o(409209,{coords={{62,61.9,2025}},description="Room on Ring #5",providers={a[1]},g={
i(208967,{spellID=421891})}}),
o(409208,{coords={{61.6,55.1,2025}},description="Room on Ring #5",providers={a[1]},g={
i(208966,{spellID=421891})}}),
i(208969,{cost={{"i",208970,1},{"i",208971,1}}}),
i(208965,{cost={{"i",208966,1},{"i",208967,1}}}),
q(77968,{an="o:409166",coords={{59.3,56.8,2025}},DisablePartySync=1,lc=a[9],providers={{"i",208960},a[8]},type="hqt"}),
q(77970,{an="o:409166",coords={{59.5,60.6,2025}},DisablePartySync=1,lc=a[9],providers={{"i",208969},a[8]},type="hqt"}),
q(77971,{an="o:409166",coords={{61,62.4,2025}},DisablePartySync=1,lc=a[9],providers={{"i",208973},a[8]},type="hqt"}),
q(77969,{an="o:409166",coords={{61,55,2025}},DisablePartySync=1,lc=a[9],providers={{"i",208965},a[8]},type="hqt"})}})}}),
q(77977,{coords={a[46]},DisablePartySync=1,lc=a[9],lvl=10,providers={{"o",411936}},sourceQuests={77973,77974,77975},g={
n(210674,{
i(209555)}),
o(409120,{coords={a[46]},g={
i(208980)}}),
crit(60862,{achID=18646,id=15,questID=77308})}})}),
h(-506,{
ah(424082,{type="s",g={
o(408060,{coords={{32.1,61.9,2112}}}),
o(408076,{coords={{81.6,47.6,2112}},providers={a[2]}}),
o(408079,{coords={{57.6,21.3,50}},providers={a[2]}}),
o(408080,{maps=a[31],providers={a[2]}}),
o(408081,{maps=a[31],providers={a[2]}}),
o(408082,{maps=a[31],providers={a[2]}}),
o(408083,{maps=a[31],providers={a[2]}}),
n(210398,{coords={{58.9,78.1,210}},description="Requries 3 people with Torch of Pyrreth to summon.",providers={a[2]},questID=78098,g={
i(208984,{b=1,spellID=424084})}}),
o(409914,{coords={{50.2,25.7,77}},description="Takes 4 people. Someone to control the Water Elemental, 3 people to Envelope",questID=78099,g={
i(209781,{b=1,spellID=424084})}}),
o(408860,{coords={{54.8,52.1,17}},description="Take out the cannons so you can loot.",questID=78100,g={
i(209055,{b=1,spellID=424084})}}),
mnt(424082,{b=1,cost={{"i",209055,1},{"i",209781,1},{"i",208984,1}},description="Combine the first, second, and third boosters near an Empowered\nArcane Forge to reforge and power Mimiron's Jumpjets.\n",itemID=210022,lvl=10})}})}),
h(-58,{
n(206864,{coords={{47.3,48.2,2112}},g={
i(229375,{awp=110005,b=1,f=55,spellID=464886})}})})}}),
h(-507,{awp=70305,g={
cq(49762,{an="s:258803",cost={{"i",122674,1}},crs={124828},maps={909,910,911,912,913,914,915,916,917,918,919,920},OnTooltip=_.OnTooltipDB.SelfieFilter,spellID=258803}),
cq(49761,{an="s:258749",cost={{"i",122674,1}},crs={52409},maps={367,368,369},OnTooltip=_.OnTooltipDB.SelfieFilter,spellID=258749}),
cq(49760,{an="s:258750",cost={{"i",122674,1}},crs={36597},maps={186,187,188,189,190,191,192,193,1359},OnTooltip=_.OnTooltipDB.SelfieFilter,spellID=258750}),
cq(49763,{an="s:258751",cost={{"i",122674,1}},crs={60999},maps={456},OnTooltip=_.OnTooltipDB.SelfieFilter,spellID=258751}),
cq(49764,{an="s:258752",cost={{"i",122674,1}},crs={43324},maps={294,295,296},OnTooltip=_.OnTooltipDB.SelfieFilter,spellID=258752})}}),
ah(231215,{description="***This secret requires you to have debug mode enabled to see the consumables/steps. To enable debug mode right click the ATT icon on the minimap, navigate to the general tab and check the \"|Cff15abffDebug Mode|r |cFFFFFFFF(Show Everything)|r\" box.*** \n\nIt also requires the battle pet Perky Pug from the Dungeons and Raids achievement Looking For Multitudes.\n\nEnjoy!\n\n!Note If coords are not plotting, you might need to make a standalone item, plot it, and then plot again from the main list.",displayID=74529,type="s",g={
o(9999908,{description="|cFFFFFFFFSTEP 1:|r Gather the following quantity of consumables:",g={
i(38320,{b=1,description="Qty:1\n\nObtained from Dark Iron Brewer in BRD.\n\nWalk/fly to BRD, or use the Direbrew's Remote obtained from Brewfest. Once inside the instance, take a left through the gate, and then right through another gate. Go through the door on the left, and click the Shadowforge Lock at the back of the room. Backtrack to the door, go up the ramp and take a left down the hallway. Continue down the hallway, until it opens up. Take the first right into \"The Manufactory\". Head right and through the door at the back of the room, over the bridge and into \"The Grim Guzzler\". Go up the stairs on the right and in the back of the room on the left is the Dark Iron Brewer. Talk to him until he passes out, and loot the Dire Brew that spawns.",f=55,spellID=51010,g={
n(144128,{coords={{39,18.3,35},{55,84.5,35},{21,38.3,36},{49.8,31.6,242},{49.8,60.9,243}}})}}),
i(44958,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",spellID=62408}),
i(18258,{description="Qty:1\n\nPurchase on the AH, make your own (pre Cata Tailors/Leatherworkers only), or head to Dire Maul North.\n\nOnce inside find Knot Thimblejack near Guard Slip'kik, and complete his quest for the suit.",spellID=22736}),
i(103789,{description="Qty:1\n\nPurchase on the AH or from the vendors below:",spellID=148244,g={
n(142065,{coords={{50.8,46,1161}},description="Boralus",r=2}),
n(98725,{coords={{29.2,40.4,582},{59.2,39.6,627}},description="Legion Dalaran or Garrison",r=2}),
n(141614,{coords={{34.8,13.1,1165}},description="Dazar'alor",r=1}),
n(115287,{coords={{32.6,42.8,590},{58.6,38,627}},description="Legion Dalaran or Garrison",r=1}),
n(73293,{coords={{35,52.8,554},{40,63,554},{41.6,47.2,554},{42.8,59.4,554}},description="Limited time vendor on Timeless Isle"})}}),
i(22845,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",f=55,lvl=25,spellID=28536}),
i(22841,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",f=55,lvl=25,spellID=28511}),
i(22842,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",f=55,lvl=25,spellID=28512}),
i(22847,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",f=55,lvl=25,spellID=28538}),
i(22844,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",f=55,lvl=25,spellID=28513}),
i(22846,{description="Qty:1\n\nPurchase on the AH or make your own (Alchemy).",f=55,lvl=25,spellID=28537}),
i(8529,{b=1,description="Qty:20\n\nPurchase from Sprinkle Noggenfogger in Tanaris.",f=55,spellID=16589,g={
n(98844,{coords={{51.2,29.8,71}}})}}),
n(37865,{description="Qty:1\n\nObtained from the Dungeons & Raids achievement \"Looking for Multitudes\"."}),
i(40195,{description="Qty:20\n\nPurchase on the AH or make your own (Alchemy).",spellID=53808}),
i(89373,{b=1,description="Qty:1\n\nObtained from killing Scotty in Townlong Steppes.\n\nScotty's behind the Mantid house in the middle of the tree, so either walk around the left side of the house, or fly just above the house down into the crevice.",spellID=130121,g={
n(66162,{coords={{21.6,46.5,388}}})}}),
i(955,{description="Qty:1\n\nPurchase on the AH, make your own (Inscription), or buy in limited quantities from the vendors below:",f=55,spellID=8096,g={
n(1316,{coords={{51.8,74.8,84}},description="Stormwind",r=2}),
n(958,{coords={{64.8,69.2,37}},description="Elwynn Forest",r=2}),
n(16224,{coords={{47.2,28.6,95}},description="Ghostlands",r=1}),
n(4581,{coords={{77.6,38.6,90}},description="Undercity",r=1})}}),
i(12820,{description="Qty:1\n\nPurchase on the AH, or farm Winterfall furbolgs in Winterspring.",f=55,lvl=20,spellID=17038})}}),
o(9999909,{coords={{57.2,14,12}},description="|cFFFFFFFFSTEP 2:|r Once you have gathered all of the consumables go to Caverns of Consumption on the North coast of Winterspring, and travel through the cavern to the fire barrier.\n\n***Before you continue, make sure you have 30-40 mins to finish the remaining steps***"}),
o(9999910,{description="|cFFFFFFFFSTEP 3:|r Use the Major Fire Protection Potion, and pass through the Fire Barrier."}),
o(9999911,{description="|cFFFFFFFFSTEP 4:|r Use the rest of the Major Potions and pass through the Prismatic Barrier."}),
o(9999912,{cost={{"i",8529,1}},description="|cFFFFFFFFSTEP 5:|r Use Noggenfogger Elixir until you turn into a Skeleton, then walk past the Diligent Watcher."}),
o(9999913,{cost={{"i",89373,1}},description="|cFFFFFFFFSTEP 6:|r On the right will be a Wall of Vines. Use Scotty's Lucky Coin, pass through the vines, and loot a Water Stone from the water.",g={
o(272434,{coords={{47.9,1.5,83}},g={
i(147455,{f=55,spellID=241710})}})}}),
o(9999914,{cost={{"i",147455,1}},description="|cFFFFFFFFSTEP 7:|r Use the Water Stone, backtrack to the Blue Barrier and walk through ever so slightly."}),
o(9999915,{description="|cFFFFFFFFSTEP 8:|r Use the Dire Brew and walk past the Stone Watcher."}),
o(9999916,{description="|cFFFFFFFFSTEP 9:|r Go up the ramp on the right to the Purple Transparent Barrier. Use Ethereal Oil and walk through the barrier to the Strange Stone in the back."}),
o(9999917,{description="|cFFFFFFFFSTEP 10:|r At the Strange Stone, use the Gordok Ogre Suit & Wintefall Firewater. Select the Strange Stones dialogue \"Stick arm in stone\" and receive Sign of the Second debuff."}),
o(9999918,{description="|cFFFFFFFFSTEP 11:|r Backtrack to the gate and use the Pygmy Oil until you turn into a Pygmy. Walk through the gate to the Wisdom Cube."}),
o(9999919,{description="|cFFFFFFFFSTEP 12:|r At the Wisdom Cube summon Perky Pug and use the Little Princess Costume on it. Select the Wisdom Cubes dialogue \"<Place arm beneath cube.>\" and receive Sign of the First debuff."}),
o(9999920,{description="|cFFFFFFFFSTEP 13a:|r Backtrack down the ramp to the now opened gate. DO NOT JUMP OFF. Enter the room and on a pillar on the right will be a Tarnished Plaque. Click on it.\n\nThe Tarnished Plaque reads:\n\n\"The greatest of achievments begins\nwith the smallest leap of the mind.\"\n\n|cFFFFFFFFSTEP 13b:|r After reading the Tarnished Plaque, click off at least one buff and use the Scroll of Intellect."}),
o(272487,{description="|cFFFFFFFFSTEP 14:|r DO NOT JUMP IN WATER. Walk to the edge of water on the right, behind the plaque, where the cavern slopes down into the water. Walk across the water and loot the egg.\n\nCongrats on your new pet!!! \n\n!Don't forget to turn off debug mode now that you are done.",isWeekly=1,modelScale=2,questID=48022,g={
p(382,{b=1,itemID=142223,npcID=61087,spellID=231215})}})}}),
ah(186639,{awp=110200,description="You can use one Cartel Deal per week on your account, across three weeks, equip the granted title then collect each dead drop within Manaforge Omega (Any difficulty) then return to the quartermaster for a new quest awarding your mount.",maps={2460,2461,2462,2463,2464,2465,2466,2467,2468,2469,2470,2471},minReputation=a[28],type="i",g={
o(555609,{cost={{"i",249702,1}},description="To the right of the first miniboss after Plexus.",maps={2460},minReputation=a[28],questID=92080,g={
i(249711)}}),
o(555611,{cost={{"i",249704,1}},description="On a rock past Fractillus near the edge of the map.",maps={2465},minReputation=a[28],questID=92081,g={
i(249712)}}),
o(555610,{cost={{"i",249700,1}},description="On top of a pipe in Mana-Vent Aphis before Forgeweaver Araz.",maps={2463},minReputation=a[28],questID=92079,g={
i(249710)}}),
q(92082,{coords={{42,22.1,2371}},lvl=70,qgs={245344},sourceQuests={92079,92080,92081},g={
toy(249713,{b=1}),
mnt(353264,{b=1,itemID=186639})}})}}),
ah(254763,{description="This secret is a prerequisite for Baa'l. It requires having collected |cff0070d0Uuna's Doll|r, which drops from |cff883325The Many-Faced Devourer|r, a rare elite in Antoran Wastes.",displayID=76829,modelScale=1.1,type="s",g={
q(50098,{description="1. Summon Uuna and wait for her to say one of the following lines:\n'|cffffffffMama? Mama! Why is it so dark? It's scary here...|r'\n'|cffffffffCan anybody hear me?|r'\n'|cffffffffC-c-cold...|r'\n",icon=134506,g={
q(50099,{description="2. |cffffffff/whistle|r at Uuna.\n",sourceQuests=a[40]}),
q(50100,{description="3. When she asks you questions, |cffffffff/roar|r at her.\n",sourceQuests=a[40]}),
q(50101,{description="4. Resummon Uuna and |cffffffff/cry|r at her. She will tell you that she wishes she could see you better, but it's too dark where she is.",sourceQuests=a[40]})}}),
q(50102,{coords={{54,44.7,111}},description="Take Uuna to A'dal in Shattrath City. The light of the Naaru is too bright, and she will run away.",icon=134506,sourceQuests=a[40]}),
q(50103,{coords={{18.9,41.6,63}},description="Take Uuna to the moonlight by Ashenvale's Lake Falathim.",icon=134506,sourceQuests={50102}}),
q(50104,{coords={{25.1,59.8,882},{32.6,74.9,882}},description="Most classes will need 2 |cffffffffGoblin Glider Kits|r to reach Nuu, who is in a house on a floating island in southwest Eredath.\n\nStart near the entrance to Seat of the Triumvirate and glide to the small rock, and then use your second glider to coast to the island further to the south.",icon=133632,sourceQuests={50103}}),
q(50105,{coords={{56.4,56.6,106}},description="Take Uuna to Blood Watch on Bloodmyst Isle.",icon=134506,sourceQuests={50104}}),
q(50106,{coords={{55.9,41.1,539}},description="Take Uuna to the small campsite northwest of Path of the Light in Draenor's Shadowmoon Valley. She will pick up the flower crown that is resting on one of the chairs around the campfire.",icon=134506,sourceQuests={50105}}),
q(50107,{description="Wait for a little while after Uuna picks up the flower crown. Void tendrils will eventually erupt from the ground and take her captive.",icon=134506,sourceQuests={50106}}),
q(50108,{description="Die and ask a Spirit Healer if they have seen Uuna. The Spirit Healer will give you permission to enter the spirit realm to try to find her. Resurrect (no need to do it through the Spirit Healer, just return to your corpse) and continue to the next step.",icon=134506,sourceQuests={50107}}),
q(50109,{coords={{66.1,74.5,115}},description="Click on the Shadow Tear in Dragonblight's Emerald Dragonshrine to look for Uuna in the spirit realm. Once inside, do the following:\n\n1. |cffffffff/cheer|r at Uuna.\n2. Place a |cffffffffCooking Fire|r next to her.\n3. Survive the gauntlet for 3 minutes, running into the |cff883325Soul-Eaters|r to scare them away.\n4. When Uuna wraps her arms around herself and cries, |cffffffff/hug|r her.",icon=134506,providers={{"o",280747}},sourceQuests={50108}}),
h(-508,{
q(50140,{coords={{8,59,390}},icon=134506,sourceQuests={50109}}),
q(50141,{coords={{62.3,83.7,680}},icon=134506,sourceQuests={50140}}),
q(50142,{coords={{72.4,45.9,627}},icon=134506,sourceQuests={50141}}),
q(50143,{coords={{57.8,54.6,115}},icon=134506,sourceQuests={50142}}),
q(50144,{coords={{59,24.1,198}},icon=134506,sourceQuests={50143}}),
q(50145,{coords={{44.8,52.3,379}},icon=134506,sourceQuests={50144}}),
q(50146,{coords={{37.5,67.4,33},{21.1,38.4,36}},icon=134506,sourceQuests={50145}}),
q(50147,{coords={{70.7,46.7,539}},icon=134506,sourceQuests={50146}})})}}),
ah(162690,{awp=80001,description="***Quest tracking enabled is required to see all the steps.***\n\nYou will need uncommon quality Windwool Hood, Deathsilk Shoulders, Netherweave Tunic, Frostwoven Leggings, as well as Proximo's Rudius, Rough Wooden Staff, Punctured Pelt, and Formula: Enchant Ring - Striking later on in the secret. It is recommended that you have flying and the Ever-Shifting Mirror toy for ease of travel between Draenor and Outland.",type="i",g={
o(9999946,{description="Souls fEast on the enDless shrieKing, in darKNess they writhe and scream, yOu WiLl join thEm, toGether forEver morE!",displayID=80456,questID=52829,sourceQuests={52828}}),
o(294096,{coords={{35.5,32,542}},description="Your journey continues in Spires of Arak. You must have summoned Baa'l at least once before you can continue. \n\nInside the small basket \n\nThe Orb Reads: \n\n\"<Something is written here.>\n\nPassive Ice Veins\"",model=1046021,questID=52830,sourceQuests={52829}}),
o(294097,{coords={{17.5,56.5,37}},description="Stormwind City\n\nThe Strange Seed reads: \n\n\"<Something is written here.>\n\nSadness, Keynoted\"",model=940623,modelScale=2,questID=52831,sourceQuests={52830}}),
o(294098,{coords={{53.5,10.8,542}},description="Spires of Arak\n\nUnderwater on top of the large rock. \n\nThe Tiny Frog says:\n\n\"<Something is written here.>\n\nDog wig moss?\"",model=367326,modelScale=0.5,questID=52898,sourceQuests={52831}}),
o(294099,{coords={{33.6,58.2,105}},description="Blades Edge Mountains\n\nOn the ground next to a crystal. \n\nThe Brittle Bone reads:\n\n\"<Something is written here.>\n\nRage, Shank Sever\"",model=774346,modelScale=0.5,questID=52899,sourceQuests={52898}}),
o(294100,{coords={{67.9,41,542}},description="Spires of Arak\n\nNext to a large candle. \n\nThe Misplaced Candle reads:\n\n\"<Something is written here.>\n\nRankest Goldfish\"",model=1307043,questID=52900,sourceQuests={52899}}),
o(294101,{coords={{45.7,26.2,539}},description="Draenor SMV\n\nBrown cup, next to the fire. \n\nThe Odd Cup reads:\n\n\"<Something is written here.>\n\nEase off fruit...\"",model=1822968,modelScale=0.5,questID=52901,sourceQuests={52900}}),
o(294102,{coords={{51.6,43.8,104}},description="Outland SMV\n\nOn top of the mountain.\n\nThe Interesting Rock reads:\n\n\"<Something is written here.>\n\nThe BIG Bull\"",model=939054,modelScale=0.5,questID=52902,sourceQuests={52901}}),
o(294103,{coords={{58,31.6,51}},description="Swamp of Sorrows\n\nUnder the tree, on top of the water.\n\nThe Blooming Lily reads:\n\n\"<Something is written here.>\n\nJaws open nooks!\"",model=343460,questID=52903,sourceQuests={52902}}),
o(294104,{coords={{24,78,23}},description="Eastern Plaguelands\n\nInside the crypt, on top of the sarcophagus lid\n\nThe Pretty Flower reads:\n\n\"<Something is written here.>\n\nDead Rune Thug\"",model=1124095,modelScale=0.5,questID=52904,sourceQuests={52903}}),
o(294105,{coords={{41.2,78.9,42}},description="Deadwind Pass\n\nInside the old church, near the table.\n\nThe Old Book reads:\n\n\"<Something is written here.>\n\n...A Stage Deception\"",model=244161,modelScale=0.5,questID=52905,sourceQuests={52904}}),
o(294106,{coords={{77.9,44.3,33},{21,38.2,36}},description="Blackrock Mountain\n\nRoom next to LBRS entrance, next to the fire.\n\nThe Dead Fish says:\n\n\"<Something is written here.>\n\nNecropolis Expos!\"",model=189087,modelScale=0.5,questID=52906,sourceQuests={52905}}),
o(294107,{coords={{52,62.4,47}},description="Duskwood\n\nUnderneath the large plank.\n\nThe Scratched Board reads:\n\n\"<Something is written here.>\n\nThe net saves.\"",model=625180,modelScale=3,questID=52907,sourceQuests={52906}}),
o(294108,{coords={{44.6,26.4,25}},description="Hillsbrad Foothills\n\nJust inside the clocktower, left pile of bones.\n\nThe Lost Ring reads:\n\n\"<Something is written here.>\n\nTerrible grunt.\"",model=242730,questID=52908,sourceQuests={52907}}),
o(294109,{coords={{90.1,37.9,15}},description="Badlands\n\nInside the larger building, on the table, next to the roasted boar.\n\nThe Spoiled Apple reads:\n\n\"<Something is written here.>\n\nLeave Nets, Often\"",model=960844,modelScale=0.5,questID=52909,sourceQuests={52908}}),
o(294110,{coords={{36.8,27.6,17}},description="Blasted Lands\n\nBase of the statue, near a candle. The tooth is present in both the past and present.\n\nThe Broken tooth reads:\n\n\"<Something is written here.>\n\nBrash remains.\"",model=442505,questID=52910,sourceQuests={52909}}),
o(294111,{coords={{27.1,47,36}},description="Burning Steppes\n\nEquipped on the larger brown skeletons head.\n\nThe Worn Helm reads:\n\n\"<Something is written here.>\n\nSensed the Figs...\"",model=197882,modelScale=0.5,questID=52911,sourceQuests={52910}}),
o(294112,{coords={{42.75,20.18,125}},description="Northrend Dalaran\n\nIn front of the left planter.\n\nThe Leafy Leaf reads:\n\n\"<Something is written here.>\n\nPhantasmal Hosts?\"",model=523642,modelScale=2,questID=52912,sourceQuests={52911}}),
o(294113,{coords={{40.2,72.5,108}},description="Terrokar Forrest\n\nInside the crate, inside the tent, near the Shadow Labs entrance.\n\nThe Musty Cloth reads:\n\n\"<Something is written here.>\n\nScarce odds, still.\"",model=1360796,questID=52913,sourceQuests={52912}}),
o(294114,{coords={{17.1,57.9,241}},description="Twilight Highlands\n\nOn the ground next to the mace.\n\nThe Broken Tablet reads:\n\n\"<Something is written here.>\n\nStarfish droplets!\"",model=202596,modelScale=2,questID=52914,sourceQuests={52913}}),
o(294115,{coords={{60.8,67.8,69}},description="Feralas\n\nMiddle of the remains and table, sticking out of the ground.\n\nThe Ashed Torch reads:\n\n\"<Something is written here.>\n\n...a daft tormenter's fog.\"",model=341882,modelScale=2,questID=52915,sourceQuests={52914}}),
o(294312,{coords={{38.2,90.1,14},{85.4,73.6,14}},description="Head to the past version of Arathi Highlands, and click on the note on the table inside Grimmy's house.\n\nGrimmy's List of Friends reads:\n\n\"List of My Friends?\nFirst is SN, you always smelled so good\nSecond is TM, you smelled like burning\nwood\nThird is FD, though you smelled like fel\nLast is OM, I hated that fishy smell\"",model=305392,modelScale=0.5,questID=52916,sourceQuests={52915}}),
q(52917,{description="Equip the Windwool Hood, Deathsilk Shoulders, Netherweave Tunic, and Frostwoven Leggings, and talk to Grimmy. Select his dialogue \"It's me, your friend. Got any secrets to tell me about?\"",qgs={138578},sourceQuests={52916}}),
o(294314,{description="After selecting the Grimmy dialogue, a note appears on his bedstand. Click it. Grimmy's List of Enemies reads:\n\n\"You flaunted your virility, and red was\nnever to my liking\nThough I wanted to slap you, I always\nfound you striking.\n\nYou Always though you knew what was\nbest, but not everyone likes greens,\nThough I waved your way, I pictured\nyour shredded hide in my dreams.\n??\nYour bread was bad, you diseased lout,\nit made me sick.\nI woudl cheerily beat you with a stick.\n??\nLast you, I'm not eve going to think of\na rhyme for you, Mugs.\nI will dance on your grave, you were\nuniquely terrible.\"\n\nGo to each of the following NPCs with Proximo's Rudius, Rough Wooden Staff, Punctured Pelt, and Formula: Enchant Ring - Striking, and emote to them.",model=305391,questID=52918,sourceQuests={52917}}),
n(47121,{coords={{28.5,24.9,241}},description="Twilight Highlands\n\n/slap",questID=52822,sourceQuests=a[41]}),
n(36034,{coords={{57.5,47.7,66}},description="Desolace\n\n/wave",questID=52823,sourceQuests=a[41]}),
n(28792,{coords={{40.6,68.7,121}},description="Zul'drak\n\n/cheer",questID=52824,sourceQuests=a[41]}),
n(62877,{coords={{44.4,90.3,379}},description="Kun-Lai Summit\n\n/dance",questID=52826,sourceQuests=a[41]}),
n(138578,{coords={{85.3,73.6,14}},description="Return to Grimmy and select his new dialogue\n\n\"I've sent some messages to your enemies, now about those secrets...\"",questID=52919,sourceQuests={52822,52823,52824,52826}}),
o(294315,{description="After selecting Grimmy's dialogue, a new note appears by the fireplace. Click it. Grimmy's Favorite Recipe reads:\n\n\"A pinch of turmeric and a pound of salt,\nif it comes out poorly it's your own\nfault.\n\nPay attention to the broth, and stir,stir,\nstir!\nThen add a big handful of boar fur.\n\nLast you need a little sour,\nget the kick with a little gunpowder!\"",model=936411,modelScale=0.5,questID=52920,sourceQuests={52919}}),
o(294335,{coords={{88.4,69.2,14}},description="Go outside and find the Rotten Potato. You will need to get exactly 144 stacks of Rotten Potato by clicking the potato. After getting 144 stacks of the buff, go back and talk to Grimmy and select his new dialogue option\"How do I smell?\"\n\nGrimmy's new dialogue says:\n\n\"Oh, my, just like my mother used to after she made her famous pie.\n\nVery well, I will show you...my life's work!\n\nIt's in the chest out back, and it's all yours!\n\nI hope it was worth it!\"",model=2020463,modelScale=0.5,questID=52921,sourceQuests={52920}}),
o(294703,{coords={{85.1,73.3,14}},description="After asking Grimmy how you smell, go outside behind and above his house, and on the hill will be Grimmy's Rusty Lockbox waiting for you to open it.",questID=52922,sourceQuests={52921},g={
s(98614,162690,{f=2,lvl=45})}})}})};
