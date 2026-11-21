Star[] stars;
Spaceship diglet = new Spaceship(); 
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup() 
{
  size(1000,1000);

  stars = new Star[100];

  for (int i = 0; i < stars.length; i++)
    stars[i] = new Star();
    
  for (int i = 0; i < 10; i++) {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0,0,0);
  diglet.show();
  diglet.move();
  
  for (int i = 0; i < stars.length; i++)
    stars[i].show();
    
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
  
  // Check for collisions
  for (int i = asteroids.size() - 1; i >= 0; i--) {
  
    Asteroid a = asteroids.get(i);
  
    double distance = dist(
      (float)diglet.getCenterX(),
      (float)diglet.getCenterY(),
      (float)a.getCenterX(),
      (float)a.getCenterY()
    );
  
    if (distance < 25) {
      asteroids.remove(i);
    }
  }
}

public void keyPressed() 
{
 if (key == 'w')
   diglet.accelerate(2);
   
 if (key == 'b') //this is a boost by the way
   diglet.accelerate(50);
   diglet.showRocket();
  
 if (key == 'd') //I like the turns ticked so that I can see how far I've turned
   diglet.turn(10);
   
 if (key == 'a')
   diglet.turn(-10);
  
 if (key == 's')
   diglet.accelerate(-3);
 
 if (key == 'h')
   diglet.hyperspace();
}
