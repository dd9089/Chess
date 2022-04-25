//Created by RJ on 4/25/22
//This is the rook subclass


public class Rook extends chessPiece
{

	//variables
	private String pieceName = "Rook";

	//Constructor
	public Rook(String color, int xLocation, int yLocation)
	{
		super(color, xLocation, yLocation);
	}


	//methods
	public String getPieceName()
	{
		//obtain type of piece
		return pieceName;
	}

	public void move(int x, int y)
	{

	}

}//end class