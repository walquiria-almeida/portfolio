//PRIMEIRO ATO

function primeiroAto()
{
  //CENA UM - VIDA PROGRESSIVE BACKGROUND//
  
   
 
  
  if (cenaUm)
  {
  
    ffb = constrain(ffb, 0.6, 0.92);

    pVida.mirror = pVida.MIRROR_HORIZONTAL;
    pVida.imageFilterFeedback = ffb;

    pVida.update(video1);
    
    

    if (milisegundos > 10000 && milisegundos < 68000)
    {

    pVida.progressiveBackgroundFlag = true;

    image(pVida.backgroundImage,0,0);
    
    }
 
  
//INTERTÍTULO 
    
    fill(0, opc);
    rect(0,0,640,480);

    fill(255, opc2);
    textSize(64);
    textAlign(CENTER);
    text('Primeiro Ato',width/2, height/2);
  
  opc -= 5; 
  opc2 -=10;
    
 
  //TOCA ÁUDIO
  
  if (milisegundos > 10000 && milisegundos < 87000)
  {
    um_zero.play();
  }
  
  else if (milisegundos > 87000)
  {
    um_zero.stop();
  }
  
    
  //MODIFICA IMAGEM
  
  if(milisegundos > 34000 && milisegundos < 44000)
  {
    
    ffb = 0.7;
  }
  
  
  if(milisegundos > 44000 && milisegundos < 64000)
  {
  
    ffb+=0.005;
  }
  
  else if(milisegundos > 67000 && milisegundos < 68000)
  {
   
    fill(0);
    rect(0,0,640,480);
    cenaUm = false;
    cenaDois = true;
    
  }
  }
    
  
  //CENA DOIS - PARTICULAS//
  
  else if (cenaDois)
  {
  
   
   for(var i = 0; i < p.length; i++)
  {
    p[i].move();
    p[i].cria();  
  }
 
    
  if (milisegundos > 89000 && milisegundos < 90000)
    {
      
      cenaTres = true;
      cenaDois = false;
    
    }
    
  }
 
}

  
  
