//Chess piece super class
//Made by Chase on 4/21

class Piece{
  //Variables
    private String pieceColor;
    private int xLocation;
    private int yLocation;
    private boolean isCaptured = false, firstTurn, movedTwo;
    private String pieceName;
    private PImage piece;


  //Constructor
    Piece(String pieceColor, int xLocation, int yLocation, String name)
    {
      this.pieceColor = pieceColor;
      this.xLocation = xLocation;
      this.yLocation = yLocation;
      piece = loadImage(name + "_" + pieceColor + ".png");
      pieceName = name;
      firstTurn = true;
      movedTwo = false;
    }

  //Methods
    //Getters
    public String getPieceName()
    {
      //THIS METHOD WILL BE OVERRIDEN BY THE SUBCLASSES
      //Return String name of peice
      return pieceName;
    }

    public String getPieceColor()
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
    
    public boolean getFirstTurn()
    {
      return firstTurn;
    }
    
    public boolean getMovedTwo()
    {
     return movedTwo; 
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
    
    public void genPossibleMoves()
    {
      System.out.println("K");
    }
    
    public boolean checkSpotValid(int goalX, int goalY)
    {
     return false; 
    }
    
    public void update(int x, int y)
    {
     xLocation = x;
     yLocation = y;
    }
    
    public void hasMoved()
    {
      firstTurn = false;
     // movedTwo = false;
    }
    
    public void setMovedTwo()
    {
     movedTwo = true; 
    }
   
    public void setCaptured()
    {
      //Sets itself as captured
      isCaptured = true;
    }

    public void drawPiece()
    {
      image(piece, board.bl[xLocation][yLocation].getXcordinate(), board.bl[xLocation][yLocation].getYcordinate(), 98, 98);
    }
    
    public String toString()
    {
      return pieceColor;//xLocation + " " + yLocation;
    }
}//end of class
