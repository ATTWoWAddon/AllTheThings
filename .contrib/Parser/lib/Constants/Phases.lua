-- Create a Phase. Returns a UNIQUE ID, starting at 1.
(function()
--if not NextPhaseID then
	NextPhaseID = 1;
	PhaseAssignments = {};
--end
local phases = {};
local phasesByReadable, phasesByConstant = {}, {};
Phases = phases;	-- This is global, so that it can be found by Parser!
VALID_PHASES = {}	-- This is global, so that it can be found by Parser!
local defaultStateColors = {
	"FFFF0000",
	"FFFFAAAA",
	"FFAAFFAA",
	"FFAAFFAA",
	"FFAAFFAA",
};
createPhase = function(data)
	if not data then
		print("INVALID PHASE: You must pass data into the createPhase function.");
	--elseif not data.readable then
	--	print("INVALID PHASE (missing 'readable')", data.readable or (type(data.text) == "table" and data.text.en) or data.text);
	elseif not (data.text and (type(data.text) == "string" or (type(data.text) == "table" and data.text.en))) then
		print("INVALID PHASE", data.readable, data.text);
	else
		if not data.readable then data.readable = data.text.en; end
		if data.constant then
			if phasesByConstant[data.constant] then
				error("ERROR: PHASE CONSTANT " .. data.constant .. " ALREADY ASSIGNED TO " .. phasesByConstant[data.constant].text.en .. ". Please double check that the definition is unique or reuse the same phase.");
			else
				phasesByConstant[data.constant] = data;
			end
		end
		if phasesByReadable[data.readable] then
			--error("ERROR: PHASE READABLE " .. data.readable .. " ALREADY ASSIGNED TO " .. phasesByReadable[data.readable].text.en .. ". Please double check that the definition is unique or reuse the same phase.");
		else
			phasesByReadable[data.readable] = data;
		end

		-- Try to find the phaseID assignment from the readable table.
		local phaseID = data.phaseID or PhaseAssignments[data.readable];
		if not phaseID then
			phaseID = NextPhaseID;
			NextPhaseID = NextPhaseID + 1;
		end
		data.phaseID = phaseID;
		PhaseAssignments[data.readable] = phaseID;
		if phases[phaseID] then
			error("ERROR: PHASE ID " .. phaseID .. " ALREADY ASSIGNED TO " .. phases[phaseID].readable .. ", but attempting to assign to " .. data.readable .. ". Please double check that the phase definitions are different");
			return;
		end
		phases[phaseID] = data;
		VALID_PHASES[#VALID_PHASES + 1] = phaseID
		---@diagnostic disable-next-line: undefined-global
		data.filepath = CurrentSubFileName or CurrentFileName;
		--print("PHASE", phaseID .. ":", data.readable or (type(data.text) == "table" and data.text.en) or data.text);

		-- We want our descriptions to be color coded by state if a color wasn't manually supplied.
		local color = data.color or defaultStateColors[data.state];
		if color then
			local description = data.description;
			if description then
				for key,value in pairs(description) do
					if string.sub(value, 1, 2):lower() ~= "|c" then
						description[key] = "|c" .. color .. value .. "|r";
					end
				end
			end
		end
		local lore = data.lore;
		if lore then
			for key,value in pairs(lore) do
				if string.sub(value, 1, 2):lower() ~= "|c" then
					lore[key] = "|cFFFFAAAA" .. value .. "|r";
				end
			end
		end
		return phaseID;
	end
end
end)();

-- Unobtainable Filters
NEVER_IMPLEMENTED = createPhase({
	readable = "Never Implemented",
	constant = "NEVER_IMPLEMENTED",
	export = true,
	phaseID = 1,
	state = 1,
	text = {
		en = "Never Implemented [NYI]",
		-- de = "",
		es = "Nunca implementado [NYI]",
		mx = "Nunca implementado [NYI]",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Никогда Не Доступны [NYI]",
		cn = "从未实施 [NYI]",
		tw = "從未實裝 [NYI]",
	},
	description = {
		en = "This was never available to players.",
		-- de = "",
		es = "Esto nunca estuvo disponible para los jugadores",
		mx = "Esto nunca estuvo disponible para los jugadores",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Никогда не был доступен игрокам.",
		cn = "此项玩家永远无法获得。",
		tw = "此項玩家永遠無法獲得。",
	},
});
REMOVED_FROM_GAME = createPhase({
	readable = "Removed From Game",
	constant = "REMOVED_FROM_GAME",
	export = true,
	phaseID = 2,
	state = 1,
	text = {
		en = "Removed From Game",
		de = "",
		es = "Eliminado del juego",
		mx = "Removido del juego",
		fr = "",
		it = "",
		ko = "",
		pt = "",
		ru = "Убраны Из Игры",
		cn = "从游戏中移除",
		tw = "已從遊戲中移除",
	},
	description = {
		en = "This has been removed from the game.",
		-- de = "",
		es = "Esto ha sido eliminado del juego.",
		mx = "Esto ha sido removido del juego.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Был убран из игры.",
		cn = "此项已从游戏中删除。",
		tw = "此項已從遊戲中刪除。",
	},
});
REAL_MONEY = createPhase({
	readable = "Real Money",
	constant = "REAL_MONEY",
	export = true,
	phaseID = 3,
	state = 3,
	text = {
		en = "Real Money",
		de = "Battle.net-Guthaben",
		es = "Saldo de Battle.net",
		mx = "Saldo de Battle.net",
		fr = "Porte-monnaie Battle.net",
		it = "Saldo Battle.net",
		ko = "배틀코인",
		pt = "Saldo Battle.net",
		ru = "Кошелек Battle.net",
		cn = "战网点数",
		tw = "Battle.net 點數",
	},
	description = {
		en = "This Thing is locked behind a paywall which requires Battle.net Balance or Real Money.",
		-- de = "",
		es = "Esta cosa está bloqueada detrás de un muro de pago que requiere saldo de Battle.net o dinero real.",
		mx = "Esta cosa está bloqueada detrás de un muro de pago que requiere saldo de Battle.net o dinero real.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Может быть скрыто за вложением денег, возможно, игровой магазин, другая игра Blizzard и \"Пригласи Друга\".",
		cn = "该物品需要付费解锁，需使用战网余额或真实货币购买。",
		tw = "這被鎖定在付費牆後面，例如遊戲內商店、另一個暴雪產品或招兵買馬召集令。",
	},
	lore = {
		en = "The act of encouraging the use of real money in any version of the game is widely frowned upon. Participate in this content at your own risk.",
		-- de = "",
		es = "Fomentar el uso de dinero real en cualquier versión del juego está ampliamente mal visto. Participa en este contenido bajo tu propia responsabilidad.",
		mx = "Fomentar el uso de dinero real en cualquier versión del juego está ampliamente mal visto. Participa en este contenido bajo tu propia responsabilidad.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		-- ru = "",
		cn = "在游戏的任何版本中，鼓励使用真实货币的行为均不受认可。参与此类内容需自行承担风险。",
		tw = "在遊戲的任何版本中，鼓勵使用真實貨幣的行為均不受認可。參與此類內容需自行承擔風險。",
	},
});
-- #if ANYCLASSIC
-- In classic we don't care about the distinction between these two pieces of content.
BLACK_MARKET = REAL_MONEY;
TCG = REAL_MONEY;
-- #else
BLACK_MARKET = createPhase({
	readable = "Black Market",
	constant = "BLACK_MARKET",
	export = true,
	phaseID = 9,
	state = 3,
	text = {
		en = "Black Market AH [BMAH]",
		de = "Schwarzmarkt-Auktionshaus [BMAH]",
		es = "Casa de subasta del mercado negro [BMAH]",
		mx = "Casa de subasta del mercado negro [BMAH]",
		fr = "Hôtel des ventes au marché noir [BMAH]",
		it = "Casa d'Aste del Mercato Nero [BMAH]",
		ko = "암시장 경매장 [BMAH]",
		pt = "Casa de Leilões do Mercado Negro [BMAH]",
		ru = "Аукцион черного рынка [BMAH]",
		cn = "黑市拍卖行 [BMAH]",
		tw = "黑市拍賣場 [BMAH]",
	},
	description = {
		en = "This item is available on the Black Market Auction House. The original source may have been removed.",
		-- de = "",
		es = "Este artículo está disponible en la Casa de Subastas del Mercado Negro. Es posible que se haya eliminado la fuente original.",
		mx = "Este artículo está disponible en la Casa de Subastas del Mercado Negro. Es posible que se haya eliminado la fuente original.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		-- ru = "",
		cn = "此物品可在黑市拍卖行购买。原始来源可能已被删除。",
		tw = "此物品可在黑市拍賣場購買。原始來源可能已被刪除。",
	},
});
TCG = createPhase({
	readable = "Trading Card Game",
	constant = "TCG",
	export = true,
	phaseID = 10,
	state = 3,
	text = {
		en = "Trading Card Game [TCG]",
		-- de = "",
		es = "Juego de cartas[TCG]",
		mx = "Juego de cartas[TCG]",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Коллекционная карточная игра [TCG]",
		cn = "集换式卡牌游戏 [TCG]",
		tw = "集換式卡牌遊戲 [TCG]",
	},
	description = {
		en = "Originally obtained via a TCG card that is no longer in print, but may still be available via the Black Market, In-Game, or Real Life Auction House.",
		-- de = "",
		es = "Originalmente se obtuvo a través de una tarjeta TCG que ya no se imprime, pero aún puede estar disponible a través del mercado negro, en el juego o en una casa de subastas de la vida real.",
		mx = "Originalmente se obtuvo a través de una tarjeta TCG que ya no se imprime, pero aún puede estar disponible a través del mercado negro, en el juego o en una casa de subastas de la vida real.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Первоначально доступно через карту TCG, которая больше не печатается, но все еще может быть доступна на черном рынке, в игре или на аукционах в реальной жизни.",
		cn = "最初通过不再印刷的 TCG 卡获得，但仍可通过黑市、游戏内或现实中的拍卖行获得。",
		tw = "最初通過不再印刷的 TCG 卡獲得，但仍可通過黑市、遊戲內或現實中的拍賣行獲得。",
	},
});
-- #endif
TRADING_POST = createPhase({
	readable = "Trading Post",
	constant = "TRADING_POST",
	export = true,
	phaseID = 7,
	state = 3,
	text = {
		-- #if AFTER DF
		en = [[~TRANSMOG_SOURCE_7]],
		-- #else
		en = "Trading Post",
		de = "Handelsposten",
		es = "Puesto comercial",
		mx = "Puesto de venta",
		fr = "Comptoir",
		it = "Emporio",
		ko = "교역소",
		pt = "Posto Comercial",
		ru = "Торговая лавка",
		cn = "货栈",
		tw = "貿易站",
		-- #endif
	},
	description = {
		en = "This Thing is available in the Trading Post.",
		-- de = "",
		es = "Este artículo está disponible en el puesto comercial.",
		mx = "Este artículo está disponible en el puesto de venta",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Эта Штучка доступна в Торговой лавке.",
		cn = "该物品可在货栈购买。",
		tw = "該物品可以在貿易戰購買",
	},
});
ELITE_PVP_REQUIREMENT = createPhase({
	readable = "Elite PvP",
	constant = "ELITE_PVP_REQUIREMENT",
	export = true,
	phaseID = 4,
	state = 2,
	text = {
		en = "PvP Elite/Gladiator",
		-- de = "",
		es = "PvP Elite/Gladiador",
		mx = "PvP Elite/Gladiador",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "ПвП Элита / Гладиатор",
		cn = "PvP 精良/角斗士",
		tw = "PvP 精良/鬥士",
	},
	description = {
		en = "This can no longer be purchased or unlocked as Transmog unless you have the required PvP Title, required PvP Rating or were in the Top % of that season.",
		-- de = "",
		es = "Esto ya no se puede comprar ni desbloquear como transfiguración a menos que tengas el título PvP requerido, la calificación PvP requerida o estés en el porcentaje superior de esa temporada.",
		mx = "Esto ya no se puede comprar ni desbloquear como transfiguración a menos que tengas el título PvP requerido, la calificación PvP requerida o estés en el porcentaje superior de esa temporada.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Это больше нельзя будет купить или получить в коллекцию, если у вас нет необходимого PvP титула или если вы не входили в топ % лучших в этом сезоне.",
		cn = "除非您拥有所需的 PvP 头衔、所需的 PvP 等级或处于该赛季的前 %，否则无法再购买或解锁幻化。",
		tw = "除非您擁有所需的 PvP 頭銜、所需的 PvP 等級或處於該賽季的前 %，否則無法再購買或解鎖塑形。",
	},
});
UNLEARNABLE = createPhase({
	readable = "Unlearnable",
	constant = "UNLEARNABLE",
	export = true,
	phaseID = 5,
	state = 2,
	text = {
		en = "Unlearnable",
		-- de = "",
		es = "No aprendible",
		mx = "No aprendible",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Неизучаемые",
		cn = "不可学",
		tw = "不可學",
	},
	description = {
		en = "This cannot be permanently collected, learned or used for transmog.",
		-- de = "",
		es = "Esto no se puede recolectar, aprender ni usar para transfiguración de forma permanente.",
		mx = "Esto no se puede recolectar, aprender ni usar para transfiguración de forma permanente.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Это нельзя собрать, выучить навсегда или использовать для трансмогрификации.",
		cn = "这不能永久收集、学习或用于幻化。",
		tw = "這不能永久收集、學習或用於塑形。",
	},
});
TRAINING = UNLEARNABLE;

-- TODO: Refactor this to be 'Conditionally Available'. Each thing should toggle based on if the condition is met.
CONDITIONALLY_AVAILABLE = createPhase({
	readable = "Requires Summoning Items",
	phaseID = 6,	-- NOTE: This used to be 11.
	state = 2,
	text = {
		en = "Requires Summoning Items",
		-- de = "",
		es = "Requiere objetos para una invocación",
		mx = "Requiere objetos para una invocación",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Требуются предметы для призыва",
		cn = "需要召唤物品",
		tw = "需要召喚物品",
	},
	description = {
		en = "This is no longer available unless you know someone that has access to the items used to summon the boss.",
		-- de = "",
		es = "Esto ya no está disponible a menos que conozcas a alguien que tenga acceso a los objetos utilizados para invocar al jefe.",
		mx = "Esto ya no está disponible a menos que conozcas a alguien que tenga acceso a los objetos utilizados para invocar al jefe.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Это больше не доступно, если вы не знаете кого-то, у кого есть доступ к предметам, используемым для вызова босса.",
		cn = "除非您认识可以使用用于召唤首领的物品的人，否则这将不再可用。",
		tw = "除非您認識可以使用用於召喚首領的物品的人，否則這將不再可用。",
	},
	lore = {
		en = "Note: Most Summoning Items can be reobtained if you had them in the past by talking to the respective NPC.",
		-- de = "",
		es = "Nota: la mayoría de los objetos de invocación se pueden volver a obtener si los tenías en el pasado hablando con el NPC correspondiente.",
		mx = "Nota: la mayoría de los objetos de invocación se pueden volver a obtener si los tenías en el pasado hablando con el NPC correspondiente.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Примечание: Большинство предметов призыва можно получить повторно, если они у Вас были раньше, поговорив с соответствующим NPC.",
		cn = "注意：如果过去拥有大多数召唤物品，则可以通过与相应的 NPC 交谈来重新获得它们。",
		tw = "注意：如果過去擁有大多數召喚物品，則可以通過與相應的 NPC 交談來重新獲得它們。",
	},
});

-- TODO: Convert this to a phase eventually, once retail supports phases. (if it ever does, for that matter)
TEMP_MOP_LEGENDARY_CLOAK_PHASE = createPhase({
	readable = "MOP - Ordos - Legendary Cloak",
	phaseID = 38,
	state = 2,
	text = {
		en = "Ordos - Legendary Cloak",
		-- de = "",
		es = "Ordos - Capa legendaria",
		mx = "Ordos - Capa legendaria",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Ордос - Легендарный плащ",
		cn = "斡耳朵斯 - 传奇披风",
		tw = "歐朵斯 - 傳奇披風",
	},
	description = {
		en = "Only available to players that completed the Legendary Cloak quest chain during Mists of Pandaria, obtained the Legendary Cloak Appearance during MoP: Remix or via the BMAH.",
		-- de = "",
		es = "Solo disponible para los jugadores que completaron la cadena de misiones de la Capa legendaria durante Mists of Pandaria, obtuvieron la apariencia de Capa legendaria durante MoP: Remix o mediante la BMAH.",
		mx = "Solo disponible para los jugadores que completaron la cadena de misiones de la Capa legendaria durante Mists of Pandaria, obtuvieron la apariencia de Capa legendaria durante MoP: Remix o mediante la BMAH.",
		-- fr = "",
		-- it = "",
		-- ko = "",
		-- pt = "",
		ru = "Это доступно только игрокам, которые выполнили цепочку квестов «Легендарный плащ» во время Mists of Pandaria или через BMAH.",
		cn = "这仅适用于在《熊猫人之谜》完成传奇披风任务链、《熊猫人之谜：幻境新生》获取成就的玩家或通过黑市拍卖行获取。",
		tw = "這僅適用於在《潘達利亞之謎》完成傳奇披風任務鏈、《混搭再造：潘達利亞之謎》取得成就的玩家或通過黑市拍賣行獲得。",
	},
});

-- Classic Phases
local CurrentClassicExpansion;
local defaultDescription = {
	en = "This was not available until %s of %s.",
	de = "Dies war erst %s von %s verfügbar.",
	es = "Esto no estuvo disponible hasta %s de %s.",
	mx = "Esto no estuvo disponible hasta %s de %s.",
	fr = "Ceci n'était pas disponible avant le %s du %s.",
	it = "Questo non era disponibile fino al %s di %s.",
	ko = "%s(%s)까지 사용할 수 없습니다.",
	pt = "Isto não estava disponível até %s de %s.",
	ru = "Это было недоступно до %s из %s.",
	cn = "该功能直到 %s 的 %s 才可用。",
	tw = "該功能直到 %s 的 %s 才可用。",
};
local defaultLore = {
	en = "If %s of %s is active on your server, simply turn this on.",
	de = "Wenn %s von %s auf Ihrem Server aktiv ist, schalten Sie dies einfach ein.",
	es = "Si %s de %s está activo en su servidor, simplemente actívelo.",
	mx = "Si %s de %s está activo en su servidor, simplemente actívelo.",
	fr = "Si %s de %s est actif sur votre serveur, activez-le simplement.",
	it = "Se %s di %s è attivo sul tuo server, attivalo semplicemente.",
	ko = "%s(%s)이 서버에서 활성화된 경우 이 기능을 켜기만 하면 됩니다.",
	pt = "Se %s de %s estiver ativo no seu servidor, basta ativar esta opção.",
	ru = "Если %s из %s активен на вашем сервере, просто включите это.",
	cn = "如果 %s 中的 %s 在您的服务器上处于活动状态，只需将其打开即可。",
	tw = "如果 %s 中的 %s 在您的伺服器上處於啟用狀態，只需將其打開即可。",
};
-- #if ANYCLASSIC
local function createClassicPhase(data)
	local description = data.description;
	if not description then
		description = {};
		for key,value in pairs(defaultDescription) do
			description[key] = value;
		end
		data.description = description;
	end
	for key,value in pairs(description) do
		description[key] = value:format(data.text[key] or data.text.en, CurrentClassicExpansion.text[key] or CurrentClassicExpansion.text.en);
	end
	local lore = data.lore;
	if not lore then
		lore = {};
		for key,value in pairs(defaultLore) do
			lore[key] = value;
		end
		data.lore = lore;
	end
	for key,value in pairs(lore) do
		lore[key] = value:format(data.text[key] or data.text.en, CurrentClassicExpansion.text[key] or CurrentClassicExpansion.text.en);
	end
	if not data.state then
		data.state = 2;
	end
	if not data.readable then
		data.readable = CurrentClassicExpansion.text.en .. " - " .. data.text.en;
	end
	data.color = "FFAAFFAA";
	--data.export = true;
	return createPhase(data);
end
-- #else
local function createClassicPhase(data)
	return data.phaseID;
end
-- #endif
local function convertClassicPhases(phases)
	for phaseID,phaseData in pairs(phases) do
		local data = {
			minimumBuildVersion = phaseData[4],
			buildVersion = phaseData[5],
			phaseID = phaseID,
			text = {
				en = phaseData[3],
			},
		};
		local description = phaseData[2];
		if description then data.description = { en = description }; end
		local lore = phaseData[6];
		if lore then data.lore = { en = lore }; end
		createClassicPhase(data);
	end
end
-- If someone wants to translate this stuff at some point that'd be neat.
--[[
de = "",
es = "",
mx = "",
fr = "",
it = "",
ko = "",
pt = "",
ru = "",
cn = "",
tw = "",
]]--

-- Phases for WoW Classic
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "WoW Classic",
		-- #else
		en = "Classic",
		-- #endif
	},
};
PHASE_ONE = createClassicPhase({
	readable = "WoW Classic - Phase 1",
	minimumBuildVersion = 1130100,	-- This will prevent it from being turned off.
	buildVersion = 11301,
	phaseID = 11,
	text = {
		en = "Phase 1",
		es = "Fase 1",
		mx = "Fase 1",
	},
	lore = {
		en = "Included Molten Core and Onyxia's Lair.",
		es = "Incluidos Núcleo de magma y La guarida de Onyxia.",
		mx = "Incluidos Núcleo de magma y La guarida de Onyxia.",
	},
});
PHASE_ONE_DIREMAUL = createClassicPhase({
	readable = "WoW Classic - Dire Maul",
	minimumBuildVersion = 11301,
	buildVersion = 11301,
	phaseID = 1101,
	text = {
		en = "Dire Maul",
		es = "La masacre",
		mx = "La masacre",
	},
	description = {
		en = "This became available with the %s Phase Release of %s.",
		es = "Esto estuvo disponible con el lanzamiento de la fase %s de %s.",
		mx = "Esto estuvo disponible con el lanzamiento de la fase %s de %s.",
	},
	lore = {
		en = "Included Dire Maul.",
		es = "Incluye La masacre",
		mx = "Incluye La masacre",
	},
});
PHASE_TWO = createClassicPhase({
	readable = "WoW Classic - Phase 2",
	minimumBuildVersion = 11301,
	buildVersion = 11302,
	phaseID = 12,
	text = {
		en = "Phase 2",
		es = "Fase 2",
		mx = "Fase 2",
	},
	lore = {
		en = "Included World PvP and PvP Honor Titles.",
		es = "Incluidos JvJ de mundo y titulos de honor JvJ.",
		mx = "Incluidos JvJ de mundo y titulos de honor JvJ.",
	},
});
PHASE_THREE = createClassicPhase({
	readable = "WoW Classic - Phase 3",
	minimumBuildVersion = 11301,
	buildVersion = 11303,
	phaseID = 13,
	text = {
		en = "Phase 3",
		es = "Fase 3",
		mx = "Fase 3",
	},
	lore = {
		en = "Included Blackwing Lair and the completion for Thunderfury.",
		es = "Incluidos Guarida de Alanegra y la finalización de Trueno furioso",
		mx = "Incluidos Guarida de Alanegra y la finalización de Trueno furioso",
	},
});
PHASE_THREE_DMF_CARDS = PHASE_THREE;
PHASE_THREE_ENCHANTS = PHASE_THREE;
PHASE_THREE_RECIPES = PHASE_THREE;
PHASE_THREE_SILITHUS_EXPEDITION_QUESTS = PHASE_THREE;
PHASE_FOUR = createClassicPhase({
	readable = "WoW Classic - Phase 4",
	minimumBuildVersion = 11301,
	buildVersion = 11304,
	phaseID = 14,
	text = {
		en = "Phase 4",
		es = "Fase 4",
		mx = "Fase 4",
	},
	lore = {
		en = "Included Zul'Gurub and the World Dragons.",
		es = "Incluidos Zul'Gurub y los dragones del mundo.",
		mx = "Incluidos Zul'Gurub y los dragones del mundo.",
	},
});
PHASE_FOUR_DARKIRON_RECIPES = PHASE_FOUR;
PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS = PHASE_FOUR;
PHASE_FIVE = createClassicPhase({
	readable = "WoW Classic - Phase 5",
	minimumBuildVersion = 11301,
	buildVersion = 11305,
	phaseID = 15,
	text = {
		en = "Phase 5",
		es = "Fase 5",
		mx = "Fase 5",
	},
	lore = {
		en = "Included Ahn'Qiraj, which was pre-faced by a unique opening event.",
		es = "Se incluyó Ahn'Qiraj, que fue precedido por un evento de apertura único.",
		mx = "Se incluyó Ahn'Qiraj, que fue precedido por un evento de apertura único.",
	},
});
PHASE_FIVE_RECIPES = PHASE_FIVE;
PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS = PHASE_FIVE;
PHASE_FIVE_SILITHUS_FIELD_DUTY_QUESTS = PHASE_FIVE;
PHASE_FIVE_WAR_EFFORT = createClassicPhase({
	readable = "WoW Classic - AQ War Effort",
	minimumBuildVersion = 11301,
	phaseID = 1501,
	text = {
		en = "AQ War Effort",
		es = "Esfuerzo de guerra de AQ",
		mx = "Esfuerzo de guerra de AQ",
	},
	description = {
		en = "This was only available during the Ahn'Qiraj War Effort.",
		es = "Esto solo estuvo disponible durante el esfuerzo de guerra de Ahn'Qiraj.",
		mx = "Esto solo estuvo disponible durante el esfuerzo de guerra de Ahn'Qiraj.",
	},
	lore = {
		en = "If the War Effort has been completed on your server, simply turn this off.",
		es = "Si el esfuerzo de guerra se ha completado en tu servidor, simplemente desactiva esta opción.",
		mx = "Si el esfuerzo de guerra se ha completado en tu servidor, simplemente desactiva esta opción.",
	},
});
PHASE_FIVE_GONG = createClassicPhase({
	readable = "WoW Classic - Gates Unopened",
	minimumBuildVersion = 11301,
	phaseID = 1502,
	text = {
		en = "Gates Unopened",
		es = "Puertas cerradas",
		mx = "Puertas cerradas",
	},
	description = {
		en = "This was only available up until the Scarab Lords on your server have rung the gong.",
		es = "Esto solo estuvo disponible hasta que los Señores Escarabajo de tu servidor tocaron el gong.",
		mx = "Esto solo estuvo disponible hasta que los Señores Escarabajo de tu servidor tocaron el gong.",
	},
	lore = {
		en = "If the Gates of Anh'Qiraj have been opened on your server, simply turn this off.",
		es = "Si se han abierto las Puertas de Ahn'Qiraj en tu servidor, simplemente desactiva esto.",
		mx = "Si se han abierto las Puertas de Ahn'Qiraj en tu servidor, simplemente desactiva esto.",
	},
});
PHASE_FIVE_WAR = createClassicPhase({
	readable = "WoW Classic - 10-Hour War",
	minimumBuildVersion = 11301,
	phaseID = 1503,
	text = {
		en = "10-Hour War",
		es = "Guerra de 10 horas",
		mx = "Guerra de 10 horas",
	},
	description = {
		en = "This was only available during the 10 Hour War after the Scarab Lord(s) bang the gong.",
		es = "Esto solo estaba disponible durante la Guerra de las 10 horas después de que el/los Señor(es) Escarabajo(s) tocaran el gong.",
		mx = "Esto solo estaba disponible durante la Guerra de las 10 horas después de que el/los Señor(es) Escarabajo(s) tocaran el gong.",
	},
	lore = {
		en = "If the Gates of Anh'Qiraj have been opened on your server, simply turn this off.",
		es = "Si se han abierto las Puertas de Ahn'Qiraj en tu servidor, simplemente desactiva esto.",
		mx = "Si se han abierto las Puertas de Ahn'Qiraj en tu servidor, simplemente desactiva esto.",
	},
});
PHASE_FIVE_CATCH_UP = createClassicPhase({
	readable = "WoW Classic - Catch-Up",
	minimumBuildVersion = 11301,
	buildVersion = 11306,
	phaseID = 1504,
	text = {
		en = "Catch-Up",
		es = "Ponerse al día",
		mx = "Ponerse al día",
	},
	description = {
		en = "This became available near the end of Phase 5 in order to provide Catch-Up Nature Resist gear for those still working on AQ40.",
		es = "Esto estuvo disponible cerca del final de la Fase 5 para proporcionar equipo de resistencia a la naturaleza para aquellos que todavía estaban trabajando en AQ40.",
		mx = "Esto estuvo disponible cerca del final de la Fase 5 para proporcionar equipo de resistencia a la naturaleza para aquellos que todavía estaban trabajando en AQ40.",
	},
	lore = {
		en = "If the Catch-Up Gear is available, simply turn this on.",
		es = "Si el equipo de ponerse al día está disponible, simplemente actívelo",
		mx = "Si el equipo de ponerse al día está disponible, simplemente actívelo",
	},
});
PHASE_SIX = createClassicPhase({
	readable = "WoW Classic - Phase 6",
	minimumBuildVersion = 11301,
	buildVersion = 11306,
	phaseID = 16,
	text = {
		en = "Phase 6",
		es = "Fase 6",
		mx = "Fase 6",
	},
	lore = {
		en = "Included Naxxramas, which was heralded by the Scourge Invasion.",
		es = "Se Incluyó Naxxramas, que fue anunciado por la Invasión de la Plaga.",
		mx = "Se Incluyó Naxxramas, que fue anunciado por la Invasión de la Plaga.",
	},
});
PHASE_SIX_CLASS_BOOKS = PHASE_SIX;
PHASE_SIX_SCOURGE_INVASION = createClassicPhase({
	readable = "WoW Classic - Scourge Invasion",
	minimumBuildVersion = 11301,
	phaseID = 1601,
	text = {
		en = "Scourge Invasion",
		es = "Invasión de la Plaga",
		mx = "Invasión de la Plaga",
	},
	description = {
		en = "This was only available during the Scourge Invasion.",
		es = "Esto solo estaba disponible durante la Invasión de la Plaga.",
		mx = "Esto solo estaba disponible durante la Invasión de la Plaga.",
	},
	lore = {
		en = "If the Scourge Invasion has ended on your server, simply turn this off.",
		es = "Si la invasión de la Plaga ha finalizado en tu servidor, simplemente desactiva esta opción.",
		mx = "Si la invasión de la Plaga ha finalizado en tu servidor, simplemente desactiva esta opción.",
	},
});
PHASE_SIX_SILITHYST = createClassicPhase({
	readable = "WoW Classic - Silithyst",
	minimumBuildVersion = 11301,
	buildVersion = 11306,
	phaseID = 1602,
	text = {
		en = "Silithyst",
		es = "Silitista",
		mx = "Silitista",
	},
	description = {
		en = "This was only available during the Silithyst Must Flow World PVP Event.",
		es = "Esto solo estuvo disponible durante el evento JcJ de mundo El silitista debe fluir.",
		mx = "Esto solo estuvo disponible durante el evento JcJ de mundo El silitista debe fluir.",
	},
	lore = {
		en = "If the World PVP Event is available, simply turn this on.",
		es = "Si el evento JcJ de mundo está disponible, simplemente actívelo.",
		mx = "Si el evento JcJ de mundo está disponible, simplemente actívelo.",
	},
});
PHASE_SIX_CLASSICERA = createClassicPhase({
	readable = "WoW Classic - Classic Era",
	minimumBuildVersion = 11301,
	buildVersion = 11307,
	phaseID = 1603,
	text = {
		en = "Classic Era",
		es = "Era Clásica",
		mx = "Era Clásica",
	},
	description = {
		en = "This was only available after the start of Classic Era.",
		es = "Esto solo estuvo disponible después del inicio de la Era Clásica.",
		mx = "Esto solo estuvo disponible después del inicio de la Era Clásica.",
	},
	lore = {
		en = "If the Classic Era has begun, simply turn this on.",
		es = "Si la Era Clásica ha comenzado, simplemente active esto.",
		mx = "Si la Era Clásica ha comenzado, simplemente active esto.",
	},
});

CurrentClassicExpansion = {
	text = {
		en = "Season of Mastery",
		es = "Temporada de maestría",
		mx = "Temporada de maestría",
		tw = "大師賽季",
	},
};
SOM_PHASE_ONE = createClassicPhase({
	readable = "Season of Mastery - Phase 1",
	minimumBuildVersion = 11301,
	phaseID = 1604,
	text = {
		en = "Season of Mastery",
		es = "Temporada de maestría",
		mx = "Temporada de maestría",
		tw = "大師賽季",
	},
	description = {
		en = "This was only available during Season of Mastery.",
		es = "Esto solo estuvo disponible durante la Temporada de maestría.",
		mx = "Esto solo estuvo disponible durante la Temporada de maestría.",
	},
	lore = {
		en = "If Season of Mastery is active on your server, simply turn this on.",
		es = "Si la Temporada de Maestría está activa en tu servidor, simplemente actíva esto.",
		es = "Si la Temporada de Maestría está activa en tu servidor, simplemente actíva esto.",
	},
});

CurrentClassicExpansion = {
	text = {
		en = "Season of Discovery",
	},
};
local function createClassicPhaseForSOD(data)
	-- #if NOT SEASON_OF_DISCOVERY
	-- If for some reason the du-*ehem* "smartest individuals" at Blizzard decide to copy this bloat to other versions, you'll want to remove this if statement and then burst into raging tears. Godspeed.  - Crieve
	data.minimumBuildVersion = data.minimumBuildVersion * 1000;
	data.buildVersion = nil;
	-- #endif
	return createClassicPhase(data);
end
SOD_PHASE_ONE = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 1",
	minimumBuildVersion = 11500,
	buildVersion = 11500,
	phaseID = 1605,
	text = {
		en = "Season of Discovery",
		es = "Temporada del descubrimiento",
		mx = "Temporada de descubrimiento",
		cn = "探索赛季",
		tw = "探索賽季",
	},
	description = {
		en = "This was not available until Phase 1 of Season of Discovery.",
		es = "Esto no estuvo disponible hasta la Fase 1 de la Temporada del Descubrimiento.",
		mx = "Esto no estuvo disponible hasta la Fase 1 de la Temporada de Descubrimiento.",
	},
	lore = {
		en = "Included the Blackfathom Deeps raid, Ashenvale World PvP, and had a level cap of 25.",
		es = "Incluía la banda Cavernas de Brazanegra, el JvJ del mundo de Vallefresno y tenía un límite de nivel de 25.",
		mx = "Incluía la banda Cavernas de Brazanegra, el JvJ del mundo de Vallefresno y tenía un límite de nivel de 25.",
	},
});
SOD_PHASE_TWO = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 2",
	minimumBuildVersion = 11500,
	buildVersion = 11501,
	phaseID = 1606,
	text = {
		en = "Phase 2",
		es = "Fase 2",
		mx = "Fase 2",
		tw = "第2階段",
	},
	lore = {
		en = "Included the Gnomeregan raid, Stranglethorn Vale World PvP, and raised the level cap to 40.",
		es = "Incluía la banda Gnomeregan, el JvJ del mundo de Vega de tuercespina, y aumento el limite de nivel a 40.",
		mx = "Incluía la banda Gnomeregan, el JvJ del mundo de Vega de Tuercespina, y aumento el limite de nivel a 40.",
	},
});
SOD_PHASE_THREE = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 3",
	minimumBuildVersion = 11500,
	buildVersion = 11502,
	phaseID = 1607,
	text = {
		en = "Phase 3",
		es = "Fase 3",
		mx = "Fase 3",
		tw = "第3階段",
	},
	lore = {
		en = "Included the Sunken Temple raid and raised the level cap to 50.",
		es = "Incluía la banda Templo sumergido y aumento el limite de nivel a 50.",
		mx = "Incluía la banda Templo sumergido y aumento el limite de nivel a 50.",
	},
});
SOD_PHASE_FOUR = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 4",
	minimumBuildVersion = 11500,
	buildVersion = 11503,
	phaseID = 1608,
	text = {
		en = "Phase 4",
		es = "Fase 4",
		mx = "Fase 4",
		tw = "第4階段",
	},
	lore = {
		en = "Included Molten Core, Onyxia's Lair, Demon Fall Canyon, the Storm Cliffs, the Tainted Scar, and raised the level cap to 60.",
		es = "Incluía Núcleo de magma, La guarida de Onyxia, Barranco del Demonio, Acantilados Tormentosos, Escara Impía, y aumento el limite de nivel a 60.",
		mx = "Incluía Núcleo de magma, La guarida de Onyxia, Barranco del Demonio, Acantilados de la Tormenta, Escara Impía, y aumento el limite de nivel a 60.",
	},
});
SOD_PHASE_FIVE = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 5",
	minimumBuildVersion = 11500,
	buildVersion = 11504,
	phaseID = 1609,
	text = {
		en = "Phase 5",
		es = "Fase 5",
		mx = "Fase 5",
		tw = "第5階段",
	},
	lore = {
		en = "Included Blackwing Lair, Zul'Gurub, and the new Crystal Vale raid.",
		es = "Incluía Guarida de Alanegra, Zul'Gurub, y la nueva banda Vega de Cristal.",
		mx = "Incluía Guarida de Alanegra, Zul'Gurub, y la nueva banda La Vega de Cristal.",
	},
});
SOD_PHASE_SIX = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 6",
	minimumBuildVersion = 11500,
	buildVersion = 11505,
	phaseID = 1610,
	text = {
		en = "Phase 6",
		es = "Fase 6",
		mx = "Fase 6",
		tw = "第6階段",
	},
	lore = {
		en = "Included Ahn'Qiraj, and the new Nightmare Grove raid",
		es = "Incluía Ahn'Qiraj, y la nueva banda Arboleda de la Pesadilla",
		mx = "Incluía Ahn'Qiraj, y la nueva banda Arboleda de la Pesadillas",
	},
});
SOD_PHASE_SEVEN = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 7",
	minimumBuildVersion = 11500,
	buildVersion = 11506,
	phaseID = 1611,
	text = {
		en = "Phase 7",
		es = "Fase 7",
		mx = "Fase 7",
		tw = "第7階段",
	},
	lore = {
		en = "Included Naxxramas, and the new Karazhan Crypts dungeon",
		es = "Incluía Naxxramas, y la nueva mazmorra Las Criptas de Karazhan",
		mx = "Incluía Naxxramas, y el nuevo calabozo Las Criptas de Karazhan",
	},
});
SOD_PHASE_EIGHT = createClassicPhaseForSOD({
	readable = "Season of Discovery - Phase 8",
	minimumBuildVersion = 11500,
	buildVersion = 11507,
	phaseID = 1612,
	text = {
		en = "Phase 8",
		es = "Fase 8",
		mx = "Fase 8",
		tw = "第8階段",
	},
	lore = {
		en = "Included Classic+?",
		es = "Incluía Classic+?",
		mx = "Incluía Classic+?",
	},
});
-- #if SEASON_OF_DISCOVERY
PHASE_SIX_CLASSICERA = SOD_PHASE_ONE;	-- Chronoboons were available right away.

-- Phase 3 Updates
PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS = SOD_PHASE_THREE;	-- Sunken Temple Class Quests came out with Phase 3 of SOD.

-- Phase 4 Updates
PHASE_ONE_DIREMAUL = SOD_PHASE_FOUR;	-- Dire Maul actually came out with Phase 4 of SOD.
PHASE_TWO = SOD_PHASE_FOUR;	-- Azuregos, Lord Kazzak, and PVP Battlegrounds were immediately available with Phase 4 of SOD.
PHASE_THREE_ENCHANTS = SOD_PHASE_FOUR;	-- A number of these actually came out with Phase 4 of SOD. (CRIEVE NOTE: Not actually sure since I can't check the AH for these...)
PHASE_THREE_RECIPES = SOD_PHASE_FOUR;	-- A number of these actually came out with Phase 4 of SOD.
PHASE_FOUR_DARKIRON_RECIPES = SOD_PHASE_FOUR;	-- A number of these actually came out with Phase 4 of SOD.
PHASE_FIVE_RECIPES = SOD_PHASE_FOUR;	-- A number of these actually came out with Phase 4 of SOD.
PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS = SOD_PHASE_FOUR;	-- T0.5 Sets actually came out with Phase 4 of SOD.
PHASE_SIX_CLASS_BOOKS = SOD_PHASE_FOUR;	-- A number of these actually came out with Phase 4 of SOD.
PHASE_SIX_SILITHYST = SOD_PHASE_FOUR;	-- The Silithyst Quests actually came out with Phase 4 of SOD.
PHASE_FIVE_SILITHUS_FIELD_DUTY_QUESTS = SOD_PHASE_FOUR;

-- Phase 5 Updates
PHASE_THREE = SOD_PHASE_FIVE;	-- Blackwing Lair came out with Phase 5 of SOD.
PHASE_THREE_DMF_CARDS = SOD_PHASE_FIVE;	-- TODO: Confirm this.
PHASE_THREE_ENCHANTS = SOD_PHASE_FIVE;	-- TODO: Confirm this.
PHASE_THREE_RECIPES = SOD_PHASE_FIVE;	-- TODO: Confirm this.
PHASE_THREE_SILITHUS_EXPEDITION_QUESTS = SOD_PHASE_FIVE;	-- TODO: Confirm this. CRIEVE NOTE: On SOD Phase 4, none of these quests were available.
PHASE_FOUR = SOD_PHASE_FIVE;	-- Zul'Gurub came out with Phase 5 of SOD.
PHASE_FOUR_DARKIRON_RECIPES = SOD_PHASE_FIVE;	-- TODO: Confirm this.

-- Phase 6 Updates
PHASE_FIVE = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_RECIPES = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_SILITHUS_FIELD_DUTY_QUESTS = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_WAR_EFFORT = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_GONG = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_WAR = SOD_PHASE_SIX;	-- TODO: Confirm this.
PHASE_FIVE_CATCH_UP = SOD_PHASE_SIX;	-- TODO: Confirm this.

-- Phase 7 Updates
PHASE_SIX = SOD_PHASE_SEVEN;	-- TODO: Confirm this.
PHASE_SIX_CLASS_BOOKS = SOD_PHASE_SEVEN;	-- TODO: Confirm this.
PHASE_SIX_SCOURGE_INVASION = SOD_PHASE_SEVEN;	-- TODO: Confirm this.
PHASE_SIX_SILITHYST = SOD_PHASE_SEVEN;	-- TODO: Confirm this.
-- #endif



-- TBC Classic Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "TBC Classic",
		-- #else
		en = "The Burning Crusade",
		-- #endif
	},
};
TBC_PHASE_ONE = createClassicPhase({
	readable = "TBC Classic - Phase 1",
	minimumBuildVersion = 20501,
--	buildVersion = 20501,	-- TBC Classic 2020-2021
	buildVersion = 20505,	-- TBC Classic 2026-2027
	phaseID = 17,
	text = {
		de = "Phase 1",
		en = "Phase 1",
		es = "Fase 1",
		mx = "Fase 1",
		tw = "第1階段",
	},
	lore = {
		en = "Included Karazhan, Magtheridon's Lair, and Gruul's Lair.",
		es = "Incluía Karazhan, Guarida de Magtheridon y la Guarida de Gruul.",
		mx = "Incluía Karazhan, Guarida de Magtheridon y la Guarida de Gruul.",
	},
});
TBC_PHASE_ONE_DARKPORTAL = createClassicPhase({
	readable = "TBC Classic - Dark Portal Opens",
	minimumBuildVersion = 20501,
	phaseID = 1701,
	text = {
		en = "Dark Portal Opens",
		es = "Apertura del portal oscuro",
		mx = "Apertura del portal oscuro",
	},
	description = {
		en = "This was only available during the Opening of the Dark Portal event before the launch of TBC.",
		es = "Esto solo estuvo disponible durante el evento Apertura del Portal Oscuro antes del lanzamiento de TBC.",
		mx = "Esto solo estuvo disponible durante el evento Apertura del Portal Oscuro antes del lanzamiento de TBC.",
	},
	lore = {
		en = "If the Dark Portal has been opened on your server, simply turn this off.",
		es = "Si se ha abierto el Portal Oscuro en tu servidor, simplemente desactíva esto.",
		mx = "Si se ha abierto el Portal Oscuro en tu servidor, simplemente desactíva esto.",
	},
});
TBC_PHASE_TWO = createClassicPhase({
	readable = "TBC Classic - Phase 2",
	minimumBuildVersion = 20501,
--	buildVersion = 20502,	-- TBC Classic 2020-2021
	buildVersion = 20506,	-- TBC Classic 2026-2027
	phaseID = 18,
	text = {
		en = "Phase 2",
		es = "Fase 2",
		mx = "Fase 2",
		tw = "第2階段",
	},
	lore = {
		en = "Included Serpentshrine Cavern, Tempest Keep: The Eye, and Swift Druid Flight Forms.",
		es = "Incluía Caverna Santuario Serpiente, El castillo de la tempestad: El ojo, y la forma de vuelo rápido del druida.",
		mx = "Incluía Caverna Santuario Serpiente, El castillo de la tempestad: El ojo, y la forma de vuelo rápido del druida.",
	},
});
TBC_PHASE_TWO_OGRILA = createClassicPhase({
	readable = "TBC Classic - Ogri'la",
	minimumBuildVersion = 20501,
--	buildVersion = 20502,	-- TBC Classic 2020-2021
	buildVersion = 20506,	-- TBC Classic 2026-2027
	phaseID = 1801,
	text = {
		en = "Ogri'la",
	},
	description = {
		en = "This became available with the Ogri'la Faction during TBC Classic.",
		es = "Esto se volvió disponible con la Facción Ogri'la durante TBC Classic.",
		mx = "Esto se volvió disponible con la Facción Ogri'la durante TBC Classic.",
	},
	lore = {
		en = "If the Ogri'la Faction is available on your server, simply turn this on.",
		es = "Si la facción Ogri'la está disponible en tu servidor, simplemente activa esta opción.",
		mx = "Si la facción Ogri'la está disponible en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_TWO_SKYGUARD = createClassicPhase({
	readable = "TBC Classic - Skyguard",
	minimumBuildVersion = 20501,
--	buildVersion = 20502,	-- TBC Classic 2020-2021
	buildVersion = 20506,	-- TBC Classic 2026-2027
	phaseID = 1802,
	text = {
		en = "Skyguard",
		es = "Guardia del cielo",
		mx = "Guardia del cielo",
	},
	description = {
		en = "This became available with the Skyguard Faction during TBC Classic.",
		es = "Esto se volvió disponible con la Facción Guardia del cielo durante TBC Classic.",
		mx = "Esto se volvió disponible con la Facción Guardia del cielo durante TBC Classic.",
	},
	lore = {
		en = "If the Skyguard Faction is available on your server, simply turn this on.",
		es = "Si la facción Guardia del cielo está disponible en tu servidor, simplemente activa esta opción.",
		mx = "Si la facción Guardia del cielo está disponible en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_TWO_SWIFTFLIGHTFORM = TBC_PHASE_TWO;
TBC_PHASE_THREE = createClassicPhase({
	readable = "TBC Classic - Phase 3",
	minimumBuildVersion = 20501,
--	buildVersion = 20503,	-- TBC Classic 2020-2021
	buildVersion = 20507,	-- TBC Classic 2026-2027
	phaseID = 19,
	text = {
		en = "Phase 3",
		es = "Fase 3",
		mx = "Fase 3",
		tw = "第3階段",
	},
	lore = {
		en = "Included Hyjal Summit and the Black Temple in addition to the vast majority of end game daily / faction content.",
		es = "Incluye la Cima del Hyjal y el Templo Oscuro, además de la gran mayoría del contenido de maximo nivel diario/de facción del juego.",
		mx = "Incluye la Cima del Hyjal y el Templo Oscuro, además de la gran mayoría del contenido de maximo nivel diario/de facción del juego.",
	},
});
TBC_PHASE_THREE_NETHERWING = createClassicPhase({
	readable = "TBC Classic - Netherwing",
	minimumBuildVersion = 20501,
--	buildVersion = 20503,	-- TBC Classic 2020-2021
	buildVersion = 20507,	-- TBC Classic 2026-2027
	phaseID = 1901,
	text = {
		en = "Netherwing",
		es = "Ala abisal",
		mx = "Ala abisal",
	},
	description = {
		en = "This became available with the Netherwing Faction during TBC Classic.",
		es = "Esto se volvió disponible con la Facción Ala abisal durante TBC Classic.",
		mx = "Esto se volvió disponible con la Facción Ala abisal durante TBC Classic.",
	},
	lore = {
		en = "If the Netherwing Faction is available on your server, simply turn this on.",
		es = "Si la facción Ala abisal está disponible en tu servidor, simplemente activa esta opción.",
		mx = "Si la facción Ala abisal está disponible en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_THREE_GLAIVEPRIO = createClassicPhase({
	readable = "TBC Classic - Glaive Prio",
	minimumBuildVersion = 20501,
	buildVersion = 30001,
	phaseID = 1902,
	text = {
		en = "Glaive Prio",
		es = "Prioridad de las gujas",
		mx = "Prioridad de las gujas",
	},
	description = {
		en = "The wielder of this Glaive was prepared!",
		es = "¡El portador de esta guja estaba preparado!",
		mx = "¡El portador de esta guja estaba preparado!",
	},
	lore = {
		en = "Due to the exclusivity of the Warglaives and how prio isn't always given to collectors over sweaties, Crieve decided it was appropriate for now to provide a filter to reduce guild drama.\n\nThis filter will be defaulted on after wrath prepatch.\n\nIf you do actually have Glaive prio, simply turn this on.",
		es = "Debido a la exclusividad de las Gujas de Guerra y a que la prioridad no siempre se otorga a los coleccionistas en lugar de a los sudorosos, Crieve decidió que era apropiado por ahora proporcionar un filtro para reducir el conflicto entre hermandades.\n\nEste filtro se activará por defecto después del pre-parche de Wrath.\n\nSi ya tienes la prioridad de Gujas, simplemente actívala.",
		mx = "Debido a la exclusividad de las Gujas de Guerra y a que la prioridad no siempre se otorga a los coleccionistas en lugar de a los sudorosos, Crieve decidió que era apropiado por ahora proporcionar un filtro para reducir el conflicto entre hermandades.\n\nEste filtro se activará por defecto después del pre-parche de Wrath.\n\nSi ya tienes la prioridad de Gujas, simplemente actívala.",
	},
});
TBC_PHASE_FOUR = createClassicPhase({
	readable = "TBC Classic - Phase 4",
	minimumBuildVersion = 20501,
--	buildVersion = 20504,	-- TBC Classic 2020-2021
	buildVersion = 20508,	-- TBC Classic 2026-2027
	phaseID = 20,
	text = {
		en = "Phase 4",
		es = "Fase 4",
		mx = "Fase 4",
		tw = "第4階段",
	},
	lore = {
		en = "Included Zul'Aman.",
		es = "Incluía Zul'Aman.",
		mx = "Incluía Zul'Aman.",
	},
});
TBC_PHASE_FIVE = createClassicPhase({
	readable = "TBC Classic - Phase 5",
	minimumBuildVersion = 20501,
--	buildVersion = 20504,	-- TBC Classic 2020-2021
	buildVersion = 20508,	-- TBC Classic 2026-2027
	phaseID = 21,
	text = {
		en = "Phase 5",
		es = "Fase 5",
		mx = "Fase 5",
		tw = "第5階段",
	},
	lore = {
		en = "Included Sunwell Plateau and the Isle of Quel'Danas daily content.",
		es = "Incluye la Meseta del fuente del Sol y contenido diario de la Isla de Quel'Danas.",
		mx = "Incluye la Meseta del fuente del Sol y contenido diario de la Isla de Quel'Danas.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_ONE = TBC_PHASE_FIVE;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO = createClassicPhase({
	readable = "TBC Classic - Sanctum",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2101,
	text = {
		en = "Sanctum",
		es = "Santuario",
		mx = "Santuario",
	},
	description = {
		en = "This was not available until the Sanctum on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó el Santuario en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó el Santuario en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Sanctum and has begun working on the Armory and Portal on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado el Santuario y ha comenzado a trabajar en la Armería y el Portal en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado el Santuario y ha comenzado a trabajar en la Armería y el Portal en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO_B = createClassicPhase({
	readable = "TBC Classic - Portal",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2102,
	text = {
		en = "Portal",
	},
	description = {
		en = "This was not available until the Portal on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó el Portal en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó el Portal en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Portal on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado el Portal en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado el Portal en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_THREE = createClassicPhase({
	readable = "TBC Classic - Armory",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2103,
	text = {
		en = "Armory",
		es = "Armería",
		mx = "Armería",
	},
	description = {
		en = "This was not available until the Armory on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó la armería en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó la armería en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Armory and has begun working on the Harbor and Anvil on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado la armería en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado la armería en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_THREE_B = createClassicPhase({
	readable = "TBC Classic - Anvil",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2104,
	text = {
		en = "Anvil",
		es = "Yunque",
		mx = "Yunque",
	},
	description = {
		en = "This was not available until the Anvil on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó el yunque en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó el yunque en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Anvil on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado el yunque en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado el yunque en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR = createClassicPhase({
	readable = "TBC Classic - Harbor",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2105,
	text = {
		en = "Harbor",
		es = "Puerto",
		mx = "Puerto",
	},
	description = {
		en = "This was not available until the Harbor on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó el puerto en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó el puerto en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Harbor and has begun working on the Alch Lab and Monument on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado el puerto en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado el puerto en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR_B = createClassicPhase({
	readable = "TBC Classic - Monument",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2106,
	text = {
		en = "Monument",
		es = "Monumento",
		mx = "Monumento",
	},
	description = {
		en = "This was not available until the Monument on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó el monumento en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó el monumento en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Monument on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado el monumento en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado el monumento en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR_C = createClassicPhase({
	readable = "TBC Classic - Alch Lab",
	minimumBuildVersion = 20501,
	buildVersion = 30400,
	phaseID = 2107,
	text = {
		en = "Alch Lab",
		es = "Laboratorio de alquimia",
		mx = "Laboratorio de alquimia",
	},
	description = {
		en = "This was not available until the Alch Lab on the Isle of Quel'Danas was completed.",
		es = "Esto no estuvo disponible hasta que se completó el laboratorio de alquimia en la Isla de Quel'Danas.",
		mx = "Esto no estuvo disponible hasta que se completó el laboratorio de alquimia en la Isla de Quel'Danas.",
	},
	lore = {
		en = "If the Shattered Sun Offensive has already unlocked the Alch Lab on your server, simply turn this on.",
		es = "Si la Ofensiva Sol Devastado ya ha desbloqueado el laboratorio de alquimia en tu servidor, simplemente activa esta opción.",
		mx = "Si la Ofensiva Sol Devastado ya ha desbloqueado el laboratorio de alquimia en tu servidor, simplemente activa esta opción.",
	},
});
TBC_PHASE_FIVE_SCOURGE_INVASION = createClassicPhase({
	readable = "TBC Classic - Scourge Invasion",
	minimumBuildVersion = 20501,
	phaseID = 2108,
	text = {
		en = "Scourge Invasion",
		es = "Invasión de la Plaga",
		mx = "Invasión de la Plaga",
	},
	description = {
		en = "This was only available during the Scourge Invasion.",
		es = "Esto sólo estaba disponible durante la Invasión de la Plaga.",
		mx = "Esto sólo estaba disponible durante la Invasión de la Plaga.",
	},
	lore = {
		en = "If the Scourge Invasion has ended on your server, simply turn this off.",
		es = "Si la Invasión de la Plaga ha terminado en tu servidor, simplemente desactiva esta opción.",
		mx = "Si la Invasión de la Plaga ha terminado en tu servidor, simplemente desactiva esta opción.",
	},
});

-- Wrath Classic Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "Wrath Classic",
		-- #else
		en = "Wrath of the Lich King",
		-- #endif
	},
};
WRATH_PHASE_ONE = createClassicPhase({
	readable = "Wrath Classic - Phase 1",
	minimumBuildVersion = 30400,
	buildVersion = 30400,
	phaseID = 30,
	text = {
		en = "Phase 1",
		es = "Fase 1",
		mx = "Fase 1",
		tw = "第1階段",
	},
	lore = {
		en = "Included Naxxramas, Obsidian Sanctum, and Eye of Eternity.",
		es = "Incluía Naxxramas, Sagrario obsidiana, y El ojo de la eternidad.",
		mx = "Incluía Naxxramas, Sagrario obsidiana, y El ojo de la eternidad.",
	},
});
WRATH_PHASE_ONE_REALM_FIRST = createClassicPhase({
	readable = "Wrath Classic - Realm First",
	minimumBuildVersion = 30400,
	phaseID = 3001,
	text = {
		en = "Realm First",
		es = "Primero del reino",
		mx = "Primero del reino",
	},
	description = {
		en = "This was only available for the first player to do the thing on your realm!",
		es = "¡Esto solo estaba disponible para el primer jugador que hiciera la acción en tu reino!",
		mx = "¡Esto solo estaba disponible para el primer jugador que hiciera la acción en tu reino!",
	},
	lore = {
		en = "But if you were realm first, good for you.",
		es = "Pero si fuiste el primero en el reino, bien por ti.",
		mx = "Pero si fuiste el primero en el reino, bien por ti.",
	},
});
WRATH_PHASE_TWO = createClassicPhase({
	readable = "Wrath Classic - Phase 2",
	minimumBuildVersion = 30400,
	buildVersion = 30401,
	phaseID = 31,
	text = {
		en = "Phase 2",
		es = "Fase 2",
		mx = "Fase 2",
		tw = "第2階段",
	},
	lore = {
		en = "Included Ulduar.",
		es = "Incluía Ulduar.",
		mx = "Incluía Ulduar.",
	},
});
WRATH_PHASE_TWO_HAMMERPRIO = createClassicPhase({
	readable = "Wrath Classic - Hammer Prio",
	minimumBuildVersion = 20501,
	buildVersion = 40001,
	phaseID = 3101,
	text = {
		en = "Hammer Prio",
		es = "Prioridad del martillo",
		mx = "Prioridad del martillo",
	},
	description = {
		en = "The wielder of this Hammer was on time!",
		es = "¡El portador de este martillo llegó a tiempo!",
		mx = "¡El portador de este martillo llegó a tiempo!",
	},
	lore = {
		en = "Due to the exclusivity of the Hammer and how prio isn't always given to collectors over sweaties, Crieve decided it was appropriate for now to provide a filter to reduce guild drama.\n\nThis filter will be defaulted on after cata prepatch.\n\nIf you do actually have Hammer prio, simply turn this on.",
		es = "Debido a la exclusividad del Martillo y a que la prioridad no siempre se otorga a los coleccionistas en lugar de a los que sudan, Crieve decidió que era apropiado por ahora proporcionar un filtro para reducir el drama de hermandad.\n\nEste filtro se activará por defecto después del pre-parche de Cataclysm.\n\nSi ya tienes la prioridad del Martillo, simplemente actívala.",
		mx = "Debido a la exclusividad del Martillo y a que la prioridad no siempre se otorga a los coleccionistas en lugar de a los que sudan, Crieve decidió que era apropiado por ahora proporcionar un filtro para reducir el drama de hermandad.\n\nEste filtro se activará por defecto después del pre-parche de Cataclysm.\n\nSi ya tienes la prioridad del Martillo, simplemente actívala.",
	},
});
WRATH_PHASE_THREE = createClassicPhase({
	readable = "Wrath Classic - Phase 3",
	minimumBuildVersion = 30400,
	buildVersion = 30402,
	phaseID = 32,
	text = {
		en = "Phase 3",
		es = "Fase 3",
		mx = "Fase 3",
		tw = "第3階段",
	},
	lore = {
		en = "Included Trial of the Crusader.",
		es = "Incluía la Prueba del cruzado",
		mx = "Incluía la Prueba del cruzado",
	},
});
WRATH_PHASE_FOUR = createClassicPhase({
	readable = "Wrath Classic - Phase 4",
	minimumBuildVersion = 30400,
	buildVersion = 30403,
	phaseID = 33,
	text = {
		en = "Phase 4",
		es = "Fase 4",
		mx = "Fase 4",
		tw = "第4階段",
	},
	lore = {
		en = "Included Icecrown Citadel.",
		es = "Incluía La ciudadela corona de hielo",
		mx = "Incluía La ciudadela corona de hielo",
	},
});
WRATH_PHASE_FOUR_SHADOWMOURNE = createClassicPhase({
	readable = "Wrath Classic - Shadowmourne Prio",
	minimumBuildVersion = 30400,
	buildVersion = 40001,
	phaseID = 3301,
	text = {
		en = "Shadowmourne Prio",
		es = "Prioridad de la Agonía de sombras",
		mx = "Prioridad de la Agonía de sombras",
	},
	description = {
		en = "The wielder of Shadowmournes for all the people that don't have it.",
		es = "El portador de Agonias de sombras para todos los que no la tienen.",
		mx = "El portador de Agonias de sombras para todos los que no la tienen.",
	},
	lore = {
		en = "Due to the exclusivity of Shadowmourne and how prio isn't always given to collectors over sweaties, Crieve decided it was appropriate for now to provide a filter to reduce guild drama.\n\nThis filter will be defaulted on after cata prepatch.\n\nIf you do actually have Shadowmourne prio, simply turn this on.",
		es = "Debido a la exclusividad de Agonía de Sombras y a que la prioridad no siempre se otorga a los coleccionistas en lugar de a los que sudan, Crieve decidió que era apropiado por ahora proporcionar un filtro para reducir el drama de hermandad.\n\nEste filtro se activará por defecto después del pre-parche de Cataclysm.\n\nSi de hecho tienes la prioridad de Agonía de Sombras, simplemente actívala.",
		mx = "Debido a la exclusividad de Agonía de Sombras y a que la prioridad no siempre se otorga a los coleccionistas en lugar de a los que sudan, Crieve decidió que era apropiado por ahora proporcionar un filtro para reducir el drama de hermandad.\n\nEste filtro se activará por defecto después del pre-parche de Cataclysm.\n\nSi de hecho tienes la prioridad de Agonía de Sombras, simplemente actívala.",
	},
});
WRATH_PHASE_FOUR_RUBYSANCTUM = createClassicPhase({
	readable = "Wrath Classic - Ruby Sanctum",
	minimumBuildVersion = 30400,
	buildVersion = 30403,
	phaseID = 3302,
	text = {
		en = "Ruby Sanctum",
		es = "Sagrario rubí",
		mx = "Sagrario rubí",
	},
	description = {
		en = "This became available with the release of Ruby Sanctum during Wrath Classic.",
		es = "Esto estuvo disponible con el lanzamiento del Sagrario rubí durante Wrath Classic.",
		mx = "Esto estuvo disponible con el lanzamiento del Sagrario rubí durante Wrath Classic.",
	},
	lore = {
		en = "Included The Ruby Sanctum.",
		es = "Incluía El sagrario rubí.",
		mx = "Incluía El sagrario rubí.",
	},
});
WRATH_PHASE_FOUR_OPERATION_ZALAZANE = createClassicPhase({
	readable = "Wrath Classic - Operation Zalazane",
	minimumBuildVersion = 30400,
	buildVersion = 30403,
	phaseID = 3303,
	text = {
		en = "Operation Zalazane",
		es = "Operación Zalazane",
		mx = "Operación Zalazane",
	},
	description = {
		en = "This became available with the release of Operation Gnomeregan and Zalazane's Fall during Wrath Classic.",
		es = "Esto estuvo disponible con el lanzamiento de Operación Gnomeregan y La Caída de Zalazane durante Wrath Classic.",
		mx = "Esto estuvo disponible con el lanzamiento de Operación Gnomeregan y La Caída de Zalazane durante Wrath Classic.",
	},
	lore = {
		en = "Included Operation Gnomeregan and Zalazane's Fall",
		es = "Incluía Operación Gnomeregan y La Caída de Zalazane",
		mx = "Incluía Operación Gnomeregan y La Caída de Zalazane",
	},
});
WRATH_PHASE_FOUR_ELEMENTAL_INVASION = createClassicPhase({
	readable = "Wrath Classic - Elemental Unrest",
	minimumBuildVersion = 30400,
	buildVersion = 30404,
	phaseID = 3304,
	text = {
		en = "Elemental Unrest",
		es = "Inestabilidad elemental",
		mx = "Inestabilidad elemental",
	},
	description = {
		en = "This became available with the release of the Elemental Unrest Cataclysm Prepatch Event during Wrath Classic.",
		es = "Esto estuvo disponible con el lanzamiento del evento Inestabilidad elemental previo al parche Cataclysm durante Wrath Classic.",
		mx = "Esto estuvo disponible con el lanzamiento del evento Inestabilidad elemental previo al parche Cataclysm durante Wrath Classic.",
	},
	lore = {
		en = "The Elemental Unrest Pre-Expansion Event?",
		es = "¿Inestabilidad elemental evento Pre-parche?",
		mx = "¿Inestabilidad elemental evento Pre-Expansion?",
	},
});

-- Cataclysm Classic Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "Cataclysm Classic",
		-- #else
		en = "Cataclysm",
		-- #endif
	},
};
CATA_PHASE_ONE = createClassicPhase({
	readable = "Cataclysm Classic - Phase 1",
	minimumBuildVersion = 40400,
	buildVersion = 40400,
	phaseID = 40,
	text = {
		en = "Phase 1",
		es = "Fase 1",
		mx = "Fase 1",
		tw = "第1階段",
	},
	lore = {
		en = "Included Bastion of Twilight, Throne of the Four Winds, and Blackwing Descent.",
		es = "Incluía Bastión del Crepúsculo, Trono de los Cuatro Vientos y Descenso de Alanegra.",
		mx = "Incluía Bastión del Crepúsculo, Trono de los Cuatro Vientos y Descenso de Alanegra.",
	},
});
CATA_PHASE_RISE_OF_THE_ZANDALARI = createClassicPhase({
	readable = "Cataclysm Classic - Rise of the Zandalari",
	minimumBuildVersion = 40400,
	buildVersion = 40400,	-- ZA/ZG [Per Cata Dev, this phase wasn't a big enough release to justify incrementing the build number]
	phaseID = 4001,
	text = {
		en = "Rise of the Zandalari",
		es = "La Rebelión de los Zandalari",
		mx = "La Rebelión de los Zandalari",
	},
	description = {
		en = "This was not available until the Rise of the Zandalari during Cataclysm Classic.",
		es = "Esto no estuvo disponible hasta La Rebelión de los Zandalari durante Cataclysm Classic.",
		mx = "Esto no estuvo disponible hasta La Rebelión de los Zandalari durante Cataclysm Classic.",
	},
	lore = {
		en = "Included Zul'Aman and Zul'Gurub Heroic Dungeons.",
		es = "Incluía las mazmorras heroicas Zul'Aman y Zul'Gurub.",
		mx = "Incluía los calabozos heroicos Zul'Aman y Zul'Gurub.",
	},
});
CATA_PHASE_ADJUSTED_WORLD_BOSS_LOOT = CATA_PHASE_RISE_OF_THE_ZANDALARI;	-- World Boss Loot was originally blue, they got upgraded to Epic later.
CATA_PHASE_MOLTEN_FRONT = createClassicPhase({
	readable = "Cataclysm Classic - Molten Front",
	minimumBuildVersion = 40400,
	buildVersion = 40400,	-- Molten Front dailies came out before Firelands did during Cata Classic.
	phaseID = 4002,
	text = {
		en = "Molten Front",
		es = "Frente de magma",
		mx = "Frente de magma",
	},
	description = {
		en = "This was not available until the Molten Front became available during Cataclysm Classic.",
		es = "Esto no estaba disponible hasta que el Frente de Magma estuvo disponible durante Cataclysm Classic.",
		mx = "Esto no estaba disponible hasta que el Frente de Magma estuvo disponible durante Cataclysm Classic.",
	},
	lore = {
		en = "Included the Molten Front Dailies.",
		es = "Incluía las diarias del Frente de magma.",
		mx = "Incluía las diarias del Frente de magma.",
	},
});
CATA_PHASE_RAGE_OF_THE_FIRELANDS = createClassicPhase({
	readable = "Cataclysm Classic - Rage of the Firelands",
	minimumBuildVersion = 40400,
	buildVersion = 40401,
	phaseID = 41,
	text = {
		en = "Rage of the Firelands",
		es = "Furia de las Tierras de Fuego",
		mx = "Furia de las Tierras de Fuego",
	},
	description = {
		en = "This was not available until the Rage of the Firelands during Cataclysm Classic.",
		es = "Esto no estuvo disponible hasta la Furia de las Tierras de Fuego durante Cataclysm Classic.",
		mx = "Esto no estuvo disponible hasta la Furia de las Tierras de Fuego durante Cataclysm Classic.",
	},
	lore = {
		en = "Included Firelands.",
		es = "Incluía Las tierras de fuego",
		mx = "Incluía Las tierras de fuego",
	},
});
CATA_PHASE_HOUR_OF_TWILIGHT = createClassicPhase({
	readable = "Cataclysm Classic - Hour of Twilight",
	minimumBuildVersion = 40400,
	buildVersion = 40402,
	phaseID = 42,
	text = {
		en = "Hour of Twilight",
		es = "La hora del crepúsculo",
		mx = "La hora del crepúsculo",
	},
	description = {
		en = "This was not available until the Hour of Twilight during Cataclysm Classic.",
		es = "Esto no estuvo disponible hasta la Hora del Crepúsculo durante Cataclysm Classic.",
		mx = "Esto no estuvo disponible hasta la Hora del Crepúsculo durante Cataclysm Classic.",
	},
	lore = {
		en = "Included Dragon Soul.",
		es = "Incluía El alma del dragón",
		mx = "Incluía El alma del dragón",
	},
});

-- Mists of Pandaria Classic Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "Mists of Pandaria Classic",
		-- #else
		en = "Mists of Pandaria",
		-- #endif
	},
};
MOP_PHASE_ONE = createClassicPhase({
	readable = "Mists Classic - Phase 1",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 50,
	text = {
		en = "Phase 1",
		es = "Fase 1",
		mx = "Fase 1",
		tw = "第1階段",
	},
	lore = {
		en = "Included Level 85 Theramore's Fall scenario and the updated talent system.",
		es = "Incluido la gesta de la Caída de Theramore de nivel 85 y el sistema de talentos actualizado.",
		mx = "Incluido la gesta de la Caída de Theramore de nivel 85 y el sistema de talentos actualizado.",
	},
});
MOP_PHASE_ONE_MOGUSHAN_VAULTS = createClassicPhase({
	readable = "Mogu'shan Vaults",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5001,
	release = os.time({
		year=2025,
		month=7,
		day=31,
	}),
	text = {
		en = "Mogu'shan Vaults",
	},
	lore = {
		en = "Included Mogu'shan Vaults.",
	},
});
MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV = createClassicPhase({
	readable = "Celestial Dungeons (MSV)",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5002,
	release = os.time({
		year=2025,
		month=8,
		day=12,
	}),
	text = {
		en = "Celestial Dungeons (MSV)",
	},
	lore = {
		en = "Included Celestial Dungeons with MSV loot.",
	},
});
MOP_PHASE_ONE_HEART_OF_FEAR = createClassicPhase({
	readable = "Heart of Fear",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5003,
	release = os.time({
		year=2025,
		month=8,
		day=21,
	}),
	text = {
		en = "Heart of Fear",
	},
	lore = {
		en = "Included Heart of Fear.",
	},
});
MOP_PHASE_ONE_SHA_OF_ANGER_TIER_14 = createClassicPhase({
	readable = "Sha of Anger (Tier Available)",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5004,
	release = os.time({
		year=2025,
		month=8,
		day=26,
	}),
	text = {
		en = "Sha of Anger (Tier Available)",
	},
	lore = {
		en = "Included Tier 14 Gear from Sha of Anger.",
	},
});
MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF = createClassicPhase({
	readable = "Celestial Dungeons (HOF)",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5005,
	release = os.time({
		year=2025,
		month=9,
		day=2,
	}),
	text = {
		en = "Celestial Dungeons (HOF)",
	},
	lore = {
		en = "Included Heart of Fear LFR gear for Celestial Dungeons.",
	},
});
MOP_PHASE_ONE_TERRACE_OF_ENDLESS_SPRINGS = createClassicPhase({
	readable = "Terrace of Endless Springs",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5006,
	release = os.time({
		year=2025,
		month=9,
		day=4,
	}),
	text = {
		en = "Terrace of Endless Springs",
	},
	lore = {
		en = "Included Terrace of Endless Springs.",
	},
});
MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES = createClassicPhase({
	readable = "Celestial Dungeons (ToES)",
	originalTimelines = { "5.0.4" },
	minimumBuildVersion = 50500,
	buildVersion = 50500,
	phaseID = 5007,
	release = os.time({
		year=2025,
		month=9,
		day=16,
	}),
	text = {
		en = "Celestial Dungeons (ToES)",
	},
	lore = {
		en = "Included Terrace of Endless Springs LFR gear for Celestial Dungeons.",
	},
});
MOP_PHASE_LANDFALL = createClassicPhase({
	readable = "Mists Classic - Landfall",
	originalTimelines = { "5.1.0" },
	minimumBuildVersion = 50499,
	buildVersion = 50501,
	phaseID = 51,
	text = {
		en = "Landfall",
		es = "Desembarco",
		mx = "Desembarco",
	},
	lore = {
		en = "Includes the Pandaria Campaign quest line in Krasarang Wilds and the Brawler's Guild.",
	},
});
MOP_PHASE_RISE_OF_THE_THUNDER_KING = createClassicPhase({
	readable = "Mists Classic - Rise of the Thunder King",
	originalTimelines = { "5.2.0" },
	minimumBuildVersion = 50500,
	buildVersion = 50503,
	phaseID = 52,
	text = {
		en = "Rise of the Thunder King",
		es = "El Rey del Trueno",
		mx = "El Rey del Trueno",
	},
	lore = {
		en = "Included Throne of Thunder, the Isle of Giants, and the Isle of Thunder.",
		es = "Incluía el Trono del Trueno, la Isla de los Gigantes y la Isla del Trueno.",
		mx = "Incluía el Trono del Trueno, la Isla de los Gigantes y la Isla del Trueno.",
	},
});
MOP_PHASE_ESCALATION = createClassicPhase({
	readable = "Mists Classic - Escalation",
	originalTimelines = { "5.3.0" },
	minimumBuildVersion = 50500,
	buildVersion = 50504,
	phaseID = 53,
	text = {
		en = "Escalation",
		es = "Intensificación del Conflicto",
		mx = "Intensificación del Conflicto",
	},
	lore = {
		en = "Included Heroic Scenarios, Battlefield: Barrens Scenario, Deepwind Gorge, and the Tiger's Peak arena.",
		es = "Incluia gestas heroicas, Campo de batalla: Gesta Los Baldíos, Cañón del Céfiro y la arena La cima del Tigre.",
		mx = "Incluia gestas heroicas, Campo de batalla: Gesta Los Baldíos, Cañón del Céfiro y la arena La cima del Tigre.",
	},
});
MOP_PHASE_SIEGE_OF_ORGRIMMAR = createClassicPhase({
	readable = "Mists Classic - Siege of Orgrimmar",
	originalTimelines = { "5.4.0" },
	minimumBuildVersion = 50500,
	buildVersion = 50505,
	phaseID = 54,
	text = {
		en = "Siege of Orgrimmar",
		es = "Asedio de Orgrimmar",
		mx = "Asedio de Orgrimmar",
	},
	lore = {
		en = "Included Siege of Orgrimmar and the Timeless Isle.",
		es = "Incluía Asedio de Orgrimmar y la Isla intemporal.",
		mx = "Incluía Asedio de Orgrimmar y la Isla intemporal.",
	},
});

-- Warlords of Draenor Classic Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "WOD Classic",
		-- #else
		en = "Warlords of Draenor",
		-- #endif
	},
};
WOD_PHASE_ONE = 60;
WOD_PHASE_TWO = 61;
WOD_PHASE_THREE = 62;



-- Legion Classic Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "Legion Classic",
		-- #else
		en = "Legion",
		-- #endif
	},
};
LEGION_PHASE_ONE = 70;
LEGION_PHASE_TWO = 71;
LEGION_PHASE_THREE = 72;



-- Battle for Azeroth Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "BFA Classic",
		-- #else
		en = "Battle for Azeroth",
		-- #endif
	},
};
BFA_PHASE_ONE = 80;
BFA_PHASE_TWO = 81;
BFA_PHASE_THREE = 82;



-- Shadowlands Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "Shadowlands Classic",
		-- #else
		en = "Shadowlands",
		-- #endif
	},
};
SL_PHASE_ONE = 90;
SL_PHASE_TWO = 91;
SL_PHASE_THREE = 92;



-- Dragonflight Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "Dragonflight Classic",
		-- #else
		en = "Dragonflight",
		-- #endif
	},
};
DF_PHASE_ONE = 100;
DF_PHASE_TWO = 101;
DF_PHASE_THREE = 102;



-- The War Within Phases
CurrentClassicExpansion = {
	text = {
		-- #if ANYCLASSIC
		en = "TWW Classic",
		-- #else
		en = "The War Within",
		-- #endif
	},
};
TWW_PHASE_ONE = 110;
TWW_PHASE_TWO = 111;
TWW_PHASE_THREE = 112;

-- Done defining Phases for Classic
