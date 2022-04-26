//player class
//made by clay on 4/20/2022
//this is not completed and will need peice classes before it can be worked on more

class Player
{
  //vars
  private int playerNum;
  private ArrayList<Piece> playerPieces = new ArrayList<Piece>();
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
      Piece n = new Pawn("white", 0, 0);
      playerPieces.add(n);
      /*
      At this point all the peices for the white player should be created and set on the board
      while being added to the array of player peices for player 1
      */
    }
    else if(playerNum == 2)
    {
      /*
      This should do the same process as the first part but instead for black peices for player 2
      */
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
    return null;
    //return playerPieces[0].getStatus();//for this line of code it is implied that the playerPieces[0] is the king
    //note that the king class and it's methods do not exist yet
  }
  
  public void update()
  {
    for (Piece x: playerPieces)
    {
     x.drawPiece(board.getXcordinate(7), board.getYcordinate(7)); 
    }
  }
}
