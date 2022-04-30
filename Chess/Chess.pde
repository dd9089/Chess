boolean win = false;
int previousClickedX = 7, previousClickedY = 8;

// ArrayList to hold the generated possible moves for the piece selected
ArrayList<Block> possibleMoves = new ArrayList<>();
Board board;

//creates the piece 2d array with extra spaces to be able to set previous clicked to something other than 0, 0
Piece[][] playerPieces = new Piece[8][9];


void setup()
{
  fullScreen();
  board = new Board();
  board.makeBoard();
  createPieces();
}

//main loop of game
void draw()
{
 background(color(150,150,150));
 board.drawBoard();
 drawPieces();
}

void mousePressed()
{
  int x = (int) (mouseX / 100) * 100;
  int y;
    
  if (mouseY <= 97)
    y = 0;
  else if (mouseY <= 194)
    y = 97;
  else if (mouseY <= 291)
    y = 194;
  else if (mouseY <= 388)
    y = 291;
  else if (mouseY <= 485)
    y = 388;
  else if (mouseY <= 582)
    y = 485;
  else if (mouseY <= 679)
    y = 582;
  else
    y = 679;
      
  board.bl[previousClickedX][previousClickedY].setClicked(false);
  possibleMoves = board.hidePossibleMoves(possibleMoves);

  if (x >= 300 && x <= 1100)
  {
    for (int z = 0; z < 8; z++)
    {
      for (int w = 0; w < 8; w++)
      {
        if (board.bl[z][w].isBlock(x, y))
        {
          if (board.bl[z][w].getHasPiece())
          {
            board.bl[z][w].setClicked(true); 
            board.bl[z][w].highlight();
            playerPieces[z][w].genPossibleMoves(x, y);
  
                      
            if (board.bl[previousClickedX][previousClickedY].getHasPiece())
            {
              System.out.println(previousClickedX + " " + previousClickedY);
              update(previousClickedX, previousClickedY, z, w);
            }
            
            else
            {
              previousClickedX = z;
              previousClickedY = w; 
            }
          }
          
          else if (board.bl[previousClickedX][previousClickedY].getHasPiece())
            update(previousClickedX, previousClickedY, z, w);
          
          else
          {
            //println("Block: " + board.bl[z][w].getBlock() + " was clicked");
            board.bl[z][w].setClicked(true); 
            board.bl[z][w].highlight();
            previousClickedX = z;
            previousClickedY = w;
          }
        }
      }
    }
  }
  else
  {
    previousClickedX = 7;
    previousClickedY = 8;
  }
}

 //this method creates all the pieces
  void createPieces()
  {
    for (int x = 0; x < 8; x++)
    {
     playerPieces[x][6] = new Pawn("white", x, 6);
    }
    playerPieces[0][7] = new Rook("white", 0, 7);
    playerPieces[7][7] = new Rook("white", 7, 7);
    playerPieces[1][7] = new Knight("white", 1, 7);
    playerPieces[6][7] = new Knight("white", 6, 7);
    playerPieces[2][7] = new Bishop("white", 2, 7);
    playerPieces[5][7] = new Bishop("white", 5, 7);
    playerPieces[3][7] = new Queen("white", 3, 7);
    playerPieces[4][7] = new King("white", 4, 7);
    /*
    At this point all the peices for the white player should be created and set on the board
    while being added to the array of player peices for player 1
    */
    
    for (int x = 0; x < 8; x++)
    {
     playerPieces[x][1] = new Pawn("black", x, 1);
    }
    playerPieces[0][0] = new Rook("black", 0, 0);
    playerPieces[7][0] = new Rook("black", 7, 0);
    playerPieces[1][0] = new Knight("black", 1, 0);
    playerPieces[6][0] = new Knight("black", 6, 0);
    playerPieces[2][0] = new Bishop("black", 2, 0);
    playerPieces[5][0] = new Bishop("black", 5, 0);
    playerPieces[3][0] = new Queen("black", 3, 0);
    playerPieces[4][0] = new King("black", 4, 0);
    /*
    At this point all the peices for the white player should be created and set on the board
    while being added to the array of player peices for player 1
    */
    
    // tells starting blocks that they have a piece and its color
    for (int y = 0; y < 2; y++)
    {
     for (int x = 0; x < 8; x++)
     {
       board.bl[x][y].setHasPiece(true, "black");
     }
    }
    
    for (int y = 6; y < 8; y++)
    {
     for (int x = 0; x < 8; x++)
     {
       board.bl[x][y].setHasPiece(true, "white");
     }
    }
  }
  
  // displays the pieces to the screen on top of the board
  void drawPieces()
  {
   for (int y = 0; y < 8; y++)
   {
     for (int x = 0; x < 8; x++)
     {
       try
       {
         playerPieces[x][y].drawPiece(); 
       }
       catch (Exception E){}
     }
   }
  }
  
  // moves the piece clicked to were you have clicked
  void update(int x, int y, int newX, int newY)
  {
    if (!(newX == x) || !(newY == y))
    {
       Piece temp = playerPieces[x][y];
       
       // calls the update method in Piece class to change the piece's location
       playerPieces[x][y].update(newX, newY);
       
       playerPieces[x][y] = null;
       
       // deletes the piece from its previous block and sets said block to not clicked
       board.bl[x][y].setHasPiece(false, "");
       board.bl[x][y].setClicked(false);
       
       // updates the 2d array of pieces and tells the block that it has a piece and its color
       playerPieces[newX][newY] = temp;
       board.bl[newX][newY].setHasPiece(true, playerPieces[newX][newY].getPieceColor());
  
       // sets previous clicked to neutral location
       previousClickedX = 7;
       previousClickedY = 8;
       
       playerPieces[newX][newY].hasMoved();
       
       drawPlayerPieces();
    }
  }
  
  void drawPlayerPieces()
  {
    for (int y = 0; y < 8; y++)
    {
       for (int x = 0; x < 8; x++)
       {
        System.out.print(playerPieces[x][y] + "\t");
       }
       System.out.println("\n");
    }
    System.out.println("\n");
  }
