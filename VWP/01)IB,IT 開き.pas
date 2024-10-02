(* -------------------------------
01)IB,IT 開き
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190423 hisa wat
20190424 wat H65仕様
20190804 rename
20191118 rename 01)IB,IW -> 01)IB,IT
20200506 wat 扉伸ばし
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
	D, H, W, FL, DH:real;
    x,y:real;

	{$INCLUDE KHCL\JCLVS\JCL_dlg_InputFive.pas}
	
{ MAIN PROGRAM }
BEGIN
    fileName:='KHCL\3D標準\01)IB,IT 開き.txt';
	dlg_ok:=JCL_dlg_InputFive( fileName, W, D, H, FL, DH );
    if dlg_ok=true then BEGIN
    {ここにメインプログラムを入れる+++++++++++++++++++++++++++++++++++++++++++++++++}
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
                rect( x+2, y+20, x+W-2, y );
            endxtrd;
        EndGroup;
        nameclass('一般');
        redraWall;
    END; {if}
END;
RUN(MAIN);
