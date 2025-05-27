var _hor = clamp(target_x - x, -1, 1)
var _ver = clamp(target_y - y, -1, 1)

//Objetos os quais Carlos irá colidir.
var oQueColidir = [oColisaoQuadrada, oColisaoCircular]

var moveSpeed = 1

move_and_collide(_hor * moveSpeed, _ver *moveSpeed, oQueColidir)
