function draw_manabar (x1, y1, x2, y2) {
draw_healthbar(
	x1,
	y1,
	x2,
	y2,
	100 * (currentMana / maxMana),
	c_black,
	c_blue,
	c_blue,
	0,
	true,
	false
);
}