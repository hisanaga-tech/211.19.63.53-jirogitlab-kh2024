(* -------------------------------
13´)ﾜｰｸﾄｯﾌﾟ(架台付)
´: option+e
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20191130 wat new
20200329 wat
20200409 wat groupは１階層、rename 
20200411 wat 天板厚(T)・架台厚(KT)を数値入力
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    D, H, W, FL, T, KT:real;
    x,y:real;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputFive.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\13´)ﾜｰｸﾄｯﾌﾟ(架台付).txt';
    dlg_ok:=JCL_dlg_InputFive( fileName, W, D, FL, T, KT );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);
            penpat(2);
            pensize(8);

            {ﾊﾟﾈﾙ本体---------------------------------------}
            beginxtrd( FL, FL+KT );
                rect( x+25, y+25, x+W-25, y+D-25 );
            endxtrd;

            beginxtrd( FL+KT, FL+KT+T );
                rect( x, y, x+W, y+D );
            endxtrd;
        EndGroup;
        redrawall;
    end;
END;
RUN(MAIN);
