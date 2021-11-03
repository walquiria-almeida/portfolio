void desenhaInicio()
{
   //AZUL & LARANJA//
  
    xa = 150;        //coordenadas dos arcos
    ya = 150;
  
    fill(90, 100, 255);    
    arc(xa,ya,diam,diam,PI/2 ,3*PI/2);    //desenha um arco 
  
    fill(255, 123, 50);
    arc(xa,ya,diam,diam, 3*PI/2,2*PI);    //desenha o outro arco
    arc(xa,ya,diam,diam,0,PI/2);
  
    fill(fun);
    rect(xa, ya-10,40,20);                //desenha a seta
    triangle(xa,ya-30,xa,ya+30,xa-40,ya);
  

  //VERMELHO & VERDE//
  
    xv = 750;
    yv = 150;
  
    fill(231, 39, 10);
    arc(xv,yv,diam,diam,PI/2 ,3*PI/2);
  
    fill(87, 220, 13);
    arc(xv,yv,diam,diam, 3*PI/2,2*PI);
    arc(xv,yv,diam,diam,0,PI/2);
  
    fill(fun);
    rect(xv-40,yv-10,40,20);
    triangle(xv,yv-30,xv,yv+30,xv+40,yv);

  
  //AMARELO & ROXO//
   
    xam = 450;
    yam = 150;
  
    fill(245,220,25);
    arc(xam,yam,diam,diam,PI/2 ,3*PI/2);
  
    fill(158,65,209);
    arc(xam,yam,diam,diam, 3*PI/2,2*PI);
    arc(xam,yam,diam,diam,0,PI/2);
  
    fill(fun);
    rect(xam - 10, yam-40, 20,40);
    triangle(xam + 30, yam,xam - 30,yam, xam, yam+40);
  
  
  //TITULO
  
    stroke(222,180,54);    
    strokeWeight(10);
  
    rectMode(CENTER);      //desenha a caixa de texto
    fill(202,160,54,100);
    rect(450,330,700,80);
  
    tit = "CRIE COM AS COMPLEMENTARES";    //atribuição da variável de texto
    fill(0);                               //define a cor da fonte
    textAlign(CENTER,CENTER);              //define o ponto de referência do texto como o centro
    textSize(40);                          //define o tamanho da fonte
    text(tit, 450,330);                    //escreve o texto
  
  
  //INSTRUÇOES
  
  // 1
  
  
    xins = 150;                            //coordenadas de referência da instrução
    yins = 450;
  
    fill(206,117,167,100);                 //desenha a caixa de texto
    stroke(226,117,167,200);
    strokeWeight(7);
    rect (xins, yins + 25, 280, 110);
  
    fill(0);                               //escreve a instrução
    ins = "Selecione um par";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins);
  
    ins = " de cores complementares";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins + 30);
  
    ins = "pelas setas do teclado";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins + 60);
 
  //2
 
    xins = 450;
  
    fill(138,132,15,100);
    stroke(158,132,15,200);
    strokeWeight(7);
    rect (xins, yins + 25, 280, 110);
  
    fill(0);
    ins = "O clique do mouse";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins);
  
    ins = "cria composições";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins + 30);
  
    ins = "com as cores escolhidas";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins + 60);
  
  //3
  
    xins = 750;
  
    fill(143,102,114,100);
    stroke(163,102,114,200);
    strokeWeight(7);
    rect (xins, yins + 25, 280, 110);
  
    fill(0);
    ins = "Alterne entre os";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins);
    
    ins = "pares pressionando";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins + 30);
  
    ins = "suas respectivas teclas";
    textAlign(CENTER);
    textSize(20);
    text(ins, xins,yins + 60);
  
}


void selecionaPares()
{
  if(keyCode == LEFT)   //seleciona o modo AZUL - LARANJA quando a seta da ESQUERDA é pressionada
  {
    
  az = true;
  
  vv = false;
  
  am = false;
  
  }
  
  
  if (keyCode == RIGHT)  //seleciona o modo VERMELHO - VERDE quando a seta da DIREITA é pressionada
  {
    
    az = false;
    
    vv = true;
    
    am = false;
    
  }
  
  
  if(keyCode == DOWN)   //seleciona o modo AMARELO - ROXO quando a seta de BAIXO é pressionada
  {  
    
  az = false;
  
  vv = false;
  
  am = true;
  
  }
}


void azulLaranja()
{
  
   //////////AZUL&LARANJA///////////
   
  
    
    if (mouseX < width/2) //LADO ESQUERDO - FUNDO - AZUL//
    {
      
      background(fun);
      
      int tam = 0;             //declara a variável que define o tamanho dos círculos
      
      
      while (tam < width)      //o código vai ser executado enquanto o tamanho for menor que a largura da tela
      {
        
        noStroke();
        
        float opc = abs(((width/2) - mouseX) - tam); //módulo da diferença entre mouseX, o meio da tela, e o tamanho 
        float alp = 255 - opc;                       //diminui a opacidade das formas de acordo com o módulo
        
        fill(91, 157, 245, alp);                     //desenha as formas nas coordenadas do mouse
        ellipse(mouseX, mouseY, tam, tam);
        
        tam+=15;                                     //aumenta o valor do tamanho a cada ciclo
        
      }
      
    } 
    
    
    else //LADO DIREITO - FUNDO - LARANJA//
    {
      
      background(fun);
      
      int tam = 0;
      
      
      while (tam < width)
      {
        
        noStroke();
        
        float opc = abs((mouseX - width/2) - tam);
        
        float alp = 255 - opc;
        
        fill(240, 155, 80, alp);
        ellipse(mouseX, mouseY, tam, tam);
        
        tam+=15; 
        
      }
      
    }


    ///// LARANJA - CÍRCULOS - LADO ESQUERDO ///// desenha as formas em primeiro plano


    for (int ne = 1; ne<120; ne ++)    //determina o número de repetições
    {
      
      stroke(255, random(90, 200), random(4, 50), random(200,255));   //escolhe tons de laranja aleatoriamente
      strokeWeight(random(3, 15));                                    //escolhe a espessura da linha aleatoriamente
      
      noFill();
      
      xe = (int)random(0, (width/2));              //escolhe as coordenadas aleatoriamente no lado esquerdo
      ye = (int)random(0, (height - (le/2)));
      
      le = (int)random(20, 80);                    //escolhe o diâmetro do círculo maior aleatoriamente
      
      ellipse(xe, ye, le, le);
      ellipse(xe, ye, le-20, le-20);               //desenha círculos menores no centro de cada círculo maior
      
    }
    
    
    ///// AZUL - RETÂNGULOS - LADO DIREITO /////
    
    
    for (int nr = 1; nr<120; nr ++)
    {

      stroke(random(20, 40), random(100, 170), random(200, 255),random(180,255));
      strokeWeight(random(3, 10));
      
      rectMode(CENTER);
      
      noFill(); 
      
      xr = (int)random(((width/2)+(lr/2)), (width-(lr/2)));
      yr = (int)random (0, (height - (lr/2)));
      
      lr = (int)random(20, 80);
      lr2 = (int)random(10, 90);
      
      rect(xr, yr, lr, lr2);
      rect(xr, yr, lr-20, lr2-20);
      
    }
    
  }
  
void vermelhoVerde()
{
  
  //segue a mesma dinâmica, porém a composição divide a tela horizontalmente e o fundo é retangular
  
   rectMode(CORNER);
    
    if (mouseY < height/2) //SUPERIOR - FUNDO - VERMELHO// 
    {
      
      background(fun);
      
      int pos = 0;
      
      while (pos < height)
      {
        
        noStroke();
        
        float opc = abs(mouseY - pos); 
        float alp = 255 - opc;
        
        fill(241, 19, 2, alp);
        rect(0, pos, width, 10);
        
        pos+=10; 
        
      }
      
    } 
    
    else //INFERIOR - FUNDO - VERDE//
    {
      
      background(fun);
      
      int pos = 0;
      
      while (pos < height)
      {
        
        noStroke();
        
        float opc = abs(mouseY - pos); 
        float alp = 255 - opc;
        
        fill(87, 220, 13, alp);
        rect(0, pos, width, 10);
        
        pos+=10; 
      }
      
    }


    ///// VERDE - CÍRCULOS - SUPERIOR ///// 
    
    
    for (int ne = 1; ne < 100; ne++)
    {
      
      stroke(random(47, 100), random(113, 211), random(0, 10), random(200,255));
      strokeWeight(random(3, 15));
      
      noFill();
      
      xe = (int)random(0, width);
      ye = (int)random (0, (height/2));
      
      le = (int)random(20, 80);
      
      ellipse(xe, ye, le, le);
      ellipse(xe, ye, le-20, le-20);
      
    }


    ///// VERMELHO - RETÂNGULOS - INFERIOR /////


    for (int nr = 1; nr<100; nr ++)
    {
      
      rectMode(CENTER);
      
      stroke(random(255, 210), random(20, 100), random(18, 40), random(200,255));
      strokeWeight(random(3, 10));
      
      noFill(); 
      
      xr = (int)random(0, width);
      yr = (int)random ((height/2), height);
      
      lr = (int) random(20, 80);
      
      rect(xr, yr, lr, lr);
      rect(xr, yr, lr-20, lr-20);
      
    }
}

void amareloRoxo()
{
  
  if ((mouseX < width/2)&&(mouseY < height/2)) //FUNDO - SUPERIOR - ESQUERDO - ROXO//
    {
      
      background(fun);
      
      int tam = 0;
      
      while (tam < width)
      
      {
        noStroke();
        
        float opc = abs((width/2 - mouseX) - tam); 
        float alp = 255-opc;
        
        fill(158,65,209, alp);
        
        ellipse(mouseX, mouseY, tam, tam);
        
        tam+=15; 
      }
    } 
    
    
    else if ((mouseX > width/2) && (mouseY > height/2)) //FUNDO - INFERIOR - DIREITO - AMARELO//
    {
      
      background(fun);
      
      int tam = 0;
      
      while (tam < width)
      {
        
        noStroke();
        
        float opc = abs((mouseX - width/2) - tam);
        float alp = 255 - opc;
        
        fill(245,220,25,alp);
        
        ellipse(mouseX, mouseY, tam, tam);
        
        tam+=15; 
      }
      
    }
  
    else //FUNDO - DUPLO// quando o usuário clica fora do espaço principal, dois círculos são desenhados
    {
        
      background(fun);
      
      int tam = 0;
      
      while (tam < width/2)
      {
        
        noStroke();
        
        float opc = abs(mouseX - (280+tam));
        float alp = 255 - opc;
        
        fill(245,220,25,alp);
        
        ellipse(mouseX, mouseY, tam, tam);
        
        fill(158,65,209, alp);
        
        ellipse((width-mouseX),(height - mouseY), tam, tam); //desenha um círculo oposto ao outro pela diagonal
        
        tam+=15; 
        
      }
    }
    
    
    ///// AMARELO - QUADRADOS - SUPERIOR - ESQUERDO /////
    
    
    for (int nr = 1; nr<40; nr ++)
    {
      
      rectMode(CENTER);
      
      stroke(random(200,255),random(200,220),0, random(200,255));
      strokeWeight(random(3, 10));
      
      noFill(); 
      
      xr = (int)random(0, width/2);
      yr = (int)random(0, height/2);
      
      lr = (int) random(20, 80);
      
      rect(xr, yr, lr, lr);
      rect(xr, yr, lr-20, lr-20);
      
    }
    
    
    for (int ne = 1; ne < 40; ne++)
    {
      
      stroke(random(71,168), random(5,10), random(106,255), random(200,255));
      strokeWeight(random(3, 15));
      
      noFill();
      
      xe = (int)random(width/2, width);
      ye = (int)random(height/2, height);
      
      le = (int) random(20, 80);
      
      ellipse(xe, ye, le, le);
      ellipse(xe, ye, le-20, le-20);
      
    }
}
