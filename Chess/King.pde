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
  
  //shows possible moves
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
      else if (!board.bl[xCordinate][yCordinate + 1].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
        possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
    }
      
    //move up
    if (yCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate][yCordinate - 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
      else if (!board.bl[xCordinate][yCordinate - 1].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
        possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
    }
    
    //move right
    if (xCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate + 1][yCordinate].getHasPiece())
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
      else if (!board.bl[xCordinate + 1][yCordinate].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
    }
    
    //move left
    if (xCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate - 1][yCordinate].getHasPiece())
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
      else if (!board.bl[xCordinate - 1][yCordinate].getPColor().equals(board.bl[xCordinate][yCordinate].getPColor()))
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
    }
    
    //moving diagonally down-right
    if (yCordinate + 1 <= 7 && xCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate + 1][yCordinate + 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 1]);
      else if (!board.bl[xCordinate + 1][yCordinate + 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 1]);
    }
    
    //moving diagonally up-right
    if (yCordinate - 1 >= 0 && xCordinate + 1 <= 7)
    {
      if (!board.bl[xCordinate + 1][yCordinate - 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 1]);
      else if (!board.bl[xCordinate + 1][yCordinate - 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 1]);
    }
    
    //moving diagonally up-left
    if (yCordinate - 1 >= 0 && xCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate - 1][yCordinate - 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 1]);
      else if (!board.bl[xCordinate - 1][yCordinate - 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 1]);
    }
    
    //moving diagonally down-left
    if (yCordinate + 1 <= 7 && xCordinate - 1 >= 0)
    {
      if (!board.bl[xCordinate - 1][yCordinate + 1].getHasPiece())
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 1]);
      else if (!board.bl[xCordinate - 1][yCordinate + 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 1]);
    }
    
    board.showPossibleMoves(possibleMoves);
  }

  //Is valid move method
  public boolean checkSpotValid(int goalX, int goalY)
  {
    //Initial tests
      if(goalX == super.getXLocation() && goalY == super.getYLocation())
      {
        //return false if move method attempts to move to the current location
        return false;
      }

      if(goalX < 0 || goalX > 7 || goalY < 0 || goalY > 7)
      {
        //return false if coords not on board
        return false;
      }
      
      //checks if the piece is within range
      if(Math.abs(goalX - super.getXLocation()) > 1 || Math.abs(goalY - super.getYLocation()) > 1)
      {
        //return false if coords are not within one space away
        return false;
      }
      
      //check if there is a piece, if friendly or enemy
      if(board.bl[goalX][goalY].getHasPiece() && board.bl[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
          return false;
      return true;  //return true if there is no piece in the spot we are trying to move to
  }//end is valid move
}//end of class
