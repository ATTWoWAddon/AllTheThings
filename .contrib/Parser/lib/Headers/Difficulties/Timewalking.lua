TIMEWALKING_HEADER = createHeader({
	readable = "Timewalking",
	icon = [[~_.asset("Difficulty_Timewalking")]],
	eventID = EVENTS.TIMEWALKING,
	text = {
		en = [[~GetDifficultyInfo(24)]],
	},
	description = {
		en = "Timewalking difficulties needlessly create new Source IDs for items despite having the exact same name, appearance, and display in the Collections Tab.\n\nA plea to the Blizzard Devs: Please clean up the Source ID database and have your Timewalking / Titanforged item variants use the same Source ID as their base assuming the appearances and names are exactly the same. Not only will this make your database much cleaner, but it will also make Completionists excited for rather than dreading the introduction of more Timewalking content.\n\n - Crieve, the Very Bitter Account Completionist that had 99% Ulduar completion and now only has 64% because your team duplicated the Source IDs rather than reuse the existing one.",
		-- TODO: de = "",
		es = "Las dificultades de Paseo en el tiempo crean innecesariamente nuevos ID de Fuente para objetos a pesar de tener exactamente el mismo nombre, apariencia y visualización en la pestaña Colecciones.\n\nUna petición a los desarrolladores de Blizzard: Por favor, limpien la base de datos de ID de Fuente y hagan que sus variantes de Paseo en el tiempo o Forjadas por los titanes usen el mismo ID de Fuente que su base, asumiendo que las apariencias y los nombres sean exactamente los mismos. Esto no solo hará que su base de datos sea mucho más limpia, sino que también hará que los Completistas se entusiasmen con la introducción de más contenido de Paseo en el tiempo, en lugar de temerla.\n\n - Crieve, el Completista de Cuentas Muy Amargado que tenía un 99% de completitud en Ulduar y ahora solo tiene un 64% porque su equipo duplicó los ID de Fuente en lugar de reutilizar el existente.",
		mx = "Las dificultades de Cronoviajes crean innecesariamente nuevos ID de Fuente para objetos a pesar de tener exactamente el mismo nombre, apariencia y visualización en la pestaña Colecciones.\n\nUna petición a los desarrolladores de Blizzard: Por favor, limpien la base de datos de ID de Fuente y hagan que sus variantes de Cronoviajes o Forjadas por los titanes usen el mismo ID de Fuente que su base, asumiendo que las apariencias y los nombres sean exactamente los mismos. Esto no solo hará que su base de datos sea mucho más limpia, sino que también hará que los Completistas se entusiasmen con la introducción de más contenido de Cronoviajes, en lugar de temerla.\n\n - Crieve, el Completista de Cuentas Muy Amargado que tenía un 99% de completitud en Ulduar y ahora solo tiene un 64% porque su equipo duplicó los ID de Fuente en lugar de reutilizar el existente.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Путешествия во времени без надобности создают новые ID Источников для предметов, несмотря на то, что они имеют те же имена, облики и отображение в Коллекции.\n\nУбедительная просьба разработчикам Blizzard: Пожалуйста, почистите базу данных ID Источников и сделайте варианты предметов из Путешествий во времени/Кованные титанами с тем же ID Источника, что и оригинал, поскольку названия и облики абсолютно идентичны. Не только сделает вашу базу данных чище, но и позволит Собирателям относиться к новым Путешествиям во времени с воодушевлением, нежели с раздражением.\n\n - Crieve, Очень Огорченный Собиратель, у которого теперь всего лишь 64% выполнение Ульдуара, когда было 99%, потому что ваша команда продублировала ID Источников вместо использования уже имеющихся.",
		cn = "时光漫游难度为物品创建新的sourceID，尽管它们的名称、外观和在收藏选项卡中的显示完全相同。\n\n向暴雪开发者提出请求：请清理sourceID数据库，既然时光漫游/泰坦造物物品的外观和名称完全相同，就请使用相同的sourceID。这不仅会让数据库变得更加干净，也会让完美主义者们对更多的时光漫游内容感到兴奋而不是恐惧。\n\n - Crieve，非常苦逼的战网完美主义者，本来有99%的奥杜尔完成度，现在只有64%了，就因为暴雪团队复制了 sourceID，而不是重复使用现有的。",
		tw = "時光漫遊的難度變體在物品名稱、外觀，以及收藏介面中的顯示都完全相同的情況下，卻仍然毫無必要地建立了新的 Source ID。\n\n在此懇請 Blizzard 的開發團隊：請整理並清理 Source ID 的資料庫，並讓你們的時光漫遊／泰坦造物（Titanforged）物品變體，在外觀與名稱完全相同時，沿用其基礎物品的 Source ID。這不僅能讓你們的資料庫變得乾淨許多，也能讓成就／收藏型玩家對更多時光漫遊內容的推出感到期待，而不是感到恐懼與厭煩。\n\n—— Crieve，一位極度苦澀的帳號全收集玩家\n（原本奧杜亞完成度有 99%，現在只剩 64% ，\n只因你們的團隊選擇重複建立 Source ID，而不是重用既有的那一個。）",
	},
});
