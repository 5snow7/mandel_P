comp cd,c1,c2,c3,c4,c5,c6,c7,c8,cg,c9,ct;
float xs1,ys1;
logo t;
void setup(){
t=new logo(200,200,0);
  size(1200,700);
  c5=new comp(-.5,.57);cd=new comp(.486,-.54);c3= new comp(-.12,.75);cg=new comp(.3,-.4);c7=new comp(-.62,.42);
  c6=new comp(.4,.22);c8=new comp(.455,.855);c1=new comp(0,.24);c4=new comp(.27,.53);c2=new comp(-.1,.8);
c9=new comp(-.68,.34);ct=new comp(-.4,.3);// c4=c1.add(c2);
 textSize(18);              //working julia #'s:a.(.15,-.21),b.(-.176,.412),c.(.52,-.82)
 text(c1.real,50,300);      //d.(-.52,-.82),e.(.15,.72)
text(c4.real,150,300);      //"super star julia #'s:" a.(-.12,-.72)
//c4=c1.mult(c2);t
text(sinz(c4).add(c2).real,600,50);text(sinz(c4).add(c2).imag,700,50);
ct=sinz(ct).add(c1);
text(ct.add(c2).real,600,80);text(ct.add(c2).imag,700,80);

float m=c1.mag();
text(m,120,90);text("Enter x",200,100);
text(check(c3,c1),20,20);text(sinh(2),300,500);
/*text(pwr(3,5),200,20);
text(contf(0,2),60,20);
text(contf(1,2),20,40);
text(contf(2,2),20,60);
text(contf(3,2),20,80);
text(contf(20,2),20,100);*/
for(int k=1;k<11;k++){
 //c2.print(c2,k,400,30+20*k);//c2=c1.add(c2.mult(c2));
print("testone");
}
}

void draw(){
  
}

void keyPressed(){
  if(key=='m'){mandel1(4);}//save("mandel1.jpg");}
if(key=='b'){background(0);mandelwatch(c2,c1,6);}
if(key=='5'){julia(c5,4);}
if(key=='3'){julia(c3,4);}
if(key=='1'){julia(c1,4);}
if(key=='7'){julia(c7,4);}
if(key=='6'){julia(c6,3);}
if(key=='2'){julia(c2,4);}
if(key=='4'){julia(c4,4);}
if(key=='g'){julia(cg,3);}
if(key=='d'){julia(cd,4);}
if(key=='8'){julia(c8,4);}
if(key=='9'){julia(c9,4);}
if(key=='0'){mandel1_x(4);}
if(key=='b'){blowup(.3,.1,.125);}
if(key=='q'){color(200,0,0);text("enter xs1",20,20); xs1=key;text(xs1,100,20);}
//float ys1=key;blowup(xs1,ys1,.5);}
if(key=='n'){blowup(xs1,ys1,.5);}
if(key=='j'){blowup_julia(xs1,ys1,c5,.015);}
}
int row=1;
void mousePressed(){
//int row=1;
  t.set1(mouseX,mouseY,0);
  for(int j=1;j<5;j++){
    t.fd(50);t.rt(90);
  }
text(mouseX,20,20*row);text(mouseY,120,20*row);
xs1=map(mouseX,0,width,-2,2);
ys1=map(mouseY,0,height,-2*height/width,2*height/width);
text(xs1,240,20*row);text(ys1,360,20*row);row++;


}