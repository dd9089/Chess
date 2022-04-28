//this class was made by clay on 4/22/2022
//edited by chase on 4/25/22
/*
public class Bishop2 extends Piece
{
  //variables
  private String pieceName = "Bishop";
  //constructor
  public Bishop2(String pieceColor, int xLocation, int yLocation)
  {
    super(pieceColor, xLocation, yLocation, "bishop");
  }
  
  //Methods
  public String getPieceName()
  {
    //Obtain type of piece
    return pieceName;
  }

  public void move(int x, int y)
  {

  }
  
  //Is valid move method
  public boolean checkSpotValid(int goalX, int goalY)
  {
    //return false if move method attempts to move to the current location
    if(goalX == this.getXLocation() || goalY == this.getYLocation())
    {
      return false;
    }
    
    if(goalX < 0 && goalX > 7 || goalY < 0 || goalY > 7)
    {
      //return false if coords not on board 
      return false;
    }
    
    if(goalX - this.getXLocation() == goalY - this.getXLocation()){}


    if(goalX > this.getXLocation() && goalY > this.getYLocation())
    {
      for(int newX = this.getXLocation() + 1, newY = this.getYLocation() + 1; newX < goalX && newY < goalY; newX++, newY++)
      {
        //Check if there is a piece 
        if(board.bl[newX][newY].getHasPiece())
        {
          //if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
          return false;          
        }
      }
      //Now check if there is a piece, if friendly or enemy
      if(board.bl[newX][newY].getHasPiece())
      {
        if(board.bl[goalX][goalY].hasFriendlyPiece())  //This isnt a method yet so we will have to make something that can essentially do this
          return false;
        else
          return true;
      }
      else
        return true;  //return true if there is no piece in the spot we are trying to move to
      
    }
    else if(x > this.getXLocation() && y < this.getYLocation())
    {
      for(int ix = this.getXLocation() + 1, iy = this.getYLocation() - 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x++, y--)
      {
        //here the spot at x, y needs to check if there is a piece
      }
      
    }
    else if(x < this.getXLocation() && y > this.getYLocation())
    {
      for(int ix = this.getXLocation() - 1, iy = this.getYLocation() + 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x--, y++)
      {
        //here the spot at x, y needs to check if there is a piece
      }
      
    }
    else if(x < this.getXLocation() && y < this.getYLocation())
    {
      for(int ix = this.getXLocation() - 1, iy = this.getYLocation() - 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x--, y--)
      {
        //here the spot at x, y needs to check if there is a piece
      }
      
    }
    
    //return false if coord was not a valid location to move
    return false;
  }//end is valid move

  
}//end class

*/
