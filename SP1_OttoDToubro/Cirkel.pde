class Ball
{
  color c;
  float xPos;
  float yPos;
  float str;
  float xSpeed;
  float ySpeed;

  // Ball constructor
  Ball(float xPos, float yPos)
  {
    this.c = color(random(255), random(255), random(255));
    this.xPos = xPos;
    this.yPos = yPos;
    this.str = random(20, 50);
    this.xSpeed = random(-2, 2);
    this.ySpeed = random(-2, 2);
  }

  void display()
  {
    stroke(0);
    fill(c);
    ellipseMode(CENTER);
    ellipse(xPos, yPos, str, str);
  }

  void update()
  {
    xPos += xSpeed;
    yPos += ySpeed;

    // if statements til at få bolden til at hoppe af siderne i mit program
    // Man ganger med -1 for at bolden holder farten og fx. går fra højre til 
    // venstre 
    if (xPos < 0 || xPos > width)
    {
      xSpeed *= -1;
    }

    if (yPos < 0 || yPos > height)
    {
      ySpeed *= -1;
    }
  }

  boolean isOffScreen()
  {
    return(xPos <- str || xPos > width + str || yPos <- str || yPos > height + str);
  }
}
