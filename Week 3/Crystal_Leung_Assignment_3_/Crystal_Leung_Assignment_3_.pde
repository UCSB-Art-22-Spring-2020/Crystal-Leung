//Assignment 3 
//Art 22 Spring 2020 
//Crystal Leung
//4.19.20 

float x1, y1, x2, y2, x3, y3; //variables for x and y location
float stepSizeX, stepSizeY; //variables for stepsize 
PImage img;// variable for image 

float xPos, yPos; //position variables for geometry 
float xVel, yVel; //velocity variables for geometry
float xDirection, yDirection; //direction vaariable for geometry 
float xGravity, yGravity; // accerlation variables 
int x, y; //variables for positions


void setup () {
  size(800, 533); //size of background (same as image) 
  img = loadImage("white clouds.jpg"); 
  image (img, 0, 0); //import image

  x1= x2= x3 = width/2;
  y1=y2= y3 = height/2; 

  stepSizeX= 10;
  stepSizeY= 10; //stepSize of X and Y
} 

void draw () {

  //color 1
  point(x1, y1); // initial position of point 
  stroke( 255, 255, 255, 100); //color of initial point
  strokeWeight (15); //size of point 

  x1 = x1 + random(-stepSizeX, stepSizeX); // x position random between -10 and 10 
  y1 = y1+ random(-stepSizeY, stepSizeY); // y position random betwen -10 and 10 

  if (x1 > width || x1 < 0) { // if x position goes off the screen
    x1 = random (0, width); // it will appear at a random spot
  }
  if (y1 > height || y1 < 0) { // if y position goes off thee screen
    y1 = random (0, height); // it will appear at a random spot
  }

  if (keyPressed) { // is a key pressed?
    if (key == CODED) { // is the key coded?
      if (keyCode == UP) { // is the UP key pressed?
        stroke (254,151,255, 220); // then the color changes to purple, pink
      }
      if (keyCode == DOWN) { // is the DOWN key pressed?
        stroke (253, 202, 222, 220); // then the color changes to pink
      }
      if (keyCode == LEFT) { // is the LEFT key pressed?
        stroke (234, 184, 244, 220); // then the color changes to purple
      }
      if (keyCode == RIGHT) { // is the RIGHT key pressed?
        stroke (186,252,229, 220); // then the color changes green
      }
    }
  } 

  //color 2
  point(x2, y2); // initial position of point 
  stroke( 165, 245, 251, 100); //color of point (aqua) 
  strokeWeight (15); //size of point 

  x2 = x2 + random(-stepSizeX, stepSizeX); //made x position random between -10 and 10 
  y2 = y2+ random(-stepSizeY, stepSizeY); //made y position random betwen -10 and 10 

  if (x2 > width || x2 < 0) { // if  position goes off screen
    x2 = random ( 0, width); // it will appear at a random spot
  }
  if (y2 > height || y2 < 0) { // if y position goes off screen
    y2 = random (0, height); // it will appear at a random spot
  }

  //color 3
  point(x3, y3); // initial position of point 
  stroke( 254,255,202, 100); //color of point is yellow 
  strokeWeight (15); //size of point 

  x3 = x3 + random(-stepSizeX, stepSizeX); //made x position random between -10 and 10 
  y3 = y3+ random(-stepSizeY, stepSizeY); //made y position random betwen -10 and 10 

  if (x3 > width || x3 < 0) { // if  position goes off screen
    x3 = random ( 0, width); // it will appear at a random spot
  }
  if (y3 > height || y3 < 0) { // if y position goes off screen
    y3 = random (0, height); // it will appear at a random spot
  }
} 
