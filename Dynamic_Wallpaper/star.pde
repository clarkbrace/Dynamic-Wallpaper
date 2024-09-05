class Star {
  StarPattern starpattern;
  int x, y;
  int tileSize;
  int starColorHue;
  
  
  public Star(StarPattern starpattern, int x, int y){
    this.x = x;
    this.y = y;
    this.tileSize = int(random(2, 12));
    
    
    starColorHue = int(random(360));
    this.starpattern = starpattern;
  }
  
  
  public void DrawStar(int frame_number, PGraphics pg){
  pg.noStroke();
  pg.colorMode(HSB, 360, 100, 100, 100);
  
  for(int i = 0; i < starpattern.getDimensions(); i++){
    for(int j = 0; j < starpattern.getDimensions(); j++){
      if(this.starpattern.getFrames()[(frame_number) * this.starpattern.getDimensions() + i][j] != 0){
        
        // Colors
        
        int alpha = 120 - (this.starpattern.getFrames()[(frame_number) * this.starpattern.getDimensions() + i][j] * 20);
        //System.out.println(alpha);
        pg.fill(starColorHue, 100, 100, alpha);
        
        pg.square(this.x + i * tileSize, this.y + j * tileSize, tileSize);
      }
    }
  }
}
}
