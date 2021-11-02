//TETRIS---->baseado no método do canal Allen Thoe//



Pieces pieces, nextPiece;

PaintPiece pp;



boolean inicio;
boolean reinicia;
boolean jogo;

PFont fonte;


void setup()
{

  size(700, 675);

  inicio = true;
  reinicia = false;
  
  jogo = false;
  
  
  //cria a peça principal e a próxima peça

  pieces = new Pieces(); 
  nextPiece = new Pieces();
  
  //cria a grade e controla o estado do jogo

  pp = new PaintPiece();

  //elementos gráficos 
  
  fonte = createFont("PressStart2P-Regular.ttf", 1);
  textFont(fonte);


  
}

void draw()
{

  //TELA INICIAL//
  
  if (inicio)
  {
    
    
    noStroke();
    fill(0);
    rect(0, 0, width, height);
    
    
    rectMode(CENTER);
    
    
    stroke(255,255,0);
    
    rect(width/2,height/2-20, 650,200);
    rect(width/2,height/2-10, 670,200);
    
    
    fill(0);
    rect(width/2,height/2, 690,200);
   
    
    rectMode(CORNER);
   

    fill(255);

    textAlign(CENTER, CENTER);
    textSize(48);
    fill(255, 0, 255);
    text("TETRIS", width/2, height/2-50);
    
    
    fill(255, 255, 0);
    textSize(32);
    text("Clique para começar!", width/2, height/2 + 50);
   
    
  } 
  
  //JOGO//
  
  else 
  {
    //BARRA LATERAL//
    
    noStroke();
    fill(0);
    rect((width/2)+1, 0, width/2, height);

    textSize(24);
    fill(255, 0, 255);

    text("Pontuação:" + pp.pontuacao, width/2 + width/4 + 15, height/2);


    //MECÂNICA DO JOGO//
    
    pp.paintBackground();  //pinta a grade de retângulos pretos

    pieces.createPiece();  //cria a peça principal
    
    confereFundo();  //confere se a peça atingiu o fundo

    if (pieces.colisao(pp))  //se houver colisão, registra a peça no espaço 
    {
      pieces.fundo=true;
    }
    
    else
    {
      pieces.fallingPiece(pp.dificuldade); //se não houver colisão, a peça continua caindo
    }

    nextPiece.mostraProxima(); //mostra a próxima peça a cair
  }

}

//O teclado controla o movimento das peças

void keyPressed()
{

  if (keyCode == RIGHT)
  {
    pieces.movePiece("DIREITA");
  } else if (keyCode == LEFT)
  {
    pieces.movePiece("ESQUERDA");
  } else if (keyCode == DOWN)
  {
    pieces.movePiece("BAIXO");
  }
}


void keyReleased() //tecla para cima rotaciona a peça, é preciso rotacionar duas vezes, uma para o eixo X e outra para o eixo Y
{
  if (keyCode == UP)
  {
    pieces.rotatePiece();
    pieces.rotatePiece();
  }
  pieces.medidorRotac++;
}


//O clique do mouse inicia o jogo 

void mousePressed()
{
  inicio = false;
}


void confereFundo() //Consolida a peça no fundo e transforma a próxima peça na peça atual
{
  if (pieces.fundo)
  {
    drawPiece();
    pieces = nextPiece;
    pieces.fundo = false;
    nextPiece = new Pieces();
  }
}


void drawPiece()  //Permite acesso à peça pelo método da classe paintPiece
{
  pp.paintBlocks(pieces);
}
