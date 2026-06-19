InventoryAccess = keyboard_check_pressed(ord("I"));

if (InventoryAccess) {
	accessInventory(stateInventory);
}

if (InventoryOpen) {
	x = obj_player.x + 52;
	y = obj_player.y;
}
