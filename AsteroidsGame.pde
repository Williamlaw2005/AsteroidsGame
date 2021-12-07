Spaceship Spaceship1;
Star[] sky = new Star[5000];
ArrayList <Asteroids> Asteroidlist = new ArrayList <Asteroids>();
boolean apressed, spressed, dpressed, wpressed, thrusteron, collisionDetected = false;
int lives = 3;
int AsteroidNumber = 30;
public void setup()
  {
  size(1000,1000);
  Spaceship1 = new Spaceship();
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for(int i = 0; i < AsteroidNumber;i++){
    Asteroidlist.add(new Asteroids());
  }
}
public void draw() 
{
  noStroke();
  background(0);
  for(int i = 0; i < sky.length;i++)
  {
    sky[i].show();
  
  }
  for(int i = 0; i < Asteroidlist.size();i++){
    Asteroidlist.get(i).show();
    Asteroidlist.get(i).move();
    float d = dist((float)Spaceship1.getX(), (float)Spaceship1.getY(), (float)Asteroidlist.get(i).getX(), (float)Asteroidlist.get(i).getY());
    if(d < 25)
      Asteroidlist.remove(i);
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
