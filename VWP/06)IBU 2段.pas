(* -------------------------------
06)IBU 2段
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20200425 wat
20200506 rename
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    D, H, W, FL:real;
    x,y:real;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputFour.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\06)IBU 2段.txt';
    dlg_ok:=JCL_dlg_InputFour( fileName, W, D, H, FL );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);    
            penpat(2);
            pensize(8);

            {ｷｬﾋﾞﾈｯﾄ本体---------------------------------------}
            nameclass('01_KH_ｶｰｹｰｽ1');
            fillback(56797,56797,56797);
            beginxtrd( FL,FL+H);
                rect(x,y+d,x+w,y+23);
            endxtrd;

            {1段目　扉---------------------------------------}
            nameclass('01_KH_扉1');
            fillback(65535,65535,65535);
            beginxtrd( FL+H-234, FL+H-3 );
                rect( x+2, y+20, x+W-2, y );
            endxtrd;

            {2段目　扉---------------------------------------}
            beginxtrd( FL+3, FL+H-234-2 );
                rect( x+2, y+20, x+W-2, y );
            endxtrd;

        EndGroup;
        nameclass('一般');
        redrawall;

    end;
END;
RUN(MAIN);
