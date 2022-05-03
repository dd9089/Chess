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

	public void move(int x, int y, Board b1)
	{
		int f = potentialForward(x ,y, b1);
		int b = potentialBackward(x, y, b1);
		int r = potentialRight(x, y, b1);
		int l = potentialLeft(x, y, b1);
		
		if(x == r || x == l) {
			//Set variables in new block
			b1[x][y].setHasPiece(true, super.getPieceColor());

			//Set new block piece to this block
			b1[x][y].setPiece(b1[super.getXLocation()][super.getYLocation()].getPiece());

			//Set previous block to null
			b1[super.getXLocation()][super.getYLocation()].setPiece(null);
			b1[super.getXLocation()][super.getYLocation()].setHasPiece(false, null);

			//Change current blocks x&y coords to new values
			super.setXLocation(x);
			super.setYLocation(y);
		}
		else if (y == f || y == b) {
			//Set variables in new block
			b1[x][y].setHasPiece(true, super.getPieceColor());

			//Set new block piece to this block
			b1[x][y].setPiece(b1[super.getXLocation()][super.getYLocation()].getPiece());

			//Set previous block to null
			b1[super.getXLocation()][super.getYLocation()].setPiece(null);
			b1[super.getXLocation()][super.getYLocation()].setHasPiece(false, null);

			//Change current blocks x&y coords to new values
			super.setXLocation(x);
			super.setYLocation(y);
		}
		else
			System.out.println("The move is not valid");

	}
	//the int intx and y are the goal values to be input
	//method to obtain location that the rook can't move to forward
	public int potentialForward (int x, int y, Board b1) {
		
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int goodMoveF = yValue + 1;

		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7)) {
			good = false;
			for (int f = yValue; f <= yGoal; f++) {
				if (!(b1[xValue][f].getHasPiece()))
				goodMoveF = f;
			}//end of for
		}
		return goodMoveF;
	}
	//method to obtain location that the rook can't move to back
	public int potentialBackward(int x, int y, Board b1) {
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int goodMoveB = yValue;


		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7))
			good = false;
			
			for (int b = yValue; b >= yGoal ; b--) {
			if (b1{[xValue][b].getHasPiece())
					goodMoveB = b;
			}//end of for
		}//end of if
		return goodMoveB;
	}
	//method to obtain location that the rook can't move to right
	public int potentialRight (int x, int y, Board b1) {
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int goodMoveR = xValue;


		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7)) {
			good = false;
	
			for (int r = xValue; r <= xGoal; r++){
				if (b1[r][yValue].getHasPiece())
					goodMoveR = r;
			}//end of for
		}//end of if
		return goodMoveR
	}
	//method to obtin location that the rook can't move to left
	public int potentiaLeft(int x, int y, Board b1) {
		int xValue = getXLocation();				//getXLocation();         //should theorectically have a 0-7 for now, can change later to fit needs
		int yValue = getYLOcation();				//getYLocation();
		int xGoal = x;
		int xGoal = y;
		boolean validMove = true;
		int goodMoveL = xValue;


		//portion to make sure the goals are actually on the board.
		boolean good = true;
		if (!(xGoal >= 0 && xGoal <= 7))
			good = false;
		
			for (int l = xValue; l >= xGoal; l--) {
				if (b1[r][yValue].getHasPiece())
					goodMoveL = l;
			}//end of for
		}//end of if
		return goodMoveL;
	}

	
}//end class
