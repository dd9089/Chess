class Mothership extends Enemy
{
  PImage MotherShip;
  
  public Mothership()
  {
   health = 100;
   location.x = 500;
   location.y = 500;
   angle = 180;
  }
  
   void update()
   {
    move();
    chooseAttack();
    chooseAttack();
    chooseAttack();
    outBounds();
    
   location.add(speed);
   speed.mult(.94);
  }
  
 void show()
 {
   pushMatrix();
   MotherShip = loadImage ("alien.png");
   translate (location.x, location.y);
   rotate (radians(angle + 90));
   imageMode (CENTER);
   image (MotherShip, 0, 0, 100, 100);
   popMatrix();
 }
 
 void bShoot1()
 {
    if (enemyShooting && eBulletFired < 5)
   {
     for(int x = 0; x < 360; x+=5)
       enemyBullet.add(new Bullet(location.x, location.y, angle+x, 1.75, 2, 10, 10));
     eBulletFired++;
   }
 }
 
 void bShoot2()
 {
    if (enemyShooting && eBulletFired < 10)
   {
     for(int x = 0; x < 360; x+=6)
     {
       enemyBullet.add(new Bullet(location.x, location.y, angle+x, 1.75, 2, 10, 10));
       if(x == 90)
        x+=180;
       
     }
     eBulletFired++;
   }
 }
 
 void bShoot3()
 {
    if (enemyShooting && eBulletFired < 20)
   {
     enemyBullet.add(new Bullet(location.x, location.y, angle, 1.75, 2, 20, 20));
     enemyBullet.add(new Bullet(location.x, location.y+10, angle+5, 1.75, 2, 10, 10));
     enemyBullet.add(new Bullet(location.x, location.y-10, angle-5, 1.75, 2, 10, 10));
     enemyBullet.add(new Bullet(location.x, location.y, angle+10, 1.75, 2, 20, 20));
     enemyBullet.add(new Bullet(location.x, location.y, angle-10, 1.75, 2, 20, 20));
     eBulletFired++;
   }
 }
 
 void bShoot4()
 {
   if (enemyShooting && eBulletFired < 2)
   {    
     enemyBullet.add(new Bullet(location.x, location.y, angle, 2, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle+45, 1.25, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle-45, 1.25, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle+180, 1.25, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle+23, 2, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle-23, 2, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle-117, 2, 2, 100, 100));
     enemyBullet.add(new Bullet(location.x, location.y, angle+117, 2, 2, 100, 100)); 
     eBulletFired++;
   }
 }
 
 void bShoot5()
 {
    if (enemyShooting && eBulletFired < 20)
   {
     enemyBullet.add(new Bullet(location.x, location.y, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x, location.y+10, angle+5, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x, location.y-10, angle-5, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle+10, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-10, 1.75, 2, 15, 15));
     eBulletFired++;
   }
 }
 
  void bShoot6()
 {
    if (enemyShooting && eBulletFired < 20)
   {
     enemyBullet.add(new Bullet(location.x, location.y, angle, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y+10, angle+5, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y-10, angle-5, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle+10, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-10, 1.75, 2, 25, 15));
     eBulletFired++;
   }
 }
 
 void bShoot7()
 {
    if (enemyShooting && eBulletFired < 2)
   {
     enemyBullet.add(new Bullet(location.x-10, location.y, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+30, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-30, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+60, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-60, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+90, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-90, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+120, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-120, angle, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+30, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-30, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+60, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-60, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+90, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-90, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y+120, angle+180, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-10, location.y-120, angle+180, 1.75, 2, 15, 15));
    
     eBulletFired++;
   }
 }
 
 void bShoot8()
 {
    if (enemyShooting && eBulletFired < 2)
   {
     enemyBullet.add(new Bullet(location.x, location.y, angle+90, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-90, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle+115.75, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-115.75, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle+21.75, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-21.75, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle+10.5, 1.75, 2, 25, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-10.5, 1.75, 2, 25, 15));
     eBulletFired++;
   }
 }
 
 void bShoot9()
 {
    if (enemyShooting && eBulletFired < 2)
   {
     enemyBullet.add(new Bullet(location.x, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+30, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-30, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+60, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-60, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+90, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-90, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+120, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-120, location.y, angle+90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+30, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-30, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+60, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-60, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+90, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-90, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x+120, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x-120, location.y, angle-90, 1.75, 2, 15, 15));
     enemyBullet.add(new Bullet(location.x, location.y, angle-90, 1.75, 2, 15, 15));
    
     eBulletFired++;
   }
 }
 
 void bulletCollision()
 {
    for (Bullet bulletTemp: bullet)
    {
      if(bulletTemp.type == 1)
      {
        float d = dist (location.x, location.y, bulletTemp.locationB.x , bulletTemp.locationB.y);
                 
        if (d - 100 < 0)   
        {
         health--;
         bulletTemp.Hit();
         
         if(health == 0)
           alive = false;
        }
      }
    }
 }
 
 void chooseAttack()
 {
   int x = (int)random(9);
   
  switch(x)
  {
   case 0:
     bShoot1();
     break;
   case 1:
    bShoot2();
    break;
   case 2:
    bShoot3();
    break;
   case 3:
    bShoot4();
    break;
   case 4:
    bShoot5();
    break;
   case 5:
    bShoot6();
    break;
   case 6:
    bShoot7();
    break;
   case 7:
    bShoot8();
    break;
   case 8:
    bShoot9();
    break;
  }
 }
}
