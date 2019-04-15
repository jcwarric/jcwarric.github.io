
int NUM_CIRCLES = 30;
ArrayList<Circle> circles;
color c1 = #123940;
color c2 = #B9E0E8;
int MIN_RADIUS = 70;
int MAX_RADIUS = 100;

void setup(){
  size(500, 500);
  noFill();
  
  circles = new ArrayList<Circle>();
  for(int i = 0; i < NUM_CIRCLES; i++){
    circles.add( 
      new Circle(
        random(0, width), //x
        random(0, height), //y
        random(MIN_RADIUS, MAX_RADIUS), //x_radius
        random(.5, 2), //velocity
        color(lerpColor(c1, c2, random(0, 1)),30)
      )
    );
  }
   background(255);
}

void draw(){
  //background(255);
  for(int i = 0; i < NUM_CIRCLES; i++){
     circles.get(i).update();
     for(int j = 0; j < NUM_CIRCLES; j++){
        if(i != j){
           circles.get(i).draw_intersection(circles.get(j)); 
        }
     }
  }
}