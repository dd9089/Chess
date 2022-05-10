//this class was made by clay on 4/22/2022
//edited by chase on 4/25/22

public class Bishop extends Piece
{
	//variables
	private String pieceName = "Bishop";
	//constructor
	public Bishop(String pieceColor, int xLocation, int yLocation)
	{
		super(pieceColor, xLocation, yLocation, "bishop");
	}

	//Methods
	public String getPieceName()
	{
		//Obtain type of piece
		return pieceName;
	}

	//Is valid move method
	public boolean checkSpotValid(int goalX, int goalY)
	{
		//Initial tests
			if(goalX == super.getXLocation() || goalY == super.getYLocation())
			{
				//return false if move method attempts to move to the current location
				return false;
			}

			if(goalX < 0 && goalX > 7 || goalY < 0 || goalY > 7)
			{
				//return false if coords not on board
				return false;
			}

			if(!(Math.abs(goalX - super.getXLocation()) == Math.abs(goalY - super.getYLocation())))
			{
				//return false if coords are not incremented in a diagonal fashion
				return false;
			}


		//Loop through different directions
		//Up right
		if(goalX > super.getXLocation() && goalY < super.getYLocation())
		{
			for(int newX = super.getXLocation() + 1, newY = super.getYLocation() - 1; newX < goalX && newY > goalY; newX++, newY++)
			{
				//Check if there is a piece
				if(board.bl[newX][newY].getHasPiece() && board.bl[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
      return true;			
		}
		//Down right
		else if(goalX > super.getXLocation() && goalY > super.getYLocation())
		{
			for(int newX = super.getXLocation() + 1, newY = super.getYLocation() + 1; newX < goalX && newY < goalY; newX++, newY--)
			{
				//Check if there is a piece
				if(board.bl[newX][newY].getHasPiece() && board.bl[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
      return true;
		}
    //Down left
		else if(goalX < super.getXLocation() && goalY > super.getYLocation())
		{
			for(int newX = super.getXLocation() - 1, newY = super.getYLocation() + 1; newX > goalX && newY < goalY; newX--, newY++)
			{
				//Check if there is a piece
				if(board.bl[newX][newY].getHasPiece() && board.bl[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
			return true;
		}
    //Up left
		else if(goalX < super.getXLocation() && goalY < super.getYLocation())
		{
			for(int newX = super.getXLocation() - 1, newY = super.getYLocation() - 1; newX < goalX && newY < goalY; newX--, newY--)
			{
				//Check if there is a piece
				if(board.bl[newX][newY].getHasPiece() && board.bl[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
			return true;
		}

		//return false if coord was not a valid location to move
		return false;
	}//end is valid move

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
      else if (!board.bl[xCordinate + 1][yCordinate + 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
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
      else if (!board.bl[xCordinate + 1][yCordinate - 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
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
      else if (!board.bl[xCordinate - 1][yCordinate - 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
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
      else if (!board.bl[xCordinate - 1][yCordinate + 1].getPColor().equals(board.bl[getXLocation()][getYLocation()].getPColor()))
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
