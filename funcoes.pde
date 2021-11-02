////////FUNÇÕES////////


//coordenadas iniciais do primeiro quadrado da tela inicial

void posicaoUm()
{
    px1 = 100;
    py1 = 200;
    px2 = 0;
    py2 = 300;
    px3 = 100;
    py3 = 400;
    px4 = 200;
    py4 = 300;
}


//coordenadas iniciais do segundo quadrado da tela inicial

void posicaoDois()
{
    px1 = 300;
    py1 = 400;
    px2 = 200;
    py2 = 500;
    px3 = 300;
    py3 = 600;
    px4 = 400;
    py4 = 500;
}


//coordenadas iniciais do terceiro quadrado da tela inicial

void posicaoTres()
{
    px1 = 500;
    py1 = 200;
    px2 = 400;
    py2 = 300;
    px3 = 500;
    py3 = 400;
    px4 = 600;
    py4 = 300;
}


//desenha os quadrados pequenos, e os colore de acordo com os parâmetros inseridos e sua posição na tela

void quadradoPequeno(int r, int g, int b)  //declara os argumentos que recebem os valores das componentes da cor
{
  for (int nq = 0; nq < 8 ; nq ++)
  {
    
    fill (r, g, b);     //preenchimento de acordo com os argumentos
  
    quad(px1, py1, px2, py2, px3, py3, px4, py4);
    
    //cria os quadrados concêntricos
    
    py1 += 10;      
    px2 += 10;
    py3 -= 10;
    px4 -= 10;
    
    //modifica a cor de acordo com a posição dos quadrados
    
    if (px4 < 200)  //primeiro quadrado
    {
      
      g-=35;
      
    }
    
    else if(px4 > 200 && px4 < 400)  //segundo quadrado
    {
      
      r+=35;
      
    }
    
    else  //terceiro quadrado
    {
      
      r-=35;
      
    }
    
  }
  
}


//escreve os textos da tela inicial

void textos (int fontetit, int fonteins)  //declara os argumentos que recebem os tamanhos das fontes
{
  
  fill(255);
  textAlign(CENTER,CENTER);
  
  
  //título
  
  titulo = "BOOGIE-OOGIE";
  textSize(fontetit);
  text(titulo, 300, 100);
  
  //instruções
  
  textSize(fonteins);
  
  instrucao = "CLIQUE";
  text(instrucao, 100, 420);
  
  instrucao = "ESQUERDO";
  text(instrucao, 100, 450);
  
  
  instrucao = "CLIQUE";
  text(instrucao, 500, 420);
  
  instrucao = "DIREITO";
  text(instrucao, 500, 450);
  
  
  instrucao = "CLIQUE";
  text(instrucao, 300, 340);
  
  instrucao = "CENTRO";
  text(instrucao, 300, 370);
  
}
  
  
//coordenadas iniciais dos quadrados grandes

void posicaoQuadradoG ()
{
  gx1 = width/2;
  gy1 = 0;
  gx2 = 0;
  gy2 = height/2;
  gx3 = width/2;
  gy3 = height;
  gx4 = width;
  gy4 = height/2;
}


//desenha os quadrados grandes na tela

void quadradoGrande()
{
    quad(gx1, gy1, gx2, gy2, gx3, gy3, gx4, gy4);
    
    gy1 += 30;
    gx2 += 30;
    gy3 -= 30;
    gx4 -= 30;
}
