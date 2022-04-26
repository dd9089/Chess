//Pawn chess piece subclass
//Made by Chase on 4/22

public class Pawn extends Piece
{
  //Variables
  private String pieceName = "Pawn";


  //Constructor
  public Pawn(String c, int x, int y)
  {
    super(c, x, y, "pawn");
     
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
