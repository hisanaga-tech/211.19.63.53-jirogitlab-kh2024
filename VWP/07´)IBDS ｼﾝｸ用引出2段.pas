(* -------------------------------
07´)IBDS ｼﾝｸ用引出2段
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190424 wat H65仕様
20190802 wat 扉割修正
20190804 renanme
20190812 前板（補強版）下まで伸ばす
20190930 扉伸ばし、ダイアログ入力項目1つ追加
20200506 rename
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
	D, H, W, FL, DH:real;
    x,y:real;

	{$INCLUDE KHCL\JCLVS\JCL_dlg_InputFive.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\07´)IBDS ｼﾝｸ用引出2段.txt';
	dlg_ok:=JCL_dlg_InputFive( fileName, W, D, H, FL, DH );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);    
            penpat(2);
            pensize(8);

            {ｷｬﾋﾞﾈｯﾄ側板---------------------------------------}
            nameclass('01_KH_ｶｰｹｰｽ1');
            fillback(56797,56797,56797);
            beginxtrd( FL, FL+H );
                rect( x, y+D, x+16, y+23 );
                rect( x+W-16, y+D, x+W, y+23 );
            endxtrd;

            {ｷｬﾋﾞﾈｯﾄ底板---------------------------------------}
            beginxtrd( FL, FL+16 );
                rect( x+16, y+D, x+W-16, y+23 );
            endxtrd;

            {ｷｬﾋﾞﾈｯﾄ前板---------------------------------------}
{            beginxtrd( FL+H-186, FL+H ); 20190812}
            beginxtrd( FL+16, FL+H );
                rect( x+16, y+23+16, x+W-16, y+23 );
            endxtrd;

            {ｷｬﾋﾞﾈｯﾄ背板---------------------------------------}
            beginxtrd( FL+16, FL+H );
                rect( x+16, y+D, x+W-16, y+D-16 );
            endxtrd;

            {1段目　扉---------------------------------------}
            nameclass('01_KH_扉1');
            fillback(65535,65535,65535);
            beginxtrd( FL+H-185, FL+H-3+DH );
                rect( x+2, y+20, x+W-2, y );
            endxtrd;

            {2段目　扉---------------------------------------}
            beginxtrd( FL+H-374, FL+H-187 );
                rect( x+2, y+20, x+W-2, y );
            endxtrd;

            {3段目　扉---------------------------------------}
            beginxtrd( FL+3, FL+H-376 );
                rect(x+2, y+20, x+W-2, y );
            endxtrd;
        EndGroup;
        nameclass('一般');
        redrawall;
    end;
END;
RUN(MAIN);
