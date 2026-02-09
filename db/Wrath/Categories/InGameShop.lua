---@diagnostic disable: deprecated
local appName, _ = ...;
_.AddEventHandler("OnGetDataCache", function(categories)
local flt,mnt,p=_.CreateFilter,_.CreateMount,_.CreateSpecies;
categories.InGameShop={
flt(101,{u=3,g={
p(245,{awp=30302,b=1,description="This item is available only if you purchase the Plush Toy and redeem the code.",itemID=49662,petTypeID=3,q=3,rwp=80300,spellID=69535,u=2}),
p(249,{awp=30202,b=1,itemID=49693,petTypeID=4,q=3,rwp=100002,spellID=69677,u=2}),
p(256,{awp=30303,b=1,itemID=54847,petTypeID=10,q=3,rwp=80300,spellID=75906,u=2}),
p(248,{awp=30202,b=1,itemID=49665,petTypeID=1,q=3,rwp=100002,spellID=69541,u=2}),
p(246,{awp=30302,b=1,description="This item is available only if you purchase the Plush Toy and redeem the code.",itemID=49663,petTypeID=8,q=3,rwp=80300,spellID=69536,u=2})}}),
flt(100,{u=3,g={
mnt(440915,{awp=30403,u=3}),
mnt(372677,{awp=30400,itemID=192455,lvl=20,u=3}),
mnt(348459,{awp=20501,itemID=184865,lvl=20,u=3}),
mnt(75614,{awp=30303,b=1,itemID=54811,lvl=20,q=4,races={1,2,3,4,5,6,7,8,10,11},rwp=100002,u=2})}})};
end);
