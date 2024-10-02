Procedure TOBIRAnoKISEKI;

label 99,100;

var{変数を宣言}
x,y,x1,y1,x2,y2,x3,y3,rx,ry,dx,dy,xa,ya,xb,yb,xc,yc:real;
{x1,y1,～という名前の変数をrea（実数）型の変数とする}

begin {①}

GetPt(x,y);
PushAttrs; {現在の属性を記憶する}

100:Message('扉の吊元をクリックしてください　途中で終了したい場合は2回クリックしてください ');
GetPt(x1,y1);
xa:=x1;
ya:=y1;

Message('吊元の反対側をクリックしてください　吊元の同一線上ですよ！（←コレ大切！）途中で終了したい場合はもう一度吊元をクリックしてください');
GetPt(x2,y2);
xb:=x2;
yb:=y2;
if(xb=xa)and(yb=ya)then goto 99;

Message('扉の開く方向をテキトーにクリックしてちょんまげ　途中で試合終了したい場合はもう一度吊元をクリックしてちょんまげ');
GetPt(x3,y3);
xc:=x3;
yc:=y3;
if(xc=xa)and(yc=ya)then goto 99;

ClrMessage;

rx:=x2-x1;{rxにｘ2-ｘ1の値を代入}
ry:=y2-y1;{代入}
dx:=x3-x1;{代入}
dy:=y3-y1;{代入}

fillpat(0);{面の模様}
penpat(-5);{線の種類}
pensize(2);{線の太さ}

{ここから上下軌跡のプログラム}
if (rx>0)and(rx<=600)and(ry=0)and(dy>0) then
begin {②}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,110); {指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,0,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,86); {指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,0,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{②} else

if (rx<0)and(rx>=-600)and(ry=0)and(dy>0) then
begin {③}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-110); {指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,70,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-86); {指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,94,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{③} else

if (rx>0)and(rx<=600)and(ry=0)and(dy<0) then
begin {④}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-110); {指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,250,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-86); {指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,274,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{④} else

if (rx<0)and(rx>=-600)and(ry=0)and(dy<0) then
begin {⑤}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,110);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,180,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,86);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-rx,y1+rx,x1+rx,y1-rx,180,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{⑤} else

{ここから左右軌跡のプログラム}
if (ry>0)and(ry<=600)and(rx=0)and(dx>0) then
begin {⑥}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-110);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-ry,y1+ry,x1+ry,y1-ry,340,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-86);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-ry,y1+ry,x1+ry,y1-ry,4,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{⑥} else

if (ry<0)and(ry>=-600)and(rx=0)and(dx>0) then
begin {⑦}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,110);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1+ry,y1-ry,x1-ry,y1+ry,270,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,86);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1+ry,y1-ry,x1-ry,y1+ry,270,86);{円弧}
ClrMessage;
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{⑦} else

if (ry>0)and(ry<=600)and(rx=0)and(dx<0) then
begin {⑧}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,110);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-ry,y1+ry,x1+ry,y1-ry,90,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,86);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-ry,y1+ry,x1+ry,y1-ry,90,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{⑧} else

if (ry<0)and(ry>=-600)and(rx=0)and(dx<0) then
begin {⑨}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-110);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-ry,y1+ry,x1+ry,y1-ry,160,110);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

BeginGroup; {end groupが実行されるまでの間に作られた図形をｸﾞﾙｰﾌﾟ化する}
MoveTo(x1,y1);
LineTo(x2,y2);
RotatePoint(x1,y1,-86);{指定の座標を中心に回転}
LineTo(x1,y1);
arc(x1-ry,y1+ry,x1+ry,y1-ry,184,86);{円弧}
locus(x1,y1); {指定の座標に印をつける}
EndGroup; {begin groupからこれまでに作られた図形をｸﾞﾙｰﾌﾟ化する}

end{⑨}else

{600超えのエラーメッセージ}
if(rx>600)or(rx<-600)or (ry>600)or(ry<-600) then
begin {⑩}

AlrtDialog('W600超えたらダメって姉さんに言われてるので…協力できませんごめんなさい((+_+))');

end{⑩} else

{その他} 
begin {⑪}
AlrtDialog('何か変なところクリックしたぽいです。レッツ再チャレンジでお願いしまーす(゜゜) ');
goto 100;
end;{⑪}

99:ClrMessage;
DSelectAll;{選択解除}
SetTool(-128); {2Dセレクションボタンを選択}
PopAttrs;{pusｈattrsで記憶された属性に戻す}

end; {①}

run(TOBIRAnoKISEKI);