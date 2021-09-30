
void setup()
{
  size(710, 500);
  frameRate(100);
  noLoop();
}
int ran = (int)(Math.random()*6+1);
int sum = 0;
int counter1 = 0;
int counter2 = 0;
int counter3 = 0;
int counter4 = 0;
int counter5 = 0;
int counter6 = 0;
int totalSum = 0;
int total1 = 0;
int total2 = 0;
int total3 = 0;
int total4 = 0;
int total5 = 0;
int total6 = 0;
int rollCount = 0;
void draw()
{
  background(0);
  for (int i = 10; i < 500; i = i + 70) {
    for (int n = 10; n < 500; n = n +70) {
      ran = (int)(Math.random()*6+1);
      Die dyne = new Die(n, i);
      dyne.roll(ran);
      dyne.show();
      sum = sum + ran;
      if (ran == 1) {
        counter1++;
      }
      if (ran == 2) {
        counter2++;
      }
      if (ran == 3) {
        counter3++;
      }
      if (ran == 4) {
        counter4++;
      }
      if (ran == 5) {
        counter5++;
      }
      if (ran == 6) {
        counter6++;
      }
    }
  }
  totalSum = totalSum + sum;
  total1 = total1 + counter1;
  total2 = total2 + counter2;
  total3 = total3 + counter3;
  total4 = total4 + counter4;
  total5 = total5 + counter5;
  total6 = total6 + counter6;
  rollCount++;
  textSize(18);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Sum of dice is " + sum, 510, 20);
  text("Average sum is " + (float)totalSum/rollCount,510,43);
  text("Total sum is " + totalSum,510,66);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Dice on 1: " + counter1, 510, 90);
  text("Average 1 dice: " + (float)total1/rollCount,510,113);
  text("Total 1 dice: " + total1,510,136);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Dice on 2: " + counter2, 510, 160);
  text("Average 2 dice: " + (float)total2/rollCount,510,183);
  text("Total 2 dice: " + total2,510,206);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Dice on 3: " + counter3, 510, 230);
  text("Average 3 dice: " + (float)total3/rollCount,510,253);
  text("Total 3 dice: " + total3,510,276);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Dice on 4: " + counter4, 510, 300);
  text("Average 4 dice: " + (float)total4/rollCount,510,323);
  text("Total 4 dice: " + total4,510,346);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Dice on 5: " + counter5, 510, 370);
  text("Average 5 dice: " + (float)total5/rollCount,510,393);
  text("Total 5 dice: " + total5,510,416);
  fill(100+(int)(Math.random()*100-50), 200+(int)(Math.random()*100-50), 255);
  text("Dice on 6: " + counter6, 510, 440);
  text("Average 6 dice: " + (float)total6/rollCount,510,463);
  text("Total 6 dice: " + total6,510,486);
  sum = 0;
  counter1 =0;
  counter2 = 0;
  counter3 = 0;
  counter4 = 0;
  counter5 = 0;
  counter6 = 0;
}
void mousePressed()
{
  redraw();
  noLoop();
}
void keyPressed()
{
  loop();
}
class Die //models one single dice cube
{
  int posX, posY, num;
  Die(int x, int y) //constructor
  {
    posX = x;
    posY = y;
  }
  void roll(int nu)
  {
    num = nu;
  }
  void show()
  {
    fill(100+(int)(Math.random()*100-50), 255, 100+(int)(Math.random()*100-50));
    rect(posX, posY, 60, 60);
    fill(100+(int)(Math.random()*100-50), 100+(int)(Math.random()*100-50), 255);
    if (num == 1) {
      ellipse(posX+30, posY+30, 15, 15);
    }
    if (num == 2) {
      ellipse(posX+15, posY+15, 15, 15);
      ellipse(posX+45, posY+45, 15, 15);
    }
    if (num == 3) {
      ellipse(posX +10, posY+10, 15, 15);
      ellipse(posX +30, posY+30, 15, 15);
      ellipse(posX+50, posY +50, 15, 15);
    }
    if (num == 4) {
      ellipse(posX+15, posY+15, 15, 15);
      ellipse(posX+45, posY+15, 15, 15);
      ellipse(posX+15, posY+45, 15, 15);
      ellipse(posX+45, posY+45, 15, 15);
    }
    if (num == 5) {
      ellipse(posX+10, posY+10, 15, 15);
      ellipse(posX+50, posY+10, 15, 15);
      ellipse(posX+10, posY+50, 15, 15);
      ellipse(posX+50, posY+50, 15, 15);
      ellipse(posX+30, posY+30, 15, 15);
    }
    if (num == 6) {
      ellipse(posX+15, posY+10, 15, 15);
      ellipse(posX+45, posY+10, 15, 15);
      ellipse(posX+15, posY+50, 15, 15);
      ellipse(posX+45, posY+50, 15, 15);
      ellipse(posX+15, posY+30, 15, 15);
      ellipse(posX+45, posY+30, 15, 15);
    }
  }
}
