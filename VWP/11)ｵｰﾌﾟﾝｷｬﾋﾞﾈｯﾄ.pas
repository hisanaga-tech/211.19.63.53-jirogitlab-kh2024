(* -------------------------------
11)ｵｰﾌﾟﾝｷｬﾋﾞﾈｯﾄ
パレット: 1)3D標準
機能: VWパース
VWバージョン： v2014
20190426 wat H65仕様
20190812 wat 入力項目にパネル厚を追加, HとDを反対に使っていた不具合を修正
------------------------------ *)
procedure MAIN;
var
    dlg_OK: boolean;
    fileName:string;
    D, H, W, C, N, PT:real;
    x,y:real;
    e: integer;

    {$INCLUDE KHCL\JCLVS\JCL_dlg_InputSix.pas}

BEGIN { MAIN PROGRAM }
    fileName:='KHCL\3D標準\11)ｵｰﾌﾟﾝｷｬﾋﾞﾈｯﾄ.txt';
    dlg_ok:=JCL_dlg_InputSix( fileName, W, D, H, C, N, PT );
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
                fillback(56797,56797,56797);
                beginxtrd( 0, H );
                    rect( x, y+D, x+PT, y );
                    rect( x+W-PT, y+D, x+W, y );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ背板---------------------------------------}
                beginxtrd( PT, H-PT );
                rect( x+PT, y+D-PT, x+W-PT, y+D-PT-3.5 );
                endxtrd;
            EndGroup;

            begingroup;
                {ｷｬﾋﾞﾈｯﾄ底板---------------------------------------}
                beginxtrd( 0, PT );
                    rect( x+PT, y+D, x+W-PT, y );
                endxtrd;

                {ｷｬﾋﾞﾈｯﾄ上板---------------------------------------}
                beginxtrd( H-PT, H);
                    rect( x+W-PT, y, x+PT, y+D);
                endxtrd;

                {棚板枚数指定---------------------------------------}
                if N>=1 then begin
                    e:=1;
                    repeat
                        fillpat(1);
                        beginxtrd( PT+e*((H-(PT+PT))/(1+N))-C/2, PT+e*((H-(PT+PT))/(1+N))+C/2 );
{                            rect( x+PT, y+D-19.5, x+W-PT, y+10 );}
                            rect( x+PT, y+D-PT-3.5, x+W-PT, y+10 );
                        endxtrd;
                        e:=e+1;
                    until (e=1+N) ;
                end;
            EndGroup;
        EndGroup;
        fillback(65535,65535,65535);
        redrawall;
    end;
END;
RUN(MAIN);
