class Board
{
  private Block[][] bl = new Block[8][9];
  private int count = 0, countX = 0, countY = 0, reset = 1;
 
 void makeBoard()
 {
   for (int y = 0; y < 750; y += 97)
   {
    for (int x = 300; x < 1100; x += 100)
    {        
      bl[countX][countY] = new Block(x, y, count);
      countX++;
      count++;
    }
    countX = 0;
    countY++;
   }
   bl[7][8] = new Block(1000, 100, 64);
   
   for (int x = 0; x < 8; x++)
   {
     for (int y = 0; y < 8; y++)
     {
      if (count % 8 == 0)
        reset++;
      if (count % 2 == 0 && reset % 2 == 0)
        bl[x][y].setColor(color(177,107,58));
      else if (reset % 2 == 0)
        bl[x][y].setColor(color(77,26,34));
      else if (count % 2 == 0)
        bl[x][y].setColor(color(77,26,34));
      else
        bl[x][y].setColor(color(177,107,58));
      count++;
     }
  }
}
 
 void drawBoard()
 {
    for(int x = 0; x < 8; x++)
    {
      for (int y = 0; y < 8; y++)
      {
       bl[x][y].drawBlock();
      }
    }
    hover();
 }
 
  void hover()
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

    for (int z = 0; z < 8; z++)
    {
      for (int w = 0; w < 8; w++)
      {
        if (bl[z][w].isBlock(x, y))
          bl[z][w].highlight(); 
        else if (!bl[z][w].getClicked())
          bl[z][w].unHighlight();
      }
    }
  }
  
  int getXcordinate(int x)
  {
   return bl[x][0].getXcordinate(); 
  }
  
  int getYcordinate(int y)
  {
   return bl[0][y].getYcordinate(); 
  }
}
