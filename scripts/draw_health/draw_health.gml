function draw_health(){
draw_healthbar(
	x-10,
	y - 38,
	x + 10,
	y - 36,
	100 * (hp / hpTotal),
	c_black,
	c_red,
	c_green,
	0,
	true,
	false
);
}