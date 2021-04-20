PShader sh;
int sn, count, b;
boolean snb;
void setup(){
  size(640,480,P3D);
  noStroke();
  fill(0);
  sh = loadShader("shader.glsl");
  sn = 3;
  count = 0;
  b = 1;
  snb = true;
}

void draw(){
  
  shader(sh);
  sh.set("u_resolution", float(width), float(height));
  sh.set("colorA",0.2+(count/500.)*b,float(mouseX)/width, float(mouseY)/height);
  sh.set("colorB",float(mouseX)/width,float(mouseY)/height,0.2+(count/500.)*b);
  sh.set("scale", float(sn));
  sh.set("N", sn);
  sh.set("b", b);
  sh.set("off", 0.5+count/300.);
  background(0);
  rect(0,0,width,height);
  
  count++;
  if(count >= 100){
    if(sn < 8 && snb){
      sn++;
    } else {
      if(sn > 3){
        sn--;
        snb = false;
      } else{
        snb = true;
      }
    }
    b *=-1;
    count = 0;
  }
}
