class logo {
  float xs;float ys;float xf;float yf;float angle;
  logo(float x,float y, float as){xs=x;ys=y;angle=as;}
  logo(){xs=0;ys=0;xf=0;yf=0;angle=0;}
  
 void fd(float len) {xf=xs+len*cos(3.141592*angle/180);
  yf=ys+len*sin(3.141592*angle/180);
  line(xs,ys,xf,yf);
  xs=xf;ys=yf;
  }
  
  void bk(float len) {xf=xs-len*cos(3.141592*angle/180);
  yf=ys-len*sin(3.141592*angle/180);
  line(xs,ys,xf,yf);
  xs=xf;ys=yf;
  }
  
void set1(float x,float y,float an){xs=x;ys=y;angle=an;}  
 void  rt(float an){angle=angle+an;}
 void  lt(float an){angle=angle-an;}
float xpos(){return xf;}
float ypos(){return yf;}
float dir(){return angle;}
}

void rectri(int level,float len,logo t)
{
  if (level==0) t.fd(len);
  else{
    rectri(level-1,len/3,t);t.lt(60);
    rectri(level-1,len/3,t);t.rt(120);
    rectri(level-1,len/3,t);t.lt(60);
    rectri(level-1,len/3,t);
  }}

void poly(int n, int len, logo t)
{
  for(int j=1;j<=n;j++){t.fd(len);t.rt(360/n);}
}

void inspi(float len,float angle,logo t){
  t.fd(len);t.rt(angle);
  angle=angle+angle;
}

void linepoly(int n,float len,logo t){
  float[] xpts=new float[n+1];
  float[] ypts=new float[n+1];
  for(int j=1;j<=n;j++){
    t.fd(len);t.rt(360/n);xpts[j]=t.xpos();ypts[j]=t.ypos();}
for(int k=1;k<=n;k++){
  for(int p=1;p<=n;p++){
    line(xpts[k],ypts[k],xpts[p],ypts[p]);}}
}

//hil[n_,len_,p_]:=If[n==0,fd[0],{lt[p*90],hil[n-1,len,-1*p],fd[len],rt[p*90],hil[n-1,len,p],fd[len],hil[n-1,len,p],rt[p*90],fd[len],
//  hil[n-1,len,-1*p],lt[p*90]}]

void hil(int n,float len, int p,logo t){
  if(n==0){}
  else{t.lt(p*90);hil(n-1,len,-1*p,t);t.fd(len);t.rt(p*90);
  hil(n-1,len,p,t);t.fd(len);hil(n-1,len,p,t);t.rt(p*90);
  t.fd(len);hil(n-1,len,-1*p,t);t.lt(p*90);
  }
}

void v(int level,float len,float an,logo t){
if(level==1){}
else{
  t.rt(an/2);t.fd(len);v(level-1,len/2,an,t);t.bk(len);t.lt(an);
t.fd(len);v(level-1,len/2,an,t);t.bk(len);t.rt(an/2);}
}