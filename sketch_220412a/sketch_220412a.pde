boolean win = false;
int previousClickedX = 0, previousClickedY = 0;
Board board = new Board();


void setup()
{
  fullScreen();
  //size(500, 571);
  
  board.makeBoard();
}

void draw()
{
 background(color(150,150,150));
 board.drawBoard();
}

void mousePressed()
{
  int x = (int) (mouseX / 100) * 100;
  int y = (int) (mouseY / 100) * 100;
   
   board.bl[previousClickedX][previousClickedY].setClicked(false);
   
  for (int z = 0; z < 8; z++)
  {
    for (int w = 0; w < 8; w++)
    {
      if (board.bl[z][w].isBlock(x, y))
      {
        println("Board: (" + z + ", " + w + ") was clicked");
        board.bl[z][w].setClicked(true); 
        board.bl[z][w].highlight();
        previousClickedX = z;
        previousClickedY = w;
      }
    }
  }
}
