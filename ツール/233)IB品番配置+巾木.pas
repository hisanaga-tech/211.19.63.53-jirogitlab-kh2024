Procedure NEW_SHINBORUHAICHI; {233}
LABEL 99;

CONST
	cMarginX=350+20-200-100;
	cMarginY=70+10+600+100;
VAR

b,S,w,a,x,y:real;

    theboolean:boolean;

     HH,h:handle;

	done,abort,rtype,ltype:boolean;

	ST,SF,SS,NT,NF,NS:boolean;

	SC,T,str:STRING;

G2,G1,t2:STRING;


RINKU:STRING;



 zzz, item:integer;

function makedialog:boolean;
var
	dummy,sh,sv:INTEGER;
     item:integer;
BEGIN
	GetScreen(dummy,dummy,sh,sv);
	sh:=sh div 2;
	sv:=sv div 2;
	BeginDialog(1,1,sh-cMarginX div 2,sv-cMarginX div 2,sh+cMarginY div 2,sv+cMarginY div 2);

			AddButton('OK',1,1,20+100,150+25+150+50,90+120,170+25+150+50);
			AddButton('Cancel',32,1,130+100,150+25+150+50,200+120,170+25+150+50);
   
          AddField('       - KITCHEN HOUSE -',40,1,10+100,1,200+100,21);
			AddField('　　　　　　　　　　　 ∮ 4) IB 品番配置(巾木ｈ指定)

◇　品番を入力し、巾木高さを選択。
　　　　　天板、把手形状のタイプを選択してください。
　　　　　末尾の　R　→　+　　　L　→　-　　に打替えできます。
           ※ ZBKは標準/STを選択してください。
',41,1,10,20,200+10+100,90+10);

			AddField('♪ ﾕﾆｯﾄ品番'    ,  11,1,8,45+50+10,115,60+50+10);

			AddField('♪ 巾木高さ寸法'        ,12,1,8,85+50,115,100+50);


			AddField('♪ ｷｬﾋﾞﾈｯﾄﾀｲﾌﾟ'        ,13,1,8,85+30+50,115,100+30+50);


         		AddField('IB',31,2,115,45+50+10,195,60+50+10);{品番入力}

		

		AddCHOICEITEM('',201,1,115,85+50,195,100+50);


Addbutton('標準/ST　厚天板 + 把手付き',202,3,115,85+30+50,195+100+200,100+30+50);

Addbutton('SF 浮き天板 + 把手付き',203,3,115,85+30*2+50,195+100,100+30*2+50);

Addbutton('SS 薄天板 + 把手付き',204,3,115,85+30*3+50,195+100,100+30*3+50);

Addbutton('BT/NT　厚天板 (手掛け)',205,3,115,85+30*4+50,195+100,100+30*4+50);

Addbutton('BF/NF　浮き天板 (手掛け)',206,3,115,85+30*5+50,195+100,100+30*5+50);

Addbutton('BS/NS　薄天板 (手掛け)',207,3,115,85+30*6+50,195+100,100+30*6+50);




	EndDialog;

  getdiaLOG(1);



{プルダウンメニュー}
insertchoice(201,1,'65');
insertchoice(201,2,'85');
insertchoice(201,3,'105');
insertchoice(201,4,'0');


  DONE:=FALSE;
  ABORT:=FALSE;
  RTYPE:=TRUE; 
 LTYPE:=FALSE;


settitle('　IB品番配置');
 
  SELFIELD(31);

setitem(202,true);
setitem(203,false);
setitem(204,false);
setitem(205,false);
setitem(206,false);
setitem(207,false);


REPEAT
    DIALOGEVENT(ITEM);
      IF ITEM=1 THEN 
            DONE:=TRUE;
      IF ITEM=32 THEN  BEGIN
            DONE:=TRUE;
            ABORT:=TRUE;
       END;


IF ITEM=202 THEN BEGIN
setitem(202,true);
setitem(203,false);
setitem(204,false);
setitem(205,false);
setitem(206,false);
setitem(207,false);
END;

IF ITEM=203 THEN BEGIN
setitem(202,false);
setitem(203,true);
setitem(204,false);
setitem(205,false);
setitem(206,false);
setitem(207,false);
END;

IF ITEM=204 THEN BEGIN
setitem(202,false);
setitem(203,false);
setitem(204,true);
setitem(205,false);
setitem(206,false);
setitem(207,false);
END;

IF ITEM=205 THEN BEGIN
setitem(202,false);
setitem(203,false);
setitem(204,false);
setitem(205,true);
setitem(206,false);
setitem(207,false);
END;

IF ITEM=206 THEN BEGIN
setitem(202,false);
setitem(203,false);
setitem(204,false);
setitem(205,false);
setitem(206,true);
setitem(207,false);
END;

IF ITEM=207 THEN BEGIN
setitem(202,false);
setitem(203,false);
setitem(204,false);
setitem(205,false);
setitem(206,false);
setitem(207,true);
END;

      
UNTIL DONE;

ST:=itemsel(202);
SF:=itemsel(203);
SS:=itemsel(204);
NT:=itemsel(205);
NF:=itemsel(206);
NS:=itemsel(207);

   
   STR:=GETFIELD(31);

b:=len(STR);
t2:=copy(STR,b,1);


G1:='+';
G2:='-';


if t2=G1 then
begin
T:=concat(copy(STR,1,(b-1)),'R');
STR:=T;

END;

if t2=G2 then
begin
T:=concat(copy(STR,1,(b-1)),'L');
STR:=T;
END;

if ((t2<>G1) or (t2<>G2))  then
begin
T:=STR;
END;



IF (ST=TRUE) THEN
begin 

   T:=CONCAT('st',STR);
end;

IF (SF=TRUE) THEN
begin 

   T:=CONCAT('sf',STR);
end;

IF (SS=TRUE) THEN
begin 

   T:=CONCAT('ss',STR);
end;

IF (NT=TRUE) THEN
begin 

   T:=CONCAT('nt',STR);
end;

IF (NF=TRUE) THEN
begin 

   T:=CONCAT('nf',STR);
end;

IF (NS=TRUE) THEN
begin 

   T:=CONCAT('ns',STR);
end;

 
   GetSelChoice(201,1,zzz,str);

    A:=STR2NUM(STR);


CLRDIALOG;

 if item=1 then 
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


{ここにメインプログラムを入れる+++++++++++++++++++++++++++++++++++++++++++++++}


 pushattrs;
 
 Pensize(4);

RINKU:='C:\VW_KITCHEN_DATA\Ver_2014\NEW_symbol.vwx';


THEBOOLEAN:=CopySymbol(RINKU,T);

IF THEBOOLEAN=TRUE THEN 
BEGIN


   Begingroup;

uprstring(t);
message(concat( '品番は,  ',  t,'です｡ｸﾘｯｸしてください｡'));



getpt(x,y);


symbol(t,x,y,#0);


HH:=actlayer;
s:=getlscale(HH);


{巾寸法認識}

h:=lnewobj;
w:=hwidth(h);

{巾木-------------------------------------------------------}
   Begingroup;

{
  penpat(2);
         pensize(4);
   moveto(x,y-a/5);
     
       line(w,0);
  moveto(x,y-2*a/5);
  line(w,0);
   moveto(x,y-3*a/5);
      line(w,0);
    moveto(x,y-4*a/5);
       line(w,0);
}



 moveto(x,y-a);

     line(w,0);

 endgroup; 

{-------------------------------------------------------}


{寸法線----------------------------------------------}

 penpat(2);

{textsize(7);7ポイント}

if S=20 then
begin
textsize(10);{10ポイント}
end;

if S=30 then
begin

textsize(7);{7ポイント}
end;







lineardim(x,y-a-10,x+w,y-a-10,-190,0,769,259,1);
{----------------------------------------------------}

 endgroup; 


clrmessage;
END else 
begin 
uprstring(t);
message(concat(  '残念でした !','  ',  t,'は登録されていません｡'));
wait(2);

clrmessage;

END;


{++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}

end
else begin 

goto 99;
end;
99:

 DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}
 
 selectall;
 
{
if S=20 then
begin
DOMENUTEXTBYNAME('font size',6);
end;

if S=30 then
begin

DOMENUTEXTBYNAME('font size',3);
end;
}

 Dselectall;
 
 popattrs;

settool(-128);



END;
RUN(NEW_SHINBORUHAICHI);