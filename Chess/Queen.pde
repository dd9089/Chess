//Queen chess piece subclass
//Made by Chase on 4/25

public class Queen extends Piece
{
	//Variables
	private String pieceName = "Queen";


	//Constructor
	public Queen(String c, int x, int y)
	{
		super(c, x, y);
	}


	//Methods
	public String getPieceName()
	{
		//Obtain type of piece
		return pieceName;
	}

	public void move(int x, int y)
	{
		if(checkSpotValid(goalX, goalY, b1))
		{
			//Set variables in new block
			b1[goalX][goalY].setHasPiece(true, super.getPieceColor());

			//Set new block piece to this block
			b1[goalX][goalY].setPiece(b1[super.getXLocation()][super.getYLocation()].getPiece());

			//Set previous block to null
			b1[super.getXLocation()][super.getYLocation()].setPiece(null);
			b1[super.getXLocation()][super.getYLocation()].setHasPiece(false, null);

			//Change current blocks x&y coords to new values
			super.setXLocation(goalX);
			super.setYLocation(goalY);
		}
	}
	
	//Is valid move method
	public boolean checkSpotValid(int goalX, int goalY, Board b1)
	{
		//Initial tests
		if(goalX == super.getXLocation() && goalY == super.getYLocation())
		{
			//return false if move method attempts to move to the current location
			return false;
		}

		if(goalX < 0 && goalX > 7 || goalY < 0 || goalY > 7)
		{
			//return false if coords not on board
			return false;
		}
		
		//checks if the direction is diagonal and runs diagonal code from bishop
		if((Math.abs(goalX - super.getXLocation()) == Math.abs(goalY - super.getYLocation())))
		{

			//Loop through different diagonal directions
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
		}
		
		//check for verticle or horizontal
		if(goalX == super.getXLocation())
		{
			//checks above
			if(goalY > super.getYLocation())
			{
				for(newY = super.getYLocation() + 1; newY < goalY; newY++)
				{
					//Check if there is a piece
					if(b1[goalX][newY].getHasPiece())
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
			//checks below
			if(goalY < super.getYLocation())
			{
				for(newY = super.getYLocation() - 1; newY < goalY; newY--)
				{
					//Check if there is a piece
					if(b1[goalX][newY].getHasPiece())
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
		}
		if(goalY == super.getYLocation())
		{
			//checks left
			if(goalX < super.getXLocation())
			{
				for(newX = super.getYLocation() + -; newX < goalX; newX--)
				{
					//Check if there is a piece
					if(b1[newX][goalY].getHasPiece())
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
			//checks right
			if(goalX > super.getXLocation())
			{
				for(newX = super.getYLocation() + +; newX < goalX; newX++)
				{
					//Check if there is a piece
					if(b1[newX][goalY].getHasPiece())
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
		}
		
		
		//return false if coord was not a valid location to move
		return false;
	}//end is valid move


}//end of class
