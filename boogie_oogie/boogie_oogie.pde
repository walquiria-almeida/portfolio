/* 
BOOGIE - OOGIE

Cria uma sequência de quadrados concêntricos em que as cores mudam gradualmente de acordo com o padrão:
CLIQUE ESQUERDO - Vermelho ao Amarelo;
CLIQUE CENTRO - Amarelo ao Verde;
CLIQUE DIREITO - Magenta ao Azul;
*/


int px1, py1, px2, py2, px3, py3, px4, py4; //coordenadas iniciais dos quadrados pequenos da tela inicial

int gx1, gy1, gx2, gy2, gx3, gy3, gx4, gy4; //coordenadas iniciais dos quadrados maiores

int r2, g2; //componentes vermelha e verde da cor - quadrados maiores

String titulo, instrucao; //textos da tela inicial



/// TELA INICIAL ///

void setup ()
{
  
    background(0);
    size(600, 600);
    noStroke();
  
  
    textos(60,24);   //função com os textos da tela incial - paramêtros: fonte do título e das instruções
  
  
    //QUADRADOS 
  
    posicaoUm();     //função com as coordenadas do primeiro quadrado pequeno
  
    quadradoPequeno(245,245,0);   //função que desenha o primeiro quadrado pequeno - parâmetros: cor inicial

    posicaoDois();  
 
    quadradoPequeno(45,200,0);
    
    posicaoTres();
 
    quadradoPequeno(245,0,245);
    
    
    //Valores iniciais de vermelho e verde para os quadrados maiores
    
    r2 = 245;    
    g2 = 245;  
    
}



void draw()
{
  
}


//// INTERAÇÃO ////


void mousePressed()
{
  
    background(0);
    
    
  
    //CLIQUE DIREITO - MAGENTA AO AZUL//
    
    
  
    if(mouseButton == RIGHT)
    {
    
      posicaoQuadradoG();      //função com a posição incial dos quadrados maiores
  
      if (r2 > 45)             //se r2 for maior que 45, em cada loop a quantidade de vermelho diminuirá
      {
    
        for (int nq = 0; nq <= 8; nq++)  //desenha 9 quadrados sucessivos
        {
    
          fill (r2, 0, 245);   //preenchimento em tons de magenta
    
          quadradoGrande();    //função que desenha a sequência de quadrados
    
          r2 -= 25;            //diminui a quantidade de vermelho
    
        }
        
       }
       
       else     //se r2 for menor ou igual a 45, em cada loop a quantidade de vermelho aumentará
       {
         
        for (int nq = 0; nq <= 8; nq++)
        {
    
          fill (r2, 0, 245);     //quantia variável de vermelho, sem verde, e quantia fixa de azul
    
          quadradoGrande();
    
          r2 += 25;  //aumenta a quantidade de vermelho
    
         }
         
        }
        
       }
  
  
  
  //CLIQUE ESQUERDO - VERMELHO AO AMARELO//
  
  
  
       else if (mouseButton == LEFT)  //mesma mecânica, porém o componente verde é somado ou subtraído
       {
 
         posicaoQuadradoG();
  
         if (g2 > 45)
         {
  
           for (int nq = 0; nq <= 8; nq++)
           {
    
              fill (245, g2, 0);   //quantia fixa de vermelho, quantia variável de verde, e sem azul
    
              quadradoGrande();
    
              g2 -=25;
    
            }
            
           }
  
           else 
           {
             
             for (int nq = 0; nq <= 8; nq++)
             {
    
                fill (245, g2, 0);
    
                quadradoGrande();
    
                 g2 += 25;
    
              }
              
             }
             
          }
          
          
          
     //CLIQUE DO CENTRO - AMARELO AO VERDE//
     
     
     
          else  //mesma mecânica do primeiro, porém a quantidade de verde é fixa, e a de azul é zero
          {
            
            posicaoQuadradoG();
    
            if (r2 > 45)
            {
    
              for (int nq = 0; nq <= 8; nq++)
              {
    
                fill (r2, 200, 0);
    
                quadradoGrande();
    
                r2 -= 25;
    
                }
                
               }
  
             else
             {
                 
               for (int nq = 0; nq <= 8; nq++)
               {
    
                 fill (r2, 200, 0);
    
                 quadradoGrande();
    
                 r2 += 25;
    
                }
                
               }
               
              }
              
            }


  
