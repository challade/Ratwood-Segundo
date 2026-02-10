
/datum/supply_pack/rogue/Things
	group = "Things"
	crate_name = "Gifts of Things"
	crate_type = /obj/structure/closet/crate/chest/merchant

//////////////
// SUPPLIES //
//////////////

/datum/supply_pack/rogue/Things/cloth
	name = "Cloth"
	cost = 2
	contains = list(/obj/item/natural/cloth)

/datum/supply_pack/rogue/Things/chain
	name = "Chain"
	cost = 5
	contains = list(/obj/item/rope/chain)

/datum/supply_pack/rogue/Things/Satchel
	name = "Satchel"
	cost = 10
	contains = list(/obj/item/storage/backpack/rogue/satchel)

/datum/supply_pack/rogue/Things/backpack
	name = "Backpack"
	cost = 15
	contains = list(/obj/item/storage/backpack/rogue/backpack)

/datum/supply_pack/rogue/Things/belt
	name = "Leather Belt"
	cost = 5
	contains = list(/obj/item/storage/belt/rogue/leather)

/datum/supply_pack/rogue/Things/sack
	name = "Sack"
	cost = 5
	contains = list(/obj/item/storage/roguebag)

/datum/supply_pack/rogue/Things/scroll
	name = "Scroll"
	cost = 5
	contains = list(/obj/item/paper/scroll)

/datum/supply_pack/rogue/Things/hardtack
	name = "Hardtack"
	cost = 10
	contains = list(/obj/item/reagent_containers/food/snacks/rogue/crackerscooked)

/datum/supply_pack/rogue/Things/needle
	name = "Needle"
	cost = 5
	contains = list(/obj/item/needle)

/datum/supply_pack/rogue/Things/Lamp
	name = "Lamptern"
	cost = 5
	contains = list(/obj/item/flashlight/flare/torch/lantern)

/datum/supply_pack/rogue/Things/hknife
	name = "Hunting Knife"
	cost = 5
	contains = list(/obj/item/rogueweapon/huntingknife)

/datum/supply_pack/rogue/Things/Waterskin
	name = "Waterskin"
	cost = 10
	contains = list(/obj/item/reagent_containers/glass/bottle/waterskin)

/datum/supply_pack/rogue/Things/gwstrap
	name = "Greatweapon Strap"
	cost = 15
	contains = list(/obj/item/rogueweapon/scabbard/gwstrap)

/datum/supply_pack/rogue/Things/scabbard
	name = "Sword Scabbard"
	cost = 10
	contains = list(/obj/item/rogueweapon/scabbard/sword)

/datum/supply_pack/rogue/Things/sheath
	name = "Dagger Sheath"
	cost = 5
	contains = list(/obj/item/rogueweapon/scabbard/sheath)

/datum/supply_pack/rogue/Things/soap
	name = "Bar of Soap"
	cost = 10	// Hahaha why not
	contains = list(/obj/item/soap)

/////////////
// POTIONS //
/////////////

/datum/supply_pack/rogue/Things/healthpotnew
	name = "Health Potion"
	cost = 10
	contains = list(/obj/item/reagent_containers/glass/bottle/rogue/healthpotnew)

/datum/supply_pack/rogue/Things/manapot
	name = "Mana Potion"
	cost = 10
	contains = list(/obj/item/reagent_containers/glass/bottle/rogue/strongmanapot)

/datum/supply_pack/rogue/Things/stampot
	name = "Stamina Potion"
	cost = 10
	contains = list(/obj/item/reagent_containers/glass/bottle/rogue/strongstampot)

/datum/supply_pack/rogue/Things/rotcure
	name = "Rot Cure Potion"
	cost = 200
	contains = list(/obj/item/reagent_containers/glass/bottle/alchemical/rogue/rotcure)

/datum/supply_pack/rogue/Things/emberwine
	name = "Emberwine"
	cost =	150	// It makes a good poison but its moreso to goon with. 
	contains = list(/obj/item/reagent_containers/glass/bottle/rogue/emberwine)

///////////
// DRUGS //
///////////

/datum/supply_pack/rogue/Things/westleach
	name = "Westleach Zig"
	cost = 2
	contains = list(/obj/item/clothing/mask/cigarette/rollie/nicotine)

/datum/supply_pack/rogue/Things/swampweed
	name = "Swampweed Zig"
	cost = 5
	contains = list(/obj/item/clothing/mask/cigarette/rollie/cannabis)

/datum/supply_pack/rogue/Things/ozium
	name = "Ozium"
	cost = 15
	contains = list(/obj/item/reagent_containers/powder/ozium)

/datum/supply_pack/rogue/Things/moondust
	name = "Moon Dust"
	cost = 15
	contains = list(/obj/item/reagent_containers/powder/moondust)

/datum/supply_pack/rogue/Things/spice
	name = "Spice"
	cost = 15
	contains = list(/obj/item/reagent_containers/powder/spice)

//////////////
// UTILITY //
//////////////

/datum/supply_pack/rogue/Things/rubyband
	name = "Matthian SCOMSTONE"
	cost = 20
	contains = list(/obj/item/mattcoin)

/datum/supply_pack/rogue/Things/Dragonscale
	name = "Dragonscale Necklace"
	cost = 1200
	contains = list(/obj/item/clothing/neck/roguetown/dragon_scale)

/datum/supply_pack/rogue/Things/smokebomb
	name = "Smoke Bomb"
	cost = 30
	contains = list(/obj/item/bomb/smoke)

/datum/supply_pack/rogue/Things/bomb
	name = "Fire Bomb"
	cost =	60
	contains = list(/obj/item/bomb)

/datum/supply_pack/rogue/Things/leathercollar
	name = "Leather Collar"
	cost =	20
	contains = list(/obj/item/clothing/neck/roguetown/collar/leather)

/datum/supply_pack/rogue/Things/chainleash
	name = "Chain Leash"
	cost =	20
	contains = list(/obj/item/leash/chain)

/datum/supply_pack/rogue/Things/lockpicks
	name = "Lockpicks"
	cost = 25	// More expensive if your class doesn't have them.
	contains = list(/obj/item/lockpickring/mundane)

/datum/supply_pack/rogue/Things/prarml
	name = "Prosthetic Wood Arm (L)"
	cost = 40
	contains = list(/obj/item/bodypart/l_arm/prosthetic/woodleft)

/datum/supply_pack/rogue/Things/prarmr
	name = "Prosthetic Wood Arm (R)"
	cost = 40
	contains = list(/obj/item/bodypart/r_arm/prosthetic/woodright)

/datum/supply_pack/rogue/Things/prlegl
	name = "Prosthetic Wood Leg (L)"
	cost = 20
	contains = list(/obj/item/bodypart/l_leg/prosthetic)

/datum/supply_pack/rogue/Things/prlegr
	name = "Prosthetic Wood Leg (R)"
	cost = 20
	contains = list(/obj/item/bodypart/r_leg/prosthetic)

/datum/supply_pack/rogue/Things/prarmlbrz
	name = "Prostethic Bronze Arm (L)"
	cost = 200
	contains = list(/obj/item/bodypart/l_arm/prosthetic/bronzeleft)

/datum/supply_pack/rogue/Things/prarmrbrz
	name = "Prostethic Bronze Arm (R)"
	cost = 200
	contains = list(/obj/item/bodypart/r_arm/prosthetic/bronzeright)

/datum/supply_pack/rogue/Things/prleglbrz
	name = "Prostethic Bronze Leg (L)"
	cost = 100
	contains = list(/obj/item/bodypart/l_leg/prosthetic/bronzeleft)

/datum/supply_pack/rogue/Things/prlegrbrz
	name = "Prostethic Bronze Leg (R)"
	cost = 100
	contains = list(/obj/item/bodypart/r_leg/prosthetic/bronzeright)

/datum/supply_pack/rogue/Things/grapplinghook
	name =	"Grappling Hook"
	cost =	1000	// You're better off stealing this.
	contains = list(/obj/item/grapplinghook)

/datum/supply_pack/rogue/Things/climbing_gear
	name = "Climbing Gear"
	cost = 800		// Really fucking good, you can drop down z-levels and hang there. 
	contains = list(/obj/item/clothing/climbing_gear)

/datum/supply_pack/rogue/Things/pick
	name = "Iron Pick"
	cost = 12		// Also a thing you can just kinda find, though moderately useful.
	contains = list(/obj/item/rogueweapon/pick)

/datum/supply_pack/rogue/Things/pick/steel
	name = "Steel Pick"
	cost = 35
	contains = list(/obj/item/rogueweapon/pick/steel)

//////////////
// COOKING  //		//Very basic ingredients. Nothing like meat or fruits, you can go and get those yourself. Buying components for everyone on your own will add up quickly. What are YOU bringing for the Matthios potluck?
//////////////

/datum/supply_pack/rogue/Things/cooking/flour
	name = "Flour"
	cost = 2	//Base component.
	contains = list(/obj/item/reagent_containers/powder/flour)

/datum/supply_pack/rogue/Things/cooking/rice
	name = "Rice Grains"
	cost = 2	//Base component.
	contains = list(/obj/item/reagent_containers/food/snacks/grown/rice)

/datum/supply_pack/rogue/Things/cooking/butter
	name = "Butter"
	cost = 5	//Base component.
	contains = list(/obj/item/reagent_containers/food/snacks/butter)

/datum/supply_pack/rogue/Things/cooking/carrot
	name = "Raw Carrot"
	cost = 2	//Base component.
	contains = list(/obj/item/reagent_containers/food/snacks/grown/carrot)

/datum/supply_pack/rogue/Things/cooking/cackleberry
	name = "One Egg"
	cost = 2	//Base component.
	contains = list(/obj/item/reagent_containers/food/snacks/egg)

/datum/supply_pack/rogue/Things/cooking/peppermill
	name = "Pepper Mill"
	cost = 35	//You're basically paying for an OK quantity of easy steak meals.
	contains = list(/obj/item/reagent_containers/peppermill)
