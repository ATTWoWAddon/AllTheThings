---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			["lore"] = "Argus hovers on the border of the Twisting Nether and the physical universe, saturated with the fel energies of the Burning Legion.\n\nThe area of Argus that Illidan Stormrage visited during the War in Outland was once a beautiful place of crystalline mountains and shimmering seas, but is now cold and cruel with a sense of corruption and loss. Jagged crystal mountains hold festering corruption within that cause them to crumble, and dust devils born of the powdered gems screech down canyons of serrated rock which refract light everywhere. There is a city which looms over canyons of fractured crystal and is laid out according to complex geomantic rules. The buildings resemble those of the draenei but far more grandiose. At the center of the city is a mighty palace that is home to Archimonde and Kil'jaeden. Within the palace's crystal corridors are runes which fill the mind with despair, visions of conquest, and a rage to end all things: the creed of the Burning Legion, written in fire.",
			["icon"] = 1714097,
			["zone-text-continent"] = true,
			["groups"] = {
				m(THE_VINDICAAR_ANTORAN_WASTES_UPPER),
				m(ANTORAN_WASTES),
				m(EREDATH),
				m(KROKUUN),
			},
		})),
	}),
});
