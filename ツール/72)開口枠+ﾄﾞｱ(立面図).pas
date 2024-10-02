Procedure KB_KBU_HIRAKI;
LABEL 10,99;

CONST
	cMarginX=350;
	cMarginY=70;
VAR
	done,abort,rtype,ltype:boolean;
	A,h,w,x,y:REAL;
	T,str:STRING;
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
			AddButton('OK',31,1,20,150,90,170);
			AddButton('Cancel',32,1,130,150,200,170);
   
          AddField('       - KITCHEN HOUSE -',40,1,10,1,200,21);
			AddField('  ∮ 1)開口枠+ﾄﾞｱ (立面図)',41,1,10,20,200,40);

			AddField('♪ 開口枠内法寸法'    ,  11,1,8,45,140,60);

			AddField('♪ 開口枠内法高さ寸法',  12,1,8,65,140,80);

			AddField('♪ 枠厚み寸法'        ,13,1,8,85,140,100);








			AddField('800',1,2,150,45,190,60);

			AddField('2000',2,2,150,65,190,80);

			AddField('20',3,2,150,85,190,100);


	



			

	EndDialog;

  getdiaLOG(1);

  DONE:=FALSE;
  ABORT:=FALSE;
  RTYPE:=TRUE; 
 LTYPE:=FALSE;
 
  SELFIELD(1);


REPEAT
    DIALOGEVENT(ITEM);
      IF ITEM=31 THEN 
            DONE:=TRUE;
      IF ITEM=32 THEN  BEGIN
            DONE:=TRUE;
            ABORT:=TRUE;
       END;
      
UNTIL DONE;
   
   STR:=GETFIELD(1);
    W:=STR2NUM(STR);
   STR:=GETFIELD(2);
    H:=STR2NUM(STR);
   STR:=GETFIELD(3);
    A:=STR2NUM(STR);



CLRDIALOG;


 if item=31 then 
     makedialog:=true
   else 
      makedialog:=false;
  
END;


{ MAIN PROGRAM }
  
BEGIN
ClrMessage;
   
if makedialog=true then
     BEGIN
    getpt(x,y);

{ここにメインプログラムを入れる+++++++++++++++++++++++++++++++++++++++++++++++++}



  message(  'W = ',num2str(0,w), '  H = ',num2str(0,h),' 枠見付 = ',num2str(0,a),'  です｡ ');
       getpt(x,y);


  begingroup;
     ClrMessage;   
         fillpat(1);
         penpat(2);
       
 pensize(8);

 rect(x-a,y+h+a,x+w+a,y);
  rect(x,y+h,x+w,y);
     
 pensize(8);
     penpat(-9);
  

moveto(x,y+h/2);
line(w,h/2);
moveto(x,y+h/2);
line(w,-h/2);

   EndGroup;
  


 ClrMessage;
redrawall;




{++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}
end
else begin 

goto 99;
end;
99:
settool(-128);
END;
RUN(KB_KBU_HIRAKI);