class Raquete 
{
  int xRaquete;
  int yRaquete;
  
  int player;
  
  int tamRaquete; 
  
  int velocYRaquete;
  color cor;
  
  
  Raquete (int player_temp, int xRaquete_temp, int yRaquete_temp, int cor_temp)  //configurações da raquete são determinadas na sua criação
  {
    
    xRaquete = xRaquete_temp;
    yRaquete = yRaquete_temp;
    
    player = player_temp;
    
    cor = cor_temp;
    
    
    velocYRaquete = 10;
    tamRaquete = 90;
    
  }
  
  void criaRaquete()
  {
    noStroke();
    rectMode(CENTER);
    fill(cor);
    
    rect(xRaquete, yRaquete, 20, tamRaquete);
  }
  
  
  void moveRaquete()
  {
    yRaquete = constrain(yRaquete, 0+tamRaquete/2, height - tamRaquete/2); //Limita a movimentação da raquete dentro da tela
    
    //Player 2
    
    if(player == 2) 
    {
      if(keyCode == UP)
      {
        yRaquete-=velocYRaquete;
      }
      else if(keyCode == DOWN)
      {
        yRaquete+=velocYRaquete;
      }
    }
    
    
    //Player 1
    
    else if(player == 1)
    {
      if(key == 'w' || key == 'W')
      {
        yRaquete-=velocYRaquete;
      }
      else if(key == 's' || key == 'S')
      {
        yRaquete+=velocYRaquete;
      }
    }
  }
  
}
    
    
    
    
    
