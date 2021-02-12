int state = 0; //0 - right, 1 - down, 2 - left, 3 - up
int x, y = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  rectMode(CENTER);
  rect(x, y, 20, 20);
  //Conditional 1
  if(state == 0)
    x++;
  else if (state == 1)
    y++;
  else if (state == 2)
    x -= 4;
  else
    y -= 4;
  
  //Conditional 2
  if(state == 0 && x > width)
    state = 1;
  else if(state == 1 && y > height)
    state = 2;
  else if(state == 2 && x < 0)
    state = 3;
  else if(state == 3 && y < 0)
    state = 0;
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
}
