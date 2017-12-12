//This was a failed design that I was gonna put a moving barchart on the cars hud
class barclass
{
  int[]coordinates;
  void BARscreen()
    {
      String[] nums = loadStrings("barchartnums.csv");
      coordinates = int(split(nums[0],','));
      printArray(nums);
      fill(255);
      for(int i=0; i<coordinates.length;i++)
      {
        int multiplier =1;
        float rectWidth = width / coordinates.length;
        float ypos = height - (coordinates[i]*multiplier);
        rect((rectWidth*i),ypos,rectWidth,(coordinates[i]*multiplier));
      }
    }
}