PVP_GLADIATOR = createHeader({
	readable = "Gladiator Gear",
	constant = "PVP_GLADIATOR",
	-- #if NOT ANYCLASSIC
	export = true,	-- Referenced in AllTheThings.lua, in a symlink. TODO: Move it.
	-- #endif
	icon = 311231,
	text = {
		en = "Gladiator Gear",
		es = "Equipo de Gladiador",
		de = "Gladiatoren Rüstung",
		fr = "Équipement Gladiateur",
		mx = "Equipo de Gladiador",
		ru = "Доспехи Гладиатора",
		cn = "角斗士装备",
		tw = "鬥士裝備",
	},
});
