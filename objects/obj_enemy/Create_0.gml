path = path_add();

target_x = obj_player.x;
target_y = obj_player.y;

destroyAfterInteraction = true;

states = {
	walk : new State(spr_evilsoldier_walk),
	attack : new State(spr_evilsoldier_attack),
	idle : new State(spr_evilsoldier_idle),
	dead : new State(spr_evilsoldier_death),
	knockback : new State(spr_evilsoldier_idle)
}

states.attack.StateOnEnd(states.idle);
states.knockback.StateOnEnd(states.idle);

state = states.idle;

moveable = true;

player_close = false;

start_pos_x = x;
start_pos_y = y;

away_from_home = false;

invincible = false;

alarm[0] = 1;

hpTotal = 10;
hp = hpTotal;

invincible = false;

dead = false;

hpLowerZero = false;

dirToPlayer = point_direction(x, y, obj_player.x, obj_player.y);

kb_x = 0;
kb_y = 0;

attackReady = true;

lookForKey(id);