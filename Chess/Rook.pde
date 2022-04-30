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
 
   public void genPossibleMoves(int x, int y)
  {
    int xCordinate = getXLocation();
    int yCordinate = getYLocation();
    
    //movement for white rook
    if (getPieceColor().equals("white"))
    {
      // Moving forward 
     while ( yCordinate - 1 >= 0 && !board.bl[xCordinate][yCordinate - 1].getHasPiece())
     {
       possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
       yCordinate -= 1;
     }
     
     if (yCordinate - 1 >= 0 && board.bl[xCordinate][yCordinate - 1].getPieceColor().equals("black"))
       possibleMoves.add(board.bl[xCordinate][yCordinate - 1]);
       
     yCordinate = getYLocation();
       
       //moving backwards
       while (yCordinate + 1 <= 7 && !board.bl[xCordinate][yCordinate + 1].getHasPiece())
       {
         possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
         yCordinate += 1;
       }
       
       if (yCordinate + 1 <= 7 && board.bl[xCordinate][yCordinate + 1].getPieceColor().equals("black"))
         possibleMoves.add(board.bl[xCordinate][yCordinate + 1]);
         
        yCordinate = getYLocation();
        
        //moving right
        while (xCordinate + 1 <= 7 && !board.bl[xCordinate + 1][yCordinate].getHasPiece())
        {
         possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
         xCordinate += 1;
        }
        
        if (xCordinate + 1 <= 7 && board.bl[xCordinate + 1][yCordinate].getPieceColor().equals("black"))
          possibleMoves.add(board.bl[xCordinate + 1][yCordinate]);
         
        xCordinate = getXLocation();
        
        //moving left
        while (xCordinate - 1 >= 0 && !board.bl[xCordinate - 1][yCordinate].getHasPiece())
        {
         possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
         xCordinate -= 1;
        }
        
        if (xCordinate - 1 >= 0 && board.bl[xCordinate - 1][yCordinate].getPieceColor().equals("black"))
         possibleMoves.add(board.bl[xCordinate - 1][yCordinate]);
    }
    
    board.showPossibleMoves(possibleMoves);
  }

}//end class
