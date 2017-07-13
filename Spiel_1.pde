import java.awt.Font; // Import der Font
void setup()
{
    size (600,400);
}

float ballX = 200;
float ballY = 100;
float speedX = 5;
float speedY = 0;
int Getroffen = 0;
int Verfehlt = 0;


void draw()
{
  if(mousePressed)
  {
    Getroffen = 0;Verfehlt = 0;
  }
  
  float paddle = 1000 /(Getroffen + 10);
  if (ballX < 0 || ballX > width) speedX = -speedX;
  if (ballY > height ) { speedY = -speedY;  
  float distance = abs(mouseX -ballX);
  if(distance < paddle) Getroffen +=1;
  else Verfehlt +=1;
} else speedY +=1;
  
  
  
  
  ballX +=speedX;
  ballY +=speedY;
  
  
  background(100,200,50);
  fill(200,100,50);
  ellipse(ballX,ballY,50,50);
  fill(50,100,200);
  rect(mouseX-paddle,height-10,2*paddle,10);
  
  fill(0);
  text("Getroffen: " + Getroffen , 10,30);
  text("Verfehlt: " +  Verfehlt ,510,30);
  String ausgabe = ("Um die bisherigen Punkte zu löschen linke oder recht Maustaste drücken!");
  String ausgabe2 = ("__________________________________________________________________________");
  text(ausgabe ,100,60);
  text (ausgabe2,100,60);
  
///////////////////////////////////  
  
  //QUELLENANGABEN:
  
  // https://processing.org/examples/mousepress.html
  // https://processing.org/examples/widthheight.html
  // https://processing.org/reference/abs_.html -> Calculates the absolute value (magnitude) of a number. The absolute value of a number is always positive.   
  
///////////////////////////////////    
  
}