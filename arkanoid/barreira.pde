class Barreira
{

  int xBarreira;
  int yBarreira;
  int largBarreira;
  int altBarreira;

  int r, g, b;
  int tipo;

  boolean retorno;
  boolean tocou;

  Barreira(int x_temp, int y_temp, int tipo_temp)   //Configuração da barreira é determinada quando é criada
  {

    xBarreira = x_temp;
    yBarreira = y_temp;

    tipo = tipo_temp;

    largBarreira = 50;
    altBarreira = 12;
  }


  void criaBarreira()
  {

    //Cada nível de barreira possui uma cor
    if (tipo == 1)
    {
      stroke(255, 0, 0);
    } 
    
    else if (tipo == 2)
    {
      stroke(0, 255, 0);
    } 
    
    else if (tipo == 3)
    {

      stroke(0, 255, 255);
    } 
    
    else if (tipo == 4)
    {
      stroke(255, 255, 0);
    }

    noFill();

    rect(xBarreira, yBarreira, largBarreira, altBarreira);
  }


//Confere se a bola tocou na barreira


  boolean tocouBarreira(float xBola, float yBola)
  {


    if ((xBola+6) <= xBarreira || xBola >= (xBarreira+40))
    {
      tocou = false;
    } 
    
    else if ((yBola+6) <= yBarreira || yBola >= (yBarreira+12))
    {
      tocou = false;
    } 
    
    else
    {
      tocou = true;
    }

    return tocou;
  }
}
