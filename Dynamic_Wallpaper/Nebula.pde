

public class Nebula{
  private int walkDistance = 1000;
  public ArrayList<Point> walkPoints;
  public color NebulaColor;
 
  
  private boolean vertialDirectionBias = random(1) < 0.5;
  private boolean horizontalDirectionBias = random(1) < 0.5;
  
  
  private double biasSwitchChance = 0.03;  
  private double biasStrength = 1.8;
  
  public Nebula(){
    this.walkDistance = int(100); 
    //colorMode(HSB, 360, 100, 100);
    this.NebulaColor = color(int(random(360)), 100, 100, 100);
    generateNebula();
  }
  
  private void generateNebula(){
    this.walkPoints = new ArrayList<Point>();
    Point point = new Point(int(random(SCREENWIDTH)),int(random(SCREENHEIGHT)));
    
    for(int i = 0; i < this.walkDistance; i++){
      walkPoints.add(point);
      
      // Adjust points
      int newX = int(point.x + random(-10,10));
      int newY = int(point.y + random(-10,10));      
      
      //if(vertialDirectionBias){
      //  newX *= biasStrength;
      //}
      
      //if(horizontalDirectionBias){
      //  newY *= biasStrength;
      //}
      
      
      // Roll for bias switch
      if(random(1) < biasSwitchChance){
        vertialDirectionBias = !vertialDirectionBias;
      }
         
      if(random(1) < biasSwitchChance){
        horizontalDirectionBias = !horizontalDirectionBias;
      }
      
      point = new Point(newX, newY);
    } //<>//
  }


}
