public class Block
{
 private int xCordinate, yCordinate;
 private boolean clicked;
 private color c, outline;
 private int name;
 private boolean hasPiece;
 
 Block(int x, int y, int name)
 {
   this.name = name;
   xCordinate = x;
   yCordinate = y;
   outline = 0;
   clicked = false;
   hasPiece = false;
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
   rect(xCordinate, yCordinate, 98, 95);
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
 
 int getXcordinate()
 {
  return xCordinate; 
 }
 
 int getYcordinate()
 {
  return yCordinate; 
 }
 
 int getBlock()
 {
  return name;
 }
 
 boolean getHasPiece()
 {
  return hasPiece; 
 }
 
 void setHasPiece(boolean hasPiece)
 {
  this.hasPiece = hasPiece; 
 }
}
