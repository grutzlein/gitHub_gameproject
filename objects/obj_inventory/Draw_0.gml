if (InventoryOpen) {
draw_sprite_stretched
(
	spr_inventory,
	0,
	x - 6,
	y - 6,
	12 + rowLength*28,
	12 + (((INVENTORY_SLOTS-1) div rowLength)+1)*28
	);
 
 for (var i = 0; i < INVENTORY_SLOTS; i += 1)
 {
	 var xx = x + (i mod rowLength) * 28 + 2;
	 var yy = y + (i div rowLength) * 28 + 2;
	 
	 slot_x = xx;
	 slot_y = yy;
	 
	 var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == i)
	draw_sprite(spr_slots_1,hover,xx,yy);
	if  (inventory[i] != -1)
	
	{
	
		var alpha = 1.0;
		if (obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == i) alpha = 0.5;
		
		draw_set_alpha(alpha);
		
		draw_sprite_stretched(spr_item, inventory[i], xx,yy, 24, 24);
		
		draw_set_alpha(1.0);
	}
 }
 stateInventory = "open";
}

