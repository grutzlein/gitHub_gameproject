#macro INVENTORY_SLOTS 12
rowLength = 4;
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();

InventoryOpen = false;

stateInventory = "closed";
depth = -1367;

slot_x = 0;
slot_y = 0;					