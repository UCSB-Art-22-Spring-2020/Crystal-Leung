//Crystal Leung 
//Rapunzel and Lights part 1(inspired by my favorite disney movie!)
// Art 22 
//4.26.20 
//Picture created by "NUMYUMY" 

PImage img; 

void setup() {

  size(800, 920); 

  img= loadImage("rapunzel.jpg"); 

  loadPixels(); 
  for (int x=0; x<width; x++) { //nested loop to scan through all pixel locations 
    for (int y=0; y < width; y ++) {
      int index= x + y * width; //magic formula 

      // extracted color values from image 
      float r = red(img.pixels[index]); //the "img" show we take it from image displayed 
      float g = green(img.pixels[index]);
      float b = blue(img.pixels[index]);

      //set pixel color for display 
      pixels[index]= color (r, g, b);
    }
  }
  updatePixels();
} 

void draw() {



  float x1= random(0, width); // x location of copy 
  float y1= 0; //y location of copy 

  int w= 1; //width of the section 
  int  h= height; //height of section 

  float x2= x1 + random(-5, 5); //paste the pixel section at a random location up to 5 pixels away from x1 
  float y2= y1+ random(-5, 5); // same for y ^ 

  copy(int(x1), int(y1), w, h, int(x2), int(y2), w, h);//copy formula from lecture

  strokeWeight(8); 
  point(mouseX, mouseY); 
  if (mouseX < width/2 && mouseY < height/2) { //if in the top left quadrant
    stroke(247, 245, 196, 150); // then the point will be yellow
  } else if (mouseX > width/2 && mouseY < height/2) { //if in the top right quadrant 
    stroke(255, 151, 255, 150); //then the point will be pink
  } else if (mouseX > width/2 && mouseY > height/2) { //if in the bottom right quadrant 
    stroke(234, 184, 244, 150); //then the point will be purple 
    strokeWeight(10);
  } else if (mouseX < width/2 && mouseY > height/2) { //if in the bottom left quadrant 
    stroke(255, 210, 143, 150); // then point will be orange
  }
} 
