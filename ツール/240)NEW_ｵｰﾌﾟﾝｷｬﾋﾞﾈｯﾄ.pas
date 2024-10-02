Procedure KB_KBU_HIRAKI;
LABEL 10,99;

CONST
	cMarginX=200;
	cMarginY=240+100+100;
VAR
	
	TATEKATI,YOKOKATI,
	done,abort,rtype,ltype:boolean;
	
	SC,DC,x1,y1,x2,y2,c,n,b,a,h,w,x,y:REAL;
	
	     HH:handle;
	
	
	TANAITAATUMI,TANAITA,T,str:STRING;
     item:integer;
function makedialog:boolean;
var
	dummy,sh,sv:INTEGER;
     item:integer;
BEGIN
	GetScreen(dummy,dummy,sh,sv);
	sh:=sh div 2;
	sv:=sv div 2;
	BeginDialog(1,1,sh-cMarginX div 2,sv-cMarginX div 2,sh+cMarginY div 2,sv+cMarginY div 2);
	
	
			AddButton('OK',1,1,20+30,195+50+40,90+30,215+50+40);
			AddButton('Cancel',2,1,110+30,195+50+40,180+30,215+50+40);
   
         

          AddField('      　　　　    - KITCHEN HOUSE -',104,1,10,1,200,21);
			AddField('　　 　　　　  　　∮ ｵｰﾌﾟﾝｷｬﾋﾞﾈｯﾄ',3,1,10,20,200,40);

			AddField('♪ 巾寸法'    ,  4,1,8,50,120,70);
			AddField('♪ 高さ寸法',  6,1,8,80,120,100);
			AddField('♪ 側板厚み'        ,8,1,8,110,120,130);
			AddField('♪ 棚板厚み',  10,1,8,140,120,160);
			AddField('♪ 棚板の枚数',     12,1,8,170,120,190);
			
			AddField('♪ DC寸法',     14,1,8,170+30,120,190+30);
			
			
			
AddButton('サイド勝ち',200,3,8+50,75+30+30+30+30+15+40,140,90+30+30+30+30+15+40); 

AddButton('上板、底板勝ち',201,3,8+150,75+30+30+30+30+15+40,140+40+150,90+30+30+30+30+15+40); 


			AddField('450',5,2,140,50,190,65);
			AddField('720',7,2,140,80,190,95);
			AddField('19',9,2,140,110,190,125);
			AddField('19',11,2,140,140,190,155);
			AddField('3',13,2,140,170,190,185);
			
				AddField('352',15,2,140,170+30,190,185+30);


			
	EndDialog;

  getdiaLOG(1);

  DONE:=FALSE;
  ABORT:=FALSE;
  RTYPE:=TRUE; 
 LTYPE:=FALSE;
 
  SELFIELD(5);
 SETITEM(200,TRUE);
 
 settitle('オープンキャビネット');

REPEAT
    DIALOGEVENT(ITEM);
      IF ITEM=1 THEN 
            DONE:=TRUE;
      IF ITEM=2 THEN  BEGIN
            DONE:=TRUE;
            ABORT:=TRUE;
       END;
       
       
{サイド勝ち負け}
IF ITEM=200 THEN  BEGIN
SETITEM(200,TRUE);
SETITEM(201,FALSE);       
 end;      
 
 
 IF ITEM=201 THEN  BEGIN
SETITEM(200,FALSE);
SETITEM(201,TRUE);       
 end;        
       
      
UNTIL DONE;
   
   STR:=GETFIELD(5);
    W:=STR2NUM(STR);
   STR:=GETFIELD(7);
    H:=STR2NUM(STR);
   STR:=GETFIELD(9);
    c:=STR2NUM(STR);
  STR:=GETFIELD(11);
  TANAITAATUMI:=STR;
    b:=STR2NUM(STR);
    
  STR:=GETFIELD(13);
        TANAITA:=STR;
    n:=STR2NUM(STR);
    
    
       STR:=GETFIELD(15);
    DC:=STR2NUM(STR);

    
    
{勝ち負けﾀｲﾌﾟ}
TATEKATI:=ITEMSEL(200);
YOKOKATI:=ITEMSEL(201);     
    


CLRDIALOG;


 if item=1 then 
     makedialog:=true
   else 
      makedialog:=false;
  

END;


{ MAIN PROGRAM }
  
BEGIN

    getpt(x,y);
ClrMessage;
   
if makedialog=true then
     BEGIN



{ここにメインプログラムを入れる--------------------}


HH:=actlayer;
SC:=getlscale(HH);

pushattrs;



 TextVerticalAlign(3);

getpt(x,y);




X1:=x+500+w;{断面}
Y1:=y;

X2:=x;{平面}
Y2:=y+H+500;


BeginGroup;{33333333 全体++++++++++++++++++++++++++++++++++++++++++++++++++}

BeginGroup;{7777 展開スタート++++++++++++++++++++++++++++++++++++++++++++++++++}
 
 pensize(12);
PENPAT(2);
FILLPAT(0);

 {寸法}
 textsize(6*20/SC);
lineardim(x,y,x+w,y,-250,0,769,259,1); {WC寸法}
lineardim(x,y,x+C,y,-150,0,769,259,1); {WC寸法}
lineardim(x+c,y,x+W-C,y,-150,0,769,259,1); {WC寸法}
lineardim(x+w-c,y,x+W,y,-150,0,769,259,1); {WC寸法}

lineardim(x,y,x,y+H,-200,1,769,259,1); {HC寸法}
lineardim(x,y,x,y+C,-100,1,769,259,1); {HC寸法}
lineardim(x,y+c,x,y+H-C,-100,1,769,259,1); {HC寸法}
lineardim(x,y+H-c,x,y+H,-100,1,769,259,1); {HC寸法}


{WC HC テキスト追加}
    textjust(2);
 textsize(4*20/SC);
textface([]);
      
textorigin(x+w/2,y-200+10);
     begintext;
    'WC'
      endtext; 


    textjust(2);
 textsize(4*20/SC);
textface([]);
      
            textrotate(#90);
textorigin(x-160-100,y+H/2);
     begintext;
    'HC'
      endtext; 
  textrotate(#0);

{キャビ組}
FILLPAT(1);
if TATEKATI then

begin
rect(x,y+h,x+w,y);

rect(x,y+h,x+c,y);
rect(x+w-c,y+h,x+w,y);
rect(x+c,y+h,x+w-c,y+h-c);
rect(x+c,y+c,x+w-c,y);

END;

if YOKOKATI then

begin
rect(x,y+h,x+w,y);

rect(x,y+h,x+w,y+h-c);
rect(x,y+c,x+w,y);
rect(x,y+h-c,x+c,y+c);
rect(x+w-c,y+h-c,x+w,y+c);

END;

if n=0 then

begin
goto 10;
end else
begin
{棚----------------------------------------------------}

BeginGroup;{5555}
  

pensize(8);
fillpat(0);
penpat(2);

a:=1;
repeat

    rect(x+c,y+a*h/(n+1)+b/2,x+w-c,y+a*h/(n+1)-b/2);

a:=a+1;

until (a=n+1) ;

   EndGroup;{5555}
end;
{----------------------------------------------------} 


    textjust(2);
 textsize(6*20/SC);
textface([]);
      
 textorigin(x+w/2,y+h/5*4);
     begintext;
    concat('棚板',TANAITAATUMI,'t/',TANAITA,'段')
      endtext; 


EndGroup;{7777 展開エンド++++++++++++++++++++++++++++++++++++++++++++++++++}





BeginGroup;{9999 断面スタート++++++++++++++++++++++++++++++++++++++++++++++++++}
 
 pensize(12);
PENPAT(2);
FILLPAT(0);

 {寸法}
 textsize(6*20/SC);
lineardim(x1,y1,x1+DC,y1,-250,0,769,259,1); {DC寸法}

lineardim(x1,y1,x1+DC-C,y1,-150,0,769,259,1); {DC寸法}
lineardim(x1+DC-c,y1,x1+DC,y1,-150,0,769,259,1); {DC寸法}

lineardim(x1,y1,x1,y1+H,-200,1,769,259,1); {HC寸法}
lineardim(x1,y1,x1,y1+C,-100,1,769,259,1); {HC寸法}
lineardim(x1,y1+c,x1,y1+H-C,-100,1,769,259,1); {HC寸法}
lineardim(x1,y1+H-c,x1,y1+H,-100,1,769,259,1); {HC寸法}


{WC HC テキスト追加}
    textjust(2);
 textsize(4*20/SC);
textface([]);
      
textorigin(x1+DC/2,y1-195);
     begintext;
    'DC'
      endtext; 


    textjust(2);
 textsize(4*20/SC);
textface([]);
      
            textrotate(#90);
textorigin(x1-160-100,y1+H/2);
     begintext;
    'HC'
      endtext; 
  textrotate(#0);

{キャビ組}
FILLPAT(1);
if TATEKATI then

begin
{
rect(x1,y1+h,x1+DC,y1);

rect(x1,y1+h,x1+DC-C,y1+h-c);
rect(x1+DC-C,y1+h,x1+DC,y1);
rect(x1,y1+C,x1+DC-C,y1);
}

rect(x1,y1+h,x1+DC,y1);

rect(x1,y1+h,x1+DC,y1+h-c);
rect(x1+DC-C,y1+h-c,x1+DC,y1+c);
rect(x1,y1+C,x1+DC,y1);

END;

if yOKOKATI then

begin
rect(x1,y1+h,x1+DC,y1);

rect(x1,y1+h,x1+DC,y1+h-c);
rect(x1+DC-C,y1+h-c,x1+DC,y1+c);
rect(x1,y1+C,x1+DC,y1);

END;

if n=0 then

begin
goto 10;
end else
begin
{棚----------------------------------------------------}

BeginGroup;{5555}
  

pensize(8);
fillpat(0);
penpat(2);

a:=1;
repeat

    rect(x1,y1+a*h/(n+1)+b/2,x1+DC-c,y1+a*h/(n+1)-b/2);

a:=a+1;

until (a=n+1) ;

   EndGroup;{5555}
end;
{----------------------------------------------------} 


    textjust(2);
 textsize(6*20/SC);
textface([]);
      
 textorigin(x1+DC/2,y1+h/5*4);
     begintext;
    concat('棚板',TANAITAATUMI,'t/',TANAITA,'段')
      endtext; 




EndGroup;{9999 断面エンド++++++++++++++++++++++++++++++++++++++++++++++++++}





BeginGroup;{9999 平面スタート++++++++++++++++++++++++++++++++++++++++++++++++++}
 
 pensize(12);
PENPAT(2);
FILLPAT(0);

 {寸法}
 textsize(6*20/SC);
lineardim(x2,y2,x2+W,y2,-250,0,769,259,1); {WC寸法}

lineardim(x2,y2,x2+C,y2,-150,0,769,259,1); {WC寸法}
lineardim(x2+c,y2,x2+w-c,y2,-150,0,769,259,1); {WC寸法}
lineardim(x2+w-c,y2,x2+w,y2,-150,0,769,259,1); {WC寸法}

lineardim(x2,y2,x2,y2+DC,-200,1,769,259,1); {DC寸法}

lineardim(x2,y2,x2,y2+DC-C,-100,1,769,259,1); {HC寸法}
lineardim(x2,y2+DC-c,x2,y2+DC,-100,1,769,259,1); {HC寸法}


{WC HC テキスト追加}
    textjust(2);
 textsize(4*20/SC);
textface([]);
      
textorigin(x2+W/2,y2-195+10);
     begintext;
    'WC'
      endtext; 


    textjust(2);
 textsize(4*20/SC);
textface([]);
      
            textrotate(#90);
textorigin(x2-160-100,y2+DC/2+10);
     begintext;
    'DC'
      endtext; 
  textrotate(#0);

{キャビ組}
FILLPAT(1);
if TATEKATI then

begin
rect(x2,y2+DC,x2+W,y2);

rect(x2,y2+DC,x2+C,y2);
rect(x2+C,y2+DC,x2+w-c,y2+DC-c);
rect(x2+w-c,y2+DC,x2+w,y2);


END;

if yOKOKATI then

begin
rect(x2,y2+DC,x2+W,y2);

rect(x2,y2+DC,x2+C,y2);
rect(x2+C,y2+DC,x2+w-c,y2+DC-c);
rect(x2+w-c,y2+DC,x2+w,y2);

END;





EndGroup;{9999 平面エンド++++++++++++++++++++++++++++++++++++++++++++++++++}

EndGroup;{33333333 全体++++++++++++++++++++++++++++++++++++++++++++++++++}

10:

end
else begin 

goto 99;
end;
99:
settool(-128);


popattrs;

END;
RUN(KB_KBU_HIRAKI);