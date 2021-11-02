Bola bola;

PFont fonte;

PImage bolaImg;

boolean telaInicial;


void setup()
{
  
  size(350,500);
  
  bola = new Bola();  //cria novo objeto da classe Bola
  
  telaInicial = true;  //começa pela tela inicial
  
  
  //Elementos gráficos 
  
  fonte = createFont("GILSANUB.TTF", 1);

  textFont(fonte);
  noStroke();
  
  bolaImg = loadImage("bola2.png");
  
  
}

void draw()
{
  
  background(240);
  
  //TELA INICIAL
  
  if (telaInicial)
  {
    fill(240);
    rect(0, 0, width, height);
    
    
    textAlign(CENTER);
    fill(0, 200, 200);
    textSize(30);
    text("PEGUE A BOLA", width/2, height/2 - 100);
  
    
    fill(0);
    textSize(14);
    text("Clique na bola para manter ela no ar!", width/2, height/2 + 100);
    
    
    imageMode(CENTER);
    image(bolaImg,width/2, height/2);
    
  } 
  
  //JOGO
  
  else 
  {
  
  bola.mudaCor(); //Altera aparência da bola de acordo com a pontuação
  bola.criaBola(); //Cria a bola
  
  bola.moveBola();  //Move a bola
  bola.mostraPontuacao();  //Mostra a pontuação na tela
  
  }
  
}

void mousePressed()
{
  
  if (telaInicial) //O clique inicia o jogo
  {
    telaInicial = false; 
  }
  
  if(dist(bola.xBola, bola.yBola, mouseX, mouseY) < bola.raioBola) //Clique na área da bola dispara a ação
  {
    
  bola.cliqueBola();
  }
}
