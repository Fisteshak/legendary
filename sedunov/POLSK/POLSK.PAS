{$A+,B+,D+,E+,F+,G+,I+,L+,N+,O+,P-,Q+,R+,S+,T-,V-,X+}
{$M 16384,0,655360}
Program ObrantPolsk;
uses crt;
Type
    Node=Record
           Number:real; {Значение числа}
           Lit:char     {Операция (+,-,*,/) или 'A' - число}
         end;
    Mass=array[1..255] of Node;
Var st:string[255];
    m:mass;
    Numb:integer;

Procedure GetLex(Var st:string; Var m:mass; Var numb:integer);
var i:integer;  {Вырезает из строки St одну лексему и помещает ее в массив м}
    x:string;   {Numb - количество элементов в списке м}
    Code:word;
begin
  While st[1]=' ' do {удаление лишних пробелов}
   delete(st,1,1);
  case st[1] of
   '+','-','*','/': begin
                     inc(Numb);
                     m[Numb].Lit:=st[1]; m[numb].Number:=0;
                     delete(st,1,1)
                    end;
   '0'..'9': begin
              i:=1;
              repeat
                inc(i);
              until not(st[i] in ['0'..'9','.']);
              inc(Numb);
              m[Numb].Lit:='A';
              x:=copy(st,1,i-1);
              Val(x,m[numb].Number,Code);
              delete(st,1,i-1)
             end;
  end;
end;

Function GetNumber(i:integer):Real;
begin
  if m[i].lit='A'  {Если это число}
  then GetNumber:=m[i].Number {то вернуть его значение}
  else begin  {иначе сообщить об ошибке}
         Writeln('Ошибка обработки массива м!'#7);
         Halt(1) {завершить работу}
       end
end;

procedure DelList(i:integer; Var m:mass; var Numb:integer);
{Удаляет в списке м элемент с номером i}
var k:integer;
begin
   dec(Numb);
   for k:=i to Numb do
     m[k]:=m[k+1]
end;

begin
   writeln('Введите арифметическое выражение');
{   Readln(st);}
   st:='11.8+34.567  -  45.8*22';

   Numb:=0;
   While St<>'' do {Разбор выражения: перенос его из строки St в массив m}
     begin
       GetLex(st,m,Numb);
     end;
   {Здесь необходимо реализовать алгоритм перевода арифметического выражения,
   которое хранится в списке м, в обратную польскую запись}

 {Здесь необходимо вычислить значение арифметического выражения: переведенного
  в обратную польскую запись}
   readkey;
end.