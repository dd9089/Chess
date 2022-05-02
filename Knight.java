//Knight chess piece subclass
//Made by Chase on 4/25

public class Knight extends chessPiece
{
	//Variables
	private String pieceName = "Knight";


	//Constructor
	public Knight(String c, int x, int y)
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

		//check if there is a piece, if friendly or enemy
		//note that there is no code checking if there is a piece inbetween the piece and the locaton because the knight can jump over pieces
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
