color c1 = #FFFFFF;
color c2 = #163052;
int min = 30;
int max = 60;
//float noise_scale = 0.02;


void setup(){
 size(500, 500);
 background(255);
 noStroke();
}

float noise_scale = 0.02;

void draw() {
 
}

void mouseDragged(){
  float x_radius = random(min, max);
  //float y_radius = random(min, max);
  float noise_val = noise(mouseX*noise_scale, mouseY*noise_scale);
  fill(lerpColor(c1, c2, noise_val));
  ellipse(mouseX + noise_val*10, mouseY, x_radius, x_radius); 

}