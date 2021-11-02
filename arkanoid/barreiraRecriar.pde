//Recria barreiras em nova posição//

void nivel2()

{
  barreira0 = new Barreira[7];

  for (int i = 0; i < barreira0.length; i++)
  {
    barreira0[i] = new Barreira(25+(i*50), 110, 4);
  }

  barreira1 = new Barreira[7];

  for (int i = 0; i < barreira1.length; i++)
  {
    barreira1[i] = new Barreira(25+(i*50), 150, 3);
  }

  barreira2 = new Barreira[7];

  for (int i = 0; i < barreira2.length; i++)
  {
    barreira2[i] = new Barreira(25+(i*50), 190, 2);
  }

  barreira3 = new Barreira[7];

  for (int i = 0; i < barreira3.length; i++)
  {
    barreira3[i] = new Barreira(25+(i*50), 210, 1);
  }
}


void nivel3()
{

  barreira0 = new Barreira[7];

  for (int i = 0; i < barreira0.length; i++)
  {
    barreira0[i] = new Barreira(25+(i*50), 110, 4);
  }


  barreira1 = new Barreira[7];
  for (int i = 0; i < barreira1.length; i++)
  {
    barreira1[i] = new Barreira(25+(i*50), 130, 3);
  }


  barreira2 = new Barreira[7];
  for (int i = 0; i < barreira2.length; i++)
  {
    barreira2[i] = new Barreira(25+(i*50), 150, 2);
  }

  barreira3 = new Barreira[7];

  for (int i = 0; i < barreira3.length; i++)
  {
    barreira3[i] = new Barreira(25+(i*50), 170, 1);
  }

  barreira4 = new Barreira[5];

  for (int i = 0; i < barreira4.length; i++)
  {
    barreira4[i] = new Barreira(75+(i*50), 210, 4);
  }
}
