PROCEDURE sample11;
LABEL 99;

VAR

n:LONGINT;
h:HANDLE;
px, py, zValue:REAL;
height,width,depth:REAL;
T:STRING;
fileName:STRING;

	PROCEDURE sub ( objH : HANDLE );
	BEGIN



IF (GetType ( objH ) = 63) 
or (GetType ( objH ) = 2) 
or (GetType ( objH ) = 3)
or (GetType ( objH ) = 4)
or (GetType ( objH ) = 5)
or (GetType ( objH ) = 6)
or (GetType ( objH ) = 12) 
or (GetType ( objH ) = 13) 
or (GetType ( objH ) = 17)    
or (GetType ( objH ) = 21)  


THEN
		BEGIN

		    delobject(objh);

		END;
	END;


	BEGIN


  DOMENUTEXTBYNAME('symbol to group',0);

	ForEachObject ( sub, (sel=true) );

{ｴﾗｰのための繰り返し

                BEGIN
  DOMENUTEXTBYNAME('symbol to group',0);

	ForEachObject ( sub, (sel=true) );


END;

}

Group;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;
Ungroup;

{SelectAll;}

 DOMENUTEXTBYNAME('unlock',0);

{----------------------------------------------------}




BEGIN

h:=FSActLayer;

if H=nil then

begin

alrtdialog('このコマンドは、選択された図形内のテキストを抽出します。
図形を選択してから、再度実行してください。
');
goto 99;
end;

PutFile ( '取り出し:','品番テキスト抽出.txt',fileName );
IF NOT DidCancel THEN

BEGIN

h:=FSActLayer;





n:=Count((SEL=TRUE));
WHILE h<>NIL DO

BEGIN



if gettype(h)=10 then


      BEGIN
      t:=Gettext(h);
      
      WriteLn (T);
      END;

h := NextSObj ( h );


END;

END;

DSelectAll;

END;



{----------------------------------------------------}




DSelectAll;

 DOMENUTEXTBYNAME('undo',0);
 DOMENUTEXTBYNAME('undo',0);


DSelectAll;

 DOMENUTEXTBYNAME('fit to window',0);

99:

SETTOOL(-128);

END;


RUN ( sample11 );