//Created by RJ on 4/25/22
//This is the rook subclass


public class Rook extends Piece
{

  //variables
  private String pieceName = "Rook";

  //Constructor
  public Rook(String c, int xLocation, int yLocation)
  {
    super(c, xLocation, yLocation, "rook");
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
