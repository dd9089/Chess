//Created by RJ on 4/25/22
//This is the rook subclass


public class Rook extends Piece
{

  //variables
  private String pieceName = "Rook";

  //Constructor
  public Rook(String c, int xLocation, int yLocation)
  {
    super(c, xLocation, yLocation, "rook");
  }


  //methods
  public String getPieceName()
  {
    //obtain type of piece
    return pieceName;
  }
 
   public void genPossibleMoves()
  {
    int xCordinate = getXLocation();
    int yCordinate = getYLocation();
    
    
     //moving up
     while ( yCordinate - 1 >= 0)
     {
       if (!board.bl[xCordinate][yCordinate - 1].getHasPiece())
         possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
       else if (!board.bl[xCordinate][yCordinate - 1].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
       {
        possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
        break;
       }
       else
         break;
       
       yCordinate -= 1;
     }
     
     yCordinate = getYLocation();
     
     //moving down
     while ( yCordinate + 1 <= 7)
     {
       if (!board.bl[xCordinate][yCordinate + 1].getHasPiece())
         possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
       else if (!board.bl[xCordinate][yCordinate + 1].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
       {
        possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
        break;
       }
       else
         break;
       
       yCordinate += 1;
     }
     
     yCordinate = getYLocation();
     
     //moving right
     while ( xCordinate - 1 >= 0)
     {
       if (!board.bl[xCordinate - 1][yCordinate].getHasPiece())
         possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
       else if (!board.bl[xCordinate - 1][yCordinate].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
       {
        possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
        break;
       }
       else
         break;
       
       xCordinate -= 1;
     }
     
     xCordinate = getXLocation();
     
     //moving left
     while ( xCordinate + 1 <= 7)
     {
       if (!board.bl[xCordinate + 1][yCordinate].getHasPiece())
         possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
       else if (!board.bl[xCordinate + 1][yCordinate].getPieceColor().equals(board.bl[getXLocation()][getYLocation()].getPieceColor()))
       {
        possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
        break;
       }
       else
         break;
       
       xCordinate += 1;
     }
     
     xCordinate = getXLocation();
     
    board.showPossibleMoves(possibleMoves);
  }
}//end class
