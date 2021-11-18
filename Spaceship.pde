class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8,16,-8,-2};
      yCorners = new int[]{-8,0,8,0};
      myCenterX = 150;
      myCenterY = 150;
      myColor = 255;
    }
    public void hyperSpace(){
     myXspeed = 0;
     myYspeed = 0;
     myCenterX = (int)(Math.random()*300);
     myCenterY = (int)(Math.random()*300);
    }
    public void thruster() {
    noStroke();
    fill(0, 255, 255);
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
