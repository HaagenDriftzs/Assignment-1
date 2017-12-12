//My God this radar was tough to do. I got a working outline but wish I could have improved on it.
//The random system doesnt work the way I wanted too where I wanted them to spawn in different locations but just couldnt get it to work
//properly but I am pleased with it as it is.
class radarhud
{
  void radar()
    {
      signs = new ArrayList<PVector>();
      for(float angle = 0; angle < TWO_PI; angle += TWO_PI/signsNo)
      {
        float position = random(10,20);
        PVector newSign = PVector.fromAngle(angle);
        newSign.mult(position);
        signs.add(newSign);
      }
      fill(0);
      rect(265,20,70,70);
       // Put (0, 0) in the
       
      translate(300,55);
    
      float radius = 30;
      noFill();
      stroke(0,255,0);
      ellipse(0, 0, 2*radius, 2*radius);
    
      // draw spinning line
      float angle = frameCount * 0.1;
      line(0, 0, radius * cos(angle), radius * sin(angle));
      for(PVector s: signs)
      {
        ellipse(s.x,s.y,5,5);
      }
    }
}