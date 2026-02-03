/*
Firstly, the
*/
/obj/item/rogueweapon/palantir
	name = "Palantir"
	desc = "An arcyne compass, runed and imbued with energy. \
	That is, of course, to say that this is able to detect leyline intersection points. Or LIPs, for short. \
	An incredibly expensive device, likely pried from one of the Queen's own magicians."
	icon = 'icons/roguetown/weapons/stationary/bombard.dmi'
	icon_state = "palantir"
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	force = 5
	possible_item_intents = list(INTENT_GENERIC)
	var/last_x = "UNKNOWN"
	var/last_y = "UNKNOWN"

/obj/item/rogueweapon/palantir/examine(mob/user)
	. = ..()
	. += "<small>Last 'X-LIP' recorded: <span class='warning'>[last_x]</span> <br>\
		Last 'Y-LIP' recorded: <span class='warning'>[last_y]</span></small>"

/obj/item/rogueweapon/palantir/afterattack(atom/A, mob/living/user, adjacent, params) //handles coord obtaining
	if(!HAS_TRAIT(user, TRAIT_FUSILIER))
		to_chat(user, "<span class='warning'>This device is beyond your understanding...</span>")
		return
	to_chat(user, "Calculating leyline intersection point. Stand still.")
	loud_message("A palantir's loud whine can be heard, gathering LIP data", hearing_distance = 24)//"ZEZUZ PYST FROM WHERE?!!"
	if(do_after(user, 12 SECONDS, src))
		A = get_turf(A)
		last_x = obfuscate_x(A.x)
		last_y = obfuscate_y(A.y)
		to_chat(user, "INTERSECTION POINT OF TARGET <br>\
		<small>X-LIP: <span class='warning'>[last_x]</span> <br>\
		Y-LIP: <span class='warning'>[last_y]</span></small>")
	else
		to_chat(user, "<span class='warning'>You must remain still!</span>")

/obj/item/bombard_sponge
	name = "powder ram"
	desc = "A bulky, heavy rod with a sponge at one end."
	icon = 'icons/roguetown/weapons/stationary/bombard.dmi'
	icon_state = "bombard_sponge"
	item_state = "bombard_sponge"
	slot_flags = SLOT_BELT_L | SLOT_BELT_R | ITEM_SLOT_HIP
	w_class = WEIGHT_CLASS_BULKY
	force = 5
	possible_item_intents = list(INTENT_GENERIC)

/*
Cannonballs below.
Take a guess, yeah?
*/
//This is a 'solid shot'. Does nothing, as of now.
/obj/item/cannonball
	name = "\improper cannonball (SOL)"
	desc = "A hefty cannonball. Looks fairly solid."
	icon = 'icons/roguetown/weapons/stationary/bombard.dmi'
	icon_state = "cball"

/obj/item/cannonball/proc/detonate(turf/T)
	loud_message("An explosion echos in the ears of those whom hear it", hearing_distance = 32)
	forceMove(T)

//HE
/obj/item/cannonball/explosive
	name = "\improper cannonball (HE)"
	desc = "A hefty cannonball. It's hot to the touch, as if it'll explode just by dropping it."
	icon_state = "cball"

/obj/item/cannonball/explosive/detonate(turf/T)
	..()
	explosion(T, 2, 4, 6, 8)

//SMOKE
/obj/item/cannonball/smoke
	name = "\improper cannonball (SMK)"
	desc = "A hefty cannonball. This one feels as if it's hollow."
	icon_state = "cball_smk"

/obj/item/cannonball/smoke/detonate(turf/T)
	..()
	var/datum/effect_system/smoke_spread/smoke = new
	smoke.set_up(4, T, 0)
	smoke.start()
	explosion(T, 0, 0, 0, 3)

//CANISTER
/obj/item/cannonball/canister
	name = "\improper cannonball (FLK)"
	desc = "A canister shell, meant to be fired out of a bombard. Nasty thing, outlawed in all reasonable realms of the land..."
	icon_state = "cball_smk"

/obj/item/cannonball/canister/detonate(turf/T)
	..()
	canister_detonate()
	spawn(2 SECONDS)//It detonates ABOVE, or something. I 'unno.
	explosion(T, 0, 0, 1, 4)

/*
The canister effect, when using canister shot or adjacent stuff.
*/
/obj/item/cannonball/proc/canister_detonate(atom/target)
	var/datum/component/shrapnel/canister_shrapnel = new /datum/component/shrapnel()
	target = get_turf(src)
	canister_shrapnel.projectile_type = /obj/projectile/canister_shrap
	canister_shrapnel.radius = 12
	canister_shrapnel.do_shrapnel(src, target)

/obj/projectile/canister_shrap
	name = "\improper canister shrapnel"
	icon_state = "bullet"
	damage = 5//Very many of them, but very low damage and AP.
	range = 12//We want this to go beyond screen, in case of far misses.\improper
	pass_flags = PASSTABLE | PASSGRILLE
	armor_penetration = 20
	damage_type = BRUTE
	woundclass = BCLASS_PICK
	flag = "piercing"
	speed = 2
