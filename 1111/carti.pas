Program Lista_consumator;
Type
PNode = ^Node; { referinta la nod }
Node = record { structura nodului }
          nr: integer; { nr cartii }
          nume: string[20]; { nume carte}
          nume_a: string[20];{nume autor}
          an:integer; {anul editiei}
          nr_ex:integer; {nr de exemplare}
          next: PNode; { referinta la urmatorul nod }
       end;
 var
  Prim, Ultim : PNode; { referinte la primul si ultimul nod din lista }
  X,q: PNode;
  i,n:integer;
  este:boolean;
  caut:string;
 
 
 
 
 Procedure AddLista(k:integer); {adaugarea unui nod nou la sfirsitul listei}
Var
  X: PNode;
Begin
  New(X);
  Writeln('Introduceti datele ',k,' carti: ');
//  write('nr cartii: ');readln(X^.nr);
  write('nume carte: ');readln(X^.nume);
//  write('nume autor: ');readln(X^.nume_a);
//  write('an: ');readln(X^.an);
//  write('nr de exemplare: ');readln(X^.nr_ex);
  writeln;
  X^.Next:= Nil;
  If Prim = Nil then
                begin
                  Prim:= X;
                  Ultim:= X;
                end
                else
                begin
                  Ultim^.Next:= X;
                  Ultim:= X;
                end;
End;






begin
  Prim:= Nil; { crearea listei vide}
  Ultim:= Nil;
  Write('Introduceti numarul de carti = ');
  readln(n);
  For i:=1 to n do
    AddLista(i);
  write('introduceti denumirea cartii cautate: ');
  readln(caut);
  este:=false;
  X:=Prim;
  While (X<>Nil) and not(este) do
  begin
    if x^.nume = caut then este:=true;
    X:= X^.next;
  end;
  
  if este then writeln('carte este')
          else writeln('cartea lipseste');
  writeln;

  X:=Prim;
  While (X<>Nil)do
  begin
    if pos(caut,x^.nume)<>0 then writeln(x^.nume);
    X:= X^.next;
  end;
  
end.