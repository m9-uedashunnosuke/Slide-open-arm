float baseH = 10;
float armL1 = 40;
float armL2 = 40;
float armL3 = 30;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l1 = 10;
float l2 = 10;
float l3 = 0;
float dif = 1.0;


void setup(){
  size(1000, 700, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'f'){
      angle0 = angle0 + dif;
      if(angle0>60){
        dif = -1;
      }
       if(angle0<-60){
        dif = +1;
      }
    }
    if(key == 'd'){
      angle1 = angle1 + dif;
       if(angle1>60){
        dif = -1;
      }
       if(angle1<-60){
        dif = +1;
      }
    }
    
     if(key == 'k'){
      l1 = l1 + dif;
      if(l1>30){
        dif=-1;
      }
      if(l1<0){
        dif=+1;
      }
    }
    if(key == 's'){
      angle2 = angle2 + dif;
       if(angle2>60){
        dif = -1;
      }
       if(angle2<-60){
        dif = +1;
      }
    }
     if(key == 'l'){
      l2 = l2 + dif;
      if(l2>30){
        dif=-1;
      }
      if(l2<0){
        dif=+1;
      }
    }
    if(key == 'h'){
      l3 = l3 + dif;
    }
    if(key == 'H'){
      l3 = l3 - dif;
    }
    if(key == 'z'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      l1 = 0;
      l2 = 0;
      l3 = 0;
  }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,10,baseH/2);
  fill(175);
  box(10,40,baseH);
  
  //1st link
  translate(0,l1,baseH/2+armW1/2);
  rotateZ(radians(angle1));
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  translate(0,l2,armW2);
  rotateZ(radians(angle2)); 
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(0, armL2-armW2-armW3-2.5, -armW3+l3-5);
  fill(100);
  fill(255,0,0);
  box(armW3,armW3,armL3);
  
}
