class Button {
 //GLOBAL VARIABLES
 int x;
 int y;
 int h;
 int w;
 
color hovering = color(204, 102, 0);
color nothovering = color(153, 51, 0);

//CONSTRUCTOR
 Button(int _x, int _y, int _w, int _h){ 
   x = _x;
   y = _y;
   h = _h;
   w = _w;
 }
 
 void buttonFunction () {
 display();
 instructions();
}

   //FUNCTIONS
   void display () {
     rect(x,y,w,h);         
  }
 
 

   
   void hover(int mousex, int mousey){
     if (mousex > x && mousey > y && mousex < x+h && mousey < y+h) {
    instructions = true;
   } else { 
     instructions = false;
   }
  }
  
  void instructions () {
       hover(mouseX, mouseY);
       if (instructions == true) { 
      textual();
       } else {
       fill(nothovering);
       }
 }
 
 void textual() {
       fill(hovering);
       text(instructiontext,100,200,150,150);
 }

} 