class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, myColor1, myColor2, myColor3, size;
  public Star()
  {
  	myX = (int)(Math.random()*600);
  	myY = (int)(Math.random()*600);
  	myColor1 = (int)(Math.random()*156)+100;
  	myColor2 = (int)(Math.random()*156)+100;
  	myColor3 = (int)(Math.random()*156)+100;
    size = (int)(Math.random()*5)+2;
  }
  public void show()
  {
  	fill(myColor1, myColor2, myColor3);   
    stroke(myColor1, myColor2, myColor3); 
    ellipse(myX, myY, size,size);
  }

  public void move()
  {
    myX = myX + 1;
    myY = myY + 1;
    if(myX >width)
    {     
      myX = 0;    
    }    
    else if (myX<0)
    {     
      myX = width;    
    }    
    if(myY >height)
    {    
      myY = 0;    
    } 
    else if (myY < 0)
    {     
      myY = height;    
    }   
  } 

}
