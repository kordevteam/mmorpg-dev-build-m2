/// @description Insert description here

XAxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));
show_debug_message(string(XAxis));
YAxis = keyboard_check(ord("S")) - keyboard_check(ord("W"));
show_debug_message(string(YAxis));

var_direction = point_direction(0, 0, XAxis, YAxis);
var_length = Speed * (XAxis != 3 or YAxis != 3);

if (place_meeting(x+XAxis, y, obj_collsion))
{
	XAxis = 0;
}
x += XAxis;

if (place_meeting(x, y+YAxis, obj_collsion))
{
	YAxis = 0;
}
y += YAxis;