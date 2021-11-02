class Nave{
  
  int xNave;
  int yNave;
  int velNave;
  int largNave;
  
  boolean iniciar;
  
   Nave()
   {
     
     velNave = 4;
     largNave = 70;
     xNave = width/2-(largNave/2);
     yNave = height-100;
   }
   
   void criaNave()   //mostra a nave
   {
     noStroke();
     fill(255,0,255);
    
     rect(xNave, yNave, largNave,12);
    
     
   }
   
   void moveNave()  //setas do teclado movimentam a nave
   {
     
   if(keyPressed && keyCode == LEFT)
   {
     if(xNave > 0)
     {
       iniciar = true;
       xNave-=velNave;
     }
   }
   
   if(keyPressed && keyCode == RIGHT)
     {
       if(xNave < width-largNave)
       {
         iniciar=true;
         xNave+=velNave;
       }
     }
   }
     
      boolean tocouNave(float xBola, float yBola)  //Confere se a bola tocou na nave
  {
   
    
    if ((xBola+6) < xNave || xBola > (xNave+70))
    {
      return false;
    }
    if ((yBola+6) < yNave || yBola > yNave)
    {
      return false;
    }
    
    else
    {
      return true;
    }
  }
  
  
  void reiniciaNave()  //Reinicia a posição da nave
  {
    
     xNave = width/2-(largNave/2);
     yNave = height-100;
    
  }
      
}

 




     
     
   
   
     
  
