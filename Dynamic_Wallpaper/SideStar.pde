

//class SideStar extends Star 
//{
//  int x, y;
//  int setDelay = 20;
//  int tileSize = 5;
//  int currentDelay = int(random(30));
//  int currentStage = 0;
//  static final int totalFrames = 6; // in out 5
//  public static final int MAX_WIDTH = 9;
  

public static class SideStar implements StarPattern{
  private static final int FRAMECOUNT;
  private static final int DIMENSIONS;
  private static final int[][] FRAMEPATTERN;
  
  public int getFrameCount(){
    return SideStar.FRAMECOUNT;
  }
  
  public int getDimensions(){
    return SideStar.DIMENSIONS;
  }
  
  public int[][] getFrames(){
    return SideStar.FRAMEPATTERN;
  }
  
  
  static {
    FRAMECOUNT = 7;
    DIMENSIONS = 9;
    FRAMEPATTERN = new int[][] {{0,0,0,0,0,0,0,0,0},  // Frame 0
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,1,0,0,0},
                                  {0,0,0,0,1,0,0,0,0},
                                  {0,0,0,1,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  
                                  {0,0,0,0,0,0,0,0,0},  // Frame 1
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,2,2,0,0},
                                  {0,0,0,0,2,1,0,0,0},
                                  {0,0,0,2,1,2,0,0,0},
                                  {0,0,0,1,2,0,0,0,0},
                                  {0,0,2,2,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},                 
                                  
                                  {0,0,0,0,0,0,0,0,0},  // Frame 2
                                  {0,0,0,0,0,0,0,3,0},
                                  {0,0,3,0,0,2,2,0,0},
                                  {0,0,0,0,2,1,0,0,0},
                                  {0,3,0,2,1,2,0,3,0},
                                  {0,0,0,1,2,0,0,0,0},
                                  {0,0,2,2,0,0,3,0,0},
                                  {0,3,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  
                                  {0,0,0,0,0,0,0,0,0},  // Frame 3
                                  {0,4,0,0,4,0,0,3,0},
                                  {0,0,3,0,0,2,2,0,0},
                                  {0,0,0,4,2,1,4,0,0},
                                  {4,0,0,2,1,2,0,0,4},
                                  {0,0,4,1,2,4,0,0,0},
                                  {0,0,2,2,0,0,3,0,0},
                                  {0,3,0,0,4,0,0,4,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  
                                  {0,0,0,0,0,0,0,0,0},  // Frame 4
                                  {0,0,0,0,0,0,0,3,0},
                                  {0,0,3,0,0,2,2,0,0},
                                  {0,0,0,0,2,1,0,0,0},
                                  {0,3,0,2,1,2,0,3,0},
                                  {0,0,0,1,2,0,0,0,0},
                                  {0,0,2,2,0,0,3,0,0},
                                  {0,3,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  
                                  {0,0,0,0,0,0,0,0,0},  // Frame 5
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,2,2,0,0},
                                  {0,0,0,0,2,1,0,0,0},
                                  {0,0,0,2,1,2,0,0,0},
                                  {0,0,0,1,2,0,0,0,0},
                                  {0,0,2,2,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  
                                  {0,0,0,0,0,0,0,0,0},  // Frame 6
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,1,0,0,0},
                                  {0,0,0,0,1,0,0,0,0},
                                  {0,0,0,1,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0},
                                  {0,0,0,0,0,0,0,0,0}};

  }
}
