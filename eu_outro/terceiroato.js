//TERCEIRO ATO


function terceiroAto()
{
  
  
  
  if (cenaCinco)
   {
     
     //TOCA ÁUDIO
     
    if (milisegundos > 151000 && milisegundos < 253000)
        {
          tres_zero.play();
        }

        else if (milisegundos > 253000)
        {
          tres_zero.stop();
        }

     
    //INTERTÍTULO
     
    fill(0, opc5);
    rect(0,0,640,480);

    fill(255, opc6);
    textSize(64);
    textAlign(CENTER);

    text('Terceiro Ato',width/2, height/2);

    opc5 -= 1; 
    opc6 -= 2;
     
     
    //MUDA IMAGEM

    if (opc5 <= 0)
    {
      
      pVida.update(video1);
      
      pVida.differenceImageFlag = true;
      pVida.progressiveBackgroundFlag = false;
      
      
      image(pVida.differenceImage,0,0);
      
      
      //GLITCH
     
      if (x > width || x < 0 || y > height || y < 0)
  {
    vel *=-1;
  }
  
  if (x2 > width || x2 < 0 || y2 > height || y2 < 0)
  {
    vel2 *=-1;
  }
  
  if (x3 > width || x3 < 0 || y3 > height || y3 < 0)
  {
    vel3 *=-1;
  }
  
  
    x+= vel;
    y+= vel;
  
    x2+= vel2;
    y2+= vel2;
  
    x3+= vel;
    y3+= vel;
        
        
        
        blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), DODGE);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), DIFFERENCE);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), MULTIPLY);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), HARD_LIGHT);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), BURN);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), LIGHTEST);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), DARKEST);
   
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), DODGE);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), DIFFERENCE);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), MULTIPLY);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), HARD_LIGHT);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), BURN);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), LIGHTEST);
  
      blend(video1,random(0,width), random(0,height), random(40,150), random(40,150), random(0,width), random(0,height), random(40,150), random(40,150), DARKEST);
  
   blend(video1,width/2, height/2, 100, 70, x, y, 200, 140, DODGE);
  
   blend(video1,width/2, height/2, 100, 70, x2, y2, 200, 140, DODGE);
  
  blend(video1,width/2, height/2, 100, 70, x3, y3, 200, 140, DODGE);
    }
   }     
      
}