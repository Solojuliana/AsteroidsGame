class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, myColor1, myColor2, myColor3;
  public Star()
  {
  	myX = (int)(Math.random()*600);
  	myY = (int)(Math.random()*600);
  	myColor1 = (int)(Math.random()*156)+100;
  	myColor2 = (int)(Math.random()*156)+100;
  	myColor3 = (int)(Math.random()*156)+100;
  }
  public void show()
  {
  	fill(myColor1, myColor2, myColor3);   
    stroke(myColor1, myColor2, myColor3); 
    ellipse(myX, myY, 8,8);
  }


}
