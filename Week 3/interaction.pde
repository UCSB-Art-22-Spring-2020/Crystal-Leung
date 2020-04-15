void interaction() {

if (keyPressed) { //if we press a key?
    if (key == 'x') { //is that key x?
      xVel = random(1, 5);  //if so, set x velocity to random number between 109
    }
    if (key == 'y') { //is that key y?
      yVel = random(1, 5);  //if so, set y velocity to random number between 109
    }
  }
  stroke(235, 142, 251, 50) ;
  strokeWeight(20); 
  if (mousePressed) {
    point(pmouseX, pmouseY);
  } 
  
    
}
