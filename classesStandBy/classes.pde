//BOLA


class Bola    //cria a classe 
{

  float x, y, diam;       //variáveis que determinam as propriedades da bola
  
  float velx, vely, acl;  //variáveis que determinam a velocidade horizontal e vertical e a aceleração da bola;
  
  color cor;   //variável que determina a cor da bola


  //CONSTRUTOR
  

  Bola (float xtemp, float ytemp, float diamtemp, color cortemp)   //declara variáveis temporárias que flexibilizam a classe
  {
    
    x = xtemp;
    y = ytemp;
    diam = diamtemp;
    
    cor = cortemp;
    
    velx = 3;
    vely = 3;
    
    acl = (-1.1);
    
  }


  //MÉTODOS


  void desenhaBola()   //método que desenha a bola
  {
    
    fill(cor);
    ellipse(x, y, diam, diam);
    
  }


  void movimentaBola()  //método que movimenta a bola
  {
    
    x += velx;
    y += vely;
    
  }


  void rebateBola()  //método que rebate a bola quando ela encosta nos limites da tela
  {
    
    if ((x >= width - (diam/2)) || (x <= (diam/2)))
    {
      
      velx = velx * acl;   //inverte a direção e aumenta a velocidade da bola
      
      cor = color(random(256), random(256), random(256),alp);  //muda a cor da bola aleatoriamente
      
    } 
    
    else if ((y >= height - (diam/2)) || y <= (diam/2))
    {
      
      vely= vely * acl;
      
      cor = color(random(256), random(256), random(256),alp);
      
    } 
    
    else if ((velx >= 7) || (velx <= -7))  //impede que a bola se mova rápido demais
    {
      
      velx = 5;
      vely = 5;
      
    }
  }
  
  
  void sorteiaLocal()   //determina uma nova posição de início para a bola
  {
    
    x = random(50,550);
    y = random(50,550);
    
  }
}


//RETÂNGULO


class Retangulo  //mesma dinâmica, mas agora com retângulos
{

  float x, y, lado;
  
  float velx, vely, acl;
  
  color cor;


//CONSTRUTOR


  Retangulo (float xtemp, float ytemp, float ladotemp, color cortemp)
  {
    
    x = xtemp;
    y = ytemp;
    lado = ladotemp;
    
    cor = cortemp;
    
    velx = 3;
    vely = 3;
    
    acl = (-1.1);
    
  }


//MÉTODOS


  void desenhaRetangulo()
  {
    
    fill(cor);
    rect(x, y, lado, lado);
    
  }


  void movimentaRetangulo()
  {
    
    x += velx;
    y += vely;
    
  }


  void rebateRetangulo()
  {
    
    if ((x >= width - (lado/2)) || (x <= (lado/2)))
    {
      
      velx = velx * acl;
      
      cor = color(random(256), random(256), random(256),alp);
      
    } 
    
    else if ((y >= height - (lado/2)) || y <= (lado/2))
    {
      
      vely= vely * acl;
      
      cor = color(random(256), random(256), random(256),alp);
      
    } 
    
    else if ((velx >= 7) || (velx <= -7))
    {
      
      velx = 5;
      vely = 5;
      
    }
  }
  
   void sorteiaLocal()
  {
    
    x = random(50,550);
    y = random(50,550);
    
  }
}
