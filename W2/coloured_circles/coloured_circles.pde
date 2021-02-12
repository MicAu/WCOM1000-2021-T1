int currentColor = 0; //0 - r, 1 - g, 2 - b

void setup() {
  size(500, 500);
}

void draw() {
  
}

void mousePressed() {
  if(currentColor == 0)
    fill(255, 0, 0);
  else if(currentColor == 1)
    fill(0, 255, 0);
  else 
    fill(0, 0, 255);
 
  ellipse(mouseX, mouseY, 50, 50);
  
  currentColor++;
  if(currentColor >= 3)
    currentColor = 0;
}
