class Asteroids extends Floater{
  private double rotSpeed, vertexRadius;
  public Asteroids(){
    rotSpeed = 2;
    corners = (int)(Math.random()*7)+6;
    xCorners = new double[corners];
    yCorners = new double[corners];
    for(int i = 0; i < corners;i++){
     vertexRadius = (Math.random()*20)+10;
     yCorners[i] = vertexRadius*Math.sin(i*(2*PI/corners));
     xCorners[i] = vertexRadius*Math.cos(i*(2*PI/corners));
    }
    
    myCenterX = (double)(Math.random()*1000);
    myCenterY = (double)(Math.random()*1000);
    myXspeed = (double)(Math.random()*0.5);
    myYspeed = (double)(Math.random()*0.5);
    myPointDirection = (double)(Math.random()*360);
    fillColor = 0;
    strokeColor = 255;
  }
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double y){
    myCenterY = y;
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
