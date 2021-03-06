class Asteriod extends Floater
{
	private int myRotationSpeed;
	public Asteriod()
	{
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -11;
		yCorners[0] = -8;
		xCorners[1] = 7;
		yCorners[1] = -8;
		xCorners[2] = 13;
		yCorners[2] = 0;
		xCorners[3] = 6;
		yCorners[3] = 10;
		xCorners[4] = -11;
		yCorners[4] = 8;
		xCorners[5] = -5;
		yCorners[5] = 0;

		myColor = 0;
        myCenterX = (int)(Math.random()*600);
        myCenterY = (int)(Math.random()*600);
        myPointDirection = (int)(Math.random()*180);
        myDirectionX = (int)(Math.random()*3)-1;
        myDirectionY = (int)(Math.random()*3)-1;
        myRotationSpeed = (int)(Math.random()*3)-1;
	}

	public void show ()  
  	{              
    	fill(222, 112, 9); 
    	stroke(227, 151,121); 
    	translate((float)myCenterX, (float)myCenterY);
    	float dRadians = (float)(myPointDirection*(Math.PI/180));
	    rotate(dRadians);
    	beginShape();
    	for (int nI = 0; nI < corners; nI++)
    	{
      	vertex(xCorners[nI], yCorners[nI]);
    	}
    	endShape(CLOSE);
    	rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
    	//craters
    	fill(0);
    	ellipse((float)myCenterX -2, (float)myCenterY-2, 7, 7);
    	ellipse((float)myCenterX+3, (float)myCenterY + 3, 6,6);
  	}   

	public void move()
	{
		myPointDirection+=myRotationSpeed; 

		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY;  		
    	if(myCenterX >width)
    	{     
      	myCenterX = 0;    
    	}    
    	else if (myCenterX<0)
    	{     
     	myCenterX = width;    
    	}    
    	if(myCenterY >height)
    	{    
      	myCenterY = 0;    
    	} 
    	else if (myCenterY < 0)
    	{     
      	myCenterY = height;    
    	}   
  	}   


	public void setX(int x) {myCenterX = x;}
    public int getX() {return (int)myCenterX;}   
    public void setY(int y) {myCenterY = y;}   
    public int getY() {return (int)myCenterY;}   
    public void setDirectionX(double x) {myDirectionX = x;}   
    public double getDirectionX() {return (int)myDirectionX;}   
    public void setDirectionY(double y) {myDirectionY = y;}   
    public double getDirectionY() {return (int)myDirectionY;}   
    public void setPointDirection(int degrees) {myPointDirection = degrees;}   
    public double getPointDirection() {return (int)myPointDirection;
   } 
}
