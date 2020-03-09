class Food {
  // define varibles
  float xpos, ypos;
  int objectSize = 20;
  color foodColor = color(#D64933);
  int cols;
  int rows;

  //constructor
  Food(){
    xpos = random(width);
    ypos = random(height);
  }
  
  // functions
 void display(){
   fill(foodColor);
   noStroke();
   rect(xpos, ypos, objectSize, objectSize);
 }
 
 void location() {
   cols = floor(random(width/grid));
   rows = floor(random(height/grid));
 }
 
 void reset(){
    xpos = random(100, width - 100);
    ypos = random(100, height - 100);
 }   
}
