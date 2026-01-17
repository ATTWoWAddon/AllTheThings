---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, prof(DYE_CRAFTING, {
	["timeline"] = { ADDED_11_2_7 },
	-- Requires either Alchemy or Inscription
	-- ["requireSkill"] = TODO,
	["coords"] = {
		{ 52.4, 37.6, FOUNDERS_POINT },
		{ 53.6, 58.1, RAZORWIND_SHORES },
	},
	["groups"] = {
		n(CRAFTABLES, {
			i(259115),	-- Alliance Blue Dye
			i(259131),	-- Arcwine Dye
			i(259078),	-- Basic Birch Dye
			i(259120),	-- Bone-White Dye
			i(259107),	-- Brass Dye
			i(259108),	-- Bronze Dye
			i(259105),	-- Copper Dye
			i(259109),	-- Dark Iron Dye
			i(259098),	-- Darkwood Dye
			i(259151),	-- Deep Mageroyal Red Dye
			i(259153),	-- Dusk Lily Grey Dye
			i(259133),	-- Dustwallow Green Dye
			i(259122),	-- Earthen Brown Dye
			i(259150),	-- Earthroot Dye
			i(259118),	-- Elwynn Pumpkin Dye
			i(259134),	-- Emerald Dreaming Dye
			i(259127),	-- Firebloom Red Dye
			i(259144),	-- Forsaken Plum Dye
			i(259139),	-- Gilnean Rose Dye
			i(258838),	-- Gold Dye
			i(259143),	-- Gravemoss Green Dye
			i(259147),	-- Grizzly Hills Green Dye
			i(259103),	-- Heartwood Dye
			i(259149),	-- Highborne Marble Dye
			i(259099),	-- Highland Birch Dye
			i(259152),	-- Hinterlands Hickory Dye
			i(259100),	-- Holy Oak Tan Dye
			i(259113),	-- Horde Red Dye
			i(259111),	-- Ironclaw Dye
			i(259128),	-- Kalimdor Sand Dye
			i(259116),	-- Kirin Tor Violet Dye
			i(259132),	-- Kodohide Brown Dye
			i(259110),	-- Kul Tiran Steel Dye
			i(259114),	-- Lush Green Dye
			i(259102),	-- Mahogany Dye
			i(259096),	-- Mesquite Brown Dye
			i(259135),	-- Midnight Blue Dye
			i(259140),	-- Moonberry Amethyst Dye
			i(259146),	-- Nazjatar Navy Dye
			i(259119),	-- Netherstorm Fuchsia Dye
			i(259130),	-- Nightsong Lilac Dye
			i(259121),	-- Obsidium Black Dye
			i(259101),	-- Pale Umber Dye
			i(259097),	-- Pinewood Dye
			i(259154),	-- Rain Poppy Red Dye
			i(259142),	-- Ratchet Rust Dye
			i(259117),	-- Sandfury Yellow Dye
			i(259138),	-- Savannah Gold Dye
			i(259124),	-- Silversage Green Dye
			i(259123),	-- Stormheim Grey Dye
			i(259104),	-- Stormsteel Dye
			i(259137),	-- Sungrass Yellow Dye
			i(259148),	-- Tidesage Teal Dye
			i(259145),	-- Timbermaw Brown Dye
			i(259125),	-- Un'Goro Green Dye
			i(259126),	-- Void Violet Dye
			i(259141),	-- Vol'dun Taupe Dye
			i(259136),	-- Vortex Teal Dye
			i(259053),	-- Warm Teak Dye
			i(259106),	-- Zandalari Gold Dye
			i(259129),	-- Zephras Blue Dye
		}),
		filter(RECIPES, {
			r(1264719),	-- Alliance Blue Dye
			r(1265087),	-- Arcwine Dye
			r(1264912),	-- Basic Birch Dye
			r(1277205),	-- Basic Birch Dye
			r(1264713),	-- Bone-White Dye
			r(1265105),	-- Brass Dye
			r(1265120),	-- Brass Dye
			r(1264954),	-- Bronze Dye
			r(1265115),	-- Bronze Dye
			r(1264952),	-- Copper Dye
			r(1265114),	-- Copper Dye
			r(1264712),	-- Dark Iron Dye
			r(1265112),	-- Dark Iron Dye
			r(1264936),	-- Dark Gold Dye
			r(1265111),	-- Dark Gold Dye
			r(1264921),	-- Darkwood Dye
			r(1277215),	-- Darkwood Dye
			r(1265122),	-- Deep Mageroyal Red Dye
			r(1264889),	-- Dusk Lily Grey Dye
			r(1265080),	-- Dustwallow Green Dye
			r(1264938),	-- Earthen Brown Dye
			r(1264950),	-- Earthroot Dye
			r(1264722),	-- Elwynn Pumpkin Dye
			r(1265098),	-- Emerald Dreaming Dye
			r(1264725),	-- Firebloom Red Dye
			r(1265089),	-- Forsaken Plum Dye
			r(1265121),	-- Gilnean Rose Dye
			r(1264721),	-- Gold Dye
			r(1264760),	-- Gold Dye
			r(1265081),	-- Gravemoss Green Dye
			r(1265082),	-- Grizzly Hills Green Dye
			r(1264928),	-- Heartwood Dye
			r(1277210),	-- Heartwood Dye
			r(1264914),	-- Highborne Marble Dye
			r(1264913),	-- Highland Birch Dye
			r(1277204),	-- Highland Birch Dye
			r(1265094),	-- Hinterlands Hickory Dye
			r(1265103),	-- Holy Oak Tan Dye
			r(1277201),	-- Holy Oak Tan Dye
			r(1265091),	-- Horde Red Dye
			r(1265077),	-- Ironclaw Dye
			r(1265113),	-- Ironclaw Dye
			r(1264955),	-- Kalimdor Sand Dye
			r(1264715),	-- Kirin Tor Violet Dye
			r(1264940),	-- Kodohide Brown Dye
			r(1265100),	-- Kul Tiran Steel Dye
			r(1265117),	-- Kul Tiran Steel Dye
			r(1264720),	-- Lush Green Dye
			r(1264926),	-- Mahogany Dye
			r(1277206),	-- Mahogany Dye
			r(1264916),	-- Mesquite Brown Dye
			r(1277209),	-- Mesquite Brown Dye
			r(1264894),	-- Midnight Blue Dye
			r(1265088),	-- Moonberry Amethyst Dye
			r(1264895),	-- Nazjatar Navy Dye
			r(1265084),	-- Netherstorm Fuchsia Dye
			r(1265086),	-- Nightsong Lilac Dye
			r(1264885),	-- Obsidium Black Dye
			r(1264924),	-- Pale Umber Dye
			r(1277208),	-- Pale Umber Dye
			r(1265102),	-- Pinewood Dye
			r(1277200),	-- Pinewood Dye
			r(1265097),	-- Rain Poppy Red Dye
			r(1264944),	-- Ratchet Rust Dye
			r(1265106),	-- Sandfury Yellow Dye
			r(1265109),	-- Savannah Gold Dye
			r(1265078),	-- Silversage Green Dye
			r(1264886),	-- Stormheim Grey Dye
			r(1265099),	-- Stormsteel Dye
			r(1265116),	-- Stormsteel Dye
			r(1265107),	-- Sungrass Yellow Dye
			r(1265101),	-- Tidesage Teal Dye
			r(1264945),	-- Timbermaw Brown Dye
			r(1265079),	-- Un'Goro Green Dye
			r(1265085),	-- Void Violet Dye
			r(1264942),	-- Vol'dun Taupe Dye
			r(1264717),	-- Vortex Teal Dye
			r(1264469),	-- Warm Teak Dye
			r(1277207),	-- Warm Teak Dye
			r(1265104),	-- Zandalari Gold Dye
			r(1265119),	-- Zandalari Gold Dye
			r(1264891),	-- Zephras Blue Dye
		}),
	},
}));
