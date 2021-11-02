//CLASSE CRIADA PARA DESENHAR OS PÁSSAROS DA CENA DIURNA


class Passaro
{
  
  float xPas, yPas, velPas;
  color corPas;
  
  //CONSTRUTOR - recebe um valor diferente de velocidade para cada pássaro 
  
  Passaro(float velPasT)
  {
    
    xPas = 0;
    
    yPas = (int)random(200,350);   //A posição Y dos pássaros é aleatória
    
    corPas = color(random(256), random(256), random(256));  //A cor dos pássaros é aleatória
    
    velPas = velPasT;
    
  }
  
  
  //DESENHA OS PÁSSAROS A PARTIR DE ARCOS, RETÂNGULOS E TRIÂNGULOS
  
  void desenhaPassaro()
{
  
  
  noStroke();
 
  fill(corPas);
  
  rectMode(CENTER);
  
  
  arc((xPas+5),yPas, 10, 10, 3*(PI/2), 2*PI);  //CABEÇA
  
  arc((xPas+5),yPas, 10, 10, 0, PI/2);  //CABEÇA
  
  arc((xPas-5),(yPas+5), 20, 20, PI, 3*(PI/2));   //CAUDA
  
  
  rect(xPas,yPas,10,10);  //CORPO
  
  
  triangle((xPas-5), (yPas+5), (xPas+5), (yPas+5), xPas, (yPas+15));  //ASA
  
  
  fill(255,255,0);
  
  triangle((xPas+10), (yPas+3), (xPas+10),(yPas-3), (xPas+15),yPas);   //BICO - sempre amarelo
  
  
  fill (0);
  
  ellipse((xPas+7),(yPas-2),2,2);   //OLHO - sempre preto
 
 
}


//MOVIMENTA O PÁSSARO NO EIXO X DENTRO DA ÁREA DA JANELA

void movimentaPassaro()
{
  
  
  if (xPas <= 325)
  {
  
  xPas += velPas;
  
  }
  
  //SE O PÁSSARO SAI DA JANELA, ELE VOLTA PARA O X INICIAL, E RECEBE UMA NOVA COR E UM NOVO Y INICIAL ALEATÓRIOS 
  
  if (xPas >= 325)
  {
    
    xPas = 0;
  
    corPas = color(random(256),random(256),random(256));
  
    yPas = (int)random(200,350);
  
  }
  
 }
 
}




 
