//EXECUTA OS SONS DA CENA NOTURNA DE ACORDO COM A POSIÇÃO DO CLIQUE DO MOUSE - posições exclusivas dessa cena


void confereSonsNoite()
{
  
  //GATO - RONRONAR
  
      if (mouseX > 0 && mouseX < 75 && mouseY > 380 && mouseY < 450)
      {
        
        gato = minim.loadSample(tom1);
        gato.trigger();
        
      }


  //JANELA - GRILO
  
      if ((mouseX > 0 && mouseX < 300 && mouseY > 100 && mouseY < 225)||(mouseX > 0 && mouseX < 80 && mouseY > 225 && mouseY < 380)||(mouseX > 80 && mouseX < 250 && mouseY > 225 && mouseY < 325))
      {
        
        janela = minim.loadSample(tom2);
        janela.trigger();
        
      }


  //MENINA - GHIBLI

      if (mouseX > 250 && mouseX < 400 && mouseY > 225 && mouseY < 600)
      {
        
        menina = minim.loadSample(tom4);
        menina.trigger();
        
      }
      
    }



//VIRA O BILHETE - o clique do mouse sobre o bilhete faz ele virar


void viraBilhete()
{
  if (mouseX > 334 && mouseX < 398 && mouseY > 178 && mouseY < 242)
  {
    
     verso = !verso;
        
     if (verso == true)
     {
          
       flip.trigger();
        
     }
        
   }
}
