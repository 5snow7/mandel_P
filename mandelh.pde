void mandel1(float w){
 float dx=w/width;float h=w*height/width;
 float dy=h/height;
  loadPixels();
  comp z=new comp();
  for(int j=0;j<width;j++){
    for(int k=0;k<height;k++){
      z.real=-w/2+j*dx;z.imag=-h/2+k*dy;
      int loc=j+k*width;
    int ch=check_sinz(z,z);  //to get mandel set;change check(z,c) to check(z,z);
    if(ch==100){pixels[loc]=color(250,0,0);}
      else{pixels[loc]=color(ch*50%255,200,255-ch*50%255);}
    }}
    updatePixels();
}

void julia(comp c,float w){
 float dx=w/width;float h=w*height/width;
 float dy=h/height;
  loadPixels();
  comp z=new comp();
  for(int j=0;j<width;j++){
    for(int k=0;k<height;k++){
      z.real=-w/2+j*dx;z.imag=-h/2+k*dy;
      int loc=j+k*width;
    int ch=check_sinz(z,c);  //to get mandel set;change check(z,c) to check(z,z);
    if(ch==100){pixels[loc]=color(250,0,0);}
      else{pixels[loc]=color(ch*50%255,200,255-ch*50%255);}
    }}
    updatePixels();
}

void mandelwatch(comp a,comp b,int ct){
  for(int j=1;j<=ct;j++){a=b.add(a.mult(a));
    text(a.real,30,30+20*j);text(a.imag,180,30+20*j);
  }
}

void blowup(float xs,float ys,float w){
 float dx=w/width;float h=w*height/width;
 float dy=h/height;
  loadPixels();
  comp z=new comp();
  for(int j=0;j<width;j++){
    for(int k=0;k<height;k++){
      z.real=xs+j*dx;z.imag=ys+k*dy;
      int loc=j+k*width;
    int ch=check(z,z);  //to get mandel set;change check(z,c) to check(z,z);
    if(ch==100){pixels[loc]=color(250,0,0);}
      else{pixels[loc]=color(ch*50%255,200,255-ch*50%255);}
    }}
    updatePixels();
}

void blowup_julia(float xs,float ys,comp c,float w){
 float dx=w/width;float h=w*height/width;
 float dy=h/height;
  loadPixels();
  comp z=new comp();
  for(int j=0;j<width;j++){
    for(int k=0;k<height;k++){
      z.real=xs+j*dx;z.imag=ys+k*dy;
      int loc=j+k*width;
    int ch=check_sinz(z,c);  //to get mandel set;change check(z,c) to check(z,z);
    if(ch==100){pixels[loc]=color(250,0,0);}
      else{pixels[loc]=color(ch*50%255,200,255-ch*50%255);}
    }}
    updatePixels();
}


int pwr(int l,int x){
  if(l==0){return x;}
  else{return pwr(l-1,x)*x;}
}

float contf(int l,float x){
  if(l==0){return x;}
  else{return 1/(1+contf(l-1,x));}
}