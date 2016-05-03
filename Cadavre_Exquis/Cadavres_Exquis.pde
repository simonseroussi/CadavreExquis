
//Cadavre Exquis
//Solved PGraphis version



//Declarations
// Button startButton;

PFont instructionfont;
PFont titlefont;
PImage img;
PGraphics rectangle; //For rectangle that will cover up the sketch
PGraphics rectangle2;
BrushAndEraser drawing;
String instructiontext = "Draw on the white canvas. \n\n Press S to save your art. \nPress N to hand the brush over! \n \n Right click to draw \n Left click to erase \n Use + and - to enlarge and shrink the brushes and eraser";
String instructiontext2 = "\n Draw on the white canvas. \n\n Press C to complete the Cadavres Exquis. \n \n Right click to draw \n Left click to erase \n Use + and - to enlarge and shrink the brushes and eraser";
String redinstruction = "Press R for Red!";
String greeninstruction = "Press G for Green!";
String blueinstruction = "Press B for Blue!";
String otherinstruction = "Press the space bar to return to your black brush and eraser!";
String titletext="Cadavre Exquis";

String redinstruction2 = "Press R for Red!";
String greeninstruction2 = "Press G for Green!";
String blueinstruction2 = "Press B for Blue!";
String otherinstruction2 = "Press the space bar to return to your black brush and eraser!";
String titletext2="Cadavre Exquis";

boolean instructions = false;
color white = color(255);
color black = color(0);
color red = color(191,19,34);
color blue = color(13,133,222);
color green = color (11,98,0);
boolean botcanvas = false;
//SETUP
void setup(){
  fullScreen(); 

  instructionfont = loadFont("LobsterTwo-Bold.vlw");
  titlefont = loadFont("Pacifico-Regular-48.vlw");
  rectangle = createGraphics(width,height);
  drawing = new BrushAndEraser(15,15);

  
  smooth();
  background(255);


  //FOR RECTANGLE TO SHOW UP ON STARTUP
    rectangle.beginDraw();
    rectangle.background(255);
    rectangle.fill(40);
    rectangle.rect(0, height/2, width, height);
    rectangle.endDraw();
    image(rectangle, 0, 0);
    textAlign(CENTER);
    textSize(24);
    fill(white);
    textFont(titlefont);
    text(titletext, width/1.95, height*0.55);
    
    textSize(20);
    textFont(instructionfont);
    text(instructiontext,width/3.75, height*0.6, width/2, width/2);
    
    
    fill(red);
    text(redinstruction, width/15, height*0.6);
    fill(green);
    text(greeninstruction, width/15, height*0.65);
    fill(blue);
    text(blueinstruction, width/14, height*0.70);
    fill(white);
    text(otherinstruction, width/80, height*0.74, width/5, width/10);  
}


void draw(){
} 


//For brushes and erasers
void mouseDragged(){
  if(mousePressed){
    if(mouseButton==RIGHT){
      fill(white);
     drawing.drawingtool();
    }
     if(mouseButton==LEFT){
       fill(black);
     drawing.drawingtool();
    } if((key=='r') || (key=='R')) {
       fill(red);
     drawing.drawingtool();
    } if((key=='g') || (key=='G')) {
       fill(green);
     drawing.drawingtool();
    } if ((key=='b') || (key=='B')){
       fill(blue);
     drawing.drawingtool();
    }
  }
}


//All those coded keys
void keyPressed(){
    // For Saving stuff
    if ((key=='S') || (key=='s')){
    save("data/c-1.jpg");
    }
    
    //For the increasing paintbrush
    if ((key == '+') || (key=='=')){
       h +=5;
       l +=5;
     }
     
     //For the decreasing paintbrush
     else if ((key=='-') || (key=='_')){
       h -=5;  
       l -=5;
       if (h <= 0) {
         h += 5;
         l += 5;
       }
     } 
     
     //"N" stands for "NEXT"
     if ((key=='n') || (key=='N')){
      img = loadImage("c-1.jpg"); 
      image(img, 0, 0); 
       
      botcanvas = true; 
      rectangle.beginDraw();
      rectangle.background(0,0); 
      rectangle.fill(40);
      rectangle.rect(0, 0, width, height/3); 
      rectangle.endDraw();
      image(rectangle, 0, 0);
      textAlign(CENTER);
      textSize(24);
      fill(white);
      textFont(titlefont);
      text(titletext, width/1.88, height/17);
      
      textSize(10);
      fill(255);
      textFont(instructionfont);
      text(instructiontext2, width/4, height/14, width/1.75, width/3);
      fill(red);
      text(redinstruction2, width/15, height*0.05);
      fill(green);
      text(greeninstruction2, width/15, height*0.1);
      fill(blue);
      text(blueinstruction2, width/14, height*0.15);
      fill(white);
      text(otherinstruction2, width/80, height*0.2, width/5, width/10);  
      
      
      
      
      rectangle2 = createGraphics(width,height/2);
      rectangle2.beginDraw();
      rectangle2.background(255);
      rectangle2.fill(255);
      rectangle2.rect(0, height/2, width, height/3);
      rectangle2.endDraw();
      image(rectangle2, 0, height/2);
      
      h = 20;
      l = 20;
     }
     
     if ((key=='c')||(key=='C')){
           save("data/c-2.jpg");
     }
}