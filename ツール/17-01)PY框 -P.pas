procedure PYKAMACHI;

LABEL 10,99;

var
     a1,a2,a3,a4,a5,a6,x,y,x1,y1,x2,y2,X3,Y3:real;
     t:string; 
begin
domenutextbyname('Text Horizontal Alignment',1);
dselectall;

   a1:=5;
  a2:=50;
 a3:=61;
 a4:=73;
 a5:=84;
 a6:=56;


repeat



Message('四角形図形の左下の第1点をｸﾘｯｸしてください｡');
          getpt(x,y);
              x1:=x;
              y1:=y;


Message('四角形図形の右上の第2点をｸﾘｯｸしてください｡');
        getptL(x,y,X3,Y3);
              x2:=x3;
              y2:=y3;



if (x1=x2) and (y1=y2) then  goto 10;
 PENPAT(2);

fillpat(0);


{外周溝のみ―－－－－－－－－－－－－}

if (x2-x1<196) and (y2-y1<176) then


begin

 pensize(4);

BeginGroup;
rect(x1+a1,y2-a1,x2-a1,y1+a1);

EndGroup;
end;

if (x2-x1<146) and (176<=y2-y1) then
begin

 pensize(4);

BeginGroup;
rect(x1+a1,y2-a1,x2-a1,y1+a1);

EndGroup;
end;


{一文字溝形状―－－－－－－－－－－－－}

if (196<=x2-x1) and (135<=y2-y1) and (y2-y1<176) then

begin

 pensize(4);

BeginGroup;
rect(x1+a1,y2-a1,x2-a1,y1+a1);
 rect(x1+a2,y2-a2,x2-a2,y1+a2);
 pensize(1);
rect(x1+a3,y2-a3,x2-a3,y1+a3);
 pensize(4);

EndGroup;
end;


{ピーリング溝形状―－－－－－－－－－－－－}

if (146<=x2-x1) and (x2-x1<196) and (176<=y2-y1) then

begin

 pensize(4);

BeginGroup;
rect(x1+a1,y2-a1,x2-a1,y1+a1);
 rect(x1+a2,y2-a2,x2-a2,y1+a2);
 pensize(2);
rect(x1+a6,y2-a6,x2-a6,y1+a6);
 pensize(4);

EndGroup;
end;


{通常框形状―－－－－－－－－－－－－}

if (196<=x2-x1) and (176<=y2-y1) then
begin

 pensize(4);

BeginGroup;
rect(x1+a1,y2-a1,x2-a1,y1+a1);
 rect(x1+a2,y2-a2,x2-a2,y1+a2);
 pensize(1);
rect(x1+a3,y2-a3,x2-a3,y1+a3);
rect(x1+a4,y2-a4,x2-a4,y1+a4);
 pensize(4);
rect(x1+a5,y2-a5,x2-a5,y1+a5);

EndGroup;
end;


redrawall;

until  (x1=x2) and (y1=y2);

10:

ClrMessage;
redrawall;
end;
run(PYKAMACHI);