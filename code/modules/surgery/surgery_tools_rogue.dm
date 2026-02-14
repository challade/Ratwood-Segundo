/obj/item/rogueweapon/surgery
	name = "surgical tool"
	desc = "Something that will tear your guts apart."
	icon = 'icons/roguetown/items/surgery.dmi'
	item_state = "bone_dagger"
	lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	gripsprite = FALSE
	wlength = WLENGTH_SHORT
	w_class = WEIGHT_CLASS_SMALL
	force = 12
	throwforce = 12
	wdefense = 3
	wbalance = WBALANCE_SWIFT
	max_blade_int = 200
	max_integrity = 175
	thrown_bclass = BCLASS_CUT
	associated_skill = /datum/skill/combat/knives
	anvilrepair = /datum/skill/craft/blacksmithing
	smeltresult = null

	grid_width = 32
	grid_height = 64

/obj/item/rogueweapon/surgery/Initialize()
	. = ..()
	item_flags |= SURGICAL_TOOL //let's not stab patients for fun

/obj/item/rogueweapon/surgery/scalpel
	name = "scalpel"
	desc = "A tool used to carve precisely into the flesh of the sickly."
	icon_state = "scalpel"
	possible_item_intents = list(/datum/intent/dagger/cut, /datum/intent/dagger/thrust)
	slot_flags = ITEM_SLOT_HIP|ITEM_SLOT_MOUTH
	parrysound = list('sound/combat/parry/bladed/bladedsmall (1).ogg','sound/combat/parry/bladed/bladedsmall (2).ogg','sound/combat/parry/bladed/bladedsmall (3).ogg')
	swingsound = list('sound/combat/wooshes/bladed/wooshsmall (1).ogg','sound/combat/wooshes/bladed/wooshsmall (2).ogg','sound/combat/wooshes/bladed/wooshsmall (3).ogg')
	pickup_sound = 'sound/foley/equip/swordsmall2.ogg'
	tool_behaviour = TOOL_SCALPEL
	smeltresult = null

/obj/item/rogueweapon/surgery/saw
	name = "saw"
	desc = "A tool used to carve through bone."
	icon_state = "bonesaw"
	possible_item_intents = list(/datum/intent/dagger/cut, /datum/intent/dagger/chop/cleaver)
	slot_flags = ITEM_SLOT_HIP
	parrysound = list('sound/combat/parry/bladed/bladedmedium (1).ogg','sound/combat/parry/bladed/bladedmedium (2).ogg','sound/combat/parry/bladed/bladedmedium (3).ogg')
	swingsound = list('sound/combat/wooshes/bladed/wooshmed (1).ogg','sound/combat/wooshes/bladed/wooshmed (2).ogg','sound/combat/wooshes/bladed/wooshmed (3).ogg')
	pickup_sound = 'sound/foley/equip/swordsmall2.ogg'
	force = 16
	throwforce = 16
	wdefense = 3
	wbalance = WBALANCE_SWIFT
	w_class = WEIGHT_CLASS_NORMAL
	thrown_bclass = BCLASS_CHOP
	tool_behaviour = TOOL_SAW
	smeltresult = null

/obj/item/rogueweapon/surgery/hemostat
	name = "forceps"
	desc = "A tool used to clamp down on soft tissue."
	icon_state = "forceps"
	possible_item_intents = list(/datum/intent/use)
	slot_flags = ITEM_SLOT_HIP|ITEM_SLOT_MOUTH
	parrysound = list('sound/combat/parry/bladed/bladedsmall (1).ogg','sound/combat/parry/bladed/bladedsmall (2).ogg','sound/combat/parry/bladed/bladedsmall (3).ogg')
	swingsound = list('sound/combat/wooshes/bladed/wooshsmall (1).ogg','sound/combat/wooshes/bladed/wooshsmall (2).ogg','sound/combat/wooshes/bladed/wooshsmall (3).ogg')
	pickup_sound = 'sound/foley/equip/swordsmall2.ogg'
	sharpness = IS_BLUNT
	tool_behaviour = TOOL_HEMOSTAT
	smeltresult = null

/obj/item/rogueweapon/surgery/hemostat/first //Three different types now to allow multiple surgical sites at once.
	name = "\improper Tarsis forceps"

/obj/item/rogueweapon/surgery/hemostat/second
	name = "\improper Sisrat forceps"

/obj/item/rogueweapon/surgery/hemostat/third
	name = "\improper Medella forceps"

/obj/item/rogueweapon/surgery/retractor
	name = "speculum"
	desc = "A tool used to spread tissue open for surgical access."
	icon_state = "speculum"
	possible_item_intents = list(/datum/intent/use)
	slot_flags = ITEM_SLOT_HIP
	parrysound = list('sound/combat/parry/bladed/bladedsmall (1).ogg','sound/combat/parry/bladed/bladedsmall (2).ogg','sound/combat/parry/bladed/bladedsmall (3).ogg')
	swingsound = list('sound/combat/wooshes/bladed/wooshsmall (1).ogg','sound/combat/wooshes/bladed/wooshsmall (2).ogg','sound/combat/wooshes/bladed/wooshsmall (3).ogg')
	pickup_sound = 'sound/foley/equip/swordsmall2.ogg'
	wdefense = 3
	wbalance = WBALANCE_SWIFT
	sharpness = IS_BLUNT
	w_class = WEIGHT_CLASS_NORMAL
	thrown_bclass = BCLASS_BLUNT
	tool_behaviour = TOOL_RETRACTOR
	smeltresult = null

/obj/item/rogueweapon/surgery/bonesetter
	name = "bone forceps"
	desc = "A tool used to clamp down on hard tissue."
	icon_state = "bonesetter"
	possible_item_intents = list(/datum/intent/use)
	slot_flags = ITEM_SLOT_HIP|ITEM_SLOT_MOUTH
	parrysound = list('sound/combat/parry/bladed/bladedsmall (1).ogg','sound/combat/parry/bladed/bladedsmall (2).ogg','sound/combat/parry/bladed/bladedsmall (3).ogg')
	swingsound = list('sound/combat/wooshes/bladed/wooshsmall (1).ogg','sound/combat/wooshes/bladed/wooshsmall (2).ogg','sound/combat/wooshes/bladed/wooshsmall (3).ogg')
	pickup_sound = 'sound/foley/equip/swordsmall2.ogg'
	sharpness = IS_BLUNT
	tool_behaviour = TOOL_BONESETTER
	smeltresult = null

/obj/item/rogueweapon/surgery/cautery
	name = "cautery iron"
	desc = "A tool used to cauterize wounds. Heat it up before use."
	icon_state = "cauteryiron"
	possible_item_intents = list(/datum/intent/mace/strike, /datum/intent/mace/smash, /datum/intent/use)
	slot_flags = ITEM_SLOT_HIP
	parrysound = list('sound/combat/parry/parrygen.ogg')
	swingsound = BLUNTWOOSH_MED
	force = 18
	throwforce = 18
	wdefense = 3
	wbalance = WBALANCE_HEAVY	//huh?
	associated_skill = /datum/skill/combat/maces
	sharpness = IS_BLUNT
	w_class = WEIGHT_CLASS_NORMAL
	thrown_bclass = BCLASS_BLUNT
	/// Timer to cool down
	var/cool_timer
	/// Whether or not we are heated up
	var/heated = FALSE
	smeltresult = null

/obj/item/rogueweapon/surgery/cautery/examine(mob/user)
	. = ..()
	if(heated)
		. += span_warning("The tip is hot to the touch.")

/obj/item/rogueweapon/surgery/cautery/update_icon_state()
	. = ..()
	icon_state = initial(icon_state)
	if(heated)
		icon_state = "[initial(icon_state)]_hot"

/obj/item/rogueweapon/surgery/cautery/pre_attack(atom/A, mob/living/user, params)
	if(!istype(user.a_intent, /datum/intent/use))
		return ..()
	var/heating = 0
	if(istype(A, /obj/machinery/light/rogue))
		var/obj/machinery/light/rogue/forge = A
		if(forge.on)
			heating = 20
	if(heating)
		user.visible_message(span_info("[user] heats [src]."))
		fire_act(heating)
		return TRUE
	return ..()

/obj/item/rogueweapon/surgery/cautery/fire_act(added, maxstacks)
	. = ..()
	if(!heated)
		playsound(src, 'sound/items/firelight.ogg', 100, vary = TRUE)
	update_heated(TRUE)
	if(cool_timer)
		deltimer(cool_timer)
	cool_timer = addtimer(CALLBACK(src, PROC_REF(update_heated), FALSE), added SECONDS, TIMER_STOPPABLE)

/obj/item/rogueweapon/surgery/cautery/get_temperature()
	if(heated)
		return FIRE_MINIMUM_TEMPERATURE_TO_SPREAD
	return ..()

/obj/item/rogueweapon/surgery/cautery/proc/update_heated(new_heated)
	heated = new_heated
	if(heated)
		damtype = BURN
		tool_behaviour = TOOL_CAUTERY
	else
		damtype = BRUTE
		tool_behaviour = null
	update_icon()

/obj/item/rogueweapon/surgery/cautery/branding
	name = "branding iron"
	desc = "A iron that is well-writ upon flesh. Heat it up before use."
	icon_state = "brandingiron"
	possible_item_intents = list(/datum/intent/use)
	var/setbranding = null

/obj/item/rogueweapon/surgery/cautery/branding/examine(mob/user)
	. = ..()
	if(setbranding)
		. += span_warning("It will imprint a branding mark of \"[setbranding]\".")
	else
		. += span_warning("There is no branding symbol set yet.")

/obj/item/rogueweapon/surgery/cautery/branding/attack_self(mob/living/user)
	. = ..()
	if(!istype(user))
		return
	if(!user.cmode)
		if(!user.is_literate())
			to_chat(user, span_warning("I do not know how to write."))
			return
		if(heated)
			to_chat(user, span_warning("It is too hot to change the symbols!"))
			return
		var/inputty = stripped_input(user, "What would you like to set the brand?", "", null, 32)
		if(inputty)
			setbranding = inputty
			to_chat(user, span_warning("I swap out the lettering to brand the marking \"[setbranding]\"."))
		else
			setbranding = null
	..()

/obj/item/rogueweapon/surgery/cautery/branding/pre_attack(atom/A, mob/living/user, params)
	if(!istype(user.a_intent, /datum/intent/use))
		return ..()
	if(!heated)
		return ..()
	if(!setbranding)
		to_chat(user, span_warning("There is nothing to brand, add some symbols before using again."))
		return TRUE
	if(!A || !ishuman(A))
		to_chat(user, span_warning("I cannot brand \the [A]."))
		return TRUE
	var/mob/living/carbon/target = A
	if(!istype(target))
		to_chat(user, span_warning("I cannot brand \the [A]."))
		return TRUE
	if(user != target)
		user.visible_message(span_warning("[user] slowly wields \the [src] towards [A]."))
		to_chat(target, span_userdanger("[user] is trying to brand me with \the [src]!"))
	else
		user.visible_message(span_warning("[user] slowly wields \the [src] onto themselves."))

	log_combat(user, target, "Branding attempt: \"[setbranding]\"")
	var/branding_delay = HAS_TRAIT(user, TRAIT_DUNGEONMASTER) ? 5 SECONDS : (HAS_TRAIT(user, TRAIT_KNOWNCRIMINAL) ? 7 SECONDS : 12 SECONDS) // criminals/dungeoneer burn faster, while non-criminals and towners take the longest time
	if(!do_after(user, branding_delay, target = A))
		log_combat(user, target, "Branding aborted: \"[setbranding]\"")
		return TRUE
	if(!user.Adjacent(target))
		return TRUE
	if(!get_location_accessible(target, user.zone_selected))
		to_chat(user, span_warning("There is clothes obsecuring the [lowertext(parse_zone(user.zone_selected))]."))
		return TRUE
	var/obj/item/bodypart/branding_part = target.get_bodypart(check_zone(user.zone_selected))
	if(!branding_part) //missing limb
		to_chat(user, span_warning("Unfortunately, there's nothing there."))
		return TRUE

	if(user.zone_selected == BODY_ZONE_PRECISE_GROIN) // if targeting the groin, handle marking buttocks and genitals instead of a single chest zone
		if(alert("Brand their buttocks?",,"Yes", "No") == "Yes")
			var/obj/item/bodypart/chest/buttocks = branding_part
			if(QDELETED(buttocks) || !user.Adjacent(target) || !istype(buttocks)) // body part no longer exists/moved away
				return TRUE
			if(length(buttocks.branded_writing_on_buttocks))
				to_chat(user, span_warning("I reburn over the existing marking."))
			user.visible_message(span_info("[target] writhes as \the [src] sears onto their hindquarters! The fresh brand reads \"[setbranding]\"."))
			buttocks.branded_writing_on_buttocks = setbranding
		else // ask if they want to brand genitals
			var/obj/item/organ/penis/penis = target.getorganslot(ORGAN_SLOT_PENIS)
			var/obj/item/organ/vagina/vagina = target.getorganslot(ORGAN_SLOT_VAGINA)
			var/obj/item/organ/testicles/testes = target.getorganslot(ORGAN_SLOT_TESTICLES)
			if((penis && penis.visible_organ || vagina && vagina.visible_organ || testes && testes.visible_organ) && (alert("Brand their genitals?",, "Yes", "No") == "Yes"))
				var/which_genitals = ""
				if(penis && penis.visible_organ && alert("Brand their penis?",,"Yes", "No") == "Yes")
					if(QDELETED(penis) || !user.Adjacent(target)) // body part no longer exists/moved away
						return TRUE
					if(length(penis.branded_writing))
						to_chat(user, span_warning("I reburn over the existing marking."))
					penis.branded_writing = setbranding
					which_genitals = "cock"
				else if(vagina && vagina.visible_organ && alert("Brand their pussy?",,"Yes", "No") == "Yes")
					if(QDELETED(vagina) || !user.Adjacent(target)) // body part no longer exists/moved away
						return TRUE
					if(length(vagina.branded_writing))
						to_chat(user, span_warning("I reburn over the existing marking."))
					vagina.branded_writing = setbranding
					which_genitals = "pussy"
				else if(testes && testes.visible_organ && alert("Brand their balls?",,"Yes", "No") == "Yes")
					if(QDELETED(testes) || !user.Adjacent(target)) // body part no longer exists/moved away
						return TRUE
					if(length(testes.branded_writing))
						to_chat(user, span_warning("I reburn over the existing marking."))
					testes.branded_writing = setbranding
					which_genitals = "balls"
				else
					to_chat(user, span_warning("I pull the iron away."))
					return TRUE
				user.visible_message(span_info("[target] writhes as \the [src] sears onto their [which_genitals]! The fresh brand reads \"[setbranding]\"."))
			else
				to_chat(user, span_warning("I pull the iron away."))
				return TRUE
		if(!QDELETED(branding_part) && istype(branding_part)) // if targeted body part still exists, apply damage
			target.apply_damage(30, BURN, branding_part)
		target.Knockdown(10)
	else if(user.zone_selected == BODY_ZONE_PRECISE_NECK || user.zone_selected == BODY_ZONE_HEAD && alert("Brand their neck?",,"Yes", "No") == "Yes") // if targeting the head, ask to brand their neck, otherwise fallback to genetic body zone part
		var/obj/item/bodypart/head/neck = branding_part
		if(QDELETED(neck) || !istype(neck) || !user.Adjacent(target)) // body part no longer exists/moved away
			return TRUE
		if(length(neck.branded_writing_on_neck))
			to_chat(user, span_warning("I reburn over the existing marking."))
		user.visible_message(span_info("[target] writhes as \the [src] sears onto their neck! The fresh brand reads \"[setbranding]\"."))
		neck.branded_writing_on_neck = setbranding
		target.apply_damage(30, BURN, neck)
		target.Knockdown(10)
	else // generic body part
		if(QDELETED(branding_part) || !user.Adjacent(target)) // body part no longer exists/moved away
			return TRUE
		if(length(branding_part.branded_writing))
			to_chat(user, span_warning("I reburn over the existing marking."))
		user.visible_message(span_info("[target] writhes as \the [src] sears onto their [branding_part.name]! The fresh brand reads \"[setbranding]\"."))
		branding_part.branded_writing = setbranding
		target.apply_damage(30, BURN, branding_part)

	to_chat(target, span_userdanger("You have been branded!"))
	target.emote(prob(50) ? "painscream" : "scream", forced = TRUE)
	target.Stun(40)
	target.flash_fullscreen("redflash2")
	playsound(src.loc, 'sound/misc/frying.ogg', 80, FALSE, extrarange = 5)
	update_heated(FALSE)
	if(cool_timer)
		deltimer(cool_timer)
	log_combat(user, target, "Branded successful: \"[setbranding]\"")
	return TRUE

/obj/item/rogueweapon/surgery/hammer
	name = "examination hammer"
	desc = "A small hammer used to check a patient's reactions and diagnose their condition."
	icon_state = "kneehammer"
	possible_item_intents = list(/datum/intent/use, /datum/intent/mace/strike, /datum/intent/mace/smash)
	slot_flags = ITEM_SLOT_HIP
	parrysound = list('sound/combat/parry/parrygen.ogg')
	swingsound = BLUNTWOOSH_MED
	force = 10
	throwforce = 8
	wdefense = 3
	wbalance = -1
	associated_skill = /datum/skill/combat/maces
	sharpness = IS_BLUNT
	w_class = WEIGHT_CLASS_NORMAL
	thrown_bclass = BCLASS_BLUNT

/obj/item/rogueweapon/surgery/hammer/pre_attack(atom/A, mob/living/user, params)
	if(!istype(user.a_intent, /datum/intent/use))
		return ..()
	var/medskill = user.get_skill_level(/datum/skill/misc/medicine)
	if(medskill < SKILL_LEVEL_NOVICE)
		return ..()
	if(ishuman(A))
		if(A == user)
			user.visible_message("<span class='info'>[user] begins smacking themself with a small hammer.</span>")
		else
			user.visible_message("<span class='info'>[user] begins to smack [A] with a small hammer.</span>")
		if(do_after(user, ((medskill > SKILL_LEVEL_EXPERT) ? 1 SECONDS : 2.5 SECONDS), target = A))
			A.visible_message("<span class='info'>[A] jerks their knee after the hammer strikes!</span>")
			if(prob(1))
				playsound(user, 'sound/misc/bonk.ogg', 100, FALSE, -1)
			var/mob/living/carbon/human/human_target = A
			human_target.check_for_injuries(user)
	return ..()

////////////////////
//Improvised Tools//
////////////////////

//All are subtypes of the regular tools with worse behavior success chances.
/obj/item/rogueweapon/surgery/saw/improv
	name = "improvised saw"
	desc = "A tool used to carve through bone crudely, but better than nothing."
	icon_state = "bonesaw_wood"
	force = 12
	throwforce = 12
	wdefense = 3
	wbalance = 1
	tool_behaviour = TOOL_IMPROVISED_SAW
	sharpness = IS_BLUNT

/obj/item/rogueweapon/surgery/hemostat/improv
	name = "improvised clamp"
	desc = "A tool used to clamp down on soft tissue. A poor alternative to metal but better than nothing."
	icon_state = "forceps_wood"
	tool_behaviour = TOOL_IMPROVISED_HEMOSTAT

/obj/item/rogueweapon/surgery/retractor/improv
	name = "improvised retractor"
	desc = "A tool used to spread tissue open for surgical access in a tentative manner."
	icon_state = "speculum_wood"
	wdefense = 3
	wbalance = 1
	tool_behaviour = TOOL_IMPROVISED_RETRACTOR
