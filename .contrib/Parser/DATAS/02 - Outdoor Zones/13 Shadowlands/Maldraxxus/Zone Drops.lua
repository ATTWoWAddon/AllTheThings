---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(MALDRAXXUS, {
		n(ZONE_DROPS, {
			filter(REAGENTS, {
				i(180594),	-- Calloused Bone
			}),
			filter(RECIPES, {
				i(180781),	-- Pattern: Pink Party Hat (RECIPE!)
			}),
			filter(CLOTH, {
				i(176986),	-- Bloodskin Cord
				i(176972),	-- Bloodskin Gloves
				i(176974),	-- Bloodskin Hood
				i(176978),	-- Bloodskin Leggings
				i(176983),	-- Bloodskin Mantle
				i(176962),	-- Bloodskin Robe
				i(176967),	-- Bloodskin Shoes
				i(176989),	-- Bloodskin Wristwraps
			}),
			filter(FINGER_F, {
				i(181626),	-- Gorewrought Loop
			}),
			filter(LEATHER, {
				i(176988),	-- Warflesh Belt
				i(176969),	-- Warflesh Boots
				i(176992),	-- Warflesh Bracers
				i(176980),	-- Warflesh Breeches
				i(176970),	-- Warflesh Grips
				i(176981),	-- Warflesh Spaulders
				i(176976),	-- Warflesh Stand
				i(176965),	-- Warflesh Vest
			}),
			filter(MAIL, {
				i(176987),	-- Ossein Scale Belt
				i(176991),	-- Ossein Scale Cuffs
				i(176973),	-- Ossein Scale Gauntlets
				i(176964),	-- Ossein Scale Hauberk
				i(176975),	-- Ossein Scale Headguard
				i(176979),	-- Ossein Scale Leggings
				i(176968),	-- Ossein Scale Sabatons
				i(176984),	-- Ossein Scale Spaulders
			}),
			filter(NECK_F, {
				i(181625),	-- Gorewrought Medallion
			}),
			filter(PLATE, {
				i(176990),	-- Blackhound Armplates
				i(176963),	-- Blackhound Chestguard
				i(176971),	-- Blackhound Gauntlets
				i(176985),	-- Blackhound Girdle
				i(176961),	-- Blackhound Headguard
				i(176977),	-- Blackhound Legguards
				i(176982),	-- Blackhound Pauldrons
				i(176966),	-- Blackhound Warboots
			}),
			filter(TRINKET_F, {
				i(181507),	-- Beating Abomination Core
				i(181501),	-- Flame of Battle
				i(181502),	-- Rejuvenating Serum
				i(181503),	-- Vial of Caustic Liquid
			}),
			n(WEAPONS, {
				i(178950),	-- Blackhound Bulwark
				i(178949),	-- Blackhound Claymore
				i(178953),	-- Blackhound Sword
				i(178945),	-- Boneclutched Greatstaff
				i(180793),	-- Boneclutched Stave
				i(178948),	-- Boneclutched Wand
				i(180795),	-- Gore-Smudged Bonesaw
				i(178943),	-- Gore-Smudged Dagger
				i(178944),	-- Gore-Smudged Gavel
				i(180794),	-- Gore-Smudged Shortsword
				i(178946),	-- Gore-Smudged Sword
				i(178952),	-- Gore-Smudged Warglaive
				i(178947),	-- Steeljaw Crossbow
				i(178951),	-- Vellum-Bound Tome
			}),
			i(187425),	-- Ancient Maldraxxi Armament
			i(184104, {	-- Blight-Touched Egg
				["crs"] = {
					170456,	-- Diseased Galescreamer
					162259,	-- Galescreamer Pup
					162588,	-- Gristlebeak
					162589,	-- Neonate Boontooth
					162258,	-- Ravenous Galescreamer
					164587,	-- Satiated Sawtooth
				},
				["g"] = {
					i(184103, {	-- Cracked Blight-Touched Egg
						i(181818),	-- Callow Flayedwing (MOUNT!)
					}),
				},
			}),
			i(177236, {	-- Dog Bone's Bone (EC!)
				["customCollect"] = "SL_COV_VEN",
				["crs"] = {
					173509,	-- Animated Marrowhound
					168453,	-- Animated Pointer
					165960,	-- Blazing Forgehound
					161390,	-- Darkhound Hunter
				},
			}),
			i(180532),	-- Oxxein Lockbox
			i(181777, {	-- Phaeton's Key
				["crs"] = { 170563 },	-- Runespeaker Phaeton
				["coord"] = { 38.0, 70.6, MALDRAXXUS },
			}),
			i(183691, {	-- Mucosal Pigment
				["description"] = "This may drop for any character on your account once the toy 'Acolyte's Guise' has been learned by a Necrolord character.",
				["crs"] = {
					165014,	-- Animated Plague
					161599,	-- Bubbling Sclerosis
					165027,	-- Burning Extract
					162732,	-- Clotting Mass
					157509,	-- Compressed Plague
					171745,	-- Congealed Plague
					167935,	-- Contagious Droplet
					166358,	-- Green Slime
					160048,	-- Plaguedoused Remnant
					166335,	-- Slime Giant
				},
			}),
			i(183124),	-- Simple Tome of Bone-Binding (CI!)
			i(186727, {	-- Seal Breaker Key
				["timeline"] = { ADDED_9_1_0 },
			}),
		}),
	}),
})));