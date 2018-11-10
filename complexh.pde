class comp{
  float real,imag;
  comp(float x,float y){real=x;imag=y;}
  comp(){real=1;imag=0;}

 /*comp add(comp c){
    this.real=this.real+c.real;
    this.imag=this.imag+c.imag;
    return this;
  }*/
  
comp add(comp c){
  comp temp=new comp();
  temp.real=real+c.real;
temp.imag=imag+c.imag;
return temp;
}

comp sub(comp c){
    comp temp=new comp();
    temp.real=real-c.real;
    temp.imag=imag-c.imag;
    return temp;
  }
  comp mult(comp c){
   comp temp=new comp();
    temp.real=real*c.real-imag*c.imag;
    temp.imag=real*c.imag+imag*c.real;
    return temp;
  }
  float mag(){
    float temp;
    temp=real*real+imag*imag;
    return (temp);
  }
void print(comp c,int a,int x,int y){
  text(a,x-20,y);text(c.real,x,y);text(c.imag,x+100,y);
}
}

int check(comp c,comp z){
 int j=1;
 
 while(j<100){
   
   c=(c.mult(c)).add(z);
   
   
  if(c.mag()>16){return j;}
  
  j++;  
  }
  return j;
}


int check_n(comp c,comp z,int n){
 int j=1;
 
 while(j<100){
   
   c=c.mult(c.mult((c.mult(c)))).add(z);
  
   
  if(c.mag()>16){return j;}
  
  j++;  
  }
  return j;
}

int check_sinz(comp c,comp z){
 int j=1;
 
 while(j<100){
   
   c=c.mult(sinz(c)).add(z);
  
   
  if(c.mag()>16){return j;}
  
  j++;  
  }
  return j;
}


int checkct(comp c,comp z,int ct){
  for(int j=1;j<ct;j++){
    c=c.mult(c);c=c.add(z);
    if(c.mag()>1){return 1;}
  }
  return 2;
}


//comp temp=new comp();

void run_z(comp z){
  for(int j=1;j<100;j++){
    for(int k=1;k<100;k++){
      comp c=new comp(-1+k/50,-1+j/50);
 if(check(c,z)==1){}

    }}}
  
float sinh(float x){
  return (exp(x)-exp(-x))/2;}
  
  float cosh(float x){
    return (exp(x)+exp(-x))/2;}
    
    comp sinz(comp z){
      comp temp=new comp();
     temp.real= sin(z.real)*cosh(z.imag);
      temp.imag=cos(z.real)*sinh(z.imag);
      return temp;
    }