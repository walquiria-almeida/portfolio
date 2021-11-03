//Experimentação artística com funções de rotação, seno, mapeamento do mouse e cálculo da distância//

//Clique no mouse para alternar entre modo pintura e modo visualização de formas//


float x, y;

color cor;
boolean fundo;

float r, g, b, tam;


void setup() 
{
  
  size(500,500);
  
  background(255);
  
  x = width/2;
  y = height/2;
  
  fundo = false; //começa com o fundo desativado, efeito de pintura
}



void draw()
{
  
  if (fundo == true) //pinta o fundo a cada refresh do draw, permite a visualização do movimento das formas
  { 
 background(255);
  }
  
   //a posição do mouse determina a cor dos elementos, mas é feita uma conversão das coordenadas do mouse para a escala desejada
 
   r = map(mouseX, 0, width, 100, 255);
   g = map(mouseY, 0, height, 100, 255);
   b = random(0,255);
   
  
  
  float grau = sin(radians(frameCount)); //a distância entre as linha é determinada pelo frameCount do programa -> permite animação com o uso de loop
  
  
  tam = dist(x*grau, y, pmouseX, pmouseY); //tamanho total da linha
  
 
  
  for (int i = 0; i <100; i++) //cria as linhas
  {

    
    cor = color (r,g,b);
  
    stroke(cor);
    strokeWeight(2);
  
    line(x*grau,y, pmouseX,pmouseY);  //cria a linha, baseada no frameCount e na posição prévia do mouse

    rotate(20); //distribui as linhas e retângulos circularmente
  
  
    noStroke();
    
    fill(cor,140);
    
    rect(((x*grau)+(tam/2)), y, 20, 20); //cria um retângulo a partir do meio da linha
    
    
    pushMatrix(); //restringe a transformação apenas a essa forma
    
    translate(100,100);
    rect(((x*grau)-(tam/2)), -y, 20, 20);  //cria outro retângulo, acima do primeiro
    
    popMatrix();
  
  
  }
}


//clique do mouse alterna entre modo de pintura e modo de visualização das formas

void mousePressed()
{
  fundo = !fundo;
}
