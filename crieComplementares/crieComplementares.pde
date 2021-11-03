 
   /////////CRIE COM AS COMPLEMENTARES/////////
   
   /*
   
   -> O programa possibilita que o usuário crie composições com pares de cores complementares;
   -> Cada par segue uma regra específica, e é ativado por uma seta do teclado (ESQUERDA, DIREITA OU PARA BAIXO);
   -> Parte dos elementos da composição são aleatórios, e mudam com o clique do mouse.

  */


//variáveis das formas
int xr, yr, lr, lr2, xe, ye, le;

//mecanica do programa
boolean az,vv,am;

//texto
String tit,ins;
int xins, yins;

//layout da tela inicial
float fun;
int diam;
int xa,ya;
int xv,yv;
int xam,yam;


        /////////TELA INICIAL/////////
        

void setup()
{
  
  fun = 240;    //cor do fundo e das setas
  
  size(900, 600);
  background(fun);
  
  az = false;         //no início, todas as possibilidades estão desativadas
  vv = false;
  am = false;
  
  diam = 200;        //diâmetro dos arcos
  
  noStroke();
  
 desenhaInicio();
 
}

        /////////INTERAÇÃO/////////
        
        
void keyPressed()  //setas do teclado escolhem os pares de cores complementares
{
  
  selecionaPares();

}    
        
        
   
void mousePressed() //clique do mouse cria as composições
{
   ///AZUL&LARANJA///
   
   if (az)    //vai ser executado apenas se o modo específico for ativado
  {
   azulLaranja();
  }


  ///////////VERMELHO&VERDE///////////
  
  
  else if (vv)   
  {
    
   vermelhoVerde();
    
  }
  
  
  ///////AMARELO&ROXO//////
  
  
  else if (am) //mesma dinâmica, mas as formas são desenhadas apenas nos cantos superior esquerdo e inferior direito
  {
    
    amareloRoxo();
    
  }
  
 }


void draw() 
{
}
