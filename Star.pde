class Star 
{
  private int myX, myY;
  public Star()
  {
   myX = (int)(Math.random()*displayWidth);
   myY = (int)(Math.random()*displayHeight);
  }
  public void move(){
    if(myX == displayWidth)
      myX = 0;
    else
      myX++;
  }
  public void show()
  {
    
    fill(255);
    ellipse(myX, myY, 3, 3);
  }
}
