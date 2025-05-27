var velocidadeNormal = 2
var velocidadeDiagonal = velocidadeNormal * 0.707

//Objetos os quais Carlos irá colidir.
var oQueColidir = [oColisaoQuadrada, oColisaoCircular]
//Objetos aos quais a profundidade do Ratazana vai variar quando ele passar por eles.
var depthObjects = [oRatoMaligno, oAnaRatazana]

var esquerda = keyboard_check(ord("A"))
var direita = keyboard_check(ord("D"))
var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))

var horizontal = (direita - esquerda) //Vai retornar +1 pra direita e -1 pra esquerda
var vertical = (baixo - cima)//Vai retornar +1 pra baixo e -1 pra cima


//Se um valor vertical e horizontal aparecem ao mesmo tempo (exp: 1, -1)
if (horizontal != 0 and vertical != 0)
{
	move_and_collide(horizontal * velocidadeDiagonal, vertical * velocidadeDiagonal, oQueColidir);
	//x += horizontal * velocidadeDiagonal //Mover pra horizontal/vertical nessa velocidade.
	//y += vertical * velocidadeDiagonal
}
else
{
	move_and_collide(horizontal * velocidadeNormal, vertical * velocidadeNormal, oQueColidir)
	//x += horizontal * velocidadeNormal //Mover pra horizontal/vertical nessa velocidade.
	//y += vertical * velocidadeNormal
}

//If input is W, move up.
if (keyboard_check(ord("W")))
{
	//Running animation is activated.
	sprite_index = sCarlosRatazana_correndo
}

//If input is A, move to the left.
else if (keyboard_check(ord("A")))
{
	sprite_index = sCarlosRatazana_correndo
	image_xscale = -1
}

//If input is S, move down.
else if (keyboard_check(ord("S")))
{
	sprite_index = sCarlosRatazana_correndo
}

//If input is D, move to the right.
else if (keyboard_check(ord("D")))
{
	sprite_index = sCarlosRatazana_correndo
	//Flips sprite.
	image_xscale = 1
}

//Changes to original (non-walking) sprite.
else
{
	sprite_index = sCarlosRatazana
}

//Guarda colisão com oColisaoDeTransição. 
var portal1 = instance_place(x, y, oTransicao1);
var portal2 = instance_place(x, y, oTransicao2);
var portal3 = instance_place(x, y, oTransicao3);
var portal4 = instance_place(x, y, oTransicao4);
var portal5 = instance_place(x, y, oTransicao5);
var portal6 = instance_place(x, y, oTransicao6);
var portal7 = instance_place(x, y, oTransicao7);

//Leva Ratazana pra outra cena no momento da colisão
if portal1{
    room_goto(cFase1_2);
}

else if portal2{
    room_goto(cFase1_3);
}

else if portal3{
	room_goto(cFase2_1);
}

else if portal4{
	room_goto(cFase2_2)
}

else if portal5{
	room_goto(cFase3_1)
}

else if portal6{
	room_goto(cFase3_2)
}

else if portal7{
	room_goto(cFase1_1)
}

//if instance_exists(oRatoMaligno){
//  if y > y.oRatoMaligno{
//	  depth = 1
// }
//   else{
//	   depth = 2
//  }
//}



