///PONG///


Bola bola;
Raquete raquete1, raquete2;

PFont fonte;

boolean telaInicial;

void setup()
{
  
  size (500,400);
  
  
  bola = new Bola();  //cria bola
  
  raquete1 = new Raquete(2, width-10,height/2, color(255,0,0));  //cria raquetes
  raquete2 = new Raquete(1, 10, height/2, color(0,0,255));
  
  
  //Elementos gráfcos//
  fonte = createFont("PressStart2P-Regular.ttf", 1);
  textFont(fonte);
  
  //Começa no menu//
  
  telaInicial = true;
  
  
}

void draw()
{
  background(0);
  
  
  //Menu Inicial//
  
  if(telaInicial)
  {
    fill(0);
    rect(0, 0, width, height);
    
    
    textAlign(CENTER);
    fill(0, 0, 255);
    textSize(40);
    text("PONG", width/2, height/2-100);
    
    textSize(12);
    fill(255, 0, 0);
    text("Clique para começar", width/2, height/2 );
    
    textSize(12);
    fill(0, 0, 255);
    text("Player 1", 80, height-100);
    text("S", 150, height-95);
    text("W", 150, height-115);
    
    textSize(12);
    fill(255, 0, 0);
    text("Player 2", 80, height-35);
    text("DOWN", 170, height-25);
    text("UP", 160, height-50);
    
    fill(255,255,0);
    
    arc(width, height, 200,200, PI/4,3*PI/2);
    
  }
  
  //JOGO//
  
  
  else
  
  {
 
    
  stroke(255);
  line(width/2,0,width/2,height); //divisória
  
  //CONTROLE DA BOLA
  
  bola.criaBola();
  bola.moveBola();
  bola.aceleraBola();
  

  //MOSTRA RAQUETES
  raquete1.criaRaquete();
  raquete2.criaRaquete();
  
  
  //COLISÃO
  
  if(bola.colisao(raquete1.player, raquete1.xRaquete, raquete1.yRaquete))
  {
    
    bola.inverteVelocidadeX();
    bola.direcionaBola(raquete1.yRaquete);
    bola.contaPontos();
    bola.aceleraBola();
    
  }
  
  
  else if(bola.colisao(raquete2.player, raquete2.xRaquete, raquete2.yRaquete))
  {
    bola.inverteVelocidadeX();
    bola.direcionaBola(raquete2.yRaquete);
    bola.contaPontos();
    bola.aceleraBola();
  
  }
  
  //PLACAR
  bola.mostraPontos();
  
  //FIM DE JOGO
 
  bola.perdeu();
  bola.mostraFim();
  
  }
}

//TECLAS MOVIMENTAM A RAQUETE

void keyPressed()
{
  
  raquete1.moveRaquete();
  raquete2.moveRaquete();
}
  
  
//CLIQUE DO MOUSE INICIA O JOGO 
void mousePressed()
{
  telaInicial = false;
}
  
  
