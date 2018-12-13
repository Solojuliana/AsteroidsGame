Spaceship boo;
Star[] nightSky = new Star[100];
ArrayList <Asteriod> particles;
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
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


	for(int i=0; i<bullet.size(); i++){
		for(int a=0; a<particles.size(); a++){
			if(dist(bullet.get(i).getX(),bullet.get(i).getY(),particles.get(a).getX(),particles.get(a).getY()) < 20){
				particles.remove(a);
				bullet.remove(i);
				break;
			}

		}
	}

	for(int i=0; i<bullet.size(); i++){
		if(bullet.get(i).getX() >= 600 || bullet.get(i).getX() <= 0){
			bullet.remove(i);
			break;
		}
	}

	for(int i=0; i<bullet.size(); i++){
		if(bullet.get(i).getY() >= 600 || bullet.get(i).getY() <= 0){
			bullet.remove(i);
			break;
		}
	}

	for(Bullet bull: bullet){
		bull.move();
		bull.show();
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
  	boo.accelerate(-0.2);
  }

  if(key == ' ')
  {
  	bullet.add(new Bullet(boo));
  }

}




