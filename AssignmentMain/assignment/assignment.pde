/*
Thomas Killeen C16394453 DT228 2  OOP Assignment 1
The basis for this assignment is that you are in the driver seat of a retro 80's car.
The catch is that it is the far distant future of 2007 and the world has fallen to devistation and you an known legened needs to save it!
With the cheesy backstory behind us, the idea is based on cheesy 90's 80's over the top action movies. It has alot of inspiration in it
as I used some games and music to inspire me to create this design.
*/
//Creating an arraylist of PVectors
ArrayList<PVector> signs;
int signsNo = 6;

//Import sound files
import processing.sound.*;
SoundFile file;

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
  
  //allows the file to be read in the data folder
  file = new SoundFile(this,"Laser gun sound effect (1).mp3");
}

//Created an array of booleans for the reticle to move
boolean keys[] = new boolean[1024];
//Created a new Arraylist for the speed class
ArrayList<Speed> speed = new ArrayList<Speed>();

void draw()
{
  background(0);
  
  //Call the class functions as they are needed
  s.grid();
  s.sun();
  d.carHud();
  
  //This is used to pass to move the reticle
  for(int i = speed.size() - 1 ; i >= 0  ; i --)
  {
    Speed go = speed.get(i);
    go.update();
    go.render();
  }
 
        //When the space bar is pressed the sound file plays   
       if (checkKey(' '))
    {
      file.play();
    }
        //I had so much trouble with this that I had to put it in the draw
        //When the mouse is clicked calls the infoScreen funtion in the class screen
        if(mousePressed)
    {
      i.infoScreen();
    }
    //This was the biggest pain of them all
    //Had to be the last function to call
      r.radar();
}

//Functions that pick up key presses to activate the booleans
//When key is pressed and released
void keyPressed()
{
  println("Key pressed");
  keys[keyCode] = true;
}
void keyReleased()
{
  println("Key released");
  keys[keyCode] = false;
}
boolean checkKey(int k)
{
  return keys[Character.toLowerCase(k)] || keys[Character.toUpperCase(k)]; 
}