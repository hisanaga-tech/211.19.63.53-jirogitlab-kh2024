procedure tanaita;
LABEL 99;

var
     d,n,a,h,w,x,y,x1,y1,x2,y2,x3,y3:real;
    
begin

pushattrs;


 ClrMessage;



   
       n:=distdialog('棚板枚数を入力してください','3');
  IF DIDCANCEL THEN  GOTO 99;
     
      d :=distdialog('棚板の厚みを入力してください','16');
  IF DIDCANCEL THEN  GOTO 99;

  

    ClrMessage;

dselectall;


     getpt(x,y);
              x1:=x;
              y1:=y;


   
Message('ﾕﾆｯﾄの左下をｸﾘｯｸしてください｡');
       getpt(x,y);
              x1:=x;
              y1:=y;

Message('ﾕﾆｯﾄの右上をｸﾘｯｸしてください｡');
        getptl(x1,y1,x3,y3);
              x2:=x3;
              y2:=y3;
BeginGroup;
  

pensize(4);
fillpat(0);
penpat(-5);
h:=y2-y1;
a:=1;
repeat

    rect(x1+d,y1+a*h/(n+1)+8,x2-d,y1+a*h/(n+1)-8);

a:=a+1;

until (a=n+1) ;

   EndGroup;
  


 ClrMessage;
redrawall;

pensize(8);
fillpat(0);
penpat(2);

99:
settool(-128);



popattrs;

end;
run(tanaita);