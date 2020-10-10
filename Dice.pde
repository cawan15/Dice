void setup()
{
  noLoop();
  size(500, 575);
}
void draw()
{
  //your code here
  background(255);
  int sum = 0;
  for(int y = 0; y <= 500; y+=25){
    for(int x = 0; x <= 500; x+=25){
      Die cassidy = new Die(x,y);
      cassidy.show();
      sum += cassidy.rolls; 
    }
  }
  fill(0);
  text("You rolled a "+ sum + "!", 195, 550);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int R = (int)(Math.random()*256);
  int G = (int)(Math.random()*256);
  int B = (int)(Math.random()*256);
  int r = (int)(Math.random()*256);
  int g = (int)(Math.random()*256);
  int b = (int)(Math.random()*256);
  int rolls;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
     rolls = ((int)(Math.random()*6)+1);
   }
  void show()
  {
    //your code here
    stroke(255);
    fill(0);
    rect(myX, myY, 25, 25);
    fill(R, G, B);
    if(rolls == 1){
      ellipse(myX+13, myY+13, 5, 5);
    }else if(rolls == 2){
      ellipse(myX+7, myY+7, 5, 5);
      ellipse(myX+17, myY+17, 5, 5);
    }else if(rolls == 3){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+19, myY+19, 5, 5);
    }else if(rolls == 4){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }else if(rolls == 5){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
    }else if(rolls == 6){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+5, myY+13, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+20, myY+13, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }
  }
}
