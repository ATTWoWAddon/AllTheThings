---@diagnostic disable: deprecated
local appName, _ = ...
_.AddEventHandler("OnBuildDataCache", function(categories)
local flt,h,i,mnt,p=_.CreateFilter,_.CreateCustomHeader,_.CreateItem,_.CreateMount,_.CreateSpecies;
categories.InGameShop=
h(-213,{SortPriority=85,g={
flt(101,{u=3,g={
p(245,{awp=30302,b=1,description="This item is available only if you purchase the Plush Toy and redeem the code.",itemID=49662,petTypeID=3,q=3,rwp=80300,spellID=69535,u=2}),
p(249,{awp=30202,b=1,itemID=49693,petTypeID=4,q=3,rwp=100002,spellID=69677,u=2}),
p(256,{awp=30303,b=1,itemID=54847,petTypeID=10,q=3,rwp=80300,spellID=75906,u=2}),
p(248,{awp=30202,b=1,itemID=49665,petTypeID=1,q=3,rwp=100002,spellID=69541,u=2}),
p(246,{awp=30302,b=1,description="This item is available only if you purchase the Plush Toy and redeem the code.",itemID=49663,petTypeID=8,q=3,rwp=80300,spellID=69536,u=2})}}),
flt(100,{u=3,g={
mnt(440915,{awp=30403,u=3}),
mnt(372677,{awp=30400,itemID=192455,lvl=20,u=3}),
mnt(348459,{awp=30400,itemID=184865,lvl=20,u=3}),
mnt(75614,{awp=30303,b=1,itemID=54811,lvl=20,q=4,rwp=100002,u=2})}}),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
i(235378,{awp=30403,description="Can be bought for ¥200 RMB (~$27 USD) in the Ingame Shop.\n\nYou can only purchase 12 boxes per year.",rwp=30510,u=3,g={(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
mnt(459784,{itemID=227362,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
i(35223,{b=1,f=55,q=3,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
i(46779,{b=1,f=55,q=1,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
mnt(42777,{itemID=49284,lvl=40,q=4,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
mnt(42776,{itemID=49283,lvl=20,q=3,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
i(45047,{b=1,f=55,q=3,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
mnt(46197,{itemID=49285,lvl=60,q=3,u=3})),(function(t)if GetCVar("portal")~="CN" then	t.u=1 end	return t end)(
mnt(46199,{itemID=49286,lvl=70,q=4,u=3}))}}))}})
end)
