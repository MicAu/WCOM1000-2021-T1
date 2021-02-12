void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  if(dist(width/2, height/2, mouseX, mouseY) <= 60)
    fill(255, 0, 0);
  else
    fill(255);
  
  ellipse(width/2, height/2, 60, 60);
  ellipse(mouseX, mouseY, 60, 60);
}
