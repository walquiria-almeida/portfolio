///ABLUBLE///

/*Projeto desenvolvido para o trabalho final das disciplinas de Arte e Mídia 1 e Cor, Forma e Composição;
Inspirado nas técnicas Dadaístas, o programa é um gerador de colagens mais ou menos aleatórias;
Ele busca reproduzir o processo de embaralhar, sortear e jogar para o alto fragmentos de papel, a fim de construir
composições sem a mediação de escolhas conscientes focadas em uma coerência estética e narrativa;
O usuário pode embaralhar as imagens movendo o mouse pela tela, e o clique do mouse reposiciona elas aleatoriamente;
Se o usuário desejar salvar sua composição na memória do computador, basta apertar qualquer tecla do teclado;
Como uma crítica à supervalorização da obra de arte, ao salvar a obra na memória, o usuário aciona sua auto-destruição na tela*/



PImage fundo, braco,torso, ampulheta, placa, gilete, pato, lagartixa, pessego;

int xtorso, ytorso, xampulheta, yampulheta, xbraco,ybraco, xplaca, yplaca, xgilete, ygilete, xpato, ypato, xlagartixa, ylagartixa, xpessego, ypessego;

float rottorso, rotampulheta, rotbraco, rotplaca, rotgilete, rotpato, rotlagartixa, rotpessego;

int xretan, yretan, lado, altura;

color corFundo;

boolean mover;

float opc;


void setup(){
  
  size(600,700,P2D);
  
  opc=2;  //Opacidade do fundo -> manipula efeitos de fade-in e fade-out
  
  
  //CARREGA IMAGENS//

  torso = loadImage("2-torso.png");
  ampulheta = loadImage("1-obj.png");
  braco = loadImage("3-braço.png");
  placa = loadImage("3-obj.png");
  gilete = loadImage("4-obj.png");
  fundo = loadImage("fundo8.png");
  pato = loadImage("5-obj.png");
  lagartixa = loadImage("6-obj.png");
  pessego = loadImage("7-obj.png");
 
  
  
  //COORDENADAS INICIAIS DAS IMAGENS -> Composição fixa que inicia o programa
 
  
  xtorso = width/2;
  ytorso = height/2;
  
  xampulheta = width/2;
  yampulheta = height/2;
  
  xbraco = width/2;
  ybraco = height/2;


  xplaca = width/2;
  yplaca = height/2;
  
  xgilete = (width/2)+20;
  ygilete = height/2;
  
  xpato = width/2;
  ypato = height/2;
  
  xlagartixa = width/2;
  ylagartixa = height/2;
  
  xpessego = width/2;
  ypessego = height/2;
  
 
  mover=false; //modo de auto-destruição
  
  
  imageMode(CENTER);
  
  corFundo = color (random(0,256),random(0,256),random(0,256));   //Filtro do fundo
   
  
}
void draw()
{
  
  
  opc=constrain(opc,0,140);
    
  opc+=0.1; //Fade-in do fundo no início do programa
  
  
  if(mover==false)  //Fundo só é pintado se não estiver no modo de auto-destruição
  {
    tint(corFundo,opc);
    image(fundo,width/2,height/2);
  }
  
   noTint();  //Remove filtro das outras imagens
   
   
  //AUTODESTRUIÇÃO - recortes se movimentam, sem que o fundo seja pintado por cima//
  
  if (mover==true)
  {
    moverRecortes();
  }
  
  
  //Carrega imagem normal do pato
    
  if (mover==false)
  {
      pato = loadImage("5-obj.png"); 
  }

 
  mostraRecortes();

}



//Pressionar o mouse sorteia novos locais para as peças, e para a auto-destruição caso ela esteja ativada

void mousePressed()
{
  
  opc=2;  //Reinicia fade-in do fundo
  
  
  if(mover==true)
  {
    mover=false;
  }
  
  sorteiaPosicao();
   
  sorteiaRotacao();
  
}



//Pressionar qualquer tecla do teclado faz com que a composição seja salva na memória e ativa o modo de auto-destruição

void keyPressed()
{
  
    saveFrame("output/abluble_####.png");
    mover=true;
  
}


//Mover o mouse pela tela embaralha os recortes

void mouseMoved()
{
  
  if(mover==false)
  {
    
    embaralhaRecortes();
    
  }
  
}


  
