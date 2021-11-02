//EXECUTA OS SONS DA CENA DIURNA DE ACORDO COM A POSIÇÃO DO CLIQUE DO MOUSE - posições exclusivas dessa cena


void confereSonsDia()
{

 //GATO  - MIADO
 
      if (mouseX > 0 && mouseX < 75 && mouseY > 275 && mouseY < 450)
      {
        
        gato = minim.loadSample(tom1);
        gato.trigger();
        
      }
      
  //JANELA - BEM-TE-VI

      if ((mouseX > 0 && mouseX < 300 && mouseY > 100 && mouseY < 225)||(mouseX > 0 && mouseX < 200 && mouseY > 100 && mouseY < 275)||(mouseX > 75 && mouseX < 200 && mouseY > 275 && mouseY < 325))
      {
        
        janela = minim.loadSample(tom2);
        janela.trigger();
        
      }
      
  //MENINA - DIGITAÇÃO

      if (mouseX > 200 && mouseX < 400 && mouseY > 225 && mouseY < 600)
      {
        
        menina = minim.loadSample(tom4);
        menina.trigger();
        
      }
    
}



//CLIQUE NO PAPEL COLOCA A POSIÇÃO X E Y EM FUNÇÃO DO MOUSE

void selecionaLixo()
{
  if (mouseX > 475 && mouseX < 507 && mouseY > 550 & mouseY < 582)
  {
 
      lixoMove = true;
 
   }
   
}
