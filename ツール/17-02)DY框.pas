procedure DY;

LABEL 10,20;

var
     a1,b1,x,y,x1,y1,x2,y2,X3,Y3:real;
     t:string; 
begin
domenutextbyname('Text Horizontal Alignment',1);
dselectall;

 a1:=90;
 b1:=10;
 

repeat

Message('四角形図形の左下の第1点をｸﾘｯｸしてください｡
終了はトリプルクリックです。');
          getpt(x,y);
              x1:=x;
              y1:=y;


Message('四角形図形の右上の第2点をｸﾘｯｸしてください｡');
        getptL(x,y,X3,Y3);
              x2:=x3;
              y2:=y3;


if (x1=x2) and (y1=y2) then  goto 10;


 PENPAT(2);
 pensize(4);
fillpat(0);




if ((x2-x1)>=290) and ((y2-y1)>=220) then  {通常框形状}
begin

BeginGroup;


    moveto(x1+a1,Y1);
        line(0,y2-y1);

    moveto(x2-a1,Y1);
        line(0,y2-y1);


    moveto(x1+a1,Y2-a1);
        line((x2-x1)-2*a1,0);

    moveto(x1+a1,Y1+a1);
        line((x2-x1)-2*a1,0);
        

rect(x1+a1+b1,y2-a1-b1,x2-a1-b1,y1+a1+b1);

EndGroup;

END;


if ((x2-x1)>=290) and ((y2-y1)<220) then  {縦溝のみ形状}
begin

BeginGroup;


    moveto(x1+a1,Y1);
        line(0,y2-y1);

    moveto(x2-a1,Y1);
        line(0,y2-y1);


EndGroup;

END;


if (x2-x1)<290  then  {溝なし}

begin

message('この寸法の場合は溝は付きません');
wait(3);
clrmessage;

end;



redrawall;

until  (x1=x2) and (y1=y2);

10:

ClrMessage;
redrawall;
end;
run(DY);