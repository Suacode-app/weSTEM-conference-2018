void setup() //runs once
{
 fullScreen(); //sets full screen
 
 background(255,0,255); //Red = 255, Green = 0, Blue = 255  --Range 0-255
 ellipse(width/2,height/2,50,50); //draws ellipse to middle of the screen with radius 50
 textSize(50); //set size of text to 50 pixels

 text("weSTEM 😉",0, height/2); //shows text "weSTEM 😉" at the left of the ellipse

 text(10, 3*width/4,height/2); //show the number '10' on the right side of the ball
}
