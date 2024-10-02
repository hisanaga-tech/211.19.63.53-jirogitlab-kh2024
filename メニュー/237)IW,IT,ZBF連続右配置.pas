procedure TURITO_RENZOKU;  {237}

LABEL 33,77,98,88,99,10;
var

 st,sf,ss,nt,nf,ns,BT,T,t10,t1,t2,t3:string; 
C,b,a1,a,w,x,y:real;
    theboolean,  theboolean1,  theboolean2:boolean;
    
    
      w3,w2,t101,t102:string; 
   S, HH,WW:real;
    
    
HHH,h,h1,h2,h3,h4,h5,h6,h7:handle;


  RINKU:string; 


b2:real;
G2,G1,t4:STRING;


begin

HHH:=actlayer;
S:=getlscale(HHH);


RINKU:='C:\VW_KITCHEN_DATA\Ver_2014\NEW_symbol.vwx';

getpt(x,y);

DSelectAll;
clrmessage;

BeginGroup;

 t1:=strdialog('IW,ITの品番を入力してください｡
     末尾の R→ +   L→ -  に打替えできます。 
      ※ IWはｓｔ又はnt のみ

・厚天板+把手  　→ ｓｔ
・浮き天板+把手  → ｓｆ
・薄天板+把手 　 → ｓs
・厚天板+手掛け → nｔ
・浮き天板+手掛け→ nｆ
・薄天板+手掛け  → ns 

 ','ntIW');

b2:=len(t1);
t4:=copy(t1,b2,1);


G1:='+';
G2:='-';


if t4=G1 then
begin
T:=concat(copy(t1,1,(b2-1)),'R');
t1:=T;

END;

if t4=G2 then
begin
T:=concat(copy(t1,1,(b2-1)),'L');
t1:=T;
END;




IF DIDCANCEL THEN  GOTO 99;
t10:=copy(t1,1,2);

{
C:=distdialog('ｳｫｰﾙﾕﾆｯﾄの高さ寸法を入力してください｡','720');
IF DIDCANCEL THEN GOTO 99;
}

{
A:=distdialog('ｳｫｰﾙﾕﾆｯﾄ上端からの寸法線の配置位置を入力してください｡ 標準は 200 です｡','200');
IF DIDCANCEL THEN GOTO 99;
}

A:=200;



THEBOOLEAN1:=CopySymbol(RINKU,T1);

IF THEBOOLEAN1=TRUE THEN 
BEGIN

BeginGroup;
uprstring(t1);
message(concat( '品番は,  ',  t1,'です｡ｸﾘｯｸしてください｡'));


getpt(x,y);
symbol(t1,x,y,#0);


{巾寸法認識}

h:=lnewobj;
w:=hwidth(h);
HH:=hheight(h);

{寸法線----------------------------------------------}

          penpat(2);
pensize(8);



if S=20 then
begin
textsize(10);{10ポイント}
end;

if S=30 then
begin

textsize(7);{7ポイント}
end;





lineardim(x,y+HH+a,x+w,y+HH+a,150,0,769,259,1);
{----------------------------------------------------}

{基準点
Locus(x,y-3);
Locus(x+w,y-3);
}


EndGroup;
clrmessage;
END else 
begin 
uprstring(t1);
message(concat(  '残念でした !','  ',  t1,'は登録されていません｡'));
wait(1);

clrmessage;

end;



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


10:

redrawall;

{次のｼﾝﾎﾞﾙ-1-------------------------------------}
clrmessage;



 t3:=strdialog('IW,IT,ZBFの品番を入力してください｡
   末尾の R → +   L → -  に打替えできます。 
次の配置ｷｬﾋﾞを
  W600寸法ずらして配置したい時は → W600 と入力。(例)
。

・2回目からは、 st sf ss nt nf ns　 の記号はいりません。
 ','IW');


b:=len(t3);
t2:=copy(t3,b,1);


G1:='+';
G2:='-';


if t2=G1 then
begin
T:=concat(copy(t3,1,(b-1)),'R');
t3:=T;

END;

if t2=G2 then
begin
T:=concat(copy(t3,1,(b-1)),'L');
t3:=T;
END;



IF DIDCANCEL THEN  GOTO 99;

x:=x+w;

ST:='st';
SF:='sf';
SS:='ss';
NT:='nt';
NF:='nf';
NS:='ns';


{
if (t10<>nt) then 
begin
t2:=t3;
end;

if (t10=nt)  then 
begin
t2:=concat(t10,t3);
end;
}


if (t10=st)  then 
begin
t2:=concat('st',t3);
end;

if (t10=sf)  then 
begin
t2:=concat('sf',t3);
end;

if (t10=ss)  then 
begin
t2:=concat('ss',t3);
end;

if (t10=nt)  then 
begin
t2:=concat('nt',t3);
end;

if (t10=nf)  then 
begin
t2:=concat('nf',t3);
end;


if (t10=ns)  then 
begin
t2:=concat('ns',t3);
end;





THEBOOLEAN2:=CopySymbol(RINKU,T2);

IF THEBOOLEAN2=TRUE THEN 
BEGIN

BeginGroup;
uprstring(t2);
message(concat( '品番は,  ',  t2,'です｡ｸﾘｯｸしてください｡'));


symbol(t2,x,y,#0);

{巾寸法認識}

h:=lnewobj;
w:=hwidth(h);
HH:=hheight(h);


{寸法線----------------------------------------------}

          penpat(2);
pensize(8);



if S=20 then
begin
textsize(10);{10ポイント}
end;

if S=30 then
begin

textsize(7);{7ポイント}
end;





lineardim(x,y+HH+a,x+w,y+HH+a,150,0,769,259,1);
{----------------------------------------------------}

{基準点
Locus(x,y-3);
Locus(x+w,y-3);
}


EndGroup;
clrmessage;
END else 
begin 



x:=x-w;
uprstring(t2);
message(concat(  '残念でした !','  ',  t2,'は登録されていません｡'));
wait(1);

clrmessage;
end;



b:=len(t3);

{最初の1文字を取る}
t101:=copy(t3,1,1);

{2文字目から最後までの文字を取る}
t102:=copy(t3,2,b-1);

WW:=STR2NUM(t102);

w2:='w';

w3:='W';

if ((t101=w2) or (t101=w3))  then

begin

BeginGroup;

rect(x+w,y+HH,x+w+WW,y);

{寸法線----------------------------------------------}

          penpat(2);
pensize(8);


lineardim(x+w,y+HH+a,x+w+ww,y+HH+a,150,0,769,259,1);

{----------------------------------------------------}


x:=x+ww;

EndGroup;

end;




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



GOTO 10;

99:

EndGroup;

 DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}
 
 
 
redrawall;

 


settool(-128);
end;



run(TURITO_RENZOKU);