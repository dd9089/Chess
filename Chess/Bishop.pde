//this class was made by clay on 4/22/2022
//edited by chase on 4/25/22

public class Bishop extends Piece
{
	//variables
	private String pieceName = "Bishop";
	//constructor
	public Bishop(String color, int xLocation, int yLocation)
	{
		super(color, xLocation, yLocation);
	}

	//Methods
	public String getPieceName()
	{
		//Obtain type of piece
		return pieceName;
	}

	public void move(int goalX, int goalY, Board b1)
	{
		if(checkSpotValid(goalX, goalY, b1))
		{
			//Set variables in new block
			b1[goalX][goalY].setHasPiece(true, super.getPieceColor());

			//Set new block piece to this block
			b1[goalX][goalY].setPiece(b1[super.getXLocation()][super.getYLocation()].getPiece());

			//Set previous block to null
			b1[super.getXLocation()][super.getYLocation()].setPiece(null);

			//Change current blocks x&y coords to new values
			super.setXLocation(goalX);
			super.setYLocation(goalY);
		}

	}

	//Is valid move method
	public boolean checkSpotValid(int goalX, int goalY, Board b1)
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
		if(goalX > super.getXLocation() && goalY > super.getYLocation())
		{
			for(int newX = super.getXLocation() + 1, newY = super.getYLocation() + 1; newX < goalX && newY < goalY; newX++, newY++)
			{
				//Check if there is a piece
				if(b1[newX][newY].getHasPiece())
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
			//Now check if there is a piece, if friendly or enemy
			if(b1[goalX][goalY].getHasPiece())
			{
				if(b1[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
					return false;
				else
					return true;
			}
			else
				return true;	//return true if there is no piece in the spot we are trying to move to

		}
		//Down right
		else if(goalX > super.getXLocation() && goalY < super.getYLocation())
		{
			for(int newX = super.getXLocation() + 1, newY = super.getYLocation() - 1; newX > -1 && newX < 8 && newY > -1 && newY < 8; newX++, newY--)
			{
				//Check if there is a piece
				if(b1[newX][newY].getHasPiece())
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
			//Now check if there is a piece, if friendly or enemy
			if(b1[goalX][goalY].getHasPiece())
			{
				if(b1[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
					return false;
				else
					return true;
			}
			else
				return true;	//return true if there is no piece in the spot we are trying to move to

		}
		else if(goalX < super.getXLocation() && goalY > super.getYLocation())
		{
			for(int newX = super.getXLocation() - 1, newY = super.getYLocation() + 1; newX > -1 && newX < 8 && newY > -1 && newY < 8; newX--, newY++)
			{
				//Check if there is a piece
				if(b1[newX][newY].getHasPiece())
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
			//Now check if there is a piece, if friendly or enemy
			if(b1[goalX][goalY].getHasPiece())
			{
				if(b1[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
					return false;
				else
					return true;
			}
			else
				return true;	//return true if there is no piece in the spot we are trying to move to

		}
		else if(goalX < super.getXLocation() && goalY < super.getYLocation())
		{
			for(int newX = super.getXLocation() - 1, newY = super.getYLocation() - 1; newX > -1 && newX < 8 && newY > -1 && newY < 8; newX--, newY--)
			{
				//Check if there is a piece
				if(b1[newX][newY].getHasPiece())
				{
					//if there is a piece it is not a valid move because there is a piece in the way of the path to the goal coordinates
					return false;
				}
			}
			//Now check if there is a piece, if friendly or enemy
			if(b1[goalX][goalY].getHasPiece())
			{
				if(b1[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
					return false;
				else
					return true;
			}
			else
				return true;	//return true if there is no piece in the spot we are trying to move to
		}

		//return false if coord was not a valid location to move
		return false;
	}//end is valid move


}//end class
