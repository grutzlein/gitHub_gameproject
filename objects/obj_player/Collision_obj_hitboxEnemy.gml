if (invincible != true) {
	hp -= 1;
	invincible = true;
	alarm[0] = 40;
	image_blend =  c_red;
	kb_x = 10 * sign(x - other.x);
	kb_y = 10 * sign(y - other.y);
	x += kb_x;
	y += kb_y;
}