procedure meraminn;
label 10,99;
var
       xa,ya,xb,yb,x,y,x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,x8,y8,x9,y9,
x10,y10,x11,y11,x12,y12,X13,Y13,x14,y14,x15,y15,x16,y16,x17,y17,x18,y18,x19,y19,
x20,y20,x21,y21,x22,y22,x23,y23,x24,y24,x25,y25,x26,y26,x27,y27,x28,y28,x29,y29,
x30,y30,x31,y31,x32,y32,x33,y33,x34,y34,x35,y35,x36,y36,x37,y37,x38,y38,x39,y39,
x40,y40,x41,y41,x42,y42,x43,y43,x44,y44,x45,y45,x46,y46,x47,y47,x48,y48,x49,y49,
x50,y50
:real;

hh,h2,s1,s2,h:handle;

     F,s:real;

ss:string;

begin
pushattrs;


setpref(21,false);


h:=actlayer;
s:=getlscale(h);
F:=2*S;
   {f:=0;  図形からの離れ0のとき}  

10:
    { textsize(10);}

dselectall;

 Message('引出し線の始点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              xa:=x;
              ya:=y;

  
pensize(1);
penpat(-2);
moveto(x,y-10000000000);
line(0,20000000000);
  s1:=lnewobj;

  redraw;       
Message('寸法値のおく位置をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              xb:=x;
              yb:=y;
 if (xb=xa) and (yb=ya) then goto 99;  
pensize(1);
penpat(-2);
moveto(x,y-10000000000);
line(0,20000000000);
s2:=lnewobj;
  redraw;  
Message('垂直寸法を取りたい図形の第一点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
          getpt(x,y);
              x1:=x;
              y1:=y;
 if (xb=x1) and (yb=y1) then goto 99; 

Message('垂直寸法を取りたい図形の第二点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x2:=x;
              y2:=y;
     if (x1=x2) and (y1=y2) then goto 99;


{起動最初の寸法値のずれのエラーを直す}
     lineardim(xa+F,y1,xa+F,y2,(xb-xa-F),1,769,259,1);  
H2:=LNEWOBJ;
DELOBJECT(H2);


if xb<xa then
begin
pensize(8);
     lineardim(xa+F,y1,xa+F,y2,(xb-xa-F),1,769,259,1);  
    redraw;
{2-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x3:=x;
              y3:=y;
     if (x2=x3) and (y2=y3) then goto 99;
  lineardim(xa+F,y2,xa+F,y3,(xb-xa-F),1,769,259,1);  
  redraw;
{3-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x4:=x;
              y4:=y;
     if (x3=x4) and (y3=y4) then goto 99;
  lineardim(xa+F,y3,xa+F,y4,(xb-xa-F),1,769,259,1);  
  redraw;
{4-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x5:=x;
              y5:=y;
     if (x4=x5) and (y4=y5) then goto 99;
  lineardim(xa+F,y4,xa+F,y5,(xb-xa-F),1,769,259,1);  
  redraw;
{5-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x6:=x;
              y6:=y;
     if (x5=x6) and (y5=y6) then goto 99;
  lineardim(xa+F,y5,xa+F,y6,(xb-xa-F),1,769,259,1);  

  redraw;
{6-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x7:=x;
              y7:=y;
     if (x6=x7) and (y6=y7) then goto 99;
  lineardim(xa+F,y6,xa+F,y7,(xb-xa-F),1,769,259,1);  
  redraw;
{7-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x8:=x;
              y8:=y;
     if (x7=x8) and (y7=y8) then goto 99;
  lineardim(xa+F,y7,xa+F,y8,(xb-xa-F),1,769,259,1);  
  redraw;
{8-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x9:=x;
              y9:=y;
     if (x8=x9) and (y8=y9) then goto 99;
  lineardim(xa+F,y8,xa+F,y9,(xb-xa-F),1,769,259,1);  
  redraw;
{9-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x10:=x;
              y10:=y;
     if (x9=x10) and (y9=y10) then goto 99;
  lineardim(xa+F,y9,xa+F,y10,(xb-xa-F),1,769,259,1);  
  redraw;

{10-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x11:=x;
              y11:=y;
     if (x10=x11) and (y10=y11) then goto 99;
  lineardim(xa+F,y10,xa+F,y11,(xb-xa-F),1,769,259,1);  
  redraw;
{11-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x12:=x;
              y12:=y;
     if (x11=x12) and (y11=y12) then goto 99;
  lineardim(xa+F,y11,xa+F,y12,(xb-xa-F),1,769,259,1);  
  redraw;
{12-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x13:=x;
              y13:=y;
     if (x12=x13) and (y12=y13) then goto 99;
  lineardim(xa+F,y12,xa+F,y13,(xb-xa-F),1,769,259,1);  
  redraw;
{13-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x14:=x;
              y14:=y;
     if (x13=x14) and (y13=y14) then goto 99;
  lineardim(xa+F,y13,xa+F,y14,(xb-xa-F),1,769,259,1);  
  redraw;
{14-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x15:=x;
              y15:=y;
     if (x14=x15) and (y14=y15) then goto 99;
  lineardim(xa+F,y14,xa+F,y15,(xb-xa-F),1,769,259,1);  
  redraw;
{15-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x16:=x;
              y16:=y;
     if (x15=x16) and (y15=y16) then goto 99;
  lineardim(xa+F,y15,xa+F,y16,(xb-xa-F),1,769,259,1);  
  redraw;
{16-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x17:=x;
              y17:=y;
     if (x16=x17) and (y16=y17) then goto 99;
  lineardim(xa+F,y16,xa+F,y17,(xb-xa-F),1,769,259,1);  
  redraw;
{17-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x18:=x;
              y18:=y;
     if (x17=x18) and (y17=y18) then goto 99;
  lineardim(xa+F,y17,xa+F,y18,(xb-xa-F),1,769,259,1);  
  redraw;
{18-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x19:=x;
              y19:=y;
     if (x18=x19) and (y18=y19) then goto 99;
  lineardim(xa+F,y18,xa+F,y19,(xb-xa-F),1,769,259,1);  
  redraw;
{19-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x20:=x;
              y20:=y;
     if (x19=x20) and (y19=y20) then goto 99;
  lineardim(xa+F,y19,xa+F,y20,(xb-xa-F),1,769,259,1);  
  redraw;
{20-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x21:=x;
              y21:=y;
     if (x20=x21) and (y20=y21) then goto 99;
  lineardim(xa+F,y20,xa+F,y21,(xb-xa-F),1,769,259,1);  
  redraw;
{21-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x22:=x;
              y22:=y;
     if (x21=x22) and (y21=y22) then goto 99;
  lineardim(xa+F,y21,xa+F,y22,(xb-xa-F),1,769,259,1);  
  redraw;
{22-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x23:=x;
              y23:=y;
     if (x22=x23) and (y22=y23) then goto 99;
  lineardim(xa+F,y22,xa+F,y23,(xb-xa-F),1,769,259,1);  
  redraw;
{23-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x24:=x;
              y24:=y;
     if (x23=x24) and (y23=y24) then goto 99;
  lineardim(xa+F,y23,xa+F,y24,(xb-xa-F),1,769,259,1);  
  redraw;
{24-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x25:=x;
              y25:=y;
     if (x24=x25) and (y24=y25) then goto 99;
  lineardim(xa+F,y24,xa+F,y25,(xb-xa-F),1,769,259,1);  
  redraw;
{25-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x26:=x;
              y26:=y;
     if (x25=x26) and (y25=y26) then goto 99;
  lineardim(xa+F,y25,xa+F,y26,(xb-xa-F),1,769,259,1);  
  redraw;
{26-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x27:=x;
              y27:=y;
     if (x26=x27) and (y26=y27) then goto 99;
  lineardim(xa+F,y26,xa+F,y27,(xb-xa-F),1,769,259,1);  
  redraw;
{27-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x28:=x;
              y28:=y;
     if (x27=x28) and (y27=y28) then goto 99;
  lineardim(xa+F,y27,xa+F,y28,(xb-xa-F),1,769,259,1);  
  redraw;
{28-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x29:=x;
              y29:=y;
     if (x28=x29) and (y28=y29) then goto 99;
  lineardim(xa+F,y28,xa+F,y29,(xb-xa-F),1,769,259,1);  
  redraw;
{29-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x30:=x;
              y30:=y;
     if (x29=x30) and (y29=y30) then goto 99;
  lineardim(xa+F,y29,xa+F,y30,(xb-xa-F),1,769,259,1);  
  redraw;
{30-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x31:=x;
              y31:=y;
     if (x30=x31) and (y30=y31) then goto 99;
  lineardim(xa+F,y30,xa+F,y31,(xb-xa-F),1,769,259,1);  
  redraw;
{31-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x32:=x;
              y32:=y;
     if (x31=x32) and (y31=y32) then goto 99;
  lineardim(xa+F,y31,xa+F,y32,(xb-xa-F),1,769,259,1);  
  redraw;
{32-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x33:=x;
              y33:=y;
     if (x32=x33) and (y32=y33) then goto 99;
  lineardim(xa+F,y32,xa+F,y33,(xb-xa-F),1,769,259,1);  
  redraw;
{33-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x34:=x;
              y34:=y;
     if (x33=x34) and (y33=y34) then goto 99;
  lineardim(xa+F,y33,xa+F,y34,(xb-xa-F),1,769,259,1);  
  redraw;
{34-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x35:=x;
              y35:=y;
     if (x34=x35) and (y34=y35) then goto 99;
  lineardim(xa+F,y34,xa+F,y35,(xb-xa-F),1,769,259,1);  
  redraw;
{35-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x36:=x;
              y36:=y;
     if (x35=x36) and (y35=y36) then goto 99;
  lineardim(xa+F,y35,xa+F,y36,(xb-xa-F),1,769,259,1);  
  redraw;
{36-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x37:=x;
              y37:=y;
     if (x36=x37) and (y36=y37) then goto 99;
  lineardim(xa+F,y36,xa+F,y37,(xb-xa-F),1,769,259,1);  
  redraw;
{37-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x38:=x;
              y38:=y;
     if (x37=x38) and (y37=y38) then goto 99;
  lineardim(xa+F,y37,xa+F,y38,(xb-xa-F),1,769,259,1);  
  redraw;
{38-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x39:=x;
              y39:=y;
     if (x38=x39) and (y38=y39) then goto 99;
  lineardim(xa+F,y38,xa+F,y39,(xb-xa-F),1,769,259,1);  
  redraw;
{39-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x40:=x;
              y40:=y;
     if (x39=x40) and (y39=y40) then goto 99;
  lineardim(xa+F,y39,xa+F,y40,(xb-xa-F),1,769,259,1);  
  redraw;
{40-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x41:=x;
              y41:=y;
     if (x40=x41) and (y40=y41) then goto 99;
  lineardim(xa+F,y40,xa+F,y41,(xb-xa-F),1,769,259,1);  
  redraw;
{41-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x42:=x;
              y42:=y;
     if (x41=x42) and (y41=y42) then goto 99;
  lineardim(xa+F,y41,xa+F,y42,(xb-xa-F),1,769,259,1);  
  redraw;
{42-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x43:=x;
              y43:=y;
     if (x42=x43) and (y42=y43) then goto 99;
  lineardim(xa+F,y42,xa+F,y43,(xb-xa-F),1,769,259,1);  
  redraw;
{43-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x44:=x;
              y44:=y;
     if (x43=x44) and (y43=y44) then goto 99;
  lineardim(xa+F,y43,xa+F,y44,(xb-xa-F),1,769,259,1);  
  redraw;
{44-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x45:=x;
              y45:=y;
     if (x44=x45) and (y44=y45) then goto 99;
  lineardim(xa+F,y44,xa+F,y45,(xb-xa-F),1,769,259,1);  
  redraw;
{45-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x46:=x;
              y46:=y;
     if (x45=x46) and (y45=y46) then goto 99;
  lineardim(xa+F,y45,xa+F,y46,(xb-xa-F),1,769,259,1);  
  redraw;

end
else
begin
pensize(8);
     lineardim(xa-F,y1,xa-F,y2,(xb-xa+F),1,769,259,1);  
  redraw;

F:=-F;

{2-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x3:=x;
              y3:=y;
     if (x2=x3) and (y2=y3) then goto 99;
  lineardim(xa+F,y2,xa+F,y3,(xb-xa-F),1,769,259,1);  
  redraw;
{3-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x4:=x;
              y4:=y;
     if (x3=x4) and (y3=y4) then goto 99;
  lineardim(xa+F,y3,xa+F,y4,(xb-xa-F),1,769,259,1);  
  redraw;
{4-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x5:=x;
              y5:=y;
     if (x4=x5) and (y4=y5) then goto 99;
  lineardim(xa+F,y4,xa+F,y5,(xb-xa-F),1,769,259,1);  
  redraw;
{5-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x6:=x;
              y6:=y;
     if (x5=x6) and (y5=y6) then goto 99;
  lineardim(xa+F,y5,xa+F,y6,(xb-xa-F),1,769,259,1);  
  redraw;

{6-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x7:=x;
              y7:=y;
     if (x6=x7) and (y6=y7) then goto 99;
  lineardim(xa+F,y6,xa+F,y7,(xb-xa-F),1,769,259,1);  
  redraw;
{7-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x8:=x;
              y8:=y;
     if (x7=x8) and (y7=y8) then goto 99;
  lineardim(xa+F,y7,xa+F,y8,(xb-xa-F),1,769,259,1);  
  redraw;
{8-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x9:=x;
              y9:=y;
     if (x8=x9) and (y8=y9) then goto 99;
  lineardim(xa+F,y8,xa+F,y9,(xb-xa-F),1,769,259,1);  
  redraw;
{9-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x10:=x;
              y10:=y;
     if (x9=x10) and (y9=y10) then goto 99;
  lineardim(xa+F,y9,xa+F,y10,(xb-xa-F),1,769,259,1);  

  redraw;
{10-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x11:=x;
              y11:=y;
     if (x10=x11) and (y10=y11) then goto 99;
  lineardim(xa+F,y10,xa+F,y11,(xb-xa-F),1,769,259,1);  
  redraw;
{11-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x12:=x;
              y12:=y;
     if (x11=x12) and (y11=y12) then goto 99;
  lineardim(xa+F,y11,xa+F,y12,(xb-xa-F),1,769,259,1);  
  redraw;
{12-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x13:=x;
              y13:=y;
     if (x12=x13) and (y12=y13) then goto 99;
  lineardim(xa+F,y12,xa+F,y13,(xb-xa-F),1,769,259,1);  
  redraw;
{13-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x14:=x;
              y14:=y;
     if (x13=x14) and (y13=y14) then goto 99;
  lineardim(xa+F,y13,xa+F,y14,(xb-xa-F),1,769,259,1);  
  redraw;
{14-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x15:=x;
              y15:=y;
     if (x14=x15) and (y14=y15) then goto 99;
  lineardim(xa+F,y14,xa+F,y15,(xb-xa-F),1,769,259,1);  
  redraw;
{15-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x16:=x;
              y16:=y;
     if (x15=x16) and (y15=y16) then goto 99;
  lineardim(xa+F,y15,xa+F,y16,(xb-xa-F),1,769,259,1);  
  redraw;
{16-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x17:=x;
              y17:=y;
     if (x16=x17) and (y16=y17) then goto 99;
  lineardim(xa+F,y16,xa+F,y17,(xb-xa-F),1,769,259,1);  
  redraw;
{17-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x18:=x;
              y18:=y;
     if (x17=x18) and (y17=y18) then goto 99;
  lineardim(xa+F,y17,xa+F,y18,(xb-xa-F),1,769,259,1);  
  redraw;
{18-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x19:=x;
              y19:=y;
     if (x18=x19) and (y18=y19) then goto 99;
  lineardim(xa+F,y18,xa+F,y19,(xb-xa-F),1,769,259,1);  
  redraw;
{19-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x20:=x;
              y20:=y;
     if (x19=x20) and (y19=y20) then goto 99;
  lineardim(xa+F,y19,xa+F,y20,(xb-xa-F),1,769,259,1);  
  redraw;
{20-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x21:=x;
              y21:=y;
     if (x20=x21) and (y20=y21) then goto 99;
  lineardim(xa+F,y20,xa+F,y21,(xb-xa-F),1,769,259,1);  
  redraw;
{21-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x22:=x;
              y22:=y;
     if (x21=x22) and (y21=y22) then goto 99;
  lineardim(xa+F,y21,xa+F,y22,(xb-xa-F),1,769,259,1);  
  redraw;
{22-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x23:=x;
              y23:=y;
     if (x22=x23) and (y22=y23) then goto 99;
  lineardim(xa+F,y22,xa+F,y23,(xb-xa-F),1,769,259,1);  
  redraw;
{23-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x24:=x;
              y24:=y;
     if (x23=x24) and (y23=y24) then goto 99;
  lineardim(xa+F,y23,xa+F,y24,(xb-xa-F),1,769,259,1);  
  redraw;
{24-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x25:=x;
              y25:=y;
     if (x24=x25) and (y24=y25) then goto 99;
  lineardim(xa+F,y24,xa+F,y25,(xb-xa-F),1,769,259,1);  
  redraw;
{25-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x26:=x;
              y26:=y;
     if (x25=x26) and (y25=y26) then goto 99;
  lineardim(xa+F,y25,xa+F,y26,(xb-xa-F),1,769,259,1);  
  redraw;
{26-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x27:=x;
              y27:=y;
     if (x26=x27) and (y26=y27) then goto 99;
  lineardim(xa+F,y26,xa+F,y27,(xb-xa-F),1,769,259,1);  
  redraw;
{27-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x28:=x;
              y28:=y;
     if (x27=x28) and (y27=y28) then goto 99;
  lineardim(xa+F,y27,xa+F,y28,(xb-xa-F),1,769,259,1);  
  redraw;
{28-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x29:=x;
              y29:=y;
     if (x28=x29) and (y28=y29) then goto 99;
  lineardim(xa+F,y28,xa+F,y29,(xb-xa-F),1,769,259,1);  
  redraw;
{29-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x30:=x;
              y30:=y;
     if (x29=x30) and (y29=y30) then goto 99;
  lineardim(xa+F,y29,xa+F,y30,(xb-xa-F),1,769,259,1);  
  redraw;
{30-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x31:=x;
              y31:=y;
     if (x30=x31) and (y30=y31) then goto 99;
  lineardim(xa+F,y30,xa+F,y31,(xb-xa-F),1,769,259,1);  
  redraw;
{31-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x32:=x;
              y32:=y;
     if (x31=x32) and (y31=y32) then goto 99;
  lineardim(xa+F,y31,xa+F,y32,(xb-xa-F),1,769,259,1);  
  redraw;
{32-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x33:=x;
              y33:=y;
     if (x32=x33) and (y32=y33) then goto 99;
  lineardim(xa+F,y32,xa+F,y33,(xb-xa-F),1,769,259,1);  
  redraw;
{33-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x34:=x;
              y34:=y;
     if (x33=x34) and (y33=y34) then goto 99;
  lineardim(xa+F,y33,xa+F,y34,(xb-xa-F),1,769,259,1);  
  redraw;
{34-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x35:=x;
              y35:=y;
     if (x34=x35) and (y34=y35) then goto 99;
  lineardim(xa+F,y34,xa+F,y35,(xb-xa-F),1,769,259,1);  
  redraw;
{35-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x36:=x;
              y36:=y;
     if (x35=x36) and (y35=y36) then goto 99;
  lineardim(xa+F,y35,xa+F,y36,(xb-xa-F),1,769,259,1);  
  redraw;
{36-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x37:=x;
              y37:=y;
     if (x36=x37) and (y36=y37) then goto 99;
  lineardim(xa+F,y36,xa+F,y37,(xb-xa-F),1,769,259,1);  
  redraw;
{37-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x38:=x;
              y38:=y;
     if (x37=x38) and (y37=y38) then goto 99;
  lineardim(xa+F,y37,xa+F,y38,(xb-xa-F),1,769,259,1);  
  redraw;
{38-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x39:=x;
              y39:=y;
     if (x38=x39) and (y38=y39) then goto 99;
  lineardim(xa+F,y38,xa+F,y39,(xb-xa-F),1,769,259,1);  
  redraw;
{39-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x40:=x;
              y40:=y;
     if (x39=x40) and (y39=y40) then goto 99;
  lineardim(xa+F,y39,xa+F,y40,(xb-xa-F),1,769,259,1);  
  redraw;
{40-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x41:=x;
              y41:=y;
     if (x40=x41) and (y40=y41) then goto 99;
  lineardim(xa+F,y40,xa+F,y41,(xb-xa-F),1,769,259,1);  
  redraw;
{41-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x42:=x;
              y42:=y;
     if (x41=x42) and (y41=y42) then goto 99;
  lineardim(xa+F,y41,xa+F,y42,(xb-xa-F),1,769,259,1);  
  redraw;
{42-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x43:=x;
              y43:=y;
     if (x42=x43) and (y42=y43) then goto 99;
  lineardim(xa+F,y42,xa+F,y43,(xb-xa-F),1,769,259,1);  
  redraw;
{43-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x44:=x;
              y44:=y;
     if (x43=x44) and (y43=y44) then goto 99;
  lineardim(xa+F,y43,xa+F,y44,(xb-xa-F),1,769,259,1);  
  redraw;
{44-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x45:=x;
              y45:=y;
     if (x44=x45) and (y44=y45) then goto 99;
  lineardim(xa+F,y44,xa+F,y45,(xb-xa-F),1,769,259,1);  
  redraw;
{45-----------------------------------------------------------------------}
Message('垂直寸法を取りたい図形の次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x46:=x;
              y46:=y;
     if (x45=x46) and (y45=y46) then goto 99;
  lineardim(xa+F,y45,xa+F,y46,(xb-xa-F),1,769,259,1);  
  redraw;




end;

ClrMessage;
redraw;
goto 10;

99:ClrMessage;


{最後の寸法が0の時その寸法線を消す}
dselectall;
hh:=lnewobj;
SS:=getdimtext(hh);
if ss='0' then
begin
setselect(hh);
deleteobjs;
END;


dselectall;
setselect(s1);
setselect(s2);
deleteobjs;

popattrs;
end;
run(meraminn);