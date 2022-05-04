//King chess piece subclass
//Made by Chase on 4/25

public class King extends chessPiece
{
	//Variables
	private String pieceName = "King";


	//Constructor
	public King(String c, int x, int y)
	{
		super(c, x, y);
	}


	//Methods
	public String getPieceName()
	{
		//Obtain type of piece
		return pieceName;
	}

	public void move(int x, int y, Board b1)
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
			
			//checks if the piece is within range
			if(Math.abs(goalX - super.getXLocation()) > 1 || Math.abs(goalY - super.getYLocation()) > 1)
			{
				//return false if coords are not within one space away
				return false;
			}

			//check if there is a piece, if friendly or enemy
			if(b1[goalX][goalY].getHasPiece())
			{
				if(b1[goalX][goalY].getPColor().equalsIgnoreCase(super.getPieceColor()))
					return false;
				else
					return true;
			}
			else
			{
				return true;	//return true if there is no piece in the spot we are trying to move to
			}


		//return false if coord was not a valid location to move
		return false;
	}//end is valid move

}//end of class
