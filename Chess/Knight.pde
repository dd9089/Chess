//Knight chess piece subclass
//Made by Chase on 4/25

public class Knight extends Piece
{
  //Variables
  private String pieceName = "Knight";


  //Constructor
  public Knight(String c, int x, int y)
  {
    super(c, x, y, "knight");
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
