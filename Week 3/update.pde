void update() {
  xPos+=(xVel * xDirection) ; //move by x velocity in the current direction ..same as xPos= xPos + xVel
  xVel= xVel* xDirection; //make sure xVel is in the correct direction (right of left) 
  xPos+=xVel; //add y velocity to our x position 
  //xVel+= xGravity; // add gravity to velocity 



  yVel= yVel* yDirection; //make sure yVel is in the correct direction (up or down) 
  yPos+=yVel; //add y velocity to our y position 
  yVel+= yGravity; // add gravity to velocity
}
