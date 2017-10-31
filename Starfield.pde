Particle[] aBunch = new Particle[10000];
void setup()
{
  size (1000,600);
for (int i =0; i < aBunch.length; i++)
  {
    aBunch[i] = new NormalParticle();
  }
  aBunch[0] = new OddballParticle();
  aBunch[1] = new JumboParticle();
}
void draw()
{
  background(0);
  for (int i=0; i < aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myDir;
  int myColor;
  NormalParticle()
  {
    myY =300;
    myX =500;
    mySpeed = Math.random()*10;
    myDir= Math.random()*5*Math.PI;
  }
  public void move()
  {
    myX=myX+mySpeed*Math.cos(myDir);
    myY=myY+mySpeed*Math.sin(myDir);
  }
  public void show()
  {
    noStroke();
    fill(255);
    ellipse((float)myX, (float)myY,10,1);
  }
  
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  double myX, myY;
  int myColor;
  OddballParticle()
  {
    myColor=(int)(Math.random()*256)+1;
  }
  public void move()
  {
    myY = myY + Math.random()*5;
    myX = myX + Math.random()*5;
  }
  public void show()
  {
    fill(125,15,165);
    ellipse((float)myX,(float)myY,20,20);
  }
    
}
class JumboParticle extends NormalParticle //uses inheritance
{
  public void show()
  {
    fill(125,0,0);
    ellipse((float)myX, (float)myY,100,100);
  }
}