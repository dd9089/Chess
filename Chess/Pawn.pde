//Pawn chess piece subclass
//Made by Chase on 4/22

public class Pawn extends Piece
{
  //Variables
  private String pieceName = "Pawn";


  //Constructor
  public Pawn(String c, int x, int y)
  {
    super(c, x, y, "pawn");
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
     
     // movement for white pawn
    if (getPieceColor().equals("white") && yCordinate - 1 >= 0)
    {
      // if the block infront of pawn doesnt have a piece
      if ( !board.bl[xCordinate][yCordinate - 1].getHasPiece())
      {
        possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
        
        // if the block 2 blocks infront of piece doesnt have a piece
        if (!board.bl[xCordinate][yCordinate - 2].getHasPiece() && getFirstTurn())
          possibleMoves.add(board.bl[xCordinate][yCordinate - 2]);
      }
      
      // if there is a black piece diagonally right of the pawn
      if (((xCordinate + 1 <= 7) && board.bl[xCordinate + 1][yCordinate - 1].getHasPiece()) && board.bl[xCordinate + 1][yCordinate - 1].getPColor().equals("black"))
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate - 1]);
        
      // if there is a black piece diagonally left of the pawn
      if ((xCordinate - 1 >= 0 && board.bl[xCordinate - 1][yCordinate - 1].getHasPiece()) && board.bl[xCordinate - 1][yCordinate - 1].getPColor().equals("black"))
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate - 1]);
    }
    
    if (getPieceColor().equals("black") && yCordinate + 1 <= 7)
    {
      // if the block infront of pawn doesnt have a piece
      if ( !board.bl[xCordinate][yCordinate + 1].getHasPiece())
      {
        possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
        
        // if the block 2 blocks infront of piece doesnt have a piece
        if (!board.bl[xCordinate][yCordinate + 2].getHasPiece() && getFirstTurn())
          possibleMoves.add(board.bl[xCordinate][yCordinate + 2]);
      }
      
      // if there is a black piece diagonally left of the pawn
      if (((xCordinate + 1 <= 7) && board.bl[xCordinate + 1][yCordinate + 1].getHasPiece()) && board.bl[xCordinate + 1][yCordinate + 1].getPColor().equals("white"))
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate + 1]);
        
      // if there is a black piece diagonally right of the pawn
      if ((xCordinate - 1 >= 0 && board.bl[xCordinate - 1][yCordinate + 1].getHasPiece()))
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate + 1]);
    }  
    board.showPossibleMoves(possibleMoves);
  }
  
  Boolean checkSpotValid(int x, int y)
  {
   return true; 
  }
}//end of class
