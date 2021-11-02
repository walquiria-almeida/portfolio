//TELA DE STANDBY - Simula uma tela de standby como a de um aparelho de DVD


Bola bola1, bola2, bola3;  //declara os objetos da classe Bola
Retangulo retangulo1, retangulo2;  //declara os objetos da classe Retangulo

color fundoCor; //variável que controla a cor do fundo

float alp;      //variável que controla a opacidade das formas


void setup ()
{
  
  size (600,600);
  rectMode(CENTER);
  
  noStroke();
  
  fundoCor = color(190,160,190);
  
  alp = 130; 
 
  //Cria objetos da classe Bola:
  
  bola1 = new Bola(50, 120,100, color(255,255,0, alp));   
  bola2 = new Bola(50, 480,100, color(255,255,0, alp));
  bola3 = new Bola(450, 50, 100, color(255,255,0, alp));
  
  //Cria objetos da classe Retangulo:
  
  retangulo1 = new Retangulo(50, 300, 100, color(255, 255, 0, alp));   
  retangulo2 = new Retangulo(200, 50, 100, color(255, 255, 0, alp));
  
  
  //INSTRUÇÕES
  
  println("CLIQUE DO MOUSE: ALTERA A COR DO FUNDO;"); 
  println("ROLAGEM DO MOUSE: VARIA A OPACIDADE DAS FORMAS;");
  println("QUALQUER TECLA: MUDA A POSIÇÃO INICIAL DAS FORMAS.");
 
}

void draw()
{
  
  background(fundoCor);
  
  
  //Bolas
  
  
  bola1.desenhaBola();     //chama o método que desenha a bola
  bola1.movimentaBola();   //chama o método que movimenta a bola
  bola1.rebateBola();      //chama o método que rebate a bola quando ela encosta no limite da tela
  
  bola2.desenhaBola();
  bola2.movimentaBola();
  bola2.rebateBola();
  
  bola3.desenhaBola();
  bola3.movimentaBola();
  bola3.rebateBola();
  
  
  //Retângulos
  
  
  retangulo1.desenhaRetangulo();   //chama o método que desenha o retângulo
  retangulo1.movimentaRetangulo(); //chama o método que movimenta o retângulo
  retangulo1.rebateRetangulo();    //chama o método que rebate o retângulo quando ele encosta nos limites da tela
  
  retangulo2.desenhaRetangulo();
  retangulo2.movimentaRetangulo();
  retangulo2.rebateRetangulo();
  

}

//INTERAÇÃO


void mousePressed()  //quando o mouse é pressionado, a cor do fundo muda aleatoriamente
{
  
   fundoCor = color(random(256), random(256), random(256));
  
}

void keyPressed()   //quando uma tecla é pressionada, a posição inicial das formas muda aleatoriamente
{
  
  bola1.sorteiaLocal();  //chama o método que sorteia coordenadas aleatórias de x e y
  bola2.sorteiaLocal();
  bola3.sorteiaLocal();
  
  retangulo1.sorteiaLocal();
  retangulo2.sorteiaLocal();
  
}  

void mouseWheel(MouseEvent event) //quando a roda do mouse é rolada, a opacidade das formas muda gradualmente 
{
  
  float rl; //variável local que recebe o valor -1 ou 1 de acordo com a rolagem -> (1) = para baixo  (-1) = para cima
  
  rl = event.getCount();
  
  alp = alp + (2*-rl); //rolar para cima aumenta a opacidade, rolar para baixo diminui a opacidade
  
  alp = constrain(alp,0,255); //limita os valores que a opacidade pode assumir de 0 a 255
  
}

  

  
