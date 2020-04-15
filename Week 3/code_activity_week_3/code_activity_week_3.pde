float xPos, yPos; //position variables for geometry 
float xVel, yVel; //velocity variables for geometry
float xDirection, yDirection; //direction vaariable for geometry 
float xGravity, yGravity; // accerlation variables 
int x,y; //variables for positions

void setup () {
  size (600, 600); 
 init(); 
}


void draw() {
  render(); //run the render function 

  update(); //run the update function  

  action(); //run the action function 
  
  interaction(); //run the interaction 

  println(xDirection); // print the direction going from + to -
} 
