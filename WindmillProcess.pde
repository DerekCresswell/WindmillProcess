
  import java.util.ArrayList;
  
  ArrayList<Point> points = new ArrayList<Point>();
  
  float currentAngle = 0;
  int currentIndex = 0;

  void setup(){
  
    size(500, 500);
    
    points.add(new Point(random(20, width - 20), random(20 , height - 20)));
    
  }
  
  void draw(){
  
    background(255);
    stroke(0);
    fill(0);
    
    //calculate trig for each point
    
    float xC = points.get(currentIndex).getX(),
          yC = points.get(currentIndex).getY();
    
    
    //Math needed here, see img file
    float x1 = 0,
          y1 = 0,
          x2 = 0,
          y2 = 0;
    
    line(x1, y1, x2, y2);
    
    for(Point p : points){
      p.drawPoint();
    }
    
    currentAngle += 0.1;
    
  }
  
  void mousePressed(){
  
    points.add(new Point(mouseX, mouseY));
    //ensure no 3 co-linear
    
  }
