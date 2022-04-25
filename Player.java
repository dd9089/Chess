//player class
//made by clay on 4/20/2022
//this is not completed and will need peice classes before it can be worked on more
import java.util.ArrayList;

public class Player
{
	//vars
	private int playerNum;
	private ArrayList(Piece) playerPieces; // piece class does not exist yet
	private boolean isTurn = false;

	public Player(int num)
	{
		playerNum = num;
		createPieces();
		if(playerNum == 1)
		{
			isTurn = true;
		}
	}

	//this method creates all the pieces
	private void createPieces()
	{
		if(playerNum == 1)
		{
			playerPieces.add(new Rook("White", 7, 0));
			playerPieces.add(new Knight("White", 7, 1));
			playerPieces.add(new Bishop("White", 7, 2));
			playerPieces.add(new Queen("White", 7, 3));
			playerPieces.add(new King("White", 7, 4));
			playerPieces.add(new Bishop("White", 7, 5));
			playerPieces.add(new Knight("White", 7, 6));
			playerPieces.add(new Rook("White", 7, 7));
			
			for(int i = 0; i < 8; i++)
			{
				playerPieces.add(new Pawn("White", 6, i));
			}
		}
		else if(playerNum == 2)
		{
			playerPieces.add(new Rook("Black", 0, 0));
			playerPieces.add(new Knight("Black", 0, 1));
			playerPieces.add(new Bishop("Black", 0, 2));
			playerPieces.add(new Queen("Black", 0, 3));
			playerPieces.add(new King("Black", 0, 4));
			playerPieces.add(new Bishop("Black", 0, 5));
			playerPieces.add(new Knight("Black", 0, 6));
			playerPieces.add(new Rook("Black", 0, 7));
			
			for(int i = 0; i < 8; i++)
			{
				playerPieces.add(new Pawn("Black", 1, i));
			}
		}
	}

	//this method is a players turn
	public void turn()
	{
		isTurn = true;

		//while isTurn is true the player will be able to move a piece, after a piece is moved it will become false

		isTurn = false;
	}

	//this method will check if the game is over
	public boolean checkWin(Player other)
	{
		if(other.getKingStatus().equals("checkMate"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	//this method will be utilized to access the king from another class without making the piece public
	public String getKingStatus()
	{
		return playerPieces[0].getStatus();//for this line of code it is implied that the playerPieces[0] is the king
		//note that the king class and it's methods do not exist yet
	}
}
