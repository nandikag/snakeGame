class Snake {
  int xpos, ypos;
  //int y;
  int objectSize = 20;
  
  //Snake() {
  //  //xpos = mouseX;
  //  //ypos = mouseY;
  //  //x = new int;
  //  //y = new int;
  //}
  
  void display() {
    //x = mouseX;
    //y = mouseY;
    xpos = mouseX;
    ypos = mouseY;
    fill(255);
    noStroke();
    rect(xpos, ypos, objectSize, objectSize);
  }

}
