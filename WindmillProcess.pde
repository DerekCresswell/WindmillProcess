
  import java.util.ArrayList;
  
  ArrayList<Point> points = new ArrayList<Point>();
  
  int currentAngle = 0;
  int currentIndex = 0;

  void setup(){
  
    size(500, 500);
    
    points.add(new Point(random(20, width - 20), random(20 , height - 20)));
    
  }
  
  void draw(){
  
    background(255);
    stroke(0);
    fill(0);

    for(Point p : points){
      if(p.getClickAngle() == currentAngle){  
        currentIndex = points.indexOf(p);
        currentAngle++;
        for(Point p2 : points){
          p2.findClickAngle(points.get(currentIndex));
        }
      }
    }
    
    float xC = points.get(currentIndex).getX(),
          yC = points.get(currentIndex).getY();
    
    float x1 = xC + cos(radians(currentAngle)) * width,
          y1 = yC + sin(radians(currentAngle)) * height,
          x2 = xC - cos(radians(currentAngle)) * width,
          y2 = yC - sin(radians(currentAngle)) * height;
    
    line(x1, y1, x2, y2);
    
    for(Point p : points){
      p.drawPoint();
    }
    
    currentAngle++;
    if(currentAngle > 360)
      currentAngle = 0;
    
  }
  
  void mousePressed(){
  
    points.add(new Point(mouseX, mouseY));
    points.get(points.size() - 1).findClickAngle(points.get(currentIndex));
    System.out.println(points.get(points.size() - 1).clickAngle);
    //Ensure no 3 co-linear
    //Add Removing points
    //Add space around point where you can place another point
    
  }
