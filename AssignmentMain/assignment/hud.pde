//The hud is everything that is for the car that doesnt have interation as they are static.
//The design uses shaping with vertexes and other shapes to give the idea of the car
class hud1
{
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
      //Terminal
      fill(0);
      rect(350,570,110,200);
      //CasseteDeck
      rect(500,570,60,20);
      ellipse(580,580,20,20);
      //SecondTerminal
      rect(600,570,100,100);
      fill(255);
      text("quSDaq ba’lu’’a’", 610,580,90,90);
      //ThirdTerminal
      fill(0);
      rect(400,30,200,50);
      fill(255);
      text("Watashi wa tsukarete iru",410,40,200,50);
      //StiringWheel
      fill(0);
      beginShape();
      vertex(150,600);
      vertex(150,700);
      vertex(160,700);
      vertex(160,665);
      vertex(260,665);
      vertex(260,700);
      vertex(270,700);
      vertex(270,600);
      vertex(260,600);
      vertex(260,645);
      vertex(160,645);
      vertex(160,600);
      vertex(150,600);
      endShape();
    }
}