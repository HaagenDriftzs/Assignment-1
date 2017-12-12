/*
The crosshair class extends to the speed abstract class. The class is designed to make the crosshair move
through wasd, It works well but its not quite where I wanted it to be, but overall I'm pleased enough with it.
*/
class crosshair extends Speed
{
  color c;
  
  float radius;
  float rotSpeed;
  
  PVector force;
  PVector velocity;
  PVector acceleration;
  float timeDelta;
  float mass;
  float power;
  
  crosshair(float x, float y, float theta, color c, float radius)
  {
    super(x, y, 10, theta);
    this.c = c;
    rotSpeed = 0.1f;
    this.radius = radius; 
   
    force = new PVector();
    velocity = new PVector();
    acceleration = new PVector();
    mass = 1;
    timeDelta = 1 / 60f;
    power = 100;
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    if (checkKey('a'))
    {
      theta -= rotSpeed;
    }
    if (checkKey('d'))
    {
      theta += rotSpeed;
    }
    
    if (checkKey('w'))
    {
      force = PVector.mult(forward, power);
    }
    if (checkKey('s'))
    {
      force = PVector.mult(forward, -power);      
    }
    acceleration = PVector.div(force, mass);
    velocity.add(PVector.mult(acceleration, timeDelta));
    pos.add(PVector.mult(velocity, timeDelta));
    force.x = force.y = 0;
    
    if (pos.x > width)
    {
      pos.x = 0;
    }
    
    if (pos.x < 0)
    {
      pos.x = width;
    }
    
    if (pos.y < 0)
    {
      pos.y = height;
    }
    
    if (pos.y > height)
    {
      pos.y = 0;
    }
    

  }
  
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(0, 255, 255);
    rotate(theta);
    stroke(c);
    line(-radius,  -radius, 0 ,  - radius);
    line(0 ,  - radius,  radius,  radius);
    line( -radius,  radius, 0 , 0);
    //line(0, 0,  - radius,  radius);  
    popMatrix();
  }
}