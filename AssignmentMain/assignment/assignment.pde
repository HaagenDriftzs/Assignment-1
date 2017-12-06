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
  line(320,550,390,400);
  line(480,550,410,400);
  fill(0);
  beginShape();
  vertex(320,550);
  vertex(390,400);
  vertex(410,400);
  vertex(480,550);
  endShape();
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
  beginShape();
  vertex(-700,800);
  vertex(150,550);
  vertex(650,550);
  vertex(1500,800);
  endShape();
  fill(234,106,6);
  beginShape();
  vertex(-200,0);
  vertex(80,100);
  vertex(720,100);
  vertex(1000,0);
  endShape();
}
void draw()
{
  background(0);
  grid();
  sun();
  carHud();
}