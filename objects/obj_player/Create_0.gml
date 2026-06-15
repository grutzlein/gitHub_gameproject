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
dashSpd = 30;

manaTotal = 10;
mana = manaTotal;

lvl = 1;
xp = 0;
xpRequire = 10;

function add_xp (xp_to_add) {
	xp += xp_to_add;
	if (xp >= xpRequire) {
		lvl++;
		xp -= xpRequire;
		xpRequire *= 1.4;
		hpTotal *= 1.1;
		dmg *= 1.05;
		manaTotal *= 1.1;
	}
}

hpTotal = 10;
hp = hpTotal;

dmg = 2;
invincible = false;

attackQReady = true;