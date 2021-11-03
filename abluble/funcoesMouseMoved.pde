void embaralhaRecortes()
{

  //BRAÇO

  if (dist(mouseX, mouseY, xbraco, ybraco)<=60)
  {
    rotbraco+=0.007;
    xbraco=pmouseX-15;
    ybraco=pmouseY-15;
  }


  //TORSO

  if (dist(mouseX, mouseY, xtorso, ytorso)<=60)
  {
    rottorso+=0.007;
    xtorso=pmouseX-20;
    ytorso=pmouseY-20;
  }


  //AMPULHETA

  if (dist(mouseX, mouseY, xampulheta, yampulheta)<=60)
  {
    rotampulheta+=0.007;
    xampulheta=pmouseX+5;
    yampulheta=pmouseY+5;
  }


  //PLACA

  if (dist(mouseX, mouseY, xplaca, yplaca)<=60)
  {
    rotplaca+=0.007;
    xplaca=pmouseX+15;
    yplaca=pmouseY+15;
  }


  //GILETE

  if (dist(mouseX, mouseY, xgilete, ygilete)<=60)
  {
    rotgilete+=0.007;
    xgilete=pmouseX-5;
    ygilete=pmouseY-5;
  }


  //PATO

  if (dist(mouseX, mouseY, xpato, ypato)<=60)
  {
    rotpato+=0.007;
    xpato=pmouseX-10;
    ypato=pmouseY-10;
  }


  //LAGARTIXA

  if (dist(mouseX, mouseY, xlagartixa, ylagartixa)<=60)
  {
    rotlagartixa+=0.007;
    xlagartixa=pmouseX+10;
    ylagartixa=pmouseY+10;
  }


  //PÊSSEGO

  if (dist(mouseX, mouseY, xpessego, ypessego)<=60)
  {
    rotpessego+=0.007;
    xpessego=pmouseX+20;
    ypessego=pmouseY+20;
  }
}
