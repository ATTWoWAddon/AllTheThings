PVP_GLADIATOR = createHeader({
	readable = "Gladiator Gear",
	constant = "PVP_GLADIATOR",
	-- #if NOT ANYCLASSIC
	export = true,	-- Referenced in AllTheThings.lua, in a symlink. TODO: Move it.
	-- #endif
	icon = 311231,
	text = {
		en = "Gladiator Gear",
		de = "Gladiatoren Rüstung",
		es = "Equipo de Gladiador",
		mx = "Equipo de Gladiador",
		fr = "Équipement Gladiateur",
		ru = "Доспехи Гладиатора",
		cn = "角斗士装备",
		tw = "鬥士裝備",
	},
});
