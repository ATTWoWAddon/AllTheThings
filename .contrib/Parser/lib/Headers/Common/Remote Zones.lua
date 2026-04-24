REMOTE_ZONES = createHeader({
	readable = "Remote Zones",
	constant = "REMOTE_ZONES",
	export = true,
	icon = 
		-- #if AFTER 5.4.2
		450908,
		-- #else
		237382,
		-- #endif
	text = {
		en = "~TRACKER_FILTER_REMOTE_ZONES",
	},
	description = {
		en = "Contains content which is available in the current Zone, but is directly Sourced in another Zone.",
		-- TODO: de = "",
		es = "Contiene contenido que está disponible en la Zona actual, pero que se obtiene directamente de otra Zona.",
		mx = "Contiene contenido que está disponible en la Zona actual, pero que se obtiene directamente de otra Zona.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: pt = "",
		ru = "Контент, который доступен в текущей зоне, но формально заимствован из другой зоны.",
		-- TODO: ko = "",
		cn = "包含当前区域可用但实际源自其他区域的内容。",
		tw = "包含在當前區域可取得，但來源直接來自另一個區域的內容。",
	},
});
