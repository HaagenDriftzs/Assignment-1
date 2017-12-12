/*
I had alot of hope for this but in the end it didnt turn out quite the way
I wanted it to. It was orignaly supposed to change a message on each click as theyre is a 
array of strings. In the end I had to make them show then stop the program.
*/
class screenInfo
{
  void infoScreen()
  {
    String[] tips = {"Save the Presidents Daughter", "Decomission the Rogue Synth", "Disarm the Bomb", "Are These Messages Getting Annoying?"};
    int n = int(random(tips.length));
    fill(255);
    text(tips[n],360,580,90,190);
    fill(0);
    rect(300,300,200,100);
    fill(255);
    text("Ready for the next assignment",310,310,190,190);
    stop();
  }
}