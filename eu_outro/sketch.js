//EU, O OUTRO - Vírus//


//VIDEO//

var video1;
var video1_1;
var video2;
var video3;

let cenaUm = true;
let cenaDois = false;
let cenaTres = false;
let cenaQuatro = false;
let cenaCinco = false;


let escala;

let fonte;

let alp = 0;


//MICROFONE//

let mic;
let eq;
let eq2;

let reverb1;
let reverb2;
let delay1;
let delay2;
let distort;

let cv;

//AUDIOS//

let um_zero;

let dois_zero;

let tres_zero;



//TEMPO//

let milisegundos;


//FASES//

let inicio, primeiro, segundo, terceiro, final;


//PRIMEIRO ATO//

p = [];

var pVida;

let ffb;


let opc = 255; 
let opc2 = 255;

//SEGUNDO ATO//

let opc3 = 255;
let opc4 = 255;


let x, y;
let vel;
let x2, y2;
let vel2;
let x3, y3;
let vel3;


//TERCEIRO ATO//

let opc5 = 255;
let opc6 = 255;



function preload()
{
  fonte = loadFont('NotoSerifDisplay-VariableFont_wdth,wght.ttf');
 
  
   um_zero = loadSound('primeiro.mp3');
   dois_zero = loadSound('segundo.mp3');
   tres_zero = loadSound('terceiro.mp3');
  
 
  
}


function setup() 
{
  
  //VÍDEO//
  
  var cnv = createCanvas(640,480);
  var deslocX = (windowWidth-width)/2;
  var deslocY = (windowHeight-height)/2;
  cnv.position(deslocX, deslocY);
 
  
  textFont(fonte);
  
  escala = 8;
  
  final = false;
  

  //MICROFONE//
  
  mic = new p5.AudioIn();
  eq = new p5.LowPass();
 
  eq2 = new p5.Filter();
  
  eq2.setType("peaking");
  
  
  eq.freq(1000);
  eq2.freq(1000);

  
  eq2.connect(eq);
  
  
  mic.start();
  
 
  mic.connect(eq); 
  
   
  
  
  
//PRIMEIRO ATO//
  
  ///VIDEO///
  
  video1 = createCapture(VIDEO);
  video1.size(width,height);
  video1.hide();
  
  video1_1 = createCapture(VIDEO);
  video1_1.size(width/escala, height/escala);
  video1_1.hide();
  
  video1_1.loadPixels();
  
  
  
  //PRIMEIRO ATO//
  
  pVida = new Vida(this);
  
  ffb = 0.6;
  
  
for(var i = 0; i < 200; i++)
  {
  p[i] = new Particula();
  }
  
  
  
  //SEGUNDO ATO//
   
  x = random(0,width);
  y = random(0,height);
  vel = 1;
  
  x2 = random(0,width);
  y2 = random(0,height);
  vel2 = 1;
  
  x3 = random(0,width);
  y3 = random(0,height);
  vel3 = 1;
  
  
  
  //AUDIO//
  
    
 
  um_zero.playMode('untilDone');
 
  
  dois_zero.playMode('untilDone');
 
  
  tres_zero.playMode('untilDone');
  
  
  
  //MIC//
  
  //DELAY//
  
 
  
   delay1 = new p5.Delay();
  
  
   delay1.process(mic,0.1,0.5,1600);
 
  
  
  
   delay2 = new p5.Delay();
  
   delay2.setType('pingPong');
  
  
   delay2.process(mic, 0.7,0.5,1000);
  
   delay2.disconnect();
  
  
  
  //REVERB
  
  
  reverb1 = new p5.Reverb();
  
  reverb1.process(mic,3,2);
 
  
  reverb2 = new p5.Reverb();
  
  reverb2.process(mic,1.5, 16, true);
  
  reverb2.disconnect();
  
  
  
  //DISTORÇÃO
  
  distort = new p5.Distortion();
  
  distort.process(mic,0.007,'4x');

  distort.disconnect();
  
  
  //CONVOLVER
  
  cv = createConvolver('On a Star.wav');
  cv.process(mic);
  cv.disconnect();
  
  
 
  
}




function draw() {
  
  
  
  milisegundos = millis();
  
  
  
  //TELA INICIAL
 
    if (milisegundos > 0 && milisegundos < 10000)
  {
    inicio = true;
    primeiro = false;
    segundo = false;
    terceiro = false;
  }
  
  
  //PRIMEIRO ATO
  
  else if (milisegundos >= 10000 && milisegundos < 90000)
  {
    inicio = false;
    primeiro = true;
    segundo = false;
    terceiro = false;
  }
  
  
  //SEGUNDO ATO
  
  else if (milisegundos >= 90000 && milisegundos < 151000)
  {
    
    //PRIMEIRA CENA
    
    if(milisegundos >=90000 && milisegundos <= 127000)
    {
      reverb1.disconnect();
      reverb2.connect();
      
     
    }
    
    //SEGUNDA CENA
    
    else if(milisegundos > 127000 && milisegundos < 151000)
    {
        reverb1.connect();
        reverb2.disconnect();
      
      
        delay1.disconnect();
        delay2.connect();
        
    }
    
    inicio = false;
    primeiro = false;
    segundo = true;
    terceiro = false;
    
  }
  
  
  //TERCEIRO ATO
  
  
  
  else if (milisegundos >= 151000 && milisegundos < 255000)
  {
    cv.connect();
    
    inicio = false;
    primeiro = false;
    segundo = false;
    terceiro = true;
  }
  
  
  //FINAL
  
  else if (milisegundos > 255000)
  {
    inicio = false;
    primeiro = false;
    segundo = false;
    terceiro = false;
    final = true;
  }
  
   
  
  //CHAMA FUNÇÕES
  
  if (inicio)
  {
   inicial();
  }
  
  else if (primeiro)
  {
    
    primeiroAto();
  }
  
  else if (segundo)
  {
    segundoAto();
  }
  
  else if (terceiro)
  {
    terceiroAto();
  }
  else if(final)
  {
    fim();
  }
  
  
}


//SISTEMA DE PARTÍCULAS

  class Particula
{
  constructor()
  {
    this.pos = createVector(width/2, height/2);
    
    this.vel = createVector(random(-5,5),random(-5,5));
    this.acc = createVector(random(-2,2),random(-2,2));
    
    this.tam = 8;
    this.opc = 255;

    
  }
  
  
  //MOVIMENTAÇÃO
  
  move()
  {
 
    
  this.pos.add(this.vel);
    
  this.vel.add(this.acc);
 
   
  if(this.pos.x>=width||this.pos.x<=0){
    this.vel.x*=(-1);
  }
    
  if(this.pos.y>=height||this.pos.y<=0)
  {
    this.vel.y*=(-1);
  }
  
  if(this.vel.x>=40 || this.vel.y>=40 || this.vel.x<=-40 || this.vel.y<=-40)
  {
    this.vel.setMag(5,5);
  }
  }
  
  
  //CRIAÇÃO
  
  cria()
  {
    
   this.tam = constrain(this.tam,8,16);
     
   
    let col = video1_1.get((video1_1.width)-(this.pos.x)/escala,(this.pos.y)/escala);
  
    
    //PRIMEIRO ATO
    
  if (milisegundos > 68000 && milisegundos < 75000)
    {
     this.tam +=0.005;
    }
    else if (milisegundos > 75000)
    {
     this.tam -=0.005;
    }
    
    
     if (milisegundos > 80000 && milisegundos < 90000)
    {
     this.tam -= 0.1;
     this.opc = constrain(this.opc,100,255);
     this.opc --;
    }
    
    
   
    else if (milisegundos > 90000)
    {
      this.opc = 255;
    }
    
   
  fill(col[0],col[1],col[2],this.opc);
  noStroke();
 
     
  rect((this.pos.x)-1, (this.pos.y)-1,this.tam,this.tam);
      
    
}
}


