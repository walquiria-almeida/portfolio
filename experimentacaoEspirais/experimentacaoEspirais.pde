//Experimentação artística com funções de rotação, seno, mapeamento do mouse e translate//
//Código inspirado pelo vídeo "Creative Coding Art Tutorial | How To Code Spiral Generative Art in Processing" do canal "Art Now Coding"//

//Clique no mouse para alternar entre modo pintura e modo visualização de formas//


float angulo;
color cor;

boolean fundo;

void setup()
{
  
  size(500,500);
  
  background(0);
  
  angulo = random(300,600); //a cada execução do programa, um novo padrão de rotação é escolhido aleatoriamente
  
  cor = color(random(0,255),random(0,255),0); //a cor também é escolhida aleatoriamente a cada execução
  
  fundo = true; //inicia no modo de visualização das linhas
  
}

void draw()
{
  
  if (fundo)
  {
  background(0);
  }
  
  
  stroke(255);
  
  
  float s = map(mouseX, 0, width,260, 500); //mapeia uma nova escala para os valores de mouseX -> determinam a posição Y da segunda linha
  
  
  translate(mouseX, mouseY); //transpõe a origem da tela para a posição do mouse -> permite a movimentação de toda a composição
  
  
  
  float onda = sin(radians(frameCount));  //determina a posição inicial Y da linha de acordo com o frameCount
  
  float o = onda * map(mouseY,0,height,0,2500);  //permite que o valor obtido em onda atinja um valor significativo, de acordo com a posição Y do mouse
  
  
  
  for(int i=0; i < 500; i++) //cria as linhas
  {
    
    rotate(angulo); //a rotação das linhas é aleatoriamente determinada na inicialização do programa
    
    
    stroke(cor);
    
    line(400,i-o, -width/2, i++);  //a mudança constante dos valores de "o", "s", e "i" gera o movimento espiral das linhas
    
    
    stroke(255,140);
    line(0,i-o/2, (width/2)+s, i++);
    
 
  }
}


//clique do mouse altera entre os modos de visualização de linhas e de pintura

void mousePressed()
{
  fundo = !fundo;
}
