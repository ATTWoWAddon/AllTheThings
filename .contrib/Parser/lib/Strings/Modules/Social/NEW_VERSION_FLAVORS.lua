-- Build a list of all of the Version Flavors and provide localization for each line.
local textData = {};
function addVersionFlavor(localeData)
	for locale,data in pairs(localeData) do
		local str = "\"" .. data .. "\"";
		local flavor = textData[locale];
		if flavor then
			textData[locale] = flavor .. "," .. str;
		else
			textData[locale] = str;
		end
	end
end

-- Version Flavors
addVersionFlavor({
	en = "because AllTheThings hungers.",
	de = "weil AllTheThings hungert.",
	es = "AllTheThings tiene hambre.",
	mx = "AllTheThings tiene hambre.",
	fr = "parce que AllTheThings a faim.",
	it = "perché AllTheThings ha fame.",
	pt = "porque AllTheThings tem fome.",
	ru = "потому что AllTheThings голоден.",
	ko = "AllTheThings가 배고프기 때문입니다.",
	cn = "因为 AllTheThings 饿了。",
	tw = "因為 AllTheThings 餓了。",
});
addVersionFlavor({
	en = "and Invincible will drop |cffffaaaafor sure|r next time.",
	-- TODO: de = "",
	es = "e Invencible te caerá |cffffaaaasegurísimo|r la próxima vez",
	mx = "e Invencible te caerá |cffffaaaasegurísimo|r la próxima vez",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	ru = "и Непобедимый |cffffaaaaточно|r дропнет в следующий раз",
	-- TODO: ko = "",
	cn = "下次|cffffaaaa一定|r出无敌！",
	tw = "下次|cffffaaaa一定|r會掉落無敵！",
});
addVersionFlavor({
	en = "or a murloc will scream outside your window tonight.",
	-- TODO: de = "",
	-- TODO: es = "",
	-- TODO: mx = "",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: ko = "",
	cn = "否则今晚会有鱼人在你窗外尖叫。",
	tw = "否則今晚會有魚人在你窗外尖叫",
});
addVersionFlavor({
	en = "because collecting is just hoarding with extra steps.",
	-- TODO: de = "",
	-- TODO: es = "",
	-- TODO: mx = "",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: ko = "",
	cn = "因为所谓的收藏，不过是换了个说法的囤积癖罢了。",
	tw = "因為所謂的收藏不過是換個說法的囤積癖。",
});
addVersionFlavor({
	en = "and Crieve will help a turtle to make it to the water.",
	-- TODO: de = "",
	es = "y Crieve ayudará a una tortuga a llegar al agua.",
	mx = "y Crieve ayudará a una tortuga a llegar al agua.",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: ko = "",
	cn = "而 Crieve 会帮一只乌龟重新入水。",
	tw = "而 Crieve 會幫一隻烏龜重新入水。",
});
addVersionFlavor({
	en = "or your battle pets will unionize.",
	-- TODO: de = "",
	-- TODO: es = "",
	-- TODO: mx = "",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: ko = "",
	cn = "否则你的战斗宠物就要成立公会了！",
	tw = "否則你的戰鬥寵物要成立工會了。",
});
--[[
addVersionFlavor({
	en = "or Sylvanas might get another lighter.",
	-- TODO: de = "",
	es = "o le daremos otro mechero a Sylvanas",
	mx = "o le daremos otro encendedor a Sylvanas",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	ru = "или мы дадим Сильване ещё одну зажигалку",
	-- TODO: ko = "",
	cn = "不然希尔瓦娜斯要拿到另一个打火机了。",
	tw = "要不我們給希爾瓦娜斯另一把火炬",
});
]]--
--[[
addVersionFlavor({
	en = "as Alexstrasza is worried about you.",
	-- TODO: de = "",
	es = "Alexstrasza está preocupada por ti",
	mx = "Alexstrasza está preocupada por ti",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	ru = "Алекстраза беспокоится о Вас",
	-- TODO: ko = "",
	cn = "阿莱克丝塔萨很担心你。",
	tw = "雅立史卓莎很擔心你",
});
]]--
--[[
addVersionFlavor({
	en = "this was merely a setback.",
	-- TODO: de = "",
	es = "fue solo un mero contratiempo",
	mx = "fue solo un mero contratiempo",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	ru = "это была всего лишь мелкая помеха",
	-- TODO: ko = "",
	cn = "这只是一个小挫折。",
	tw = "這只是一個挫折",
});
]]--
--[[
addVersionFlavor({
	en = ", Yes Chef!",
	-- TODO: de = "",
	es = ", Si, Chef",
	mx = ", Si, Chef",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: ko = "",
	cn = "是，大厨！",
	tw = "是的，大廚！",
});
]]--
--[[
addVersionFlavor({
	en = "CHAMPYUUN, DE AZURIITE.",
	-- TODO: de = "",
	es = "ADALIIID, LA AZERITAAA",
	mx = "ADALIIID, LA AZERITAAA",
	-- TODO: fr = "",
	-- TODO: it = "",
	-- TODO: pt = "",
	-- TODO: ru = "",
	-- TODO: ko = "",
	cn = "艾泽拉斯的勇士。",
	tw = "艾澤拉斯的勇士。",
});
]]--

-- Finalize the Version Flavors
for locale,data in pairs(textData) do
	textData[locale] = "~{" .. data .. "}";
end
createLocalizationString({
	readable = "A newer version of %s is available. Please update the AddOn %s",
	constant = "NEW_VERSION_FLAVORS",
	export = true,
	text = textData,
})
