
public static class ClassicStar implements StarPattern {
  
  private static final int FRAMECOUNT;
  private static final int DIMENSIONS;
  private static final int[][] framePattern;
  
  public int getFrameCount(){
    return ClassicStar.FRAMECOUNT;
  }
  
  public int getDimensions(){
    return ClassicStar.DIMENSIONS;
  }
  
  public int[][] getFrames(){
    return ClassicStar.framePattern;
  }
  
  static {
    FRAMECOUNT = 9;
    DIMENSIONS = 9;
    framePattern = new int[][] {
                          {0,0,0,0,0,0,0,0,0},  // Frame 0
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,1,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          
                          {0,0,0,0,0,0,0,0,0},  // Frame 1
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,2,0,0,0,0},
                          {0,0,0,2,1,2,0,0,0},
                          {0,0,0,0,2,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          
                          {0,0,0,0,0,0,0,0,0},  // Frame 2
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,3,0,0,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,3,2,1,2,3,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,0,0,3,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          
                          {0,0,0,0,0,0,0,0,0},  // Frame 3
                          {0,0,0,0,4,0,0,0,0},
                          {0,0,4,0,3,0,4,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,4,3,2,1,2,3,4,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,4,0,3,0,4,0,0},
                          {0,0,0,0,4,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
  
                          {0,0,0,0,5,0,0,0,0},  // Frame 4
                          {0,5,0,0,4,0,0,5,0},
                          {0,0,4,0,3,0,4,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {5,4,3,2,1,2,3,4,5},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,4,0,3,0,4,0,0},
                          {0,5,0,0,4,0,0,5,0},
                          {0,0,0,0,5,0,0,0,0},
                          
                          {0,0,0,0,0,0,0,0,0},  // Frame 5
                          {0,0,0,0,4,0,0,0,0},
                          {0,0,4,0,3,0,4,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,4,3,2,1,2,3,4,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,4,0,3,0,4,0,0},
                          {0,0,0,0,4,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                        
                          {0,0,0,0,0,0,0,0,0},  // Frame 6
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,3,0,0,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,3,2,1,2,3,0,0},
                          {0,0,0,3,2,3,0,0,0},
                          {0,0,0,0,3,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          
                          
                          {0,0,0,0,0,0,0,0,0},  // Frame 7
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,2,0,0,0,0},
                          {0,0,0,2,1,2,0,0,0},
                          {0,0,0,0,2,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          
                          {0,0,0,0,0,0,0,0,0},  // Frame 8
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,1,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0}};

  }
} 


//public class ClasicStar extends Star{
//  int x, y;
//  int setDelay = 20;
//  int tileSize = 5;
//  int currentDelay = int(random(30));
//  int currentStage = 0;
//  static final int totalFrames = 10; // in out 5
//  public static final int MAX_WIDTH = 9;
  
  
 
//  public ClasicStar(int x, int y){
//    this.x = x;
//    this.y = y;
//  }
  
//  public void ProgressStage(){
//    if(currentStage > totalFrames){
//      currentStage = 0;
//      currentDelay = setDelay;
//    } else {
//      currentStage++;
//    }
//  }
                                              
//  void DrawStar(int stage){
//    if (currentDelay >= 1){
//      currentDelay--;
//      return;
//    }
    
    
//    for(int i = 0; i < ClasicStar.MAX_WIDTH; i++){
//      for(int j = 0; j < ClasicStar.MAX_WIDTH; j++){
        
//        if(currentStage <= 5){
//          if(ClassicStarPattern.PATTERN[i][j] != 0 && ClassicStarPattern.PATTERN[i][j] <= currentStage){
//            square(this.x + i * tileSize, this.y + j * tileSize, tileSize);
//          }
//        } else {
//          if(ClassicStarPattern.PATTERN[i][j] != 0 && ClassicStarPattern.PATTERN[i][j] <= 5 - (currentStage - 5)){
//            square(this.x + i * tileSize, this.y + j * tileSize, tileSize);
//          }
//        }
//      }
//    }
//    ProgressStage();
//  }
//}
