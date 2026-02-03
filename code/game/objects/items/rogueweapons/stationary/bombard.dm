/*
Oooooh boy. This is an odd introduction, and an even worse file path. But hear me out.
These are ported from a port I did of Escalation(?), on F13, elsewhere, which was picked up and brought elsewhere.
It was a huge mess. Cleaned up, now. Mostly. Redone for our use. Just know that this is cool. And it kicks ass. - Carl

Design:
 * Deploy bombard.
 * Gather coords, known as 'leyline intersection points'(LIP), for the purpose of IC screwery, with your palantir.
 * Interact with the bombard and put target X-LIP/Y-LIP into it.
 * Fill it with powder. Ram the powder. Both of these actions take time.
 * Load, after which it automatically fires.
 * Dial adjustments as required, if the first shot misses, or you're trying to pre-adjust.
 * Repeat the above, from interaction point onwards. Coords can be reused, but it's expensive to spam this.
 * The only interactions above applicable to a non-Fusilier are filling, ramming and packing/unpacking. Everything else is barred.

Balance:
This is, as of the moment, intended to be limited to Pioneer. To even the playing field for brigands.
Playing field? Eight MAAs, two knights, one KC, eight mercs, etc.
Lets have the funny guys have to come to the bandits, rather than the other way around.
This is incredibly expensive to run. Old Dragonscale levels of expensive.
It's also VERY loud, as in most of the map is going to hear it firing if in range.
This will also KILL people. At least, some of the projectiles.
Requirement of the fusilier trait for aiming and gathering coordinates should limit the intensity, combined with absurd costs.
*/
/obj/structure/bombard
	name = "portable bombard"
	desc = "A light, portable bombard. Looks as if only a trained hand can aim it..."
	icon = 'icons/roguetown/weapons/stationary/bombard.dmi'
	icon_state = "temp_bombard"
	anchored = 1
	density = 1
	var/xinput
	var/yinput
	var/xdial
	var/ydial
	var/xoffset = 0
	var/yoffset = 0
	var/offset_per_turfs = 20 //Number of turfs to offset from target by 1
	var/firing = 0
	var/busy = 0
	var/fixed = 0//If 1, bombard cannot be unarchored and moved. Used by the heavy bombard, to prevent repositioning.
	var/travel_time = 45
	var/powder = FALSE
	var/rammed = FALSE
	var/heavy = FALSE//Does this use heavier cannonballs, rather than smokepowder charges? By default, we use smokepowder.

/obj/structure/bombard/examine(mob/user)
	. = ..()//Below displays deobfuscated coords. Is that a good idea? No. But it works. Also lets you math things out easier I guess.
	if(HAS_TRAIT(user, TRAIT_FUSILIER))
		. += "...<br>\
			<small>'X-LIP' Dial: <span class='warning'>[xinput]</span> <br>\
			'Y-LIP' Dial: <span class='warning'>[yinput]</span> <br>\
			'X-LIP' Adjustment: <span class='warning'>[xdial]</span> <br>\
			'Y-LIP' Adjustment: <span class='warning'>[ydial]</span> <br>\
			Expected Deviancy: <span class='danger'>[offset_per_turfs]%</span></small>"//Just for fluff.
	else
		. += "...<br>\
		<small>As expected, you've no understanding of the smaller details. Someone trained with smokepowder might know...</small>"
	if(!heavy)
		. += "...<br>\
		<small>This bombard is capable of being packed up, with MMB.</small>"
	else
		. += "...<br>\
		<small>This bombard is fixed in place. Far too heavy to move!</small>"

/obj/structure/bombard/attack_hand(mob/user as mob)
	if(busy)
		to_chat(user, "<span class='warning'>Someone else is currently using [src].</span>")
		return
	if(firing)
		to_chat(user, "<span class='warning'>[src]'s barrel is still steaming hot. Wait a few seconds and stop firing it.</span>")
		return
	add_fingerprint(user)

	if(!HAS_TRAIT(user, TRAIT_FUSILIER))
		to_chat(user, "<span class='warning'>You've no idea how to operate this thing!</span>")
		return

	var/area/A = get_area(src)
	if(!A.outdoors)
		to_chat(user, "<span class='warning'>You refrain from firing the [src] while indoors.</span>")
		return

	var/choice = alert(user, "Would you like to set the bombard's target?","Bombard Dialing", "Target","Dial","Cancel")
	if (choice == "Cancel")
		return
	if (choice == "Target")
		var/temp_targ_x = input("Set X-LIP of strike.") as num
		if(xdial + deobfuscate_x(temp_targ_x) > world.maxx || xdial + deobfuscate_x(temp_targ_x) < 0)
			to_chat(user, "<span class='warning'>You cannot aim at this target, it is outside of your reach.</span>")
			return
		var/temp_targ_y = input("Set Y-LIP of strike.") as num
		if(ydial + deobfuscate_y(temp_targ_y) > world.maxy || ydial + deobfuscate_y(temp_targ_y) < 0)
			to_chat(user, "<span class='warning'>You cannot aim at this target, it is outside of your reach.</span>")
			return
		var/turf/T = locate(deobfuscate_x(temp_targ_x) + xdial, deobfuscate_y(temp_targ_y) + ydial, z)
		if(get_dist(loc, T) < 10)
			to_chat(user, "<span class='warning'>You cannot aim at this target, it is too close to your bombard.</span>")
			return
		if(busy)
			to_chat(user, "<span class='warning'>Someone else is currently using this bombard.</span>")
			return
		user.visible_message("<span class='notice'>([user] starts adjusting [src]'s firing angle and distance.</span>",
		"<span class='notice'>You start adjusting [src]'s firing angle and distance to match the new target's location.</span>")
		busy = 1
		if(do_after(user, 30, src))
			user.visible_message("<span class='notice'>([user] finishes adjusting [src]'s firing angle and distance.</span>",
			"<span class='notice'>You finish adjusting [src]'s firing angle and distance to match the new target's location.</span>")
			busy = 0
			xinput = deobfuscate_x(temp_targ_x)
			yinput = deobfuscate_y(temp_targ_y)
			var/offset_x_max = round(abs((xinput + xdial) - x)/offset_per_turfs) //Offset of bombard shot, grows by 1 every 20 tiles travelled
			var/offset_y_max = round(abs((yinput + ydial) - y)/offset_per_turfs)
			xoffset = rand(-offset_x_max, offset_x_max)
			yoffset = rand(-offset_y_max, offset_y_max)
		else
			busy = 0
	if (choice == "Dial")
		var/temp_dial_x = input("Set X-LIP adjustement from -10 to 10.") as num
		if(temp_dial_x + xinput > world.maxx || temp_dial_x + xinput < 0)
			to_chat(user, "<span class='warning'>You cannot dial to this X-LIP, it is outside of the bombard's reach.</span>")
			return
		if(temp_dial_x < -10 || temp_dial_x > 10)
			to_chat(user, "<span class='warning'>You cannot dial to this target, it is too far away. You need to set [src] up instead.</span>")
			return
		var/temp_dial_y = input("Set Y-LIP adjustement from -10 to 10.") as num
		if(temp_dial_y + yinput > world.maxy || temp_dial_y + yinput < 0)
			to_chat(user, "<span class='warning'>You cannot dial to this Y-LIP, it is outside of the bombard's reach.</span>")
			return
		var/turf/T = locate(xinput + temp_dial_x, yinput + temp_dial_y, z)
		if(get_dist(loc, T) < 10)
			to_chat(user, "<span class='warning'>You cannot dial to this LIP, it is too close to your bombard.</span>")
			return
		if(temp_dial_y < -10 || temp_dial_y > 10)
			to_chat(user, "<span class='warning'>You cannot dial to this target, it is too far away. You need to set [src] up instead.</span>")
			return
		if(busy)
			to_chat(user, "<span class='warning'>Someone else is currently using this bombard.</span>")
			return
		user.visible_message("<span class='notice'>[user] starts dialing [src]'s firing angle and distance.</span>",
		"<span class='notice'>You start dialing [src]'s firing angle and distance to match the new target's location.</span>")
		busy = 1
		if(do_after(user, 15, src))
			user.visible_message("<span class='notice'>[user] finishes dialing [src]'s firing angle and distance.</span>",
			"<span class='notice'>You finish dialing [src]'s firing angle and distance to match the new target's location.</span>")
			busy = 0
			xdial = temp_dial_x
			ydial = temp_dial_y
		else
			busy = 0

/obj/structure/bombard/attackby(obj/item/O as obj, mob/user as mob)
	var/area/A = get_area(src)
	if(!A.outdoors)
		to_chat(user, "<span class='warning'>You refrain from preparing the [src] while indoors.</span>")
		return

	if(istype(O, /obj/item/powderflask))
		if(powder)
			user.visible_message("<span class='notice'>The [src] is already filled with smokepowder!</span>")
			return
		else
			user.visible_message("<span class='notice'>[user] begins filling the [src] with smokepowder.</span>")
			playsound(src, "modular_helmsguard/sound/arquebus/pour_powder.ogg",  100)
			if(do_after(user, 4 SECONDS, src))
				user.visible_message("<span class='notice'>[user] fills the [src] with smokepowder.</span>")
				powder = TRUE
			return

	if(!powder)
		to_chat(user, "<span class='danger'>[src] is not filled with smokepowder!</span>")
		return

	if(istype(O, /obj/item/bombard_sponge))
		if(rammed)
			user.visible_message("<span class='notice'>The [src] is already packed properly with smokepowder!</span>")
			return
		else
			user.visible_message("<span class='notice'>[user] begins packing the [src] with smokepowder.</span>")
			playsound(src, "modular_azurepeak/sound/spellbooks/bladescrape.ogg",  100)
			if(do_after(user, 8 SECONDS, src))
				user.visible_message("<span class='notice'>[user] has finished packing the [src] with smokepowder.</span>")
				rammed = TRUE
			return

	if(!rammed)
		to_chat(user, "<span class='danger'>[src] has not yet been packed properly with a rod!</span>")
		return

	if(istype(O, /obj/item/cannonball))
		var/obj/item/cannonball/cannonball = O

		if(busy)
			to_chat(user, "<span class='warning'>Someone else is currently using [src].</span>")
			return
/*
		if(z != 1)
			to_chat(user, "<span class='warning'>You cannot fire [src] here.</span>")
			return
*/
		if(xinput == 0 && yinput == 0) //Bombard wasn't set
			to_chat(user, "<span class='warning'>[src] needs to be aimed first.</span>")
			return

		var/turf/T = locate(xinput + xdial + xoffset, yinput + ydial + yoffset, z)
		if(!isturf(T))
			to_chat(user, "<span class='warning'>You cannot fire [src] at this location.</span>")
			return

		user.visible_message("<span class='notice'>[user] starts loading \a [cannonball.name] into [src].</span>",
		"<span class='notice'>You start loading \a [cannonball.name] into [src].</span>")
		playsound(loc, 'sound/combat/bombard/mortar_reload.ogg', 50, 1)
		busy = 1

		if(do_after(user, 3 SECONDS, src))
			user.visible_message("<span class='notice'>[user] loads \a [cannonball.name] into [src].</span>",
			"<span class='notice'>You load \a [cannonball.name] into [src].</span>")
			visible_message("\icon[src] <span class='danger'>The [name] fires!</span>")
			user.dropItemToGround(cannonball, src)
			playsound(loc, 'sound/combat/bombard/mortar_fire.ogg', 50, 1)
			loud_message("The sound of a cannon firing can be heard", hearing_distance = 82)
			busy = 0
			firing = 1
			flick(icon_state + "_fire", src)
			cannonball.forceMove(src)

			for(var/mob/M in range(7))
				shake_camera(M, 3, 1)
			spawn(travel_time) //What goes up
				playsound(T, 'sound/combat/bombard/mortar_long_whistle.ogg', 50, 1)
				spawn(45) //Must go down
					cannonball.detonate(T)

					qdel(cannonball)
					xdial = 0//Reset after each shot.
					ydial = 0
					xinput = 0
					yinput = 0
					powder = FALSE
					rammed = FALSE

					firing = 0

		else
			busy = 0

/obj/structure/bombard/MiddleClick(mob/user)
	if(busy)
		to_chat(user, "<span class='warning'>Someone else is currently using [src].</span>")
		return
	if(firing)
		to_chat(user, "<span class='warning'>The bombard is currently firing, Wait a few seconds for the barrel to cool.</span>")
		return
	if(fixed)
		to_chat(user, "<span class='warning'>The bombard is fixed in place. You're not able to move it.</span>")
		return

	xdial = 0//Reset after attempted deconstruction.
	ydial = 0
	xinput = 0
	yinput = 0
	powder = FALSE//We dump the powder and ram state, in case you're some matter of freak trying to quick position.
	rammed = FALSE

	playsound(loc, 'sound/combat/shieldraise.ogg', 25, 1)
	user.visible_message("<span class='notice'>[user] starts to tear down [src].",
	"<span class='notice'>You start tearing down [src].")
	if(do_after(user, 40, src))
		user.visible_message("<span class='notice'>[user] tears down [src].",
		"<span class='notice'>You tear down [src].")
		playsound(loc, 'sound/combat/shieldraise.ogg', 25, 1)
		new /obj/item/bombard_kit(loc)
		qdel(src)

/obj/structure/bombard/ex_act(severity)
	return

//TODO change bombard fluff and desc - I never did this. Whoops!!! - Carl
/obj/structure/bombard/fixed
	name = "heavy bombard"
	desc = "A massive, stationary bombard. Packing this up is no longer possible, so one must hope that you've put it in a place most appropriate."
	fixed = 1
	heavy = TRUE

//The portable bombard
/obj/item/bombard_kit
	name = "\improper packed up bombard"
	desc = "A packed up bombard. You should probably unpack this, as it's useless in this state."
	icon = 'icons/roguetown/weapons/stationary/bombard.dmi'
	icon_state = "temp_bombard_primary"
	w_class = WEIGHT_CLASS_BULKY
	force = 5
	possible_item_intents = list(INTENT_GENERIC)

/obj/item/bombard_kit/attack_self(mob/user)
	user.visible_message("<span class='notice'>[user] starts deploying [src].",
	"<span class='notice'>You start deploying [src].")
	playsound(loc, 'sound/combat/shieldraise.ogg', 25, 1)
	if(do_after(user, 4 SECONDS, src))
		user.visible_message("<span class='notice'>[user] deploys [src].",
		"<span class='notice'>You deploy [src].")
		playsound(loc, 'sound/combat/shieldraise.ogg', 25, 1)
		var/obj/structure/bombard/M = new /obj/structure/bombard(get_turf(user))
		M.dir = user.dir
		qdel(src)
