Procedure YOKO_DANMENNZU;{235}
LABEL 10,99;

CONST
	cMarginX=350+50;
	cMarginY=150+50+70;
VAR

HIRAKI,KANNON,
SEITA,done,abort,rtype,ltype:boolean;
	SC,TR,TL,TA,S,DC,D,w,x,y:REAL;
	T,str:STRING;
     item:integer;
     
      HH:handle;
     
     
function makedialog:boolean;
var
	dummy,sh,sv:INTEGER;
     item:integer;
BEGIN
	GetScreen(dummy,dummy,sh,sv);
	sh:=sh div 2;
	sv:=sv div 2;
	BeginDialog(1,1,sh-cMarginX div 2,sv-cMarginX div 2,sh+cMarginY div 2,sv+cMarginY div 2);
	
	
		  	      AddButton('OK',1,1,20+50,150+60+10+50+30,90+50,170+60+10+50+30);
			AddButton('Cancel',32,1,130+50,150+60+10+50+30,200+50,170+60+10+50+30);
			
   
          AddField('   　　    - KITCHEN HOUSE -',40,1,10,1,200,21);
			AddField('  　　　 ∮ ﾕﾆｯﾄ基本断面 (平面用)',41,1,10,20,200,40);

			AddField('♪ ﾕﾆｯﾄ巾寸法 (WC)'    ,  11,1,8,45,140,60);
			AddField('♪ カーケース奥行き寸法 (DC)'        ,12,1,8,75,140+30,90);
			AddField('♪ 扉-ｶｰｹｰｽ　隙間寸法'        ,13,1,8,75+30,140,90+30);
			AddField('♪ 扉厚寸法'        ,14,1,8,75+30+30,140,90+30+30);
			AddField('♪ 扉左チリ法(外側はﾌﾟﾗｽ)'  ,15,1,8,75+30+30+30,140+40,90+30+30+30);
			AddField('♪ 扉右チリ法(外側はﾌﾟﾗｽ)',16,1,8,75+30+30+30+30,140+40,90+30+30+30+30);
			
			

AddButton('片開き/スライド',17,3,8+30,75+30+30+30+30+30,140,90+30+30+30+30+30); 

AddButton('観音',18,3,8+150,75+30+30+30+30+30,140+40+150,90+30+30+30+30+30); 



AddButton('背板標準',19,3,8+30,75+30+30+30+30+30*2,140,90+30+30+30+30+30*2); 

AddButton('背板16ｔ',20,3,8+150,75+30+30+30+30+30*2,140+40+150,90+30+30+30+30+30*2); 
			
			

			AddField('450',31,2,190,45,230,60);
			AddField('565',2,2,190,75,230,90);
			AddField('3',3,2,190,75+30,230,90);
			AddField('20',4,2,190,75+30+30,230,90);
			AddField('-2',5,2,190,75+30+30+30,230,90);
			AddField('-2',6,2,190,75+30+30+30+30,230,90);

	EndDialog;

  getdiaLOG(1);
  DONE:=FALSE;
  ABORT:=FALSE;
  RTYPE:=TRUE; 
 LTYPE:=FALSE;
 
 SETITEM(17,TRUE);
 
  SETITEM(19,TRUE);
 
  SELFIELD(31);
settitle('ユニット横断面図');

REPEAT
    DIALOGEVENT(ITEM);
      IF ITEM=1 THEN 
            DONE:=TRUE;
      IF ITEM=32 THEN  BEGIN
            DONE:=TRUE;
            ABORT:=TRUE;
       END;
       
{開きタイプ}
IF ITEM=17 THEN  BEGIN
SETITEM(17,TRUE);
SETITEM(18,FALSE);       
 end;      
 
 
 IF ITEM=18 THEN  BEGIN
SETITEM(17,FALSE);
SETITEM(18,TRUE);       
 end;  
 
 
 
  {背板タイプ}
IF ITEM=19 THEN  BEGIN
SETITEM(19,TRUE);
SETITEM(20,FALSE);
END; 

IF ITEM=20 THEN  BEGIN
SETITEM(19,FALSE);
SETITEM(20,TRUE);
END; 
       
      
UNTIL DONE;
   
   STR:=GETFIELD(31);
    W:=STR2NUM(STR);
   STR:=GETFIELD(2);
    DC:=STR2NUM(STR);
STR:=GETFIELD(3);
    S:=STR2NUM(STR);
STR:=GETFIELD(4);
    TA:=STR2NUM(STR);
STR:=GETFIELD(5);
    TL:=STR2NUM(STR);
STR:=GETFIELD(6);
    TR:=STR2NUM(STR);
    
    {背板}
SEITA:=ITEMSEL(20);   
    
    
{扉ﾀｲﾌﾟ}
HIRAKI:=ITEMSEL(17);
KANNON:=ITEMSEL(18);    
    
    
    
    
    
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
{ここにメインプログラムを入れる++++++++++++++++++++++++++++}

HH:=actlayer;
SC:=getlscale(HH);

pushattrs;


 TextVerticalAlign(3);

       D:=DC+S+TA;
  message(  'W = ',num2str(0,w), '  D = ',num2str(0,d),' です｡ ');
       getpt(x,y);

     ClrMessage;   
         fillpat(1);
         penpat(2);
        
 begingroup;
   pensize(4);
       rect(x,y+D,x+W,y+TA+S);
 pensize(8);
       rect(x,y+d,x+16,y+TA+S);     
       rect(x+w-16,y+d,x+w,y+TA+S);
 pensize(8);
 
 {扉------------------------------------------------------------------------------}
 
 
if hiraki   then
begin 
rect(x-(TL),y+TA,x+w-(-TR),y);




end;



if KANNON then
begin 
rect(x-(TL),y+TA,x+w/2-2,y);
rect(x+w/2+2,y+TA,x+w-(-TR),y);




 textsize(4*20/SC);
lineardim(x,y,x-TL,y,-100,0,769,259,1); {扉寸法}
lineardim(x-TL,y,x+w/2-2,y,-100,0,769,259,1); {扉寸法}
lineardim(x+w/2-2,y,x+w/2+2,y,-100,0,769,259,1); {扉寸法}
lineardim(x+w/2+2,y,x+w+TR,y,-100,0,769,259,1); {扉寸法}
lineardim(x+w+TR,y,x+w,y,-100,0,769,259,1); {扉寸法}

    textjust(2);
 textsize(4*20/SC);
textface([]);
      textrotate(#0);   
textorigin(x+w/4-45,y+TA-110-85+45+45);
     begintext;
    '扉'
      endtext; 
      
      
 textorigin(x+w/4*3-45,y+TA-110-85+45+45);
     begintext;
    '扉'
      endtext;      
      
      

 textsize(6*20/SC);





end;

      
      
        moveto(x+16,y+TA+S);
          penpat(-6);
          pensize(6);
       line(w-32,d-(TA+S)-17);
  moveto(x+16,y+d-17);
       line(w-32,-(d-(TA+S)-17));
       
       
   
     
 if seita then
 begin
 
 
 pensize(4);
 fillpat(1);
         penpat(2);
       rect(x+16,y+d,x+w-16,y+d-16); 
 
 end else
 
 begin    
     
       
       
 pensize(4);
 fillpat(1);
         penpat(2);
       rect(x+11,y+d-16-1,x+w-11,y+d-24-1);
       
       
       
  end;     
       
       
      
 {寸法}
 textsize(6*20/SC);
lineardim(x,y,x+w,y,-150,0,769,259,1); {WC寸法}


 textsize(6*20/SC);
lineardim(x,y,x,y+TA,-100,1,769,256,-15); {扉断面寸法}
lineardim(x,y+TA,x,y+TA+S,-100,1,769,259,1); {隙間断面寸法}
lineardim(x,y+S+TA,x,y+S+TA+DC,-100,1,769,259,1); {DC断面寸法} 


    textjust(2);
 textsize(4*20/SC);
textface([]);
      
textorigin(x+w/2-70,y+TA-110-85+45);
     begintext;
    'WC'
      endtext; 


    textjust(2);
 textsize(4*20/SC);
textface([]);
      
            textrotate(#90);
textorigin(x-160,y+S+TA+DC/2);
     begintext;
    'DC'
      endtext; 


{扉が側板より飛び出す時}
IF TL>0 then
begin
lineardim(x-TL,y,x,y,100,0,769,259,1); {左ﾁﾘ寸法}
lineardim(x-TL,y,x+w+TR,y,-100,0,769,259,1); {扉寸法}
lineardim(x+w+TR,y,x+w,y,-100,0,769,259,1); {扉寸法}

    textjust(2);
 textsize(4*20/SC);
textface([]);
      textrotate(#0);   
textorigin(x+w/2-60,y+TA-110-85+45+45);
     begintext;
    '扉'
      endtext; 

end;

IF TR>0 then
begin
lineardim(x+W,y,x+W+TR,y,100,0,769,259,1); {右ﾁﾘ寸法}

lineardim(x,y,x-TL,y,-100,0,769,259,1); {扉寸法}
lineardim(x-TL,y,x+w+TR,y,-100,0,769,259,1); {扉寸法}

    textjust(2);
 textsize(4*20/SC);
textface([]);
      textrotate(#0);   
textorigin(x+w/2-60+20,y+TA-110-85+45+45);
     begintext;
    '扉'
      endtext; 


end;

 
 
 
IF (TR<=0) AND (TL<=0) and hiraki then 
 
 begin
 
  
  textsize(4*20/SC);
lineardim(x,y,x-TL,y,-100,0,769,259,1); {扉寸法}
lineardim(x-TL,y,x+w+TR,y,-100,0,769,259,1); {扉寸法}
lineardim(x+w+TR,y,x+w,y,-100,0,769,259,1); {扉寸法}

    textjust(2);
 textsize(4*20/SC);
textface([]);
      textrotate(#0);   
textorigin(x+w/2-60+20,y+TA-110-85+45+45);
     begintext;
    '扉'
      endtext; 

 textsize(6*20/SC);
 
 
 
end; 
 
 
       
      
 endgroup;

 ClrMessage;

end;
redrawall;
settool(-128);

popattrs;

END;
RUN(YOKO_DANMENNZU);