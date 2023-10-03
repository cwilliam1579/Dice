Die bob;
void setup()
{
  size (500, 600);
  noLoop();
}
void draw()
{
  background(0);
  int count=0;
  for (int i=0; i<=500; i=i+50) {
    for (int j=0; j<500; j=j+50) {
      bob=new Die(j, i);
      count += bob.roll();
      bob.show();
    }
  }

  textSize(20);
  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  text("Total Amount: "+count, 250, 575);
}
void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, roll;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
  }

  int roll()
  {
    roll=(int)(Math.random()*6)+1;

    return roll;
  }

  void show()
  {
    if (roll==1) {
      fill(0, 255, 0);
    rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (roll==2) {
      fill(180, 255, 0);
    rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(myX+12.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
    }
    if (roll==3) {
      fill(255, 255, 0);
    rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(myX+12.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (roll==4) {
      fill(255, 188, 0);
    rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(myX+12.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+12.5, myY+12.5, 10, 10);
      ellipse(myX+37.5, myY+37.5, 10, 10);
    }
    if (roll==5) {
      fill(255, 128, 0);
    rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(myX+12.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+12.5, myY+12.5, 10, 10);
      ellipse(myX+37.5, myY+37.5, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (roll==6) {
      fill(255, 0,0);
    rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(myX+12.5, myY+37.5, 10, 10);
      ellipse(myX+37.5, myY+12.5, 10, 10);
      ellipse(myX+12.5, myY+12.5, 10, 10);
      ellipse(myX+37.5, myY+37.5, 10, 10);
      ellipse(myX+12.5, myY+25, 10, 10);
      ellipse(myX+37.5, myY+25, 10, 10);
    }
  }
}



