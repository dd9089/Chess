//this class was made by clay on 4/22/2022
//edited by chase on 4/25/22

public class Bishop extends Piece
{
  //variables
  private String pieceName = "Bishop";
  //constructor
  public Bishop(String c, int xLocation, int yLocation)
  {
    super(c, xLocation, yLocation, "bishop");
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
    
    //moving diagonally down-right
    while (yCordinate + 1 <= 7 && xCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate + 1][yCordinate + 1].getHasPiece())
      {
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 1]);
      }
      else if (!board.bl[xCordinate + 1][yCordinate + 1].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
      {
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 1]);
        break;
      }
      else
        break;
       xCordinate += 1;
       yCordinate += 1;
    }
    
    xCordinate = getXLocation();
    yCordinate = getYLocation();
    
    //moving diagonally up-right
    while (yCordinate - 1 >= 0 && xCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate + 1][yCordinate - 1].getHasPiece())
      {
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 1]);
      }
      else if (!board.bl[xCordinate + 1][yCordinate - 1].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
      {
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 1]);
        break;
      }
      else
        break;
       xCordinate += 1;
       yCordinate -= 1;
    }
    
    xCordinate = getXLocation();
    yCordinate = getYLocation();
    
    //moving diagonally up-left
    while (yCordinate - 1 >= 0 && xCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate - 1][yCordinate - 1].getHasPiece())
      {
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 1]);
      }
      else if (!board.bl[xCordinate - 1][yCordinate - 1].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
      {
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 1]);
        break;
      }
      else
        break;
       xCordinate -= 1;
       yCordinate -= 1;
    }
    
    xCordinate = getXLocation();
    yCordinate = getYLocation();
    
    //moving diagonally down-left
    while (yCordinate + 1 <= 7 && xCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate - 1][yCordinate + 1].getHasPiece())
      {
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 1]);
      }
      else if (!board.bl[xCordinate - 1][yCordinate + 1].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
      {
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 1]);
        break;
      }
      else
        break;
       xCordinate -= 1;
       yCordinate += 1;
    }
    
    xCordinate = getXLocation();
    yCordinate = getYLocation();
    
    board.showPossibleMoves(possibleMoves);
  }
    
}//end class
