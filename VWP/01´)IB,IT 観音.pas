(* -------------------------------
01´)IB,IT 観音
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190424 wat H65仕様
20190804 rename
20191118 rename 06) -> 01´)
20200506 wat 扉伸ばし
20200506 左右の扉のwが違う、チリの計算ミスを修正
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
	D, H, W, FL, DH:real;
    x,y:real;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputFive.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\01´)IB,IT 観音.txt';
	dlg_ok:=JCL_dlg_InputFive( fileName, W, D, H, FL, DH );
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
            beginxtrd( FL, FL+H );
                rect( x, y+D, x+W, y+23 );
            endxtrd;

            {扉---------------------------------------}
            nameclass('01_KH_扉1');
            fillback(65535,65535,65535);
            beginxtrd( FL+3, FL+H+DH-3 );
                rect( x+2, y+20, x+2+(W-8)/2, y );
                rect( x+6+(W-8)/2, y+20, x+W-2, y );
            endxtrd;

        EndGroup;
        nameclass('一般');
        redrawall;

    end;
END;
RUN(MAIN);
