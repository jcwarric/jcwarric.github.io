class Circle {
  float x;
  float y;
  float radius;
  float velocity;
  color col;
  int x_direction;
  int y_direction;
  
  public Circle(float x, float y, float radius, float velocity, color col){
     this.x = x;
     this.y = y;
     this.radius = radius;
     this.velocity = velocity;
     this.col = col;
     
     //set a random x direction
     float rand_x = random(0, 1);
     if(rand_x < .5){
        x_direction = 1; 
     }
     else{
       x_direction = -1;
     }
     //set a random y direction
     float rand_y = random(0,1);
     if(rand_y < .5){
        y_direction = 1; 
     }
     else{
       y_direction = -1;
     }

 }
  
  public void draw_circle(){
    stroke(col);
    ellipse(x, y, radius, radius);
  }
  
  public void update(){
    x += velocity * x_direction;
    y += velocity * y_direction;
    
    //change direction on the edge of the screen
    if(x >= width || x <= 0) {
       x_direction *= -1; 
    }
    if(y >= height || y <= 0){
       y_direction *= -1; 
    }
  }
  
  public void draw_intersection(Circle c2){
    if(dist(x, y, c2.x, c2.y) < ((this.radius + c2.radius) / 2.0)){
      stroke(this.col);
      line(x, y, c2.x, c2.y);
    }
  }
  
}