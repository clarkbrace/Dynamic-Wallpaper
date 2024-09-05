
public class DistantStars {
  private int numberOfStars;
  private int distantStarSize = 3;
  //private color distantStarColor;
  
  ArrayList<DistantStar> DistantStars;
  
  DistantStars(int numberOfStars){
    this.numberOfStars = numberOfStars;
    
    this.DistantStars = new ArrayList<DistantStar>();
    
    for(int i = 0; i < this.numberOfStars; i++){
      this.DistantStars.add(new DistantStar());
    }
    
    // Set color
    
    //distantStarColor = color(55, 35, 100);
  }
  
  
  public void DrawDistantStars(PGraphics pg){
    pg.noStroke();
    colorMode(HSB, 360, 100, 100, 100);
    
    for(DistantStar star : this.DistantStars){
      pg.fill(color(55,25,100, (100 * star.brightness)));
      
      pg.square(star.x, star.y, distantStarSize);
    }
   
  }  
}
