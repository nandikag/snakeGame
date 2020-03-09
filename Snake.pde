class Snake {
  int xpos, ypos;
  int objectSize = 20;
  int speedX = 1;
  int speedY = 0;
  
  int distance;
  
  //PVector position;
  //PVector speed; 
  color snakeColor = color(#92DCE5);
  
  void display() {
    fill(snakeColor);
    noStroke();
    rect(xpos, ypos, objectSize, objectSize);
  }
  
  void direction(int x, int y) {
    speedX = x;
    speedY = y;
  }
  
  void move() {
    xpos += speedX*grid;
    ypos += speedY*grid;
    //xpos += speedX;
    //ypos += speedY;
    //xpos = int(speedX);
    //ypos = int(speedY);
    xpos = constrain(xpos, 0, width-grid);
    ypos = constrain(ypos, 0, height-grid);

  }
  
    void eat() {
    if (xpos <= food.xpos && ypos <= food.ypos) {
      food.reset();
    }
  }
  //void eat() {
  //  distance = dist(xpos, ypos, food.xpos, food.ypos);
    
  //  if distance < 1 {
  //    return true;
  //  }
  //  else {
  //    return false;
  //  }
  //}
}
