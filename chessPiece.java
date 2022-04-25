//Chess piece super class
//Made by Chase on 4/21

public class chessPiece{
	//Variables
		private String pieceColor;
		private int xLocation;
		private int yLocation;
		private boolean isCaptured = false;


	//Constructor
		public chessPiece(String color, int x, int y)
		{
			pieceColor = color;
			xLocation = x;
			yLocation = y;
		}

	//Methods
		//Getters
		public String getPieceType()
		{
			//THIS METHOD WILL BE OVERRIDEN BY THE SUBCLASSES
			//Return String name of peice
			return "regular piece";
		}

		public String getPeiceColor()
		{
			//Return color of peice
			return pieceColor;
		}

		public int getXLocation()
		{
			//return x location
			return xLocation;
		}

		public int getYLocation()
		{
			//return y location
			return yLocation;
		}

		public boolean getIsCaptured()
		{
			//Return if piece is captured
			return isCaptured;
		}

		//Setters
		public void setXLocation(int x)
		{
			//Set x location
			xLocation = x;
		}

		public void setYLocation(int y)
		{
			//Set y location
			yLocation = y;
		}

		public void setCaptured()
		{
			//Sets itself as captured
			isCaptured = true;
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



}//end of class
