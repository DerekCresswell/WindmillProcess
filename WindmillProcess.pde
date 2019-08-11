
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
    
    //Seems "Jittery"
    float x1 = xC + cos(currentAngle) * width,
          y1 = yC + sin(currentAngle) * height,
          x2 = xC - cos(currentAngle) * width,
          y2 = yC - sin(currentAngle) * height;
    
    line(x1, y1, x2, y2);
    
    for(Point p : points){
      p.drawPoint();
    }
    
    currentAngle += 0.025;
    
  }
  
  void mousePressed(){
  
    points.add(new Point(mouseX, mouseY));
    //ensure no 3 co-linear
    
  }
