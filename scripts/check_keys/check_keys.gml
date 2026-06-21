function lookForKey (_instance_id) {
	for (var i = 0; i < array_length(global.pkeys); i++) {
		if (global.pkeys[i] == _instance_id) {
			if (destroyAfterInteraction == true) {
				instance_destroy();
			}
			else {
				image_index = 1;
			}
		}
	}
}

function giveKey (_instance_id) {
	global.pkeys[array_length(global.pkeys)] = _instance_id;
}