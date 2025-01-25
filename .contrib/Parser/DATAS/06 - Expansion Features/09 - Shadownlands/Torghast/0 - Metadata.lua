-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(TORGHAST, {
		["coord"] = { 48.2, 39.4, THE_MAW },	-- Torghast Portal
		["icon"] = 3642306,
		["maps"] = {
			-- Tracking which mapID is which Zone name might not be necessary for Layer/Floor since they seem to be repeated within the Named 'Tower'
			-- #IF AFTER 9.1.0
			1962,	-- Adamant Vaults
			1963,	-- Adamant Vaults - Floor 6
			1964,	-- Adamant Vaults - Floor 6
			1969,	-- Adamant Vaults - Floor 6
			1974,	-- Adamant Vaults - Floor 6 (Lower)
			1979,	-- Adamant Vaults - Floor 6 (Lower)
			1977,	-- Adamant Vaults - Floor 6 (Lower)
			1975,	-- Adamant Vaults - Floor 6 (Upper)
			1976,	-- Adamant Vaults - Floor 6 (Upper)
			1966,	-- Adamant Vaults - Floor 7 (Lower)
			1965,	-- Adamant Vaults - Floor 7 (Upper)

			1985,	-- Coldheart - Layer 11
			1988,	-- Coldheart Interstitia - Layer 9, Floor 2
			1980,	-- Fracture Chambers - Layer 6, Floor 2
			1982,	-- Fracture Chambers - Layer 9, Floor 2
			1984,	-- Mort-regar - Layer 10, Floor 2?
			1987,	-- Mort'regar - Layer 10, Floor 1
			1981,	-- Soulforges - Layer 12, Some floor
			1986,	-- Uknown floor(Probably Mort-regar)
			-- #ENDIF
			--
			1769,	-- Arkoban Hall - Floor 6 / Skoldus Hall - Layer 1, Floor 6 / Layer 2, Floor 6 / Layer 3, Floor 6
			--
			1779,	-- Coldheart Interstitia - Layer 1, Floor 1
			1736,	-- Coldheart Interstitia - Layer 1, Floor 2
			1712,	-- Coldheart Interstitia - Layer 1, Floor 3 / Layer 2, Floor 3
			1796,	-- Coldheart Interstitia - Layer 1, Floor 4 / Layer 2, Floor 4
			1635,	-- Coldheart Interstitia - Layer 1, Floor 5 / Layer 2, Floor 1 / Fracture Chambers - Layer 1, Floor 1
			1630,	-- Coldheart Interstitia - Layer 1, Floor 6 / Layer 2, Floor 6
			1631,	-- Coldheart Interstitia - Layer 2, Floor 2 / Layer 2, Floor 4
			1776,	-- Coldheart Interstitia - Layer 2, Floor 5
			1913,	-- Coldheart Interstitia - Layer 4, Floor 2
			1912,	-- Coldheart Interstitia - Layer 6, Floor 1
			1798,	-- Coldheart - Layer 2, Floor 1 / Layer 3, Floor 1
			1795,	-- Coldheart - Layer 2, Floor 2 / Layer 3, Floor 2
			--
			1641,	-- Fracture Chambers - Layer 1, Floor 2
			1624,	-- Fracture Chambers - Layer 1, Floor 3 / Layer 2, Floor 3
			1621,	-- Fracture Chambers - Layer 1, Floor 4 / Layer 2, Floor 5
			1768,	-- Fracture Chambers - Layer 1, Floor 5
			1770,	-- Fracture Chambers - Layer 1, Floor 6 / Layer 2, Floor 6 / Layer 3, Floor 6
			1801,	-- Fracture Chambers - Layer 2, Floor 1
			1629,	-- Fracture Chambers - Layer 2, Floor 2
			1761,	-- Fracture Chambers - Layer 2, Floor 2
			1805,	-- Fracture Chambers - Layer 2, Floor 4 / Layer 3, Floor 1 / Skoldus Hall - Layer 2, Floor 4 / Skoldus Hall - Layer 3, Floor 1
			1793,	-- Fracture Chambers - Layer 2, Floor 4
			1615,	-- Fracture Chambers - Layer 6, Floor 1
			--
			1780,	-- Mort'regar - Layer 1, Floor 1
			1802,	-- Mort'regar - Layer 1, Floor 2
			1777,	-- Mort'regar - Layer 1, Floor 3
			1628,	-- Mort'regar - Layer 1, Floor 4
			1759,	-- Mort'regar - Layer 1, Floor 5 / Layer 2, Floor 2
			1721,	-- Mort'regar - Layer 1, Floor 6
			1806,	-- Mort'regar - Layer 2, Floor 1
			1800,	-- Mort'regar - Layer 2, Floor 3 / Layer 3, Floor 3
			1807,	-- Mort'regar - Layer 2, Floor 4 / Upper Reaches - Layer 3, Floor 2
			1757,	-- Mort'regar - Layer 2, Floor 5
			1781,	-- Mort'regar - Layer 2, Floor 6
			--
			1810,	-- Skoldus Hall - Layer 1, Floor 1
			1758,	-- Skoldus Hall - Layer 1, Floor 3 / Layer 2, Floor 3 / Layer 3, Floor 3
			1766,	-- Skoldus Hall - Layer 1, Floor 4 / Layer 2, Floor 5 / Layer 3, Floor 2
			1767,	-- Skoldus Hall - Layer 1, Floor 5
			1619,	-- Skoldus Hall - Layer 2, Floor 2 / Layer 3, Floor 2
			1803,	-- Skoldus Hall - Layer 3, Floor 4
			1804,	-- Skoldus Hall - Layer 3, Floor 5
			1809,	-- Skoldus Hall - Layer 3, Floor 5
			1983,	-- Skoldus Hall - Layer 12, Some floor
			--
			1623,	-- Soulforges - Layer 8, Floor 4
			--
			1792,	-- Upper Reaches - Layer 1, Floor 1 / Layer 3, Floor 4
			1791,	-- Upper Reaches - Layer 1, Floor 2 / Layer 2, Floor 4 / Layer 3, Floor 1
			1782,	-- Upper Reaches - Layer 1, Floor 4
			1920,	-- Upper Reaches - Layer 1, Floor 5 / Layer 2, Floor 2
			1787,	-- Upper Reaches - Layer 1, Floor 6 / Layer 3, Floor 6
			1783,	-- Upper Reaches - Layer 2, Floor 1 / Layer 3, Floor 5
			1789,	-- Upper Reaches - Layer 2, Floor 3 / Layer 3, Floor 3
			--
			1799,	-- somewhere in Coldheart Interstitia
			1797,	-- somewhere in Coldheart Interstitia
			1764,	-- Fracture Chambers - Layer 2, Floor 2
			1618,	-- Torghast
			1620,	-- Torghast
			1632,	-- Floor 29
			1660,	-- Alpha_TG_R04
			1705,	-- Torghast Entrance
			1728,	-- The Rundecarver
			1749,	-- TG34_Floor
			1751,	-- Floor 13
			1752,	-- Floor 14
			1753,	-- Floor 18
			1754,	-- Torghast
			1756,	-- TG44_Floor
			1760,	-- Twisting Corridors
			1808,	-- Twisting Corridors / Floor 11
			1762,	-- TG47_Floor
			1763,	-- Arkoban Hall - Floor 5
			1765,	-- TG54_Floor
			1771,	-- TG61_Floor
			1772,	-- TG62_Floor
			1773,	-- TG73_Floor
			1774,	-- Torghast
			1778,	-- TG68_Floor
			1784,	-- TG75_Floor
			1785,	-- TG76_Floor
			1786,	-- Torghast
			1794,	-- Torghast
			1811,	-- Torghast
			1812,	-- Torghast
			1911,	-- Torghast Entrance
		},
	}),
})));