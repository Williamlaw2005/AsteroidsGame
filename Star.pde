class Star 
{
  private int myX, myY;
  public Star()
  {
   myX = (int)(Math.random()*1000);
   myY = (int)(Math.random()*1000);
  }
  public void move(){
    if(myX == 1000)
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
