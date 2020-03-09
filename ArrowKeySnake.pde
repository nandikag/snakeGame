//Calling classes
Food food;
Snake snake;

int screen = 0;

int grid = 30; 

boolean dead = true;
int highScore = 0;

void setup() {
  size(600,600);
  food = new Food();
  snake = new Snake();
  frameRate(20);
}

void draw() {
  if (screen == 0) {
    startScreen();
  }
  else if (screen == 1) {
    background(#2B303A);
    food.display();
    //food.location();
    snake.display();
    snake.move();
    snake.direction(0,0);
    //snake.eat(food);
    scoreCount();
  }  
}

void startScreen() {
  background(#EEE5E9);
  textAlign(CENTER);
  textSize(30);
  fill(#2B303A);
  text("Click to start", height/2, width/2);  
}

void mousePressed() {
  if (screen == 0) {
    gameStart();
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
      snake.direction(-1,0);
      }
    
    else if (keyCode == RIGHT) {
      snake.direction(1,0);
    }
    
    else if (keyCode == UP) {
      snake.direction(0,-1);
    }
    
    else if (keyCode == DOWN) {
      snake.direction(0,1);
    }
}

void gameStart() {
  screen = 1;
}

void scoreCount() {
  textAlign(LEFT);
  textSize(20);
  fill(255);
  text("Score: " + highScore, 20, 30);
}
