//declare user defined variables

float xBall; //variable to set x-coordinate of the ball 

float yBall; //variable to set y-coordinate of the ball

int xSpeed; //variable to set speed of the x positon

int ySpeed;//variable to set speed of the y position

int score;//variable to set score 
 
void setup() //runs once
{
 fullScreen(); //sets full screen

 background(255,0,255); //Red = 255, Green = 0, Blue = 255  --Range 0-255
  
 xBall = width/2; //sets ball to the horizontal center of the screen

 yBall =  height/2; //sets ball to the vertical center of the screen

 xSpeed = 3; //sets speed of the x positon to 3

 ySpeed = 3; //sets speed of the y position to 3

 score = 10; //sets score to 10
}

void draw() //runs continuously
{

 background(255,0,255); //Red = 255, Green = 0, Blue = 255  --Range 0-255

 ellipse(xBall,yBall,50,50); //draws ellipse with radius 50

 xBall = xBall + xSpeed; //move ball horizontally

 yBall = yBall + ySpeed; //move ball vertically

 //therefore ball moves diagonally downward: in the south east direction
 
 textSize(50); //set size of text to 50 pixels

 //mouseX and mouseY are in-built variables, they are updated by the system to track the location of the touch

 text("weSTEM 😉", mouseX, mouseY); //shows text "Prince" at the position of the mouse

 text(score, 3*width/4,height/2); //show the score on the right side of the ball

 score = score - 1; //decrease score by 1
}
