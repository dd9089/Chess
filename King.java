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

	public void move(int x, int y)
	{

	}


}//end of class