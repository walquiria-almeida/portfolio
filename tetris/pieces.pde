//PEÇAS DO JOGO

class Pieces

{
  //Cada peça é armazenada como uma matriz bidimensional, que contém os valores X e Y das origens de cada bloco que a compõe
  
  int [][] quad = {{0,0}, {1,0}, {0,1}, {1,1}};
  int [][] linha = {{0,0}, {1,0}, {2,0}, {3,0}};
  int [][] essi = {{0,0}, {1,0}, {1,1}, {2,1}};
  int [][] ze = {{0,1}, {1,0}, {1,1}, {2,0}};
  int [][] eli = {{0,0}, {1,0}, {2,0}, {2,1}};
  int [][] jota = {{0,0}, {1,0}, {0,1}, {2,0}};
  int [][] te = {{0,0}, {1,0}, {1,1}, {2,0}};
  
  int [][] ativa;  //peça disponível para jogar
  int [][] ativaCopia; //cópia da peça para possibilitar a rotação

  
  int r, g, b; //cor da peça
  
  int escolha; //escolhe aleatoriamente qual a próxima peça a cair
  
  int tam; //tamanho dos blocos que compõem as peças
  
  int medidorVeloc; //mede a velocidade da queda
  int medidorRotac; //mede o número de rotações da peça
  
  boolean fundo; 
  
  int xPiece, yPiece; //coordenadas x e y da peça
  

  
  Pieces()
  {
    tam = 25;
    
    medidorVeloc = 0;
    
    escolha = (int)random(7);
    
    medidorRotac = 0;
    
    //ESCOLHE A PEÇA
    
    switch(escolha)
    {
      case 0:
      ativa = quad;
      r = 255;
      g = 255;
      break;
      
      case 1:
      ativa = linha;
      g = 255;
      b = 255;
      break;
      
      case 2:
      ativa = essi;
      r = 255;
      break;
      
      case 3: 
      ativa = ze;
      g = 255;
      break;
      
      case 4:
      ativa = eli;
      r = 255;
      g = 140;
      break;
      
      case 5:
      ativa = jota;
      r = 255;
      b = 255;
      break;
      
      case 6:
      ativa = te;
      b = 255;
      break;
      
    }
    
    ativaCopia = ativa; //passa o conteúdo da peça para a cópia
  }
 
   //cria a peça
   
    void createPiece()
    {
      fill(r,g,b);
      for(int i = 0; i < 4; i++)
      {
        rect(ativa[i][0]*tam, ativa[i][1]*tam, tam, tam);
      }
    }
    
    
    //controla a queda da peça, baseada no nível de dificuldade
    
    void fallingPiece(int dificuldade)
    {
      if(medidorVeloc%dificuldade == 0)
      {
      movePiece("BAIXO");
      }
      medidorVeloc++;
    }
    
    
    
    //limita o espaço de movimentação da peça de acordo com cada direção
    
    boolean limitPiece(String direcao)
    {
      switch(direcao)
      {
        case "DIREITA":
        for(int i = 0; i < 4; i++)
        {
          if(ativa[i][0] > 13)
          { 
            return false;
          }
        }
        break;
        
        case "ESQUERDA":
        for(int i = 0; i < 4; i++)
        {
          if(ativa[i][0] < 1)
          {
            return false;
          }
        }
        break;
        
        case "BAIXO":
        for(int i = 0; i < 4; i++)
        {
          if(ativa[i][1] > 25)
          {
            fundo = true;
            return false;
          }
        }
        break;
        
      }
      return true;
    }
        
    
    //movimenta a peça de acordo com a tecla pressionada
    
    void movePiece(String direcao)
    {
      if(limitPiece(direcao))
      {
      for(int i = 0; i < 4; i++)
      {
        if(direcao == "DIREITA")
        {
        ativa[i][0]++;
        }
        
        else if(direcao == "ESQUERDA")
        {
        ativa[i][0]--;
        }
        else if(direcao == "BAIXO")
        {
        ativa[i][1]++;
        }
      }
    }
    }
    
    
    //rotaciona a peça se ela não for um quadrado
    
    void rotatePiece()
   {
     
     if(ativa != quad)
     {
       
     int[][] rotaciona = new int [4][2]; //matriz bidimensional que armazena as coordenadas da peça rotacionada
     
     if(medidorRotac % 4 == 0)
     {
     for(int i = 0; i < 4; i++)
     {
       rotaciona[i][0] = ativaCopia[i][1] - ativa[1][0];
       rotaciona[i][1] = -ativaCopia[i][0] - ativa [1][1];
     }
     }
     
     else if(medidorRotac % 4 == 1)
     {
       for(int i = 0; i < 4; i++)
     {
       rotaciona[i][0] = -ativaCopia[i][0] - ativa[1][0];
       rotaciona[i][1] = -ativaCopia[i][1] - ativa [1][1];
     }
     }
     
     else if(medidorRotac % 4 == 2)
     {
       for(int i = 0; i < 4; i++)
     {
       rotaciona[i][0] = -ativaCopia[i][1] - ativa[1][0];
       rotaciona[i][1] = ativaCopia[i][0] - ativa [1][1];
     }
     }
     
     else if(medidorRotac % 4 == 3)
     {
       for(int i = 0; i < 4; i++)
     {
       rotaciona[i][0] = ativaCopia[i][0] - ativa[1][0];
       rotaciona[i][1] = ativaCopia[i][1] - ativa [1][1];
     }
     }
     
     ativa = rotaciona;  //atualiza a peça ativa para a peça rotacionada
   }
   }
   
   
   //confere a colisão entre as peças
   
   boolean colisao(PaintPiece pp2)
   {
     
     for(int i = 0; i < 4; i++)
     {
       xPiece = ativa[i][0];
       yPiece = ativa[i][1];
       
       if(xPiece >=0 && xPiece < 15 && yPiece >=0 && yPiece < 26)
       
       for(int z = 0; z < 3; z++)
       {
         if(pp2.pinta[xPiece][yPiece+1][z] != 0) //Se a peça tiver cor, acontece a colisão
         {
           return true;
         }
       }
     }
     return false;
   }
     
     //Mostra a próxima peça na barra lateral 
     
     void mostraProxima()
     {
       fill(255,0,255);
       textSize(12);
       text("Próxima peça:", width/2+190,50);
       
       noFill();
       
       stroke(255,255,0);
       rect(width/2 +125, 75, 125,100);
       rect(width/2 +120, 70, 135,110);
       
       stroke(255);
       
       fill(255,255,0);
       textSize(12);
       
       text("Cima: Rotaciona", width/2+190,height-150);
       text("Direita", width/2+143,height-125);
       text("Esquerda", width/2+148,height-105);
       text(": Movimenta", width/2+265,height-115);
       text("Baixo: Acelera", width/2+185,height-80);
       
       
       fill(r,g,b);
       
       for(int i = 0; i < 4; i++)
       {
         rect(ativa[i][0]*tam + width/2 + 150 , ativa[i][1]*tam +100, tam,tam);
       }
       
     }
      
       
}
