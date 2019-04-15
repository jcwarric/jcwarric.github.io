
int NUM_CIRCLES = 15;
ArrayList<Circle> circles;
//color c1 = #144155;
//color c2 = #FAC83F;
color c1 = #000000;
color c2 = #000000;
int MIN_RADIUS = 70;
int MAX_RADIUS = 100;

void setup(){
  size(500, 500);
  noFill();
  
  circles = new ArrayList<Circle>();
  for(int i = 0; i < NUM_CIRCLES; i++){
    float rad = random(MIN_RADIUS, MAX_RADIUS);
    circles.add( 
      new Circle(
        random(0, width), //x
        random(0, height), //y
        rad, //x_radius
        rad, //y_radius
        random(.5, 2), //velocity
        color(lerpColor(c1, c2, random(0, 1)),100)
      )
    );
  }
   background(255);
}

void draw(){
  background(255);
  for(int i = 0; i < NUM_CIRCLES; i++){
     circles.get(i).draw_circle(); 
     circles.get(i).update();
  }
}