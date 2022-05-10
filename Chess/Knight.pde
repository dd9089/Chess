//Knight chess piece subclass
//Made by Chase on 4/25

public class Knight extends Piece
{
  //Variables
  private String pieceName = "Knight";


  //Constructor
  public Knight(String c, int x, int y)
  {
    super(c, x, y, "knight");
  }


  //Methods
  public String getPieceName()
  {
    //Obtain type of piece
    return pieceName;
  }

   //shows possible moves
  public void genPossibleMoves()
  {
    int xCordinate = getXLocation();
    int yCordinate = getYLocation();
    
    //moving down right 1
    if (xCordinate + 2 <= 7 && yCordinate + 1 <= 7)
    {
     if (!board.bl[xCordinate + 2][yCordinate + 1].getHasPiece())
       possibleMoves.add(board.bl[xCordinate + 2][yCordinate + 1]);
     else if (!board.bl[xCordinate + 2][yCordinate + 1].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate + 2][yCordinate + 1]);
    }
    
    //moving down right 2
    if (xCordinate + 1 <= 7 && yCordinate + 2 <= 7)
    {
     if (!board.bl[xCordinate + 1][yCordinate + 2].getHasPiece())
       possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 2]);
     else if (!board.bl[xCordinate + 1][yCordinate + 2].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 2]);
    }
    
    //moving down left 1
    if (xCordinate - 2 >= 0 && yCordinate + 1 <= 7)
    {
     if (!board.bl[xCordinate - 2][yCordinate + 1].getHasPiece())
       possibleMoves.add(board.bl[xCordinate - 2][yCordinate + 1]);
     else if (!board.bl[xCordinate - 2][yCordinate + 1].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate - 2][yCordinate + 1]);
    }
    
    //moving down left 2
    if (xCordinate - 1 >= 0 && yCordinate + 2 <= 7)
    {
     if (!board.bl[xCordinate - 1][yCordinate + 2].getHasPiece())
       possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 2]);
     else if (!board.bl[xCordinate - 1][yCordinate + 2].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 2]);
    }
    
     //moving up left 1
    if (xCordinate - 2 >= 0 && yCordinate - 1 >= 0)
    {
     if (!board.bl[xCordinate - 2][yCordinate - 1].getHasPiece())
       possibleMoves.add(board.bl[xCordinate - 2][yCordinate - 1]);
     else if (!board.bl[xCordinate - 2][yCordinate - 1].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate - 2][yCordinate - 1]);
    }
    
    //moving up left 2
    if (xCordinate - 1 >= 0 && yCordinate - 2 >= 0)
    {
     if (!board.bl[xCordinate - 1][yCordinate - 2].getHasPiece())
       possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 2]);
     else if (!board.bl[xCordinate - 1][yCordinate - 2].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 2]);
    }
    
    //moving up right 1
    if (xCordinate + 2 <= 7 && yCordinate - 1 >= 0)
    {
     if (!board.bl[xCordinate + 2][yCordinate - 1].getHasPiece())
       possibleMoves.add(board.bl[xCordinate + 2][yCordinate - 1]);
     else if (!board.bl[xCordinate + 2][yCordinate - 1].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate + 2][yCordinate - 1]);
    }
    
    //moving up right 2
    if (xCordinate + 1 <= 7 && yCordinate - 2 >= 0)
    {
     if (!board.bl[xCordinate + 1][yCordinate - 2].getHasPiece())
       possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 2]);
     else if (!board.bl[xCordinate + 1][yCordinate - 2].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
      possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 2]);
    }
    
    board.showPossibleMoves(possibleMoves);
  }
  
  boolean checkSpotValid(int x, int y)
  {
    Pawn p = new Pawn(getPieceColor(), getXLocation(), getYLocation());
    if (p.checkSpotValid(x, y))
      return true;
    return false;    
  }


}//end of class
