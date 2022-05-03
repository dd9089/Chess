//Created by RJ on 4/25/22
//This is the rook subclass


public class Rook extends chessPiece
{
	public static void main (String[] args)
	{
		for (int i = 0; i < 8; i++)
			for (int j = 0; i < 8; i++)
				board[i][j] = 1;
	}

	//variables
	private String pieceName = "Rook";
	int[][] board;



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
	//method to obtain location that the rook can't move to forward
	public int potentialForward (int x, int y) {
		
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int badMoveF = yValue;

		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7))
			good = false;
		for (int f = yValue; f <= yGoal; f++) {
			if (b1[xValue][f].getHasPiece())
				badMoveF = f;
		}//end of for
		return badMoveF;
	}
	//method to obtain location that the rook can't move to back
	public int potentialBackwards(int x, int y) {
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int badMoveB = yValue;


		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7))
			good = false;
			
		for (int b = yValue; b >= yGoal ; b--) {
			if (b1{[xValue][b].getHasPiece())
				badMoveF = b;
		}//end of for
	}
	//method to obtain location that the rook can't move to right
	public int potentialRight (int x, int y) {
	
		for (int r = xValue; r <= xGoal; r++){
			if (b1[r][yValue].getHasPiece())
				badMoveR = r;
		}//end of for
	}
	//method to obtin location that the rook can't move to left
	public int potentialBack(int x, int y) {
		
	for (int l = xValue; l >= xGoal; l--) {
		if (b1[r][yValue].getHasPiece())
			badMoveL = l;
	}//end of for
	}
	//takes in the goal values of the x and y coordiantes.
	public int potentialMoves(int x, int y)
	{
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int badMoveF = yValue;
		int badMoveB = yValue;
		int badMOveR = xValue;
		int badMoveL = xValue;

		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7))
			good = false;



		

		/*
		//movement for white rook
		if (getPieceColor().equals("white") {
			//moving forward
			for (int f = yValue; f <= yGoal; f++) {
				if (b1[xValue][f].getHasPiece())
					badMoveF = f;
			}//end of for


			//moving backwards
			for (int b = yValue; b >= yGoal ; b--) {
				if (b1{[xValue][b].getHasPiece())
					badMoveF = b;
			}//end of for


			//moving to the right
			for (int r = xValue; r <= xGoal; r++){
				if (b1[r][yValue].getHasPiece())
					badMoveR = r;
			}//end of for

			//moving to the left
			for (int l = xValue; l >= xGoal; l--) {
				if (b1[r][yValue].getHasPiece())
					badMoveL = l;
			}//end of for
		}







		//movement for black rook
		if (getPieceColor().equals("black") {
			//moving forward
			for (int f = yValue; f <= yGoal; f++) {
				if (b1[xValue][f].getHasPiece())
					badMoveF = f;
			}//end of for


			//moving backwards
			for (int b = yValue; b >= yGoal ; b--) {
				if (b1{[xValue][b].getHasPiece())
					badMoveb = b;
			}//end of for


			//moving to the right
			for (int r = xValue; r <= xGoal; r++){
				if (b1[r][yValue].getHasPiece())
					badMoveR = r;
			}//end of for

			//moving to the left
			for (int l = xValue; l >= xGoal; l--) {
				if (b1[r][yValue].getHasPiece())
					badMoveL = l;
			}//end of for
		}
		*/


	}

}//end class
