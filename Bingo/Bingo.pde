PImage B, I, N, G, O, B1, B2, B3, B4, B5, I1, I2,I3, I4, I5, N1, N2, N3, N4, N5, G1, G2, G3, G4, G5, O1, O2, O3, O4, O5, bingo;
boolean win = false;
Block[] bl = new Block[25];
int[] Bnum = new int[5];
int[] Inum = new int[5];
int[] Nnum = new int[5];
int[] Gnum = new int[5];
int[] Onum = new int[5];
int count = 0;


void setup()
{
  size(500, 571);
  Rand(Bnum, 15, 0);
  Rand(Inum, 30, 16);
  Rand(Nnum, 45, 31);
  Rand(Gnum, 60, 46);
  Rand(Onum, 75, 61);
  B = loadImage ("B.jpg");
  I = loadImage ("I.jpg");
  N = loadImage ("N.jpg");
  G = loadImage ("G.jpg");
  O = loadImage ("O.jpg");
  B1 = loadImage(Bnum[0] + ".jpg");
  B2 = loadImage(Bnum[1] + ".jpg");
  B3 = loadImage(Bnum[2] + ".jpg");
  B4 = loadImage(Bnum[3] + ".jpg");
  B5 = loadImage(Bnum[4] + ".jpg");
  I1 = loadImage(Inum[0] + ".jpg");
  I2 = loadImage(Inum[1] + ".jpg");
  I3 = loadImage(Inum[2] + ".jpg");
  I4 = loadImage(Inum[3] + ".jpg");
  I5 = loadImage(Inum[4] + ".jpg");
  N1 = loadImage(Nnum[0] + ".jpg");
  N2 = loadImage(Nnum[1] + ".jpg");
  N3 = loadImage(Nnum[2] + ".jpg");
  N4 = loadImage(Nnum[3] + ".jpg");
  N5 = loadImage(Gnum[4] + ".jpg");
  G1 = loadImage(Gnum[0] + ".jpg");
  G2 = loadImage(Gnum[1] + ".jpg");
  G3 = loadImage(Gnum[2] + ".jpg");
  G4 = loadImage(Gnum[3] + ".jpg");
  G5 = loadImage(Gnum[4] + ".jpg");
  O1 = loadImage(Onum[0] + ".jpg");
  O2 = loadImage(Onum[1] + ".jpg");
  O3 = loadImage(Onum[2] + ".jpg");
  O4 = loadImage(Onum[3] + ".jpg");
  O5 = loadImage(Onum[4] + ".jpg");
  bingo = loadImage ("Bingo.png");
  
  for (int y = 70; y <= 500; y += 100)
  {
    for (int x = 0; x <= 400; x += 100)
    {
      bl[count] = new Block(x, y);
      count++;
    }
  }
}

void draw()
{
 background(255);
 image (B, 20, 20, 50, 50);
 image (I, 140, 20, 20, 50);
 image (N, 220, 20, 70, 50);
 image (G, 330, 20, 50, 50);
 image (O, 430, 20, 50, 50);
 
 for(int x = 0; x < 25; x++)
 {
  bl[x].drawBlock(); 
 }
 
 image (B1, 20, 100, 50, 50);
 image (B2, 20, 200, 50, 50);
 image (B3, 20, 300, 50, 50);
 image (B4, 20, 400, 50, 50);
 image (B5, 20, 500, 50, 50);
 image (I1, 120, 100, 50, 50);
 image (I2, 120, 200, 50, 50);
 image (I3, 120, 300, 50, 50);
 image (I4, 120, 400, 50, 50);
 image (I5, 120, 500, 50, 50);
 image (N1, 220, 100, 50, 50);
 image (N2, 220, 200, 50, 50);
 image (N3, 220, 300, 50, 50);
 image (N4, 220, 400, 50, 50);
 image (N5, 220, 500, 50, 50);
 image (G1, 320, 100, 50, 50);
 image (G2, 320, 200, 50, 50);
 image (G3, 320, 300, 50, 50);
 image (G4, 320, 400, 50, 50);
 image (G5, 320, 500, 50, 50);
 image (O1, 420, 100, 50, 50);
 image (O2, 420, 200, 50, 50);
 image (O3, 420, 300, 50, 50);
 image (O4, 420, 400, 50, 50);
 image (O5, 420, 500, 50, 50);
   
 if (checkWin())
 {
   win();
 }
}

void mousePressed()
{
  int x = (int) (mouseX / 100) * 100;
  int y = (int) (mouseY / 100) * 100;
  
  y -= 30;
  
  for (int z = 0; z < 25; z++)
  {
    if (bl[z].xCordinate == x && bl[z].yCordinate == y)
    {
     bl[z].setClicked(true); 
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

boolean checkWin()
{
  int temp = 0;
  
  if (bl[0].getClicked() && bl[6].getClicked() && bl[12].getClicked() && bl[18].getClicked() && bl[24].getClicked())
    return true;
  if (bl[4].getClicked() && bl[8].getClicked() && bl[12].getClicked() && bl[16].getClicked() && bl[20].getClicked())
    return true;
  if (bl[3].getClicked() && bl[4].getClicked() && bl[8].getClicked() && bl[9].getClicked())
    return true;
    
  for(int x = 1; x <= 25; x++)
  {
    if (bl[x - 1].getClicked())
      temp++;
    if (temp == 5)
      return true;
    if (x % 5 == 0)
      temp = 0;
  }
  
  Block[][] Arr = {{bl[0], bl[5], bl[10], bl[15], bl[20]},
                 {bl[1], bl[6], bl[11], bl[16], bl[21]},
                 {bl[2], bl[7], bl[12], bl[17], bl[22]},
                 {bl[3], bl[8], bl[13], bl[18], bl[23]},
                 {bl[4], bl[9], bl[14], bl[19], bl[24]}};
  
  
  for (Block[] tem: Arr)
  {
    temp = 0;
    for(Block arr: tem)
    {
     if (arr.getClicked())
       temp++;
     if (temp == 5)
       return true;
    }
  }
  
  return false;
}

void win()
{
 tint(255, 150);
 image (bingo, 50, 200, 400, 250);
 noTint();
}
