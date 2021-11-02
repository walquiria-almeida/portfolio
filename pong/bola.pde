class Bola
{
  
  //Configuração da bola
  
  float xBola;
  float yBola;

  float velocXBola;
  float velocYBola;

  int diamBola;
  int raioBola;

  //Contagem de pontos
  
  int pontoPlayer2;
  int pontoPlayer1;

  //Estados de jogo
  
  boolean player1Venceu;
  boolean player2Venceu;

  boolean colidiu;
 



  Bola()
  {
    xBola = width/2;
    yBola = height/2;

    diamBola = 20;
    raioBola = diamBola/2;

    velocXBola = -2;
    velocYBola = 0;
  }

  void criaBola()
  {
    noStroke();
    fill(255,255,0);
    ellipse(xBola, yBola, diamBola, diamBola);
  }

  void moveBola()
  {

    xBola+= velocXBola;
    yBola+= velocYBola;
    
    if(yBola < raioBola || yBola > height-raioBola) //Inverte direção se a bola bate nas extremidades 
    {
      inverteVelocidadeY();
    }
    
    
  }

  void inverteVelocidadeY()
  {
    velocYBola*=-1;
  }
  
  
  void inverteVelocidadeX()
  {
    velocXBola*=-1;
  }
  

  void aceleraBola()  //A cada colisão a bola acelera um pouco mais
  {
      if (velocXBola>0)
      {
        velocXBola+=0.002;
      } 
      
      else if (velocXBola < 0)
      {
        velocXBola-=0.002;
      }
      
      colidiu = false;
  }


  void contaPontos() //Conta os pontos de acordo com o local da colisão
  {
    
      if (xBola > width/2)
      {
        pontoPlayer2++;
      }
      else if (xBola < width/2)
      {
        pontoPlayer1++;
      }
    
  }


  void mostraPontos() //Placar
  {
  
    textAlign(CENTER,CENTER);
    textSize(24);
    
    fill(255);
    text(pontoPlayer1, width/4, 25);
    text(pontoPlayer2, width/2 + width/4, 25);
  }
  

  void perdeu() //Determina o Vencedor
  {
    
    if (xBola < raioBola)
    {
      player2Venceu = true;
    } 
    else if (xBola > width-raioBola)
    {
      player1Venceu = true;

    }
  }
    
    
  
  void mostraFim() //Tela Final
  {
    if (player1Venceu)
    {
      fill(0);
      rect(width/2, height/2, width, height);

      textAlign(CENTER, CENTER);
      fill(0,0,255);
      text("VENCEDOR!", width/2, height/2 + 50);
      text("PLAYER 1", width/2, height/2 - 50);
     
    } 
    
    else if (player2Venceu)
    {
      fill(0);
      rect(width/2, height/2, width, height);

      textAlign(CENTER, CENTER);
      fill(255,0,0);
      text("VENCEDOR!", width/2, height/2 + 50);
      text("PLAYER 2", width/2, height/2 - 50);

    }
   
  }


  boolean colisao(int player, int xRaquete, int yRaquete)  //Confere colisão
  {
    
    if (player == 1)
    {

      if ((xBola - raioBola) > (xRaquete + 10))
      {
        colidiu = false;
      } 
      else if ((yBola > (yRaquete+45+raioBola) || yBola < (yRaquete-45-raioBola)))
      {
        colidiu = false;
      } 
      else
      {
        colidiu = true;
      }
    }

    else if (player == 2)
    {
      if ((xBola + raioBola) < (xRaquete - 10))
      {
        colidiu = false;
      } 
     else if ((yBola > (yRaquete+45+raioBola) || yBola < (yRaquete-45-raioBola)))
      {
        colidiu =  false;
      } 
      else
      {
        colidiu = true;
      }
    }
    return colidiu;
  }
  
  
  
  void direcionaBola(int yRaquete) //Direciona a bola no eixo Y de acordo com a região do toque 
  {
    
      if(yBola > yRaquete)
      {
        velocYBola = -1;
      }
      
      else if(yBola < yRaquete)
      {
        velocYBola = 1;
      }
      
      else if(yBola == yRaquete)
      {
        velocYBola = 0;
      }
    }
  
      
}
