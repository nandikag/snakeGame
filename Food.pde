class Food {
  // define varibles
  float xpos, ypos;
  int objectSize = 20;

  //constructor
  Food(){
    xpos = random(100, width - 100);
    ypos = random(100, height - 100);
  }
  
  // functions
 void display(){
   fill(#FF0000);
   noStroke();
   rect(xpos, ypos, objectSize, objectSize);
 }
 
 void reset(){
    xpos = random(100, width - 100);
    ypos = random(100, height - 100);
 }   
}
