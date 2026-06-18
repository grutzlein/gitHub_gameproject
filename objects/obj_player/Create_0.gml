spdNormal = 1;
current_text_index = 0;
spdNormal = 1;
spdDiagonal = 1;
current_text_line_number = 0;


states = {
	idle : new State(spr_player_idle),
	walk : new State(spr_player_run),
	attack : new State(spr_player_attack),
	dash : new State(spr_player_dash),
	spiritattack : new State(spr_player_spiritattack)
	}
	
states.attack.StateOnEnd(states.idle);
states.spiritattack.StateOnEnd(states.idle);
states.dash.StateOnEnd(states.idle);

state = states.idle;

dashDuration = 0;
dashSpd = 50;

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

dmgBegin = 2;
dmg = dmgBegin;
invincible = false;
dmgSpiritAttack = dmg * 1.2;

attackQReady = true;

currentText = "";
currentlyTalking = noone;
