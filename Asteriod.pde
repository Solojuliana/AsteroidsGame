class Asteriod extends Floater
{
	private int myRotationSpeed, myColor2, myColor3;
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

		myColor = 227;
		myColor2 = 151;
		myColor2 = 101;
        myCenterX = (int)(Math.random()*600);
        myCenterY = (int)(Math.random()*600);
        myPointDirection = (int)(Math.random()*180);
        myDirectionX = (int)(Math.random()*3)-1;
        myDirectionY = (int)(Math.random()*3)-1;
        myRotationSpeed = (int)(Math.random()*3)-1;
	}

	public void show ()  
  	{             
    	fill(myColor, myColor2, myColor3);   
    	stroke(myColor, myColor2,myColor3); 
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
  	}   

	public void move()
	{
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
