ZULAMAN_TIMED_EVENT = createHeader({
	readable = "Timed Event",
	icon = 133633,
	text = {
		en = "Timed Event",
		fr = "Événement chronométré",
		ru = "Временное Событие",
		cn = "限时事件",
		tw = "限時事件",
	},
});
ZULAMAN_CHEST_1 = createHeader({
	readable = "First Chest",
	icon = 133634,
	text = {
		en = "First Chest",
		fr = "Premier coffre",
		ru = "Первый Сундук",
		cn = "一箱",
		tw = "第一個寶箱",
	},
});
ZULAMAN_CHEST_2 = createHeader({
	readable = "Second Chest",
	icon = 133639,
	text = {
		en = "Second Chest",
		fr = "Second coffre",
		ru = "Второй Сундук",
		cn = "二箱",
		tw = "第二個寶箱",
	},
});
ZULAMAN_CHEST_3 = createHeader({
	readable = "Third Chest",
	icon = 133644,
	text = {
		en = "Third Chest",
		fr = "Troisième coffre",
		ru = "Третий Сундук",
		cn = "三箱",
		tw = "第三個寶箱",
	},
});
ZULAMAN_CHEST_4 = createHeader({
	readable = "Final Chest",
	-- #if NOT ANYCLASSIC
	-- #if AFTER TBC
	constant = "ZULAMAN_CHEST_4",	-- This is referenced in AllTheThings.lua
	export = true,
	-- #endif
	-- #endif
	icon = 132594,
	text = {
		en = "Final Chest",
		fr = "Coffre final",
		ru = "Последний Сундук",
		cn = "最终宝箱",
		tw = "最後的寶箱",
	},
});