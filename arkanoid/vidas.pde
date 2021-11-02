class Vidas
{
  int vidaRestante;
  boolean perdeuJogo;
  
  Vidas() //Inicia o jogo com 4 vdas
  {
    vidaRestante = 4;
  }
  
  void criaVida()  //Mostra a quantidade de vidas na tela
  {
    fill(255,0,0);
    
    
    for (int i = 1; i <= vidaRestante; i++)
    {
      ellipse((i*20), 30, 15,15);
    }
  }
  
  
  void perderVida()  //Diminui a quantidade de vidas
  {
    vidaRestante--;
    
    if(vidaRestante == 0)
    {
      perdeuJogo = true;
    }
    
  }
  
  void restauraVida()  //Restaura a vida quando avança de nível
  {
    vidaRestante=4;
  }
  
}
  
   
