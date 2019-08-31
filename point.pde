
  class Point {
  
    private float x, y;
    private int clickAngle;
    
    static final float r = 10;
    
    public Point(float x, float y) {
    
        this.x = x;
        this.y = y;
      
    }
    
    public void drawPoint(){circle(x, y, r);}
    
    public float getX(){return x;}
    
    public float getY(){return y;}
    
    public void findClickAngle(Point centerPoint){
    
      double deltaY = (centerPoint.y - y);
      double deltaX = (x - centerPoint.x);
      double result = (Math.atan(deltaY - deltaX)); 
      clickAngle = (result < 0) ? (int)(360 + result) : (int)result;
      
    }
    
    public float getClickAngle(){return clickAngle;}
    
  }
