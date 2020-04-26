//Crystal Leung 
//Rapunzel and Lights Part 2 (inspired by my favorite disney movie!)
// Art 22 
//4.26.20 
//Portrait Picture created by "NUMYUMY" 
//Latern Picture from Favim.com image#318788
//tint function used from Processing reference 

PImage img; 

void setup() {
  size(800, 401); 

  img= loadImage("rapunzel.jpg"); 


}

  void draw() {
    background(0); 
    PImage img = loadImage("rapunzel.jpg"); //load image
    PImage lant = loadImage("lanterns.jpg"); //loadimage 
   background (lant); //set lantern the background 
    image (img, 0,0); //add Rapunzel image as layer 
    tint(253,202,222,220); //create purple tink as well as opacity to combine pics
    
  }
