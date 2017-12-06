void setup()
{
  size(800, 800);
  cx = width / 2;
  cy = height / 2;
}

float cx, cy;
void grid()
{
  stroke(255,192,203);
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
  //Road
  stroke(255);
  line(320,550,390,400);
  line(480,550,410,400);
  fill(0);
  beginShape();
  vertex(320,550);
  vertex(390,400);
  vertex(410,400);
  vertex(480,550);
  endShape();
  line(400,550,400,400);
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
  fill(103,98,94);
  beginShape();
  vertex(-700,800);
  vertex(150,550);
  vertex(650,550);
  vertex(1500,800);
  endShape();
  fill(103,98,94);
  beginShape();
  vertex(-200,0);
  vertex(80,100);
  vertex(720,100);
  vertex(1000,0);
  endShape();
  //Spedometer
  fill(0);
  rect(150,570,180,50);
  fill(255,192,203);
  rect(160,600,10,10);
  rect(160,590,100,10);
  textSize(18);
  text("88",280,602);
  //Vents
  fill(0);
  rect(100,55,40,30);
  rect(670,55,40,30);
}
void infoScreen()
{
  rect(350,570,100,200);
    String[] tips = {"Save the Presidents Daughter", "Decomission the Rogue Synth", "Disarm the Bomb", "Are These Messages Getting Annoying?"};
    int index = int(random(tips.length));
    fill(255);
    text(tips[index],360,590,90,190); 
}
void BARscreen()
{
  rect(540,570,100,100);
  int[] nums = {25,5,20,10,15};
  
}
void draw()
{
  background(0);
  grid();
  sun();
  carHud();
  infoScreen();
  BARscreen();
}