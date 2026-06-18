spirit_count = 0;
randomize();

function spawnSpirit () {
	if (spirit_count <= 60) {
	var random_x = random_range(50, 1316);
	var random_y =  random_range(50, 718);
	
	instance_create_layer(random_x, random_y, "Instances_up", choose(obj_bluespirit, obj_redspirit));
	}
}

function spawnSpiritNearPlayer () {
	if (spirit_count <= 60) {
	var random_x = random_range(obj_player.x - 150, obj_player.x + 150);
	var random_y =  random_range(obj_player.y - 80, obj_player.y + 80);
	
	instance_create_layer(random_x, random_y, "Instances_up", choose(obj_bluespirit, obj_redspirit));
	}
}

repeat (40) {
	spawnSpirit();
}
alarm[0] = 1;
alarm[1] = 1;