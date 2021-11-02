//DESENHA O MENU INICIAL//

void desenhaMenu()
{
  
    image(inicio, 0, 0);


    textFont(fonteInicio);
    textSize(32);

    fill(255);
    text("Clique nos elementos da cena e se divirta!", 300, 80);

    fill(0);
    text("~Escolha um período para começar~", 300, 520);
    
    
}



//DESENHA OS BOTÕES DE SELEÇÃO DOS MODOS(AMBIENTE/MUSICAL)//


void desenhaBotoes()
{
  
  textFont(fonteBotao);
  
  textSize(24);
  

//MOSTRA O TEXTO SOMENTE SE O MOUSE PASSA PELO ÍCONE


   //MODO MUSICAL

  if (mouseX > 20 && mouseX < 52 && mouseY > 550 && mouseY < 582)
  {

    fill(corFonteM);

    text("Modo", 36, 510);
    text("Musical", 36, 530);
    
  } 
  
  
  //MODO AMBIENTE
  
  else if (mouseX > 70 && mouseX < 102 && mouseY > 550 && mouseY < 582)
  {
    
    fill(corFonteA);
    text("Modo", 86, 510);
    text("Ambiente", 86, 530);
    
  }

    //IMPRIME OS ÍCONES

    image(musical, 20, 550);
    image(ambiente, 70, 550);
    
}

//DESENHA O PISCA-PISCA NA TELA - utiliza uma função seno para fazer a curva


void piscaPisca()
{
  
  noStroke();
  
  //INÍCIO DA CURVA
  
  xBase = 0;   
  yBase = 100;
  
  //AMPLITUDE DA CURVA
  
  altura = 75;
  
  //ÂNGULO DE REFERÊNCIA
  
  delta = PI/8;
  
  
  
  while(xBase <= 300)   //DESENHA CÍRCULOS DISPOSTOS EM UMA CURVA, DE xBase = 0 A xBase <= 300
  
  {
    
    /*NO MODO NOTURNO, OS CÍRCULOS RECEBEM CORES ALETARÓRIAS, E UMA RASTRO DE LUZ É DESENHADO POR ESFERAS MAIORES E 
    DE MENOR OPACIDADE*/
    
      if (noite == true)
      {
        
      corPisca = color(random(256), random(256),random(256),240);  //escolha aleatória da cor
      
    
      //DESENHA RASTRO DE LUZ BRANCO
    
      fill(255,255,255,100);
      ellipse(xBase,yBase,12,12);
      
      
      fill(255,255,255,80);
      ellipse(xBase,yBase,16,16);
    
    
      fill(255,255,255,60);
      ellipse(xBase,yBase,20,20);
     
     
      fill(255,255,255,40);
      ellipse(xBase,yBase,24,24);
      
    }
   
  //DESENHA AS LÂMPADAS DO PISCA-PISCA EM DISPOSIÇÃO CURVA
  
    fill(corPisca);
    ellipse(xBase,yBase,8,8);
    
    
    delta-=0.06;
    
    xBase +=25;
  
    yBase = yBase + (altura * sin(delta));
 
 
  }
  
}




//BASE DE RETÂNGULOS UTILIZADA PARA CONFERÊNCIA DA POSIÇÃO DOS ELEMENTOS


void base()
{
  
  rectMode(CORNER);
  stroke(0);
  
  strokeWeight(2);
  
  noFill();
  
  
  //quarto
  line(550,0, 550,550);
  line(550,550,600,600);
  line(550,550,0,550);
  
  
  //janela
  rect(0,100,300,275);
  rect(0,100,300,175);
  
  
  //menina - dia
  rect(200,225,200,375);
  
  
  //menina - noite
  stroke(255);
  rect(250,225,150,375);
  

  //gato - dia
  rect(0,275,75,175);
  
 
  //gato - noite
  rect(0, 380, 75,70);
  
 
  //notebook
  rect(80,325, 120, 125);
  
  
  //guita
  rect(425,80,100,300);
  
  
  //lixo
  rect(450,450,125,150);
  
  
  //interruptor
  rect(565,250,15,45);
  
}
