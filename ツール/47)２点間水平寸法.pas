procedure meraminn;
label 10,99;
var
     x,y,x1,y1,x2,y2,x3,y3,x4,y4:real;
  

H2,h:handle;

     F,s:real;


begin


getpt(x,y);


h:=actlayer;
s:=getlscale(h);
F:=2*S;



10:
     textsize(10);
dselectall;



Message('水平寸法を取りたい左側をｸﾘｯｸしてください｡ 終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
          getpt(x,y);

              x1:=x;
              y1:=y;

Message('水平寸法を取りたい右側をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x2:=x;
              y2:=y;
    if (x1=x2) and (y1=y2) then goto 99;
 Message('引出し線の始点をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x3:=x;
              y3:=y;
    if (x2=x3) and (y2=y3) then goto 99;     
Message('寸法値のおく位置をｸﾘｯｸしてください｡終了はﾀﾞﾌﾞﾙｸﾘｯｸです');
        getpt(x,y);
              x4:=x;
              y4:=y;
 if (x4=x3) and (y4=y3) then goto 99;  


{起動最初の寸法値のずれのエラーを直す}
     lineardim(x1,y3-F,x2,y3-F,(y4-y3+F),0,769,259,1);  
H2:=LNEWOBJ;
DELOBJECT(H2);


if y4>y3 then
begin



pensize(8);
     lineardim(x1,y3-F,x2,y3-F,(y4-y3+F),0,769,259,1);  

end
else
begin
pensize(8);
     lineardim(x1,y3+F,x2,y3+F,(y4-y3-F),0,769,259,1);  
end;

ClrMessage;
redrawall;

goto 10;

99:ClrMessage;
settool(-128);
end;
run(meraminn);