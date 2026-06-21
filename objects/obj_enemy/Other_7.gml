if (state.stateOnEnd != undefined) {
	state_set (state.stateOnEnd);
}

if (dirToPlayer >= 90 and dirToPlayer <= 270) {
		image_xscale = -1;
	}
	else {
		image_xscale = 1;	
	}
	
if (state == states.dead) {
	obj_player.add_xp(5);
	giveKey(id);
	instance_destroy(self);
}