import java.util.ArrayList;
import java.util.HashMap;

final int SCREENWIDTH = 7680;
final int SCREENHEIGHT = 2160;

int FRAMES = 24;
int STAR_COUNT = 300;

int fps = 10;

// PGraphics Frames of the animaiton
ArrayList<PGraphics> AnimationFrames;

// Distant Star 
DistantStars distantStars;

// Nebula
Nebula nebula = new Nebula();

// 2D array of all elements 
ArrayList<ArrayList<StarTuple>> frame_data = new ArrayList<>(FRAMES);
HashMap<Integer, Star> starmap = new HashMap<Integer, Star>(); // Store Star Objects
int curId = 0;

// Images file
String imageDirPath = "ImageFrames";

boolean TestMode = false;

void setup(){
  size(3840, 2160);
  
  if(!TestMode){
    surface.setVisible(false);
    noLoop();
  }
  
  InitArrays();
  GenerateStars();
  distantStars = new DistantStars(int(random(3000)));
  
  AnimationFrames = generateFrames(); 
  
  
  // Save Frames as Images
  
  //File dir = new File("imageDirPath");
  
  //if(dir.exists()){
  //  FileUtils.deleteDirectory(dir);
  //}
    
     saveAnimationImages(AnimationFrames);
  
  
}



void draw(){
  
  if(!TestMode){
    noLoop();
    return;
  }
  
  image(AnimationFrames.get(frameCount % FRAMES), 0, 0);
  delay(fps * 10);
  
}



void InitArrays(){
  for (int i = 0; i < FRAMES; i++){
    frame_data.add(new ArrayList<StarTuple>());
  }
  System.out.println("Frames:" + frame_data.size());
}



void GenerateStars(){
  
  StarPattern[] startypes = new StarPattern[] { new SwirlStar2() , new SideStar(), new SwirlStar(), new ClassicStar()};
  
  for(int i = 0; i < STAR_COUNT; i++){
    int starStartFrame = int(random(FRAMES));
    
    // Create new star and add to map
    Star star = new Star(startypes[int(random(startypes.length))], int(random(SCREENWIDTH)), int(random(SCREENHEIGHT)));
    
    starmap.put(curId, star);
    
    for(int j = 0; j < star.starpattern.getFrameCount(); j++){
      StarTuple st = new StarTuple(curId, j);
      frame_data.get((starStartFrame + j) % FRAMES).add(st);
    }
    
    curId += 1;
  }
}

void saveAnimationImages(ArrayList<PGraphics> animationFrames){
  
  if(animationFrames == null){
    System.out.println("ERROR: Did not generate animation frames");
    return; 
  }
  
  for(int i = 0; i < animationFrames.size(); i++){
    
    PGraphics pg = animationFrames.get(i);
    
    String imagenumberprefix = "";
    
    for(int n = 0; n < (str(FRAMES).length() - str(i).length()) ; n++){
      imagenumberprefix += "0";
    }
        
    pg.save(imageDirPath +"/DW_Frame_" + imagenumberprefix + str(i) + ".png");
   }
}


ArrayList<PGraphics> generateFrames(){
  
   ArrayList<PGraphics> animationFrames = new ArrayList<PGraphics>();
   
   for(int frameNumber = 0; frameNumber < FRAMES; frameNumber++){
     
     PGraphics pg = createGraphics(SCREENWIDTH, SCREENHEIGHT);
      
      pg.beginDraw();
      
      // Draw Background
      pg.background(0,0,0);
      
      // Draw Distant Stars
      distantStars.DrawDistantStars(pg);
      
      // Add stars stars to canvas
      for(StarTuple startuple : frame_data.get(frameNumber % FRAMES)){
        Star current_star = starmap.get(startuple.id);
        current_star.DrawStar(startuple.stage, pg);
      }
      
      pg.endDraw();
      
      animationFrames.add(pg);
    }
    
    return animationFrames;
}
