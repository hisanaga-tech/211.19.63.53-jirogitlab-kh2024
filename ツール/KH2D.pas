(* -------------------------------
KHシンボル配置「KH2D」
パレット: kH2D：KH2D-01)KHシンボル配置
スクリプト名：KH2D_01
機能: 
VWバージョン： v2014
20220329 hisa
20220330 hisa wat
20220604 hisa
20220908 hisa セレクションポインタに戻す
------------------------------ *)
procedure MAIN;
var
	dlg_OK: boolean;
	file1, file2 :string;
	x, y :real;
	rc :boolean;

    {$INCLUDE KHCL\KH2D_01_dlg.pas}

{==== ====  MAIN PROGRAM  ==== ==== }
BEGIN { MAIN PROGRAM }
{AlrtDialog( 'シリーズ展開');}
    file1:='KHCL\KH2D\KH2D_01_dlg.txt';
    file2:='KHCL\KH2D\KH2D_01_master.txt';
 (*
    file3:='KHCL\KH2D\KH2D_01_dlg.txt';
    file4:='KHCL\KH2D\KH2D_01_dlg.txt';
    file5:='KHCL\KH2D\KH2D_01_dlg.txt';
*)

	GetPt( x, y );{クリック座標を渡す 20220604 hisa}
	dlg_ok:=KH2D_01_dlg( file1, file2, x, y );

	{ セレクションポインタに戻す 20220908 hisa }	
	rc := SetToolByIndex(-240);

END;
RUN(MAIN);