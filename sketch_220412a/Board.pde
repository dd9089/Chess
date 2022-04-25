class Board
{
  private Block[][] bl = new Block[8][8];
  private int count = 0, countX = 0, countY = 0, reset = 1;
 
 void makeBoard()
 {
   for (int y = 0; y < 800; y += 100)
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
    int y = (int) (mouseY / 100) * 100; 
    
    
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
  
 
}
