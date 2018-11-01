//your variable declarations here
Spaceship boo;
Star[] nightSky = new Star[50];
public void setup() 
{
  //your code here
  size(600,600);
  boo = new Spaceship();
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i].show();
  }
  boo.show();
  boo.move();
}

public void keyPressed()
{
  if(key == 'q')
  {
     boo.setDirectionX(0); 
     boo.setDirectionY(0);
     boo.setX((int)(Math.random()*450)+100);
     boo.setY((int)(Math.random()*450)+100);
     boo.setPointDirection((int)(Math.random()*360));
  }

  if(key == 'd')
  {
  	boo.turn(8);
  }

   if(key == 'a')
  {
  	boo.turn(-8);
  }

  if(key == 'w')
  {
  	boo.accelerate(0.5);
  }
}



