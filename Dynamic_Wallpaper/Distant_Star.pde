
class DistantStar {
  public int x, y;
  public float brightness;
  
  public DistantStar(){
    this.x = int(random(SCREENWIDTH));
    this.y = int(random(SCREENHEIGHT));
    this.brightness = random(1);
  }
}
