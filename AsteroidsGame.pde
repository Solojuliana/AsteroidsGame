//your variable declarations here
Spaceship boo;
Star[] nightSky = new Star[100];
Asteriod[] particles = new Asteriod[10];
public void setup() 
{
  //your code here
  size(600,600);
  boo = new Spaceship();
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }

  for(int j = 0; j < particles.length; j++)
  {
  	particles[j] = new Asteriod();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i].show();
  	nightSky[i].move();
  }

  for(int j = 0; j < particles.length; j++)
  {
  	particles[j].show();
  	particles[j].turn(2);
  	particles[j].move();
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
     boo.nofire();
  }

  if(key == 'd')
  {
  	boo.turn(10);
  	boo.nofire();
  }

   if(key == 'a')
  {
  	boo.turn(-8);
  	boo.nofire();
  }

  if(key == 'w')
  {
  	boo.accelerate(0.2);
  	boo.fire();
  }
}



