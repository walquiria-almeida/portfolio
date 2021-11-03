void moverRecortes()
{
  yampulheta++;
    
    rotbraco -= 0.005;
    xbraco--;
    
    ygilete++;
    
    ypessego--;
    
    xplaca++;
    yplaca++;
    
    rotpato+=0.01;
    
    xlagartixa-=2;
    ylagartixa-=2;
    
    rottorso += 0.005;
    xtorso++;
    
    pato = loadImage("5n-obj.png"); //Troca a imagem do pato na auto-destruição
}



void mostraRecortes()
{
  
 //RECORTES - rotacionam em torno de si mesmos e assumem posições aleatórias com o clique
 
 //TORSO//
 
  pushMatrix();
 
  translate(xtorso, ytorso);
  rotate(rottorso);
  
  translate(-xtorso, -ytorso);
  image(torso,xtorso, ytorso);
 
  
  popMatrix();
  
  
  //BRAÇO//
   
  pushMatrix();
 
  translate(xbraco,ybraco);
  rotate(rotbraco);
  translate(-xbraco,-ybraco);
  image(braco,xbraco,ybraco); 
  

  popMatrix();
  
  
 //GILETE//
  
  pushMatrix();
 
  translate(xgilete, ygilete);
  rotate(rotgilete);
  translate(-xgilete, -ygilete);
  image(gilete, xgilete, ygilete);
  
  popMatrix();
  
  
  //PLACA//
  
  pushMatrix();
 
  translate(xplaca, yplaca);
  rotate(rotplaca);
  translate(-xplaca, -yplaca);
  image(placa,  xplaca, yplaca,200,200);
  
  popMatrix();
  
  
  //PATO//
  
  pushMatrix();
 
  translate(xpato, ypato);
  rotate(rotpato);
  translate(-xpato, -ypato);
  image(pato,xpato, ypato);

  
  popMatrix();
  
  
  //LAGARTIXA//
  
  pushMatrix();
 
  translate(xlagartixa, ylagartixa);
  rotate(rotlagartixa);
  translate(-xlagartixa, -ylagartixa);
  image(lagartixa, xlagartixa, ylagartixa);
   
  
  popMatrix();
  
  
  //PÊSSEGO//
  
  pushMatrix();
 
  translate(xpessego, ypessego);
  rotate(rotpessego);
  translate(-xpessego, -ypessego);
  image(pessego, xpessego, ypessego);
  
  popMatrix();
  
  
  //AMPULHETA//
  
  pushMatrix();
 
  translate(xampulheta, yampulheta);
  rotate(rotampulheta);
  translate(-xampulheta, -yampulheta);
  image(ampulheta,xampulheta, yampulheta);
  
  popMatrix();
  
}


  
