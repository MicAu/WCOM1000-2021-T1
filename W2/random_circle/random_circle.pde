void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  frameRate(5);
  
  fill(random(255));
  ellipse(random(width), random(height), 50, 50);
}
