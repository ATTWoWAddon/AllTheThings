-- #if NOT DEBUG
-- PROGRAMMATIC OBJECT LOCALES
-- Brightly Colored Egg
local brightlyColoredEgg = ObjectDB[113768];
brightlyColoredEgg.icon = [[~_.asset("Holiday_noblegarden")]];
brightlyColoredEgg.text.en = WOWAPI_GetSpellName(61820);

-- Spirit of the Wolf
ObjectDB[226469].text.en = WOWAPI_GetSpellName(154259);

-- #if BEFORE WRATH
ObjectDB[176344] = {
	readable = "Document Chest",
	icon = 134943,
	model = 196976,
	text = {
		en = "Document Chest",
		es = "Cofre de documentos",
		de = "Dokumententruhe",
		fr = "Coffre de documents",
		it = "[Document Chest]",
		pt = "Baú de Documentos",
		ru = "Ящик с документами",
		ko = "문서함",
		cn = "文件箱",
	},
};
ObjectDB[190483] = {
	readable = "Document Chest",
	icon = 134943,
	model = 196976,
	text = {
		en = "Document Chest",
		es = "Cofre de documentos",
		de = "Dokumententruhe",
		fr = "Coffre de documents",
		it = "[Document Chest]",
		pt = "Baú de Documentos",
		ru = "Ящик с документами",
		ko = "문서함",
		cn = "文件箱",
	},
};
ObjectDB[190484] = {
	readable = "Document Chest",
	icon = 134943,
	model = 196976,
	text = {
		en = "Document Chest",
		es = "Cofre de documentos",
		de = "Dokumententruhe",
		fr = "Coffre de documents",
		it = "[Document Chest]",
		pt = "Baú de Documentos",
		ru = "Ящик с документами",
		ko = "문서함",
		cn = "文件箱",
	},
};
-- #endif

-- #if BEFORE CATA
ObjectDB[256] = {
	readable = "WANTED",
	icon = 134939,
	model = 199424,
	text = {
		en = "WANTED",
		es = "SE BUSCA",
		de = "GESUCHT",
		fr = "AVIS DE RECHERCHE",
		it = "RICERCATO",
		pt = "PROCURA-SE",
		ru = "РАЗЫСКИВАЕТСЯ",
		ko = "현상 수배!",
		cn = "通缉",
	},
};
-- #else
ObjectDB[57] = {
	readable = "Bloodscalp Lore Tablet",
	model = 200640,
	text = {
		en = "Bloodscalp Lore Tablet",
		es = "Tablilla de conocimiento Sangrapellejo",
		de = "Schrifttafel der Blutskalpe",
		fr = "Tablette de savoir scalp-rouge",
		it = "Tavoletta Mistica degli Scalporosso",
		pt = "Tabuleta de História dos Sanguescalpo",
		ru = "Легенды и предания племени Кровавого Скальпа",
		ko = "붉은머리 전통지식 서판",
		cn = "月亮照耀着山谷",
	},
};
-- #endif

-- #if BEFORE MOP
-- During Cataclysm Classic, the name of this object had extra spaces in it. Silly Blizzard.
-- NOTE: Check this again during MOP.
ObjectDB[206293] = {
	readable = "A.I.D.A. Terminal",
	model = 201023,
	text = {
		en = "A. I. D.A. Terminal",
		es = "Terminal A. I. D.A.",
		de = "A. I. D.A.-Terminal",
		fr = "Terminal A. I. D.A.",
		it = "Terminale A. I. D.A.",
		pt = "Terminal A. I. D.A.",
		ru = "Терминал АИДА",
		ko = "인공지능 단말기",
	},
};
-- #endif

-- TODO: Change the headers for this stuff to a custom header and allow the object localizer to translate the object so it appears on the tooltip.
-- Item 1: Scintillating Murloc Skin Lotion
local locales = ObjectDB[13000002].text;
for key,value in pairs({
	es = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 1:|r Loción para piel múrloc centelleante"]],
	de = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 1:|r Schillernde Murlochautcreme"]],
	fr = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 1:|r Lotion scintillante murloc pour la peau"]],
	pt = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 1:|r Creme Cintilante para Pele de Murloc"]],
	cn = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 1:|r 闪烁的鱼人皮润滑剂"]],
}) do
	locales[key] = value;
end

-- Item 2: Potent Gastropod Gloop
local locales = ObjectDB[13000018].text;
for key,value in pairs({
	es = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 2:|r Pegote de gasterópodo potente"]],
	de = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 2:|r Potenter Schneckenschleim"]],
	fr = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 2:|r Glaire gluante de gastéropode"]],
	pt = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 2:|r Gosma de Gastrópode Potente"]],
	cn = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 2:|r 强力的蜗牛粘液"]],
}) do
	locales[key] = value;
end

-- Item 3: Captured Cavitation Bubble
local locales = ObjectDB[13000024].text;
for key,value in pairs({
	es = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 3:|r Burbuja de cavitación capturada"]],
	de = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 3:|r Eingefangene Kavitationsblase"]],
	fr = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 3:|r Bulle de cavitation emprisonnée"]],
	pt = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 3:|r Bolha de Cavitação Capturada"]],
	cn = [[~"|cFFFFFFFF"..AUCTION_HOUSE_HEADER_ITEM.." 3:|r 捕获的空穴气泡"]],
}) do
	locales[key] = value;
end



-- CONDITIONAL OBJECT LOCALES
-- #if BEFORE TBC
ObjectDB[68].text.ko = "현상수배 전단";	-- Wanted Poster
-- #endif

-- #if BEFORE CATA
ObjectDB[1673].model = 202013;	-- Fel Cone

local plantBundle = ObjectDB[17282];
plantBundle.readable = "Plant Bundle";
plantBundle.icon = 134185;
plantBundle.model = 203748;
plantBundle.text.en = "Plant Bundle";
plantBundle.text.es = "Paquete de plantas";
plantBundle.text.de = "Pflanzenbündel";
plantBundle.text.fr = "Botte de plantes";
plantBundle.text.it = "Plant Bundle";
plantBundle.text.pt = "Pacote de Plantas";
plantBundle.text.ru = "Пучок трав";
plantBundle.text.ko = "식물 꾸러미";
plantBundle.text.cn = "草药";

local elunesTear = ObjectDB[19015];
elunesTear.readable = "Elune's Tear";
elunesTear.icon = 134564;
elunesTear.model = 198719;
elunesTear.text.en = "Elune's Tear";
elunesTear.text.es = "Lágrima de Elune";
elunesTear.text.de = "Elunes Träne";
elunesTear.text.fr = "Larme d'Elune";
elunesTear.text.it = "Lacrima di Elune";
elunesTear.text.pt = "Lágrima de Eluna";
elunesTear.text.ru = "Слеза Элуны";
elunesTear.text.ko = "엘룬의 눈물";
elunesTear.text.cn = "月神之泪";
-- #endif

-- #if BEFORE WRATH
local locales = brightlyColoredEgg.text;
for key,value in pairs({
	en = "Brightly Colored Egg",
	es = "Huevo de color vivo",
	de = "Osterei",
	fr = "Oeuf de Pâques",
	it = "Uovo Decorato",
	pt = "Ovo Colorido Brilhante",
	ru = "Ярко окрашенное яйцо",
	ko = "오색찬란한 알",
	cn = "复活节彩蛋",
}) do
	locales[key] = value;
end
-- #endif

-- #if BEFORE TBC
ObjectDB[141832].text.de = "Gong von Zul’Farrak";	-- Gong of Zul'Farrak
ObjectDB[156561].text.ko = "현상수배 전단";	-- Wanted Poster
-- #endif

-- #if BEFORE TBC
ObjectDB[175329].text.es = "Provisiones de nueces del Bosque Negro";	-- Blackwood Nut Stores
ObjectDB[175330].text.es = "Provisiones de fruta del Bosque Negro";	-- Blackwood Fruit Stores
ObjectDB[175331].text.es = "Provisiones de grano del Bosque Negro";	-- Blackwood Grain Stores
-- #endif

-- #if BEFORE CATA
-- Crossroads Supply Crates
local locales = ObjectDB[175708].text;
for key,value in pairs({
	en = "Crossroads' Supply Crates",
	es = "Cajones de suministros de El Cruce",
	de = "Vorratskisten von Crossroads",
	fr = "Caisses de ravitaillement de la Croisée",
	it = "Crossroads' Supply Crates",
	pt = "Caixote de Suprimentos da Encruzilhada",
	ru = "Ящики с припасами для Перекрестка",
	ko = "크로스로드 보급품 상자",
	cn = "十字路口的补给箱",
}) do
	locales[key] = value;
end
-- #endif

-- #if BEFORE WRATH
ObjectDB[176213].text.es = "Sangre de Héroes";	-- Blood of Heroes
-- #endif

-- #if BEFORE CATA
ObjectDB[182947].icon = 133738;	-- The Codex of Blood
-- #endif
-- #endif

-- Hero's Call Board
for i,objectID in pairs({
	206111,
	206294,
	207320,
	207321,
	207322,
	208316,
	250720,
	250804,
	278574,
	278575,
	281339,
}) do
	-- #if AFTER 7.3.5
	ObjectDB[objectID].icon = 1863940;
	-- #elseif AFTER 5.4.2
	ObjectDB[objectID].icon = 464076;
	-- #else
	ObjectDB[objectID].icon = 134328;
	-- #endif
end

-- Warchief's Command Board
for i,objectID in pairs({
	206109,
	206116,
	207279,
	207323,
	207324,
	207325,
	208317,
	278347,
	278457,
	281340,
}) do
	-- #if AFTER 7.3.5
	ObjectDB[objectID].icon = 1863940;
	-- #elseif AFTER 5.4.2
	ObjectDB[objectID].icon = 464078;
	-- #else
	ObjectDB[objectID].icon = 134328;
	-- #endif
end

-- Objects which currently do not resolve on Wowhead
local MissingObjects = {
	[176693] = "Dreamfoil",
	[207103] = "Elemental Gate",
	[211129] = "Signal Flame",
	[254446] = "Bottle of Arcwine",
	[254491] = "Nightborne Arms Cache",
	[254643] = "Bottle of Arcwine",
	[254645] = "Bottle of Arcwine",
	[254648] = "Bottle of Arcwine",
	[254650] = "Bottle of Arcwine",
	[254654] = "Bottle of Arcwine",
	[495146] = "Semi-Deluxe Noggenfogger Elixirs",
}

for id,enName in pairs(MissingObjects) do
	local text = ObjectDB[id].text
	if not text or not text.en then
		ObjectDB[id] = {
			text = {
				en = enName,
				readable = enName,
			},
		}
	end
end
