//this class was made by clay on 4/22/2022
//edited by chase on 4/25/22

public class Bishop extends chessPiece
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

	public void move(int x, int y)
	{

	}
	
	//Is valid move method
	public boolean checkSpotValid(int x, int y)
	{
		if(x == this.getXLocation() || y == this.getYLocation())
		{
			return false;
		}


		if(x > this.getXLocation() && y > this.getYLocation())
		{
			for(int ix = this.getXLocation() + 1, iy = this.getYLocation() + 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x++, y++)
			{
				//here the spot at x, y needs to check if there is a piece
			}
			return false;
		}
		else if(x > this.getXLocation() && y < this.getYLocation())
		{
			for(int ix = this.getXLocation() + 1, iy = this.getYLocation() - 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x++, y--)
			{
				//here the spot at x, y needs to check if there is a piece
			}
			return false;
		}
		else if(x < this.getXLocation() && y > this.getYLocation())
		{
			for(int ix = this.getXLocation() - 1, iy = this.getYLocation() + 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x--, y++)
			{
				//here the spot at x, y needs to check if there is a piece
			}
			return false;
		}
		else if(x < this.getXLocation() && y < this.getYLocation())
		{
			for(int ix = this.getXLocation() - 1, iy = this.getYLocation() - 1; ix > -1 && ix < 8 && iy > -1 && iy < 8; x--, y--)
			{
				//here the spot at x, y needs to check if there is a piece
			}
			return false;
		}

		return false;
	}//end is valid move

	
}//end class
