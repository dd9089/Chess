//Chess piece super class
//Made by Chase on 4/21

class Piece{
  //Variables
    private String pieceColor;
    private int xLocation;
    private int yLocation;
    private boolean isCaptured = false;
    private String pieceName;
    private PImage piece;


  //Constructor
    Piece(String pieceColor, int xLocation, int yLocation, String name)
    {
      this.pieceColor = pieceColor;
      this.xLocation = xLocation;
      this.yLocation = yLocation;
      piece = loadImage(name + "_" + pieceColor + ".png");
      pieceName = "Piece";
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
    
    public void update(int x, int y)
    {
     xLocation = x;
     yLocation = y;
    }
    
    public String getPieceName()
    {
     return pieceName; 
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
