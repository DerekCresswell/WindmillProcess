
  class Point {
  
    private float x, y;
    private float clickAngle;
    
    static final float r = 10;
    
    public Point(float x, float y) {
    
        this.x = x;
        this.y = y;
      
    }
    
    public void drawPoint(){circle(x, y, r);}
    
    public float getX(){return x;}
    
    public float getY(){return y;}
    
    public void findClickAngle(float xRef, float yRef){
    
      //Add math
      //x 
      float opp = x - xRef;
      //y
      float adj = y - yRef;
      //Not sure if the negatives will work.
      
      clickAngle = abs((float)Math.atan(opp / adj));
      
    }
    
    public float getClickAngle(){return clickAngle;}
    
  }
