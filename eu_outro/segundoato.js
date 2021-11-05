//SEGUNDO ATO


function segundoAto()
{
  
  
   if (cenaTres)
   {
     
    //TOCA ÁUDIO
     
    if (milisegundos > 90000 && milisegundos < 149000)
      {
        
        dois_zero.play();
      }
      
      else if (milisegundos > 149000)
      {
        dois_zero.stop();
      }
     
     
  //INTERTÍTULO
     
    fill(0, opc3);
    rect(0,0,640,480);

    fill(255, opc4);
    textSize(64);
    textAlign(CENTER);

    text('Segundo Ato',width/2, height/2);

    opc3 -= 1; 
    opc4 -= 2;
     
     
    //MUDA IMAGEM
     
    if (opc3 <= 0)
    {
     
    for(var i = 0; i < p.length; i++)
  {
    p[i].move();
    p[i].cria();  
  }
       blendMode(DIFFERENCE);
      
      
      if (milisegundos > 127000 && milisegundos < 151000)
      {
        
      fill(0);
      rect(0,0,640,480);
      cenaQuatro = true;
      cenaTres = false;
      
      }
    }
   }
      
  
  
      else if (cenaQuatro)
      {
        
        
        blendMode(BLEND);
        
        fill(0);
        rect(0,0,640,480);
        
        push();
        translate(video1.width, 0);
        scale(-1,1);
        image(video1, 0,0);        
        pop();
        
        
        
        
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
        
        
        
        //GLITCH
        
        
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
      
      
  
      if (milisegundos > 150000 && milisegundos < 151000)
          {
            cenaCinco = true;
            cenaQuatro = false;
            
          }
      }
  
  }
  

       