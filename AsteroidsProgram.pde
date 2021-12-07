class Asteroids extends Floater{
  private double rotSpeed;
  public Asteroids(){
    rotSpeed = 2;
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0*3; 
    yCorners[0] = 8*3;
    xCorners[1] = 4*3;
    yCorners[1] = 6*3;
    xCorners[2] = 6*3;
    yCorners[2] = 2*3;
    xCorners[3] = 2*3;
    yCorners[3] = -2*3;
    xCorners[4] = -4*3;
    yCorners[4] = 0*3;
    
    myCenterX = (double)(Math.random()*1000);
    myCenterY = (double)(Math.random()*1000);
    myXspeed = (double)(Math.random()*0.5);
    myYspeed = (double)(Math.random()*0.5);
    myPointDirection = (double)(Math.random()*360);
    fillColor = 0;
    strokeColor = 255;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
