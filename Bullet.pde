class Bullet
{
 int type;
 PShape bullet;
 boolean hit = false;
 PVector locationB, velocityB;
 float xLocation, yLocation, angl;
 int xSize, ySize;
 
 public Bullet(float x, float y, float angl, float s, int t, int xS, int yS)
 {
   locationB = new PVector (x, y);
   velocityB = PVector.fromAngle(radians(angl));
   velocityB.mult(s);
   type = t;
   xSize = xS;
   ySize = yS;
 }
 
 void show()
 {
   if (outScreen() == false)
   {
      bullet = createShape (ELLIPSE, locationB.x, locationB.y, xSize, ySize);
      bullet.setFill(color(255));
      shape (bullet);
   }
 }
 
 void move()
 {
   if (outScreen() == false)
      locationB.add(velocityB);
 }
 
 boolean outScreen()
 {
  if (locationB.x > width || locationB.y > height || locationB.x < 0 || locationB.y < 0)
    return true;
  return false;
 }
 
 void Hit()
 {
   hit = true;
 }
}
