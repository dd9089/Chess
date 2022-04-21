class Block
{
 int xCordinate, yCordinate;
 boolean clicked = false;
 color c, outline;
 
 Block(int x, int y)
 {
   xCordinate = x;
   yCordinate = y;
   outline = 0;
 }
 
 void update(int x, int y)
 {
   
 }
 
 boolean isBlock(int x, int y)
 {
   if (x == xCordinate && y == yCordinate)
     return true;
   return false;
 }
 
 void drawBlock()
 {
   strokeWeight(2);
   stroke(outline);
   fill(c);
   rect(xCordinate, yCordinate, 98, 98);
 }
 
 void setClicked(boolean c)
 {
  clicked = c; 
 }
 
 boolean getClicked()
 {
  return clicked; 
 }
 
 void setColor(color RGB)
 {
  c = RGB; 
 }
 
 void highlight()
 {
   outline = 255;
 }

 void unHighlight()
 {
  outline = 0; 
 }
}
