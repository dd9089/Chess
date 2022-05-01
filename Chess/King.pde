//King chess piece subclass
//Made by Chase on 4/25

public class King extends Piece
{
  //Variables
  private String pieceName = "King";


  //Constructor
  public King(String c, int x, int y)
  {
    super(c, x, y, "king");
  }


  //Methods
  public String getPieceName()
  {
    //Obtain type of piece
    return pieceName;
  }

  public void genPossibleMoves()
  {
    int xCordinate = getXLocation();
    int yCordinate = getYLocation();
    
    //Castleing
    if (getFirstTurn())
    {
      
    }
    
    //move down
    if (yCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate][yCordinate + 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
      else if (!board.bl[xCordinate][yCordinate + 1].getPieceColor().equals(board.bl[xCordinate][yCordinate].getPieceColor()))
        possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
    }
      
    //move up
    if (yCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate][yCordinate - 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
      else if (!board.bl[xCordinate][yCordinate - 1].getPieceColor().equals(board.bl[xCordinate][yCordinate].getPieceColor()))
        possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
    }
    
    //move right
    if (xCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate + 1][yCordinate].getHasPiece())
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
      else if (!board.bl[xCordinate + 1][yCordinate].getPieceColor().equals(board.bl[xCordinate][yCordinate].getPieceColor()))
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
    }
    
    //move left
    if (xCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate - 1][yCordinate].getHasPiece())
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
      else if (!board.bl[xCordinate - 1][yCordinate].getPieceColor().equals(board.bl[xCordinate][yCordinate].getPieceColor()))
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
    }
    
    board.showPossibleMoves(possibleMoves);
  }
}//end of class
