float angulo;
color cor;
void setup()
{
  
  size(500,500);
  angulo = random(300,600);
  cor = color(random(0,255),random(0,255),0);
  
}

void draw()
{
  background(0);
  stroke(255);
  float s = map(mouseX, 0, width,260, 500);
  
  translate(mouseX, mouseY);
  
  
  float wave = sin(radians(frameCount));
  float w = wave*map(mouseY,0,height,0,2500);
  
  
  for(int i=0; i < 500; i++)
  {
    
    rotate(angulo);
    
    
    stroke(cor);
    line(400,i-w, -width/2, i++);
    
    stroke(255,140);
    line(0,i-w/2, (width/2)+s, i++);
    
 
  }
}
