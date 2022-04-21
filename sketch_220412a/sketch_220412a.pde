boolean win = false;
Block[] bl = new Block[64];

int count = 0, reset = 1, previousClicked = 0;


void setup()
{
  fullScreen();
  //size(500, 571);
 
  
  for (int y = 0; y < 800; y += 100)
  {
    for (int x = 300; x < 1100; x += 100)
    {
      
      bl[count] = new Block(x, y);
      count++;
    }
  }
  
  for (int x = 0; x < 64; x++)
  {
    if (count % 8 == 0)
      reset++;
    if (count % 2 == 0 && reset % 2 == 0)
      bl[x].setColor(color(177,107,58));
    else if (reset % 2 == 0)
      bl[x].setColor(color(77,26,34));
    else if (count % 2 == 0)
      bl[x].setColor(color(77,26,34));
    else
      bl[x].setColor(color(177,107,58));
    count++;
  }
}

void draw()
{
 background(color(150,150,150));
 
 for(int x = 0; x < 64; x++)
 {
   bl[x].drawBlock(); 
 }
  hoover();
}

void mousePressed()
{
  int x = (int) (mouseX / 100) * 100;
  int y = (int) (mouseY / 100) * 100;
   
   bl[previousClicked].setClicked(false);
   
  for (int z = 0; z < 64; z++)
  {
    if (bl[z].isBlock(x, y))
    {
      bl[z].setClicked(true); 
      bl[z].highlight();
      previousClicked = z;
    }
  }
}

void hoover()
{
  int x = (int) (mouseX / 100) * 100;
  int y = (int) (mouseY / 100) * 100; 
  
  //println(x + "\t" + y);
  
  for (int z = 0; z < 64; z++)
  {
    if (bl[z].isBlock(x, y))
      bl[z].highlight(); 
    else if (!bl[z].getClicked())
      bl[z].unHighlight();
  }
}
