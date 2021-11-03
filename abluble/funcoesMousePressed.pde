void sorteiaPosicao()
{
  //SORTEIO DE POSIÇÕES

  xampulheta = int(random(0, width));
  yampulheta = int(random(0, height));

  xbraco = int(random(0, width));
  ybraco = int(random(0, height));

  xplaca = int(random(0, width));
  yplaca = int(random(0, height));

  xgilete = int(random(0, width));
  ygilete = int(random(0, height));

  xpato = int(random(0, width));
  ypato = int(random(0, height));

  xlagartixa = int(random(0, width));
  ylagartixa = int(random(0, height));

  xpessego = int(random(0, width));
  ypessego = int(random(0, height));

  xtorso = int(random(0, width));
  ytorso = int(random(0, height));
}

void sorteiaRotacao()
{
  //SORTEIO DE ROTAÇÕES
  
  rottorso = random(0, 2*PI);

  rotampulheta = random(0, 2*PI);

  rotbraco = random(0, 2*PI);

  rotplaca = random(0, 2*PI);

  rotgilete = random(0, 2*PI);

  rotpato = random(0, 2*PI);

  rotlagartixa = random(0, 2*PI);

  rotpessego = random(0, 2*PI);
}
