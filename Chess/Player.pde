//player class
//made by clay on 4/20/2022
//this is not completed and will need peice classes before it can be worked on more

class Player
{
  //vars
  private int playerNum;
  private Piece[][] playerPieces = new Piece[8][8];
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
    for (int x = 0; x < 8; x++)
    {
     playerPieces[x][6] = new Pawn("white", 0, 0);
    }
    playerPieces[0][7] = new Rook("white", 0, 0);
    playerPieces[7][7] = new Rook("white", 0, 0);
    playerPieces[1][7] = new Knight("white", 0, 0);
    playerPieces[6][7] = new Knight("white", 0, 0);
    playerPieces[2][7] = new Bishop("white", 0, 0);
    playerPieces[5][7] = new Bishop("white", 0, 0);
    playerPieces[3][7] = new Queen("white", 0, 0);
    playerPieces[4][7] = new King("white", 0, 0);
    /*
    At this point all the peices for the white player should be created and set on the board
    while being added to the array of player peices for player 1
    */
    
    for (int x = 0; x < 8; x++)
    {
     playerPieces[x][1] = new Pawn("black", 0, 0);
    }
    playerPieces[0][0] = new Rook("black", 0, 0);
    playerPieces[7][0] = new Rook("black", 0, 0);
    playerPieces[1][0] = new Knight("black", 0, 0);
    playerPieces[6][0] = new Knight("black", 0, 0);
    playerPieces[2][0] = new Bishop("black", 0, 0);
    playerPieces[5][0] = new Bishop("black", 0, 0);
    playerPieces[3][0] = new Queen("black", 0, 0);
    playerPieces[4][0] = new King("black", 0, 0);
    /*
    At this point all the peices for the white player should be created and set on the board
    while being added to the array of player peices for player 1
    */
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
    return null;
    //return playerPieces[0].getStatus();//for this line of code it is implied that the playerPieces[0] is the king
    //note that the king class and it's methods do not exist yet
  }
  
  public void update()
  {
   for (int y = 0; y < 8; y++)
   {
     for (int x = 0; x < 8; x++)
     {
       try
       {
         playerPieces[x][y].drawPiece(board.getXcordinate(x), board.getYcordinate(y)); 
       }
       catch (Exception E){}
     }
   }
   
  }
}
