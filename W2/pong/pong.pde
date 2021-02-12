
float paddleX, paddleY, paddleSize;
float ballX, ballY, velX, velY;

void setup() {
  size(500, 500);
  paddleSize = width/3; 
  paddleX = width/2 - paddleSize/2;
  paddleY = height - 5;
  
  ballX = width/2;
  ballY = height/2;
  velX = 3;
  velY = 2;
}

void draw() {
  background(255);
  
  //Draw paddle
  strokeWeight(4);
  line(paddleX, paddleY, paddleX + paddleSize, paddleY);

  //Draw ball
  strokeWeight(1);
  ellipse(ballX, ballY, 10, 10);
  ballX += velX;
  ballY += velY;
  
  if(ballY < 0) //If ball touches top, bounce in opposite direction
    velY = -velY;
  if(ballX > width || ballX < 0) //If ball touches sides, bounce in opposite direction
    velX = -velX;
  
  if(ballX > paddleX && ballX < paddleX + paddleSize) //If ball is between paddle
    if(ballY == height) //And touches bottom
      velY = -velY;
      
  if(ballY > height) { //If ball is past bottom
    fill(0);
    text("Game Over", width/2, height/2);
  }
}

void keyPressed() {
  if(keyCode == LEFT) //Change paddleX based on which key is pressed
    paddleX -= 10;
  else if(keyCode == RIGHT)
    paddleX += 10;
}
