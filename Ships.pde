class Ships
{
 PImage ship;
 float angle = 0;
 boolean alive = true;
 PVector velocity = new PVector(0, 0), location = new PVector(100, 100), force, strafe;
 
 public Ships()
 {
   location.x = 500;
   location.y = 500;
 } 
 public Ships(int x, int y)
 {
   location.x = x;
   location.y = y;
 }
 
 void show()
 {
   pushMatrix();
   ship = loadImage ("craft.png");
   translate (location.x, location.y);
   rotate (radians(angle + 90));
   imageMode (CENTER);
   image (ship, 0, 0);
   popMatrix();
 }
 
 void update()
 {
  move();
  shoot();
  collision();
  outBounds();
  
  location.add(velocity);
  velocity.mult(.94);
 }
 
 void move()
 {
   if (keys[0])
   {
     velocity = PVector.fromAngle(radians(angle));
     velocity.mult(3);
   }
   if(keys[0] == false)
     velocity.mult(.2);
   if (keys[1])
     angle += 3;
   if (keys[2])
     angle -= 3;
   if(keys[3])
   {
      velocity = PVector.fromAngle(radians(angle - 180));
      velocity.mult(.85);
      location.add(velocity);
   }
   if (keys[4])
   {
     strafe = PVector.fromAngle(radians(angle - 90));
     strafe.mult(3);
     location.add(strafe);
   }
   if (keys[5])
   {
     strafe = PVector.fromAngle(radians(angle + 90));
     strafe.mult(3);
     location.add(strafe); 
   }
 }
 
 void shoot()
 {
   if (shooting && bulletFired < 1)
   {
     bullet.add(new Bullet(location.x, location.y, angle, 20, 1, 10, 10));
     bulletFired++;
   }
 }
 
  
  boolean collision()
  {
    for (Enemy alienTemp: alien)
    {
      float d = dist (location.x, location.y, alienTemp.location.x , alienTemp.location.y);
               
      if (d - 7.5 < 0)
      {
       image(explosion, alienTemp.location.x, alienTemp.location.y, 40, 40);
       return true;
      }
    }
   return false; 
  }
  
  void bulletCollision()
 {
    for (Bullet bulletTemp: enemyBullet)
    {
      if(bulletTemp.type == 2)
      {
        float d = dist (location.x, location.y, bulletTemp.locationB.x , bulletTemp.locationB.y);
               
        if (d - 7.5 < 0)     
        {
          lives--;
          bulletTemp.Hit();
        }
      }
    }
 }
  
  void outBounds()
  {
   if (location.x > width)
   {
     location.x = width;
   }
   if (location.x < 0)
   {
     location.x = 0;
   }
   if (location.y > height)
   {
     location.y = height;
   }
   if (location.y < 0)
   {
     location.y = 0;
   }
  }
}
