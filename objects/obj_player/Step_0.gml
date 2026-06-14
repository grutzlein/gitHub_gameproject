if (state == states.idle or state == states.walk or state == states.dash) {

	dashDuration = max(dashDuration -1, 0);

	left = keyboard_check(ord("A")) == true;
	right = keyboard_check(ord("D")) == true;
	up = keyboard_check(ord("W")) == true;
	down = keyboard_check(ord("S")) == true;
	attack = keyboard_check_pressed(ord("Q")) == true;
	dash = keyboard_check_pressed(vk_space) == true;

	hor = (right - left);
	ver = (down - up);

	if (hor != 0 and ver != 0) {
		hsp = hor * spdDiagonal;
		vsp = ver * spdDiagonal;
	}
	
	else {
		hsp = hor * spdNormal;
		vsp = ver * spdNormal;
	}
	
	if (dash and currentMana >= 5) {
		dashDuration = 10;
		hsp = sign(hor) * dashSpd;
		currentMana -= 5;
		state_set(states.dash);
	}

	move_and_collide(hsp, vsp, obj_solid_parent);

	if (hsp != 0 or vsp != 0) {
		
		if (state != states.dash) {
			state_set(states.walk);
		}
		
		if (sign(hor) == 1) {
			image_xscale = 1;
		}
		else if (sign(hor) == -1) {
			image_xscale = -1;
		}
	}

	else if (state != states.dash) {
		state_set(states.idle);	
	}
	
	if (attack) {
		state_set_attack(states.attack);
	}
	
}

if (currentMana <= maxMana - 0.01) {
	currentMana += 0.01;
}

depth = -y;
