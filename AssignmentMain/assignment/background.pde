//This class is used to create the grid in the background and the road. It also creates the sun with the two half eclipses
//It is designed for everything in the background
class surroundings
{
  float cx, cy;
  //Creates the grid to half of the page. I really like this design
  //This gives the page that synth feeling I was really looking for.
    void grid()
    {
      stroke(255,192,203);
      float y = cy;
      float gap = 1;
      while(y <= height)
      {
        line(0, y, width, y);
        y += gap;
        gap += 2;
      }
      //Road
      stroke(255);
      line(320,550,390,400);
      line(480,550,410,400);
      fill(0);
      //This adds a force perspective to the road
      beginShape();
      vertex(320,550);
      vertex(390,400);
      vertex(410,400);
      vertex(480,550);
      endShape();
      line(400,550,400,400);
    }
    //The sun is two half elipses with one slightly larger to give a real nice aesthetic.
    void sun()
    {
      fill(234,46,6);
      stroke(234,46,6);
      arc(400, 400, 140, 140, PI, TWO_PI);
      fill(234,106,6);
      stroke(234,106,6);
      arc(400, 400, 100, 100, PI, TWO_PI);
    }
}