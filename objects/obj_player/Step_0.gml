if (state == states.idle or state == states.walk or state == states.dash ) {

	dashDuration = max(dashDuration -1, 0);

	if ( currentlyTalking == noone) {
	left = keyboard_check(ord("A")) == true;
	right = keyboard_check(ord("D")) == true;
	up = keyboard_check(ord("W")) == true;
	down = keyboard_check(ord("S")) == true;
	attack = keyboard_check_pressed(ord("Q")) == true;
	spiritcast = keyboard_check_pressed(vk_space) == true;

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
	
	if (spiritcast and mana >= 5 and distance_to_object(obj_bluespirit) <= 20) {
		spiritUsed = instance_nearest(x, y, obj_bluespirit);
		spiritUsed.alive = false;
		dashDuration = 10;
		hsp = sign(hor) * dashSpd;
		mana -= 5;
		state_set(states.dash);
		invincible = true;
		alarm[0] = 30;
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
	
	if (attack and attackQReady) {
		state_set_attack(states.attack);
		attackQReady = false;
		alarm[1] = 60;
	}
	
	if (spiritcast and mana >= 5 and distance_to_object(obj_redspirit) <= 20) {
		spiritUsedRed = instance_nearest(x, y, obj_redspirit);
		spiritUsedRed.alive = false;
		dmgSave = dmg;
		dmg = dmgSpiritAttack;
		state_set_attack(states.spiritattack);
		mana -= 5;
	}
}

if (mana <= manaTotal - 0.015) {
	mana += 0.015;
}

depth = -y;


if (keyboard_check_pressed(vk_enter)) {
	if(currentlyTalking == noone) {
	var who_is_here = instance_place(x,y,obj_npc_talk);
	if ( who_is_here != noone) {
	currentText = who_is_here.text[0];
	currentlyTalking = who_is_here;
	current_text_index = 0;
	current_text_line_number = 0;
	}

	}
	
	else {
		if (current_text_line_number < array_length(currentlyTalking.text) -1) {
		current_text_line_number ++;
		currentText = currentlyTalking.text[current_text_line_number]
		current_text_index = 0;
		} else {
		currentlyTalking = noone;
		}

	}

}

if ( left != false or  right != false or up != false or down != false) {
	if(!audio_is_playing(se_footsteps)) {
		audio_play_sound(se_footsteps,100,false);
	}
}
}