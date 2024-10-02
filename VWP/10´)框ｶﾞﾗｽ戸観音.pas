(* -------------------------------
10´)框ｶﾞﾗｽ戸観音
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190426 wat H65仕様
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    W, D, H, A, B, C, N:real;
    x,y:real;
    e: integer;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputSeven.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\10´)框ｶﾞﾗｽ戸観音.txt';
    dlg_ok:=JCL_dlg_InputSeven( fileName, W, D, H, A, B, C, N );
    if dlg_ok=true then BEGIN
    {ここから図形作成プログラム++++++++}
        getpt( x, y );
        y:= y-D;

        begingroup;
            fillpat(1);
            penpat(2);
            pensize(8);

            begingroup;
                {ｷｬﾋﾞﾈｯﾄ側板---------------------------------------}
                nameclass('01_KH_ｶｰｹｰｽ1');
                fillback(56797,56797,56797);
                beginxtrd( 0, H );
                    rect( x, y+D, x+16, y+23 );
                    rect( x+W-16, y+D, x+W, y+23 );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ底板---------------------------------------}
                beginxtrd( 0, 16 );
                    rect( x+16, y+D, x+W-16, y+23 );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ上板---------------------------------------}
                beginxtrd( H-16, H );
                    rect( x+16, y+D, x+W-16, y+23 );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ背板---------------------------------------}
                beginxtrd( 16, H-16 );
                    rect( x+16, y+D-16, x+W-16, y+D-16-3.5 );
                endxtrd;
            EndGroup;

            {ﾀﾃ框---------------------------------------}
            nameclass('01_KH_扉1');
            fillback(65535,65535,65535);
            beginxtrd( 3, H-3 );
                rect( x+2, y+20, x+2+A, y );
                rect( x+W/2-1-A, y+20, x+W/2-1, y );
                rect( x+W/2+1, y+20, x+W/2+1+A, y );
                rect( x+W-2-A, y+20, x+W-2, y );
            endxtrd;

            begingroup;
                {ﾖｺ框下---------------------------------------}
                beginxtrd( 3, 3+B );
                    rect( x+2+A, y+20, x+W/2-1-A, y );
                    rect( x+w/2+1+A, y+20, x+W-2-A, y );
                endxtrd;

                {ﾖｺ框上---------------------------------------}
                beginxtrd( H-3-B, H-3 );
                    rect( x+2+A, y+20, x+w/2-1-A, y );
                    rect( x+W/2+1+A, y+20, x+W-2-A, y );
                endxtrd;
            EndGroup;

            begingroup;
                {ｶﾞﾗｽ---------------------------------------}
                nameclass('ｶﾞﾗｽ_透明');
                beginxtrd( 3+B, H-3-B );
                    rect( x+2+A, y+11, x+W/2-1-A, y+9 );
                    rect( x+W/2+1+A, y+11, x+W-2-A, y+9 );
                endxtrd;

                {ｶﾞﾗｽ棚板枚数指定---------------------------------------}
                IF N>=1 THEN begin
                    e:=1;
                    repeat
                        beginxtrd( 16+e*((H-32)/(N+1))-C/2, 16+e*((H-32)/(N+1))+C/2 );
                            rect( x+16, y+D-19.5, x+W-16, y+25 );
                        endxtrd;
                        e:=e+1;
                    until (e=N+1) ;
                end;
            EndGroup;
        EndGroup;
        nameclass('一般');
        redrawall;
    end;
END;
RUN(MAIN);
