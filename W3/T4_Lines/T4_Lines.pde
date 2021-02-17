size(500, 500);

for (int x = width/3; x <= 2*width/3; x += width/3) {
  for (int y = height/3; y <= 2*height/3; y += height/3) {
    stroke(255, 0, 0);
    line(x, 0, 0, y);
    stroke(0, 0, 255);
    line(x, 0, width, y);
    stroke(0);
    line(x, height, 0, y);
    stroke(0, 255, 0);
    line(x, height, width, y);
  }
}
