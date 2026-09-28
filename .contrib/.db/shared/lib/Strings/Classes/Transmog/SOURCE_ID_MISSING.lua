-- #if ANYCLASSIC
local discordErrorChannel = '#classic-errors';
-- #else
local discordErrorChannel = '#retail-errors';
-- #endif

createLocalizationString({
	readable = "Please report this Item and where it was acquired to the ATT Discord in " .. discordErrorChannel .. "!",
	constant = "SOURCE_ID_MISSING",
	export = true,
	text = {
		en = "Please report this Item and where it was acquired to the ATT Discord in " .. discordErrorChannel .. "!",
		de = "Bitte meldet diesen Gegenstand und wo er erhalten wurde an das ATT Discord in " .. discordErrorChannel .. "!",
		es = "Por favor, reporta este objeto y dónde fue obtenido al Discord de ATT en " .. discordErrorChannel .. "!",
		mx = "Por favor, reporta este objeto y dónde fue obtenido al Discord de ATT en " .. discordErrorChannel .. "!",
		fr = "Veuillez signaler cet objet et le lieu où il a été acquis sur le Discord d’ATT, dans le salon " .. discordErrorChannel .. " !",
		-- TODO: it = "",
		-- TODO: pt = "",
		ru = "Пожалуйста, сообщите в канале " .. discordErrorChannel .. " на нашем сервере Discord, где Вы нашли эту вещь!",
		-- TODO: ko = "",
		cn = "请在 ATT Discord 的 " .. discordErrorChannel .. " 中报告此物品及其获取地点！",
		tw = "請在 ATT Discord 的 " .. discordErrorChannel .. " 中回報此物品及其獲得地點！",
	},
})
