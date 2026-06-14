path = path_add();

target_x = obj_player.x;
target_y = obj_player.y;

states = {
	walk : new State(spr_evilsoldier_walk),
	attack : new State(spr_evilsoldier_attack),
	idle : new State(spr_evilsoldier_idle)
}

states.attack.StateOnEnd(states.idle);

state = states.idle;

moveable = true;

player_close = false;

start_pos_x = x;
start_pos_y = y;

away_from_home = false;

invincible = false;

alarm[0] = 1;