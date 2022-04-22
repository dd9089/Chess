public class Pawn extends Piece
{
 public Pawn(int pColor, int xCordinate, int yCordinate)
 {
  super(pColor, xCordinate, yCordinate); 
  if (pColor == 0)
    pawn = loadImage ("pawn_white.png");
  else
     pawn = loadImage ("pawn_black.pang");
 }
 
 void drawPawn(int x, int y)
 {
   image (pawn, x, y); 
 }
}
