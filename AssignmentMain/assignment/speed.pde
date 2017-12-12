//Abstract class that holds some of the variables that are used with the crosshair system.
//It also makes abstract calls for the render and update and contains variables that are used for the crosshair.
abstract class Speed
{
  float speed;
  PVector pos;
  PVector forward;
  float theta;
  
  Speed(float x, float y, float speed, float theta)
  {
    pos = new PVector(x,y);
    this.speed = speed;
    this.theta = theta;
    forward = new PVector(0,-1);
  }
  abstract void render();
  abstract void update();
}