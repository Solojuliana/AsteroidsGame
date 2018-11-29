//your variable declarations here
Spaceship boo;
Star[] nightSky = new Star[100];
ArrayList <Asteriod> particles;
public void setup() 
{
  size(600,600);
  boo = new Spaceship();
  for(int i = 0; i < nightSky.length; i++)
  {
  	nightSky[i] = new Star();
  }

  particles = new ArrayList <Asteriod>();
  for(int j = 0; j < 20; j++)
  {
  	particles.add(new Asteriod());
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

  for(int j = 0; j < particles.size(); j++)
  {
  	particles.get(j).show();
  	particles.get(j).move();
  	float d = dist(boo.getX(), boo.getY(), particles.get(j).getX(), particles.get(j).getY());
  	if(d < 20)
  		particles.remove(j);
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

  if(key == 's')
  {
  	//boo.setX(boo.getX());
  	//boo.setY(boo.getY());
  	boo.accelerate(-0.2);
  }
}



