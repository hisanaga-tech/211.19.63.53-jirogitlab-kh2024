(* -------------------------------
09´)ｶﾞﾗｽ戸観音
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190426 wat H65仕様
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    D, H, W, C, N:real;
    x,y:real;
    e: integer;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputFive.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\09´)ｶﾞﾗｽ戸観音.txt';
    dlg_ok:=JCL_dlg_InputFive( fileName, W, H, D, C, N );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);
            penpat(2);
            pensize(8);

            begingroup;
                nameclass('01_KH_扉1');
                {ｷｬﾋﾞﾈｯﾄ側板---------------------------------------}
                beginxtrd( 0, H );
                    rect( x, y+D, x+16, y+23 );
                    rect( x+W-16, y+D, x+W, y+23 );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ底板---------------------------------------}
                beginxtrd( 0, 16 );
                    rect( x+16, y+D, x+W-16, y+23 );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ上板---------------------------------------}
                beginxtrd( H-16, H);
                    rect( x+16, y+D, x+W-16, y+23 );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ背板---------------------------------------}
                beginxtrd( 16, H-16 );
                    rect( x+16, y+D-16, x+W-16, y+D-16-3.5 );
                endxtrd;
            EndGroup;

            begingroup;
                nameclass('ｶﾞﾗｽ_透明');
                {ｶﾞﾗｽ扉---------------------------------------}
                beginxtrd( 3, H-3 );
                    rect( x+3, y+20, x+W/2-1, y+15 );
                    rect( x+W/2+1, y+20, x+W-3, y+15 );
                endxtrd;

                {ｶﾞﾗｽ棚板枚数指定---------------------------------------}
                IF N>=1 THEN begin
                    e:=1;
                    repeat
                        beginxtrd( 16+e*((H-32)/(N+1))-C/2, 16+e*((H-32)/(N+1))+C/2 );
                            rect( x+16, y+D-19.5, x+W-16, y+23 );
                        endxtrd;
                        e:=e+1;
                    until ( e=N+1 ) ;
                end;
            EndGroup;
        EndGroup;
        nameclass('一般');
        redrawall;
    end;
END;
RUN(MAIN);
