import processing.sound.*;

SoundFile music;
boolean[] keys = new boolean[6];
Ships hero = new Ships(100, 200);
ArrayList <Enemy> alien = new ArrayList <Enemy>();
PImage easy, med, hard, bg, bg2, explosion, yesNo;
ArrayList <Bullet> bullet = new ArrayList<Bullet>();
ArrayList <Bullet> enemyBullet = new ArrayList<Bullet>();
ArrayList <Mothership> boss = new ArrayList<Mothership>();
boolean shot = false, shooting = false, collided = false, enemyShooting = true, dead; 
int start = 0, bulletFired = 0, eBulletFired = 0, timer = 0, dif, waveCounter = 0, score = 0, x, y, lives = 3, turn = 1, tCount = 0, bD = 0;

void setup()
{
  fullScreen();
  music = new SoundFile(this, "music.mp3");
  easy = loadImage ("easy.jpg"); 
  med = loadImage ("med.jpg");
  hard = loadImage ("hard.jpg");
  bg = loadImage ("background.png");
  bg2 = loadImage("background.jpg");
  explosion = loadImage ("explosion.png");
  
  for(int i = 0; i < 3; i++)
  {
    alien.add (new Enemy(width, ((height / 4) * (i + 1)), (i + 1))); 
  }
  //boss.add(new Mothership());
}

void draw()
{
  if (collided)
  {
    yesNo = loadImage("yesno.jpg");
    cursor(CROSS);
    background (0);
    textSize (64);
    textAlign (CENTER);
    text ("You lost :(", width/2, height/2);
    text ("Restart?", width/2, height/1.5);
    image (yesNo, width/2, height/1.2);
  }
  
  else if (alien.size() == 0)
  {
    if (waveCounter < start)
    {
      for (int i = 0; i < 3; i++)
      {
        alien.add (new Enemy(width, ((height / 4) * (i + 1)), (i + 1))); 
      }
      waveCounter++;
    }

    else
    {
      if (bD == 1)
      {
        background (0);
        textSize (64);
        textAlign (CENTER);
        text ("You Won :)", width/2, height/2);
      }
      else 
        boss.add(new Mothership());
    }
  }
  
  else //game is not over
  {
    if (start == 0)
    {
      cursor(CROSS);
      background(0);
      homescreen();
    }
    else
    {
      playMusic();
      noCursor();
      if (start == 3)
      {
        dif = 185;
        try
        {
          background (bg);
        }
        catch (Exception e)
        {
          background (bg2);
        }
      }
      else 
      {
        if (start == 2)
          dif = 350;
        else
          dif = 450;
        background (0);
      } 
     text(lives, 100, 100);
     hero.update();
     hero.show();
     if (hero.collision())
      lives--;
     hero.bulletCollision();
     if (lives <= 0)
        hero.alive = false;
     
     if (hero.alive == false)
     {
       image (explosion, hero.location.x, hero.location.y, 40, 40);
       collided = true;
       waveCounter = start + 1;
     }
      
    
      
      for (int x = 0; x < bullet.size(); x++)
      {
        bullet.get(x).move();
        bullet.get(x).show();
        
        if (bullet.get(x).outScreen() == true || bullet.get(x).hit)
          bullet.remove(bullet.get(x));
      }
     
     for (int x = 0; x < alien.size(); x++)
     {
        alien.get(x).update();
        alien.get(x).show();
        alien.get(x).bulletCollision();
        text(tCount, 200, 100);
        dead = (alien.get(x).getAlive() == false);
        
        if (dead)
        {
          score += 10;
          image(explosion, alien.get(x).location.x, alien.get(x).location.y, 40, 40);
          alien.remove(alien.get(x));
        }
     }
     
     for (int x = 0; x < boss.size(); x++)
     {
        boss.get(x).update();
        boss.get(x).show();
        boss.get(x).bulletCollision();
        text(tCount, 200, 100);
        dead = (boss.get(x).getAlive() == false);
        
        if (dead)
        {
          score += 10;
          image(explosion, boss.get(x).location.x, boss.get(x).location.y, 40, 40);
          boss.remove(boss.get(x));
          bD = 1;
        }
     }
     
     for (int x = 0; x < enemyBullet.size(); x++)
     {
       enemyBullet.get(x).move();
       enemyBullet.get(x).show();
      
       if (enemyBullet.get(x).outScreen() == true || enemyBullet.get(x).hit)
         enemyBullet.remove(enemyBullet.get(x));
    
    } 
      text (score, 500, 500);
      timer++;
      if (timer%10 == 0)
        score++;
      
      text (timer, 500, 100);
      text (score, 500, 500);
      if (timer == dif)
      {
        eBulletFired = 0;
        timer = 0;
        turn = 0;
      }
      turnCount();
      if (timer % 5 == 0)
        bulletFired = 0;
   }
 }
}

void homescreen()
{
  image (easy, width/2.7, height/5, 300, 100);
  image (med, width/2.7, height/2, 300, 100);
  image (hard, width/2.7, height/1.3, 300, 100);
}

void mouseClicked()
{
  if (start == 0)
    buttonClicked();
  else
  {
    if (waveCounter >= start)
    {
      System.out.println(mouseY + " " + height/1.343 + " " + height/3.88);
      x = mouseX;
      y = mouseY;
      buttonClicked();
    }
   // shooting = true;
  }
}

void mouseReleased()
{
  if (start != 0)
  {
    shooting = false;
    bulletFired = 0;
  }
}

void keyPressed()
{
  
 if (key == 'w' || keyCode == UP)
  keys[0] = true;
 else if (key == 'e' || keyCode == RIGHT)
  keys[1] = true;
 else if (key == 'q' || keyCode == LEFT)
   keys[2] = true;
 else if(key == 's' || keyCode == DOWN)
   keys[3] = true;
 else if (key == 'a')
   keys[4] = true;
 else if (key == 'd')
   keys[5] = true;
 else if (key == ' ')
   shooting = true;
}

void keyReleased()
{
 if (key == 'w' || keyCode == UP)
   keys[0] = false;
 else if (key == 'e' || keyCode == RIGHT)
   keys[1] = false;
 else if (key == 'q' || keyCode == LEFT)
   keys[2] = false;
 else if (key == 's' || keyCode == DOWN)
   keys[3] = false;
 else if (key == 'a')
   keys[4] = false;
 else if (key == 'd')
   keys[5] = false;
 else if (key == ' ')
 {
   shooting = false;
   bulletFired = 0;
 }
}

void buttonClicked()
{
  if (waveCounter >= start)
  {
     if(y >= height/1.343 && y <= height/3.89)
       restart();
  }
  if (mouseX >= width/2.7 && mouseX <= (width/2.7) + 300 && mouseY <= (height/5) + 100 && mouseY >= height/5)
  {
    start = 1;
  }
  else if (mouseX >= width/2.7 && mouseX <= (width/2.7) + 300 && mouseY <= (height/2) + 100 && mouseY >= height/2)
  {
    start = 2;
  }
  else if (mouseX >= width/2.7 && mouseX <= (width/2.7) + 300 && mouseY <= (height/1.3) + 100 && mouseY >= height/1.3)
  {
    start = 3;
  }
}

void restart()
{
  System.out.println("H");
  bulletFired = 0;
  eBulletFired = 0;
  timer = 0;
  waveCounter = 0;
  score = 0;
  shot = false;
  collided = false;
  hero.location.set(100, 100);
  setup();
  draw();
}

void turnCount()
{
    if(tCount == alien.size() - 1)
    {
      turn = 1;
      tCount = 0;
    }
}

void playMusic()
{
  if (!music.isPlaying())
    music.play();
}
