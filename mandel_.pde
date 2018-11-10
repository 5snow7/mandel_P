
void mandel1_x(float w){
 float ch_x=w/width;float h=w*height/width;
 float ch_y=h/height;float rs=-.12;float is=.75;
  loadPixels();
  //comp z=new comp();
  
  for(int j=0;j<width;j++){
    for(int k=0;k<height;k++){
       float real=-w/2+j*ch_x;float imag=-h/2+k*ch_y;
      int loc=j+k*width;
    int ch=check_x(real,imag,real,imag);  //to get mandel set;change check(z,c) to check(z,z);
    if(ch==100){pixels[loc]=color(250,0,0);}
      else{pixels[loc]=color(ch*50%255,200,255-ch*50%255);}
    }}
    updatePixels();
}

int check_x(float r,float i,float rs,float is){
 int j=1;
 
 while(j<100){
  
   float tempr=r*r;float tempi=i*i;float tempri=2*r*i;
   r=tempr-tempi+rs;i=tempri+is;
   
   //r=((r*r)-(i*i))+rs;i=(2*r*i)-is;
  
  if(r*r+i*i>25){return j;}
  
  j++;  
  }
  return j;
}