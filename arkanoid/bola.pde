class Bola
{
  
  float xBola;
  float yBola;
  float velXBola, velYBola;
  
  float distNave;
  
  boolean perdeu;
  
  
  Bola()
  {
    
    xBola = width/2;
    yBola = height-106;
    velXBola = 2;
    velYBola = 2;
    
    perdeu = false;

  }
  
  void criaBola()
  {
    
    perdeu = false;
    
    velYBola = constrain(velYBola,-6,6); //Limita a velocidade que a bola pode atingir
    
    noStroke();
    
    fill(0,0,255);
    
    ellipse(xBola,yBola, 12,12);
  }
  
  
  
  void moveBola()
  {
    
    perdeu = false;
    
    xBola+=velXBola;
    yBola-=velYBola;
    
    
    if (xBola <= 6 || xBola >= width-6)  //rebate bola se ela bate nas extremidades da tela
    {
      velXBola*=-1;
    }
    
   if (yBola <= 6)
    {
      velYBola*=-1;
    }
    
    else if (yBola > height-10)   //reinicia a bola se ela passa pela nave
    {
      reiniciaBola();
    }
  }
    
    
    
    void reiniciaBola()
    {
        xBola = width/2;
        yBola = height-140;
        
        
        if(velYBola < 0)
        {
        velYBola*=-1;
        }
        
        perdeu = true;
       
      }
    
    
    boolean reiniciaNave()
    {
      if(perdeu)
      
     {
       return true;
     
     }
     return false;
    }
        
    
    
  
  
  void rebateBola()
  {
    velYBola*=-1;
  }
  
  void aceleraBola()
  {
    
    velYBola*=1.5;
  }
    
   
     
    
    
    
}
  
    
