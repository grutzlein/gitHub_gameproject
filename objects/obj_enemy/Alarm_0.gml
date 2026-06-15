if (state == states.idle or state == states.walk) {

	if (moveable and player_close == false and distance_to_object(obj_player) <= 100) {
		
		state_set(states.walk);
		path_delete(path);
		path = path_add();

		target_x = obj_player.x;
		target_y = obj_player.y;

		mp_grid_path(setup_path.grid, path, x, y, target_x, target_y, 1);
			
		path_start(path, 0.5, path_action_stop, true);
	}
	
	
	
	
	if (distance_to_object(obj_player) <= 20) {
		player_close = true;
	}
	
	if (player_close and attackReady) {
		state_set_attack_enemy(states.attack);
		attackReady = false;
		alarm[2] = 90;
	}
	
	if (distance_to_object(obj_player) >= 10) {
		player_close = false;
	}
	
	
	
	
	
	if (distance_to_object(obj_player) >= 100) {
		
		state_set(states.walk);
		
		path_delete(path);
		path = path_add();

		target_x = start_pos_x;
		target_y = start_pos_y;

		mp_grid_path(setup_path.grid, path, x, y, target_x, target_y, 1);
			
		path_start(path, 0.5, path_action_stop, true);
		
		away_from_home = true;
	}

	
	if (distance_to_object(obj_player) <= 0) {
		
		path_delete(path);
		path = path_add();

		target_x = obj_player.x - 10;
		target_y = obj_player.y;

		mp_grid_path(setup_path.grid, path, x, y, target_x, target_y, 1);
			
		path_start(path, 0.5, path_action_stop, true);
	}
	
	
	if (x = start_pos_x and y = start_pos_y and away_from_home == true) {
		state_set(states.idle);
		away_from_home = false;
	}
}
alarm_set(0, 10);