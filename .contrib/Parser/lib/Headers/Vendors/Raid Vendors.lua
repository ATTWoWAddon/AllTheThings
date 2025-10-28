RAID_FINDER_VENDOR = createHeader({
	readable = "Raid Finder Vendor",
	icon = 308480,
	text = {
		en = "Raid Finder Vendor",
		de = "Händlerin des Schlachtzugsbrowsers",
		es = "Vendedor de buscador de bandas",
		fr = "Marchand de l’outil Raids",
		it = "Mercante della Ricerca delle Incursioni",
		mx = "Vendedor de buscador de bandas",
		pt = "Comerciante de Localizador de Raides",
		ru = "Награды за поиск рейда",
		ko = "공격대 찾기 상인",
		cn = "随机副本商人",
		tw = "隨機團隊商人",
	},
});
RAID_FLEXIBLE_VENDOR = createHeader({
	readable = "Flexible Raid Vendor",
	icon = [[~_.asset("Category_CommonBossDrop")]],
	text = {
		en = "Flexible Vendor",
		--[[
		-- CRIEVE NOTE: I'll need to wait until after MOP Classic launch populates https://www.wowhead.com/mop-classic/de/npc=74022/thelett-shaleheart
		de = "",
		es = "",
		mx = "",
		fr = "",
		it = "",
		pt = "",
		ru = "",
		ko = "",
		tw = "",
		]]--
		cn = "灵活供应商",
	},
});
RAID_NORMAL_VENDOR = createHeader({
	readable = "Normal Raid Vendor",
	icon = 311236,
	text = {
		en = "Raid Vendor",
		de = "Händlerin für Schlachtzüge",
		es = "Vendedor de banda",
		mx = "Vendedor de banda",
		fr = "Marchande d’équipement de raids",
		it = "Mercante delle Incursioni",
		pt = "Comerciante do Raide",
		ru = "Награды за рейд",
		ko = "공격대 상인",
		cn = "团队副本商人",
		tw = "團隊模式商人",
	},
});
RAID_HEROIC_VENDOR = createHeader({
	readable = "Heroic Raid Vendor",
	icon = 311235,
	text = {
		en = "Heroic Vendor",
		de = "Händlerin für heroische Schlachtzüge",
		es = "Vendedor heroico",
		mx = "Vendedor de modo heroico",
		fr = "Marchande d’équipement héroïque",
		it = "Mercante Eroica",
		pt = "Comerciante Heroico",
		ru = "Награды за рейд в героическом режиме",
		ko = "영웅급 상인",
		cn = "英雄副本商人",
		tw = "英雄模式商人",
	},
});
RAID_MYTHIC_VENDOR = createHeader({
	readable = "Mythic Raid Vendor",
	icon = 311237,
	text = {
		en = "Mythic Vendor",
		de = "Händlerin für mythische Schlachtzüge",
		es = "Vendedor mítico",
		mx = "Vendedor de modo mítico",
		fr = "Marchande d’équipement mythique",
		it = "Mercante Mitica",
		pt = "Comerciante Mítico",
		ru = "Награды за рейд в эпохальном режиме",
		ko = "신화 공격대 상인",
		cn = "史诗副本商人",
		tw = "傳奇模式商人",
	},
});

-- CRIEVE NOTE: Siege of Orgrimmar is a pain, it needs special treatment.
-- #if AFTER 6.0.1
SOO_RAID_FINDER_VENDOR = RAID_FINDER_VENDOR;
SOO_RAID_NORMAL_VENDOR = RAID_NORMAL_VENDOR;
SOO_RAID_HEROIC_VENDOR = RAID_HEROIC_VENDOR;
SOO_RAID_MYTHIC_VENDOR = RAID_MYTHIC_VENDOR;
-- #else
SOO_RAID_FINDER_VENDOR = RAID_FINDER_VENDOR;	-- This might be "Looking for Raid Vendor" in MOP Classic, not sure yet.
SOO_RAID_NORMAL_VENDOR = RAID_FLEXIBLE_VENDOR;
SOO_RAID_HEROIC_VENDOR = RAID_NORMAL_VENDOR;
SOO_RAID_MYTHIC_VENDOR = RAID_HEROIC_VENDOR;
-- #endif
