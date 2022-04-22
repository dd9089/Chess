//Chess piece super class
//Made by Chase on 4/21

public class chessPiece{
	//Variables
		private String pieceColor;
		private int xLocation;
		private int yLocation;
		private boolean isCaptured = false;


	//Constructor
		public chessPiece(String c, int x, int y)
		{
			pieceColor = c;
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
	
		public void setPieceColor(String c)
		{
			//Set color of peice
			pieceColor = c;
		}
			



}//end of class
