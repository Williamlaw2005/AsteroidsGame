class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new double[]{-8,16,-8,-2};
      yCorners = new double[]{-8,0,8,0};
      myCenterX = 1000/2;
      myCenterY = 1000/2;
      fillColor = 0;
      strokeColor = 255;
    }
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
    public void hyperSpace(){
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = (double)(Math.random()*360);
     myCenterX = (int)(Math.random()*1000);
     myCenterY = (int)(Math.random()*1000);
    }
    public void thruster() {
    noStroke();
    fill(255,0,0);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI / 180));
    rotate(dRadians + (float)Math.PI / 2.5);
    rect(0, 15, 1, 10); //down (starting pos)
    rotate((float)Math.PI / 5.0);
    rect(0, 15, 1, 10); //up (starting pos)
    rotate((float)Math.PI / -10.0);
    rect(0, 15, 1, 10); //middle
    
  }
}
