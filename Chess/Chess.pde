boolean win = false;
int previousClickedX = 0, previousClickedY = 0;
Board board;
Player p1;


void setup()
{
  fullScreen();
  //size(500, 571);
  board = new Board();
  board.makeBoard();
  p1 = new Player(1);
}

void draw()
{
 background(color(150,150,150));
 board.drawBoard();
 p1.update();
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
   
  for (int z = 0; z < 8; z++)
  {
    for (int w = 0; w < 8; w++)
    {
      if (board.bl[z][w].isBlock(x, y))
      {
        println("Block: " + board.bl[z][w].getBlock() + " was clicked");
        board.bl[z][w].setClicked(true); 
        board.bl[z][w].highlight();
        previousClickedX = z;
        previousClickedY = w;
      }
    }
  }
}
