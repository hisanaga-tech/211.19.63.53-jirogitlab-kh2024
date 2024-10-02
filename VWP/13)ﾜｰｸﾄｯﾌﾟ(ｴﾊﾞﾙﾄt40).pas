(* -------------------------------
ｴﾊﾞﾙﾄﾜｰｸﾄｯﾌﾟt40
13)ﾜｰｸﾄｯﾌﾟ(ｴﾊﾞﾙﾄt40)
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190429 wat H65仕様
20200409 wat groupは１階層、rename 
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    D, H, W, FL:real;
    x,y:real;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputThree.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\13)ﾜｰｸﾄｯﾌﾟ(ｴﾊﾞﾙﾄt40).txt';
    dlg_ok:=JCL_dlg_InputThree( fileName, W, D, FL );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);
            penpat(2);
            pensize(8);

            {ﾊﾟﾈﾙ本体---------------------------------------}
            beginxtrd( FL, FL+40 );
                rect( x, y, x+1, y+D );
                rect( x+W-1, y, x+W, y+D );
                rect( x+1, y+D-1, x+W-1, y+D );
                rect( x+1, y+1, x+W-1, y );
            endxtrd;

            beginxtrd( FL, FL+40 );
                rect( x+1, y+D-1, x+W-1, y+1 );
            endxtrd;
        EndGroup;
        redrawall;
    end;
END;
RUN(MAIN);
