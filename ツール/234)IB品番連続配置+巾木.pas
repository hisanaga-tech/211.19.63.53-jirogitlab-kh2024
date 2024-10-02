(* -------------------------------
	関数: 234)IB品番連続配置+巾木
	機能: IB品番連続配置+巾木
	VWバージョン： v2024
	20240903, 20240904 hisa VW2014 -> VW2024変換
	シンボルファイルのパス、作業画面にシンボル解除を追加、その他はインデントや空行の削除のみ。
	20240904 hisa 改修要件、オフセット値を200に変更（-190を-200に）
	20240904 hisa 改修要件、グループ内の「キャビ」「床線」のグループを解除した状態で出力する
------------------------------ *)

procedure NEW_IB_RENZOKUHAICHI;  {234}
LABEL 33,77,88,99,10;
var
  t100,t200,t20,t10,t,t1,t2,t3:string; 
  w3,w2,t101,t102:string; 
  S,HH,WW:real;
  KH,st,sf,ss,nt,nf,ns:string; 
  RINKU:string; 
  b,a1,a,w,x,y:real;
  theboolean,  theboolean1,  theboolean2:boolean;
  HHH,h,h1,h2,h3,h4,h5,h6,h7:handle;
  b2:real;
  G2,G1,t4:STRING;

begin
    HHH:=actlayer;
    S:=getlscale(HHH);
     { RINKU:='C:\VW_KITCHEN_DATA\Ver_2014\NEW_symbol.vwx';}
    RINKU:='KHCL\VW_KITCHEN_DATA\Ver_2024/NEW_symbol.vwx';{20240903 hisa}
    getpt(x,y);
    DSelectAll;
    clrmessage;
    t100:=strdialog('◆ ﾍﾞｰｽのｷｬﾋﾞﾈｯﾄﾀｲﾌﾟを入力してください。
        (ZBKは st を入力)
・厚天板 + 把手  → ｓｔ
・浮き天板 + 把手  → ｓｆ
・薄天板 + 把手 → ｓs
・厚天板 + 手掛け(BT/NT) → nｔ
・浮き天板 + 手掛け(BF/NF) → nｆ
・薄天板 + 手掛け(BS/NS) → ns 
 ','st');
	IF DIDCANCEL THEN  GOTO 99;
    {
		ST:='st';
    	if (t100=ST)  then 
    	begin
    		t100:=concat('');
        end;
    }

    t200:=strdialog('品番を入力してください｡
末尾の R → +   L → -  に打替えできます。 ','IB');{ IB1030-1L }

    b2:=len(t200);
    t4:=copy(t200,b2,1);
    G1:='+';
    G2:='-';
    if t4=G1 then
    begin
        T:=concat(copy(t200,1,(b2-1)),'R');
        t200:=T;
    END;
	if t4=G2 then
	begin
		T:=concat(copy(t200,1,(b2-1)),'L');
		t200:=T;
	END;
	IF DIDCANCEL THEN  GOTO 99;

	t1:=concat(t100,t200);
	t10:=copy(t1,1,2);
	a:=distdialog('ﾕﾆｯﾄの巾木部分高さ寸法を入力してください｡
・標準の巾木高さは H=65 H=85 H=105 
                                   の3タイプです。
','65');
	IF DIDCANCEL THEN GOTO 99;
	
{	BeginGroup;}{20240904 hisa 外側のグループは作成しない}
	{-------------------------------------}
	THEBOOLEAN1:=CopySymbol(RINKU,T1);
	IF THEBOOLEAN1=TRUE THEN 
	BEGIN
{		BeginGroup;}{20240904 hisa 箱と床と寸法線を入れるグループは作成しない}
		uprstring(t1);
		message(concat( '品番は,  ',  t1,'です｡ｸﾘｯｸしてください｡'));
		getpt(x,y);
		symbol(t1,x,y,#0);
		{巾寸法認識}
		h:=lnewobj;
		w:=hwidth(h);
		HH:=hheight(h);
		if (t1='kb9080-g') or (t1='KB9080-G') or (t1='KB9080-g')or (t1='kb9080-G')then
		begin
			setselect(h);
			DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}
			fliphor;
		end
		else begin
		end;
		{巾木-------------------------------------------------------}
{		BeginGroup;}{20240904 hisa 巾木（床）を入れるグループは作成しない}
		pensize(12);
		moveto(x,y-a);
			line(w,0);
{		endgroup;}{20240904 hisa 巾木（床）を入れるグループは作成しない}
		{-------------------------------------------------------}

		{寸法線----------------------------------------------}
		penpatn(2);
		pensize(6);
		if S=20 then
		begin
		textsize(10);{10ポイント}
		end;
		if S=30 then
		begin
			textsize(7);{7ポイント}
		end;

		lineardim(x,y-a-10,x+w,y-a-10,-200,0,769,259,1);{20240904 hisa }
		{----------------------------------------------------}
{		EndGroup;}{20240904 hisa 箱と床と寸法線を入れるグループは作成しない}
		clrmessage;
		END else 
		begin 
			uprstring(t1);
			message(concat(  '残念でした !','  ',  t1,'は登録されていません｡'));
			wait(3);
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
		{次のｼﾝﾎﾞﾙ-1-----------------------------------}
		clrmessage;
		t3:=strdialog('品番を入力してください｡
末尾の R → +   L → -  に打替えできます。
  次の配置ｷｬﾋﾞを
  W600寸法ずらして配置したい時は → W600 と入力。

・2回目からは、品番前につける頭の記号はいりません ','IB');
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
		if ((t10<>ST) and (t10<>SF) and (t10<>SS) and (t10<>NT) and (t10<>NF) and (t10<>NS)) then 
		begin
			t2:=t3;
		end;
		if ((t10=ST) or (t10=SF) or (t10=SS) or (t10=NT) or (t10=NF) or (t10=NS)) then 
		begin
			t2:=concat(t10,t3);
		end;
		THEBOOLEAN2:=CopySymbol(RINKU,T2);
		IF THEBOOLEAN2=TRUE THEN 
		BEGIN
		BeginGroup;
		uprstring(t2);
		message(concat( '品番は,  ',  t2,'です｡右側に連続配置します｡'));
		wait(1);
		symbol(t2,x,y,#0);

		{巾寸法認識}
		h:=lnewobj;
		w:=hwidth(h);
		{巾木-------------------------------------------------------}
		Begingroup;
		pensize(6);
		moveto(x,y-a);

			line(w,0);

		endgroup; 

		{-------------------------------------------------------}
		{寸法線----------------------------------------------}
		penpatn(2);
		pensize(6);
		if S=20 then
		begin
			textsize(10);{10ポイント}
		end;
		if S=30 then
		begin
			textsize(7);{7ポイント}
		end;
		lineardim(x,y-a-10,x+w,y-a-10,-200,0,769,259,1);{20240904 hisa }
		{----------------------------------------------------}
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
	if ((t101=w2) or (t101=w3))   then
	begin
		BeginGroup;
		rect(x+W,y+HH,x+w+WW,y);
		{巾木-------------------------------------------------------}
		Begingroup;
		pensize(6);
		moveto(x+w,y-a);
			line(ww,0);
		endgroup; 
		{-------------------------------------------------------}

		{寸法線----------------------------------------------}
		penpatn(2);
		pensize(6);
		lineardim(x+w,y-a-10,x+w+ww,y-a-10,-200,0,769,259,1);{20240904 hisa }
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
{	98:}{20240904 hisa 外側のグループは作成しない、そしてプログラム行がない goto 98 を削除、}
{	EndGroup;}
	99:
	DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}{20240904 hisa 作業画面のデフォルトから外された、自分で作業画面に追加する}
	redrawall;
	settool(-128);
end;

run(NEW_IB_RENZOKUHAICHI);