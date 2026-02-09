---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,i,mnt,p=_.CreateFilter,_.CreateItem,_.CreateMount,_.CreateSpecies;
categories.InGameShop={
flt(101,{u=3,g={
p(297,{b=1,itemID=68385,npcID=51600,petTypeID=7,q=3,spellID=95787,u=1}),
p(347,{b=1,itemID=78916,npcID=58163,petTypeID=2,q=3,spellID=110029,u=1}),
p(316,{awp=40100,b=1,itemID=70099,npcID=53623,petTypeID=3,q=4,rwp=80300,spellID=99578,u=2}),
i(69847,{awp=40100,b=1,f=101,q=3,rwp=40200,u=2}),
p(311,{awp=40200,itemID=72068,npcID=53283,petTypeID=3,q=3,rwp=50407,spellID=98736,u=2}),
p(245,{awp=30302,b=1,description="This item is available only if you purchase the Plush Toy and redeem the code.",itemID=49662,npcID=36908,petTypeID=3,q=3,rwp=80300,spellID=69535,u=2}),
p(249,{awp=30202,b=1,itemID=49693,npcID=36979,petTypeID=4,q=3,rwp=100002,spellID=69677,u=2}),
p(256,{awp=30303,b=1,itemID=54847,npcID=40703,petTypeID=10,q=3,rwp=80300,spellID=75906,u=2}),
i(68384,{awp=40003,b=1,f=101,q=3,rwp=80300,u=2}),
p(296,{awp=40003,b=1,itemID=68618,npcID=51601,petTypeID=1,q=3,r=2,rwp=80300,spellID=95786,u=2}),
p(298,{awp=40003,b=1,itemID=68619,npcID=51649,petTypeID=1,q=3,r=1,rwp=80300,spellID=95909,u=2}),
p(248,{awp=30202,b=1,itemID=49665,npcID=36911,petTypeID=1,q=3,rwp=100002,spellID=69541,u=2}),
p(246,{awp=30302,b=1,description="This item is available only if you purchase the Plush Toy and redeem the code.",itemID=49663,npcID=36909,petTypeID=8,q=3,rwp=80300,spellID=69536,u=2})}}),
flt(100,{u=3,g={
mnt(440915,{awp=30403,u=3}),
mnt(110051,{b=1,itemID=78924,lvl=20,q=4,u=1}),
mnt(372677,{awp=30400,b=1,itemID=192455,lvl=20,q=4,u=3}),
mnt(348459,{awp=20501,b=1,itemID=184865,lvl=20,q=4,u=3}),
mnt(75614,{awp=30303,b=1,itemID=54811,lvl=20,q=4,rwp=100002,u=2}),
mnt(466948,{awp=40401,rwp=40402,u=2}),
mnt(466983,{awp=40401,rwp=40402,u=2}),
mnt(466980,{awp=40401,rwp=40402,u=2}),
mnt(466977,{awp=40401,rwp=40402,u=2}),
mnt(98727,{awp=40100,b=1,itemID=69846,lvl=20,q=4,rwp=100002,u=2})}})};
end);
