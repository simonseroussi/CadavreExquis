float h; //h= height
float l; //l= length

class BrushAndEraser 
{
  
   //placeh = placeholder height
   //placel = placeholder length
   BrushAndEraser(float placeh, float placel) {
     h = placeh;
     l = placel;
   }
   
   void drawingtool() {
     if (botcanvas == false && mouseY < height/2.02) {
     noStroke();
     ellipse(mouseX, mouseY, h, l);
   } else if (botcanvas == true && mouseY > height/2.918) {
     noStroke();
     ellipse(mouseX, mouseY, h, l);
   } 
}



}