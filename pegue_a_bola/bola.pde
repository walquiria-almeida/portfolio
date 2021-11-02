class Bola
{
  int xBola;
  int yBola;
  
  int raioBola;
  int diamBola;
  
  float velocX, velocY;
  
  float accBola;
 
  
  boolean iniciar;

  int pontuacao;
  
  
  Bola()
  {
    xBola = width/2;
    yBola = height/2;
    diamBola = 70;
    raioBola = diamBola/2;
    
    velocX = 0;
    velocY = 4;
    accBola = 0.05;
    
    pontuacao = 0;
    
    
  }
  
  void criaBola()
  {
    
    imageMode(CENTER);
    image(bolaImg,xBola, yBola);
    
  }
  
 
  void moveBola()
 {
   
   if (iniciar)
   {
     
    velocX = constrain(velocX, -4,4); //Limita a velocidade X da bola
 
 
    velocY+=accBola;  //Aceleração da bola em Y
     
    yBola+=velocY;
    xBola+=velocX;
    
    
    if(yBola <= raioBola) //Rebate a bola quando ela bate no topo
    {
      if(velocY < 0)
      {
      velocY*=-1;
      }
     
    }
    
    else if(yBola >= (height-raioBola)) //Reinicia o jogo quando a bola cai
    {
      
    xBola = width/2;
    yBola = height/2;
   
    velocX = 0;
    velocY = -4;
    
    pontuacao = 0;
    
    iniciar = false;
    
    }
    
    
    if(xBola <=0+raioBola || xBola >= width-raioBola) //Rebate a bola quando ela encosta nos lados
    {
      velocX*=-1;
    }
   }
   
 }
 
  void cliqueBola()
  {
    
    if(velocY > 0) //Inverte a direção da velocidade quando a bola é clicada somente se a velocidade for positiva
    {
    velocY*=-1;
    }
   
   
   if(iniciar==false) //Inicia o jogo
   {
     iniciar=true;
   }
   
   if(iniciar) //Soma a pontuação a cada clique
   {
     pontuacao++;
   }
    
    if (mouseX > xBola) //Direciona a bola de acordo com a posição do clique em relação a seu centro
   {
     velocX-=1;
   }
   else if(mouseX < xBola)
   {
     velocX+=1;
   }
   else if(mouseX == xBola)
  {
    velocX = 0;
  }
   
  }
  
  
  void mostraPontuacao() //Mostra a pontuação na tela
  {
    
    textAlign(CENTER,CENTER);
    textSize(32);
    fill(0,200,200);
    text(pontuacao, width/2,30);
    
  }
  
  void mudaCor() //Altera o aspecto da bola a cada intervalo de 10 pontos, até os 30 pontos
  {
    if (pontuacao < 10)
    {
      bolaImg = loadImage("bola2.png");
    }
     
    if (pontuacao >= 10 && pontuacao < 20)
    {
     
      
      bolaImg = loadImage("bola4.png");
      
    }
    else if (pontuacao >= 20 && pontuacao < 30)
    {
     bolaImg = loadImage("bola6.png");
    }
    else if(pontuacao >= 30)
    {
     bolaImg = loadImage("bola8.png");
    }
  }
    
}
  
    
