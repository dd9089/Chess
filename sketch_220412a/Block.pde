class Block
{
 PImage fire;
 int xCordinate, yCordinate;
 boolean clicked = false;
 
 Block(int x, int y)
 {
   xCordinate = x;
   yCordinate = y;
   
 }
 
 void update(int x, int y)
 {
  //image (fire, x, y, 100, 100);
 }
 
 boolean isBlock(int x, int y)
 {
   if (x == xCordinate && y == yCordinate)
     return true;
   return false;
 }
 
 void drawBlock()
 {
    rect(xCordinate, yCordinate, 100, 100);
 }
 
 void setClicked(boolean c)
 {
  clicked = c; 
 }
 
 boolean getClicked()
 {
  return clicked; 
 }
}
