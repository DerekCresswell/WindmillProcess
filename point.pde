
  class Point {
  
    private float x, y;
    
    static final float r = 10;
    
    public Point(float x, float y) {
    
        this.x = x;
        this.y = y;
      
    }
    
    public void drawPoint(){
    
      circle(x, y, r);
      
    }
    
    public float getX(){return x;}
    
    public float getY(){return y;}
    
  }
