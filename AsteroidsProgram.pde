class Asteriod extends Floater{
  private double rotSpeed;
  public Asteriod(){
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
    
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = 1;
    myColor = 255;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
