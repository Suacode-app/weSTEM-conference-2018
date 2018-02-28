//declare user defined variables

float xBall; 

float yBall; 

float diameter;
 
float radius;

float paddleX;

float paddleY;

float paddleWidth;

float paddleHeight;

int score;

int maxScore;

float xSpeed;

float ySpeed;

float scoreX;

float scoreY;

float tSize;

float textX;

float textY;

float tSize1;

void setup ()
{
 fullScreen ();//set window to fullscreen
  
 xBall = width/2; //set horizontal position of ball to half of the screen's width 

 yBall = height/2; //set vertical position of the ball to half of the screen's height 

 diameter = (width + height)/60; //diameter of circle set to be a sixtieth of the width + height, this could be any value really

 radius = diameter / 2; //radius is the diameter over 2

 //x and y coordinates of the paddles are the coordinates at the top left corners of their rectangles

 paddleX = 39*width/40; //x coordinate of the right paddle at 39/40 of the width of the screen. This is because the width of the paddle is 1/40 of the width

 paddleY = height/2; //y coordinate of the right paddle middle of the screen. 

 paddleWidth = width/40; //width of paddle set to one fortieth of the width of the screen

 paddleHeight = 2*height/10; //height of the paddle set to two tenths of the height of the screen  

 //x and y coordinates of a displayed text are the coordinates of an imaginary rectangle that bounds the text 

 score = 5; //score of the right player
 
 maxScore = 10; //max score of the program
 
 xSpeed = 10; //vertical speed of the ball

 ySpeed = 10;

 scoreX = width/2; //x coordinate of the player's score is one half of the width of the screen

 scoreY = height/2; //y coordinate of the player's score is one half of the height of the screen 

 tSize = (width+height)/40; //size of the text is the summation of the width and height divided by fourty, I could have just set it to any number

 textX = 70*width/100; //x coordinate of text at the bottom of the screen

 textY = 99*height/100; //y coordinate of text at the bottom of the screen

 tSize1 = (width+height)/150; //size of the text is the summation of the width and height divided by 150, I could have just set it to any number
}

void draw ()
{  
 background (81, 51, 13); //set background to brown each frame

 textSize (tSize); //set size of the player's scores to be the value in the tSize variable

 fill (249, 207, 218); //fill all shapes to very pale pink until fill is run with another color 

 text (score, scoreX, scoreY); //draw player'sscore 

 textSize(tSize1); //set size of text

 text("weSTEM High School Conference",textX, textY); //Print text at bottom right of the screen

 fill (252, 194, 176); //fill all shapes to light pink until fill is run with another color 

 ellipse (xBall, yBall, diameter, diameter); //draw ball unto the screen

 fill (219, 100, 150); //fill all shapes to purple until fill is run with another color 

 stroke (214, 169, 187); //use a blue outline for all shapes until stroke is run again with another color

 strokeWeight(2);

 rect (paddleX, paddleY, paddleWidth, paddleHeight); //draw left paddle
 
 //moveball right and downwards 
 xBall = xBall + xSpeed; //increase the x position of the ball by x speed

 yBall = yBall + ySpeed; //increase the y position of the ball by y speed
 
 //check if ball completely exits right side of the screen 
 if(score < 0) //if score is less than zero set score back to the maximum score
 {
   score = maxScore;
 }

 if (xBall - radius > width)
 {
   score = score - 1; //increment the right player's score by one

   xBall = width/2; //set the horizontal position of the ball to half of the width
 }

 else if (xBall - radius < 0)
 {
   xSpeed = xSpeed * -1;
 }
 
 //check if ball hits top and bottom sides of the screen 

 if (yBall - radius < 0 || yBall + radius > height) //if the ball hits the top or bottom sides of the screen 
 {
   ySpeed = ySpeed * -1; //then reverse the polarity of the vertical speed so the ball moves in the opposite vertical direction
 }
 
//check for ball and right paddle intersection 
 if ((xBall+radius >= paddleX) //if the right edge of the ball and the left side of the right paddle coincide or intersect

   && (xSpeed > 0) //AND if the ball's xSpeed is positive (if it was moving towards the right)

   && (yBall + radius > paddleY && yBall + radius < paddleY + paddleHeight)) // AND if the ball's y coordinate is between the top of the right paddle AND the bottom of the right paddle
 {
   xSpeed *= -1; //reverse the ball's horizontal speed

   xBall = paddleX - radius; //set the ball's horizontal position to the exact point of intersection between the ball's right edge and the left edge of the right paddle
 }
 
 //mouseX and mouseY are built in variables in processing that are automatically updated with the current position of a touch on a smart mobile device 

   //move paddle
   paddleY = mouseY; //set the y coordinate of the paddle to mouseY

   if (mouseY+paddleHeight > height) //if the paddle is gone off the bottom part of the screen 
   {
     paddleY = height-paddleHeight; //set it back to position: height of the screen minus height of the paddle so that the paddle fits back nicely in the right bottom corner
   }
}
