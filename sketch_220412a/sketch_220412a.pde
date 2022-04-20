boolean win = false;
Block[] bl = new Block[64];

int count = 0;


void setup()
{
  fullScreen();
  //size(500, 571);
 
  
  for (int y = 0; y < 800; y += 100)
  {
    for (int x = 250; x < 1050; x += 100)
    {
      
      bl[count] = new Block(x, y);
      count++;
    }
  }
}

void draw()
{
 background(color(150,150,150));
 
 for(int x = 0; x < 64; x++)
 {
   if ((x + 1) % 2 == 0)
     fill(color(196,150,120));
   else
     fill(0);
   bl[x].drawBlock(); 
 }
}

void mousePressed()
{
  int x = (int) (mouseX / 100) * 100;
  int y = (int) (mouseY / 100) * 100;
   
  
  for (int z = 0; z < 64; z++)
  {
    if (bl[z].isBlock(x, y))
    {
      bl[z].setClicked(true); 
      println("block " + z + " " + bl[z].getClicked());
    }
  }
}

void Rand(int[] num, int max, int min)
{
  int temp;
   
  for (int x = 0; x < 5; x++)
  {
    temp = (int) (Math.random() * max) + 1;
    
    if (checkNum(temp, num) && temp >= min)
      num[x] = temp;
    else
      x--;
  }
}

boolean checkNum(int x, int[] num)
{
  for(int y: num)
  {
    if(x == y)
      return false;
  }
  return true;
}
