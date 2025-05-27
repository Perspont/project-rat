var _targetRoom = argument0;
var _duration = argument1;
var _color = argument2;

var _instance = instance_create_depth(0,0,0,oFade);
with (_instance){
	targetRoom = _targetRoom;
	duration = _duration;
	color = _color;
}