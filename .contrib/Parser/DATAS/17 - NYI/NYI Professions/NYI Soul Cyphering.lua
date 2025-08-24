---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER SL
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(SOUL_CYPHERING, {
		n(CRAFTABLES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(174992),	-- Cypher of Extrication
					i(170463),	-- Jailer's Tower Key
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(317751),	-- Adamantine Cypher
					r(317802),	-- Critical Damage
					r(317852),	-- Critical Healing
					r(317798),	-- Critical Strike Chance
					r(317900),	-- Cypher of Extrication
					r(325848),	-- Cypher of Relocation
					r(317756),	-- Dauntless Cypher
					r(317761),	-- Formless Dreadsaddle
					r(317801),	-- Haste
					r(317825),	-- Healing
					r(317427),	-- Hoarfrost Immunity
					r(317398),	-- Icebound Cypher
					r(317902),	-- Jailer's Tower Key
					r(317708),	-- Kinetic Cypher
					r(317800),	-- Mastery
					r(317799),	-- Max Health
					r(317843),	-- Nullification Aura
					r(317841),	-- Pandemonium Master Key
					r(317850),	-- Repulsion Cypher
					r(319235),	-- Resolute Cypher
					r(335287),	-- The Maw - Consumable Power - NYI
					r(335279),	-- The Maw - Pet Cosmetic - NYI
					r(335284),	-- The Maw - POI Unlock - NYI
					r(335278),	-- The Maw - Travel Upgrade - NYI
					r(335286),	-- The Maw - Torghast Unlock - NYI
					r(317797),	-- Versatility
				})),
			}),
		}),
	}),
}));
-- #endif
