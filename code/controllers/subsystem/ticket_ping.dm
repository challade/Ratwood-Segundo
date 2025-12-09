/// Pings admins every (time chosen in config) for all open tickets
SUBSYSTEM_DEF(ticket_ping)
	name = "Ticket Ping"
	flags = SS_BACKGROUND
	runlevels = RUNLEVEL_LOBBY | RUNLEVEL_SETUP | RUNLEVEL_GAME | RUNLEVEL_POSTGAME
	wait = 5 MINUTES

/datum/controller/subsystem/ticket_ping/Initialize()
	if(CONFIG_GET(number/ticket_ping_frequency) < 1)
		flags |= SS_NO_FIRE
		return ..()

	wait = CONFIG_GET(number/ticket_ping_frequency)
	return ..()

/datum/controller/subsystem/ticket_ping/fire(resumed)
	var/valid_ahelps
	for(var/datum/admin_help/ahelp in GLOB.ahelp_tickets.active_tickets)
		if(ahelp.last_admin_interaction && ahelp.last_admin_interaction + wait < world.time && ahelp.last_admin_interaction >= ahelp.last_interaction)
			continue
		valid_ahelps++

	if(!valid_ahelps)
		return

	var/is_or_are = (valid_ahelps > 1 ? "are" : "is")

	message_admins(span_adminnotice("There [is_or_are] currently [valid_ahelps ? "[valid_ahelps] unhandled or neglected ticket[valid_ahelps == 1 ? "" : "s"] open" : ""]."))
	for(var/client/staff as anything in GLOB.admins)
		SEND_SOUND(staff, sound('sound/soft_ping.ogg'))
		window_flash(staff, ignorepref = TRUE)
