color c1 = #FFFFFF;
color c2 = #163052;
int min =0;
int max = 10;

PImage reference;
 boolean show_image = true;

float noise_scale = 0.01;

void setup(){
 reference = loadImage( "img/deer.jpg");
 size(500, 500);
 background(c1);
 fill(255);

}


void draw() {
 if(show_image){
   image(reference, 0, 0);
 }
}

void mouseDragged(){
  float x_radius = random(min, max);
  //float y_radius = random(min, max);
  float noise_val = noise(mouseX*noise_scale, mouseY*noise_scale);
  stroke(lerpColor(c1, c2, noise_val));
  ellipse(mouseX + noise_val*10, mouseY, x_radius, x_radius); 

}

void keyPressed(){
  if(keyCode == UP){
   min++;
   max++;
  }
  else if (keyCode == DOWN){
    if(min != 0){
      min--;
      max--;
    }
  }
  else if(key == 'c'){
    System.out.println("c pressed");
     background(c1); 
  }
  else if(key == 'h'){
     if(show_image){
       show_image = false;
     }
     else{
       show_image = true;
     }
  }

}