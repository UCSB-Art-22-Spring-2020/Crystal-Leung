//Assignment 1 
//Art 22 Spring 2020
//4/4/20


int x,y;//two integer variables
int w, h; //two integers width and height 
int number;// create integer varible "number" 

void setup () {
  size (600, 600) ; //size of background 
  x= width/3; 
  y= height/3; //set x and y location
   number= 4; 
  w= 60; 
  h= 60;//width and height 

} 
void draw() {
  if (mouseX<200||mouseX>400) {//mouse if in top 1/3rd or bottom 3/3rd space,
    stroke(149,209,213,100);//color of mouse 
  }else {
    stroke (255,214,245);//color if mouse is in 2/3rd space 
  }
 strokeWeight (10);//size of shape radius 
 
 //shapes GROUP 1
rectMode(CENTER); //allows square to be drawn in center of circles 
square(x,y,w); 
  ellipse(x - (w/2), y - (w/2), w,h);
  ellipse(x + (w/2), y - (w/2), w,h);
  ellipse(x + (w/2), y + (w/2), w,h);
  ellipse(x - (w/2), y + (w/2), w,h); //location of x and y coordinates 
 
 //shapes GROUP 2 
ellipse(400,400,w,h); 
square(400,400,w); 
square(340,340,w);
square(340,400,w); 
square(400,340,w); //x & y coordinates for shape group in bottom right 

//shapes MOVING 
rect(number,200,60,60); 
ellipse(number, 400,60,60); 
rect(200,number,60,60); 
ellipse(400,number,60,60); //x & y coordinates for moving shapes 

number=number +1 ;//increase number by 1 

strokeWeight (50);//point size 

fill (252,247,142,60); //fill color of shapes

//println(mouseX, mouseY); abililty to track specific points 

point(mouseX, mouseY);//point creation 


} 
