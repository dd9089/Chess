//Queen chess piece subclass
//Made by Chase on 4/25

public class Queen extends Piece
{
  //Variables
  private String pieceName = "Queen";


  //Constructor
  public Queen(String c, int x, int y)
  {
    super(c, x, y, "queen");
  }


  //Methods
  public String getPieceName()
  {
    //Obtain type of piece
    return pieceName;
  }
  
   public void genPossibleMoves()
  {
    Rook r = new Rook(getPieceColor(), getXLocation(), getYLocation());
    Bishop b = new Bishop(getPieceColor(), getXLocation(), getYLocation());
    r.genPossibleMoves();
    b.genPossibleMoves();
  }

   boolean checkSpotValid(int x, int y)
   {
    Pawn p = new Pawn (getPieceColor(), getXLocation(), getYLocation());
    
    if (p.checkSpotValid(x, y))
      return true;
    return false;
   }
}//end of class
