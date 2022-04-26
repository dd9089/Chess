//Queen chess piece subclass
//Made by Chase on 4/25

public class Queen extends Piece
{
  //Variables
  private String pieceName = "Queen";


  //Constructor
  public Queen(String c, int x, int y)
  {
    super(c, x, y, "queen");
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
