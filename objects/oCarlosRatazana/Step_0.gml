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
var portal = instance_place(x, y, oColisaoDeTransicao);

//Leva Ratazana pra outra cena no momento da colisão
if portal{
    room_goto(cFase1_2);
}

//if instance_exists(oRatoMaligno){
//  if y > y.oRatoMaligno{
//	  depth = 1
//  }
//  else{
//	 depth = 2
//  }
//}



