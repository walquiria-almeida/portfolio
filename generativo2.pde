float x, y, tam;
color cor;
boolean fundo;
float r, gr, b, d;


void setup() 
{
  background(255);
  size(500,500);
  x = width/2;
  y = height/2;
  fundo = false;
}

void draw()
{
  if (fundo == true){
 background(255);
  }
  
 
   r = map(mouseX, 0, width, 100, 255);
   gr = map(mouseY, 0, height, 100, 255);
   b = random(0,255);
   
   tam = map(mouseX, 0, width, 0, 2000);
   
  
  float g = sin(radians(frameCount));
  d = dist(x*g, y, pmouseX, pmouseY);
  
 
  
  for (int i = 0; i <100; i++)
  {

    
  cor = color (r,gr,b);
  
  stroke(cor);
  strokeWeight(2);
  
  line(x*g,y, pmouseX,pmouseY);
  
  //stroke(cor,100);
  
  //line(tam*g,-y, pmouseX,pmouseY);
  //strokeWeight(1);
  
  //stroke(cor,40);
  
 // line(-tam*g,y, pmouseY,pmouseX);
  
  
  rotate(20);
  
  
  
  
  
  
  
  noStroke();
  fill(cor,140);
  rect(((x*g)+(d/2)), y, 20, 20);
  pushMatrix();
  translate(100,100);
  rect(((x*g)-(d/2)), -y, 20, 20);
  popMatrix();
  
  
  
  
  
  }
}

void mousePressed()
{
  fundo = !fundo; 
}
