class Circle {
 
  float x;
  float y;
  float radius_x;
  float radius_y;
  float velocity;
  color col;
  int x_direction;
  int y_direction;
  
  Circle(float x, float y, float radius_x, float radius_y, float velocity, color col){
     this.x = x;
     this.y = y;
     this.radius_x = radius_x;
     this.radius_y = radius_y;
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
    ellipse(x, y, radius_x, radius_y);
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
  
}