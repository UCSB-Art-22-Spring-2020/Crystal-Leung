void action (){
  
  if (xPos > width || xPos< 0) { //if we are edge of screen 
    xDirection= xDirection * -1; //change direction to the other sig (+ to - or - to +)
  } 
  if (yPos > height || yPos< 0) { //if we are edge of screen 
    yDirection= yDirection * -1; //change direction to the other sig (+ to - or - to +)
  } 

  
  
} 
