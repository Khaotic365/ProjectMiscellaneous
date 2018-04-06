/// @description Insert description here
// You can write your code in this editor

var layer_id1 = layer_get_id("Background");

layer_x(layer_id1, lerp(0, camera_get_view_x(view_camera[0]),.5));