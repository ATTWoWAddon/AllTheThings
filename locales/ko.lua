if GetLocale() ~= "koKR" then return; end
local app = select(2, ...);
local L = app.L;

local GetSpellName = app.WOWAPI.GetSpellName;

	L.TITLE = "|c" .. app.Colors.ATT .. "ALL THE THINGS|r";
	L.SHORTTITLE = "|c" .. app.Colors.ATT .. "ATT|r";












	L.COLLECTED_ICON = "|T" .. app.asset("known") .. ":0|t";	-- Acquired the colors and icon from CanIMogIt.
	L.COLLECTED_APPEARANCE_ICON = "|T" .. app.asset("known_circle") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.COMPLETE_ICON = "|T" .. app.asset("known_green") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.NOT_COLLECTED_ICON = "|T" .. app.asset("unknown") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.
	L.INCOMPLETE_ICON = "|T" .. app.asset("incomplete") .. ":0|t";		-- Acquired the colors and icon from CanIMogIt.

	if app.IsRetail then
	L.FOLLOWERS_COLLECTION_DESC = "Followers can be collected account wide, if you enable this setting in ATT.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	if app.IsRetail then
	L.MUSIC_ROLLS_DESC = "These are unlocked per-character and are not currently shared across your account. If someone at Blizzard is reading this, it would be really swell if you made these account wide.\n\nYou must manually refresh the addon by "..SHIFT_KEY_TEXT.." clicking the header for this to be detected.";	--TODO
	end
	L.EXPANSION_DATA[10].lore = "용군단 is the ninth expansion. 아제로스의 용군단이 부름을 받들어 선조의 보금자리인 용의 섬을 수호하고자 귀환했습니다. 섬 전역에서 정령 마력과 아제로스의 생명력이 넘쳐흐르는 지금, 용의 섬이 다시 한번 기지개를 켜며 깨어나고 있습니다. 여러분은 이제 태고의 경이를 모험하며 아득히 먼 옛날 잊힌 비밀을 탐구해야 합니다.";	--TODO: First sentence















local a = L.ABBREVIATIONS;
for key,value in pairs({
		["안토러스 - 불타는 왕좌"] = "안토러스",	-- ["Antorus, the Burning Throne"] = "Antorus"
		["깨어난 도시 나이알로사"] = "나이알로사",	-- ["Ny'alotha, the Waking City"] = "Ny'alotha"
		["미지의 시장 타자베쉬"] = "타자베쉬",	-- ["Tazavesh, the Veiled Market"] = "Tazavesh"
})
do a[key] = value; end


if app.IsRetail then
local a = L.HEADER_NAMES;
for key,value in pairs({
			[-5202] = "힘의 균형",										-- Balance of Power
})
do a[key] = value; end
end

local a = L.SETTINGS_MENU;
for key,value in pairs({





		APPEARANCES_CHECKBOX = "형상";
		BATTLE_PETS_CHECKBOX = "전투 애완동물";
		RECIPES_CHECKBOX = "제조법";
		TITLES_CHECKBOX = "칭호";

		AZERITE_ESSENCES_CHECKBOX = "|T"..app.asset("Expansion_BFA")..":0|t 아제로스의 심장 정수";
		DRAKEWATCHERMANUSCRIPTS_CHECKBOX = "|T"..app.asset("Expansion_DF")..":0|t 비룡감시자 필사본";
		FOLLOWERS_CHECKBOX = "|T"..app.asset("Expansion_WOD")..":0|t 추종자 및 동료";
		RUNEFORGELEGENDARIES_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 룬조각 능력";
		SOULBINDCONDUITS_CHECKBOX = "|T"..app.asset("Expansion_SL")..":0|t 도관";















})
do a[key] = value; end

if app.IsRetail then
local a = L.CUSTOM_COLLECTS_REASONS;
for key,value in pairs({
	["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
	["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
	["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
	["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
})
do a[key] = value; end
end
