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


     {textsize(10);}
dselectall;



 Message('引出し線の始点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');


      
    getpt(x,y);
              xa:=x;
              ya:=y;



pensize(1);
penpat(-2);
moveto(x-10000000000,y);
line(20000000000,0);
s1:=lnewobj;

 redraw;


Message('寸法値ラインの位置をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              xb:=x;
              yb:=y;

if (xb=xa) and (yb=ya) then goto 99;  



pensize(1);
penpat(-2);
moveto(x-10000000000,y);
line(20000000000,0);
s2:=lnewobj;
 redraw;


Message('水平寸法を取りたい基点をｸﾘｯｸしてください｡ 終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
          getpt(x,y);
              x1:=x;
              y1:=y;
 if (xb=x1) and (yb=y1) then goto 99;  



Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x2:=x;
              y2:=y;

   if (x1=x2) and (y1=y2) then goto 99;





{起動最初の寸法値のずれのエラーを直す}
     lineardim(x1,ya-F,x2,ya-F,(yb-ya+F),0,769,259,1);  
H2:=LNEWOBJ;
DELOBJECT(H2);


if yb>ya then
begin


pensize(8);
     lineardim(x1,ya-F,x2,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;



{2--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');



        getpt(x,y);
              x3:=x;
              y3:=y;
    if (x2=x3) and (y2=y3)  then goto 99;


 lineardim(x2,ya-F,x3,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{3--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x4:=x;
              y4:=y;
    if (x3=x4) and (y3=y4) then goto 99;


  lineardim(x3,ya-F,x4,ya-F,(yb-ya+F),0,769,259,1);  

  redraw;

{4--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x5:=x;
              y5:=y;
    if (x4=x5) and (y4=y5) then goto 99;

 lineardim(x4,ya-F,x5,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{5--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x6:=x;
              y6:=y;
    if (x5=x6) and (y5=y6) then goto 99;
   

 lineardim(x5,ya-F,x6,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{6--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x7:=x;
              y7:=y;
    if (x6=x7) and (y6=y7) then goto 99;


 lineardim(x6,ya-F,x7,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{7--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x8:=x;
              y8:=y;
    if (x7=x8) and (y7=y8) then goto 99;


 lineardim(x7,ya-F,x8,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{8--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x9:=x;
              y9:=y;
    if (x8=x9) and (y8=y9) then goto 99;
 

 lineardim(x8,ya-F,x9,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{9--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x10:=x;
              y10:=y;
    if (x9=x10) and (y9=y10) then goto 99;

 lineardim(x9,ya-F,x10,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{10--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x11:=x;
              y11:=y;
    if (x10=x11) and (y10=y11) then goto 99;

 lineardim(x10,ya-F,x11,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{11--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x12:=x;
              y12:=y;
    if (x11=x12) and (y11=y12) then goto 99;
 lineardim(x11,ya-F,x12,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{12--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x13:=x;
              y13:=y;
    if (x12=x13) and (y12=y13) then goto 99;
 lineardim(x12,ya-F,x13,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{13--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x14:=x;
              y14:=y;
    if (x13=x14) and (y13=y14) then goto 99;
 lineardim(x13,ya-F,x14,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{14--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x15:=x;
              y15:=y;
    if (x14=x15) and (y14=y15) then goto 99;
 lineardim(x14,ya-F,x15,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{15--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x16:=x;
              y16:=y;
    if (x15=x16) and (y15=y16) then goto 99;
 lineardim(x15,ya-F,x16,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{16--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x17:=x;
              y17:=y;
    if (x16=x17) and (y16=y17) then goto 99;
 lineardim(x16,ya-F,x17,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{17--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x18:=x;
              y18:=y;
    if (x17=x18) and (y17=y18) then goto 99;
 lineardim(x17,ya-F,x18,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{18--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x19:=x;
              y19:=y;
    if (x18=x19) and (y18=y19) then goto 99;
 lineardim(x18,ya-F,x19,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{19--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x20:=x;
              y20:=y;
    if (x19=x20) and (y19=y20) then goto 99;
 lineardim(x19,ya-F,x20,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{20--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x21:=x;
              y21:=y;
    if (x20=x21) and (y20=y21) then goto 99;
 lineardim(x20,ya-F,x21,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{21--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x22:=x;
              y22:=y;
    if (x21=x22) and (y21=y22) then goto 99;
 lineardim(x21,ya-F,x22,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{22--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x23:=x;
              y23:=y;
    if (x22=x23) and (y22=y23) then goto 99;
 lineardim(x22,ya-F,x23,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{23--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x24:=x;
              y24:=y;
    if (x23=x24) and (y23=y24) then goto 99;
 lineardim(x23,ya-F,x24,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{24--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x25:=x;
              y25:=y;
    if (x24=x25) and (y24=y25) then goto 99;
 lineardim(x24,ya-F,x25,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{25--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x26:=x;
              y26:=y;
    if (x25=x26) and (y25=y26) then goto 99;
 lineardim(x25,ya-F,x26,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{26--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x27:=x;
              y27:=y;
    if (x26=x27) and (y26=y27) then goto 99;
 lineardim(x26,ya-F,x27,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{27--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x28:=x;
              y28:=y;
    if (x27=x28) and (y27=y28) then goto 99;
 lineardim(x27,ya-F,x28,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{28--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x29:=x;
              y29:=y;
    if (x28=x29) and (y28=y29) then goto 99;
 lineardim(x28,ya-F,x29,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{29--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x30:=x;
              y30:=y;
    if (x29=x30) and (y29=y30) then goto 99;
 lineardim(x29,ya-F,x30,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{30--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x31:=x;
              y31:=y;
    if (x30=x31) and (y30=y31) then goto 99;
 lineardim(x30,ya-F,x31,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{31--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x32:=x;
              y32:=y;
    if (x31=x32) and (y31=y32) then goto 99;
 lineardim(x31,ya-F,x32,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{32--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x33:=x;
              y33:=y;
    if (x32=x33) and (y32=y33) then goto 99;
 lineardim(x32,ya-F,x33,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{33--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x34:=x;
              y34:=y;
    if (x33=x34) and (y33=y34) then goto 99;
 lineardim(x33,ya-F,x34,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{34--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x35:=x;
              y35:=y;
    if (x34=x35) and (y34=y35) then goto 99;
 lineardim(x34,ya-F,x35,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{35--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x36:=x;
              y36:=y;
    if (x35=x36) and (y35=y36) then goto 99;
 lineardim(x35,ya-F,x36,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{36--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x37:=x;
              y37:=y;
    if (x36=x37) and (y36=y37) then goto 99;
 lineardim(x36,ya-F,x37,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{37--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x38:=x;
              y38:=y;
    if (x37=x38) and (y37=y38) then goto 99;
 lineardim(x37,ya-F,x38,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{38--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x39:=x;
              y39:=y;
    if (x38=x39) and (y38=y39) then goto 99;
 lineardim(x38,ya-F,x39,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{39--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x40:=x;
              y40:=y;
    if (x39=x40) and (y39=y40) then goto 99;
 lineardim(x39,ya-F,x40,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{40--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x41:=x;
              y41:=y;
    if (x40=x41) and (y40=y41) then goto 99;
 lineardim(x40,ya-F,x41,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{41--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x42:=x;
              y42:=y;
    if (x41=x42) and (y41=y42) then goto 99;
 lineardim(x41,ya-F,x42,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{42--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x43:=x;
              y43:=y;
    if (x42=x43) and (y42=y43) then goto 99;
 lineardim(x42,ya-F,x43,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{43--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x44:=x;
              y44:=y;
    if (x43=x44) and (y43=y44) then goto 99;
 lineardim(x43,ya-F,x44,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{44--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x45:=x;
              y45:=y;
    if (x44=x45) and (y44=y45) then goto 99;
 lineardim(x44,ya-F,x45,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{45--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x46:=x;
              y46:=y;
    if (x45=x46) and (y45=y46) then goto 99;
 lineardim(x45,ya-F,x46,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;





end
else
begin
pensize(8);
     lineardim(x1,ya+F,x2,ya+F,(yb-ya-F),0,769,259,1);  
  redraw;

f:=-f;

{2--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x3:=x;
              y3:=y;
    if (x2=x3) and (y2=y3) then goto 99;
 lineardim(x2,ya-F,x3,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{3--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x4:=x;
              y4:=y;
    if (x3=x4) and (y3=y4) then goto 99;
 lineardim(x3,ya-F,x4,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{4--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x5:=x;
              y5:=y;
    if (x4=x5) and (y4=y5) then goto 99;
 lineardim(x4,ya-F,x5,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{5--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x6:=x;
              y6:=y;
    if (x5=x6) and (y5=y6) then goto 99;
 lineardim(x5,ya-F,x6,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{6--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x7:=x;
              y7:=y;
    if (x6=x7) and (y6=y7) then goto 99;
 lineardim(x6,ya-F,x7,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{7--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x8:=x;
              y8:=y;
    if (x7=x8) and (y7=y8) then goto 99;
 lineardim(x7,ya-F,x8,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{8--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x9:=x;
              y9:=y;
    if (x8=x9) and (y8=y9) then goto 99;
 lineardim(x8,ya-F,x9,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{9--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x10:=x;
              y10:=y;
    if (x9=x10) and (y9=y10) then goto 99;
 lineardim(x9,ya-F,x10,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{10--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x11:=x;
              y11:=y;
    if (x10=x11) and (y10=y11) then goto 99;
 lineardim(x10,ya-F,x11,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{11--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x12:=x;
              y12:=y;
    if (x11=x12) and (y11=y12) then goto 99;
 lineardim(x11,ya-F,x12,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{12--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x13:=x;
              y13:=y;
    if (x12=x13) and (y12=y13) then goto 99;
 lineardim(x12,ya-F,x13,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{13--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x14:=x;
              y14:=y;
    if (x13=x14) and (y13=y14) then goto 99;
 lineardim(x13,ya-F,x14,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{14--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x15:=x;
              y15:=y;
    if (x14=x15) and (y14=y15) then goto 99;
 lineardim(x14,ya-F,x15,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{15--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x16:=x;
              y16:=y;
    if (x15=x16) and (y15=y16) then goto 99;
 lineardim(x15,ya-F,x16,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{16--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x17:=x;
              y17:=y;
    if (x16=x17) and (y16=y17) then goto 99;
 lineardim(x16,ya-F,x17,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;

{17--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x18:=x;
              y18:=y;
    if (x17=x18) and (y17=y18) then goto 99;
 lineardim(x17,ya-F,x18,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{18--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x19:=x;
              y19:=y;
    if (x18=x19) and (y18=y19) then goto 99;
 lineardim(x18,ya-F,x19,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{19--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x20:=x;
              y20:=y;
    if (x19=x20) and (y19=y20) then goto 99;
 lineardim(x19,ya-F,x20,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{20--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x21:=x;
              y21:=y;
    if (x20=x21) and (y20=y21) then goto 99;
 lineardim(x20,ya-F,x21,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{21--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x22:=x;
              y22:=y;
    if (x21=x22) and (y21=y22) then goto 99;
 lineardim(x21,ya-F,x22,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{22--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x23:=x;
              y23:=y;
    if (x22=x23) and (y22=y23) then goto 99;
 lineardim(x22,ya-F,x23,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{23--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x24:=x;
              y24:=y;
    if (x23=x24) and (y23=y24) then goto 99;
 lineardim(x23,ya-F,x24,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{24--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x25:=x;
              y25:=y;
    if (x24=x25) and (y24=y25) then goto 99;
 lineardim(x24,ya-F,x25,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{25--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x26:=x;
              y26:=y;
    if (x25=x26) and (y25=y26) then goto 99;
 lineardim(x25,ya-F,x26,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{26--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x27:=x;
              y27:=y;
    if (x26=x27) and (y26=y27) then goto 99;
 lineardim(x26,ya-F,x27,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{27--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x28:=x;
              y28:=y;
    if (x27=x28) and (y27=y28) then goto 99;
 lineardim(x27,ya-F,x28,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{28--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x29:=x;
              y29:=y;
    if (x28=x29) and (y28=y29) then goto 99;
 lineardim(x28,ya-F,x29,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{29--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x30:=x;
              y30:=y;
    if (x29=x30) and (y29=y30) then goto 99;
 lineardim(x29,ya-F,x30,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{30--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x31:=x;
              y31:=y;
    if (x30=x31) and (y30=y31) then goto 99;
 lineardim(x30,ya-F,x31,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{31--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x32:=x;
              y32:=y;
    if (x31=x32) and (y31=y32) then goto 99;
 lineardim(x31,ya-F,x32,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{32--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x33:=x;
              y33:=y;
    if (x32=x33) and (y32=y33) then goto 99;
 lineardim(x32,ya-F,x33,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{33--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x34:=x;
              y34:=y;
    if (x33=x34) and (y33=y34) then goto 99;
 lineardim(x33,ya-F,x34,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{34--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x35:=x;
              y35:=y;
    if (x34=x35) and (y34=y35) then goto 99;
 lineardim(x34,ya-F,x35,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{35--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x36:=x;
              y36:=y;
    if (x35=x36) and (y35=y36) then goto 99;
 lineardim(x35,ya-F,x36,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{36--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x37:=x;
              y37:=y;
    if (x36=x37) and (y36=y37) then goto 99;
 lineardim(x36,ya-F,x37,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{37--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x38:=x;
              y38:=y;
    if (x37=x38) and (y37=y38) then goto 99;
 lineardim(x37,ya-F,x38,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{38--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x39:=x;
              y39:=y;
    if (x38=x39) and (y38=y39) then goto 99;
 lineardim(x38,ya-F,x39,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{39--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x40:=x;
              y40:=y;
    if (x39=x40) and (y39=y40) then goto 99;
 lineardim(x39,ya-F,x40,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{40--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x41:=x;
              y41:=y;
    if (x40=x41) and (y40=y41) then goto 99;
 lineardim(x40,ya-F,x41,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{41--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x42:=x;
              y42:=y;
    if (x41=x42) and (y41=y42) then goto 99;
 lineardim(x41,ya-F,x42,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{42--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x43:=x;
              y43:=y;
    if (x42=x43) and (y42=y43) then goto 99;
 lineardim(x42,ya-F,x43,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{43--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x44:=x;
              y44:=y;
    if (x43=x44) and (y43=y44) then goto 99;
 lineardim(x43,ya-F,x44,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{44--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x45:=x;
              y45:=y;
    if (x44=x45) and (y44=y45) then goto 99;
 lineardim(x44,ya-F,x45,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;
{45--------------------------------------------------------------------}
Message('水平寸法を取りたい次の点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x46:=x;
              y46:=y;
    if (x45=x46) and (y45=y46) then goto 99;
 lineardim(x45,ya-F,x46,ya-F,(yb-ya+F),0,769,259,1);  
  redraw;


end;

ClrMessage;
redraw;



99:ClrMessage;


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




settool(-128);

popattrs;
end;
run(meraminn);