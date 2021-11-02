//DESENHA A CENA NOTURNA//


void desenhaNoite()
{
  
  //FUNDO
  
  image(paisagemNoite, 0, 100);

  //CENARIO

  image(cenarioNoite, 0, 0); 
   
  
  
  //BILHETE 
  
  image(bilhete, 334, 178);     //frente do bilhete
  
  
  if (verso == false)
  {
  
    if (mouseX > 334 && mouseX < 398 && mouseY > 178 && mouseY < 242)   //quando o mouse passa na frente do bilhete
    {
      
    image(exclamacao, 350, 140);
    
    }
    
  }
  
  if (verso == true)     //vira o bilhete - imprime a imagem do verso por cima
  {
    
    image(bilheteVerso, 334, 178);
    
  }
   
}


//ATRIBUI OS NOMES DOS ARQUIVOS DE SOM DO MODO NOTURNO ÀS VARIÁVEIS TOM(1-6)


void sonsNoite()
{
  
  //MODO AMBIENTE
  
    if (modoAmbiente == true)
    {
      
      tom1 = "gato_noite.wav";
      tom2 = "janela_noite.wav";
      tom3 = "notebook_noite.wav";
      tom4 = "menina_noite.wav";
      tom5 = "guitarra_noite.wav";
      tom6 = "lixo_noite.wav";
      
    } 
    
    
   //MODO MUSICAL
   
    else if (modoMusical == true)
    {
      
      tom1 = "snaph.wav";
      tom2 = "kick.wav";
      tom3 = "hihat.wav";
      tom4 = "clap.wav";
      tom5 = "snare.wav";
      tom6 = "keys.wav";
      
    }
    
    
}
