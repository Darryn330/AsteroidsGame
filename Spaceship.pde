class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;  
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(255, 255, 255); // White
    myCenterX = 250; 
    myCenterY = 250; 
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

public void showRocket() {
  fill(255, 100, 0);
  triangle((float)(myCenterX - 8), (float)(myCenterY - 4), (float)(myCenterX - 8), (float)(myCenterY + 4), (float)(myCenterX - 20), (float)myCenterY);
}

  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myPointDirection = Math.random() * 360;
  }
   
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
}
