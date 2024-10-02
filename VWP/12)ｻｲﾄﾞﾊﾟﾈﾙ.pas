(* -------------------------------
12)ｻｲﾄﾞﾊﾟﾈﾙ
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190428 wat H65仕様
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    D, H, W, FL:real;
    x,y:real;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputFour.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\12)ｻｲﾄﾞﾊﾟﾈﾙ.txt';
    dlg_ok:=JCL_dlg_InputFour( fileName, W, D, H, FL );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);
            penpat(2);
            pensize(8);
            nameclass('01_KH_扉1');

            {ﾊﾟﾈﾙ本体---------------------------------------}
            begingroup;
                Poly3D(
                x,     y,      FL,
                x+W,   y,     FL,
                x+W,   y,   FL+H,
                x,     y,    FL+H,
                x,     y,      FL
                );

                Poly3D(
                x,     y+D,      FL,
                x+W,   y+D,     FL,
                x+W,   y+D,   FL+H,
                x,     y+D,    FL+H,
                x,     y+D,      FL
                );

                Poly3D(
                x,     y,      FL,
                x+W,   y,     FL,
                x+W,   y+D,   FL,
                x,     y+D,    FL,
                x,     y,      FL
                );

                Poly3D(
                x,     y,      FL+H,
                x+W,   y,     FL+H,
                x+W,   y+D,   FL+H,
                x,     y+D,    FL+H,
                x,     y,      FL+H
                );
            EndGroup;

            beginxtrd( FL, FL+H );
                rect( x, y, x+W, y+D );
            endxtrd;

        EndGroup;
        nameclass('一般');
        redrawall;
    end;
END;
RUN(MAIN);
