Program Xafman;
Type  Ref=^Node;
      Node=Record  {Звено для построения дерева Хафмена}
            Lit:char;
            Number:word;
            Left, Right,p:Ref;
          end;
     tChast=array[1..256] of Ref; {Массив для построения дерева Хафмена}
     tStr=string[15];
     tCode=array[#0..#255] of tStr;
Var Ch:tChast;
    Numb:integer;{Количество звеньев в массиве Ch}
    Elem:ref;
    Code:tCode;
    var m:array [1..255] of char;
    var a:char;
    f:file of char;
    b:integer;
    fout:file;  VAR ba:byte; len:longint; s:string;
procedure LoadFile(n:string; var Numb:integer; Var Ch:tChast);
{Загрузка данных из файла с именем N и зазмещение данных в массиве Ch}
Type mass=array[#0..#255] of word;
var  f:file of char;
     m:mass;
     a:char;
begin
   assign(f,'slava.pas');
   reset(f);
   fillchar(m,sizeof(m),0);
   while not eof(f) do
     begin
       read(f,a);inc(m[a])
     end;
   close(f);
   Numb:=0;
   for a:=#0 to #255 do
     if m[a]<>0
     then begin
            inc(Numb);
            New(Ch[numb]);
            Ch[numb]^.Lit:=a;
            Ch[numb]^.Number:=m[a];
            Ch[numb]^.Left:=nil;Ch[numb]^.Right:=nil;
          end;
end;

Procedure Sort(Var Ch:tChast);{Процедура сортировки массива Ch по убыванию}
begin                         {значения поля Number}
end;

procedure CalcCode(Root:ref;s:tStr);
begin
  if (Root^.left=nil)and(Root^.Right=nil){Если это "Лист"}
  then begin
          {Запомнить его код}
         Code[Root^.Lit]:=s
       end
  else begin
         if (Root^.left<>nil) {Если есть левое поддерево, то сместиться туда}
         then CalcCode(Root^.left,s+'0');
         if (Root^.Right<>nil){Если есть правое поддерево, то сместиться туда}
         then CalcCode(Root^.Right,s+'1')
       end
end;

procedure CreatCoding(Root:Ref; var Code:tCode);{Построить массив кодировок}
{Root - Корень дерева Хафмена, Code - Массив с кодировкой каждого
символа с ненулевым количеством вхождения}
Begin
  FillChar(Code,SizeOf(Code),0);{Обнулить массив}
  CalcCode(Root,'');
end;
procedure CodeFile(Name:string;Const Code:tCode);
var f:File of char;{Входной файл}
    h:file of byte;{Выходной файл}
Begin

end;
Function DecToBin(var x,r:integer):string;
var s:string; y:integer;c:char;
begin
s:='';
repeat
y:=x mod r;
if y<=9
then c:=chr(y+ord('0'))
else c:=chr(y-20+ord('a'));
s:=c+s;
x:=x div r;
until x=0;
dectobin:=s;
end;
Function BinToDec(var x:byte):string;
var i:integer;s:string;
begin
x:=0;
for i:=1 to length(s) do
x:=x*2+(ord(s[i])-ord('0'));
end;
Procedure CopyFile(s:string);
var x:integer;e:string;b:string;
begin
s:='';
    while not eof(f) do
    begin
    read (f,a);
    s:=s+Code[a];
    if length(s)>=8 then begin
    e:=copy(s,1,8);
    b:=BinToDec(ba);

    Delete(s,1,8);
    blockwrite(fout,s,sizeof(s));
    end;
    end;
    end;
Begin
    LoadFile('a.txt',Numb,Ch);{Ввод данных из файла}
    {Построение дерева хафмена}
    While Numb>1 do
      begin
         Sort(Ch);{Сортируем массив частот вхождения символов по убывaнию}
         New(Elem);  {Создаем новое звено}
         Elem^.Left:=Ch[Numb];   {"Прицепляем" два звена с наименьшим весом}
         Elem^.Right:=Ch[Numb-1];
         Dec(Numb);
         Ch[Numb]:=Elem; {Новое звено размещаем в массиве}
      end;

    {Теперь массив Ch[1] содержит дерево Хафмена}
    {По этому дереву необходимо построить массив кодировки}
    CreatCoding(ch[1],Code);{Построить массив кодировок}
    {По построенной таблице кодировки необходимо закодировать входной файл}
    CodeFile('slava.pas',Code);
    readln;
end.