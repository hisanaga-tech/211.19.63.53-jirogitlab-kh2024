Procedure LED_PROFILE_TEXT;
LABEL 10,99,88,33;

CONST
	cMarginX=550;
	cMarginY=140;
VAR
	done,abort,rtype,ltype:boolean;
	n,c,d,e,a,h,W,LN,RN,S,PL,M,x,y:REAL;
	T,str:STRING;
     item:integer;
AA:handle;
function makedialog:boolean; 
var
	dummy,sh,sv:INTEGER;
     item:integer;
BEGIN
	GetScreen(dummy,dummy,sh,sv);
	sh:=sh div 2;
	sv:=sv div 2;
	BeginDialog(1,1,sh-cMarginX div 2,sv-cMarginX div 2,sh+cMarginY div 2,sv+cMarginY div 2);

			AddButton('OK',1,1,80,280,160,300);
			AddButton('Cancel',32,1,200,280,280,300);
   
			AddField('　　　　― LED用ｱﾙﾐﾌﾟﾛﾌｧｲﾙ 品番ﾃｷｽﾄ表示 ―',40,1,10,10,290,25);
			AddField('　　■TSP-A2の寸法を入力して下さい。',41,1,10,50,290,65);

			{AddField('♪ ﾕﾆｯﾄ巾寸法'    ,  11,1,8,45,140,60);}

			AddField('　　 ※TSP-A2が分割の場合でも合計のW寸法を入力',42,1,10,115,290,130);


			AddField('　♪ TSP-A2全体のＷ寸法：',  12,1,10,90,250,105);

			AddField('　♪ LED用ミゾ左側の残り寸法(標準30mm+ﾌｨﾗｰW)：',  13,1,10,150,280,165);

			AddField('　♪ LED用ミゾ右側の残り寸法(標準30mm+ﾌｨﾗｰW)：',  14,1,10,180,280,195);

			AddField('　　 ※プロファイルの長さはミゾの長さ-20mmです。',43,1,10,230,290,245);




			{AddField('450',1,2,150,45,190,60);}

			AddField('1200',2,2,290,90,330,105);

			AddField('30',3,2,290,150,330,165);

			AddField('30',4,2,290,180,330,195);

	



			

	EndDialog;

  getdiaLOG(1);

  DONE:=FALSE;
  ABORT:=FALSE;
  RTYPE:=TRUE; 
 LTYPE:=FALSE;
 
{  SELFIELD(1);}


REPEAT
    DIALOGEVENT(ITEM);
      IF ITEM=1 THEN 
            DONE:=TRUE;
      IF ITEM=32 THEN  BEGIN
            DONE:=TRUE;
            ABORT:=TRUE;
       END;
      
UNTIL DONE;
   
{   STR:=GETFIELD(1);
    W:=STR2NUM(STR);}
   STR:=GETFIELD(2);
    W:=STR2NUM(STR);
   STR:=GETFIELD(3);
    LN:=STR2NUM(STR);
  STR:=GETFIELD(4);
    RN:=STR2NUM(STR);


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


{ここにメインプログラムを入れる++++++++++++++++++++++++++++++++++++++++++++++++++}


Message('ミゾの長さは',W-LN-RN,'です。ﾃｷｽﾄを置きたい場所をｸﾘｯｸして下さい。');  



 GetPt(x,y);

 GetPt(x,y);



AA:=ActLayer;
s:=GetLScale(AA);


{縮尺によってテキストサイズ変更}
if S=20 then
begin
textsize(7);
end;

if S=30 then
begin
textsize(5);
end;


{プロファイルの長さによって品番変更}
PL:= W-LN-RN-20;

IF (PL<45) or (PL>2900) Then 
Begin



{Message('　【エラー】ミゾの長さが2920mmを超えないようにして下さい。');  }


ClrMessage;

AlrtDialog('【エラー】ミゾの長さが2920mmを超えないようにして下さい。');

goto 99;

end
else begin 






IF (PL>=45) and (PL<=1000) Then M:=1;
IF (PL>1000) and (PL<=2000) Then M:=2;
IF (PL>2000) and (PL<=2900) Then M:=3;

TEXTJUST(2);
    
        textorigin(x,y);
       FILLPAT(1);
     begintext;


	CONCAT('[IALI-',M,'M-S]×1_ﾌﾟﾛﾌｧｲﾙL=',PL)
     endtext; 
 
ClrMessage;


End;

{+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}
end
else begin 

goto 99;
end;
99:

settool(-128);

END;
RUN(LED_PROFILE_TEXT);