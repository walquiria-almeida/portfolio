/////ARKANOID/////


//Classes//
Bola bola;
Nave nave;
Pontos pontos;
Vidas vidas;
Barreira[] barreira0, barreira1, barreira2, barreira3, barreira4;


//Controle de estados//

boolean jogo;
boolean telaInicial;
boolean quintaBarreira;

//Elementos gráficos

PFont fonte;


void setup()
{

  size(400, 500);

  jogo = false;
  telaInicial = true;


  bola = new Bola();  // Cria objeto bola
  nave = new Nave();  //Cria objeto nave

  pontos = new Pontos();  //Cria objeto pontos
  vidas = new Vidas();   //Cria objeto vidas



  //Cria Barreiras//

  barreira0 = new Barreira[7];

  for (int i = 0; i < barreira0.length; i++)
  {
    barreira0[i] = new Barreira(25+(i*50), 90, 4);
  }

  barreira1 = new Barreira[7];

  for (int i = 0; i < barreira1.length; i++)
  {
    barreira1[i] = new Barreira(25+(i*50), 110, 3);
  }

  barreira2 = new Barreira[7];

  for (int i = 0; i < barreira2.length; i++)
  {
    barreira2[i] = new Barreira(25+(i*50), 130, 2);
  }

  barreira3 = new Barreira[7];

  for (int i = 0; i < barreira3.length; i++)
  {
    barreira3[i] = new Barreira(25+(i*50), 150, 1);
  }


  //Elementos gráficos//

  fonte = createFont("PressStart2P-Regular.ttf", 1);

  textFont(fonte);
}





void draw()
{

  background(0);
  
  //MENU INICIAL//

  if (telaInicial)
  {
    fill(0);
    rect(0, 0, width, height);
    
    
    textAlign(CENTER);
    fill(255, 0, 255);
    textSize(40);
    text("ARKANOID", width/2, height/2);
    
    textSize(12);
    fill(0, 0, 255);
    text("Clique para começar", width/2, height/2 + 100);
    
  } 
  
  
  //JOGO//
  
  else 
  {

    bola.criaBola();   //Mostra bola
    nave.criaNave();   //Mostra nave

    nave.moveNave();
    
    pontos.mostrarPontos();
    pontos.mostraNivel();
    vidas.criaVida();
    
    if (nave.iniciar)
    {
      jogo = true;
    }
    
    
    if (jogo)          //Bola se move só quando nave começa a se mover
    {
      bola.moveBola();
    }
    
    
    if (nave.tocouNave(bola.xBola, bola.yBola))  //Confere colisão da bola com a nave
    {
      bola.rebateBola();
    }

   
    if (bola.perdeu)   //Diminui vida quando a bola sai
    {
      vidas.perderVida();
      nave.reiniciaNave();
    }
    
    


///////BARREIRAS//////////


    for (int i = 0; i < barreira0.length; i++)
    {
      if (barreira0[i]!=null)    //Apenas se a barreira não tiver sido derrubada
      {
        barreira0[i].criaBarreira();

        if (barreira0[i].tocouBarreira(bola.xBola, bola.yBola))   //confere colisão com a bola
        {
          bola.rebateBola();
          bola.aceleraBola();
          pontos.contarPontos();

          if (barreira0[i].tipo == 1)  //destrói Barreira
          {
            barreira0[i] = null;
          } 
          
          else
          {
            barreira0[i].tipo--;   //diminui força da Barreira
          }
        }
      }
    }


    for (int i = 0; i < barreira1.length; i++)
    {
      if (barreira1[i]!=null)
      {
        barreira1[i].criaBarreira();
        if (barreira1[i].tocouBarreira(bola.xBola, bola.yBola))
        {
          bola.rebateBola();
          bola.aceleraBola();
          pontos.contarPontos();

          if (barreira1[i].tipo == 1)
          {
            barreira1[i] = null;
          } else
          {
            barreira1[i].tipo--;
          }
        }
      }
    }

    for (int i = 0; i < barreira2.length; i++)
    {
      if (barreira2[i]!=null)
      {
        barreira2[i].criaBarreira();
        if (barreira2[i].tocouBarreira(bola.xBola, bola.yBola))
        {
          bola.aceleraBola();
          bola.rebateBola();
          pontos.contarPontos();

          if (barreira2[i].tipo == 1)
          {
            barreira2[i] = null;
          } else
          {
            barreira2[i].tipo--;
          }
        }
      }
    }


    for (int i = 0; i < barreira3.length; i++)
    {
      if (barreira3[i]!=null)
      {
        barreira3[i].criaBarreira();
        if (barreira3[i].tocouBarreira(bola.xBola, bola.yBola))
        {
          bola.aceleraBola();
          bola.rebateBola();
          pontos.contarPontos();

          if (barreira3[i].tipo == 1)
          {
            barreira3[i] = null;
          } else
          {
            barreira3[i].tipo--;
          }
        }
      }
    }


    if (quintaBarreira)  //somente se a quinta barreira for ativada - Nível 3
    {

      for (int i = 0; i < barreira4.length; i++)
      {
        if (barreira4[i]!=null)
        {
          barreira4[i].criaBarreira();

          if (barreira4[i].tocouBarreira(bola.xBola, bola.yBola))
          {
            bola.rebateBola();
            bola.aceleraBola();
            pontos.contarPontos();

            if (barreira4[i].tipo == 1)
            {
              barreira4[i] = null;
            } else
            {
              barreira4[i].tipo--;
            }
          }
        }
      }
    }


///MUDANÇA DE NÍVEL - recria as barreiras, reinicia bola e restaura vida///

    if (pontos.revive)
    {
      vidas.restauraVida();
      pontos.revive=false;
    }

    
    if (pontos.nivel2)
    {

      nivel2();
      nave.reiniciaNave();
      bola.reiniciaBola();

      for (Barreira a : barreira0)
      {
        a.tocou=false;
      }
      for (Barreira b : barreira1)
      {
        b.tocou=false;
      }
      for (Barreira c : barreira2)
      {
        c.tocou=false;
      }
      for (Barreira d : barreira3)
      {
        d.tocou=false;
      }

      pontos.nivel2=false;
    } 
    
    
    else if (pontos.nivel3)
    {
      nivel3();
      nave.reiniciaNave();
      bola.reiniciaBola();

      quintaBarreira = true;


      for (Barreira z : barreira0)
      {
        z.tocou=false;
      }
      for (Barreira y : barreira1)
      {
        y.tocou=false;
      }
      for (Barreira x : barreira2)
      {
        x.tocou=false;
      }
      for (Barreira w : barreira3)
      {
        w.tocou=false;
      }
      for (Barreira v : barreira4)
      {
        v.tocou=false;
      }

      pontos.nivel3=false;
    }


////FIM DE JOGO////

    if (pontos.venceu)  //Vence
    {
      jogo = false;
      
      fill(0, 0, 255);
      rect(0, 0, width, height);
      
      fill(255);
      textSize(24);
      text("VOCÊ VENCEU!", width/2, height/2);
    }

    if (vidas.perdeuJogo)  //Perde
    {
      jogo=false;
      
      fill(255, 0, 0);
      rect(0, 0, width, height);
      textSize(24);
      fill(0);
      text("GAME OVER", width/2, height/2);
    }
  }
}

//Clique do mouse inicia o jogo//

void mousePressed()
{
  telaInicial = false;
}
