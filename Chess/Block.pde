public class Block
{
 private int xCordinate, yCordinate, name;
 private boolean clicked, hasPiece;
 private color blockColor, outline, backupColor;
 private chessPiece cp;  //link between classes
 
 Block(int x, int y, int name, chessPiece c)
 {
   this.name = name;
   xCordinate = x;
   yCordinate = y;
   outline = 0;
   clicked = false;
   hasPiece = false;
   cp = c; 
 }
 
 public void update(int x, int y)
 {
   
 }
 
 public boolean isBlock(int x, int y)
 {
   if (x == xCordinate && y == yCordinate)
     return true;
   return false;
 }
 
 public void drawBlock()
 {
   strokeWeight(2);
   stroke(outline);
   fill(blockColor);
   rect(xCordinate, yCordinate, 98, 95);
 }
 
 public void setClicked(boolean c)
 {
  clicked = c; 
 }
 
 public boolean getClicked()
 {
  return clicked; 
 }
 
 public void setColor(color RGB)
 {
  blockColor = RGB; 
 }
 
 public void highlight()
 {
   outline = 255;
 }

 public void unHighlight()
 {
  outline = 0; 
 }
 
 public int getXcordinate()
 {
  return xCordinate; 
 }
 
 public int getYcordinate()
 {
  return yCordinate; 
 }
 
 public int getBlock()
 {
  return name;
 }
 
 public color getBlockColor()
 {
  return blockColor; 
 }
 
 public color getBackupColor()
 {
  return backupColor;
 }
 
 public boolean getHasPiece()
 {
  return hasPiece; 
 }
 
 public String getPColor() //keep the name getPColor
 {
   return cp.getPieceColor();
 }
 
 public void setHasPiece(boolean hasPiece, String pieceColor)
 {
  this.hasPiece = hasPiece; 
  this.pieceColor = pieceColor;
 }
 
 public void setBackupColor(color backupColor)
 {
   this.backupColor = backupColor;
 }
}
