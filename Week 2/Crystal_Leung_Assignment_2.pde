//Crystal Leng
//Lipstick Palette 
//4/14/2020
//My lipstick palette inspired colors 

int a, b; //variable for position, line 1
int x, y; //varible for position, line 2
int c, d; //varible for position, line 3

void setup() {

  size(600, 600); //size of screen 
  background(255, 180, 194);//background color 

  a= width/2;
  b= height/5; //staring position, line 1 
  x= width/2; 
  y= height/3; //starting position, line 2
  c=width/2;
  d= height/2; //starting position, line 3 


  noStroke(); 
  //row 1 

  fill(161, 0, 0);//crimson
  ellipse(width/4, height/1.3, 50, 50); 
  fill(127, 0, 0);//maroon
  ellipse(width/2, height/1.3, 50, 50); 
  fill(255, 0, 0); //red
  ellipse(width/1.3, height/1.3, 50, 50); //location of circles in row 1

  //row 1.5 
  fill(255, 111, 141); //pink 4
  ellipse(width/2.65, height/1.2, 50, 50); 
  fill (248, 139, 184); //pink5
  ellipse(width/1.55, height/1.2, 50, 50); //location of circles in row 1.5 

  //row 2
  fill(255, 111, 114); //pink 
  ellipse(width/4, height/1.1, 50, 50); 
  fill(249, 0, 88);//pink2 
  ellipse(width/2, height/1.1, 50, 50); 
  fill (255, 60, 150);//pink3
  ellipse(width/1.3, height/1.1, 50, 50); //location of circles in row 2
}

void draw () {
  for (int i=0; i<1; i++) { //start counting at 0, and keeping counting(looping) while i is less than 1 
    noStroke();//no outline of circles

    //circle pallette color 
    fill( 255, 0, 0, 80); //red
    ellipse(random(0, width), random(0, height/1.5), 50, 50);
    fill(161, 0, 0, 80);//crimson
    ellipse(random(0, width), random(0, height/1.5), 50, 50);
    fill(127, 0, 0, 80);//maroon
    ellipse(random(0, width), random(0, height/1.5), 50, 50);
    fill(255, 111, 114, 100); //pink 
    ellipse(random(0, width), random(0, height/1.5), 50, 50);
    fill(249, 0, 88, 100);//pink2 
    ellipse(random(0, width), random(0, height/1.5), 50, 50);
    fill(255, 60, 150, 80); //pink 3
    ellipse(random(0, width), random(0, height/1.5), 50, 50);
    fill(255, 111, 141, 150); //pink 4
    ellipse(random(0, width), random(0, height/1.5), 50, 50); 
    fill (248, 139, 184, 150); //pink5 
    ellipse(random(0, width), random(0, height/1.5), 50, 50); 
    // random location of circles
  }

  //KEYBOARD MOVEMENT LINE 2
  noStroke();
  fill(255, 0, 0); 
  ellipse(x, y, 50, 50); //color and size of circle line2 

  if (keyPressed) { //if key is pressed,
    if (key == CODED) { //is it a special "CODED" key?
      if (keyCode ==RIGHT) { //is the coded key the righ arrow?
        x+=10; //same as x=x+10
      }
      if (keyCode== LEFT) { //is the coded key the left arrow?
        x-=10; //same as saying x=x-10
      }
    }
  }
  if (x> width) { //if x goes out of bounds on the right 
    x=0; //then reset it to the left
  }
  if (x<0) { //if x goes out of bounds onte left 
    x=width; //then reset it to the right
  } 

  //KEYBOARD MOVEMENT LINE 1
  noStroke();
  fill(248, 0, 101); 
  ellipse(a, b, 50, 50); // color and size for line 1

  if (keyPressed) { //if key is pressed,
    if (key == CODED) { //is it a special "CODED" key?
      if (keyCode ==RIGHT) { //is the coded key the righ arrow?
        a+=10; //same as a=a+10
      }
      if (keyCode== LEFT) { //is the coded key the left arrow?
        a-=10; //same as saying a=a-10
      }
    }
  }
  if (a> width) { //if a goes out of bounds on the right 
    a=0; //then reset it to the left
  }
  if (a<0) { //if a goes out of bounds onte left 
    a=width; //then reset it to the right
  } 

  //KEYBOARD MOVEMENT LINE 3
  noStroke(); 
  fill(161, 0, 0); 
  ellipse(c, d, 50, 50); //color and size of line 3

  if (keyPressed) { //if key is pressed,
    if (key == CODED) { //is it a special "CODED" key?
      if (keyCode ==RIGHT) { //is the coded key the righ arrow?
        c+=10; //same as c=c+10
      }
      if (keyCode== LEFT) { //is the coded key the left arrow?
        c-=10; //same as saying c=c-10
      }
    }
  }
  if (c> width) { //if c goes out of bounds on the right 
    c=0; //then reset it to the left
  }
  if (c<0) { //if c goes out of bounds onte left 
    c=width; //then reset it to the right
  }
}// thing I tried to do but failed...add a lipstick svg image to float/ move with mouse but it kept leaving a trace instead of following with mouse 
