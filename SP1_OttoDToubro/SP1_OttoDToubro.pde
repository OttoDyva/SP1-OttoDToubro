//SP1
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup()
{
  size(600, 600);
  frameRate(60);
}

void draw()
{
  background(255);

  // For-loop for at opdatere alle boldene i ArrayListen
  for (int i = 0; i < balls.size(); i++)
  {
    Ball b1 = balls.get(i);
    b1.display();
    b1.update();

    //Kalder isOffScreen for at tjekke at boldene ikke forlader skærmen og hvis
    // de er slettes de
    if (b1.isOffScreen())
    {
      balls.remove(i);
    }
  }
}

// En metode der tilføjer en bold hvor min mus er når jeg trykker
void mouseClicked()
{
  if (balls.size() < 75)
  {
    Ball newBall = new Ball(mouseX, mouseY);
    balls.add(newBall);
  }
}
