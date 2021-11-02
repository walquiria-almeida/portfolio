//DETERMINA A ESCOLHA DE UMA CENA A PARTIR DO MENU INICIAL 


void confereMenu()
{
  
  //DIA
  
    if ((mouseX > width/2 && mouseY > height/2) || (mouseX > 500 && mouseX < 600 && mouseY > 100 && mouseY < height/2) || (mouseX > 400 && mouseX < 500 && mouseY > 200 && mouseY < height/2) || (mouseX > 100 && mouseX < 200 && mouseY > 500 && mouseY < 600)|| (mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY < 600))  
    {
      
      cliqueDia.trigger();   //dispara um som de escolha
      
      dia = true;            //ativa o modo diurno
      menu = false;          //desativa o menu
      
    } 
    
    
    //NOITE
    
    else if ((mouseX < width/2 && mouseY < height/2) || (mouseX > 0 && mouseX < 100 && mouseY > height/2 && mouseY < 500) || (mouseX > 100 && mouseX < 200 && mouseY > height/2 && mouseY < 400) || (mouseX > width/2 && mouseX < 400 && mouseY > 0 && mouseY < 200) || (mouseX > 400 && mouseX < 500 && mouseY > 0 && mouseY < 100))
    {
      
      cliqueNoite.trigger();
      
      noite = true;
      menu = false;
      
    }
    
}


//DETERMINA A ESCOLHA ENTRE MODO AMBIENTE E MODO MUSICAL 


void defineModo()
{
  
  //MODO MUSICAL
  
  if (mouseX > 20 && mouseX < 52 && mouseY > 550 && mouseY < 582)
    {
      
      cliqueModo.trigger();   //dispara um som de escolha
      
      modoAmbiente = false;   //desativa o modo ambiente
      modoMusical = true;     //ativa o modo musical
      
      corFonteM = color(255, 190, 0);  //torna a fonte do texto "Modo musical" opaca
      corFonteA = color(255, 190, 0, 140);  //torna a fonte do texto "Modo ambiente" transparente
      
    }

  //MODO AMBIENTE

   if (mouseX > 70 && mouseX < 102 && mouseY > 550 && mouseY < 582)
    {
      
      cliqueModo.trigger();
      
      modoAmbiente = true;
      modoMusical = false;
      
      corFonteA = color(255, 190, 0);
      corFonteM = color(255, 190, 0, 140);
      
    }
}



//EXECUTA OS SONS DA CENA ATIVADA DE ACORDO COM A POSIÇÃO DO CLIQUE DO MOUSE - posições comuns nas duas cenas

void confereSonsGeral()
{
  
  //NOTEBOOK - DIA: ERROR - NOITE: NETFLIX
  
   if (mouseX > 80 && mouseX < 200 && mouseY > 325 && mouseY < 450)
    {
      
      notebook = minim.loadSample(tom3);
      notebook.trigger();
      
    }

  //GUITARRA - DIA: WISH YOU WERE HERE - NOITE: HOUSE OF THE RISING SUN


    if (mouseX > 425 && mouseX < 525 && mouseY > 80 && mouseY < 380)
    {
      
      guitarra = minim.loadSample(tom5);
      guitarra.trigger();
      
    }
    
  //LIXO - DIA: WINDOWS RECYCLE - NOITE: AMASSANDO PAPEL

    if (mouseX > 450 && mouseX < 575 && mouseY > 450 && mouseY < 600)
    {
      
      lixo = minim.loadSample(tom6);
      lixo.trigger();
      
    }
}


//ALTERNA ENTRE AS TELAS

void alternaCenarios()
{
  
  
  //INTERRUPTOR - DIA VS NOITE - inverte o valor das variáveis boolenas dia e noite
  
  
  if (mouseX > 565 && mouseX < 580 && mouseY > 250 && mouseY < 295)
    {
      
      ping.trigger();  //SOM DE IDEIA
      noite = !noite; 
      dia = !dia;
      
      verso = false;
       
    }
    
    
  //QUADRO - VOLTA PARA O MENU INICIAL


  if (mouseX > 325 && mouseX < 355 && mouseY > 125 && mouseY < 155)
    {
      
    pop.trigger();  //SOM DE CHAMPAGNE
    
    dia = false;
    noite = false;
    menu = true;
    
    lixoMove = false;
    lixoMostra = true;
    
    verso = false;
    
    }
    

    
}
  
