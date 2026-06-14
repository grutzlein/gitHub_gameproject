spdNormal = 1;
spdDiagonal = 1;

states = {
	idle : new State(spr_player_idle),
	walk : new State(spr_player_walk),
	attack : new State(spr_player_kick),
	dash : new State(spr_player_roll)
	}
	
states.attack.StateOnEnd(states.idle);
states.dash.StateOnEnd(states.idle);

state = states.idle;

dashDuration = 0;
dashSpd = 10;

maxMana = 10;
currentMana = maxMana;