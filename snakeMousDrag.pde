Food food;
Snake snake;
int screen = 0;
int snakeX;
int snakeY;

//int foodX;
//int foodY;

//float xRandom;
//float yRandom;

int step = 25;
int objectSize = 20;
int grid = 50; 

boolean dead = true;
int highScore = 0;

void setup() {
  size(700,700);
  food = new Food();
  snake = new Snake();
}

void draw() {
  if (screen == 0) {
    startScreen();
  }
  else if (screen == 1) {
    background(0);
    //snakeDisplay();
    snake.display();
    food.display();
    //foodDisplay();
    //foodGenerator();
    scoreCount();
  }  
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  textSize(30);
  text("Click to start", height/2, width/2);  
}

void mousePressed() {
  if (screen == 0) {
    gameStart();
  }
  //if (dead) {
  //  dead = false;
  //  foodGenerator();
  //}
}

void gameStart() {
  screen = 1;
}

void snakeDisplay() {
  snakeX = mouseX;
  snakeY = mouseY;
  fill(255);
  noStroke();
 // rectMode(CENTER);
  rect(snakeX, snakeY, objectSize, objectSize);
}

//void foodDisplay() {
//  xRandom = random(0,x);
//  yRandom = random(0,y);
//  fill(#FF0000);
//  noStroke();
//  ellipse(xRandom, yRandom, objectSize, objectSize);
//}

//void foodGenerator() {
//  foodX = floor(random(width));
//  foodY = floor(random(height));
//  //foodX = floor(foodX/grid)*grid;
//  //foodY = floor(foodY/grid)*grid;
//}

//void foodDisplay() {
//  foodGenerator();
//  fill(#FF0000);
//  noStroke();
//  rect(foodX, foodY, objectSize, objectSize);
//}

void scoreCount() {
  textAlign(LEFT);
  textSize(20);
  fill(255);
  text("Score: " + highScore, 20, 30);
}
