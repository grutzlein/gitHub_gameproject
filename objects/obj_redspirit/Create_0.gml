alive = true;
alarm[0] = 480;

states = {
	idle : new State(spr_redspirit_idle),
	spawn : new State(spr_redspirit_spawn)
}

state = states.spawn;

states.spawn.StateOnEnd(states.idle);

direction = random_range(0, 360);
speed = 0.1;