//Pinta o fundo, consolida as peças no espaço e organiza a mecânica do jogo

class PaintPiece
{
  int [][][] pinta; //Matriz tridimensional que armazena as coordenadas de cada bloco e sua cor
  int r, g, b; 
  
  int tam;
  int xPiece, yPiece;
  
  int pontuacao;
  int dificuldade;

  
  PaintPiece()
  {
    pinta = new int [15][27][3]; 
    
    tam = 25;
    
    pontuacao = 0;
    dificuldade = 20; //determina a velocidade com que as peças caem, quando menor o valor, mais rápido elas caem
  }
  
  void paintBackground() //pinta a grade de retângulos pretos
  {
    
    for(int i = 0; i < 15; i++)
  {
    for(int j = 0; j < 27; j++)
    {
     r = pinta[i][j][0];
     g = pinta[i][j][1];
     b = pinta[i][j][2];
     
     stroke(255);
     strokeWeight(1);
     fill(r,g,b);
     
     rect(i*tam, j*tam, tam, tam);
     
   }
   }
   
   for(int i = 0; i < 27; i++) //Confere todas as linhas do espaço, e remove as linhas que forem preenchidas
   {
   if(confereLinha(i)){
     removeLinha(i);
     dificuldade-=1;
   }
   }
  }
  
  void paintBlocks(Pieces p)  //Consolida os blocos das peças no espaço
 {
    for(int i = 0; i < 4; i++)  //Armazena as coordenadas e cores da peça ativa que colidiu para consolidar ela no espaço
    {
      xPiece = p.ativa[i][0];
      yPiece = p.ativa[i][1];
      
      pinta[xPiece][yPiece][0] = p.r;
      pinta[xPiece][yPiece][1] = p.g;
      pinta[xPiece][yPiece][2] = p.b;
    }
 }


boolean confereLinha(int linhas)
{
  for(int i = 0; i < 15; i ++) //Confere as cores das linhas para saber se ela foi preenchida
  {
    if (pinta[i][linhas][0] == 0 && pinta[i][linhas][1] == 0 && pinta[i][linhas][2] == 0)
    {
      return false;
    }
  }
      return true;
}

  
  
  void removeLinha(int linhas) //remove a linha completa e reposiciona as demais
{
  
  int[][][] pintaCopia = new int [15][27][3]; //cria uma cópia das linhas acima e abaixo da linha a ser removida
  
  
  
  //ABAIXO//
  
  for(int i = 0; i < 15; i++)
  {
    for(int j = 26; j > linhas; j--)
    {
      for(int z = 0; z < 3; z++)
      {
      pintaCopia[i][j][z] = pinta[i][j][z];
      }
    }
  }
  
  //ACIMA//
  
  for(int l = linhas; l >=1; l--){
    for(int j = 0; j < 15; j++)
    {
      pintaCopia[j][l][0] = pinta[j][l-1][0];
      pintaCopia[j][l][1] = pinta[j][l-1][1];
      pintaCopia[j][l][2] = pinta[j][l-1][2];
    }
  }
  pinta = pintaCopia; //Consolida as cópias no novo espaço
  
  pontuacao+=10; //Cada linha completa soma 10 na pontuação
   
}


}





      
   
   
    
