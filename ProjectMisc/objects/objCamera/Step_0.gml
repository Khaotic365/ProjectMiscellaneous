x += (xTo - x)/25;
y += (yTo - y)/25;

if (follow != noone)
{
	xTo = clamp(follow.x, (207), (room_width - 207));
	yTo = clamp(follow.y, (368), (room_height - 368));
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);