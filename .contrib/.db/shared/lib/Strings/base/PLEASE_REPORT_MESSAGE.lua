-- #if ANYCLASSIC
local discordErrorChannel = '#classic-errors';
-- #else
local discordErrorChannel = '#retail-errors';
-- #endif

createLocalizationString({
	readable = "Please report this to the ATT Discord in " .. discordErrorChannel .. "! Thanks!",
	constant = "PLEASE_REPORT_MESSAGE",
	export = true,
	text = {
		en = "Please report this to the ATT Discord in " .. discordErrorChannel .. "! Thanks!",
		de = "Bitte melden Sie den Fehler an das ATT Discord in " .. discordErrorChannel .. "! Danke!",
		es = "¡Por favor, reporte esto al Discord de ATT en " .. discordErrorChannel .. "! ¡gracias!",
		mx = "¡Por favor, reporta esto al Discord de ATT en " .. discordErrorChannel .. "! ¡gracias!",
		fr = "Merci de signaler sur le serveur Discord d’ATT dans le canal " .. discordErrorChannel .. " ! Merci !",
		-- TODO: it = "",
		pt = "Por favor reporte isso no Discord do ATT em " .. discordErrorChannel .. "! Obrigado!",
		ru = "Пожалуйста, сообщите об этом на Discord-сервере ATT в канале " .. discordErrorChannel .. "! Спасибо!",
		-- TODO: ko = "",
		cn = "请把错误报告给 ATT Discord 的 " .. discordErrorChannel .. "！谢谢！",
		tw = "請把錯誤回報給 ATT Discord 的 " .. discordErrorChannel .. "！謝謝！",
	},
})
