class Enemy extends Ships
{
  PImage badGuy;
  int level, health;
  boolean alive = true;
  PVector speed = new PVector (0, 0), location = new PVector (width, 200), force;
  
  public Enemy()
  {
    health = 1;
    level = 2;
    angle = 180;
  }
  public Enemy(float x, float y, int lvl)
  {
   health = 1;
   level = lvl;
   location.x = x;
   location.y = y;
   angle = 180;
  }
  
  void show()
 {
   pushMatrix();
   badGuy = loadImage ("alien.png");
   translate (location.x, location.y);
   rotate (radians(angle + 90));
   imageMode (CENTER);
   image (badGuy, 0, 0, 40, 40);
   popMatrix();
 }
  
  void update()
  {
   move();
   eShoot();
   outBounds();
    
   location.add(speed);
   speed.mult(.94);
  }
  
  void move()
  {
    speed = PVector.fromAngle(radians(angle));
    speed.mult(1.5);
    if(level == 3 && turn == 0)
    {
      turnRight();
      tCount++;
    }
    if(level == 1 && turn == 0)
    {
      turnLeft();
      tCount++;
    }
  }
  
  void turnLeft()
  {
    angle += 90;
  }
  void turnRight()
  {
    angle -= 90;
  }
  
 void eShoot()
 {
    if (enemyShooting && eBulletFired < 5)
   {
     enemyBullet.add(new Bullet(location.x, location.y, angle, 1.75, 2, 10, 10));
     enemyBullet.add(new Bullet(location.x, location.y+25, angle+5, 1.75, 2, 10, 10));
     enemyBullet.add(new Bullet(location.x, location.y-25, angle-5, 1.75, 2, 10, 10));
     enemyBullet.add(new Bullet(location.x, location.y+25, angle+10, 1.75, 2, 10, 10));
     enemyBullet.add(new Bullet(location.x, location.y-25, angle-10, 1.75, 2, 10, 10));
     eBulletFired++;
   }
 }  
 
 void outBounds()
 {
   if (location.x > width)
   {
     location.x = width - 10;
     angle -= 180;
     location.x--;
   }
   if (location.x < 0)
   {
     location.x = 10;
     angle += 180;
   }
   if (location.y > height)
   {
     location.y = height - 10;
     angle -= 180;
     location.y--;
   }
   if (location.y < 0)
   {
     location.y = 10;
     angle -= 180;
     location.y++;
   }
 }
  
 void bulletCollision()
 {
    for (Bullet bulletTemp: bullet)
    {
      if(bulletTemp.type == 1)
      {
        float d = dist (location.x, location.y, bulletTemp.locationB.x , bulletTemp.locationB.y);
                 
        if (d - 20 < 0)   
        {
         health--;
         bulletTemp.Hit();
         
         if(health == 0)
           alive = false;
        }
      }
    }
 }
 
 boolean getAlive()
 {
  return alive; 
 }
}
