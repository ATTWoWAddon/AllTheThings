---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		prof(JUNKYARD_TINKERING, bubbleDownSelf({ ["requireSkill"] = JUNKYARD_TINKERING }, {
			["cr"] = 150359,	-- Pascal-K1N6
			["coord"] = { 71.4, 32.3, MECHAGON },
			["groups"] = {
				n(CRAFTABLES, {
					i(167064),	-- 500S-Cybergenic Powercore
					i(169874),	-- Annoy-o-Tron Gang
					i(169868),	-- Anti-Gravity Pack
					i(169113, {	-- Advanced Adventurer Augmentation
						i(169002),	-- Calibrated Hefty Cog
						i(169007),	-- Laser-Etched Band
						i(169009),	-- Reinforced Digit Diode
						i(169008),	-- Rust Resistant Loop
						i(161375),	-- Clockwork Re-Sharpener
						i(161418),	-- Deployable Vibro Enhancer
						i(161416),	-- Galvanic Turbo-Charger
						i(161374),	-- Ruthlessness Protocol Augment
						i(161414),	-- Self-Accelerating Drive Shaft
						i(161382),	-- Wind-Up Utility Pylon
					}),
					i(168496),	-- Battle Box
					i(168233),	-- BAWLD-371
					i(168045),	-- Beastbot Powerpack
					i(169649),	-- Blue Spraybot
					i(167832),	-- Canned Minnows
					i(168327),	-- Chain Ignitercoil
					i(166972),	-- Emergency Powerpack
					i(166973),	-- Emergency Repair Kit
					i(168821),	-- Emergency Rocket Chicken
					i(168222),	-- Encrypted Black Market Radio
					i(168833, {	-- Experimental Adventurer Augmentation
						i(169002),	-- Calibrated Hefty Cog
						i(169007),	-- Laser-Etched Band
						i(169009),	-- Reinforced Digit Diode
						i(169008),	-- Rust Resistant Loop
						i(161375),	-- Clockwork Re-Sharpener
						i(161418),	-- Deployable Vibro Enhancer
						i(161416),	-- Galvanic Turbo-Charger
						i(161374),	-- Ruthlessness Protocol Augment
						i(161414),	-- Self-Accelerating Drive Shaft
						i(161382),	-- Wind-Up Utility Pylon
					}),
					i(169137, {	-- Extraordinary Adventurer Augmentation
						i(169002),	-- Calibrated Hefty Cog
						i(169007),	-- Laser-Etched Band
						i(169009),	-- Reinforced Digit Diode
						i(169008),	-- Rust Resistant Loop
						i(161375),	-- Clockwork Re-Sharpener
						i(161418),	-- Deployable Vibro Enhancer
						i(161416),	-- Galvanic Turbo-Charger
						i(161374),	-- Ruthlessness Protocol Augment
						i(161414),	-- Self-Accelerating Drive Shaft
						i(161382),	-- Wind-Up Utility Pylon
					}),
					i(167870),	-- G99.99 Landshark
					i(168832),	-- Galvanic Oscillator
					i(169648),	-- Green Spraybot
					i(168907),	-- Holographic Digitalization Hearthstone (TOY!)
					i(167649),	-- Hundred-Fathom Lure
					i(167751),	-- X-995 Mechanocat (MOUNT!)
					i(167071),	-- Mechano-Treat
					i(169384),	-- Microbot XD (PET!)
					i(169647),	-- Orange Spraybot
					i(168843),	-- Perfectly Timed Differential
					i(169114),	-- Personal Time Displacer
					i(168483),	-- Protocol Transference Device
					i(170065),	-- Re-Procedurally Generated Punchcard
					i(167069),	-- Rustbolt Gramophone
					i(168047),	-- Rustbolt Kegerator
					i(169869),	-- Rustbolt Pocket Turret
					i(168057),	-- Rustbolt Requisitions
					i(168497),	-- Rustbolt Resistance Insignia [BOA]
					i(169610),	-- S.P.A.R.E. Crate
					i(169882),	-- Sapphronetta Flivvers Action Figure
					i(168052),	-- Scrap Grenade
					i(167046),	-- Scrap Trap
					i(169155),	-- Scrapmaster's Blowtorch
					i(168912),	-- Subroutine: Optimization (Might not be collectible)
					i(167075),	-- Ultrasafe Transporter: Mechagon
					i(169383),	-- Utility Mechanoclaw (PET!)
					i(167062),	-- Vaultbot Key
				}),
				filter(RECIPES, {
					r(291598, {["u"]=TRAINING}),	-- 500S-Cybergenic Powercore
					r(300274),	-- Annoy-o-Tron Gang
					r(300272),	-- Anti-Gravity Pack
					r(299864),	-- Advanced Adventurer Augment
					r(298137),	-- Battle Box
					r(296595),	-- BAWLD-371
					r(295362),	-- Beastbot Powerpack
					r(300268),	-- Blue Spraybot
					r(294360),	-- Canned Minnows
					r(300279),	-- Chain Ignitercoils
					r(291600),	-- Emergency Powerpack
					r(291601),	-- Emergency Repair Kit
					r(298136),	-- Emergency Rocket Chicken
					r(300275),	-- Encrypted Black Market Radio
					r(299186),	-- Experimental Adventurer Augment
					r(299952),	-- Extraordinary Adventurer Augment
					r(294420),	-- G99.99 Landshark
					r(300278),	-- Galvanic Oscillator
					r(300267),	-- Green Spraybot
					r(299411),	-- Holographic Digitalization Hearthstone
					r(293394),	-- Hundred-Fathom Lure
					r(294193, {["u"]=TRAINING}),	-- Mechanocat Laser Pointer
					r(291869),	-- Mechano-Treat
					r(300270),	-- Microbot XD
					r(300266),	-- Orange Spraybot
					r(300271, {["u"]=TRAINING}),	-- Perfectly Timed Differential
					r(300265),	-- Personal Time Displacer
					r(298134),	-- Protocol Transference Device
					r(300277),	-- Re-Procedurally Generated Punchcard
					r(291789, {["u"]=TRAINING}),	-- Rustbolt Gramophone
					r(295288, {["u"]=TRAINING}),	-- Rustbolt Kegerator
					r(300273),	-- Rustbolt Pocket Turret
					r(298140),	-- Rustbolt Requisitions
					r(298138),	-- Rustbolt Resistance Insignia
					r(300291),	-- S.P.A.R.E. Crate
					r(303000, {["u"]=TRAINING}),	-- Sapphronetta Flivvers Action Figure
					r(295290),	-- Scrap Grenade
					r(291524),	-- Scrap Trap
					r(300122, {["u"]=TRAINING}),	-- Scrapmaster's Blowtorch
					r(298141, {["u"]=TRAINING}),	-- Subroutine: Optimization (Might not be collectible)
					r(291987),	-- Ultrasafe Transporter: Mechagon
					r(300269),	-- Utility Mechanoclaw
					r(291788),	-- Vaultbot Key
				}),
				n(QUESTS, {
					q(55534, {	-- Rustbolt Gramophone
						["provider"] = { "i", 167069 },	-- Rustbolt Gramophone
						["coord"] = { 71.4, 32.6, MECHAGON },
					}),
					q(55535, {	-- The Tipsy Tinkerer
						["provider"] = { "i", 168047 },	-- Rustbolt Kegerator
						["coord"] = { 71.4, 32.6, MECHAGON },
					}),
				})
			},
		})),
	}),
})));
