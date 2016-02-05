public int length;
public int num;
PImage eye;
public void setup() 
{
 size(900, 900);
 background(0);
 eye = loadImage("eye.png");
 length = 900;
 num = 1;
}
public void draw() 
{
 background(0);
 sierpinski(0, 900, length, num);
}

public void mousePressed()
{
 if (mouseButton == LEFT) 
 {
  num = num + 1;
 }
 if (mouseButton == RIGHT)
 {
  num = num - 1;
  if  (num < 1) 
  {
   num = 1;
  }
 }
}
public void keyPressed() {
 if (key == 'r') 
 {
  num = 1;
 }
}
public void sierpinski(int x, int y, int len, int count) {
 if (count < 2)
 {
  fill(236, 208, 168);
  triangle(x, y, x + len, y , x + len / 2, y - len);
  image(eye,x + len/3, y - len/2, len *3/10,len*3/20);
 } 
 else 
 {
  noStroke();
  fill(0, 0, (int)(Math.random() * 255));
  sierpinski(x, y, len / 2, count - 1);
  sierpinski(x + len / 2, y, len / 2, count - 1);
  sierpinski(x + len / 4, y - len / 2, len / 2, count - 1);
 }
}