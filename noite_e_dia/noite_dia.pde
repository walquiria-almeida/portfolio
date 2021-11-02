/*////NOITE & DIA - Walquíria Almeida/////

O projeto é composto por duas cenas que respodem ao clique do mouse. Cada elemento da cena emite um som
de acordo com o clique e a cena escolhida.

Também é possível alternar entre o modo ambiente (elementos emitem sons característicos) e o modo musical (elementos
emitem notas musicais).

Os cenários são construídos tanto a partir de imagens incorporadas ao código quanto por funcionalidades do próprio 
Processing.

Todos os desehos foram produzidos pela autora. Os áudios do modo ambiente foram retirados de diversos canais do 
Youtube, todos sob licença Creative Commons. Os áudios do modo musical foram produzidos pela autora.


*/





import ddf.minim.*;   //Foi utilizada a biblioteca contribuída Minim para incorporação dos áudios

Minim minim;

AudioSample gato, janela, notebook, menina, guitarra, lixo, pop, cliqueDia, cliqueNoite, cliqueModo, ping, limpo, flip; 


Passaro passaro1, passaro2, passaro3;


PFont fonteBotao, fonteInicio;


PImage cenarioDia, cenarioNoite, musical, ambiente, paisagemDia, paisagemNoite, inicio, lixoImg, exclamacao, bilhete, bilheteVerso;



String tom1, tom2, tom3, tom4, tom5, tom6;     //Variáveis que receberão os nomes dos arquivos de áudio

float xBase, yBase, altura, delta;             //Variáveis que controlam a angulação do pisca-pisca

float xLixo, yLixo, distanciaLixo;

color corPisca;                                //Variável que recebe a cor do pisca-pisca

color corFonteM, corFonteA;                    //Variáveis que controlam a cor do texto nas cenas

boolean menu, noite, dia, modoMusical, modoAmbiente, lixoMove, lixoMostra, verso;   //Variáveis que verificam as cenas e os modos do programa




void setup()
{

  
  size(600, 600);
  

  menu = true;      //Inicia o programa pela tela de menu
  
  dia = false;
  
  noite = false;
  
  modoAmbiente = true;   //Inicia o programa com o modo ambiente ativado
  
  modoMusical = false; 
  
  lixoMove = false;
  
  lixoMostra = true;
  
  verso = false;


//Cria Objetos da classe pássaro

  passaro1 = new Passaro(1);    
  passaro2 = new Passaro(0.8);
  passaro3 = new Passaro(0.9);


//Carrega todas as imagens que serão utilizadas  


  inicio = loadImage("inicio.png");


  cenarioDia = loadImage("cenariodia.png");
  cenarioNoite = loadImage("cenarionoite.png");


  paisagemDia = loadImage("paisagemdia.png");
  paisagemNoite = loadImage("paisagemnoite.png");


  musical = loadImage("musical.png");
  ambiente = loadImage("ambiente.png");
  
  
  lixoImg = loadImage("lixo.png");
  xLixo = 491;
  yLixo = 566;
  
  
  exclamacao = loadImage("exclamacao.png");
  
  
  bilhete = loadImage("bilhete.png");
  bilheteVerso = loadImage("bilheteverso.png");
  
  

//Determina as características do texto das cenas


  fonteInicio = loadFont("AgencyFB-Reg-24.vlw");

  fonteBotao = loadFont("AgencyFB-Bold-24.vlw");

  corFonteA = color(255, 190, 0, 140);

  corFonteM = color(255, 190, 0, 140);

  textAlign(CENTER, CENTER);



//Carrega alguns dos áudios que serão utilizados



  minim = new Minim(this);
  
  
  cliqueDia = minim.loadSample("seleciona_dia.wav");   
  
  cliqueNoite = minim.loadSample("seleciona_noite.wav");
  
  pop = minim.loadSample("pop.wav");
  
  cliqueModo = minim.loadSample("clique.wav");
  
  ping = minim.loadSample("ping.wav");
  
  limpo = minim.loadSample("limpo.wav");
  
  flip = minim.loadSample("flip.wav");
  
  
  
  
}



void draw()
{
  
  imageMode(CORNER);
  
  
  //MENU INICIAL//
  
  
  if (menu == true)   
  {

    desenhaMenu();    //Imprime os elementos do menu inicial na tela
    
  }
  


  //CENAS//
  
  else 
  {
    
    //DIA//
    
  if (dia == true)
  {
    
  //distanciaLixo = dist(xLixo, yLixo, 530, 500);
    
    desenhaDia();   //Imprime os elementos da cena diurna na tela
    

    sonsDia();      //Atribui os nomes dos arquivos de som da cena diurna às variáveis tom(1-6)
    
    
    /*if (distanciaLixo < 15)
    {
  
    limpo.trigger();
  
    lixoMostra = false;
    xLixo = 491;
    yLixo = 566;
 
    }*/
  
    
  }



//NOITE//

  else if (noite == true)
  {    

    desenhaNoite();  //Imprime os elementos da cena noturna na tela
    
    sonsNoite();     //Atribui os nomes dos arquivos de som da cena noturna às variáveis tom(1-6)
  
  }
  
//GERAL - Elementos presentes nas duas cenas//

    desenhaBotoes();   //Imprime os botões de seleção dos modos na tela
    
    piscaPisca();      //Desenha e controla o pisca-pisca
    
  }


  //base();
  
}


//INTERAÇÃO - Clique simples do mouse//


void mousePressed()
{
  
  //MENU INICIAL//
  
  if (menu == true)
  {
    
    confereMenu();   //Configura a escolha da cena no menu inicial
    
  } 
  
  
  //CENAS//
  
  
  else 
  {

    defineModo();    //Determina a escolha entre modo ambiente e modo musical 


  //DIA - confere o clique nos elementos posicionados em locais restritos ao modo diurno - gato, janela e menina//


    if (dia == true) 
    {
      
    confereSonsDia();
    
    selecionaLixo();
    
    }
    
  //NOITE -  confere o clique nos elementos posicionados em locais restritos ao modo diurno - gato, janela e menina//
  
    
    else if (noite == true)
    {
      
    confereSonsNoite();
    
    viraBilhete();
    
    }
    
   //GERAL - confere o clique em elementos de posição igual nas duas cenas - notebook, guitarra, lixo e interruptor
    
    confereSonsGeral();
   

    alternaCenarios();   //alterna entre noite e dia (interruptor) e menu inicial (quadro)
    
    
  
  }
  
}
