-- #if BEFORE 3.0.2
-- CRIEVE NOTE: This is for demon training in Classic exclusively.
-- You should probably ignore this file. :D
root("Skills", {
	cl(WARLOCK, {
		n(DEMON_TRAINER, bubbleDown({ ["timeline"] = { REMOVED_3_0_2 } }, {
			["maps"] = { IRONFORGE, ORGRIMMAR, STORMWIND_CITY, UNDERCITY, ORGRIMMAR },
			["classes"] = { WARLOCK },
			["crs"] = {
				6374,	-- Cylina Darkheart <Demon Trainer>
				6373,	-- Dane Winslow <Demon Trainer>
				6328,	-- Dannie Fizzwizzle <Demon Trainer>
				5750,	-- Gina Lang <Demon Trainer>
				12807,	-- Greshka <Demon Master>
				12776,	-- Hraug <Demon Trainer>
				6382,	-- Jubahl Corpseseeker <Demon Trainer>
				5749,	-- Kayla Smithe <Demon Trainer>
				6027,	-- Kitha <Demon Trainer>
				5815,	-- Kurgul <Demon Trainer>
				5753,	-- Martha Strain <Demon Trainer>
				5520,	-- Spackle Thornberry <Demon Trainer>
				6376,	-- Wren Darkspring <Demon Trainer>
			},
			["groups"] = {
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 28071,	-- Grimoire of Anguish (Rank 1)
					["spellID"] = 33698,	-- Anguish (Rank 1)
					["rank"] = 1,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 28072,	-- Grimoire of Anguish (Rank 2)
					["spellID"] = 33699,	-- Anguish (Rank 2)
					["rank"] = 2,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 28073,	-- Grimoire of Anguish (Rank 3)
					["spellID"] = 33700,	-- Anguish (Rank 3)
					["rank"] = 3,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 25469,	-- Grimoire of Avoidance
					["spellID"] = 32233,	-- Avoidance
				}),
				{
					["itemID"] = 16321,	-- Grimoire of Blood Pact (Rank 1)
					["spellID"] = 6307,	-- Blood Pact (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16322,	-- Grimoire of Blood Pact (Rank 2)
					["spellID"] = 7804,	-- Blood Pact (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16323,	-- Grimoire of Blood Pact (Rank 3)
					["spellID"] = 7805,	-- Blood Pact (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16324,	-- Grimoire of Blood Pact (Rank 4)
					["spellID"] = 11766,	-- Blood Pact (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16325,	-- Grimoire of Blood Pact (Rank 5)
					["spellID"] = 11767,	-- Blood Pact (Rank 5)
					["rank"] = 5,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22180,	-- Grimoire of Blood Pact (Rank 6)
					["spellID"] = 27268,	-- Blood Pact (Rank 6)
					["rank"] = 6,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 23734,	-- Grimoire of Cleave (Rank 1)
					["spellID"] = 30213,	-- Cleave (Rank 1)
					["rank"] = 1,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 23745,	-- Grimoire of Cleave (Rank 2)
					["spellID"] = 30219,	-- Cleave (Rank 2)
					["rank"] = 2,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 23755,	-- Grimoire of Cleave (Rank 3)
					["spellID"] = 30223,	-- Cleave (Rank 3)
					["rank"] = 3,
				}),
				{
					["itemID"] = 16357,	-- Grimoire of Consume Shadows (Rank 1)
					["spellID"] = 17767,	-- Consume Shadows (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16358,	-- Grimoire of Consume Shadows (Rank 2)
					["spellID"] = 17850,	-- Consume Shadows (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16359,	-- Grimoire of Consume Shadows (Rank 3)
					["spellID"] = 17851,	-- Consume Shadows (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16360,	-- Grimoire of Consume Shadows (Rank 4)
					["spellID"] = 17852,	-- Consume Shadows (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16361,	-- Grimoire of Consume Shadows (Rank 5)
					["spellID"] = 17853,	-- Consume Shadows (Rank 5)
					["rank"] = 5,
				},
				{
					["itemID"] = 16362,	-- Grimoire of Consume Shadows (Rank 6)
					["spellID"] = 17854,	-- Consume Shadows (Rank 6)
					["rank"] = 6,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22184,	-- Grimoire of Consume Shadows (Rank 7)
					["spellID"] = 27272,	-- Consume Shadows (Rank 7)
					["rank"] = 7,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 25900,	-- Grimoire of Demonic Frenzy
					["spellID"] = 32850,	-- Demonic Frenzy
				}),
				{
					["itemID"] = 16381,	-- Grimoire of Devour Magic (Rank 2)
					["spellID"] = 19731,	-- Devour Magic (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16382,	-- Grimoire of Devour Magic (Rank 3)
					["spellID"] = 19734,	-- Devour Magic (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16383,	-- Grimoire of Devour Magic (Rank 4)
					["spellID"] = 19736,	-- Devour Magic (Rank 4)
					["rank"] = 4,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22188,	-- Grimoire of Devour Magic (Rank 5)
					["spellID"] = 27276,	-- Devour Magic (Rank 5)
					["rank"] = 5,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22189,	-- Grimoire of Devour Magic (Rank 6)
					["spellID"] = 27277,	-- Devour Magic (Rank 6)
					["rank"] = 6,
				}),
				{
					["itemID"] = 16326,	-- Grimoire of Fire Shield (Rank 1)
					["spellID"] = 2947,	-- Fire Shield (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16327,	-- Grimoire of Fire Shield (Rank 2)
					["spellID"] = 8316,	-- Fire Shield (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16328,	-- Grimoire of Fire Shield (Rank 3)
					["spellID"] = 8317,	-- Fire Shield (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16329,	-- Grimoire of Fire Shield (Rank 4)
					["spellID"] = 11770,	-- Fire Shield (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16330,	-- Grimoire of Fire Shield (Rank 5)
					["spellID"] = 11771,	-- Fire Shield (Rank 5)
					["rank"] = 5,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22181,	-- Grimoire of Fire Shield (Rank 6)
					["spellID"] = 27269,	-- Fire Shield (Rank 6)
					["rank"] = 6,
				}),
				{
					["itemID"] = 16302,	-- Grimoire of Firebolt (Rank 2)
					["spellID"] = 7799,	-- Firebolt (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16316,	-- Grimoire of Firebolt (Rank 3)
					["spellID"] = 7800,	-- Firebolt (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16317,	-- Grimoire of Firebolt (Rank 4)
					["spellID"] = 7801,	-- Firebolt (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16318,	-- Grimoire of Firebolt (Rank 5)
					["spellID"] = 7802,	-- Firebolt (Rank 5)
					["rank"] = 5,
				},
				{
					["itemID"] = 16319,	-- Grimoire of Firebolt (Rank 6)
					["spellID"] = 11762,	-- Firebolt (Rank 6)
					["rank"] = 6,
				},
				{
					["itemID"] = 16320,	-- Grimoire of Firebolt (Rank 7)
					["spellID"] = 11763,	-- Firebolt (Rank 7)
					["rank"] = 7,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22179,	-- Grimoire of Firebolt (Rank 8)
					["spellID"] = 27267,	-- Firebolt (Rank 8)
					["rank"] = 8,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 23711,	-- Grimoire of Intercept (Rank 1)
					["spellID"] = 30151,	-- Intercept (Rank 1)
					["rank"] = 1,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 23730,	-- Grimoire of Intercept (Rank 2)
					["spellID"] = 30194,	-- Intercept (Rank 2)
					["rank"] = 2,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 23731,	-- Grimoire of Intercept (Rank 3)
					["spellID"] = 30198,	-- Intercept (Rank 3)
					["rank"] = 3,
				}),
				{
					["itemID"] = 16368,	-- Grimoire of Lash of Pain (Rank 2)
					["spellID"] = 7815,	-- Lash of Pain (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16371,	-- Grimoire of Lash of Pain (Rank 3)
					["spellID"] = 7816,	-- Lash of Pain (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16372,	-- Grimoire of Lash of Pain (Rank 4)
					["spellID"] = 11778,	-- Lash of Pain (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16373,	-- Grimoire of Lash of Pain (Rank 5)
					["spellID"] = 11779,	-- Lash of Pain (Rank 5)
					["rank"] = 5,
				},
				{
					["itemID"] = 16374,	-- Grimoire of Lash of Pain (Rank 6)
					["spellID"] = 11780,	-- Lash of Pain (Rank 6)
					["rank"] = 6,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22186,	-- Grimoire of Lash of Pain (Rank 7)
					["spellID"] = 27274,	-- Lash of Pain (Rank 7)
					["rank"] = 7,
				}),
				{
					["itemID"] = 16380,	-- Grimoire of Lesser Invisibility
					["spellID"] = 7870,	-- Lesser Invisibility
				},
				{
					["itemID"] = 16390,	-- Grimoire of Paranoia
					["spellID"] = 19480,	-- Paranoia
				},
				{
					["itemID"] = 16331,	-- Grimoire of Phase Shift
					["spellID"] = 4511,	-- Phase Shift
				},
				{
					["itemID"] = 16351,	-- Grimoire of Sacrifice (Rank 1)
					["spellID"] = 7812,	-- Sacrifice (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16352,	-- Grimoire of Sacrifice (Rank 2)
					["spellID"] = 19438,	-- Sacrifice (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16353,	-- Grimoire of Sacrifice (Rank 3)
					["spellID"] = 19440,	-- Sacrifice (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16354,	-- Grimoire of Sacrifice (Rank 4)
					["spellID"] = 19441,	-- Sacrifice (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16355,	-- Grimoire of Sacrifice (Rank 5)
					["spellID"] = 19442,	-- Sacrifice (Rank 5)
					["rank"] = 5,
				},
				{
					["itemID"] = 16356,	-- Grimoire of Sacrifice (Rank 6)
					["spellID"] = 19443,	-- Sacrifice (Rank 6)
					["rank"] = 6,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22185,	-- Grimoire of Sacrifice (Rank 7)
					["spellID"] = 27273,	-- Sacrifice (Rank 7)
					["rank"] = 7,
				}),
				{
					["itemID"] = 16379,	-- Grimoire of Seduction
					["spellID"] = 6358,	-- Seduction
				},
				{
					["itemID"] = 16375,	-- Grimoire of Soothing Kiss (Rank 1)
					["spellID"] = 6360,	-- Soothing Kiss (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16376,	-- Grimoire of Soothing Kiss (Rank 2)
					["spellID"] = 7813,	-- Soothing Kiss (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16377,	-- Grimoire of Soothing Kiss (Rank 3)
					["spellID"] = 11784,	-- Soothing Kiss (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16378,	-- Grimoire of Soothing Kiss (Rank 4)
					["spellID"] = 11785,	-- Soothing Kiss (Rank 4)
					["rank"] = 4,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22187,	-- Grimoire of Soothing Kiss (Rank 5)
					["spellID"] = 27275,	-- Soothing Kiss (Rank 5)
					["rank"] = 5,
				}),
				{
					["itemID"] = 16388,	-- Grimoire of Spell Lock (Rank 1)
					["spellID"] = 19244,	-- Spell Lock (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16389,	-- Grimoire of Spell Lock (Rank 2)
					["spellID"] = 19647,	-- Spell Lock (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16363,	-- Grimoire of Suffering (Rank 1)
					["spellID"] = 17735,	-- Suffering (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16364,	-- Grimoire of Suffering (Rank 2)
					["spellID"] = 17750,	-- Suffering (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16365,	-- Grimoire of Suffering (Rank 3)
					["spellID"] = 17751,	-- Suffering (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16366,	-- Grimoire of Suffering (Rank 4)
					["spellID"] = 17752,	-- Suffering (Rank 4)
					["rank"] = 4,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22183,	-- Grimoire of Suffering (Rank 5)
					["spellID"] = 27271,	-- Suffering (Rank 5)
					["rank"] = 5,
				}),
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 28068,	-- Grimoire of Suffering (Rank 6)
					["spellID"] = 33701,	-- Suffering (Rank 6)
					["rank"] = 6,
				}),
				{
					["itemID"] = 16384,	-- Grimoire of Tainted Blood (Rank 1)
					["spellID"] = 19478,	-- Tainted Blood (Rank 1)
					["rank"] = 1,
				},
				{
					["itemID"] = 16385,	-- Grimoire of Tainted Blood (Rank 2)
					["spellID"] = 19655,	-- Tainted Blood (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16386,	-- Grimoire of Tainted Blood (Rank 3)
					["spellID"] = 19656,	-- Tainted Blood (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16387,	-- Grimoire of Tainted Blood (Rank 4)
					["spellID"] = 19660,	-- Tainted Blood (Rank 4)
					["rank"] = 4,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22190,	-- Grimoire of Tainted Blood (Rank 5)
					["spellID"] = 27280,	-- Tainted Blood (Rank 5)
					["rank"] = 5,
				}),
				{
					["itemID"] = 16346,	-- Grimoire of Torment (Rank 2)
					["spellID"] = 7809,	-- Torment (Rank 2)
					["rank"] = 2,
				},
				{
					["itemID"] = 16347,	-- Grimoire of Torment (Rank 3)
					["spellID"] = 7810,	-- Torment (Rank 3)
					["rank"] = 3,
				},
				{
					["itemID"] = 16348,	-- Grimoire of Torment (Rank 4)
					["spellID"] = 7811,	-- Torment (Rank 4)
					["rank"] = 4,
				},
				{
					["itemID"] = 16349,	-- Grimoire of Torment (Rank 5)
					["spellID"] = 11774,	-- Torment (Rank 5)
					["rank"] = 5,
				},
				{
					["itemID"] = 16350,	-- Grimoire of Torment (Rank 6)
					["spellID"] = 11775,	-- Torment (Rank 6)
					["rank"] = 6,
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["itemID"] = 22182,	-- Grimoire of Torment (Rank 7)
					["spellID"] = 27270,	-- Torment (Rank 7)
					["rank"] = 7,
				}),
			},
		})),
	}),
});
-- #endif
