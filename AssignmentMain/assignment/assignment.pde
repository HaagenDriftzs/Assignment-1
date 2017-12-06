void setup()
{
  size(800, 800);
  cx = width / 2;
  cy = height / 2;
}

float cx, cy;
void grid()
{
  stroke(255);
  /*for(int x = 0 ; x <= width ; x += 20)
  {
    line(x, height, cx, cy);
  }*/
  
  float y = cy;
  float gap = 1;
  while(y <= height)
  {
    line(0, y, width, y);
    y += gap;
    gap += 2;
  }
}
void sun()
{
  fill(234,46,6);
  stroke(234,46,6);
  arc(400, 400, 140, 140, PI, TWO_PI);
  fill(234,106,6);
  stroke(234,106,6);
  arc(400, 400, 100, 100, PI, TWO_PI);
}
void carHud()
{
  fill(234,106,6);
  line(200,600,800,600);
}
void draw()
{
  background(0);
  grid();
  sun();
  carHud();
}