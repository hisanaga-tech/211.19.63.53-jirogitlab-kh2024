procedure meraminn;

VAR
OBJH:HANDLE;

begin

DOMENUTEXTBYNAME('copy',0);{コピー}



DOMENUTEXTBYNAME('layer options',6);{表示+スナップ+編集}

SelectAll;
DOMENUTEXTBYNAME('unlock',0);{ロック解除}
DOMENUTEXTBYNAME('clear',0);{消去}

layer('DXF');

DOMENUTEXTBYNAME('paste in place',0);{ペースト同位置}

DOMENUTEXTBYNAME('layer options',1);{他のレイヤを見せない}


setpref(10,true);


DOMENUTEXTBYNAME('fit to objects',0);{図形全体を見る}


redrawall;




SelectAll;

DOMENUTEXTBYNAME('unlock',0);{ロック解除}


DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}
DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}
DOMENUTEXTBYNAME('symbol to group',0);{シンボル解除}



DOMENUTEXTBYNAME('group chunk',2);{グループ解除}
DOMENUTEXTBYNAME('group chunk',2);{グループ解除}
DOMENUTEXTBYNAME('group chunk',2);{グループ解除}
DOMENUTEXTBYNAME('group chunk',2);{グループ解除}
DOMENUTEXTBYNAME('group chunk',2);{グループ解除}


group;

DOMENUTEXTBYNAME('group chunk',2);{グループ解除}

DSelectAll;
redrawall;

DOMENUTEXTBYNAME('Export DXFDWG',0);{DXFに変換}

redrawall;

settool(-128);
end;
run(meraminn);