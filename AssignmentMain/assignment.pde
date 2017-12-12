/*
Thomas Killeen C16394453 DT228 2  OOP Assignment 1
The basis for this assignment is that you are in the driver seat of a retro 80's car.
The catch is that it is the far distant future of 2007 and the world has fallen to devistation and you an known legened needs to save it!
With the cheesy backstory behind us, the idea is based on cheesy 90's 80's over the top action movies. It has alot of inspiration in it
as I used some games and music to inspire me to create this design.
*/

//For the clases
crosshair c;
hud1 d;
surroundings s;
radarhud r;
screenInfo i;
barclass b;

void setup()
{
  //Declaring screen size
  size(800, 800);
  //Passed to the speed class as parameters
  speed.add(new crosshair(width/2,height/2,0,color(0,255,0),15));
  
  //Creating variables for the classes so they can be called
  d = new hud1();
  s = new surroundings();
  r = new radarhud();
  i = new screenInfo();
  b = new barclass();
  //These are passed to the surroundings class for the grid design
  s.cx = width / 2;
  s.cy = height / 2;
  
}

void draw()
{
  background(0);
  
  //Call the class functions as they are needed
  s.grid();
  s.sun();
  d.carHud();
  i.infoScreen();
  r.radar();
}