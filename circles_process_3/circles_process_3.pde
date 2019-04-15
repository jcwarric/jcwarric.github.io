
int NUM_CIRCLES = 50;
ArrayList<Circle> circles;
//color c1 = #123940;
//color c2 = #B9E0E8;
color c1 =#3A909B;
color c2 = #DDDDDD;
int MIN_RADIUS = 150;
int MAX_RADIUS = 200;

void setup(){
  size(800, 600);
  noFill();
  
  circles = new ArrayList<Circle>();
  for(int i = 0; i < NUM_CIRCLES; i++){
    circles.add( 
      new Circle(
        random(0, width), //x
        height/2, //y
        random(MIN_RADIUS, MAX_RADIUS), //x_radius
        random(.5, 2), //velocity
        color(lerpColor(c1, c2, random(.5, 1)),30)
      )
    );
  }
   background(255);
}

void draw(){
  //background(255);
  for(int i = 0; i < NUM_CIRCLES; i++){
    Circle c1 = circles.get(i);
     c1.update();
     for(int j = i; j < NUM_CIRCLES; j++){
        if(i != j){
           c1.draw_intersection(circles.get(j)); 
        }
     }
     
  }
}