Spaceship Spaceship1;
Star[] sky = new Star[200];
boolean apressed, spressed, dpressed, wpressed, thrusteron = false;
public void setup()
  {
  fullScreen();
  Spaceship1 = new Spaceship();
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
}
public void draw() 
{
  noStroke();
  background(0);
  for(int i = 0; i < sky.length;i++)
  {
    sky[i].show();
    sky[i].move();
  }
  
  Spaceship1.show();
  if(apressed == true){
    Spaceship1.turn(-5);
  }
  if(dpressed == true){
    Spaceship1.turn(5);
  }
  if(spressed == true){
    Spaceship1.accelerate(-0.25);
  }
  if(wpressed == true){
    Spaceship1.thruster();
    Spaceship1.accelerate(0.25);
  }
  Spaceship1.move();
 
  
}
public void keyPressed(){
  if(key == 'f'){
    Spaceship1.hyperSpace();
  }
  if(key == 'a'){
    apressed = true;
  }
  if(key == 's'){
    spressed = true;
  }
  if(key == 'd'){
    dpressed = true; 
  }
  if(key == 'w'){
    
    wpressed = true; 
  }
}
public void keyReleased(){
    if(key == 'a'){
    apressed = false;
  }
  if(key == 's'){
    spressed = false;
  }
  if(key == 'd'){
    dpressed = false; 
  }
  if(key == 'w'){
    wpressed = false; 
  }
}
