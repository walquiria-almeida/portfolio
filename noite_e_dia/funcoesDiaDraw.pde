//DESENHA A CENA DIURNA//


void desenhaDia()
{
  
    //FUNDO
  
    image(paisagemDia, 0, 100);


    //PÁSSAROS - chama os métodos da classe Pássaros

    passaro1.desenhaPassaro();
    passaro1.movimentaPassaro();


    passaro2.desenhaPassaro();
    passaro2.movimentaPassaro();

    
    passaro3.desenhaPassaro();
    passaro3.movimentaPassaro();


    //CENARIO
    
    image(cenarioDia, 0, 0);
    
    
    //LIXO - interação com o papel amassado
    
     distanciaLixo = dist(xLixo, yLixo, 530, 500);    //calcula a distância entre o papel e a abertura do lixo
     
    
    if (lixoMostra == true)
    {
      
      imageMode(CENTER);
      
      image(lixoImg, xLixo, yLixo);
      
      
      if (mouseX > 475 && mouseX < 507 && mouseY > 550 & mouseY < 582)   //se o mouse passa por cima do papel amassado
      {
  
        image(exclamacao, 491, 530);
      
      }
      
      
      if (lixoMove == true)    //o papel acompanha a posição do mouse
      {
      
         xLixo = mouseX;
         yLixo = mouseY;
       
      }
      
      if (distanciaLixo < 15)   //se o papel se aproxima da abertura do lixo, ele não é mais mostrado e um som é emitido
      {
  
        limpo.trigger();
  
        lixoMostra = false;
         
        xLixo = 491;
        yLixo = 566;
 
    }
    
    }
    
    
    imageMode(CORNER);
    
    //COR DO PISCA-PISCA - fixa no modo diurno
    
    corPisca = color(240, 240, 0, 240);
    
}


//ATRIBUI OS NOMES DOS ARQUIVOS DE SOM DO MODO DIURNO ÀS VARIÁVEIS TOM(1-6)


void sonsDia()
{
  
  //MODO AMBIENTE
  
  if (modoAmbiente == true)
    {
      
      tom1 = "gato_dia.wav";
      tom2 = "janela_dia.wav";
      tom3 = "notebook_dia.wav";
      tom4 = "menina_dia.wav";
      tom5 = "guitarra_dia.wav";
      tom6 = "lixo_dia.wav";
      
    } 
    
    
   //MODO MUSICAL
   
   else if (modoMusical == true)
    {
      
      tom1 = "C5.wav";
      tom2 = "E5.wav";
      tom3 = "G5.wav";
      tom4 = "D5.wav";
      tom5 = "F5.wav";
      tom6 = "A5.wav";
      
    }
    
    
}
