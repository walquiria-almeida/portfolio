class Pontos
{
  int pontuacao;
  int fase;
  
  boolean venceu;
  boolean nivel2,nivel3;
  boolean revive;
  
  Pontos()
  {
    pontuacao = 0;
  }
  
  
  void mostrarPontos() //Escreve a pontuação na tela
  {
    String texto = "000";
    texto = ""+nf(pontuacao,3);
    
    fill(255);
    textAlign(CENTER,CENTER);
    textSize(24);
    text(texto,width/2, 40);
  }
  
  
  void contarPontos() //Conta os pontos e define o nível 
  {
    pontuacao++;
  
    if (pontuacao == 70)
    {
      nivel2 = true;
      revive = true;
    }
    
    else if(pontuacao == 140)
    {
     
      
      nivel2 = false;
      nivel3 = true;
      revive = true;
    }
    
    else if(pontuacao == 230)
    {
      venceu=true;
    }
  }
  
  
  
  void mostraNivel()  //Mostra o nível atual na tela
  {
    if (pontuacao < 70)
    {
      textSize(20);
      text(1,380, 480);
    }
    
    else if(pontuacao > 70 && pontuacao < 140)
    {
    
       textSize(20);
      text(2,380, 480);
    }
     else if(pontuacao > 140 && pontuacao < 230)
    {
    
      textSize(20);
      text(3,380, 480);
    }
  }
  
}
  
