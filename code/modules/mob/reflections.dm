/proc/get_reflection_alpha(ref_type)
	switch(ref_type)
		if(REFLECTION_MATTE)
			return 80
		if(REFLECTION_REFLECTIVE)
			return 120
		if(REFLECTION_WATER)
			return 100
		if(REFLECTION_SHINY)
			return 150
	return 0

/turf
	var/reflection_type = null

/obj/effect/reflection
	layer = TURF_LAYER + 0.1
	plane = FLOOR_PLANE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	var/reflection_type = REFLECTION_SHINY

/mob/living
	var/obj/effect/reflection/current_reflection
	var/last_reflection_type = null
	var/reflections_enabled = FALSE

/mob/living/carbon/human
	reflections_enabled = TRUE

/mob/living/carbon/human/dummy
	reflections_enabled = FALSE

/mob/living/Initialize()
	. = ..()
	if(reflections_enabled)
		RegisterSignal(src, COMSIG_MOVABLE_MOVED, PROC_REF(check_reflection))
		setup_reflection()
		check_reflection()

/mob/living/Destroy()
	if(reflections_enabled)
		UnregisterSignal(src, COMSIG_MOVABLE_MOVED)
	cleanup_reflection()
	return ..()

/mob/living/proc/cleanup_reflection()
	if(current_reflection)
		vis_contents -= current_reflection
		qdel(current_reflection)
		current_reflection = null

	render_target = null
	last_reflection_type = null

/mob/living/proc/setup_reflection()
	render_target = "reflection_[ref(src)]"
	
	current_reflection = new()
	current_reflection.render_source = render_target
	current_reflection.transform = matrix().Scale(1, -1)
	current_reflection.pixel_y = -bound_height
	current_reflection.alpha = 0
	vis_contents += current_reflection

/mob/living/proc/check_reflection()
	if(!current_reflection)
		return
	
	var/turf/T = get_step(src, SOUTH)
	if(!istype(T))
		hide_reflection()
		return
	
	var/new_reflection_type = T.reflection_type
	
	if(!new_reflection_type)
		hide_reflection()
		return
	
	if(new_reflection_type == last_reflection_type)
		return
	
	update_reflection(new_reflection_type)

/mob/living/proc/update_reflection(reflection_type)
	if(!current_reflection)
		return
	
	last_reflection_type = reflection_type
	current_reflection.reflection_type = reflection_type
	current_reflection.filters = null

	apply_reflection_effects(current_reflection)
	show_reflection()

/mob/living/proc/show_reflection()
	if(!current_reflection)
		return
	
	var/target_alpha = get_reflection_alpha(last_reflection_type)
	
	if(current_reflection.alpha != target_alpha)
		current_reflection.alpha = target_alpha

/mob/living/proc/hide_reflection()
	if(!current_reflection)
		return
	
	current_reflection.alpha = 0
	last_reflection_type = null

/mob/living/proc/apply_reflection_effects(obj/effect/reflection/R)
	switch(R.reflection_type)
		if(REFLECTION_MATTE)
			R.filters += filter(type="blur", size=1)
			R.color = list(
				0.5, 0, 0,
				0, 0.5, 0,
				0, 0, 0.5,
				0, 0, 0
			)
		
		if(REFLECTION_REFLECTIVE)
			R.filters += filter(type="blur", size=0.5)
			R.color = list(
				0.8, 0, 0,
				0, 0.8, 0,
				0, 0, 0.85,
				0, 0, 0
			)
		
		if(REFLECTION_WATER)
			R.color = list(
				0.7, 0, 0,
				0, 0.7, 0,
				0, 0, 0.9,
				0, 0, 0
			)

			R.filters += filter(type="wave", x=2, y=2, size=1, offset=0)
			animate(R.filters[R.filters.len], offset=1000000, time=10000000, easing=LINEAR_EASING)
