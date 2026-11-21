class Asteroid extends Floater {
  private double myRotspeed = 0;

  public Asteroid() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -15};
    yCorners = new int[]{-20, -10, 20, 10};

    myColor = color(200, 200, 200);

    myCenterX = Math.random() * 1000;
    myCenterY = Math.random() * 1000;

    myXspeed = Math.random() * 4 - 2;
    myYspeed = Math.random() * 4 - 2;

    myPointDirection = 0;

    myRotspeed = Math.random() * 6 - 3;
  }

  public void move() {
    turn(myRotspeed);
  
    myCenterX += myXspeed;
    myCenterY += myYspeed;

    if (myCenterX > 1000)
      myCenterX = 0;
  
    if (myCenterX < 0)
      myCenterX = 1000;
  
    if (myCenterY > 1000)
      myCenterY = 0;
  
    if (myCenterY < 0)
      myCenterY = 1000;
  }
  public double getCenterX() {
  return myCenterX;
}

public double getCenterY() {
  return myCenterY;
}
}
